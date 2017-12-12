module Main (main) where

import Control.Monad
import Data.Char
import Data.List
import System.Directory
import System.Environment
import System.Exit
import System.FilePath
import Text.Read (readMaybe)

import Language.Haskell.Exts
import Text.PrettyPrint.HughesPJ (vcat, render)

import Distribution.License
import Distribution.ModuleName (ModuleName, fromString, components)
import Distribution.Package
import Distribution.PackageDescription
import Distribution.PackageDescription.Parse (writePackageDescription)
import Distribution.Version

import Text.XML.HaXml.DtdToHaskell.Convert (dtd2TypeDef)
import Text.XML.HaXml.DtdToHaskell.Instance (mkInstance)
import Text.XML.HaXml.DtdToHaskell.TypeDef (ppTypeDef)
import Text.XML.HaXml.Parse (dtdParse)
import Text.XML.HaXml.Types (DocTypeDecl(..))


usage :: String
usage = "Usage: gen-" ++ basePackageName ++ " <specVersion> <specName> <inDir> <outDir>"

main :: IO ()
main = do
    args <- getArgs
    case args of
        [specVersion, specName, inDir, outDir] -> case parseVersion specVersion of
            Just v -> generate v specName inDir outDir
            Nothing -> die usage
        _ -> die usage

parseVersion :: String -> Maybe [Int]
parseVersion = traverse readMaybe . splitWith (== '.')

splitWith :: (a -> Bool) -> [a] -> [[a]]
splitWith p = go
  where
    go [] = []
    go cs = case break p cs of
        (good, bad) -> case bad of
            [] -> [good]
            b:ad -> good : go ad


basePackageName :: String
basePackageName = "arm-mras-dtd"

baseVersion :: [Int]
baseVersion = [0, 1]

topLevelModuleName :: [String]
topLevelModuleName = ["ARM", "MRAS", "DTD"]

sanitizeModuleName :: String -> String
sanitizeModuleName (c:cs) = toUpper c : filter isAlphaNum cs


generate :: [Int] -> String -> FilePath -> FilePath -> IO ()
generate specVersion specName inDir outDir = do
    mods <- generateHaskell (topLevelModuleName ++ [specName]) moduleDir inDir
    writePackageDescription cabalOut $ buildCabal specVersion pname mods
  where
    pname = basePackageName ++ "-" ++ map toLower specName
    cabalOut = outDir </> pname <.> "cabal"
    moduleDir = outDir </> "gen"

buildCabal :: [Int] -> String -> [[String]] -> PackageDescription
buildCabal specVersion pname mods = emptyPackageDescription
    { package = PackageIdentifier (PackageName pname) (Version (baseVersion ++ specVersion) [])
    , license = MIT
    , author = "Nick Spinale"
    , maintainer = "spinalen@gmail.com"
    , buildType = Just Simple
    , specVersionRaw = Left (Version [1, 10] [])
    , library = Just emptyLibrary
        { exposedModules = map (fromString . intercalate ".") mods
        , libBuildInfo = emptyBuildInfo
            { targetBuildDepends =
                [ Dependency (PackageName "base") anyVersion
                , Dependency (PackageName "HaXml") anyVersion
                ]
            , hsSourceDirs = ["gen"]
            }
        }
    }

generateHaskell :: [String] -> FilePath -> FilePath -> IO [[String]]
generateHaskell baseModuleName moduleDir inDir = do
    createDirectoryIfMissing True (moduleDir </> joinPath baseModuleName)
    files <- listDirectory inDir >>= filterM (doesFileExist . (</>) inDir)
    sequence [ f name | (name, ext) <- map splitExtension files, ext == ".dtd" ]
  where
    f name = do
        let inPath = inDir </> name <.> "dtd"
        content <- readFile inPath
        case dtdParse inPath content of
            Nothing -> error $ "failed to parse " ++ inPath
            Just dtd -> do
                let leafModuleName = baseModuleName ++ [sanitizeModuleName name]
                    outPath = moduleDir </> joinPath leafModuleName <.> "hs"
                    mod = buildModule leafModuleName dtd
                writeFile outPath (prettyPrint mod)
                return leafModuleName

buildModule :: [String] -> DocTypeDecl -> Module ()
buildModule modName (DTD _ _ markup) = Module () (Just head) [] imps decls
  where
    head = ModuleHead () (ModuleName () (intercalate "." modName)) Nothing Nothing
    tydefs = dtd2TypeDef markup
    Module () Nothing [] [] decls = () <$ fromParseResult (parseModule rawDecls)
    rawDecls = render (vcat (map ppTypeDef tydefs ++ map mkInstance tydefs))
    imps = [ basicImport"Text.XML.HaXml.OneOfN"
           , hidingImport "Prelude" ["Right", "Left"]
           , hidingImport "Text.XML.HaXml.XmlContent" ["Content", "List"]
           , hidingImport "Text.XML.HaXml.Types" ["Content", "Name"]
           ]

basicImport :: String -> ImportDecl ()
basicImport mod = ImportDecl
    { importAnn = ()
    , importModule = ModuleName () mod
    , importQualified = False
    , importSrc = False
    , importSafe = False
    , importPkg = Nothing
    , importAs = Nothing
    , importSpecs = Nothing
    }

hidingImport :: String -> [String] -> ImportDecl ()
hidingImport mod hides = (basicImport mod)
    { importSpecs = Just (ImportSpecList () True (map (IVar () . Ident ()) hides))
    }

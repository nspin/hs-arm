{-# LANGUAGE OverloadedStrings #-}

module Main (main) where

import Control.Monad
import Data.ByteString.Builder
import Data.Char
import Data.List
import Data.Monoid
import System.Directory
import System.Environment
import System.Exit
import System.FilePath
import Text.Read
import qualified Data.ByteString.Lazy as L

import Text.PrettyPrint.HughesPJ (render)

import Distribution.License
import Distribution.ModuleName (ModuleName, fromString, components)
import Distribution.Package
import Distribution.PackageDescription
import Distribution.PackageDescription.Parse
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

topLevelModule :: [String]
topLevelModule = ["ARM", "MRAS", "DTD"]

generate :: [Int] -> String -> FilePath -> FilePath -> IO ()
generate specVersion specName inDir outDir = do
    mods <- generateHaskell (topLevelModule ++ [specName]) moduleDir inDir
    writePackageDescription cabalOut $ generateCabal specVersion pname mods
  where
    pname = basePackageName ++ "-" ++ map toLower specName
    cabalOut = outDir </> pname <.> "cabal"
    moduleDir = outDir </> "gen"


generateCabal :: [Int] -> String -> [[String]] -> PackageDescription
generateCabal specVersion pname mods = emptyPackageDescription
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
generateHaskell baseModule moduleDir inDir = do
    createDirectoryIfMissing True (moduleDir </> joinPath baseModule)
    files <- listDirectory inDir >>= filterM (doesFileExist . (</>) inDir)
    sequence [ f name | (name, ext) <- map splitExtension files, ext == ".dtd" ]
  where
    f name = do
        dtd <- parseDTD $ inDir </> name <.> "dtd"
        let leafModule = baseModule ++ [sanitizeModuleName name]
            hs = renderDTD leafModule dtd
        L.writeFile (moduleDir </> joinPath leafModule <.> "hs") (toLazyByteString hs)
        return leafModule


sanitizeModuleName :: String -> String
sanitizeModuleName (c:cs) = toUpper c : filter isAlphaNum cs


parseDTD :: FilePath -> IO DocTypeDecl
parseDTD path = do
    content <- readFile path
    case dtdParse path content of
        Nothing -> error $ "failed to parse " ++ path
        Just dtd -> return dtd


renderDTD :: [String] -> DocTypeDecl -> Builder
renderDTD modName (DTD _ _ markup) = mconcat . map (<> "\n") $
    [ "module " <> stringUtf8 (intercalate "." modName) <> " where"
    , ""
    , "import Prelude hiding (Right, Left)"
    , "import Text.XML.HaXml.XmlContent hiding (Content, List)"
    , "import Text.XML.HaXml.Types hiding (Content, Name)"
    , "import Text.XML.HaXml.OneOfN"
    , ""
    , ""
    , "-- TYPES --"
    , ""
    ] ++ map ((<>) "\n" . stringUtf8 . render . ppTypeDef) decls ++
    [ ""
    , ""
    , "-- INSTANCES --"
    , ""
    ] ++ map ((<>) "\n" . stringUtf8 . render . mkInstance) decls
  where
    decls = nub $ dtd2TypeDef markup

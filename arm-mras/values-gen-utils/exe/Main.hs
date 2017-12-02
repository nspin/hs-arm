module Main (main) where

import ARM.MRAS.Types
import ARM.MRAS.Parse.IO

import System.Environment
import System.Exit

import Language.Haskell.Exts
import System.Directory
import System.FilePath

main :: IO ()
main = do
    args <- getArgs
    case args of
        [outDir, inDir] -> generate outDir inDir
        _ -> die $ "Usage: gen-arm-mras <inDir> <outDir>"

generate :: FilePath -> FilePath -> IO ()
generate outDir inDir = do
    parsed <- map snd <$> parseAllFrom inDir
    createDirectoryIfMissing True (takeDirectory path)
    writeFile path (prettyPrint (build parsed))
  where
    path = outDir </> "gen" </> "ARM" </> "MRAS" </> "Gen.hs"

build :: [Either AliasPage Page] -> Module ()
build mras = Module () (Just head) [] [imp] [ty, val]
  where
    head = ModuleHead () (ModuleName () "ARM.MRAS.Gen") Nothing Nothing
    ty = TypeSig () [Ident () "mras"]
        (TyList ()
            (TyApp ()
                (TyApp ()
                    (TyCon () (UnQual () (Ident () "Either" )))
                    (TyCon () (UnQual () (Ident () "AliasPage" ))))
            (TyCon () (UnQual () (Ident () "Page" )))))
    ParseOk expr = parseExp (show mras)
    val = FunBind () [Match () (Ident () "mras") [] (UnGuardedRhs () (() <$ expr)) Nothing]
    imp = ImportDecl
        { importAnn = ()
        , importModule = ModuleName () "ARM.MRAS.Types"
        , importQualified = False
        , importSrc = False
        , importSafe = False
        , importPkg = Nothing
        , importAs = Nothing
        , importSpecs = Nothing
        }

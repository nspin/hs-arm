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
    base <- parseBaseFrom inDir
    fpsimd <- parseFpsimdFrom inDir
    createDirectoryIfMissing True (takeDirectory path)
    writeFile path (prettyPrint (build base fpsimd))
  where
    path = outDir </> "gen" </> "ARM" </> "MRAS" </> "Gen.hs"

build :: [Insn] -> [Insn] -> Module ()
build base fpsimd = Module () (Just head) [] [imp] decls
  where
    head = ModuleHead () (ModuleName () "ARM.MRAS.Gen") Nothing Nothing
    decls = decl "base" base ++ decl "fpsimd" fpsimd
    decl id val =
        [ TypeSig () [Ident () id]
            (TyList ()
                (TyCon () (UnQual () (Ident () "Insn"))))
        , FunBind ()
            [ Match () (Ident () id) []
                (UnGuardedRhs () (() <$ fromParseResult (parseExp (show val))))
                Nothing
            ]
        ]
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

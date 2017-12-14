module Main (main) where

import ARM.MRAS.Parse
import ARM.MRAS.Types

import Language.Haskell.Exts
import System.Directory
import System.Environment
import System.Exit
import System.FilePath

main :: IO ()
main = do
    args <- getArgs
    case args of
        [outDir, inDir] -> generate outDir inDir
        _ -> die $ "Usage: gen-arm-mras-values <inDir> <outDir>"

generate :: FilePath -> FilePath -> IO ()
generate outDir inDir = do
    base <- parseBaseFrom inDir
    fpsimd <- parseFpSimdFrom inDir
    sharedps <- parseSharedPsFrom inDir
    createDirectoryIfMissing True (takeDirectory path)
    writeFile path (prettyPrint (build base fpsimd sharedps))
  where
    path = outDir </> "gen" </> "ARM" </> "MRAS" </> "Values" </> "Gen.hs"

build :: [Insn] -> [Insn] -> [SharedPs] -> Module ()
build base fpsimd sharedps = Module () (Just head) [] [imp] decls
  where
    head = ModuleHead () (ModuleName () "ARM.MRAS.Values.Gen") Nothing Nothing
    decls = decl "base" base ++ decl "fpsimd" fpsimd ++ [sharedpsTy, sharedpsVal]
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
    sharedpsTy = TypeSig () [Ident () "sharedps"]
        (TyList ()
            (TyCon () (UnQual () (Ident () "SharedPs"))))
    sharedpsVal = FunBind ()
        [ Match () (Ident () "sharedps") []
            (UnGuardedRhs () (() <$ fromParseResult (parseExp (show sharedps))))
            Nothing
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

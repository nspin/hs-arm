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
build base fpsimd sharedps = Module () (Just head) [] imps decls
  where
    head = ModuleHead () (ModuleName () "ARM.MRAS.Values.Gen") Nothing Nothing
    decls = decl "aarch64Base" base ++ decl "aarch64FpSimd" fpsimd ++ [sharedpsTy, sharedpsVal]
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
    sharedpsTy = TypeSig () [Ident () "sharedPs"]
        (TyList ()
            (TyCon () (UnQual () (Ident () "SharedPs"))))
    sharedpsVal = FunBind ()
        [ Match () (Ident () "sharedPs") []
            (UnGuardedRhs () (() <$ fromParseResult (parseExp (show sharedps))))
            Nothing
        ]
    imps =
        [ emptyImport "ARM.MRAS.Types"
        , (emptyImport "ARM.MRAS.Types.AArch64")
            { importQualified = True
            , importAs = "AArch64"
            }
        , (emptyImport "ARM.MRAS.Types.AArch32")
            { importQualified = True
            , importAs = "AArch32"
            }
        ]

emptyImport :: String -> ImportDecl ()
emptyImport name = ImportDecl
    { importAnn = ()
    , importModule = ModuleName () name
    , importQualified = False
    , importSrc = False
    , importSafe = False
    , importPkg = Nothing
    , importAs = Nothing
    , importSpecs = Nothing
    }
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

build :: ([(FilePath, Insn)], [(FilePath, Alias)]) -> ([(FilePath, Insn)], [(FilePath, Alias)]) -> Module ()
build (baseInsns, baseAliases) (fpsimdInsns, fpsimdAliases) = Module () (Just head) [] [imp] decls
  where
    head = ModuleHead () (ModuleName () "ARM.MRAS.Gen") Nothing Nothing
    decls = concat
        [ decl "baseInsns" "Insn" baseInsns
        , decl "baseAliases" "Alias" baseAliases
        , decl "fpsimdInsns" "Insn" fpsimdInsns
        , decl "fpsimdAliases" "Alias" fpsimdAliases
        ]
    decl id ty val =
        [ TypeSig () [Ident () id]
            (TyList ()
                (TyTuple () Boxed
                    [ (TyCon () (UnQual () (Ident () "String")))
                    , (TyCon () (UnQual () (Ident () ty)))
                    ]))
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

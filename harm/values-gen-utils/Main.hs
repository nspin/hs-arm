{-# LANGUAGE OverloadedStrings #-}

module Main (main) where

import ARM.MRAS

import System.Environment
import System.Exit

import Language.Haskell.Exts
import System.FilePath
import System.Directory

main :: IO ()
main = do
    args <- getArgs
    case args of
        [outDir] -> generate outDir
        _ -> die $ "Usage: gen-harm <outDir>"

generate :: FilePath -> IO ()
generate outDir = do
    createDirectoryIfMissing True (takeDirectory file)
    writeFile file $ prettyPrint hs
  where
    file = outDir </> "gen" </> "Harm" </> "Gen.hs"

hs :: Module ()
hs = Module () (Just head) [] [word] [instrs, decsType, decsVal]
  where
    head = ModuleHead () name Nothing Nothing
    name = ModuleName () "Harm.Gen"
    word = ImportDecl
        { importAnn = ()
        , importModule = ModuleName () "Data.Word"
        , importQualified = False
        , importSrc = False
        , importSafe = False
        , importPkg = Nothing
        , importAs = Nothing
        , importSpecs = Nothing
        }
    instrs = DataDecl () (DataType ()) Nothing
        (DHead () (Ident () "Instruction"))
        [QualConDecl () Nothing Nothing (ConDecl () (Ident () "Instruction") [])]
        Nothing
    decsType = TypeSig () [Ident () "decoders"] . TyList () $ TyTuple () Boxed
        [ TyCon () (UnQual () (Ident () "Word32"))
        , TyCon () (UnQual () (Ident () "Word32"))
        , TyFun () (TyCon () (UnQual () (Ident () "Word32"))) (TyCon () (UnQual () (Ident () "Instruction")))
        ]
    decsVal = FunBind () [Match () (Ident () "decoders") [] (UnGuardedRhs () (List () [])) Nothing]

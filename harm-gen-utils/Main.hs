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
hs = Module () (Just head) [] [] [decl]
  where
    head = ModuleHead () name Nothing Nothing
    name = ModuleName () "Harm.Gen"
    decl = DataDecl () (DataType ()) Nothing
        (DHead () (Ident () "Instruction"))
        [QualConDecl () Nothing Nothing (ConDecl () (Ident () "Instruction") [])]
        Nothing

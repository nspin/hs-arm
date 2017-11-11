{-# LANGUAGE OverloadedStrings #-}

module Main (main) where

import Gen

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
        _ -> die $ "Usage: gen-arm-mra-src <outDir>"

generate :: FilePath -> IO ()
generate outDir = do
    createDirectoryIfMissing True (takeDirectory file)
    writeFile file $ prettyPrint instructions
  where
    file = outDir </> "ARM" </> "MRA" </> "Gen.hs"

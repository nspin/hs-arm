module Main (main) where

import Gen

import System.Environment
import System.Exit

import Language.Haskell.Exts
import System.Directory
import System.FilePath

main :: IO ()
main = do
    args <- getArgs
    case args of
        [outDir] -> generate outDir
        _ -> die $ "Usage: gen-arm-mras <outDir>"

generate :: FilePath -> IO ()
generate outDir = do
    createDirectoryIfMissing True (takeDirectory file)
    writeFile file $ prettyPrint gen
  where
    file = outDir </> "gen" </> "ARM" </> "MRAS" </> "Gen.hs"

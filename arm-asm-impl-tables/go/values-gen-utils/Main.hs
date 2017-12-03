module Main (main) where

import Hs
import Go

import System.Environment
import System.Exit

import Language.Haskell.Exts
import System.Directory
import System.FilePath

main :: IO ()
main = do
    args <- getArgs
    case args of
        [outDir, inDir] -> do
            let hsOut = outDir </> "gen/ARM/Go/Tables/Gen.hs"
            table <- atto parseTable (inDir </> "arm64/arm64asm/tables.go")
            createDirectoryIfMissing True (takeDirectory hsOut)
            writeFile hsOut (generate table)
        _ -> die "usage: _ <outDir> <inDir>"

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
            let hsOut = outDir </> "gen/ARM/Go/Tables/Types/Gen.hs"
            args <- atto parseArgs (inDir </> "arm64/arm64asm/arg.go")
            ops <- atto parseOps (inDir </> "arm64/arm64asm/tables.go")
            predictors <- atto parsePredictors (inDir </> "arm64/arm64asm/condition.go")
            createDirectoryIfMissing True (takeDirectory hsOut)
            writeFile hsOut (generate ops args predictors)
        _ -> die "usage: _ <outDir> <inDir>"

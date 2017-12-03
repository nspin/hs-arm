module Test where

import Go

import System.Environment
import System.Exit

import Language.Haskell.Exts
import System.Directory
import System.FilePath

source = "../../gen-test-out/arm-go.arch.src/arm64/arm64asm"

test :: IO ()
test = do
    args <- atto parseArgs (source </> "arg.go")
    ops <- atto parseOps (source </> "tables.go")
    print args
    print ops

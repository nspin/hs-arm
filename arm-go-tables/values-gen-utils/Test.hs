module Test where

import Go
import Hs

import Control.Monad
import Data.Char
import Data.List
import System.Directory
import System.FilePath

source = "../../gen-test-out/arm-go.arch.src/arm64/arm64asm"

-- Too lazy to derive NFData and Generic in generated modules
goofyDeepSeq :: Show a => a -> IO ()
goofyDeepSeq x = if sum (map ord (show x)) == -1 then putStr "" else return ()

test :: IO ()
test = do
    table <- atto parseTable (source </> "tables.go")
    putStrLn (generate table)

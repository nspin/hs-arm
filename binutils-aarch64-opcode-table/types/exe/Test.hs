module Test where

import C
import Hs
import Main

import HarmGen.Binutils.Types

import Control.Monad
import Data.Char
import Language.C
import Language.Haskell.Exts
import System.Directory
import System.FilePath


source = "../../gen-test-out/aarch64-tbl.h"

-- Too lazy to derive NFData and Generic in generated modules
goofyDeepSeq :: Show a => a -> IO ()
goofyDeepSeq x = if sum (map ord (show x)) == -1 then putStr "" else return ()

test :: IO ()
test = do
    Right tunit <- parseCFilePre source
    let rows = extractTable tunit
    goofyDeepSeq rows
    forM (take 10 rows) $ \row -> do
        print row
    return ()

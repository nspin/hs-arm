module Test where

import C

import Language.C
import System.FilePath

source :: FilePath
source = "../gen-test-out/aarch64-tbl.h"

parse :: IO CTranslUnit
parse = do
    Right tunit <- parseCFilePre source
    return tunit

test :: IO ()
test = do
    tunit <- parse
    print . pretty $ CInitList (extractTable tunit) undefNode

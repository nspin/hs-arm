module DiagramTest where

import IO
import Tidy
import qualified Distill as D
import Diagram

import Control.DeepSeq
import Control.Monad
import Data.List
import System.IO
import System.FilePath


root :: FilePath
root = "../../test/nix-results/arm-mras.patched-a64/ISA_v83A_A64_xml_00bet5"

test :: IO [Field]
test = do
    base <- listPages root "index.xml"
    fpsimd <- listPages root "fpsimdindex.xml"
    fss <- forM (base ++ fpsimd) $ \p -> do
        isec <- readPage p
        let page = force $ tidyPage (D.distillPage isec)
            fs = fields <$> (classes page >>= diagrams)
        -- print fs
        return fs
    return (nub (join (join fss)))

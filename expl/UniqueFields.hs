import Lib

import ARM.MRAS
import ARM.MRAS.Types.Diagram

import Control.Monad
import Data.List
import Control.Lens

fs :: [Field]
fs = nub . concatMap fields . concatMap diagrams
    $ (baseInsns ++ fpsimdInsns) ^.. traverse._2.insn_classes.traverse._1

main :: IO ()
main = mapM_ print fs

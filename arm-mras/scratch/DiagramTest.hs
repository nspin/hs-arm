module DiagramTest where

import Lib

import ARM.MRAS.Types
import ARM.MRAS.Types.Diagram

import Control.DeepSeq
import Control.Monad
import Data.List
import System.IO

test :: IO [Field]
test = do
    parsed <- map snd <$> getAll
    return (nub (join (join (map f parsed))))
  where
    f page = fields <$> (classes (force page) >>= diagrams)

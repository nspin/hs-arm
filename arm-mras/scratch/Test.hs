module Test where

import Lib

import ARM.MRAS.Types
import ARM.MRAS.Types.Diagram

import Data.Bifunctor
import Data.Either
import Data.Function


splitAll :: [(FilePath, Either AliasPage Page)] -> [Either (FilePath, AliasPage) (FilePath, Page)]
splitAll = map . uncurry $ \p -> bimap ((,) p) ((,) p)

allAliases :: IO [(FilePath, AliasPage)]
allAliases = lefts . splitAll <$> getAll

allPages :: IO [(FilePath, Page)]
allPages = rights . splitAll <$> getAll

getDiagrams :: Page -> [[Block]]
getDiagrams (Page _ _ cs _) = (map fst cs) >>= diagrams

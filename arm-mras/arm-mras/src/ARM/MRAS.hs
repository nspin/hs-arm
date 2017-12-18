{-# LANGUAGE FlexibleContexts #-}

module ARM.MRAS
    ( module ARM.MRAS.Types
    , module ARM.MRAS.Values

    , topoSort

    , bindDiagram
    , classDiagrams
    , diagramFields
    , DiagramField(..)
    ) where

import ARM.MRAS.Types
import ARM.MRAS.Values

import Control.Exception
import Control.Lens
import Control.Monad.State
import Data.Map.Strict ((!))
import qualified Data.Map.Strict as M
import qualified Data.Set as S
import Debug.Trace


topoSort :: [SharedPs] -> [SharedPs]
topoSort = topoSortGeneric _shared_ps_name _shared_ps_symbols _shared_ps_deps

unlessM :: Monad m => m Bool -> m () -> m ()
unlessM mcond m = mcond >>= flip unless m

topoSortGeneric :: (Ord i, Ord s) => (a -> i) -> (a -> [s]) -> (a -> [s]) -> [a] -> [a]
topoSortGeneric idOf defsOf depsOf nodes = reverse sorted
  where
    symbols = M.fromList [ (def, node) | node <- nodes, def <- defsOf node ]
    (sorted, visited) = execState (traverse (go []) nodes) ([], S.empty)
    go seen node = assert (not (idOf node `elem` seen)) $
        unlessM (uses _2 (S.member (idOf node))) $ do
            _2 %= S.insert (idOf node)
            mapM (go (idOf node:seen) . (!) symbols) (depsOf node)
            _1 %= (:) node


bindDiagram :: [Block] -> [(String, BlockSpec)] -> [Block]
bindDiagram bs [] = bs
bindDiagram (Block (Just name) spec : blocks) bndss@((name', spec'):bnds)
    | name == name' = Block (Just name) spec' : bindDiagram blocks bnds 
bindDiagram (block:blocks) bnds = block : bindDiagram blocks bnds

classDiagrams :: Class -> [[Block]]
classDiagrams cl = map
    (bindDiagram (cl^.class_diagram))
    (cl^..class_encodings.traverse.encoding_diagram)

diagramFields :: [Block] -> [DiagramField]
diagramFields = go 32
  where
    go hi (Block Nothing spec : blks) = go (hi - len spec) blks
    go hi (Block (Just n) spec : blks) = DiagramField (len spec) (hi - len spec) n : go (hi - len spec) blks
    go 0 [] = []
    len (BlockEq bs) = length bs
    len (BlockNeq bs) = length bs

data DiagramField = DiagramField
    { diagram_field_width :: Int
    , diagram_field_lo :: Int
    , diagram_field_name :: String
    } deriving (Show, Eq, Ord)

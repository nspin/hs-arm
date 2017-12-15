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


-- properties required of 'chunks':
--  1) each symbol appears in only 1 chunk
topoSort :: [SharedPs] -> [SharedPs]
topoSort = topoSortGeneric _shared_ps_name _shared_ps_symbols _shared_ps_deps

unlessM :: Monad m => m Bool -> m () -> m ()
unlessM mcond m = mcond >>= flip unless m

topoSortGeneric :: (Ord i, Ord s) => (a -> i) -> (a -> [s]) -> (a -> [s]) -> [a] -> [a]
topoSortGeneric idOf defsOf depsOf nodes = reverse sorted
  where
    symbols = M.fromList [ (def, node) | node <- nodes, def <- defsOf node ]
    (sorted, visitedNodes, visitedSymbols) = execState (traverse (goNode [] []) nodes) ([], S.empty, S.empty)
    goNode seenNodes seenSymbols node = unlessM (uses _2 (S.member (idOf node))) $ do
        _2 %= S.insert (idOf node)
        mapM (goSymbol (idOf node:seenNodes) seenSymbols) (depsOf node)
        _1 %= (:) node
    goSymbol seenNodes seenSymbols sym = unlessM (uses _3 (S.member sym)) $ do
        _3 %= S.insert sym
        goNode seenNodes (sym:seenSymbols) (symbols ! sym)


-- topoSortGeneric :: (Ord i, Ord s) => (a -> i) -> (a -> [s]) -> (a -> [s]) -> [a] -> [a]
-- topoSortGeneric idOf defsOf depsOf nodes = reverse sorted
--   where
--     symbols = M.fromList [ (def, node) | node <- nodes, def <- defsOf node ]
--     (sorted, visitedNodes, visitedSymbols) = execState (traverse (goNode [] []) nodes) ([], S.empty, S.empty)
--     goNode seenNodes seenSymbols node = assert (not (idOf node `elem` seenNodes)) $ do
--         unlessM (uses _2 (S.member (idOf node))) $ do
--             _2 %= S.insert (idOf node)
--             mapM (goSymbol (idOf node:seenNodes) seenSymbols) (depsOf node)
--             _1 %= (:) node
--     goSymbol seenNodes seenSymbols sym = assert (not (sym `elem` seenSymbols)) $ do
--         unlessM (uses _3 (S.member sym)) $ do
--             _3 %= S.insert sym
--             goNode seenNodes (sym:seenSymbols) (symbols ! sym)


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
    go hi (Block (Just n) spec : blks) = Field (hi - 1) (hi - len spec) n : go (hi - len spec) blks
    go 0 [] = []
    len (BlockEq bs) = length bs
    len (BlockNeq bs) = length bs

data DiagramField = Field Int Int String
    deriving (Show, Eq, Ord)

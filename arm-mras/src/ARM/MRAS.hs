module ARM.MRAS
    ( module ARM.MRAS.Types
    , module ARM.MRAS.Values

    , bindDiagram
    , classDiagrams
    , diagramFields
    , DiagramField(..)

    ) where

import ARM.MRAS.Types
import ARM.MRAS.Values

import Control.Lens
import qualified Data.Map as M
import qualified Data.Set as S


bindDiagram :: [Block] -> [(String, BlockSpec)] -> [Block]
bindDiagram bs [] = bs
bindDiagram (Block (Just name) spec : blocks) bndss@((name', spec'):bnds)
    | name == name' = Block (Just name) spec' : bindDiagram blocks bnds 
bindDiagram (block:blocks) bnds = block : bindDiagram blocks bnds

classDiagrams :: Class -> [[Block]]
classDiagrams cl = map
    (bindDiagram (cl^.class_diagram.diagram_blocks))
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

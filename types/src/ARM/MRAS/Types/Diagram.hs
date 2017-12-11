module ARM.MRAS.Types.Diagram where

import ARM.MRAS.Types
import ARM.MRAS.Types.Lens

import Debug.Trace
import Control.Lens

bind :: [Block] -> [(String, BlockSpec)] -> [Block]
bind bs [] = bs
bind (Block (Just name) spec : blocks) bndss@((name', spec'):bnds)
    | name == name' = Block (Just name) spec' : bind blocks bnds 
bind (block:blocks) bnds = block : bind blocks bnds

diagrams :: Class -> [[Block]]
diagrams cl = map
    (bind (cl^.class_diagram.diagram_blocks))
    (cl^..class_encodings.traverse.encoding_diagram)

data Field = Field Int Int String
    deriving (Show, Eq, Ord)

fields :: [Block] -> [Field]
fields = go 32
  where
    go hi (Block Nothing spec : blks) = go (hi - specLen spec) blks
    go hi (Block (Just n) spec : blks) = Field (hi - 1) (hi - specLen spec) n : go (hi - specLen spec) blks
    go 0 [] = []

specLen :: BlockSpec -> Int
specLen (BlockEq bs) = length bs
specLen (BlockNeq bs) = length bs

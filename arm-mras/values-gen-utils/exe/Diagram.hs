module Diagram where

import Tidy
import qualified Distill as D

import Debug.Trace

bind :: [Block] -> [(String, BlockSpec)] -> [Block]
bind bs [] = bs
bind (Block (Just name) spec : blocks) bndss@((name', spec'):bnds)
    | name == name' = Block (Just name) spec' : bind blocks bnds 
bind (block:blocks) bnds = block : bind blocks bnds

classes :: Either AliasPage Page -> [Class]
classes (Left (AliasPage _ _ cl)) = [cl]
classes (Right (Page _ _ cls _)) = map fst cls

diagrams :: Class -> [[Block]]
diagrams (Class _ _ (Diagram _ blks) encs) = map (bind blks . f) encs
  where
    f (Encoding _ diag _ _) = diag

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

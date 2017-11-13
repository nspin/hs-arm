{-# LANGUAGE DeriveAnyClass #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE StandaloneDeriving #-}

module Structure where

import qualified Distill as L
import Distill hiding (Class, Diagram, Encoding, Box, Explanation, Symbol, Table)

import Control.Applicative
import Control.DeepSeq
import Control.Exception
import Data.Char
import Data.Foldable
import Data.Maybe
import Debug.Trace
import GHC.Generics (Generic)

import qualified ARM.MRAS.DTD.A64.Iformp as D


data Instruction = Instruction InstructionId [Class] [Ps] [Alias]
    deriving (Show, Generic, NFData)

type InstructionId = String

data Class = Class ClassId (Maybe ArchVar) Diagram [Encoding] [Ps]
    deriving (Show, Generic, NFData)

data Diagram = Diagram PsName [Block]
    deriving (Show, Generic, NFData)

data Encoding = Encoding EncodingId [(String, BlockSpec)] Template [Symbol]
    deriving (Show, Generic, NFData)

-- Symbol sym bits values
data Symbol = Symbol String String (Maybe Table)
    deriving (Show, Generic, NFData)

data Table = Table THead [TRow]
    deriving (Show, Generic, NFData)

data THead = THead String [String]
    deriving (Show, Generic, NFData)

data TRow = TRow (Maybe String) [[Bit]] (Maybe ArchVar)
    deriving (Show, Generic, NFData)

data Alias = Alias
    deriving (Show, Generic, NFData)


data Box = Box Int Int Block deriving (Show, Generic, NFData)

data Block = Block (Maybe String) BlockSpec deriving (Show, Generic, NFData)

data BlockSpec = BlockEq [Bit] | BlockNeq [Bit] deriving (Show, Generic, NFData)

data Bit = I | O | X deriving (Eq, Show, Generic, NFData)


parseInstruction :: Instr -> Maybe ([Alias] -> Instruction)
parseInstruction (Instr id (AliasTo _) xclasses expls pss) = Nothing
parseInstruction (Instr id (AliasList _) xclasses expls pss) =
    Just (Instruction id classes pss)
  where
    classes = map f xclasses
    f (L.Class cid archvar (L.Diagram psname boxes) xencs psss)
        = Class cid archvar diag encs psss
      where
        diag = Diagram psname dg
        dg = parseDiagram boxes
        encs = map g xencs
        g (L.Encoding eid bxs [tmp] Nothing) = Encoding eid (parseSubDiagram dg bxs) tmp syms
          where
            syms =
                [ Symbol ss (bits mm) (values mm)
                | L.Explanation eids ss mm <- expls
                , eid `elem` eids
                ]
            bits (Account x) = x
            bits (Definition x _) = x
            values (Account _) = Nothing
            values (Definition _ tbl) = Just (parseTable tbl)

parseTable :: L.Table -> Table
parseTable (L.Table hd bdy) = assert check $ Table thd tbdy
  where
    tbdy = map r bdy
    (hasarch, thd@(THead sym bfs)) = case reverse hd of
        TEntry D.Entry_class_symbol (Left "Architectural Feature") : rest -> (True, f rest)
        rest -> (False, f rest)
      where
        f (TEntry D.Entry_class_symbol (Left sym) : rest) = THead sym (map g rest)
        g (TEntry D.Entry_class_bitfield (Left bf)) = bf
    r row = TRow (if sval == "RESERVED" then Nothing else Just sval) bval archvar
      where
        (archvar, (TEntry D.Entry_class_symbol (Left sval) : rest)) = case (hasarch, reverse row) of
            (False, res) -> (Nothing, res)
            (True, TEntry D.Entry_class_feature (Right archvar) : res) -> (Just archvar, res)
            (True, TEntry D.Entry_class_feature (Left "") : res) -> (Nothing, res)
        bval = map f rest
        f (TEntry D.Entry_class_bitfield (Left bs)) = map h bs
        h '1' = I
        h '0' = O
        h 'x' = X
    check = all (== length bfs) [ length bb | TRow ss bb _ <- tbdy ]
        && homog [ map length bb | TRow ss bb _ <- tbdy ]

homog :: Eq a => [a] -> Bool
homog [] = True
homog (a:as) = all (== a) as

parseDiagram :: [L.Box] -> [Block]
parseDiagram boxes = check <!> blocks
  where
    blocks = go 32 (map parseBox boxes)
    go 0 [] = []
    go n (Box hi width bl@(Block name spec) : bxs) = n == hi + 1 && specLength spec == width <!> bl : go (n - width) bxs
    check = allUnique (catMaybes [ n | Block n _ <- blocks ])

allUnique :: Eq a => [a] -> Bool
allUnique [] = True
allUnique (a:as) = elem a as || allUnique as

parseSubDiagram :: [Block] -> [L.Box] -> [(String, BlockSpec)]
parseSubDiagram super sub = go 31 super (map parseBox sub)
  where
    go _ _ [] = []
    go i aa@((Block name spec):bls) all@((Box hi width (Block n sp)):bxs) = case liftA2 (==) name n of
        Just True -> assert (hi == i) $ (fromJust n, narrowSpec spec sp) : go (i - width) bls bxs
        _ -> go (i - specLength spec) bls all

-- narrowSpec super sub
narrowSpec :: BlockSpec -> BlockSpec -> BlockSpec
narrowSpec (BlockEq as) (BlockEq bs) = BlockEq (zipBits narrowBit as bs)
narrowSpec (BlockEq as) neq@(BlockNeq bs) = assert (length as == length bs && all ((==) X) as) neq
narrowSpec (BlockNeq as) (BlockNeq bs) = BlockNeq (zipWith narrowBit as bs)

zipBits :: (Bit -> Bit -> Bit) -> [Bit] -> [Bit] -> [Bit]
zipBits _ [] [] = []
zipBits f (a:as) (b:bs) = f a b : zipBits f as bs

narrowBit :: Bit -> Bit -> Bit
narrowBit I X = I
narrowBit O X = O
narrowBit X I = I
narrowBit X O = O
narrowBit X X = X

specLength :: BlockSpec -> Int
specLength spec = length $ case spec of
    BlockEq y -> y
    BlockNeq y -> y

parseBox :: L.Box -> Box
parseBox box@(L.Box hi width name cs) = Box hi width (Block name (assert check spec))
  where
    spec = case cs of
        [] -> error $ "empty: " ++ show box
        [(C w "")] -> assert (w == width) $ BlockEq (replicate w X)
        cs -> fromJust $ asum
                [ BlockEq <$> traverse (with f) cs
                , BlockNeq <$> traverse (with g) cs
                , BlockNeq <$> h cs
                ]

    with x (C 1 val) = x val
    with _ _ = Nothing

    f "0" = Just O
    f "1" = Just I
    f "x" = Just X
    f "(1)" = Just I -- ?
    f "" = Just X
    f _ = Nothing

    g "Z" = Just O
    g "N" = Just I
    g "z" = Just O -- ?
    g "" = Just X
    g _ = Nothing

    h [C w ('!':'=':' ':xs)] = w == length xs <!> traverse (f . (:[])) xs
    h _ = Nothing

    check = width == specLength spec

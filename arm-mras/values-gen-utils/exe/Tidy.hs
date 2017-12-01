{-# LANGUAGE DeriveAnyClass #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE StandaloneDeriving #-}
{-# LANGUAGE OverloadedStrings #-}

module Tidy where

import qualified Distill as D
import Distill hiding (Page, Class, Diagram, Encoding, Box, Explanation, Symbol, Table)

import Control.Applicative
import Control.DeepSeq
import Control.Exception
import qualified Data.Text as T
import Data.Char
import Data.Foldable
import Data.Function
import Data.List
import Data.Maybe
import Debug.Trace
import GHC.Generics (Generic)

import qualified ARM.MRAS.DTD.A64.Iformp as X


data Page = Page PageId [PageId] [(Class, [Ps])] [Ps]
    deriving (Show, Generic, NFData)

data AliasPage = AliasPage PageId PageId Class
    deriving (Show, Generic, NFData)

data Class = Class ClassId (Maybe ArchVar) Diagram [Encoding]
    deriving (Show, Generic, NFData)


data Diagram = Diagram PsName [Block]
    deriving (Show, Generic, NFData)

data Box = Box Int Int Block deriving (Show, Generic, NFData)

data Block = Block (Maybe String) BlockSpec deriving (Show, Generic, NFData)

data BlockSpec = BlockEq [Bit] | BlockNeq [Bit] deriving (Show, Generic, NFData)

data Bit = I | O | X deriving (Eq, Show, Generic, NFData)


data Encoding = Encoding EncodingId [(String, BlockSpec)] Template [Symbol]
    deriving (Show, Generic, NFData)

-- Symbol sym bits values
data Symbol = Symbol String String (Maybe Table)
    deriving (Show, Generic, NFData)

data Table = Table [String] [TableRow]
    deriving (Show, Generic, NFData)

data TableRow = TableRow String [[Bit]] (Maybe ArchVar)
    deriving (Show, Generic, NFData)


tidyPage :: D.Page -> Either AliasPage Page
tidyPage (D.Page pid ainfo xclasses expls pss) = mk (map f xclasses)
  where
    mk classes = case ainfo of
        AliasTo apid -> case (classes, pss) of
            ([(clazz, [])], []) -> Left (AliasPage pid apid clazz)
        AliasList apids -> Right (Page pid apids classes pss)
    f (D.Class cid marchvar (D.Diagram psname boxes) xencs psss)
        = (Class cid marchvar diag encs, psss)
      where
        diag = Diagram psname dg
        dg = tidyDiagram boxes
        encs = map g xencs
        g (D.Encoding eid bxs [tmp]) = Encoding eid (tidySubDiagram dg bxs) tmp syms
          where
            syms =
                [ case mm of
                    Account x _ -> Symbol ss x Nothing
                    Definition x tbl -> Symbol ss x (Just (tidyTable ss tbl))
                | D.Explanation eids ss mm <- expls
                , eid `elem` eids
                ]

stripAngleBrackets :: String -> String
stripAngleBrackets ('<':xs) = case reverse xs of
    '>':ys -> reverse ys

tidyTable :: String -> D.Table -> Table
tidyTable osym (D.Table hd bdy) = assert check $ Table bfs tbdy
  where
    tbdy = map r bdy
    (hasarch, bfs) = case reverse hd of
        TableEntry X.Entry_class_symbol (Left "Architectural Feature") : rest -> (True, f rest)
        rest -> (False, f rest)
      where
        f (TableEntry X.Entry_class_symbol (Left sym) : rest) = assert (sym == osym) $ map g rest
        g (TableEntry X.Entry_class_bitfield (Left bf)) = bf
    r row = TableRow sval bval archvar
      where
        (archvar, (TableEntry X.Entry_class_symbol (Left sval) : rest)) = case (hasarch, reverse row) of
            (False, res) -> (Nothing, res)
            (True, TableEntry X.Entry_class_feature (Right archvar) : res) -> (Just archvar, res)
            (True, TableEntry X.Entry_class_feature (Left "") : res) -> (Nothing, res)
        bval = map f rest
        f (TableEntry X.Entry_class_bitfield (Left bs)) = map h bs
        h '1' = I
        h '0' = O
        h 'x' = X
    check = all (== length bfs) [ length bb | TableRow ss bb _ <- tbdy ]
        && homog [ map length bb | TableRow ss bb _ <- tbdy ]

homog :: Eq a => [a] -> Bool
homog [] = True
homog (a:as) = all (== a) as

tidyDiagram :: [D.Box] -> [Block]
tidyDiagram boxes = check `assert` blocks
  where
    blocks = go 32 (map tidyBox boxes)
    go 0 [] = []
    go n (Box hi width bl@(Block name spec) : bxs) = (n == hi + 1 && specLength spec == width) `assert` (bl : go (n - width) bxs)
    check = allUnique (catMaybes [ n | Block n _ <- blocks ])

allUnique :: Eq a => [a] -> Bool
allUnique [] = True
allUnique (a:as) = elem a as || allUnique as

tidySubDiagram :: [Block] -> [D.Box] -> [(String, BlockSpec)]
tidySubDiagram super sub = go 31 super (map tidyBox sub)
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

tidyBox :: D.Box -> Box
tidyBox box@(D.Box hi width name cs) = Box hi width (Block name (assert check spec))
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

    h [C w ('!':'=':' ':xs)] = (w == length xs) `assert` traverse (f . (:[])) xs
    h _ = Nothing

    check = width == specLength spec

{-# LANGUAGE DeriveAnyClass #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE StandaloneDeriving #-}
{-# LANGUAGE OverloadedStrings #-}

module Structure where

import qualified Distill as D
import Distill hiding (Page, PageId, Class, Diagram, Encoding, Box, Explanation, Symbol, Table)

import Control.Applicative
import Control.DeepSeq
import Control.Exception
import Data.Attoparsec.Text hiding (I)
import qualified Data.Text as T
import Data.Char
import Data.Foldable
import Data.Function
import Data.List
import Data.Maybe
import Debug.Trace
import GHC.Generics (Generic)

import qualified ARM.MRAS.DTD.A64.Iformp as X


data Page = Page PageId [Class] [Ps] [AliasPage]
    deriving (Show, Generic, NFData)

data AliasPage = AliasPage PageId Class
    deriving (Show, Generic, NFData)

type PageId = String

data Class = Class ClassId (Maybe ArchVar) Diagram [Encoding] [Ps]
    deriving (Show, Generic, NFData)

data Diagram = Diagram PsName [Block]
    deriving (Show, Generic, NFData)

data Encoding = Encoding EncodingId [(String, BlockSpec)] Template [Symbol]
    deriving (Show, Generic, NFData)

-- Symbol sym bits values
data Symbol = Symbol String String (Maybe Table)
    deriving (Show, Generic, NFData)

-- Table bitfields [TableRow (Symbol or RESERVED) (bitfield assignments) archvar]
data Table = Table [BitExpr] [TableRow]
    deriving (Show, Generic, NFData)

data TableRow = TableRow Expr [[Bit]] (Maybe ArchVar)
    deriving (Show, Generic, NFData)

data Expr = ExprSym SymExpr | ExprBits BitExpr | ExprNum NumExpr | ExprPresence Bool | ExprReserved | ExprSEE_Advanced_SIMD_modified_immediate
    deriving (Show, Generic, NFData)

data SymExpr = SymExprSym String | SymExprOr SymExpr SymExpr
    deriving (Show, Generic, NFData)

data BitExpr = BitExprLit [Bool] | BitExprField String | BitExprSection BitExpr Int Int | BitExprConcat BitExpr BitExpr
    deriving (Show, Generic, NFData)

data NumExpr = NumExprInt Int | NumExprCast BitExpr | NumExprSub NumExpr NumExpr
    deriving (Show, Generic, NFData)

data Box = Box Int Int Block deriving (Show, Generic, NFData)

data Block = Block (Maybe String) BlockSpec deriving (Show, Generic, NFData)

data BlockSpec = BlockEq [Bit] | BlockNeq [Bit] deriving (Show, Generic, NFData)

data Bit = I | O | X deriving (Eq, Show, Generic, NFData)


parsePage :: D.Page -> Either (PageId, AliasPage) ([PageId], [AliasPage] -> Page)
parsePage (D.Page pid ainfo xclasses expls pss) = mk classes pss
  where
    mk classes pss = case ainfo of
        AliasTo apid -> case (classes, pss) of
            ([clazz], []) -> Left (apid, AliasPage pid clazz)
        AliasList apids -> Right (apids, Page pid classes pss)
    classes = map f xclasses
    f (D.Class cid archvar (D.Diagram psname boxes) xencs psss)
        = Class cid archvar diag encs psss
      where
        diag = Diagram psname dg
        dg = parseDiagram boxes
        encs = map g xencs
        g (D.Encoding eid bxs [tmp]) = Encoding eid (parseSubDiagram dg bxs) tmp syms
          where
            syms =
                [ Symbol ss (bits mm) (values mm)
                | D.Explanation eids ss mm <- expls
                , eid `elem` eids
                ]
            bits (Account x _) = x
            bits (Definition x _) = x
            values (Account _ _) = Nothing
            values (Definition _ tbl) = Just (parseTable (fieldsOf diag) tbl)

parseTable :: [String] -> D.Table -> Table
parseTable fields (D.Table hd bdy) = assert check $ Table (map (atto (parseBitExpr fields)) bfs) tbdy
  where
    tbdy = map r bdy
    (hasarch, bfs) = case reverse hd of
        TableEntry X.Entry_class_symbol (Left "Architectural Feature") : rest -> (True, f rest)
        rest -> (False, f rest)
      where
        f (TableEntry X.Entry_class_symbol (Left sym) : rest) = map g rest
        g (TableEntry X.Entry_class_bitfield (Left bf)) = bf
    r row = TableRow (atto (parseExpr fields) sval) bval archvar
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

atto :: Parser a -> String -> a
atto parser str = case parseOnly (parser <* endOfInput) (T.pack str) of
    Right a -> a
    Left err -> error ("{ " ++ str ++ " !!! " ++ err ++ " }")

-- These attoparsec parsers are very ugly. Their only purpose is exploring the MRAS.

parseBitExpr :: [String] -> Parser BitExpr
parseBitExpr fields =
        (field <* endOfInput)
    <|> conc
    <|> BitExprConcat (BitExprLit [False]) <$> ("0:" *> field)
    <|> BitExprSection <$> field <* "<" <*> decimal <* ":" <*> decimal <* ">"
    <|> f <$> (field <* "<") <*> (decimal <* ">")
  where
    field = BitExprField <$> T.unpack <$> asum (map (string . T.pack) (reverse (sortBy (compare `on` length) fields)))
    conc = BitExprConcat <$> field <* ":" <*> (conc <|> field)
    f bf i = BitExprSection bf i i

parseNumExpr :: [String] -> Parser NumExpr
parseNumExpr fields = "(" *> sub <* ")"
  where
    sub = NumExprSub <$> (int <* "-") <*> cast <|> NumExprSub <$> cast <*> ("-" *> int)
    int = NumExprInt <$> decimal
    cast = NumExprCast <$> (("UInt(" <|> "Uint(") *> parseBitExpr fields <* ")")

parseSymExpr :: Parser SymExpr
parseSymExpr = SymExprOr <$> (SymExprSym <$> manyTill ok "|") <*> sym <|> sym
  where
    sym = SymExprSym <$> many1 ok
    ok = satisfy (or <$> sequence [isAlpha, isDigit, (==) '#'])

parseExpr :: [String] -> Parser Expr
parseExpr fields =
        ExprReserved <$ "RESERVED"
    <|> ExprSEE_Advanced_SIMD_modified_immediate <$ "SEE Advanced SIMD modified immediate"
    <|> ExprBits <$> parseBitExpr fields
    <|> ExprNum <$> parseNumExpr fields
    <|> ExprSym <$> parseSymExpr
    <|> ExprPresence True <$ "[present]"
    <|> ExprPresence False <$ "[absent]"

homog :: Eq a => [a] -> Bool
homog [] = True
homog (a:as) = all (== a) as

parseDiagram :: [D.Box] -> [Block]
parseDiagram boxes = check `assert` blocks
  where
    blocks = go 32 (map parseBox boxes)
    go 0 [] = []
    go n (Box hi width bl@(Block name spec) : bxs) = (n == hi + 1 && specLength spec == width) `assert` (bl : go (n - width) bxs)
    check = allUnique (catMaybes [ n | Block n _ <- blocks ])

allUnique :: Eq a => [a] -> Bool
allUnique [] = True
allUnique (a:as) = elem a as || allUnique as

parseSubDiagram :: [Block] -> [D.Box] -> [(String, BlockSpec)]
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

parseBox :: D.Box -> Box
parseBox box@(D.Box hi width name cs) = Box hi width (Block name (assert check spec))
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

fieldsOf :: Diagram -> [String]
fieldsOf (Diagram _ blocks) = catMaybes (map f blocks)
  where
    f (Block n _) = n

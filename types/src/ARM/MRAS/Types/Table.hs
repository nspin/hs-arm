{-# LANGUAGE DeriveAnyClass #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE StandaloneDeriving #-}
{-# LANGUAGE OverloadedStrings #-}

module ARM.MRAS.Types.Table where

import qualified ARM.MRAS.Types as T
import ARM.MRAS.Types hiding (Table, TableRow)

import Control.Applicative
import Control.DeepSeq
import Data.Attoparsec.Text
import Data.Char
import Data.Foldable
import Data.Function
import Data.List
import qualified Data.Text as T
import GHC.Generics (Generic)


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


parseTable :: [String] -> T.Table -> Table
parseTable fields (T.Table hd bdy) = Table (map (atto (parseBitExpr fields)) hd) (map r bdy)
  where
    r (T.TableRow sval bfs mav) = TableRow (atto (parseExpr fields) sval) bfs mav

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

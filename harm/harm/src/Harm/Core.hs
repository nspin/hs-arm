module Harm.Core
    ( module Harm.Tables.Gen.Insn
    , decode
    , encode
    , parseAsm
    , showAsm
    , showAsmAt
    ) where

import qualified Harm.Tables as T
import Harm.Tables.Gen.Insn
import Harm.Types.Pattern

import Data.Attoparsec.ByteString.Char8 (Parser, stringCI)
import Data.ByteString.Char8 (pack)
import Data.Foldable
import Data.List
import Data.Word
import Text.Show

decode :: Word32 -> Maybe Insn
decode w = do
    (patt, decoder) <- find (flip match w . fst) T.decodeTable
    decoder w

encode :: Insn -> Either String Word32
encode = T.encode

parseAsm :: Parser Insn
parseAsm = asum
    [ stringCI (pack mnem) *> parser
    | (mnem, parser) <- T.parseTable
    ]

showAsm :: Insn -> ShowS
showAsm insn = showString mnem . showChar ' ' . operand
  where
    (mnem, operand) = T.showAsm insn

showAsmAt :: Int -> Insn -> ShowS
showAsmAt col insn = showString mnem . showString (replicate (col - length mnem) ' ') . operand
  where
    (mnem, operand) = T.showAsm insn

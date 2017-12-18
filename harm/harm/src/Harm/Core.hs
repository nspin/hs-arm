module Harm.Core
    ( module Harm.Tables.Gen.Insn
    , decode
    , encode
    , parseAsm
    , showAsm
    ) where

import qualified Harm.Tables as T
import Harm.Tables.Gen.Insn
import Harm.Types.Pattern

import Data.Attoparsec.ByteString (Parser)
import Data.List
import Data.Word

decode :: Word32 -> Maybe Insn
decode w = do
    (patt, decoder) <- find (flip match w . fst) T.decodeTable
    decoder w

encode :: Insn -> Either String Word32
encode = T.encode

parseAsm :: Parser Insn
parseAsm = T.parseAsm

showAsm :: Insn -> (String, String)
showAsm insn = let (mnem, operand) = T.showsAsm insn in (mnem, operand "")

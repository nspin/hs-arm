module Harm.Tables.Gen.Parse where
import Harm.Tables.Gen.Insn
import Harm.Tables.Logic
import Harm.Tables.Logic.Asm
import Data.Word
import Data.Attoparsec.ByteString.Char8

parseAsm :: Parser Insn
parseAsm = fail "not yet implemented"
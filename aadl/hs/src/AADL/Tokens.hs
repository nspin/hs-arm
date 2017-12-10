module AADL.Tokens
    ( Token(..)
    , Bit(..)
    , readBit
    , readField
    ) where

import Data.Word

data Token

    = TokEOF

    | TokCurlyOpen
    | TokCurlyClose
    | TokSquareOpen
    | TokSquareClose
    | TokEOL

    | TokSymColon
    | TokSymDoubleColon
    | TokSymEquals
    | TokSymArrow

    | TokKwInsn
    | TokKwType
    | TokKwEnc
    | TokKwDec
    | TokKwCase
    | TokKwError
    | TokKwReserved

    | TokBits [Bit]
    | TokNatLit Word
    | TokInfixOp String
    | TokIdent String
    | TokField String

    deriving (Eq, Show)

data Keyword
    = Kw
data Bit = I | O | X deriving (Eq, Show)

showBit :: Bit -> Char
showBit I = '1'
showBit O = '0'
showBit X = 'x'

readBit :: Char -> Bit
readBit '1' = I
readBit '0' = O
readBit 'x' = X

readField :: String -> String
readField ('#':s) = s

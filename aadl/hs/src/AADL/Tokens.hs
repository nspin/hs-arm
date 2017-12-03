module AADL.Tokens
    ( TokenWithCtx(..)
    , Token(..)
    , Bit(..)
    , readBit
    , readField
    ) where

import Data.Word

data TokenWithCtx a = TokenWithCtx a String Token deriving (Eq, Show)

data Token

    = TCurlyOpen
    | TCurlyClose
    | TSquareOpen
    | TSquareClose
    | TEOL

    | TSymColon
    | TSymDoubleColon
    | TSymEquals
    | TSymArrow

    | TKWInsn
    | TKWType
    | TKWEnc
    | TKWDec
    | TKWCase
    | TKWError
    | TKWReserved

    | TBits [Bit]
    | TNatLit Word
    | TInfixOp String
    | TIdent String
    | TField String

    deriving (Eq, Show)


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

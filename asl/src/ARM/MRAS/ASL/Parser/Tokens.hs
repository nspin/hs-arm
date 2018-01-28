{-# LANGUAGE DeriveAnyClass #-}
{-# LANGUAGE DeriveGeneric #-}

module ARM.MRAS.ASL.Parser.Tokens
    ( Token(..)
    , readBin
    , readMask
    , readReal
    ) where

import Data.Bool
import Data.Maybe
import Data.Ratio
import Control.DeepSeq
import GHC.Generics (Generic)

data Token =

      TokEOF

    | TokIndent
    | TokDedent

    | TokInt       Integer
    | TokHex       Integer
    | TokReal      Rational
    | TokBin       [Bool]
    | TokMask      [Maybe Bool]
    | TokString    String
    | TokIdent     String
    | TokTident    String
    | TokQualifier String

    -- reserved words
    | TokAnd
    | TokArray
    | TokAssert
    | TokBuiltin
    | TokCase
    | TokCatch
    | TokConstant
    | TokDiv
    | TokDo
    | TokDownto
    | TokElse
    | TokElsif
    | TokEnum
    | TokEor
    | TokFor
    | TokIf
    | TokImpdef
    | TokIn
    | TokIs
    | TokMod
    | TokNot
    | TokOf
    | TokOr
    | TokOtherwise
    | TokQuot
    | TokRem
    | TokRepeat
    | TokReturn
    | TokRegister
    | TokSee
    | TokThen
    | TokThrow
    | TokTo
    | TokTry
    | TokType
    | TokTypeof
    | TokUndefined
    | TokUnknown
    | TokUnpredictable
    | TokUntil
    | TokWhen
    | TokWhile

    | TokAmp
    | TokAmpAmp
    | TokBang
    | TokCaret
    | TokColon
    | TokComma
    | TokDot
    | TokDotDot
    | TokEq
    | TokEqEq
    | TokGt
    | TokGtEq
    | TokGtGt
    | TokLAngle
    | TokRAngle
    | TokLBrace
    | TokRBrace
    | TokLBrack
    | TokRBrack
    | TokLParen
    | TokRParen
    | TokLt
    | TokLtEq
    | TokLtLt
    | TokMinus
    | TokNeq
    | TokBarBar
    | TokPlus
    | TokPlusColon
    | TokPlusPlus
    | TokSemi
    | TokSlash
    | TokStar

    deriving (Eq, Show, Generic, NFData)


showBit :: Bool -> Char
showBit = bool '0' '1'

showMaskBit :: Maybe Bool -> Char
showMaskBit = maybe 'x' $ bool '0' '1'

readBit :: Char -> Bool
readBit '1' = True
readBit '0' = False

readMaskBit :: Char -> Maybe Bool
readMaskBit '1' = Just True
readMaskBit '0' = Just False
readMaskBit 'x' = Nothing

readBin :: String -> [Bool]
readBin = map readBit . filter (/= ' ') . init . tail

readMask :: String -> [Maybe Bool]
readMask = map readMaskBit . filter (/= ' ') . init . tail

readReal :: String -> Rational
readReal x = read before % 1 + read after % 10^(length after)
  where
    (before, '.':after) = span (/= '.') x

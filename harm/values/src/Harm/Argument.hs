{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Harm.Argument
    ( Argument(..)
    , encodeArgAt
    , decodeArgFrom

    , Xn
    ) where

import Data.Bits
import Data.Word


class Argument a where
    encodeArg :: a -> Word32
    decodeArg :: Word32 -> a

encodeArgAt :: Argument a => Int -> a -> Word32
encodeArgAt i a = encodeArg a `shiftL` i

decodeArgFrom :: Argument a => Int -> Word32 -> a
decodeArgFrom i a = decodeArg (a `shiftR` i)


newtype Xn = Xn { getXn :: Word32 } deriving Num

instance Argument Xn where
    encodeArg = getXn
    decodeArg = Xn

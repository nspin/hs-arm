{-# LANGUAGE DeriveAnyClass #-}
{-# LANGUAGE DeriveGeneric #-}

module Harm.Types
    ( Atom(..)
    , Pattern(..)
    , match
    ) where

import Data.Bits
import Data.Char
import Data.Monoid
import Data.Word
import Control.DeepSeq
import GHC.Generics (Generic)

data Atom = Atom
    { atom_spec :: Word32
    , atom_mask :: Word32
    } deriving (Eq, Generic, NFData)

data Pattern = Pattern
    { pattern_pos :: Atom
    , pattern_neg :: [Atom]
    } deriving (Eq, Generic, NFData)

instance Show Atom where
    showsPrec p (Atom spec mask) = showParen (p > 10) $
        showString "Atom " . showHex32 spec . showChar ' ' . showHex32 mask

instance Show Pattern where
    showsPrec p (Pattern pos neg) = showParen (p > 10) $
        showString "Pattern " . showsPrec 11 pos . showChar ' ' . showsPrec 11 neg

showHex32 :: Word32 -> ShowS
showHex32 w = foldr (flip (.)) (showString "0x")
    (take 8
        (map (showChar. intToDigit . fromIntegral . (.&. 0xf))
            (iterate (flip shiftR 4) w)))

match :: Pattern -> Word32 -> Bool
match (Pattern pos neg) w = 0 == foldr (.|.) (complement (f pos)) (map f neg)
  where
    f (Atom spec mask) = xor spec w .&. mask

instance Monoid Atom where
    mempty = Atom 0 0
    mappend (Atom spec mask) (Atom spec' mask')
        | 0 == xor spec spec' .&. mask .&. mask' = Atom (spec .|. spec') (mask .|. mask')
        | otherwise = error "Harm.Types.conjunction: conjunction is empty"

instance Monoid Pattern where
    mempty = Pattern mempty []
    mappend (Pattern pos neg) (Pattern pos' neg') = Pattern (mappend pos pos') (mappend neg neg')

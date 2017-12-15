{-# LANGUAGE DeriveAnyClass #-}
{-# LANGUAGE DeriveGeneric #-}

module Harm.Types
    ( Atom(..)
    , Pattern(..)
    , match
    ) where

import Data.Bits
import Data.Word
import Control.DeepSeq
import GHC.Generics (Generic)

data Atom = Atom
    { atom_spec :: Word32
    , atom_mask :: Word32
    } deriving (Eq, Show, Generic, NFData)

data Pattern = Pattern
    { pattern_pos :: Atom
    , pattern_neg :: [Atom]
    } deriving (Eq, Show, Generic, NFData)

match :: Pattern -> Word32 -> Bool
match (Pattern pos neg) w = 0 == foldr (.|.) (complement (f pos)) (map f neg)
  where
    f (Atom spec mask) = xor spec w .&. mask

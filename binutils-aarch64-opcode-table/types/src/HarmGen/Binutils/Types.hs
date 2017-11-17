{-# LANGUAGE DeriveAnyClass #-}
{-# LANGUAGE DeriveGeneric #-}

module HarmGen.Binutils.Types
    ( Row(..)
    , InsnClass(..)
    , Op(..)
    , FeatureSet(..)
    , Opnd(..)
    , OpndQualifier(..)
    , module HarmGen.Binutils.Types.Gen.Enums
    ) where

import HarmGen.Binutils.Types.Gen.Enums

import Data.Word
import GHC.Generics (Generic)
import Control.DeepSeq

data Row = Row
    { row_name :: String
    , row_opcode :: Word32
    , row_mask :: Word32
    , row_iclass :: InsnClass
    , row_op :: Op
    , row_avariant :: FeatureSet
    , row_operands :: [Opnd]
    , row_qualifiers_list :: [[OpndQualifier]]
    , row_flags :: Word32
    , row_tied_operand :: Word8
    } deriving Show
    -- } deriving (Show, Generic, NFData)

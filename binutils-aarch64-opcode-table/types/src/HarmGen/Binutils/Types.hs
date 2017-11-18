{-# LANGUAGE DeriveAnyClass #-}
{-# LANGUAGE DeriveGeneric #-}

module HarmGen.Binutils.Types
    ( Row(..)
    , OpcodeFlag(..)
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
    , row_flags :: [OpcodeFlag]
    , row_tied_operand :: Word8
    } deriving (Eq, Show)

data OpcodeFlag
    = F_ALIAS
    | F_HAS_ALIAS
    | F_Pn Int
    | F_COND
    | F_SF
    | F_SIZEQ
    | F_FPTYPE
    | F_SSIZE
    | F_T
    | F_GPRSIZE_IN_Q
    | F_LDS_SIZE
    | F_OPDn_OPT Int
    | F_DEFAULT Int
    | F_CONV
    | F_PSEUDO
    | F_MISC
    | F_N
    | F_OD Int
    | F_LSE_SZ
    | F_STRICT
    deriving (Eq, Show)

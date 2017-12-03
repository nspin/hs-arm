{-# LANGUAGE DeriveAnyClass #-}
{-# LANGUAGE DeriveGeneric #-}

module ARM.Binutils.Tables.Types
    ( Opcode(..)
    , OpcodeFlag(..)
    , Operand(..)
    , OperandFlag(..)
    , module ARM.Binutils.Tables.Types.Gen
    ) where

import ARM.Binutils.Tables.Types.Gen

import Data.Word
import GHC.Generics (Generic)

import Control.DeepSeq

data Opcode = Opcode
    { opcode_name :: String
    , opcode_opcode :: Word32
    , opcode_mask :: Word32
    , opcode_iclass :: InsnClass
    , opcode_op :: Op
    , opcode_avariant :: FeatureSet
    , opcode_operands :: [Opnd]
    , opcode_qualifiers_list :: [[OpndQualifier]]
    , opcode_flags :: [OpcodeFlag]
    , opcode_tied_operand :: Word8
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

data Operand = Operand
    { operand_op_class :: OperandClass
    , operand_name :: String
    , operand_flags :: [OperandFlag]
    , operand_fields :: [FieldKind]
    , operand_desc :: String
    } deriving (Eq, Show)

data OperandFlag
    = OPD_F_HAS_INSERTER
    | OPD_F_HAS_EXTRACTOR
    | OPD_F_SEXT
    | OPD_F_SHIFT_BY_2
    | OPD_F_MAYBE_SP
    | OPD_F_OD_MASK
    | OPD_F_OD_LSB Int
    | OPD_F_NO_ZR
    deriving (Eq, Show)

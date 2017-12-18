{-# LANGUAGE DataKinds #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE KindSignatures #-}
{-# LANGUAGE PolyKinds #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

module Harm.Types.Operands
    ( Rn(..)
    , Xn(..)
    , Wn(..)
    , XnOrSP(..)
    , WnOrSP(..)
    , Hint(..)
    ) where

import Harm.Types.W

import Data.Bits
import Data.Function
import Data.Proxy
import Data.Word
import GHC.Prim
import GHC.TypeLits


newtype Signed (n :: Nat) = Signed { unSigned :: W n }
    deriving Eq

instance Show (Signed n) where
    showsPrec p = showsPrec p . unSigned

toSigned :: W n -> Signed n
toSigned = Signed


newtype Rn = Rn { unRn :: W 5 }
    deriving (Eq, Num)
newtype Xn = Xn { unXn :: Rn }
    deriving (Eq, Num)
newtype Wn = Wn { unWn :: Rn }
    deriving (Eq, Num)
newtype XnOrSP = XnOrSP { unXnOrSP :: Rn }
    deriving (Eq, Num)
newtype WnOrSP = WnOrSP { unWnOrSP :: Rn }
    deriving (Eq, Num)


data ArrSpec = ArrSpec ArrHalfWhole ArrWidth
data ArrHalfWhole = Half | Whole
data ArrWidth = ArrB | ArrH | ArrS | ArrD

data GPRWidth = GPRWidthW | GPRWidthX
data FPRWidth = FPRWidthB | FPRWidthH | FPRWidthS | FPRWidthD

data ShiftType = LSL | LSR | ASR | ROR
data Amount32 = Amount32
data Amount64 = Amount64
data Shift32 = Shift32 ShiftType Amount32
data Shift64 = Shift64 ShiftType Amount64


newtype BitWidth = BitWidth { unBitWidth :: Integer } deriving (Num)


data Cond
    = EQ
    | NE
    | CS
    | CC
    | MI
    | PL
    | VS
    | VC
    | HI
    | LS
    | GE
    | LT
    | GT
    | LE
    | AL

data NZCV = NZCV Bool Bool Bool Bool

data Extend
    = UXTB
    | UXTH
    | UXTW
    | UXTX
    | SXTB
    | SXTH
    | SXTW
    | SXTX

data PrefetchOption = PrfOp PrfOpType PrfOpTarget PrfOpPolicy | PrfOpUnk (W 5) -- Imm5

data PrfOpType = PLD | PLI | PST
data PrfOpTarget = L1 | L2 | L3
data PrfOpPolicy = KEEP | STRM

data AddressTranslateOp
    = S1E1R
    | S1E1W
    | S1E0R
    | S1E0W
    | S1E1RP
    | S1E1WP
    | S1E2R
    | S1E2W
    | S12E1R
    | S12E1W
    | S12E0R
    | S12E0W
    | S1E3R
    | S1E3W

data TLBI
    = VMALLE1IS
    | VAE1IS
    | ASIDE1IS
    | VAAE1IS
    | VALE1IS
    | VAALE1IS
    | VMALLE1
    | VAE1
    | ASIDE1
    | VAAE1
    | VALE1
    | VAALE1
    | IPAS2E1IS
    | IPAS2LE1IS
    | ALLE2IS
    | VAE2IS
    | ALLE1IS
    | VALE2IS
    | VMALLS12E1IS
    | IPAS2E1
    | IPAS2LE1
    | ALLE2
    | VAE2
    | ALLE1
    | VALE2
    | VMALLS12E1
    | ALLE3IS | VAE3IS
    | VALE3IS
    | ALLE3
    | VAE3
    | VALE3

data PStateField
    = UAO
    | PAN
    | SPSel
    | DAIFSet
    | DAIFClr

data SystemRegister = SystemRegister

data InstructionCacheOp = IALLUIS | IALLU | IVAU

data Hint
    = HintNOP
    | HintYIELD
    | HintWFE
    | HintWFI
    | HintSEV
    | HintSEVL
    | HintUnk (W 7)

data BarrierLimitation
    = SY
    | ST
    | LD
    | ISH
    | ISHST
    | ISHLD
    | NSH
    | NSHST
    | NSHLD
    | OSH
    | OSHST
    | OSHLD
    | BLUnk ()

data DataCacheOp
    = IVAC
    | ISW
    | CSW
    | CISW
    | ZVA
    | CVAC
    | CVAU
    | CVAP
    | CIVAC

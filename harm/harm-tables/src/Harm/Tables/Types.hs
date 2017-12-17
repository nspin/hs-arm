{-# LANGUAGE KindSignatures #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE PolyKinds #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Harm.Tables.Types where

import GHC.Prim
import GHC.TypeLits
import Data.Bits
import Data.Function
import Data.Word
import Data.Proxy


-- These parameterized types are is provisional.
-- Generating Haskell code for each width would result faster code.

newtype W (n :: Nat) = W { unW :: Word32 }
    deriving Eq

instance Show (W n) where
    showsPrec p = showsPrec p . unW

instance KnownNat n => Read (W n) where
    readsPrec p = map f . readsPrec p
      where
        f (w, str) = (toW w, str)

instance KnownNat n => Bounded (W n) where
    minBound = 0
    maxBound = W (shiftL 1 (fromInteger (natVal (Proxy :: Proxy n))) - 1)

instance KnownNat n => Num (W n) where
    fromInteger = toW . fromInteger
    (+) = ((.).(.)) toW ((+) `on` unW)
    (*) = ((.).(.)) toW ((*) `on` unW)
    abs = id
    signum 0 = 0
    signum _ = 1
    negate = toW . negate . unW

toW :: forall n. KnownNat n => Word32 -> W n
toW w = W (w `mod` shiftL 0xffffffff (fromInteger (natVal (Proxy :: Proxy n))))


newtype Signed (n :: Nat) = Signed { unSigned :: W n }
    deriving Eq

instance Show (Signed n) where
    showsPrec p = showsPrec p . unSigned

toSigned :: W n -> Signed n
toSigned = Signed


newtype Rn = Rn { unRn :: W 5 }
newtype Xn = Xn { unXn :: Rn }
newtype Wn = Wn { unWn :: Wn }
newtype XnOrSP = XnOrSP { unXnOrSP :: Rn }
newtype WnOrSP = WnOrSP { unWnOrSP :: Wn }


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

data Hint = NOP | YIELD | WFE | WFI | SEV | SEVL | ESB | PSB_CSYNC

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

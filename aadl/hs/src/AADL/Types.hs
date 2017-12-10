{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module AADL.Types
    (
    ) where

import Data.Function
import Data.Functor.Identity
import Text.Read

-- This module is a work in progress


data Signed = Signed | UnSigned

data Field a
    = FieldNat (a Nat)
    | FieldGPRWidth (a GPRWidth)
    | FieldFPRWidth (a FPRWidth)
    | FieldGPR (Maybe (GPRWidth, Bool)) (a GPR) -- withSP :: Bool
    | FieldFPR (Maybe FPRWidth) (a FPR)
    | FieldArrSpec (a ArrSpec)
    | FieldBitIx GPRWidth (a Nat)
    | FieldLoHi (a Bool)
    | FieldImm BitWidth Signed (a Nat)

type FieldType = Field Empty
type FieldValue = Field Identity

data Empty a = Empty

data CastWidth = CastWidthVariable | CastWidthFixed BitWidth

castWidth :: Field a -> Maybe CastWidth
castWidth field = case field of
    FieldNat _             -> Just CastWidthVariable
    FieldGPR _ _           -> f 5
    FieldFPR _ _           -> f 5
    FieldBitIx GPRWidthW _ -> f 5
    FieldBitIx GPRWidthX _ -> f 6
    FieldLoHi _            -> f 1
    FieldImm bw _ _        -> f bw
    _                      -> Nothing
  where
    f = Just . CastWidthFixed

parseFieldType :: String -> Maybe FieldType
parseFieldType str = case str of
    "Nat"       -> t $ FieldNat
    "GPRWidth"  -> t $ FieldGPRWidth
    "FPRWidth"  -> t $ FieldFPRWidth
    "Rn"        -> t $ FieldGPR Nothing
    "Wn"        -> t $ FieldGPR (Just (GPRWidthW, False))
    "WnOrSP"    -> t $ FieldGPR (Just (GPRWidthW, True))
    "Xn"        -> t $ FieldGPR (Just (GPRWidthX, False))
    "XnOrSP"    -> t $ FieldGPR (Just (GPRWidthX, True))
    "Vn"        -> t $ FieldFPR Nothing
    "Bn"        -> t $ FieldFPR (Just FPRWidthB)
    "Hn"        -> t $ FieldFPR (Just FPRWidthH)
    "Sn"        -> t $ FieldFPR (Just FPRWidthS)
    "Dn"        -> t $ FieldFPR (Just FPRWidthD)
    "ArrSpec"   -> t $ FieldArrSpec
    "BitIxW"    -> t $ FieldBitIx GPRWidthW
    "BitIxX"    -> t $ FieldBitIx GPRWidthX
    "LoHi"      -> t $ FieldLoHi
    'I':'m':'m':bw -> case readMaybe bw of
        Just bitWidth | bitWidth > 0 -> t $ FieldImm (BitWidth bitWidth) UnSigned
        _ -> Nothing
    'S':'I':'m':'m':bw -> case readMaybe bw of
        Just bitWidth | bitWidth > 0 -> t $ FieldImm (BitWidth bitWidth) Signed
        _ -> Nothing
    _ -> Nothing
  where
    t :: (Empty a -> FieldType) -> Maybe FieldType
    t f = Just (f Empty)

data ArrSpec = ArrSpec ArrHalfWhole ArrWidth
data ArrHalfWhole = Half | Whole
data ArrWidth = ArrB | ArrH | ArrS | ArrD

data GPR = GPR
data FPR = FPR

data GPRWidth = GPRWidthW | GPRWidthX
data FPRWidth = FPRWidthB | FPRWidthH | FPRWidthS | FPRWidthD

data ShiftType = LSL | LSR | ASR | ROR
data Amount32 = Amount32
data Amount64 = Amount64
data Shift32 = Shift32 ShiftType Amount32
data Shift64 = Shift64 ShiftType Amount64


newtype Nat = Nat { unNat :: Integer }
newtype BitWidth = BitWidth { unBitWidth :: Integer } deriving (Num)


data Extend
    = UXTB
    | UXTH
    | UXTW
    | UXTX
    | SXTB
    | SXTH
    | SXTW
    | SXTX


data PrefetchOption = PrfOp PrfOpType PrfOpTarget PrfOpPolicy | PrfOpUnk Nat -- Imm5

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

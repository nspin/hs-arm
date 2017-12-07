module AADL.Types
    (
    ) where


data Rn = R0  | R1  | R2  | R3  | R4  | R5  | R6  | R7  | R8  | R9
        | R10 | R11 | R12 | R13 | R14 | R15 | R16 | R17 | R18 | R19
        | R20 | R21 | R22 | R23 | R24 | R25 | R26 | R27 | R28 | R29
        | R30

data Xn = Xn Rn | ZR

data XnSP = XnSP Rn | SP

data Wn = Wn Rn | WZR

data WnSP = WnSP Rn | WSP

data Width = W | X


data Shift a = LSL a | LSR a | ASR a | ROR a
data Amount32 = Amount32
data Amount64 = Amount64
data Shift32 = Shift Amount32
data Shift64 = Shift Amount64


data Extend
    = UXTB
    | UXTH
    | UXTW
    | UXTX
    | SXTB
    | SXTH
    | SXTW
    | SXTX


-- data LabelAdr = LabelAdr Int -- 2^21, signed
-- data LabelPage = LabelPage Int -- 2^21, signed


data PrefetchOption = PrfOp PrfOpType PrfOpTarget PrfOpPolicy | PrfOpUnk Imm5

data PrfOpType = PLD | PLI | PST
data PrfOpTarget = L1 | L2 | L3
data PrfOpPolicy = KEEP | STRM


-- data Cn -- ? AT

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
    | ALLE3IS
    | VAE3IS
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

data InstructionCacheOp = | IALLUIS | IALLU | IVAU

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

-- 000 0110 001 IVAC
-- 000 0110 010 ISW
-- 000 1010 010 CSW
-- 000 1110 010 CISW
-- 011 0100 001 ZVA
-- 011 1010 001 CVAC
-- 011 1011 001 CVAU
-- 011 1100 001 CVAP
-- 011 1110 001 CIVAC

-- SY b1111
-- ST 0b1110
-- LD 0b1101
-- ISH 0b1011
-- ISHST 0b1010
-- ISHLD 0b1001
-- NSH 0b0111
-- NSHST 0b0110
-- NSHLD 0b0101
-- OSH 0b0011
-- OSHST 0b0010
-- OSHLD 0b0001

-- 0000000 NOP
-- 0000001 YIELD
-- 0000010 WFE
-- 0000011 WFI
-- 0000100 SEV
-- 0000101 SEVL
-- 0010000 ESB
-- 0010001 PSB CSYNC

-- 000 0001 000 IALLUIS
-- 000 0101 000 IALLU
-- 011 0101 001 IVAU

-- 000 011 UAO
-- 000 100 PAN
-- 000 101 SPSel
-- 011 110 DAIFSet
-- 011 111 DAIFClr

-- 000 0011 000 VMALLE1IS
-- 000 0011 001 VAE1IS
-- 000 0011 010 ASIDE1IS
-- 000 0011 011 VAAE1IS
-- 000 0011 101 VALE1IS
-- 000 0011 111 VAALE1IS
-- 000 0111 000 VMALLE1
-- 000 0111 001 VAE1
-- 000 0111 010 ASIDE1
-- 000 0111 011 VAAE1
-- 000 0111 101 VALE1
-- 000 0111 111 VAALE1
-- 100 0000 001 IPAS2E1IS
-- 100 0000 101 IPAS2LE1IS
-- 100 0011 000 ALLE2IS
-- 100 0011 001 VAE2IS
-- 100 0011 100 ALLE1IS
-- 100 0011 101 VALE2IS
-- 100 0011 110 VMALLS12E1IS
-- 100 0100 001 IPAS2E1
-- 100 0100 101 IPAS2LE1
-- 100 0111 000 ALLE2
-- 100 0111 001 VAE2
-- 100 0111 100 ALLE1
-- 100 0111 101 VALE2
-- 100 0111 110 VMALLS12E1
-- 110 0011 000 ALLE3IS
-- 110 0011 001 VAE3IS
-- 110 0011 101 VALE3IS
-- 110 0111 000 ALLE3
-- 110 0111 001 VAE3
-- 110 0111 101 VALE3

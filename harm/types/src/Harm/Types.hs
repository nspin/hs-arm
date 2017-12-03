{-# LANGUAGE DeriveAnyClass #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE StandaloneDeriving #-}

module Harm.Types
    (
    ) where

    -- deriving (Show, Eq, Enum, Bounded, Generic, NFData)

data GPR = R0  | R1  | R2  | R3  | R4  | R5  | R6  | R7  | R8  | R9
         | R10 | R11 | R12 | R13 | R14 | R15 | R16 | R17 | R18 | R19
         | R20 | R21 | R22 | R23 | R24 | R25 | R26 | R27 | R28 | R29
         | R30

data Xn = Xn GPR | ZR

data XnSP = XnSP GPR | SP

data Wn = Wn GPR | WR

data WnSP = WnSP GPR | WSP

data Rn = RnWn Wn | RnXn Xn

data Extend = ExtendUXTB
            | ExtendUXTH
            | ExtendLSL
            | ExtendUXTW
            | ExtendUXTX
            | ExtendSXTB
            | ExtendSXTH
            | ExtendSXTW
            | ExtendSXTX

data Amount3 = Amount3 Int -- 3 bits, def 0
data Amount5 = Amount5 Int -- 5 bits, def 0
data Amount6 = Amount6 Int -- 6 bits, def 0

data Shift = ShiftLSL_0 | ShiftLSL_12

data Shift = LSL
           | LSR
           | ASR
           | ROR


data Imm12 = Imm12 -- 12 bits
data Imm13 = Imm13 -- 12 bits

data LabelAdr = LabelAdr Int -- 2^21, signed
data LabelPage = LabelPage Int -- 2^21, signed

data AtOp = S1E1R
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

data Cn -- ? AT

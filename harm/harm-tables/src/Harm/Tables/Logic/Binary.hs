{-# LANGUAGE DataKinds #-}
{-# LANGUAGE KindSignatures #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE FunctionalDependencies #-}
{-# LANGUAGE FlexibleInstances #-}

module Harm.Tables.Logic.Binary where

import Harm.Types

import GHC.TypeLits


type Decode = Maybe
type Encode = Either String

decErr :: Decode a
decErr = Nothing

reserved :: Decode a
reserved = decErr

encErr :: String -> Encode a
encErr = Left


class IsBinary (n :: Nat) a | a -> n where
    dec :: W n -> Decode a
    enc :: a -> Encode (W n)

instance IsBinary n (W n) where
    dec = return
    enc = return

instance KnownNat n => IsBinary n (I n) where
    dec = return . viewI
    enc = return . viewW

instance IsBinary 5 Rn where
    dec = return . Rn
    enc = return . unRn

instance IsBinary 5 Xn where
    dec w = Xn <$> dec w
    enc = enc . unXn

instance IsBinary 5 XnSP where
    dec w = XnSP <$> dec w
    enc = enc . unXnSP

instance IsBinary 5 Wn where
    dec w = Wn <$> dec w
    enc = enc . unWn

instance IsBinary 5 WnSP where
    dec w = WnSP <$> dec w
    enc = enc . unWnSP

instance IsBinary 1 Half where
    dec w = return $ case w of
        0 -> Lower
        1 -> Upper
    enc h = return $ case h of
        Lower -> 0
        Upper -> 1

instance IsBinary 4 Cond where
    dec w = if w < 15 then return (toEnum (fromIntegral w)) else reserved
    enc = return . fromIntegral . fromEnum

instance IsBinary 7 Hint where
    dec w = return $ case w of
        0 -> HintNOP
        1 -> HintYIELD
        2 -> HintWFE
        3 -> HintWFI
        4 -> HintSEV
        5 -> HintSEVL
        _ -> HintUnk w
    enc h = return $ case h of
        HintNOP   -> 0
        HintYIELD -> 1
        HintWFE   -> 2
        HintWFI   -> 3
        HintSEV   -> 4
        HintSEVL  -> 5
        HintUnk w -> w

instance IsBinary 2 LSL_12 where
    dec 0 = return LSL_0
    dec 1 = return LSL_12
    dec 2 = reserved
    enc LSL_0 = return 0
    enc LSL_12 = return 1

instance IsBinary 2 ShiftType where
    dec = return . toEnum . fromIntegral
    enc = return . fromIntegral . fromEnum

decShift32 :: W 2 -> W 6 -> Decode Shift32
decShift32 shift imm6 = Shift32 <$> dec shift <*> amount
  where
    amount = if imm6 > 31 then decErr else return (pad imm6)

decShift64 :: W 2 -> W 6 -> Decode Shift64
decShift64 shift imm6 = Shift64 <$> dec shift <*> dec imm6

toHalf :: W 1 -> Half
toHalf 0 = Lower
toHalf 1 = Upper

toCond :: W 4 -> Cond
toCond = toEnum . fromIntegral . unW

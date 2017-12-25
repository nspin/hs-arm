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

errDec :: Decode a
errDec = Nothing

errEnc :: String -> Encode a
errEnc = Left

class IsBinary (n :: Nat) a | a -> n where
    dec :: W n -> Decode a
    enc :: a -> Encode (W n)

instance IsBinary 5 Rn where
    dec = return . Rn
    enc = return . unRn

instance IsBinary 5 Xn where
    dec w = Xn <$> dec w
    enc = enc . unXn

instance IsBinary 5 XnOrSP where
    dec w = XnOrSP <$> dec w
    enc = enc . unXnOrSP

instance IsBinary 5 Wn where
    dec w = Wn <$> dec w
    enc = enc . unWn

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

decLSL12 :: W 2 -> Decode Bool
decLSL12 0 = return False
decLSL12 1 = return True
decLSL12 2 = errDec

encLSL12 :: Bool -> W 2
encLSL12 False = 0
encLSL12 True = 1

toHalf :: W 1 -> Half
toHalf 0 = Lower
toHalf 1 = Upper

toCond :: W 4 -> Cond
toCond = toEnum . fromIntegral . unW

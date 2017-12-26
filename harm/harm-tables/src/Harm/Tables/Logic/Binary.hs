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
decLSL12 2 = reserved

encLSL12 :: Bool -> Encode (W 2)
encLSL12 False = return 0
encLSL12 True = return 1



toHalf :: W 1 -> Half
toHalf 0 = Lower
toHalf 1 = Upper

toCond :: W 4 -> Cond
toCond = toEnum . fromIntegral . unW

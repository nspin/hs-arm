{-# LANGUAGE AllowAmbiguousTypes        #-}
{-# LANGUAGE ConstraintKinds            #-}
{-# LANGUAGE DataKinds                  #-}
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE FlexibleContexts           #-}
{-# LANGUAGE FlexibleInstances          #-}
{-# LANGUAGE FunctionalDependencies     #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE KindSignatures             #-}
{-# LANGUAGE MagicHash                  #-}
{-# LANGUAGE MultiParamTypeClasses      #-}
{-# LANGUAGE ScopedTypeVariables        #-}
{-# LANGUAGE StandaloneDeriving         #-}
{-# LANGUAGE TypeFamilies               #-}
{-# LANGUAGE TypeOperators              #-}
{-# LANGUAGE UndecidableInstances       #-}

module Harm.Types.I
    ( I(..)
    , toI
    ) where

import Data.Bits
import Data.Function
import Data.Int
import GHC.Prim
import GHC.TypeLits

-- These parameterized types are is provisional.
-- Generating Haskell code for each width would result faster code.

newtype I (n :: Nat) = I { unI :: Int32 }
    deriving (Eq, Ord, Enum, Real)

instance Show (I n) where
    showsPrec p = showsPrec p . unI

instance KnownNat n => Read (I n) where
    readsPrec p = map f . readsPrec p
      where
        f (i, str) = (toI i, str)

instance KnownNat n => Bounded (I n) where
    minBound = I $ shiftL (-1) (natValInt' (proxy# :: Proxy# n) - 1)
    maxBound = I $ shiftL 1 (natValInt' (proxy# :: Proxy# n) - 1) - 1

instance KnownNat n => Num (I n) where
    fromInteger = toI . fromInteger
    (+) = lift (+)
    (*) = lift (*)
    abs = id
    signum 0 = 0
    signum _ = 1
    negate = toI . negate . unI

instance KnownNat n => Integral (I n) where
    quotRem (I n) (I d) = let (q, r) = quotRem n d in (toI q, toI r)
    toInteger = toInteger . unI

instance KnownNat n => Bits (I n) where
        (.&.) = lift (.&.)
        (.|.) = lift (.|.)
        xor   = lift xor
        complement = toI . complement . unI
        shift i amnt = toI $ shift (unI i) amnt
        rotate i amnt =
            let nat = natValInt' (proxy# :: Proxy# n)
                dist = amnt `mod` nat
            in shift i dist .|. shift i (dist - nat)
        bitSizeMaybe = Just . finiteBitSize
        bitSize = finiteBitSize
        isSigned = const False
        testBit = testBit . unI
        bit = toI . bit
        popCount = popCount . unI

instance KnownNat n => FiniteBits (I n) where
    finiteBitSize = const $ natValInt' (proxy# :: Proxy# n)

toI :: forall n. KnownNat n => Int32 -> I n
toI i = I $ (shiftR (shiftL i width) width)
  where
    width = natValInt' (proxy# :: Proxy# n)

lift :: KnownNat n => (Int32 -> Int32 -> Int32) -> I n -> I n -> I n
lift op = ((.).(.)) toI (op `on` unI)

natValInt' :: KnownNat n => Proxy# n -> Int
natValInt' p = fromInteger $ natVal' p

{-# LANGUAGE DataKinds #-}
{-# LANGUAGE KindSignatures #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

module Harm.Nat
    ( Nat(..)
    , KnownNat(..)
    , (:+)
    , N2, N4, N8, N16, N32
    ) where

import Data.Tagged

data Nat = Z | S Nat

type family (n :: Nat) :+ (m :: Nat) where
    Z :+ m = m
    S n :+ m = S (n :+ m)

type N2 = (S (S Z))
type N4 = N2 :+ N2
type N8 = N4 :+ N4
type N16 = N8 :+ N8
type N32 = N16 :+ N16

class KnownNat (n :: Nat) where
    natVal :: Tagged n Int

instance KnownNat Z where
    natVal = Tagged 0

instance KnownNat n => KnownNat (S n) where
    natVal = Tagged (1 + unTagged (natVal :: Tagged n Int))

{-# LANGUAGE KindSignatures #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE PolyKinds #-}
{-# LANGUAGE ScopedTypeVariables #-}

module Harm.Tables.Types
    ( W(..)
    , toW
    , Signed(..)
    , toSigned
    ) where

import GHC.Prim
import GHC.TypeLits
import Data.Bits
import Data.Word
import Data.Proxy

-- These parameterized types are is provisional.
-- Generating Haskell code for each width would result faster code.

newtype W (n :: Nat) = W { unW :: Word32 }
    deriving Eq

toW :: forall n. KnownNat n => Word32 -> W n
toW w = W (w `mod` shiftL 0xffffffff (fromInteger (natVal (Proxy :: Proxy n))))

instance Show (W n) where
    showsPrec p = showsPrec p . unW

newtype Signed (n :: Nat) = Signed { unSigned :: W n }
    deriving Eq

instance Show (Signed n) where
    showsPrec p = showsPrec p . unSigned

toSigned :: W n -> Signed n
toSigned = Signed

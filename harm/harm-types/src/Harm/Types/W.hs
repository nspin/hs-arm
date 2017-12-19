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

module Harm.Types.W
    ( W(..)
    , toW
    , slice
    , (.:)
    , split
    , split3
    , split4
    , Church(..)
    , Fun(..)
    , Sum
    ) where

import Data.Bits
import Data.Function
import Data.Word
import GHC.Prim
import GHC.TypeLits

-- These parameterized types are is provisional.
-- Generating Haskell code for each width would result faster code.

newtype W (n :: Nat) = W { unW :: Word32 }
    deriving (Eq, Ord)

instance Show (W n) where
    showsPrec p = showsPrec p . unW

instance KnownNat n => Read (W n) where
    readsPrec p = map f . readsPrec p
      where
        f (w, str) = (toW w, str)

instance KnownNat n => Bounded (W n) where
    minBound = 0
    maxBound = W . shiftL 1 $ natValInt' (proxy# :: Proxy# n) - 1

instance KnownNat n => Num (W n) where
    fromInteger = toW . fromInteger
    (+) = lift (+)
    (*) = lift (*)
    abs = id
    signum 0 = 0
    signum _ = 1
    negate = toW . negate . unW

instance KnownNat n => Bits (W n) where
        (.&.) = lift (.&.)
        (.|.) = lift (.|.)
        xor   = lift xor
        complement = toW . complement . unW
        shift w i = toW $ shift (unW w) i
        rotate w i = let nat = natValInt' (proxy# :: Proxy# n)
                         dist = i `mod` nat
                     in shift w dist .|. shift w (dist - nat)
        bitSizeMaybe = Just . finiteBitSize
        bitSize = finiteBitSize
        isSigned = const False
        testBit = testBit . unW
        bit i = if i < natValInt' (proxy# :: Proxy# n)
                then toW (bit i)
                else 0
        popCount = popCount . unW

instance KnownNat n => FiniteBits (W n) where
    finiteBitSize = const $ natValInt' (proxy# :: Proxy# n)

toW :: forall n. KnownNat n => Word32 -> W n
toW w = W $ w .&. complement (shiftL 0xffffffff (natValInt' (proxy# :: Proxy# n)))

lift :: KnownNat n => (Word32 -> Word32 -> Word32) -> W n -> W n -> W n
lift op = ((.).(.)) toW (op `on` unW)

natValInt' :: KnownNat n => Proxy# n -> Int
natValInt' p = fromInteger $ natVal' p


-- | Take a slice of a @'Word32'@, given the low bit.
slice :: KnownNat n => Word32 -> Int -> W n
slice w = toW . shiftR w

infixr 6 .:

-- | Append two @'W'@'s, treating the first's bits as more significant.
(.:) :: forall m n o.
        ( KnownNat m
        , KnownNat n
        , KnownNat o
        , (m + n) ~ o
        ) => W m -> W n -> W o
(W x) .: (W y) = W $ shift x (natValInt' (proxy# :: Proxy# n)) .|. y


-- | The inverse of @'.:'@
split :: forall a m n1 n2.
         ( KnownNat m
         , KnownNat n1
         , KnownNat n2
         , (n1 + n2) ~ m
         ) => W m -> (W n1 -> W n2 -> a) -> a
split (W w) f = f (W (shiftR w (natValInt' (proxy# :: Proxy# n1)))) (toW w)


split3 :: forall a m n1 n2 n3.
          ( KnownNat m
          , KnownNat n1
          , KnownNat n2
          , KnownNat n3
          , KnownNat (n2 + n3)
          , (n1 + (n2 + n3)) ~ m
          ) => W m -> (W n1 -> W n2 -> W n3 -> a) -> a
split3 w f =
    split w $ \n1 n2n3 ->
        split n2n3 $ \n2 n3 ->
            f n1 n2 n3

split4 :: forall a m n1 n2 n3 n4.
          ( KnownNat m
          , KnownNat n1
          , KnownNat n2
          , KnownNat n3
          , KnownNat n4
          , KnownNat (n3 + n4)
          , KnownNat (n2 + (n3 + n4))
          , (n1 + (n2 + (n3 + n4))) ~ m
          ) => W m -> (W n1 -> W n2 -> W n3 -> W n4 -> a) -> a
split4 w f =
    split w $ \n1 n2n3n4 ->
        split n2n3n4 $ \n2 n3n4 ->
            split n3n4 $ \n3 n4 ->
                f n1 n2 n3 n4


-- | A type synonym would not be injective, so a newtype is necessary.
-- However, this abstraction is not easily optimized away by GHC, so this
-- isn't very practical. The special cases of split above should suffice.

data family Fun (list :: [Nat]) (result :: *) :: *
newtype instance Fun '[] result = FunNil { getFunNil :: result }
newtype instance Fun (x ': xs) result = FunCons { getFunCons :: W x -> Fun xs result }

instance Functor (Fun '[]) where
    fmap f (FunNil result) = FunNil (f result)

instance Functor (Fun xs) => Functor (Fun (x ': xs)) where
    fmap f (FunCons g) = FunCons (fmap f . g)

type family Sum (list :: [Nat]) :: Nat
type instance Sum '[] = 0
type instance Sum (n ': ns) = n + Sum ns

-- | Class for nonempty type-level lists of @'Nat'@'s.
-- Allows @'W n'@'s to be used like heterogeneous church-encoded vectors.
class Church (list :: [Nat]) where
    -- | Given components, return their concatenation.
    construct :: Fun list (W (Sum list))
    -- | Operate on a bit-vector component-wise, where the size of its components are determined by `list`.
    inspect :: Fun list result -> W (Sum list) -> result

instance Church '[n] where
    construct = FunCons FunNil
    inspect = ((.).(.)) getFunNil getFunCons

instance ( KnownNat m
         , KnownNat (Sum ns)
         , KnownNat (n + Sum ns)
         , KnownNat (m + (n + Sum ns))
         , Functor (Fun ns)
         , Church (n ': ns)
         ) => Church (m ': n ': ns) where
    construct = FunCons $ \hi -> fmap (hi .:) construct
    inspect f w = split w $ inspect . getFunCons f

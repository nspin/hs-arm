{-# LANGUAGE AllowAmbiguousTypes #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE FunctionalDependencies #-}
{-# LANGUAGE GADTs #-}
{-# LANGUAGE KindSignatures #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE UndecidableInstances #-}

module Harm.Experimental.Types
    ( Code(..)
    , encode
    , Fn
    , BitVec(..)
    , unBitVec
    , packLE
    , packBE
    , unpackLE
    , unpackBE
    ) where

import Harm.Nat

import Data.Bool
import Data.Bits
import Data.Monoid
import Data.Word


type family Fn (args :: [*]) (b :: *) where
    Fn '[] b = b
    Fn (a:as) b = (->) a (Fn as b)


data family Fun (args :: [*]) b
newtype instance Fun '[] b = FunNil { getFunNil :: b }
newtype instance Fun (a:as) b = FunCons { getFunCons :: a -> Fun as b }

instance Functor (Fun '[]) where
    fmap f (FunNil b) = FunNil (f b)

instance Functor (Fun as) => Functor (Fun (a:as)) where
    fmap f (FunCons g) = FunCons (fmap f . g)


class UnwrapFun (args :: [*]) where
    unwrapFun :: Fun args b -> Fn args b

instance UnwrapFun '[] where
    unwrapFun = getFunNil

instance UnwrapFun as => UnwrapFun (a:as) where
    unwrapFun (FunCons f) = fmap unwrapFun f


data BitVec (n :: Nat) where
    BNil :: BitVec Z
    BCons :: Bool -> BitVec n -> BitVec (S n)

bappend :: BitVec n -> BitVec m -> BitVec (n :+ m)
bappend BNil vec = vec
bappend (BCons v ec) vec = BCons v (bappend ec vec)


data Argument (n :: Nat) arg = Argument
    { encodeArgument :: arg -> BitVec n
    , decodeArgument :: BitVec n -> arg
    }

data Code (n :: Nat) (args :: [*]) where
    CNil :: Code Z '[]
    I :: Code n args -> Code (S n) args
    O :: Code n args -> Code (S n) args
    Arg :: EncodeUnpacked m args => Argument n arg -> Code m args -> Code (n :+ m) (arg:args)


class EncodeUnpacked (n :: Nat) (args :: [*]) where
    encodeUnpacked :: Code n args -> Fun args (BitVec n)


instance EncodeUnpacked Z '[] where
    encodeUnpacked CNil = FunNil BNil

instance EncodeUnpacked n '[] => EncodeUnpacked (S n) '[] where
    encodeUnpacked (I code) = fmap (BCons True) (encodeUnpacked code)
    encodeUnpacked (O code) = fmap (BCons False) (encodeUnpacked code)

instance (Functor (Fun args), EncodeUnpacked n (arg:args)) => EncodeUnpacked (S n) (arg:args) where
    encodeUnpacked (I code) = fmap (BCons True) (encodeUnpacked code)
    encodeUnpacked (O code) = fmap (BCons False) (encodeUnpacked code)
    encodeUnpacked (Arg arg code) = FunCons $ \val ->
        fmap (bappend (encodeArgument arg val)) (encodeUnpacked code)


encode :: (UnwrapFun args, EncodeUnpacked n args) => Code n args -> Fn args (BitVec n)
encode code = unwrapFun $ encodeUnpacked code


unBitVec :: BitVec n -> [Bool]
unBitVec BNil = []
unBitVec (BCons b bs) = b : unBitVec bs

packLE :: [Bool] -> Word32
packLE bits = appEndo (foldMap (uncurry f) (zip [0..] bits)) 0
  where
    f _ False = mempty
    f i True = Endo (flip setBit i)

packBE :: [Bool] -> Word32
packBE = packLE . reverse

unpackLE :: Word32 -> [Bool]
unpackLE w = map (testBit w) [0..32]

unpackBE :: Word32 -> [Bool]
unpackBE = reverse . unpackLE

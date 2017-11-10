{-# LANGUAGE DataKinds #-}
{-# LANGUAGE GADTs #-}
{-# LANGUAGE KindSignatures #-}
{-# LANGUAGE PolyKinds #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

module ARM.MRA.Decode
    ( decode
    ) where

import ARM.MRA.Gen (Instruction, decoders)

import Prelude hiding (lookup)
import Data.Bits
import Data.Bool
import Data.Tagged
import Data.Word
import Control.Applicative


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


type Trie (n :: Nat) = Maybe (Node n)

data Node (n :: Nat) where
    Leaf :: (Word32 -> Instruction) -> Node Z
    Branch :: Trie n -- ^ 1
           -> Trie n -- ^ 0
           -> Trie n -- ^ Either
           -> Node (S n)


class KnownNat n => Insert (n :: Nat) where
    insert :: Word32 -- ^ Constant bits
           -> Word32 -- ^ Argument mask
           -> (Word32 -> Instruction) -- ^ Decoder
           -> Trie n
           -> Trie n

instance Insert Z where
    insert _ _ decoder _ = Just (Leaf decoder)

instance Insert n => Insert (S n) where
    insert const argmask decoder trie = Just $ case (testBit const i, testBit argmask i) of
        (True, False) -> Branch (f yes) no arg
        (False, False) -> Branch yes (f no) arg
        _ -> Branch yes no (f arg)
      where
        Tagged i :: Tagged (S n) Int = natVal
        f = insert const argmask decoder
        (yes, no, arg) = case trie of
          Just (Branch yes no arg) -> (yes, no, arg)
          Nothing -> (Nothing, Nothing, Nothing)


class KnownNat n => Lookup (n :: Nat) where
    lookup :: Word32 -> Trie n -> Maybe Instruction

instance Lookup Z where
    lookup w Nothing = Nothing
    lookup w (Just (Leaf f)) = Just (f w)

instance Lookup n => Lookup (S n) where
    lookup w Nothing = Nothing
    lookup w (Just (Branch yes no arg)) = lookup w (bool no yes (testBit w i)) <|> lookup w arg
      where
        Tagged i :: Tagged (S n) Int = natVal


trie :: Trie N32
trie = foldr f Nothing decoders
  where
    f (x, y, z) = insert x y z


decode :: Word32 -> Maybe Instruction
decode = flip lookup trie
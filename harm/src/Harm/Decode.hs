{-# LANGUAGE DataKinds #-}
{-# LANGUAGE GADTs #-}
{-# LANGUAGE KindSignatures #-}
{-# LANGUAGE ScopedTypeVariables #-}

module Harm.Decode
    ( decode
    ) where

import Harm.Nat
import Harm.Gen (Instruction, decoders)

import Prelude hiding (lookup)
import Data.Bits
import Data.Bool
import Data.Tagged
import Data.Word
import Control.Applicative


type Trie (n :: Nat) = Maybe (Node n)

data Node (n :: Nat) where
    Leaf :: (Word32 -> Instruction) -> Node Z
    Branch :: Trie n -> Trie n -> Trie n -> Node (S n) -- 1, 0, either


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

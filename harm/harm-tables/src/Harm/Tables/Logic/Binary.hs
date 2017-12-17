{-# LANGUAGE DataKinds #-}
{-# LANGUAGE KindSignatures #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE FunctionalDependencies #-}

module Harm.Tables.Logic.Binary where

import Harm.Tables.Types
import GHC.TypeLits

type Decode = Maybe
type Encode = Either String

class IsBinary (n :: Nat) a | a -> n where
    dec :: W n -> Decode a
    enc :: a -> Encode (W n)

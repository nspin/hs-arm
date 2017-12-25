{-# LANGUAGE KindSignatures #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE UndecidableInstances #-}

module Harm.Tables.Logic.Types
    ( Fn
    , FnW
    ) where

import Harm.Types
import Harm.Tables.Logic.Asm
import Harm.Tables.Logic.Binary
import Data.Attoparsec.ByteString.Char8
import GHC.TypeLits


type family Fn (args :: [*]) (r :: *) :: *
type instance Fn '[] r = r
type instance Fn (arg ': args) r = arg -> Fn args r

type family FnW (args :: [Nat]) (r :: *) :: *
type instance FnW '[] r = r
type instance FnW (arg ': args) r = W arg -> FnW args r

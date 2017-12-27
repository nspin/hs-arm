{-# LANGUAGE KindSignatures #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE UndecidableInstances #-}

module Harm.Tables.Types
    ( Fn
    , FnW
    ) where

import Harm.Types.W
import GHC.TypeLits

type family Fn (args :: [*]) (r :: *) :: *
type instance Fn '[] r = r
type instance Fn (arg ': args) r = arg -> Fn args r

type family FnW (args :: [Nat]) (r :: *) :: *
type instance FnW '[] r = r
type instance FnW (arg ': args) r = W arg -> FnW args r

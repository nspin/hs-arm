{-# LANGUAGE KindSignatures #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE TypeFamilies #-}

module Harm.Tables.Logic.Types
    ( Fn
    , FnW
    ) where

import Harm.Types
import GHC.TypeLits

type family Fn (args :: [*]) (r :: *) :: *
type instance Fn '[] r = r
type instance Fn (arg ': args) r = arg -> Fn args r

-- map fused for compilation speed
type family FnW (args :: [Nat]) (r :: *) :: *
type instance FnW '[] r = r
type instance FnW (arg ': args) r = W arg -> FnW args r

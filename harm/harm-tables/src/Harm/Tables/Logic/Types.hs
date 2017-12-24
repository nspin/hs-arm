{-# LANGUAGE KindSignatures #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE UndecidableInstances #-}

module Harm.Tables.Logic.Types
    ( Fn
    , FnW
    -- , LogicDecoder
    -- , LogicEncoder
    -- , LogicParser
    -- , LogicShower
    ) where

import Harm.Types
import Harm.Tables.Logic.Asm
import Harm.Tables.Logic.Binary
import Data.Attoparsec.ByteString.Char8
import GHC.TypeLits


type family Fn (args :: [*]) (r :: *) :: *
type instance Fn '[] r = r
type instance Fn (arg ': args) r = arg -> Fn args r

-- map fused for compilation speed
type family FnW (args :: [Nat]) (r :: *) :: *
type instance FnW '[] r = r
type instance FnW (arg ': args) r = W arg -> FnW args r


-- type LogicDecoder (logical :: [*]) (binary :: [Nat]) (a :: *) = Fn logical a -> FnW binary (Decode a)

-- type LogicEncoder (logical :: [*]) (binary :: [Nat]) (a :: *) = FnW binary a -> Fn logical (Encode a)

-- type family LogicParser (logical :: [*]) (a :: *)
-- type instance LogicParser (Half ': rest) a = Half -> Fn rest a -> Parser a
-- type instance LogicParser (Cond ': rest) a = Fn rest a -> Parser a
-- type instance LogicParser logical a = Fn logical a -> Parser a

-- type family LogicShower (logical :: [*]) (a :: *)
-- type instance LogicShower (Half ': rest) a = Half -> Fn rest ShowS
-- type instance LogicShower (Cond ': rest) a = Fn rest ShowS
-- type instance LogicShower logical a = Fn logical ShowS

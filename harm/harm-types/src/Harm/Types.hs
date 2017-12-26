module Harm.Types
    ( module Harm.Types.W
    , module Harm.Types.I
    , viewI
    , viewW
    , module Harm.Types.Operands
    ) where

import Harm.Types.W
import Harm.Types.I
import Harm.Types.Operands
import GHC.TypeLits

-- TODO(nspin)

viewI :: KnownNat n => W n -> I n
viewI = fromIntegral

viewW :: KnownNat n => I n -> W n
viewW = fromIntegral

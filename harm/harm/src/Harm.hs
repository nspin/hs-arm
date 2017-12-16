module Harm
    ( module Harm.Types
    , module Harm.Values

    , encodingOf
    ) where

import Harm.Types
import Harm.Values

import Data.List
import Data.Word

encodingOf :: Word32 -> Maybe Encoding
encodingOf w = snd `fmap` find (flip match w . fst) decodeTable

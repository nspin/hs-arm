module Harm
    ( module Harm.Types
    , module Harm.Tables

    , encodingOf
    ) where

import Harm.Types
import Harm.Tables

import Data.List
import Data.Word

encodingOf :: Word32 -> Maybe Encoding
encodingOf w = snd `fmap` find (flip match w . fst) decodeTable

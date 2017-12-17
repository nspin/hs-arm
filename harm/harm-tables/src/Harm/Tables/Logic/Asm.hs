{-# LANGUAGE OverloadedStrings #-}

module Harm.Tables.Logic.Asm where

import Harm.Tables.Types

import GHC.TypeLits
import Data.Attoparsec.ByteString.Char8
import Text.Show


class IsAsm a where
    asm :: a -> ShowS
    msa :: Parser a

instance IsAsm Rn where
    asm = shows . unRn
    -- msa = shows . unRn

-- msadec :: KnownNat n => Parser (W n)
-- msadec

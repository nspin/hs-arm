{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ScopedTypeVariables #-}

module Harm.Tables.Logic.Asm where

import Harm.Types

import GHC.TypeLits
import Data.Attoparsec.ByteString.Char8
import Text.Show
import Data.Proxy
import Control.Applicative
import Data.Functor


class IsAsm a where
    asm :: a -> ShowS
    msa :: Parser a

instance IsAsm Rn where
    asm (Rn w) = showChar 'R' . shows w
    msa = "r" *> (Rn <$> msadec)

instance IsAsm Xn where
    asm 31 = showString "XZR"
    asm (Xn (Rn w)) = showChar 'X' . shows w
    msa = "XZR" $> 31 <|> "X" *> (Xn . Rn <$> msadec)

msadec :: forall n. KnownNat n => Parser (W n)
msadec = do
    n <- decimal
    if 0 <= n && n < 32
        then return . W $ fromInteger n
        else fail $ show (natVal (Proxy :: Proxy n)) ++ "-bit unsinged literal '" ++ show n ++ "' out of range"

msahex :: forall n. KnownNat n => Parser (W n)
msahex = do
    n <- hexadecimal
    if 0 <= n && n < 32
        then return . W $ fromInteger n
        else fail $ show (natVal (Proxy :: Proxy n)) ++ "-bit unsinged literal '" ++ show n ++ "' out of range"

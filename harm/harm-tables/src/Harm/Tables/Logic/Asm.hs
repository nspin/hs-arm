{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE MagicHash #-}

module Harm.Tables.Logic.Asm where

import Harm.Types

import Prelude hiding (takeWhile)
import GHC.Prim
import GHC.TypeLits
import Data.Attoparsec.ByteString.Char8 hiding (take)
import Text.Show
import Data.Bits
import Data.Char
import Control.Applicative
import Data.Functor

simple :: ShowS -> (String, ShowS)
simple = (,) ""

class IsAsm a where
    asm :: a -> ShowS
    msa :: Parser a

instance IsAsm Rn where
    asm (Rn w) = showChar 'r' . shows w
    msa = "r" *> (Rn <$> msadec)

instance IsAsm Xn where
    asm 31 = showString "xzr"
    asm (Xn (Rn w)) = showChar 'x' . shows w
    msa = "xzr" $> 31 <|> "x" *> (Xn . Rn <$> msadec)

instance IsAsm XnOrSP where
    asm 31 = showString "sp"
    asm (XnOrSP (Rn w)) = showChar 'x' . shows w
    msa = "sp" $> 31 <|> "x" *> (XnOrSP . Rn <$> msadec)

msadec :: forall n. KnownNat n => Parser (W n)
msadec = do
    n <- decimal
    if 0 <= n && n < 32
        then return . W $ fromInteger n
        else fail $ show (natVal' (proxy# :: Proxy# n)) ++ "-bit unsinged literal '" ++ show n ++ "' out of range"

msahex :: forall n. KnownNat n => Parser (W n)
msahex = do
    n <- hexadecimal
    if 0 <= n && n < 32
        then return . W $ fromInteger n
        else fail $ show (natVal' (proxy# :: Proxy# n)) ++ "-bit unsinged literal '" ++ show n ++ "' out of range"

msaimm :: forall n. KnownNat n => Parser (W n)
msaimm = char '#' *> (msadec <|> msahex)

asmimm :: forall n. KnownNat n => W n -> ShowS
asmimm imm = showChar '#' . asmhex imm

asmhex :: forall n. KnownNat n => W n -> ShowS
asmhex (W w) = foldr (flip (.)) (showString "0x")
    (take ndigits
        (map (showChar. intToDigit . fromIntegral . (.&. 0xf))
            (iterate (flip shiftR 4) w)))
  where
    ndigits = fromInteger $ case natVal' (proxy# :: Proxy# n) `quotRem` 4 of
        (d, 0) -> d
        (d, _) -> d + 1

isWs :: Char -> Bool
isWs c = c == ' ' || c == '\t'

sep :: Parser ()
sep = () <$ takeWhile isWs

ws :: Parser ()
ws = () <$ many1 (satisfy isWs)

msaLSL12 :: Parser Bool
msaLSL12 = option False $ do
    sep
    "LSL"
    ws
    "#"
    False <$ "0" <|> True <$ "12"

asmLSL12 :: Bool -> ShowS
asmLSL12 False = id
asmLSL12 True = showString ", LSL #12"

infixr 8 <.
(<.) :: ShowS -> ShowS -> ShowS
a <. b = a . showString ", " . b

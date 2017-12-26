{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE MagicHash #-}

module Harm.Tables.Logic.Asm where

import Harm.Types

import Prelude hiding (takeWhile)
import GHC.Prim
import GHC.TypeLits
import Data.Attoparsec.ByteString.Char8 hiding (Number(..), take)
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

instance KnownNat n => IsAsm (W n) where
    asm w = showChar '#' . asmhex w
    msa = char '#' *> (msadec <|> msahex)

instance KnownNat n => IsAsm (I n) where
    asm i = showChar '#' . shows i
    msa = char '#' *> (msasdec <|> msashex)


asmhex :: forall n. KnownNat n => W n -> ShowS
asmhex (W w) = foldr (flip (.)) (showString "0x")
    (take ndigits
        (map (showChar. intToDigit . fromIntegral . (.&. 0xf))
            (iterate (flip shiftR 4) w)))
  where
    ndigits = fromInteger $ case natVal' (proxy# :: Proxy# n) `quotRem` 4 of
        (d, 0) -> d
        (d, _) -> d + 1

msadec :: forall n. KnownNat n => Parser (W n)
msadec = do
    n <- decimal
    if toInteger (minBound :: W n) <= n && n <= toInteger (maxBound :: W n)
        then return . W $ fromInteger n
        else fail $ show width ++ "-bit unsigned literal '" ++ show n ++ "' out of range"
  where
    width = natVal' (proxy# :: Proxy# n)

msahex :: forall n. KnownNat n => Parser (W n)
msahex = do
    "0x"
    n <- hexadecimal
    if toInteger (minBound :: W n) <= n && n <= toInteger (maxBound :: W n)
        then return . W $ fromInteger n
        else fail $ show width ++ "-bit unsigned literal '" ++ show n ++ "' out of range"
  where
    width = natVal' (proxy# :: Proxy# n)

msasdec :: forall n. KnownNat n => Parser (I n)
msasdec = do
    n <- signed decimal
    if toInteger (minBound :: I n) <= n && n <= toInteger (maxBound :: I n)
        then return . I $ fromInteger n
        else fail $ show width ++ "-bit literal '" ++ show n ++ "' out of range"
  where
    width = natVal' (proxy# :: Proxy# n)

msashex :: forall n. KnownNat n => Parser (I n)
msashex = do
    sign <- negate <$ char '-' <|> id <$ optional (char '+')
    "0x"
    n <- sign <$> hexadecimal
    if toInteger (minBound :: I n) <= n && n <= toInteger (maxBound :: I n)
        then return . I $ fromInteger n
        else fail $ show width ++ "-bit literal '" ++ show n ++ "' out of range"
  where
    width = natVal' (proxy# :: Proxy# n)


isWs :: Char -> Bool
isWs c = c == ' ' || c == '\t'

sep :: Parser ()
sep = () <$ takeWhile isWs

ws :: Parser ()
ws = () <$ many1 (satisfy isWs)

infixl 4 <+>
(<+>) :: Parser (a -> b) -> Parser a -> Parser b
a <+> b = a <*> (sep *> b)

infixr 8 .>
(.>) :: ShowS -> ShowS -> ShowS
a .> b = a . showString ", " . b


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

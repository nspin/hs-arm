{-# LANGUAGE DataKinds #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ScopedTypeVariables #-}

module Harm.Tables.Assembly where

import Harm.Types

import Prelude hiding (takeWhile, EQ, LT, GT)
import GHC.Prim
import GHC.TypeLits
import Data.Attoparsec.ByteString.Char8 hiding (Number(..), take)
import Data.Bits
import Data.Char
import Control.Applicative
import Data.Functor


simple :: String -> (String, String)
simple = (,) ""


class IsAssembly a where
    asm :: a -> String
    prs :: Parser a

instance IsAssembly Rn where
    asm (Rn w) = 'r' : show w
    prs = "r" *> (Rn <$> prsdec)

instance IsAssembly Xn where
    asm 31 = "xzr"
    asm (Xn (Rn w)) = 'r' : show w
    prs = "xzr" $> 31 <|> "x" *> (Xn . Rn <$> prsdec)

instance IsAssembly Wn where
    asm 31 = "wzr"
    asm (Wn (Rn w)) = 'w' : show w
    prs = "wzr" $> 31 <|> "w" *> (Wn . Rn <$> prsdec)

instance IsAssembly XnSP where
    asm 31 = "sp"
    asm (XnSP (Rn w)) = 'x' : show w
    prs = "sp" $> 31 <|> "x" *> (XnSP . Rn <$> prsdec)

instance IsAssembly WnSP where
    asm 31 = "wsp"
    asm (WnSP (Rn w)) = 'w' : show w
    prs = "wsp" $> 31 <|> "w" *> (WnSP . Rn <$> prsdec)

instance KnownNat n => IsAssembly (W n) where
    asm w = '#' : asmhex w
    prs = char '#' *> (prsdec <|> prshex)

instance KnownNat n => IsAssembly (I n) where
    asm i = '#' : show i
    prs = char '#' *> (prssdec <|> prsshex)

instance IsAssembly Half where
    asm Upper = "2"
    asm Lower = ""
    prs = maybe Lower (const Upper) <$> optional (char '2')

instance IsAssembly Cond where
    asm cond = map toLower (show cond)
    prs =  EQ <$ stringCI "EQ"
       <|> NE <$ stringCI "NE"
       <|> CS <$ stringCI "CS"
       <|> CC <$ stringCI "CC"
       <|> MI <$ stringCI "MI"
       <|> PL <$ stringCI "PL"
       <|> VS <$ stringCI "VS"
       <|> VC <$ stringCI "VC"
       <|> HI <$ stringCI "HI"
       <|> LS <$ stringCI "LS"
       <|> GE <$ stringCI "GE"
       <|> LT <$ stringCI "LT"
       <|> GT <$ stringCI "GT"
       <|> LE <$ stringCI "LE"
       <|> AL <$ stringCI "AL"

instance IsAssembly LSL_12 where
    asm LSL_0 = ""
    asm LSL_12 = ", LSL #12"
    prs = option LSL_0 $ do
        sep
        "LSL"
        ws
        "#"
        LSL_0 <$ "0" <|> LSL_12 <$ "12"

instance IsAssembly Shift32 where
    asm (Shift32 LSL 0) = ""
    asm (Shift32 ty amnt) = ", " ++ asmShiftType ty ++ " #" ++ show amnt
    prs = option (Shift32 LSL 0) $ do
        sep
        ty <- prsShiftType
        ws
        amnt <- prs
        return (Shift32 ty amnt)

instance IsAssembly Shift64 where
    asm (Shift64 LSL 0) = ""
    asm (Shift64 ty amnt) = ", " ++ asmShiftType ty ++ " #" ++ show amnt
    prs = option (Shift64 LSL 0) $ do
        sep
        ty <- prsShiftType
        ws
        amnt <- prs
        return (Shift64 ty amnt)

asmShiftType :: ShiftType -> String
asmShiftType st = case st of
    LSL -> "LSL"
    LSR -> "LSR"
    ASR -> "ASR"
    ROR -> "ROR"

prsShiftType :: Parser ShiftType
prsShiftType =  LSL <$ stringCI "LSL"
            <|> LSR <$ stringCI "LSR"
            <|> ASR <$ stringCI "ASR"
            <|> ROR <$ stringCI "ROR"

asmhex :: forall n. KnownNat n => W n -> String
asmhex (W w) = "0x" ++ reverse
    (take ndigits
        (map (intToDigit . fromIntegral . (.&. 0xf))
            (iterate (flip shiftR 4) w)))
  where
    ndigits = fromInteger $ case natVal' (proxy# :: Proxy# n) `quotRem` 4 of
        (d, 0) -> d
        (d, _) -> d + 1

prsdec :: forall n. KnownNat n => Parser (W n)
prsdec = do
    n <- decimal
    if toInteger (minBound :: W n) <= n && n <= toInteger (maxBound :: W n)
        then return . W $ fromInteger n
        else fail $ show width ++ "-bit unsigned literal '" ++ show n ++ "' out of range"
  where
    width = natVal' (proxy# :: Proxy# n)

prshex :: forall n. KnownNat n => Parser (W n)
prshex = do
    "0x"
    n <- hexadecimal
    if toInteger (minBound :: W n) <= n && n <= toInteger (maxBound :: W n)
        then return . W $ fromInteger n
        else fail $ show width ++ "-bit unsigned literal '" ++ show n ++ "' out of range"
  where
    width = natVal' (proxy# :: Proxy# n)

prssdec :: forall n. KnownNat n => Parser (I n)
prssdec = do
    n <- signed decimal
    if toInteger (minBound :: I n) <= n && n <= toInteger (maxBound :: I n)
        then return . I $ fromInteger n
        else fail $ show width ++ "-bit literal '" ++ show n ++ "' out of range"
  where
    width = natVal' (proxy# :: Proxy# n)

prsshex :: forall n. KnownNat n => Parser (I n)
prsshex = do
    sign <- negate <$ char '-' <|> id <$ optional (char '+')
    "0x"
    n <- sign <$> hexadecimal
    if toInteger (minBound :: I n) <= n && n <= toInteger (maxBound :: I n)
        then return . I $ fromInteger n
        else fail $ show width ++ "-bit literal '" ++ show n ++ "' out of range"
  where
    width = natVal' (proxy# :: Proxy# n)

asmmul :: KnownNat n => Integer -> W n -> String
asmmul m i = '#' : show (m * (toInteger i))

prsmul :: forall n. KnownNat n => Integer -> Parser (W n)
prsmul m = do
    n' <- decimal
    case quotRem n' m of
        (n, 0) ->
            if toInteger (minBound :: W n) <= n && n <= toInteger (maxBound :: W n)
            then return . W $ fromInteger n
            else fail $ "literal '" ++ show n' ++ "' out of range"
        _ -> fail $ "literal '" ++ show n' ++ "' not multiple of " ++ show m
  where
    width = natVal' (proxy# :: Proxy# n)

asmsmul :: KnownNat n => Integer -> I n -> String
asmsmul m i = '#' : show (m * (toInteger i))

prssmul :: forall n. KnownNat n => Integer -> Parser (I n)
prssmul m = do
    n' <- signed decimal
    case quotRem n' m of
        (n, 0) ->
            if toInteger (minBound :: I n) <= n && n <= toInteger (maxBound :: I n)
            then return . I $ fromInteger n
            else fail $ "literal '" ++ show n' ++ "' out of range"
        _ -> fail $ "literal '" ++ show n' ++ "' not multiple of " ++ show m
  where
    width = natVal' (proxy# :: Proxy# n)

asmPreIndexBang64 :: XnSP -> I 7 -> String
asmPreIndexBang64 xn imm = '[' : asm xn ++ ", " ++ asmsmul 8 imm ++ "]!"

prsPreIndexBang64 :: Parser (XnSP, I 7)
prsPreIndexBang64 = "[" *> ((,) <$> prs <+> prssmul 8) <* "]!"

asmPreIndex64 :: XnSP -> I 7 -> String
asmPreIndex64 xn imm = '[' : asm xn ++ (if imm == 0 then "" else ", " ++ asmsmul 8 imm) ++ "]"

prsPreIndex64 :: Parser (XnSP, I 7)
prsPreIndex64 = "[" *> ((,) <$> prs <*> (sep *> prssmul 8 <|> return 0)) <* "]"

asmPosPreIndex64 :: XnSP -> W 12 -> String
asmPosPreIndex64 xn imm = '[' : asm xn ++ (if imm == 0 then "" else ", " ++ asmmul 8 imm) ++ "]"

prsPosPreIndex64 :: Parser (XnSP, W 12)
prsPosPreIndex64 = "[" *> ((,) <$> prs <*> (sep *> prsmul 8 <|> return 0)) <* "]"

isWs :: Char -> Bool
isWs c = c == ' ' || c == '\t'

sep :: Parser ()
sep = () <$ takeWhile isWs

ws :: Parser ()
ws = () <$ many1 (satisfy isWs)

infixl 4 <+>
(<+>) :: Parser (a -> b) -> Parser a -> Parser b
a <+> b = a <*> (sep *> b)

infixr 8 +>
(+>) :: String -> String -> String
a +> b = a ++ ", " ++ b

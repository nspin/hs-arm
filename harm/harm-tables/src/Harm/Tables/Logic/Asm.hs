{-# LANGUAGE DataKinds #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ScopedTypeVariables #-}

module Harm.Tables.Logic.Asm where

import Harm.Types

import Prelude hiding (takeWhile, EQ, LT, GT)
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

instance IsAsm Wn where
    asm 31 = showString "wzr"
    asm (Wn (Rn w)) = showChar 'w' . shows w
    msa = "wzr" $> 31 <|> "w" *> (Wn . Rn <$> msadec)

instance IsAsm XnSP where
    asm 31 = showString "sp"
    asm (XnSP (Rn w)) = showChar 'x' . shows w
    msa = "sp" $> 31 <|> "x" *> (XnSP . Rn <$> msadec)

instance IsAsm WnSP where
    asm 31 = showString "wsp"
    asm (WnSP (Rn w)) = showChar 'w' . shows w
    msa = "wsp" $> 31 <|> "w" *> (WnSP . Rn <$> msadec)

instance KnownNat n => IsAsm (W n) where
    asm w = showChar '#' . asmhex w
    msa = char '#' *> (msadec <|> msahex)

instance KnownNat n => IsAsm (I n) where
    asm i = showChar '#' . shows i
    msa = char '#' *> (msasdec <|> msashex)

instance IsAsm Half where
    asm Upper = showChar '2'
    asm Lower = id
    msa = maybe Lower (const Upper) <$> optional (char '2')

instance IsAsm Cond where
    asm cond = showString (map toLower (show cond))
    msa =  EQ <$ stringCI "EQ"
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

instance IsAsm LSL_12 where
    asm LSL_0 = id
    asm LSL_12 = showString ", LSL #12"
    msa = option LSL_0 $ do
        sep
        "LSL"
        ws
        "#"
        LSL_0 <$ "0" <|> LSL_12 <$ "12"

instance IsAsm Shift32 where
    asm (Shift32 LSL 0) = id
    asm (Shift32 ty amnt) = showString ", " . asmShiftType ty . showString " #" . shows amnt
    msa = option (Shift32 LSL 0) $ do
        sep
        ty <- msaShiftType
        ws
        amnt <- msa
        return (Shift32 ty amnt)

instance IsAsm Shift64 where
    asm (Shift64 LSL 0) = id
    asm (Shift64 ty amnt) = showString ", " . asmShiftType ty . showString " #" . shows amnt
    msa = option (Shift64 LSL 0) $ do
        sep
        ty <- msaShiftType
        ws
        amnt <- msa
        return (Shift64 ty amnt)

asmShiftType :: ShiftType -> ShowS
asmShiftType st = showString $ case st of
    LSL -> "LSL"
    LSR -> "LSR"
    ASR -> "ASR"
    ROR -> "ROR"

msaShiftType :: Parser ShiftType
msaShiftType =  LSL <$ stringCI "LSL"
            <|> LSR <$ stringCI "LSR"
            <|> ASR <$ stringCI "ASR"
            <|> ROR <$ stringCI "ROR"

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

asmmul :: KnownNat n => Integer -> W n -> ShowS
asmmul m i = showChar '#' . shows (m * (toInteger i))

msamul :: forall n. KnownNat n => Integer -> Parser (W n)
msamul m = do
    n' <- decimal
    case quotRem n' m of
        (n, 0) ->
            if toInteger (minBound :: W n) <= n && n <= toInteger (maxBound :: W n)
            then return . W $ fromInteger n
            else fail $ "literal '" ++ show n' ++ "' out of range"
        _ -> fail $ "literal '" ++ show n' ++ "' not multiple of " ++ show m
  where
    width = natVal' (proxy# :: Proxy# n)

asmsmul :: KnownNat n => Integer -> I n -> ShowS
asmsmul m i = showChar '#' . shows (m * (toInteger i))

msasmul :: forall n. KnownNat n => Integer -> Parser (I n)
msasmul m = do
    n' <- signed decimal
    case quotRem n' m of
        (n, 0) ->
            if toInteger (minBound :: I n) <= n && n <= toInteger (maxBound :: I n)
            then return . I $ fromInteger n
            else fail $ "literal '" ++ show n' ++ "' out of range"
        _ -> fail $ "literal '" ++ show n' ++ "' not multiple of " ++ show m
  where
    width = natVal' (proxy# :: Proxy# n)

asmPreIndex64 :: XnSP -> I 7 -> ShowS
asmPreIndex64 xn imm = showChar '[' . asm xn . showString ", " . asmsmul 8 imm . showString "]!"

msaPreIndex64 :: Parser (XnSP, I 7)
msaPreIndex64 = "[" *> ((,) <$> msa <+> msasmul 8) <* "]!"

asmOffset64 :: XnSP -> I 7 -> ShowS
asmOffset64 xn imm = showChar '[' . asm xn . (if imm == 0 then id else showString ", " . asmsmul 8 imm) . showString "]"

msaOffset64 :: Parser (XnSP, I 7)
msaOffset64 = "[" *> ((,) <$> msa <*> (sep *> msasmul 8 <|> return 0)) <* "]"

asmOffset64p :: XnSP -> W 12 -> ShowS
asmOffset64p xn imm = showChar '[' . asm xn . (if imm == 0 then id else showString ", " . asmmul 8 imm) . showString "]"

msaOffset64p :: Parser (XnSP, W 12)
msaOffset64p = "[" *> ((,) <$> msa <*> (sep *> msamul 8 <|> return 0)) <* "]"

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

{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE TypeSynonymInstances #-}

module Harm.Extra
    ( elfText
    , hex
    , padRight
    , padLeft
    , display
    , putLn
    ) where

import Harm

import Control.Applicative
import Control.Monad
import Data.Bits
import Data.Bool
import Data.Char
import Data.Maybe
import Data.String
import Data.Word

import Data.Elf
import Data.Serialize.Get
import qualified Data.ByteString as B

-- | Given a path to an ELF file, return the offset of the `.text` section and
-- the 'Word32's it contains. The endianness is inferred from the ELF, but
-- it will probably always be little-endian because I don't think there are
-- any big-endian hardware implementations of AArch64.
elfText :: String -> IO (Word64, [Word32])
elfText = fmap f . B.readFile
  where
    f b = (elfSectionAddr text, getAllOf words `runGetUnsafe` elfSectionData text)
      where
        elf = parseElf b
        -- Section names should be unique
        [text] = filter ((== ".text") . elfSectionName) $ elfSections elf
        -- This field only specifies the endianness of the rest of the elf metadata,
        -- but [this](http://infocenter.arm.com/help/topic/com.arm.doc.ihi0044f/IHI0044F_aaelf.pdf)
        -- document states that, for arm, the value of this field should be constent with the
        -- endianness of the target execution environment.
        words = case elfData elf of
            ELFDATA2LSB -> getWord32le
            ELFDATA2MSB -> getWord32be

runGetUnsafe :: Get a -> B.ByteString -> a
runGetUnsafe g b = case runGet g b of
    Left err -> error $ "runGetUnsafe: get failed with: " ++ err
    Right a -> a

getAllOf :: Get a -> Get [a]
getAllOf g = go
  where
    go = (:) <$> g <*> go <|> (isEmpty >>= bool (fail "leftover input") (return []))

hex :: forall a. (Integral a, FiniteBits a) => a -> ShowS
hex = foldr (flip (.)) id
    . take (finiteBitSize (undefined :: a) `div` 4)
    . map (showChar . intToDigit . fromIntegral . (.&. 0xf))
    . iterate (flip shiftR 4)

padRight :: Int -> ShowS -> ShowS
padRight width lefts = showString left . showString (replicate (width - length left) ' ')
  where
    left = lefts ""

padLeft :: Int -> ShowS -> ShowS
padLeft width rights = showString (replicate (width - length right) ' ') . showString right
  where
    right = rights ""

display :: [Word32] -> IO ()
display = mapM_ (putLn . hex)

putLn :: ShowS -> IO ()
putLn s = putStrLn $ s ""

instance IsString ShowS where
    fromString = showString

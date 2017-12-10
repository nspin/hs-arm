{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE TemplateHaskell #-}

module AADL.ParserMonad
    ( P(..)
    , PState(..)
    , Position(..)
    , PError(..)
    , HasPState(..)
    , HasPosition(..)

    , initP
    , nextByte
    ) where

import Data.Bits
import Data.Char
import Data.Word
import Data.Functor.Compose
import Control.Applicative
import Control.Lens
import Control.Lens.TH
import Control.Monad.Except
import Control.Monad.State

newtype P a = P { unP :: StateT PState (Either PError) a }
    deriving (Functor, Applicative, Monad, MonadState PState, MonadError PError)

data PState = PState
    { _p_pos :: Position
    , _p_prev_char :: Char
    , _p_curr_bytes :: [Word8]
    , _p_curr_input :: [Char]
    }

data Position = Position
    { _pos_offset :: Int
    , _pos_line :: Int
    , _pos_col :: Int
    } deriving Show

data PError = PError Position String
    deriving Show

makeClassy ''PState
makeClassy ''Position


initP :: String -> PState
initP = PState (Position 0 1 1) '\n' []

nextByte :: PState -> Maybe (Word8, PState)
nextByte = (<|>)
    <$> getCompose . traverseOf p_curr_bytes (Compose . uncons)
    <*> fmap f . getCompose . traverseOf p_curr_input (Compose . uncons)
  where
    f (c, p) =
        let (b, bs) = encodeChar c
            p' = p & p_pos %~ movePos c
                   & p_prev_char .~ c
                   & p_curr_bytes .~ bs
        in (b, p')

encodeChar :: Char -> (Word8, [Word8])
encodeChar = over (beside id traverse) fromIntegral . go . ord
  where
    go oc
        | oc <= 0x7f   = (oc, [])
        | oc <= 0x7ff  = (0xc0 + (oc `shiftR` 6), [0x80 + oc .&. 0x3f])
        | oc <= 0xffff = (,) (0xe0 + (oc `shiftR` 12))
                            [ 0x80 + ((oc `shiftR` 6) .&. 0x3f)
                            , 0x80 + oc .&. 0x3f
                            ]
        | otherwise    = (,) (0xf0 + (oc `shiftR` 18))
                            [ 0x80 + ((oc `shiftR` 12) .&. 0x3f)
                            , 0x80 + ((oc `shiftR` 6) .&. 0x3f)
                            , 0x80 + oc .&. 0x3f
                            ]

movePos :: Char -> Position -> Position
movePos '\t' (Position off l c) = Position (off + 1)  l      (((c + tabSize - 1) `div` tabSize)*tabSize + 1)
movePos '\n' (Position off l _) = Position (off + 1) (l + 1)      1
movePos  _   (Position off l c) = Position (off + 1)  l      (c + 1)

-- AADL recommended tab size is 4
tabSize :: Int
tabSize = 4

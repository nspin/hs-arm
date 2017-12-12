{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE RankNTypes #-}
{-# LANGUAGE TemplateHaskell #-}

module ARM.MRAS.ASL.Parser.ParserMonad
    ( P(..)
    , PState(..)
    , Position(..)
    , LayoutUnit(..)
    , PError(..)
    , HasPState(..)
    , HasPosition(..)

    , initP
    , nextByte
    , updateLayout
    , anyDelims
    , updateDelimStack
    , isTypeIdent
    , addTypeIdent
    ) where

import ARM.MRAS.ASL.Parser.Tokens

import Data.Bits
import Data.Char
import Data.List
import Data.Word
import Data.Functor.Compose
import Control.Applicative
import Control.Lens hiding (uncons)
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
    , _p_layout_ctx :: [[LayoutUnit]]
    , _p_delim_stack :: [Token]
    , _p_next_toks :: [Token]
    , _p_type_idents :: [String]
    }

data Position = Position
    { _pos_offset :: Int
    , _pos_line :: Int
    , _pos_col :: Int
    } deriving Show

data LayoutUnit = LayoutUnitSpace | LayoutUnitTab
    deriving (Eq, Show)

data PError = PError Position String
    deriving Show

makeClassy ''PState
makeClassy ''Position


initP :: String -> PState
initP input = PState (Position 0 0 1) '\n' [] ('\n':input) [] [] [] []

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


substate :: Monad m => Lens' s s' -> StateT s' m a -> StateT s m a
substate l = StateT . fmap getCompose . l . fmap Compose . runStateT

updateLayout :: [LayoutUnit] -> P Int
updateLayout line = do
    pos <- gets _p_pos
    P . substate p_layout_ctx $ do
        s <- get
        case matchStack s line of
            Nothing -> throwError $ PError pos "indentation error: the whitespace prefix of this line is not a prefix of that of its predecessor, nor vice versa"
            Just (diff, s') -> diff <$ put s'

matchStack :: Eq a => [[a]] -> [a] -> Maybe (Int, [[a]])
matchStack [] []  = Just (0, [])
matchStack [] new = Just (1, [new])
matchStack s  []  = Just (- length s, [])
matchStack (s:stack) new = do
    rest <- stripPrefix s new
    fmap ((:) s) <$> matchStack stack rest

anyDelims :: P Bool
anyDelims = gets $ not . null . _p_delim_stack

updateDelimStack :: Token -> P ()
updateDelimStack tok = modify (over p_delim_stack (f tok))
  where
    f TokRParen (TokLParen : s) = s
    f TokRBrack (TokLBrack : s) = s
    f TokRBrace (TokLBrace : s) = s
    f TokThen   (TokIf     : s) = s
    f TokThen   (TokElsif  : s) = s
    f TokDo     (TokWhile  : s) = s

    f TokLParen s = TokLParen : s
    f TokLBrack s = TokLBrack : s
    f TokLBrace s = TokLBrace : s
    f TokIf     s = TokIf     : s
    f TokElsif  s = TokElsif  : s
    f TokWhile  s = TokWhile  : s

    f _ s = s -- TODO(nspin) negative cases as well

isTypeIdent :: String -> P Bool
isTypeIdent ident = gets (elem ident . _p_type_idents)

addTypeIdent :: String -> P ()
addTypeIdent ident = p_type_idents %= (:) ident

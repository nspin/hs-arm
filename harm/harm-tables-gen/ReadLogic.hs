{-# LANGUAGE OverloadedStrings #-}

module ReadLogic
    ( readLogic
    , Logic
    , GroupId
    , FieldName
    ) where

import ARM.MRAS

import Control.Applicative
import Data.Attoparsec.ByteString.Char8
import Language.Haskell.Exts
import System.IO
import Text.Show
import qualified Data.ByteString.Char8 as C

test :: IO Logic
test = withFile "../harm-tables/src/Harm/Tables/Logic.hs" ReadMode readLogic

type Logic = [(GroupId, [EncodingId], [Type ()], [FieldName])]
type GroupId = String
type FieldName = String

readLogic :: Handle -> IO Logic
readLogic h = do
    content <- C.hGetContents h
    return $ case parseOnly parseLogic content of
        Left err -> error err
        Right r -> r

-- This is slow, but it doesn't matter because the input is always small
parseLogic :: Parser Logic
parseLogic = [] <$ endOfInput <|> go <|> (anyChar *> parseLogic)
  where
    skipLine = skipWhile ((&&) <$> (/= '\n') <*> (/= '\r')) <* endOfLine
    go = do
        "--- "
        gid <- C.unpack <$> takeTill (== ':') <* skipLine
        eids <- many $ do
            "--- "
            C.unpack <$> takeTill (== ' ') <* skipLine
        manyTill anyChar "= '["
        innerTy <- manyTill anyChar "]\n"
        let TyTuple _ _ (_:_:tys) = (() <$) . fromParseResult . parseType $ "((),()" ++ (if null innerTy then "" else ",") ++ innerTy ++ ")" -- lol
        manyTill anyChar $ "\ndecode_" *> decimal *> " f "
        fields <- manyTill anyChar " " `manyTill` "="
        (:) (gid, eids, tys, fields) <$> parseLogic

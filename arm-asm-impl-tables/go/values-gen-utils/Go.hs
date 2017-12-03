{-# LANGUAGE OverloadedStrings #-}

module Go where

import ARM.Go.Tables.Types

import Control.Applicative
import Data.Char
import Data.Maybe
import Debug.Trace
import System.IO

import Data.Attoparsec.Text
import qualified Data.Text as T
import qualified Data.Text.IO as T

-- arch/tables.go
parseTable :: Parser [InstFormat]
parseTable = manyTill line (string "var instFormats = [...]instFormat{\n") *> many parseInstFormat <* char '}'

parseInstFormat :: Parser InstFormat
parseInstFormat = do
    string "\t// "
    tmplt <- line
    string "\t{"
    mask <- string "0x" *> hexadecimal
    sep
    value <- string "0x" *> hexadecimal
    sep
    op <- (fromJust . opFromString) <$> manyTill anyChar sep
    string "instArgs{"
    args <- parseArg `sepBy` sep
    string "}"
    sep
    pstring <- manyTill anyChar (string "},")
    let pred = case pstring of
            "nil" -> Nothing
            fn -> Just (fromJust (predictorFromString fn))
    endOfLine
    return $ InstFormat mask value op args pred tmplt
  where
    sep = string ", "

parseArg :: Parser Arg
parseArg = do
    str <- many (satisfy ((||) <$> isAlphaNum <*> (== '_')))
    case argFromString str of
        Nothing -> fail ("not an arg: " ++ str)
        Just arg -> return arg

line :: Parser String
line = manyTill anyChar endOfLine
 
atto :: Parser a -> FilePath -> IO a
atto parser path = do
    r <- withFile path ReadMode $ \h ->
            parseWith (T.hGetChunk h) parser T.empty
    case eitherResult r of
        Right a -> return a
        Left err -> error err

{-# LANGUAGE OverloadedStrings #-}

module Go where

import Control.Applicative
import System.IO

import Data.Attoparsec.Text
import qualified Data.Text as T
import qualified Data.Text.IO as T

-- arch/tables.go
parseOps :: Parser [String]
parseOps = manyTill line (string "\t_ Op = iota\n") *> many (char '\t' *> line) <* char ')'

-- arch/arg.go
parseArgs :: Parser [String]
parseArgs = manyTill line (string "\t_ instArg = iota\n") *> many (string "\targ_" *> line) <* char ')'

-- arch/condition.go
parsePredictors :: Parser [String]
parsePredictors = many (manyTill line (string "func ") *> manyTill anyChar (string "_cond("))

line :: Parser String
line = manyTill anyChar endOfLine
 
atto :: Parser a -> FilePath -> IO a
atto parser path = do
    r <- withFile path ReadMode $ \h ->
            parseWith (T.hGetChunk h) parser T.empty
    case eitherResult r of
        Right a -> return a
        Left err -> error err

module Test where

import AADL.Tokens
import AADL.ParserMonad
import AADL.Lexer

import Control.Monad
import Control.Monad.State

scan :: String -> Either PError [Token]
scan input = evalStateT (unP go) (initP input)
  where
    go = do
        t <- tokenP
        (:) t <$> case t of
            TokEOF -> return []
            _ -> go

test :: IO ()
test = do
    input <- readFile "test/test.aad"
    case scan input of
        Left err -> print err
        Right toks -> mapM_ print toks

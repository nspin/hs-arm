module Test where

import AADL.Lexer
import AADL.Tokens
import AADL.ParserMonad

import Control.Monad
import Control.Monad.State

scan :: String -> Either PError [Token]
scan input = evalStateT (unP go) (initP input)
  where
    go = do
        t <- tokenP
        (:) t <$> case t of
            TEOF -> return []
            _ -> go

test :: IO ()
test = do
    input <- readFile "test/test.aad"
    case scan input of
        Left err -> print err
        Right toks -> forM_ toks $ \t -> do
            print t

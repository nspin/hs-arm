module Test where

import AADL.Lexer
import AADL.Tokens

import Control.Monad

test :: IO ()
test = do
    input <- readFile "test/test.aad"
    case scan input of
        Left err -> print err
        Right toks -> forM_ toks $ \(TokenWithCtx pos str t) -> do
            print t

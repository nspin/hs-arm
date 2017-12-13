module Main
    ( main
    ) where

import ARM.MRAS
import ARM.MRAS.ASL.Parser
import ARM.MRAS.ASL.Parser.Lexer
import ARM.MRAS.ASL.Parser.Parser
import ARM.MRAS.ASL.Parser.ParserMonad
import ARM.MRAS.ASL.Parser.Syntax
import ARM.MRAS.ASL.Parser.Tokens

import Control.Lens
import Control.Monad
import Control.Monad.Except
import Control.Monad.State
import Data.Monoid
import System.Exit

scan :: String -> Either PError [Token]
scan input = evalStateT (unP go) (initP [] input)
  where
    go = do
        t <- tokenP
        (:) t <$> case t of
            TokEOF -> return []
            _ -> go

areClosed :: [Token] -> Bool
areClosed = go 0
  where
    go n (TokIndent : s) = go (n + 1) s
    go n (TokDedent : s) = go (n - 1) s
    go n (_         : s) = go  n      s
    go 0 [] = True
    go _ [] = False

defChunks :: [String]
defChunks = map _shared_ps_code sharedps

stmtChunks :: [String]
stmtChunks = (base ++ fpsimd) ^.. traverse.(insn_classes.traverse._2 <> insn_ps).traverse.ps_code

main :: IO ()
main = do
    testLexer
    testParser

testLexer :: IO ()
testLexer = do
    forM_ (defChunks ++ stmtChunks) $ \chunk -> do
        case scan chunk of
            Left err -> do
                putStrLn chunk
                putStrLn ""
                die $ show err
            Right toks ->
                if areClosed toks
                    then putChar '.'
                    else do
                        putStrLn chunk
                        putStrLn ""
                        print toks
                        die "not closed"
    putChar '\n'

readPrelude :: IO String
readPrelude = readFile "test/prelude.asl"

typeIdents :: [String]
typeIdents = 
    [ "bits"
    , "integer"
    , "real"
    , "bits"
    , "boolean"
    ]

parseDefs :: String -> Either PError [Definition]
parseDefs input = evalStateT (unP definitionsP) (initP typeIdents input)

testParser :: IO ()
testParser = do
    forM_ defChunks $ \chunk -> do
        case evalStateT (parseDefinitions chunk) typeIdents of
            Left err -> do
                putStrLn chunk
                putStrLn ""
                die $ show err
            Right ast -> do
                putChar '.'
    putChar '\n'

test :: IO ()
test = do
    input <- readFile "test/test.asl"
    case evalStateT (parseDefinitions input) typeIdents of
        Left err -> print err
        Right ast -> print ast

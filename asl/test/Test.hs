module Main
    ( main
    ) where

import ARM.MRAS
import ARM.MRAS.ASL.Parser.Lexer
import ARM.MRAS.ASL.Parser.Tokens
import ARM.MRAS.ASL.Parser.ParserMonad

import Control.Lens
import Control.Monad
import Control.Monad.State
import Data.Monoid
import System.Exit

scan :: String -> Either PError [Token]
scan input = evalStateT (unP go) (initP input)
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

allChunks :: [String]
allChunks = map _shared_ps_code sharedps
    ++ (base ++ fpsimd) ^.. traverse.(insn_classes.traverse._2 <> insn_ps).traverse.ps_code

main :: IO ()
main = do
    forM_ allChunks $ \chunk -> do
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

test :: IO ()
test = do
    input <- readFile "test/test.asl"
    case scan input of
        Left err -> print err
        Right toks -> mapM_ print toks

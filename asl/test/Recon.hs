{-# LANGUAGE ParallelListComp #-}
{-# LANGUAGE TupleSections #-}

module Recon where

import ARM.MRAS
import ARM.MRAS.ASL.Parser
import ARM.MRAS.ASL.Parser.Lexer
import ARM.MRAS.ASL.Parser.Parser
import ARM.MRAS.ASL.Parser.ParserMonad
import ARM.MRAS.ASL.Parser.Syntax
import ARM.MRAS.ASL.Parser.Tokens

import Control.DeepSeq
import Control.Lens
import Control.Monad
import Control.Monad.Except
import Control.Monad.State
import Data.List
import Data.Monoid
import System.IO
import System.Exit
import System.FilePath
import System.Directory


defChunks :: [String]
defChunks = map _shared_ps_code (topoSort sharedps)

stmtChunks :: [String]
stmtChunks = (base ++ fpsimd) ^.. traverse.(insn_classes.traverse._2 <> insn_ps).traverse.ps_code

parseDefsM :: Monad m => String -> StateT [String] (ExceptT PError m) [Definition]
parseDefsM asl = StateT $ ExceptT . return . parseDefs asl

parseStmtsM :: Monad m => String -> StateT [String] (ExceptT PError m) [Statement]
parseStmtsM asl = StateT $ \s -> ExceptT (return (fmap (, s) (parseStmts s asl)))

infIx :: Eq a => [a] -> [a] -> Maybe Int
infIx needle = fmap fst . find (isPrefixOf needle . snd) . zip [0..] . tails

around :: Eq a => Int -> [a] -> [a] -> Maybe [a]
around n needle haystack = flip fmap (infIx needle haystack) $ \i -> take n (drop i haystack)

n = 60
needle = "TyExprApp"

recon :: IO ()
recon = do
    r <- runExceptT . flip runStateT [] $ do
        liftIO (readFile "test/prelude.asl") >>= parseDefsM
        forM_ (topoSort sharedps) $ \ps -> do
            ast <- parseDefsM (_shared_ps_code ps)
            case around n needle (show ast) of
                Nothing -> return ()
                Just arnd -> liftIO $ putStrLn $ "sharedps: " ++ _shared_ps_name ps ++ ": " ++ arnd
        forM_ (base ++ fpsimd) $ \insn -> do
            let pss = insn ^.. (insn_classes.traverse._2 <> insn_ps).traverse
            forM_ pss $ \ps -> do
                ast <- parseStmtsM (_ps_code ps)
                case around n needle (show ast) of
                    Nothing -> return ()
                    Just arnd -> liftIO $ putStrLn $ "insn: " ++ _insn_file insn ++ ": " ++ arnd
    case r of
        Left err -> die (show err)
        Right _ -> return ()

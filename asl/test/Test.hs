{-# LANGUAGE ParallelListComp #-}
{-# LANGUAGE TupleSections #-}

module Test where

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

scan :: String -> Either PError [Token]
scan input = evalStateT (unP go) (initP [] input)
  where
    go = do
        t <- tokenP
        (:) t <$> case t of
            TokEOF -> return []
            _ -> go

checkIndents :: [Token] -> Bool
checkIndents = go 0
  where
    go n (TokIndent : s) = go (n + 1) s
    go n (TokDedent : s) = go (n - 1) s
    go n (_         : s) = go  n      s
    go 0 [] = True
    go _ [] = False

defChunks :: [String]
defChunks = map _shared_ps_code (topoSort sharedps)

stmtChunks :: [String]
stmtChunks = (base ++ fpsimd) ^.. traverse.(insn_classes.traverse._2 <> insn_ps).traverse.ps_code

parseDefsM :: Monad m => String -> StateT [String] (ExceptT PError m) [Definition]
parseDefsM asl = StateT $ ExceptT . return . parseDefs asl

parseStmtsM :: Monad m => String -> StateT [String] (ExceptT PError m) [Statement]
parseStmtsM asl = StateT $ \s -> ExceptT (return (fmap (, s) (parseStmts s asl)))

main :: IO ()
main = do
    r <- runExceptT . flip runStateT [] $ do
        liftIO (readFile "test/prelude.asl") >>= parseDefsM
        forM_ defChunks $ \asl -> do
            ast <- parseDefsM asl
            ast `deepseq` liftIO (putChar '.')
        forM_ stmtChunks $ \asl -> do
            ast <- parseStmtsM asl
            ast `deepseq` liftIO (putChar '.')
    putChar '\n'
    case r of
        Left err -> die (show err)
        Right _ -> return ()

-- main :: IO ()
-- main = do
--     putStr "testing lexer"
--     testLexer
--     putStr "testing parser"
--     testParser

testLexer :: IO ()
testLexer = do
    forM_ (defChunks ++ stmtChunks) $ \chunk -> do
        case scan chunk of
            Left err -> do
                putStrLn chunk
                putStrLn ""
                die $ show err
            Right toks ->
                if checkIndents toks
                    then putChar '.'
                    else do
                        putStrLn chunk
                        putStrLn ""
                        print toks
                        die "not closed"
    putChar '\n'


type Test m a = StateT [String] (ExceptT [String] m) a

runTest :: MonadIO m => Test m a -> m a
runTest t = do
    m <- runExceptT (runStateT t [])
    case m of
        Right (a, s) -> return a
        Left err -> liftIO $ do
            putStrLn "<<<ERROR>>>"
            putStrLn $ intercalate "\n<<<IN>>>\n" err
            exitFailure

pushCtx :: Monad m => String -> Test m a -> Test m a
pushCtx ctx m = catchError m $ \err -> throwError (ctx : err)

fromFile :: MonadIO m => (String -> Test m a) -> FilePath -> Test m a
fromFile f path = do
    s <- liftIO $ readFile path
    pushCtx ("file: " ++ path) $ f s

testParseDefs :: Monad m => String -> Test m [Definition]
testParseDefs input = pushCtx "testParseDefs" $ do
    StateT $ \types -> case parseDefs input types of
        Right r -> return r
        Left err -> throwError $ [show err]

testParseStmts :: Monad m => String -> Test m [Statement]
testParseStmts input = pushCtx "testParseStmts" $ do
    types <- get
    case parseStmts types input of
        Right stmts -> return stmts
        Left err -> throwError $ [input, show err]

mkArch :: IO ()
mkArch = withFile "test/arch.asl" WriteMode $ \h -> do
    mapM_ (hPutStrLn h . _shared_ps_code) $ topoSort sharedps

root :: FilePath
root = "../test/nix-results/test-asl"

files :: [FilePath]
files = f a ++ ["test/arch.asl"] ++ f b
  where
    f = map ((</>) root)
    a = [ "foo.asl"
        , "src/prelude.asl"
        , "regs.asl"
        , "types.asl"
        ]
    b = [ "support/aes.asl"
        , "support/barriers.asl"
        , "support/debug.asl"
        , "support/feature.asl"
        , "support/hints.asl"
        , "support/interrupts.asl"
        , "support/memory.asl"
        , "support/stubs.asl"
        , "support/fetchdecode.asl"
        ]

addLineNums :: String -> String
addLineNums s = unlines
    [ show i ++ (if i < 10 then " " else "") ++ " | " ++ line
    | line <- lines s
    | i <- [1..]
    ]

testParser :: IO ()
testParser = do
    (defs, stmts) <- runTest $ do
        defs <- forM files $ \path -> do
            fromFile testParseDefs path
            liftIO $ putChar '.'
        stmts <- return []
        return (defs, stmts)
    return ()

import ARM.MRAS
import ARM.MRAS.ASL.Parser

import Control.Monad
import Control.Monad.State
import Control.Monad.Except
import System.Exit

parse :: Monad m => String -> StateT [String] (ExceptT PError m) [Definition]
parse asl = StateT $ ExceptT . return . parseDefs asl

main :: IO ()
main = do
    r <- runExceptT . flip runStateT [] $ do
        liftIO (readFile "prelude.asl") >>= parse
        forM_ (topoSort sharedps) $ parse . _shared_ps_code >=> liftIO . mapM_ print
    case r of
        Left err -> die (show err)
        Right _ -> return ()

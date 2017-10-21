{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE TemplateHaskell #-}

module ARM.MRA
    ( readMRA
    ) where

import Control.Monad
import Control.Monad.Except
import Control.Monad.Catch
import Control.Monad.Logger
import Control.Monad.Reader
import Control.Monad.IO.Class
import Data.Bifunctor
import qualified Data.ByteString as B
import Data.Maybe
import System.FilePath
import System.Directory
import System.IO.Error
import Text.XML.Light


data MRA = MRA

readMRA :: (MonadIO m, MonadReader FilePath m, MonadError String m) => m MRA
readMRA = return MRA

readXML :: forall m. (MonadIO m, MonadReader FilePath m, MonadError String m) => FilePath -> m Element
readXML path = do
    root <- ask
    bs <- liftIO (try (B.readFile (root </> path))) >>= either handle return
    case parseXMLDoc bs of
        Nothing -> throwError "not just element"
        Just el -> return el
  where
    handle :: IOError -> m a
    handle = throwError . show


test :: FilePath -> ReaderT FilePath (ExceptT String IO) a -> IO a
test path m = either error id <$> runExceptT (runReaderT m path)

module ARM.MRAS.Parse.IO
    ( listPages
    , readPage
    , parseAllFrom
    ) where

import ARM.MRAS.Types
import ARM.MRAS.Parse

import ARM.MRAS.DTD.A64.Alphaindex
import ARM.MRAS.DTD.A64.Iformp

import Control.Monad
import System.Directory
import System.FilePath
import Text.XML.HaXml.XmlContent

listPages :: FilePath -> FilePath -> IO [FilePath]
listPages root index = do
    Alphaindex _ (Iforms _ (NonEmpty iforms)) <- fReadXml $ root </> index
    return [ root </> iformIformfile attrs | Iform attrs _ <- iforms ]

readPage :: FilePath -> IO Instructionsection
readPage = fReadXml

parseAllFrom :: FilePath -> IO [(FilePath, Either AliasPage Page)]
parseAllFrom root = do
    base <- listPages root "index.xml"
    fpsimd <- listPages root "fpsimdindex.xml"
    forM (base ++ fpsimd) $ \p -> do
        isec <- readPage p
        return (p, parsePage isec)

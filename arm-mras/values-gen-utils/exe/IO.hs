module IO
    ( listPages
    , readPage
    ) where

import ARM.MRAS.DTD.A64.Alphaindex
import ARM.MRAS.DTD.A64.Iformp

import System.Directory
import System.FilePath
import Text.XML.HaXml.XmlContent

listPages :: FilePath -> FilePath -> IO [FilePath]
listPages root index = do
    Alphaindex _ (Iforms _ (NonEmpty iforms)) <- fReadXml $ root </> index
    return [ root </> iformIformfile attrs | Iform attrs _ <- iforms ]

readPage :: FilePath -> IO Instructionsection
readPage = fReadXml

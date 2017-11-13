module IO
    ( listInstrs
    , readInstr
    ) where

import ARM.MRAS.DTD.A64.Alphaindex
import ARM.MRAS.DTD.A64.Iformp

import System.Directory
import System.FilePath
import Text.XML.HaXml.XmlContent

listInstrs :: FilePath -> FilePath -> IO [FilePath]
listInstrs root index = do
    Alphaindex _ (Iforms _ (NonEmpty iforms)) <- fReadXml $ root </> index
    return [ root </> iformIformfile attrs | Iform attrs _ <- iforms ]

readInstr :: FilePath -> IO Instructionsection
readInstr = fReadXml

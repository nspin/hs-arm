module IO
    ( listInstrs
    , readInstr
    ) where

import ARM.MRA.DTD.A64.Alphaindex
import ARM.MRA.DTD.A64.Iformp

import System.Directory
import System.FilePath
import Text.XML.HaXml.XmlContent

listInstrs :: FilePath -> IO [FilePath]
listInstrs root = do
    Alphaindex _ (Iforms _ (NonEmpty iforms)) <- fReadXml $ root </> "index.xml"
    return [ root </> iformIformfile attrs | Iform attrs _ <- iforms ]

readInstr :: FilePath -> IO Instructionsection
readInstr = fReadXml

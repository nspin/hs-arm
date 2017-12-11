module ARM.MRAS.Parse.IO
    ( listPages
    , readPage
    , parseBaseFrom
    , parseFpsimdFrom
    , parseAllFrom
    ) where

import ARM.MRAS.Types
import ARM.MRAS.Parse

import ARM.MRAS.DTD.A64.Alphaindex
import ARM.MRAS.DTD.A64.Iformp hiding (Alias)

import Control.Monad
import Data.Bifunctor
import Data.Either
import System.Directory
import System.FilePath
import Text.XML.HaXml.XmlContent

listPages :: FilePath -> FilePath -> IO [FilePath]
listPages root index = do
    Alphaindex _ (Iforms _ (NonEmpty iforms)) <- fReadXml $ root </> index
    return [ iformIformfile attrs | Iform attrs _ <- iforms ]

readPage :: FilePath -> IO Instructionsection
readPage = fReadXml

parseFromFrom :: FilePath -> FilePath -> IO ([(FilePath, Insn)], [(FilePath, Alias)])
parseFromFrom index root = do
    base <- listPages root index
    fmap partitionEithers . forM base $ \fname ->
        bimap ((,) fname) ((,) fname) . parsePage <$> readPage (root </> fname)

parseBaseFrom :: FilePath -> IO ([(FilePath, Insn)], [(FilePath, Alias)])
parseBaseFrom = parseFromFrom "index.xml"

parseFpsimdFrom :: FilePath -> IO ([(FilePath, Insn)], [(FilePath, Alias)])
parseFpsimdFrom = parseFromFrom "fpsimdindex.xml"

parseAllFrom :: FilePath -> IO (([(FilePath, Insn)], [(FilePath, Alias)]), ([(FilePath, Insn)], [(FilePath, Alias)]))
parseAllFrom root = (,) <$> parseBaseFrom root <*> parseFpsimdFrom root

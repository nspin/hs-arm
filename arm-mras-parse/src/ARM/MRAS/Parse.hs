module ARM.MRAS.Parse
    ( parsePage
    , listPages
    , parseBaseFrom
    , parseFpSimdFrom
    , parseSharedPsFrom
    , IsDiagram
    ) where

import ARM.MRAS.Types
import ARM.MRAS.Parse.Internal.Distill (distillPage)
import ARM.MRAS.Parse.Internal.Tidy (IsDiagram, tidyPage)
import ARM.MRAS.Parse.Internal.SharedPs (parseSharedPs)

import ARM.MRAS.DTD.AArch64.Alphaindex
import ARM.MRAS.DTD.AArch64.Iformp (Instructionsection)

import Control.Exception
import Control.Lens
import Control.Monad
import Data.Bifunctor
import Data.Either
import Data.Maybe
import System.FilePath

import Text.XML.HaXml.XmlContent


parsePage :: IsDiagram diag => Instructionsection -> Either (InsnFromWith diag PageId ()) (PageId, AliasFrom diag ())
parsePage = tidyPage . distillPage

combinePages :: [(String, Either (InsnFromWith diag PageId ()) (PageId, AliasFrom diag ()))] -> [Insn diag]
combinePages = uncurry synth . partitionEithers . map (uncurry file) 
  where
    file fname = bimap ((<$) fname) (fmap ((<$) fname))

synth :: [InsnFromWith diag PageId a] -> [(PageId, AliasFrom diag b)] -> [InsnFromWith diag (AliasFrom diag b) a]
synth insns aliases = map f insns
  where
    f insn = check `assert` (insn & insn_aliases .~ als)
      where
        check = and [ apid `elem` (map _alias_id als) | apid <- _insn_aliases insn ]
        als =
            [ (_alias_id al `elem` _insn_aliases insn) `assert` al
            | (pid, al) <- aliases
            , pid == _insn_id insn
            ]

listPages :: FilePath -> FilePath -> IO [FilePath]
listPages root index = do
    Alphaindex _ (Iforms _ (NonEmpty iforms)) <- fReadXml $ root </> index
    return [ iformIformfile attrs | Iform attrs _ <- iforms ]

parseFromFrom :: IsDiagram diag => FilePath -> FilePath -> IO [Insn diag]
parseFromFrom index root = do
    base <- listPages root index
    fmap combinePages . forM base $ \fname ->
        (,) fname . parsePage <$> fReadXml (root </> fname)

parseBaseFrom :: IsDiagram diag => FilePath -> IO [Insn diag]
parseBaseFrom = parseFromFrom "index.xml"

parseFpSimdFrom :: IsDiagram diag => FilePath -> IO [Insn diag]
parseFpSimdFrom = parseFromFrom "fpsimdindex.xml"

parseSharedPsFrom :: FilePath -> IO [SharedPs]
parseSharedPsFrom root = parseSharedPs <$> fReadXml (root </> "shared_pseudocode.xml")

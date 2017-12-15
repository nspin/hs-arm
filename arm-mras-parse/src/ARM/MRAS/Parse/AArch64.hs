module ARM.MRAS.Parse.AArch64
    ( parsePage
    , listPages
    , parseBaseFrom
    , parseFpSimdFrom
    , parseSharedPsFrom
    ) where

import ARM.MRAS.Types.AArch64
import ARM.MRAS.Parse.Internal.AArch64 (tidyPage)
import ARM.MRAS.Parse.Internal.Distill (distillPage)
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


parsePage :: Instructionsection -> Either (InsnFromWith PageId ()) (PageId, AliasFrom ())
parsePage = tidyPage . distillPage

combinePages :: [(String, Either (InsnFromWith PageId ()) (PageId, AliasFrom ()))] -> [Insn]
combinePages = uncurry synth . partitionEithers . map (uncurry file) 
  where
    file fname = bimap ((<$) fname) (fmap ((<$) fname))

synth :: [InsnFromWith PageId a] -> [(PageId, AliasFrom b)] -> [InsnFromWith (AliasFrom b) a]
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

parseFromFrom :: FilePath -> FilePath -> IO [Insn]
parseFromFrom index root = do
    base <- listPages root index
    fmap combinePages . forM base $ \fname ->
        (,) fname . parsePage <$> fReadXml (root </> fname)

parseBaseFrom :: FilePath -> IO [Insn]
parseBaseFrom = parseFromFrom "index.xml"

parseFpSimdFrom :: FilePath -> IO [Insn]
parseFpSimdFrom = parseFromFrom "fpsimdindex.xml"

parseSharedPsFrom :: FilePath -> IO [SharedPs]
parseSharedPsFrom root = parseSharedPs <$> fReadXml (root </> "shared_pseudocode.xml")

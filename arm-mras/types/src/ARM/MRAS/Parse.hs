module ARM.MRAS.Parse
    ( parsePage
    , combinePages
    ) where

import ARM.MRAS.Types
import ARM.MRAS.Types.Lens
import ARM.MRAS.Parse.Internal.Distill (distillPage)
import ARM.MRAS.Parse.Internal.Tidy (tidyPage)

import Control.Exception
import Data.Either

import Control.Lens

import ARM.MRAS.DTD.A64.Iformp (Instructionsection)


parsePage :: Instructionsection -> Either (InsnFromWith PageId ()) (PageId, AliasFrom ())
parsePage = tidyPage . distillPage

combinePages :: [(String, Either (InsnFromWith PageId ()) (PageId, AliasFrom ()))] -> [Insn]
combinePages = uncurry synth . partitionEithers . map (uncurry file) 
  where
    file fname = bimap ((<$) fname) (fmap ((<$) fname))

synth :: [InsnFromWith PageId a] -> [(PageId, AliasFrom b)] -> [InsnFromWith (AliasFrom b) a]
synth insns aliases = map f insns
  where
    f insn = insn & insn_aliases .~ als
      where
        als =
            [ (_alias_id al `elem` _insn_aliases insn) `assert` al
            | (pid, al) <- aliases
            , pid == _insn_id insn
            ]

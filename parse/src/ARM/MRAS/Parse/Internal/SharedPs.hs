module ARM.MRAS.Parse.Internal.SharedPs
    ( parseSharedPs
    ) where

import ARM.MRAS.Types (SharedPs(..), PsName, PsSymbol)

import Data.Maybe
import Data.List

import Text.XML.HaXml.XmlContent (List1(..))

import ARM.MRAS.DTD.A64.Sharedps


parseSharedPs :: Instructionsection -> [SharedPs]
parseSharedPs (Instructionsection attrs head desc (Ps_sectionPs (Ps_section_Attrs _) (NonEmpty pss))) = map parsePs pss

parsePs :: Ps -> SharedPs
parsePs (Ps attrs xdoc (Just (Pstext (Pstext_Attrs "Functions" (Just "1") (Just "functions")) txt))) = SharedPs
    name
    link
    (catMaybes deps)
    (catMaybes syms)
    doc
    (concat code)
  where
    Ps_Attrs name Nothing (Just link) (Just "") Nothing "1" (Just "Library") = attrs
    doc = case xdoc of
        Nothing -> Nothing
        Just (Psdoc s) -> Just s
    (deps, syms, code) = unzip3 (map f txt)
    f (Pstext_Str s) = (Nothing, Nothing, s)
    f (Pstext_A (A (A_Attrs Nothing (Just dep) (Just "shared_pseudocode.xml") (Just _)) ss)) = (Just dep, Nothing, concat ss)
    f (Pstext_Anchor (Anchor (Anchor_Attrs sym (Just _)) s)) = (Nothing, Just sym, s)

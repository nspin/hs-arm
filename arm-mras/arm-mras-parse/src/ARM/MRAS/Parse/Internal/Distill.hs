{-# LANGUAGE DeriveAnyClass #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE StandaloneDeriving #-}

module ARM.MRAS.Parse.Internal.Distill
    ( Page(..)
    , AliasInfo(..)
    , Class(..)
    , ISA(..)
    , Box(..)
    , C(..)
    , Encoding(..)
    , Explanation(..)
    , Mapping(..)
    , Table(..)
    , TableEntry(..)

    , Regdiagram_form(..)
    , Entry_class(..)

    , distillPage
    ) where

import ARM.MRAS.Parse.Internal.Common
import ARM.MRAS.Types (PageId, ClassId, ArchVar(..), EncodingId, Template, Ps(..), PsName(..), PsSection(..))

import Control.DeepSeq
import Control.Exception
import Data.Char
import Data.List
import Data.Maybe
import Debug.Trace
import GHC.Generics (Generic)

import Text.XML.HaXml.OneOfN (OneOf2(..))
import Text.XML.HaXml.XmlContent (List1(..))

import qualified ARM.MRAS.DTD.AArch64.Iformp as X
import ARM.MRAS.DTD.AArch64.Iformp hiding (Encoding, Box, C, Explanation, Account, Definition, Table, Symbol, Ps)


data Page = Page PageId AliasInfo [Class] [Explanation] [Ps]
    deriving (Show, Generic, NFData)

data AliasInfo = AliasList [PageId] | AliasTo PageId
    deriving (Show, Generic, NFData)

data Class = Class ClassId (Maybe ArchVar) ISA Regdiagram_form PsName [Box] [Encoding] [Ps]
    deriving (Show, Generic, NFData)

data ISA = A64 | A32 | T32
    deriving (Read, Show, Generic, NFData)

data Box = Box
    { box_hi :: Int
    , box_width :: Int
    , box_name :: Maybe String
    , box_spec :: [C]
    } deriving (Show, Generic, NFData)

data C = C
    { c_width :: Int
    , c_val :: String
    } deriving (Show, Generic, NFData)

data Encoding = Encoding EncodingId [Box] [Template] -- (Maybe EquivTo)
    deriving (Show, Generic, NFData)

data Explanation = Explanation [EncodingId] Symbol Mapping
    deriving (Show, Generic, NFData)

type Symbol = String

data Mapping = Account String | Definition String Table
    deriving (Show, Generic, NFData)

data Table = Table [TableEntry] [[TableEntry]]
    deriving (Show, Generic, NFData)

data TableEntry = TableEntry Entry_class (Either String ArchVar)
    deriving (Show, Generic, NFData)

deriving instance Generic Regdiagram_form
deriving instance NFData Regdiagram_form
deriving instance Generic Entry_class
deriving instance NFData Entry_class

distillPage :: Instructionsection -> Page
distillPage (Instructionsection attrs doc head desc xalias (Classes _ (NonEmpty xclasses)) aliasmnem xmexpls _ opss excs)
    = Page (instructionsectionId attrs) alias (map distillClass xclasses) expls pss
  where
    alias = fromJust $ xalias <&> \case
        OneOf2 (Alias_list _ _ refs _) -> AliasList [ aliasrefAliaspageid attrs | Aliasref attrs _ _ <- refs ]
        TwoOf2 (Aliasto attrs _) -> AliasTo (aliastoIformid attrs)
    expls = maybe [] (\(Explanations _ es) -> map distillExplanation es) xmexpls
    pss = concatMap f opss
    f (OneOf2 xpss) = distillPss xpss
    f _ = []

distillClass :: Iclass -> Class
distillClass (Iclass attrs _ _ xavars (Regdiagram ats xboxes) (NonEmpty xencs) xmps _)
    = Class
        (iclassId attrs) avars
        (read (iclassIsa attrs))
        (regdiagramForm ats)
        (fromJust (regdiagramPsname ats)) boxes
        encs pss
  where
    avars = distillArchVars <$> xavars
    boxes = map distillBox xboxes
    encs = map distillEncoding xencs
    pss = maybe [] distillPss xmps

distillBox :: X.Box -> Box
distillBox (X.Box ats xcs) = check `assert` box
  where
    box = Box (read (boxHibit ats)) (maybe 1 read (boxWidth ats)) (boxName ats) (map f xcs)
    f (X.C as s) = C (maybe 1 read (cColspan as)) s
    check = case boxConstraint ats of
        Nothing -> True
        Just con -> case box of
            Box _ _ _ [C _ v] -> v == con
            _ -> False

distillEncoding :: X.Encoding -> Encoding
distillEncoding (X.Encoding attrs _ _ xboxes (NonEmpty xtemps) mequiv)
    = Encoding (encodingName attrs) (map distillBox xboxes) (map distillTemplate xtemps)

distillTemplate :: Asmtemplate -> Template
distillTemplate (Asmtemplate _ xtemps) = unescape (concatMap f xtemps)
  where
    f (Asmtemplate_Text (Text t)) = t
    f (Asmtemplate_A (A _ as)) = concat as

distillExplanation :: X.Explanation -> Explanation
distillExplanation (X.Explanation atrs (X.Symbol _ xsyms) ad _)
    = assert check $ Explanation enclist sym mapping
  where
    enclist = splitEnclist (explanationEnclist atrs)
    sym = unescape (concatMap f xsyms)
    f (Symbol_Str s) = s
    mapping = case ad of
        OneOf2 (X.Account as _ _) -> Account (fromJust (accountEncodedin as))
        TwoOf2 (X.Definition as _ tbl _) -> Definition (definitionEncodedin as) (distillTable tbl)
    check = all (all (flip elem $ ['a'..'z'] ++ ['A'..'Z'] ++ ['0'..'9'] ++ ['_'])) enclist

splitEnclist :: String -> [String]
splitEnclist = map reverse . go [] ""
  where
    go big little (',':' ':rest) = go (little:big) [] rest
    go big little "" = little:big
    go big little (c:rest) = go big (c:little) rest

distillTable :: X.Table -> Table
distillTable (X.Table _ (NonEmpty [X.Tgroup _ (Thead (NonEmpty [Row (NonEmpty hents)])) (Tbody (NonEmpty rows))]))
    = Table (map f hents) (map g rows)
  where
    h (Entry_Str s) = not $ all isSpace s
    h _ = True
    f (Entry attrs e) = TableEntry (entryClass attrs) $ case filter h e of
        [] -> Left ""
        [Entry_Str s] -> Left (unescape s)
        [Entry_Arch_variants avs] -> Right (distillArchVars avs)
    g (Row (NonEmpty ents)) = map f ents

distillArchVars :: Arch_variants -> ArchVar
distillArchVars (Arch_variants [x]) = case x of
    Arch_variant (Just name) Nothing -> ArchName name
    Arch_variant Nothing (Just feature) -> ArchFeature feature

distillPss :: Ps_section -> [Ps]
distillPss (Ps_section _ (NonEmpty xpss)) = map f xpss
  where
    f (X.Ps attrs (Pstext as x)) = Ps (psName attrs) (catMaybes deps) sec (unescape (concat code))
      where
        sec = case pstextRep_section as of
            Nothing -> Nothing
            Just x -> Just $ case x of
                "decode" -> PsDecode
                "postdecode" -> PsPostDecode
                "execute" -> PsExecute
        (deps, code) = unzip (map g x)
    g (Pstext_Str s) = (Nothing, s)
    g (Pstext_A (A (A_Attrs Nothing (Just _) (Just "encodingindex.xml") _) ss)) = (Nothing, concat ss)
    g (Pstext_A (A (A_Attrs Nothing (Just link) (Just "shared_pseudocode.xml") _) ss)) = (Just link, concat ss)

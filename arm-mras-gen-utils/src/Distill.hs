{-# LANGUAGE LambdaCase #-}

module Distill where

import Control.Exception
import Data.Char
import Data.Maybe

import Text.XML.HaXml.OneOfN (OneOf2(..))
import Text.XML.HaXml.XmlContent (List1(..))

import qualified ARM.MRAS.DTD.A64.Iformp as D
import ARM.MRAS.DTD.A64.Iformp hiding (Box, Encoding, Explanation, Ps, C, Account, Definition, Table, Symbol)


data Instr = Instr (Maybe AliasInfo) [Class] [Explanation] [Ps]
    deriving Show

data AliasInfo = AliasList [PageId] | AliasTo PageId
    deriving Show

type PageId = String

data Class = Class (Maybe [ArchVar]) Diagram [Encoding] [Ps]
    deriving Show

data ArchVar = ArchVar (Maybe String) (Maybe String) -- name, feature
    deriving Show

data Diagram = Diagram PsName [Box]
    deriving Show

type PsName = String

data Box = Box
    { box_hi :: Int
    , box_width :: Int
    , box_name :: Maybe String
    , box_spec :: [C]
    } deriving Show

data C = C
    { c_width :: Int
    , c_val :: String
    } deriving Show

data Encoding = Encoding EncodingId [Box] [Template] (Maybe EquivTo)
    deriving Show

data Template = Template String
    deriving Show

data EquivTo = EquivTo -- TODO(nspin)
    deriving Show

data Explanation = Explanation [EncodingId] Symbol Mapping
    deriving Show

data Mapping = Account String | Definition String Table
    deriving Show

data Table = Table [TEntry] [[TEntry]]
    deriving Show

data TEntry = TEntry Entry_class (Either String ArchVar)
    deriving Show

type EncodingId = String

type Symbol = String

data Ps = Ps PsName (Maybe PsSection) String
    deriving Show

data PsSection = PsDecode | PsPostDecode | PsExecute
    deriving Show


unescape :: String -> String
unescape ('&':'l':'t':';':cs) = '<' : unescape cs 
unescape ('&':'g':'t':';':cs) = '>' : unescape cs
unescape ('&':'a':'m':'p':';':cs) = '&' : unescape cs
unescape (c:cs) = c : unescape cs
unescape [] = []

infixl 4 <&>
(<&>) :: Functor f => f a -> (a -> b) -> f b
(<&>) = flip fmap


-- Yuck. There is no good way to do this.

distillInstr :: Instructionsection -> Instr
distillInstr (Instructionsection attrs doc head desc xalias (Classes _ (NonEmpty xclasses)) aliasmnem xmexpls _ opss excs)
    = Instr alias (map distillClass xclasses) expls pss
  where
    alias = xalias <&> \case
        OneOf2 (Alias_list _ _ refs _) -> AliasList [ aliasrefAliaspageid attrs | Aliasref attrs _ _ <- refs ]
        TwoOf2 (Aliasto attrs _) -> AliasTo (aliastoIformid attrs)
    expls = maybe [] (\(Explanations _ es) -> map distillExplanation es) xmexpls
    pss = concatMap f opss
    f (OneOf2 xpss) = distillPss xpss
    f _ = []

distillClass :: Iclass -> Class
distillClass (Iclass attrs _ _ xavars (Regdiagram atrs xboxes) (NonEmpty xencs) xmps _)
    = Class avars diag encs pss
  where
    avars = distillArchVars <$> xavars
    diag = (regdiagramForm atrs == Regdiagram_form_32)  `assert` Diagram (fromJust (regdiagramPsname atrs)) boxes
    boxes = map distillBox xboxes
    encs = map distillEncoding xencs
    pss = maybe [] distillPss xmps

distillArchVars :: Arch_variants -> [ArchVar]
distillArchVars (Arch_variants x) = map f x
  where
    f (Arch_variant a b) = ArchVar a b

distillBox :: D.Box -> Box
distillBox (D.Box ats xcs) = assert ok box
  where
    box = Box (read (boxHibit ats)) (maybe 1 read (boxWidth ats)) (boxName ats) (map fc xcs)
    fc (D.C as s) = C (maybe 1 read (cColspan as)) s
    ok = case boxConstraint ats of
        Nothing -> True
        Just con -> case box of
            Box _ _ _ [C _ v] -> v == con
            _ -> False

distillEncoding :: D.Encoding -> Encoding
distillEncoding (D.Encoding attrs _ _ xboxes (NonEmpty xtemps) mequiv)
    = Encoding (encodingName attrs) (map distillBox xboxes) (map distillTemplate xtemps) (EquivTo <$ mequiv)

distillTemplate :: Asmtemplate -> Template
distillTemplate (Asmtemplate _ xtemps) = Template (unescape (concatMap f xtemps))
  where
    f (Asmtemplate_Text (Text t)) = t
    f (Asmtemplate_A (A _ as)) = concat as

distillExplanation :: D.Explanation -> Explanation
distillExplanation (D.Explanation atrs (D.Symbol _ xsyms) ad _)
    = Explanation [explanationEnclist atrs] sym mapping
  where
    sym = unescape (concatMap f xsyms)
    f (Symbol_Str s) = s
    mapping = case ad of
        OneOf2 (D.Account as _ _) -> Account (fromJust (accountEncodedin as))
        TwoOf2 (D.Definition as _ tbl _) -> Definition (definitionEncodedin as) (distillTable tbl)

distillTable :: D.Table -> Table
distillTable (D.Table _ (NonEmpty [D.Tgroup _ (Thead (NonEmpty [Row (NonEmpty hents)])) (Tbody (NonEmpty rows))]))
    = Table (map f hents) (map g rows)
  where
    h (Entry_Str s) = not $ all isSpace s
    h _ = True
    f (Entry attrs e) = TEntry (entryClass attrs) $ case filter h e of
        [] -> Left ""
        [Entry_Str s] -> Left s
        [Entry_Arch_variants (Arch_variants [Arch_variant name feature])] -> Right (ArchVar name feature)
    g (Row (NonEmpty ents)) = map f ents

distillPss :: Ps_section -> [Ps]
distillPss (Ps_section _ (NonEmpty xpss)) = map f xpss
  where
    f (D.Ps attrs (Pstext as x)) = Ps (psName attrs) s (unescape (concatMap g x))
      where
        s = case pstextRep_section as of
            Nothing -> Nothing
            Just x -> Just $ case x of
                "decode" -> PsDecode
                "postdecode" -> PsPostDecode
                "execute" -> PsExecute
    g (Pstext_Str s) = s
    g (Pstext_A (A _ ss)) = concat ss

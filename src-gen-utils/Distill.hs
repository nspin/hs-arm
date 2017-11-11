{-# LANGUAGE LambdaCase #-}

module Distill where

import Data.Maybe

import Text.XML.HaXml.OneOfN (OneOf2(..))
import Text.XML.HaXml.XmlContent (List1(..))

import qualified ARM.MRA.DTD.A64.Iformp as D
import ARM.MRA.DTD.A64.Iformp hiding (Box, Encoding, Explanation, Ps)


data Instr = Instr (Maybe AliasInfo) [Class] [Explanation] [Ps]
    deriving Show

data AliasInfo = AliasList [PageId] | AliasTo PageId
    deriving Show

type PageId = String

data Class = Class Diagram [Encoding] (Maybe Ps)
    deriving Show

data Diagram = Diagram PsName [Box]
    deriving Show

type PsName = String

data Box = Fixed (Maybe String) [Bit] | Bound String (Maybe String) Int
    deriving Show

data Bit = I | O | X
    deriving Show

data Encoding = Encoding
    deriving Show

data Explanation = Explanation
    deriving Show

data Ps = Ps
    deriving Show


distillInstr :: Instructionsection -> Instr
distillInstr (Instructionsection attrs doc head desc xalias (Classes _ (NonEmpty xclasses)) aliasmnem _ _ _ _)
    = Instr alias classes expls pss
  where
    alias = xalias <&> \case
        OneOf2 (Alias_list _ _ refs _) -> AliasList [ aliasrefAliaspageid attrs | Aliasref attrs _ _ <- refs ]
        TwoOf2 (Aliasto attrs _) -> AliasTo (aliastoIformid attrs)
    classes = map fclass xclasses
    fclass (Iclass attrs _ _ _ (Regdiagram atrs xboxes) (NonEmpty xencs) xmps _)
        = Class diag encs mps
      where
        diag = Diagram (fromJust (regdiagramPsname atrs)) boxes
        boxes = map fbox xboxes
        fbox (D.Box ats cs) = case boxSettings ats of
            Nothing -> Bound (fromJust (boxName ats)) (boxConstraint ats) (maybe 1 read (boxWidth ats))
            Just _ -> case boxConstraint ats of
                Nothing -> Fixed (boxName ats) [ readBit s | C _ s <- cs ]
                Just c -> Bound (fromJust (boxName ats)) (Just c) (maybe 1 read (boxWidth ats))
        encs = []
        mps = Nothing
    expls = []
    pss = []


readBit :: String -> Bit
readBit "1" = I
readBit "(1)" = I
readBit "0" = O
readBit "x" = X
readBit x = error $ x ++ " is not a valid bit"

infixl 4 <&>
(<&>) :: Functor f => f a -> (a -> b) -> f b
(<&>) = flip fmap

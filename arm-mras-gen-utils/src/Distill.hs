{-# LANGUAGE LambdaCase #-}

module Distill where

import Control.Exception
import Data.Maybe

import Text.XML.HaXml.OneOfN (OneOf2(..))
import Text.XML.HaXml.XmlContent (List1(..))

import qualified ARM.MRAS.DTD.A64.Iformp as D
import ARM.MRAS.DTD.A64.Iformp hiding (Box, Encoding, Explanation, Ps, C, Account, Definition)


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

data Bit = I | O | X
    deriving Show

data Encoding = Encoding
    deriving Show

data Explanation = Explanation [EncodingId] D.Symbol Mapping
    deriving Show

data Mapping = Account String | Definition String [(String, String)]
    deriving Show

type EncodingId = String
-- type Symbol = String

data Ps = Ps
    deriving Show


distillInstr :: Instructionsection -> Instr
distillInstr (Instructionsection attrs doc head desc xalias (Classes _ (NonEmpty xclasses)) aliasmnem xmexpls _ _ _)
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
        fbox (D.Box ats xcs) = assert ok box
          where
            box = Box (read (boxHibit ats)) (maybe 1 read (boxWidth ats)) (boxName ats) (map fc xcs)
            fc (D.C as s) = C (maybe 1 read (cColspan as)) s
            ok = case boxConstraint ats of
                Nothing -> True
                Just con -> case box of
                    Box _ _ _ [C _ v] -> v == con
                    _ -> False
        encs = []
        mps = Nothing
    expls = maybe [] (\(Explanations _ es) -> map fexpl es) xmexpls
    fexpl (D.Explanation atrs xsym ad _) = Explanation [explanationEnclist atrs] xsym mapping
      where
        mapping = case ad of
            OneOf2 (D.Account as _ _) -> Account (fromJust (accountEncodedin as))
            TwoOf2 (D.Definition as _ tbl _) -> Definition (definitionEncodedin as) [("foo", "bar")]
    pss = []


infixl 4 <&>
(<&>) :: Functor f => f a -> (a -> b) -> f b
(<&>) = flip fmap

module ARM.MRAS.DTD.A64.Constrainttextmappings where

import Prelude hiding (Right, Left)
import Text.XML.HaXml.XmlContent hiding (Content, List)
import Text.XML.HaXml.Types hiding (Content, Name)
import Text.XML.HaXml.OneOfN


-- TYPES --


newtype Constraint_text_mappings = Constraint_text_mappings [Constraint_text_mapping] 		deriving (Eq,Show)

data Constraint_text_mapping = Constraint_text_mapping Constraint_id
                                                       Constraint_text
                             deriving (Eq,Show)

newtype Constraint_id = Constraint_id String 		deriving (Eq,Show)

newtype Constraint_text = Constraint_text String 		deriving (Eq,Show)


-- INSTANCES --


instance HTypeable Constraint_text_mappings where
    toHType x = Defined "constraint_text_mappings" [] []
instance XmlContent Constraint_text_mappings where
    toContents (Constraint_text_mappings a) =
        [CElem (Elem (N "constraint_text_mappings") [] (concatMap toContents a)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["constraint_text_mappings"]
        ; interior e $ return (Constraint_text_mappings)
                       `apply` many parseContents
        } `adjustErr` ("in <constraint_text_mappings>, "++)

instance HTypeable Constraint_text_mapping where
    toHType x = Defined "constraint_text_mapping" [] []
instance XmlContent Constraint_text_mapping where
    toContents (Constraint_text_mapping a b) =
        [CElem (Elem (N "constraint_text_mapping") [] (toContents a ++
                                                       toContents b)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["constraint_text_mapping"]
        ; interior e $ return (Constraint_text_mapping)
                       `apply` parseContents `apply` parseContents
        } `adjustErr` ("in <constraint_text_mapping>, "++)

instance HTypeable Constraint_id where
    toHType x = Defined "constraint_id" [] []
instance XmlContent Constraint_id where
    toContents (Constraint_id a) =
        [CElem (Elem (N "constraint_id") [] (toText a)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["constraint_id"]
        ; interior e $ return (Constraint_id)
                       `apply` (text `onFail` return "")
        } `adjustErr` ("in <constraint_id>, "++)

instance HTypeable Constraint_text where
    toHType x = Defined "constraint_text" [] []
instance XmlContent Constraint_text where
    toContents (Constraint_text a) =
        [CElem (Elem (N "constraint_text") [] (toText a)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["constraint_text"]
        ; interior e $ return (Constraint_text)
                       `apply` (text `onFail` return "")
        } `adjustErr` ("in <constraint_text>, "++)

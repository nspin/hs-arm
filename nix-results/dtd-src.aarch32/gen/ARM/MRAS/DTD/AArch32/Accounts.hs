module ARM.MRAS.DTD.AArch32.Accounts where

import Prelude hiding (Right, Left)
import Text.XML.HaXml.XmlContent hiding (Content, List)
import Text.XML.HaXml.Types hiding (Content, Name)
import Text.XML.HaXml.OneOfN


-- TYPES --


data Entry = Entry Entry_Attrs String
           deriving (Eq,Show)
data Entry_Attrs = Entry_Attrs
    { entryClass :: String
    , entryBitwidth :: (Maybe String)
    } deriving (Eq,Show)

newtype Row = Row (List1 Entry) 		deriving (Eq,Show)

newtype Tbody = Tbody (List1 Row) 		deriving (Eq,Show)

newtype Thead = Thead (List1 Row) 		deriving (Eq,Show)

data Tgroup = Tgroup Tgroup_Attrs Thead Tbody
            deriving (Eq,Show)
data Tgroup_Attrs = Tgroup_Attrs
    { tgroupCols :: String
    } deriving (Eq,Show)

data Table = Table Table_Attrs (List1 Tgroup)
           deriving (Eq,Show)
data Table_Attrs = Table_Attrs
    { tableClass :: String
    } deriving (Eq,Show)

data Encoding = Encoding
    { encodingEncname :: String
    } deriving (Eq,Show)

newtype Encodings = Encodings (List1 Encoding) 		deriving (Eq,Show)

newtype Orig = Orig String 		deriving (Eq,Show)

newtype Intro = Intro String 		deriving (Eq,Show)

newtype After = After String 		deriving (Eq,Show)

data Definition = Definition Definition_Attrs Intro Table
                             (Maybe After)
                deriving (Eq,Show)
data Definition_Attrs = Definition_Attrs
    { definitionEncodedin :: String
    , definitionTabulatedwith :: (Maybe String)
    } deriving (Eq,Show)

data Account = Account Account_Attrs Encodings Orig Definition
             deriving (Eq,Show)
data Account_Attrs = Account_Attrs
    { accountIclass :: String
    , accountSymbol :: String
    , accountIclass_long :: String
    } deriving (Eq,Show)

newtype Accounts = Accounts (List1 Account) 		deriving (Eq,Show)


-- INSTANCES --


instance HTypeable Entry where
    toHType x = Defined "entry" [] []
instance XmlContent Entry where
    toContents (Entry as a) =
        [CElem (Elem (N "entry") (toAttrs as) (toText a)) ()]
    parseContents = do
        { e@(Elem _ as _) <- element ["entry"]
        ; interior e $ return (Entry (fromAttrs as))
                       `apply` (text `onFail` return "")
        } `adjustErr` ("in <entry>, "++)
instance XmlAttributes Entry_Attrs where
    fromAttrs as =
        Entry_Attrs
          { entryClass = definiteA fromAttrToStr "entry" "class" as
          , entryBitwidth = possibleA fromAttrToStr "bitwidth" as
          }
    toAttrs v = catMaybes 
        [ toAttrFrStr "class" (entryClass v)
        , maybeToAttr toAttrFrStr "bitwidth" (entryBitwidth v)
        ]

instance HTypeable Row where
    toHType x = Defined "row" [] []
instance XmlContent Row where
    toContents (Row a) =
        [CElem (Elem (N "row") [] (toContents a)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["row"]
        ; interior e $ return (Row) `apply` parseContents
        } `adjustErr` ("in <row>, "++)

instance HTypeable Tbody where
    toHType x = Defined "tbody" [] []
instance XmlContent Tbody where
    toContents (Tbody a) =
        [CElem (Elem (N "tbody") [] (toContents a)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["tbody"]
        ; interior e $ return (Tbody) `apply` parseContents
        } `adjustErr` ("in <tbody>, "++)

instance HTypeable Thead where
    toHType x = Defined "thead" [] []
instance XmlContent Thead where
    toContents (Thead a) =
        [CElem (Elem (N "thead") [] (toContents a)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["thead"]
        ; interior e $ return (Thead) `apply` parseContents
        } `adjustErr` ("in <thead>, "++)

instance HTypeable Tgroup where
    toHType x = Defined "tgroup" [] []
instance XmlContent Tgroup where
    toContents (Tgroup as a b) =
        [CElem (Elem (N "tgroup") (toAttrs as) (toContents a ++
                                                toContents b)) ()]
    parseContents = do
        { e@(Elem _ as _) <- element ["tgroup"]
        ; interior e $ return (Tgroup (fromAttrs as)) `apply` parseContents
                       `apply` parseContents
        } `adjustErr` ("in <tgroup>, "++)
instance XmlAttributes Tgroup_Attrs where
    fromAttrs as =
        Tgroup_Attrs
          { tgroupCols = definiteA fromAttrToStr "tgroup" "cols" as
          }
    toAttrs v = catMaybes 
        [ toAttrFrStr "cols" (tgroupCols v)
        ]

instance HTypeable Table where
    toHType x = Defined "table" [] []
instance XmlContent Table where
    toContents (Table as a) =
        [CElem (Elem (N "table") (toAttrs as) (toContents a)) ()]
    parseContents = do
        { e@(Elem _ as _) <- element ["table"]
        ; interior e $ return (Table (fromAttrs as)) `apply` parseContents
        } `adjustErr` ("in <table>, "++)
instance XmlAttributes Table_Attrs where
    fromAttrs as =
        Table_Attrs
          { tableClass = definiteA fromAttrToStr "table" "class" as
          }
    toAttrs v = catMaybes 
        [ toAttrFrStr "class" (tableClass v)
        ]

instance HTypeable Encoding where
    toHType x = Defined "encoding" [] []
instance XmlContent Encoding where
    toContents as =
        [CElem (Elem (N "encoding") (toAttrs as) []) ()]
    parseContents = do
        { (Elem _ as []) <- element ["encoding"]
        ; return (fromAttrs as)
        } `adjustErr` ("in <encoding>, "++)
instance XmlAttributes Encoding where
    fromAttrs as =
        Encoding
          { encodingEncname = definiteA fromAttrToStr "encoding" "encname" as
          }
    toAttrs v = catMaybes 
        [ toAttrFrStr "encname" (encodingEncname v)
        ]

instance HTypeable Encodings where
    toHType x = Defined "encodings" [] []
instance XmlContent Encodings where
    toContents (Encodings a) =
        [CElem (Elem (N "encodings") [] (toContents a)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["encodings"]
        ; interior e $ return (Encodings) `apply` parseContents
        } `adjustErr` ("in <encodings>, "++)

instance HTypeable Orig where
    toHType x = Defined "orig" [] []
instance XmlContent Orig where
    toContents (Orig a) =
        [CElem (Elem (N "orig") [] (toText a)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["orig"]
        ; interior e $ return (Orig) `apply` (text `onFail` return "")
        } `adjustErr` ("in <orig>, "++)

instance HTypeable Intro where
    toHType x = Defined "intro" [] []
instance XmlContent Intro where
    toContents (Intro a) =
        [CElem (Elem (N "intro") [] (toText a)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["intro"]
        ; interior e $ return (Intro) `apply` (text `onFail` return "")
        } `adjustErr` ("in <intro>, "++)

instance HTypeable After where
    toHType x = Defined "after" [] []
instance XmlContent After where
    toContents (After a) =
        [CElem (Elem (N "after") [] (toText a)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["after"]
        ; interior e $ return (After) `apply` (text `onFail` return "")
        } `adjustErr` ("in <after>, "++)

instance HTypeable Definition where
    toHType x = Defined "definition" [] []
instance XmlContent Definition where
    toContents (Definition as a b c) =
        [CElem (Elem (N "definition") (toAttrs as) (toContents a ++
                                                    toContents b ++ maybe [] toContents c)) ()]
    parseContents = do
        { e@(Elem _ as _) <- element ["definition"]
        ; interior e $ return (Definition (fromAttrs as))
                       `apply` parseContents `apply` parseContents
                       `apply` optional parseContents
        } `adjustErr` ("in <definition>, "++)
instance XmlAttributes Definition_Attrs where
    fromAttrs as =
        Definition_Attrs
          { definitionEncodedin = definiteA fromAttrToStr "definition" "encodedin" as
          , definitionTabulatedwith = possibleA fromAttrToStr "tabulatedwith" as
          }
    toAttrs v = catMaybes 
        [ toAttrFrStr "encodedin" (definitionEncodedin v)
        , maybeToAttr toAttrFrStr "tabulatedwith" (definitionTabulatedwith v)
        ]

instance HTypeable Account where
    toHType x = Defined "account" [] []
instance XmlContent Account where
    toContents (Account as a b c) =
        [CElem (Elem (N "account") (toAttrs as) (toContents a ++
                                                 toContents b ++ toContents c)) ()]
    parseContents = do
        { e@(Elem _ as _) <- element ["account"]
        ; interior e $ return (Account (fromAttrs as))
                       `apply` parseContents `apply` parseContents `apply` parseContents
        } `adjustErr` ("in <account>, "++)
instance XmlAttributes Account_Attrs where
    fromAttrs as =
        Account_Attrs
          { accountIclass = definiteA fromAttrToStr "account" "iclass" as
          , accountSymbol = definiteA fromAttrToStr "account" "symbol" as
          , accountIclass_long = definiteA fromAttrToStr "account" "iclass_long" as
          }
    toAttrs v = catMaybes 
        [ toAttrFrStr "iclass" (accountIclass v)
        , toAttrFrStr "symbol" (accountSymbol v)
        , toAttrFrStr "iclass_long" (accountIclass_long v)
        ]

instance HTypeable Accounts where
    toHType x = Defined "accounts" [] []
instance XmlContent Accounts where
    toContents (Accounts a) =
        [CElem (Elem (N "accounts") [] (toContents a)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["accounts"]
        ; interior e $ return (Accounts) `apply` parseContents
        } `adjustErr` ("in <accounts>, "++)

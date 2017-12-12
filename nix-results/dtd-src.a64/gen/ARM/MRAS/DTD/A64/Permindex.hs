module ARM.MRAS.DTD.A64.Permindex where

import Prelude hiding (Right, Left)
import Text.XML.HaXml.XmlContent hiding (Content, List)
import Text.XML.HaXml.Types hiding (Content, Name)
import Text.XML.HaXml.OneOfN


-- TYPES --


data A = A A_Attrs String
       deriving (Eq,Show)
data A_Attrs = A_Attrs
    { aHref :: String
    } deriving (Eq,Show)

newtype Left = Left [Left_] 		deriving (Eq,Show)

data Left_ = Left_Str String
           | Left_A A
           deriving (Eq,Show)

newtype Right = Right [Right_] 		deriving (Eq,Show)

data Right_ = Right_Str String
            | Right_A A
            deriving (Eq,Show)

data Line = Line Line_Attrs Left Right
          deriving (Eq,Show)
data Line_Attrs = Line_Attrs
    { lineInitialtag :: (Maybe String)
    } deriving (Eq,Show)

data In = In In_Attrs String
        deriving (Eq,Show)
data In_Attrs = In_Attrs
    { inLink :: String
    } deriving (Eq,Show)

data Initials = Initials Initials_Attrs (List1 In)
              deriving (Eq,Show)
data Initials_Attrs = Initials_Attrs
    { initialsHowmany :: String
    } deriving (Eq,Show)

data Permindex = Permindex Permindex_Attrs (Maybe Initials)
                           (List1 Line)
               deriving (Eq,Show)
data Permindex_Attrs = Permindex_Attrs
    { permindexTitlename :: String
    , permindexWhat :: String
    } deriving (Eq,Show)


-- INSTANCES --


instance HTypeable A where
    toHType x = Defined "a" [] []
instance XmlContent A where
    toContents (A as a) =
        [CElem (Elem (N "a") (toAttrs as) (toText a)) ()]
    parseContents = do
        { e@(Elem _ as _) <- element ["a"]
        ; interior e $ return (A (fromAttrs as))
                       `apply` (text `onFail` return "")
        } `adjustErr` ("in <a>, "++)
instance XmlAttributes A_Attrs where
    fromAttrs as =
        A_Attrs
          { aHref = definiteA fromAttrToStr "a" "href" as
          }
    toAttrs v = catMaybes 
        [ toAttrFrStr "href" (aHref v)
        ]

instance HTypeable Left where
    toHType x = Defined "left" [] []
instance XmlContent Left where
    toContents (Left a) =
        [CElem (Elem (N "left") [] (concatMap toContents a)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["left"]
        ; interior e $ return (Left) `apply` many parseContents
        } `adjustErr` ("in <left>, "++)

instance HTypeable Left_ where
    toHType x = Defined "left" [] []
instance XmlContent Left_ where
    toContents (Left_Str a) = toText a
    toContents (Left_A a) = toContents a
    parseContents = oneOf
        [ return (Left_Str) `apply` text
        , return (Left_A) `apply` parseContents
        ] `adjustErr` ("in <left>, "++)

instance HTypeable Right where
    toHType x = Defined "right" [] []
instance XmlContent Right where
    toContents (Right a) =
        [CElem (Elem (N "right") [] (concatMap toContents a)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["right"]
        ; interior e $ return (Right) `apply` many parseContents
        } `adjustErr` ("in <right>, "++)

instance HTypeable Right_ where
    toHType x = Defined "right" [] []
instance XmlContent Right_ where
    toContents (Right_Str a) = toText a
    toContents (Right_A a) = toContents a
    parseContents = oneOf
        [ return (Right_Str) `apply` text
        , return (Right_A) `apply` parseContents
        ] `adjustErr` ("in <right>, "++)

instance HTypeable Line where
    toHType x = Defined "line" [] []
instance XmlContent Line where
    toContents (Line as a b) =
        [CElem (Elem (N "line") (toAttrs as) (toContents a ++
                                              toContents b)) ()]
    parseContents = do
        { e@(Elem _ as _) <- element ["line"]
        ; interior e $ return (Line (fromAttrs as)) `apply` parseContents
                       `apply` parseContents
        } `adjustErr` ("in <line>, "++)
instance XmlAttributes Line_Attrs where
    fromAttrs as =
        Line_Attrs
          { lineInitialtag = possibleA fromAttrToStr "initialtag" as
          }
    toAttrs v = catMaybes 
        [ maybeToAttr toAttrFrStr "initialtag" (lineInitialtag v)
        ]

instance HTypeable In where
    toHType x = Defined "in" [] []
instance XmlContent In where
    toContents (In as a) =
        [CElem (Elem (N "in") (toAttrs as) (toText a)) ()]
    parseContents = do
        { e@(Elem _ as _) <- element ["in"]
        ; interior e $ return (In (fromAttrs as))
                       `apply` (text `onFail` return "")
        } `adjustErr` ("in <in>, "++)
instance XmlAttributes In_Attrs where
    fromAttrs as =
        In_Attrs
          { inLink = definiteA fromAttrToStr "in" "link" as
          }
    toAttrs v = catMaybes 
        [ toAttrFrStr "link" (inLink v)
        ]

instance HTypeable Initials where
    toHType x = Defined "initials" [] []
instance XmlContent Initials where
    toContents (Initials as a) =
        [CElem (Elem (N "initials") (toAttrs as) (toContents a)) ()]
    parseContents = do
        { e@(Elem _ as _) <- element ["initials"]
        ; interior e $ return (Initials (fromAttrs as))
                       `apply` parseContents
        } `adjustErr` ("in <initials>, "++)
instance XmlAttributes Initials_Attrs where
    fromAttrs as =
        Initials_Attrs
          { initialsHowmany = definiteA fromAttrToStr "initials" "howmany" as
          }
    toAttrs v = catMaybes 
        [ toAttrFrStr "howmany" (initialsHowmany v)
        ]

instance HTypeable Permindex where
    toHType x = Defined "permindex" [] []
instance XmlContent Permindex where
    toContents (Permindex as a b) =
        [CElem (Elem (N "permindex") (toAttrs as) (maybe [] toContents a ++
                                                   toContents b)) ()]
    parseContents = do
        { e@(Elem _ as _) <- element ["permindex"]
        ; interior e $ return (Permindex (fromAttrs as))
                       `apply` optional parseContents `apply` parseContents
        } `adjustErr` ("in <permindex>, "++)
instance XmlAttributes Permindex_Attrs where
    fromAttrs as =
        Permindex_Attrs
          { permindexTitlename = definiteA fromAttrToStr "permindex" "titlename" as
          , permindexWhat = definiteA fromAttrToStr "permindex" "what" as
          }
    toAttrs v = catMaybes 
        [ toAttrFrStr "titlename" (permindexTitlename v)
        , toAttrFrStr "what" (permindexWhat v)
        ]

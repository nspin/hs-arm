module ARM.MRAS.DTD.AArch64.Alphaindex where
import Text.XML.HaXml.OneOfN
import Prelude hiding (Right, Left)
import Text.XML.HaXml.XmlContent hiding (Content, List)
import Text.XML.HaXml.Types hiding (Content, Name)

data Toptitle = Toptitle{toptitleInstructionset :: String}
              deriving (Eq, Show)

data Iform = Iform Iform_Attrs String
           deriving (Eq, Show)

data Iform_Attrs = Iform_Attrs{iformId :: String,
                               iformHeading :: String, iformIformfile :: String}
                 deriving (Eq, Show)

data Iforms = Iforms Iforms_Attrs (List1 Iform)
            deriving (Eq, Show)

data Iforms_Attrs = Iforms_Attrs{iformsTitle :: String}
                  deriving (Eq, Show)

data Alphaindex = Alphaindex Toptitle Iforms
                deriving (Eq, Show)

instance HTypeable Toptitle where
        toHType x = Defined "toptitle" [] []

instance XmlContent Toptitle where
        toContents as = [CElem (Elem (N "toptitle") (toAttrs as) []) ()]
        parseContents
          = do (Elem _ as []) <- element ["toptitle"]
               return (fromAttrs as)
              `adjustErr` ("in <toptitle>, " ++)

instance XmlAttributes Toptitle where
        fromAttrs as
          = Toptitle{toptitleInstructionset =
                       definiteA fromAttrToStr "toptitle" "instructionset" as}
        toAttrs v
          = catMaybes
              [toAttrFrStr "instructionset" (toptitleInstructionset v)]

instance HTypeable Iform where
        toHType x = Defined "iform" [] []

instance XmlContent Iform where
        toContents (Iform as a)
          = [CElem (Elem (N "iform") (toAttrs as) (toText a)) ()]
        parseContents
          = do e@(Elem _ as _) <- element ["iform"]
               interior e $
                 return (Iform (fromAttrs as)) `apply` (text `onFail` return "")
              `adjustErr` ("in <iform>, " ++)

instance XmlAttributes Iform_Attrs where
        fromAttrs as
          = Iform_Attrs{iformId = definiteA fromAttrToStr "iform" "id" as,
                        iformHeading = definiteA fromAttrToStr "iform" "heading" as,
                        iformIformfile = definiteA fromAttrToStr "iform" "iformfile" as}
        toAttrs v
          = catMaybes
              [toAttrFrStr "id" (iformId v),
               toAttrFrStr "heading" (iformHeading v),
               toAttrFrStr "iformfile" (iformIformfile v)]

instance HTypeable Iforms where
        toHType x = Defined "iforms" [] []

instance XmlContent Iforms where
        toContents (Iforms as a)
          = [CElem (Elem (N "iforms") (toAttrs as) (toContents a)) ()]
        parseContents
          = do e@(Elem _ as _) <- element ["iforms"]
               interior e $ return (Iforms (fromAttrs as)) `apply` parseContents
              `adjustErr` ("in <iforms>, " ++)

instance XmlAttributes Iforms_Attrs where
        fromAttrs as
          = Iforms_Attrs{iformsTitle =
                           definiteA fromAttrToStr "iforms" "title" as}
        toAttrs v = catMaybes [toAttrFrStr "title" (iformsTitle v)]

instance HTypeable Alphaindex where
        toHType x = Defined "alphaindex" [] []

instance XmlContent Alphaindex where
        toContents (Alphaindex a b)
          = [CElem (Elem (N "alphaindex") [] (toContents a ++ toContents b))
               ()]
        parseContents
          = do e@(Elem _ [] _) <- element ["alphaindex"]
               interior e $
                 return (Alphaindex) `apply` parseContents `apply` parseContents
              `adjustErr` ("in <alphaindex>, " ++)
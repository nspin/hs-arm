module ARM.MRAS.DTD.SysReg.Regalphaindex where
import Text.XML.HaXml.OneOfN
import Prelude hiding (Right, Left)
import Text.XML.HaXml.XmlContent hiding (Content, List)
import Text.XML.HaXml.Types hiding (Content, Name)

data Toptitle = Toptitle{toptitleArchitecture :: String}
              deriving (Eq, Show)

data Register_index = Register_index Toptitle Register_links
                                     Timestamp
                    deriving (Eq, Show)

data Register_links = Register_links Register_links_Attrs
                                     [Register_link]
                    deriving (Eq, Show)

data Register_links_Attrs = Register_links_Attrs{register_linksTitle
                                                 :: String}
                          deriving (Eq, Show)

newtype Timestamp = Timestamp String
                  deriving (Eq, Show)

data Register_link = Register_link Register_link_Attrs String
                   deriving (Eq, Show)

data Register_link_Attrs = Register_link_Attrs{register_linkId ::
                                               String,
                                               register_linkHeading :: String,
                                               register_linkRegisterfile :: String}
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
          = Toptitle{toptitleArchitecture =
                       definiteA fromAttrToStr "toptitle" "architecture" as}
        toAttrs v
          = catMaybes [toAttrFrStr "architecture" (toptitleArchitecture v)]

instance HTypeable Register_index where
        toHType x = Defined "register_index" [] []

instance XmlContent Register_index where
        toContents (Register_index a b c)
          = [CElem
               (Elem (N "register_index") []
                  (toContents a ++ toContents b ++ toContents c))
               ()]
        parseContents
          = do e@(Elem _ [] _) <- element ["register_index"]
               interior e $
                 return (Register_index) `apply` parseContents `apply` parseContents
                   `apply` parseContents
              `adjustErr` ("in <register_index>, " ++)

instance HTypeable Register_links where
        toHType x = Defined "register_links" [] []

instance XmlContent Register_links where
        toContents (Register_links as a)
          = [CElem
               (Elem (N "register_links") (toAttrs as) (concatMap toContents a))
               ()]
        parseContents
          = do e@(Elem _ as _) <- element ["register_links"]
               interior e $
                 return (Register_links (fromAttrs as)) `apply` many parseContents
              `adjustErr` ("in <register_links>, " ++)

instance XmlAttributes Register_links_Attrs where
        fromAttrs as
          = Register_links_Attrs{register_linksTitle =
                                   definiteA fromAttrToStr "register_links" "title" as}
        toAttrs v = catMaybes [toAttrFrStr "title" (register_linksTitle v)]

instance HTypeable Timestamp where
        toHType x = Defined "timestamp" [] []

instance XmlContent Timestamp where
        toContents (Timestamp a)
          = [CElem (Elem (N "timestamp") [] (toText a)) ()]
        parseContents
          = do e@(Elem _ [] _) <- element ["timestamp"]
               interior e $ return (Timestamp) `apply` (text `onFail` return "")
              `adjustErr` ("in <timestamp>, " ++)

instance HTypeable Register_link where
        toHType x = Defined "register_link" [] []

instance XmlContent Register_link where
        toContents (Register_link as a)
          = [CElem (Elem (N "register_link") (toAttrs as) (toText a)) ()]
        parseContents
          = do e@(Elem _ as _) <- element ["register_link"]
               interior e $
                 return (Register_link (fromAttrs as)) `apply`
                   (text `onFail` return "")
              `adjustErr` ("in <register_link>, " ++)

instance XmlAttributes Register_link_Attrs where
        fromAttrs as
          = Register_link_Attrs{register_linkId =
                                  definiteA fromAttrToStr "register_link" "id" as,
                                register_linkHeading =
                                  definiteA fromAttrToStr "register_link" "heading" as,
                                register_linkRegisterfile =
                                  definiteA fromAttrToStr "register_link" "registerfile" as}
        toAttrs v
          = catMaybes
              [toAttrFrStr "id" (register_linkId v),
               toAttrFrStr "heading" (register_linkHeading v),
               toAttrFrStr "registerfile" (register_linkRegisterfile v)]
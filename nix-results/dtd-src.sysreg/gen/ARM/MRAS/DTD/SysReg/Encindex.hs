module ARM.MRAS.DTD.SysReg.Encindex where
import Text.XML.HaXml.OneOfN
import Prelude hiding (Right, Left)
import Text.XML.HaXml.XmlContent hiding (Content, List)
import Text.XML.HaXml.Types hiding (Content, Name)

data Sysregindex = Sysregindex Sysregindex_Attrs Typelist
                               (List1 Sectiongroup) Timestamp
                 deriving (Eq, Show)

data Sysregindex_Attrs = Sysregindex_Attrs{sysregindexIndextype ::
                                           Sysregindex_indextype,
                                           sysregindexIs_internal ::
                                           (Maybe Sysregindex_is_internal)}
                       deriving (Eq, Show)

data Sysregindex_indextype = Sysregindex_indextype_encoding
                           | Sysregindex_indextype_function
                           deriving (Eq, Show)

data Sysregindex_is_internal = Sysregindex_is_internal_True
                             | Sysregindex_is_internal_False
                             deriving (Eq, Show)

newtype Typelist = Typelist (List1 Typegroup)
                 deriving (Eq, Show)

data Typegroup = Typegroup Typegroup_Attrs [Typelink]
               deriving (Eq, Show)

data Typegroup_Attrs = Typegroup_Attrs{typegroupGroupname ::
                                       String}
                     deriving (Eq, Show)

data Typelink = Typelink{typelinkType :: String,
                         typelinkLink :: String}
              deriving (Eq, Show)

data Sectiongroup = Sectiongroup Sectiongroup_Attrs [Section]
                  deriving (Eq, Show)

data Sectiongroup_Attrs = Sectiongroup_Attrs{sectiongroupGroupname
                                             :: String}
                        deriving (Eq, Show)

data Section = Section Section_Attrs Heading Tbody
             deriving (Eq, Show)

data Section_Attrs = Section_Attrs{sectionType :: String,
                                   sectionAnchor :: String}
                   deriving (Eq, Show)

newtype Heading = Heading (List1 Row)
                deriving (Eq, Show)

data Row = Row Row_Attrs (List1 Entry)
         deriving (Eq, Show)

data Row_Attrs = Row_Attrs{rowClass :: (Maybe String)}
               deriving (Eq, Show)

newtype Tbody = Tbody (List1 Row)
              deriving (Eq, Show)

data Entry = Entry Entry_Attrs [Entry_]
           deriving (Eq, Show)

data Entry_Attrs = Entry_Attrs{entryRowspan :: (Maybe String),
                               entryColspan :: (Maybe String), entryClass :: (Maybe String)}
                 deriving (Eq, Show)

data Entry_ = Entry_Str String
            | Entry_A A
            deriving (Eq, Show)

data A = A A_Attrs String
       deriving (Eq, Show)

data A_Attrs = A_Attrs{aHref :: String}
             deriving (Eq, Show)

newtype Timestamp = Timestamp String
                  deriving (Eq, Show)

instance HTypeable Sysregindex where
        toHType x = Defined "sysregindex" [] []

instance XmlContent Sysregindex where
        toContents (Sysregindex as a b c)
          = [CElem
               (Elem (N "sysregindex") (toAttrs as)
                  (toContents a ++ toContents b ++ toContents c))
               ()]
        parseContents
          = do e@(Elem _ as _) <- element ["sysregindex"]
               interior e $
                 return (Sysregindex (fromAttrs as)) `apply` parseContents `apply`
                   parseContents
                   `apply` parseContents
              `adjustErr` ("in <sysregindex>, " ++)

instance XmlAttributes Sysregindex_Attrs where
        fromAttrs as
          = Sysregindex_Attrs{sysregindexIndextype =
                                definiteA fromAttrToTyp "sysregindex" "indextype" as,
                              sysregindexIs_internal = possibleA fromAttrToTyp "is_internal" as}
        toAttrs v
          = catMaybes
              [toAttrFrTyp "indextype" (sysregindexIndextype v),
               maybeToAttr toAttrFrTyp "is_internal" (sysregindexIs_internal v)]

instance XmlAttrType Sysregindex_indextype where
        fromAttrToTyp n (N n', v)
          | n == n' = translate (attr2str v)
          | otherwise = Nothing
          where translate "encoding" = Just Sysregindex_indextype_encoding
                translate "function" = Just Sysregindex_indextype_function
                translate _ = Nothing
        toAttrFrTyp n Sysregindex_indextype_encoding
          = Just (N n, str2attr "encoding")
        toAttrFrTyp n Sysregindex_indextype_function
          = Just (N n, str2attr "function")

instance XmlAttrType Sysregindex_is_internal where
        fromAttrToTyp n (N n', v)
          | n == n' = translate (attr2str v)
          | otherwise = Nothing
          where translate "True" = Just Sysregindex_is_internal_True
                translate "False" = Just Sysregindex_is_internal_False
                translate _ = Nothing
        toAttrFrTyp n Sysregindex_is_internal_True
          = Just (N n, str2attr "True")
        toAttrFrTyp n Sysregindex_is_internal_False
          = Just (N n, str2attr "False")

instance HTypeable Typelist where
        toHType x = Defined "typelist" [] []

instance XmlContent Typelist where
        toContents (Typelist a)
          = [CElem (Elem (N "typelist") [] (toContents a)) ()]
        parseContents
          = do e@(Elem _ [] _) <- element ["typelist"]
               interior e $ return (Typelist) `apply` parseContents
              `adjustErr` ("in <typelist>, " ++)

instance HTypeable Typegroup where
        toHType x = Defined "typegroup" [] []

instance XmlContent Typegroup where
        toContents (Typegroup as a)
          = [CElem
               (Elem (N "typegroup") (toAttrs as) (concatMap toContents a))
               ()]
        parseContents
          = do e@(Elem _ as _) <- element ["typegroup"]
               interior e $
                 return (Typegroup (fromAttrs as)) `apply` many parseContents
              `adjustErr` ("in <typegroup>, " ++)

instance XmlAttributes Typegroup_Attrs where
        fromAttrs as
          = Typegroup_Attrs{typegroupGroupname =
                              definiteA fromAttrToStr "typegroup" "groupname" as}
        toAttrs v
          = catMaybes [toAttrFrStr "groupname" (typegroupGroupname v)]

instance HTypeable Typelink where
        toHType x = Defined "typelink" [] []

instance XmlContent Typelink where
        toContents as = [CElem (Elem (N "typelink") (toAttrs as) []) ()]
        parseContents
          = do (Elem _ as []) <- element ["typelink"]
               return (fromAttrs as)
              `adjustErr` ("in <typelink>, " ++)

instance XmlAttributes Typelink where
        fromAttrs as
          = Typelink{typelinkType =
                       definiteA fromAttrToStr "typelink" "type" as,
                     typelinkLink = definiteA fromAttrToStr "typelink" "link" as}
        toAttrs v
          = catMaybes
              [toAttrFrStr "type" (typelinkType v),
               toAttrFrStr "link" (typelinkLink v)]

instance HTypeable Sectiongroup where
        toHType x = Defined "sectiongroup" [] []

instance XmlContent Sectiongroup where
        toContents (Sectiongroup as a)
          = [CElem
               (Elem (N "sectiongroup") (toAttrs as) (concatMap toContents a))
               ()]
        parseContents
          = do e@(Elem _ as _) <- element ["sectiongroup"]
               interior e $
                 return (Sectiongroup (fromAttrs as)) `apply` many parseContents
              `adjustErr` ("in <sectiongroup>, " ++)

instance XmlAttributes Sectiongroup_Attrs where
        fromAttrs as
          = Sectiongroup_Attrs{sectiongroupGroupname =
                                 definiteA fromAttrToStr "sectiongroup" "groupname" as}
        toAttrs v
          = catMaybes [toAttrFrStr "groupname" (sectiongroupGroupname v)]

instance HTypeable Section where
        toHType x = Defined "section" [] []

instance XmlContent Section where
        toContents (Section as a b)
          = [CElem
               (Elem (N "section") (toAttrs as) (toContents a ++ toContents b))
               ()]
        parseContents
          = do e@(Elem _ as _) <- element ["section"]
               interior e $
                 return (Section (fromAttrs as)) `apply` parseContents `apply`
                   parseContents
              `adjustErr` ("in <section>, " ++)

instance XmlAttributes Section_Attrs where
        fromAttrs as
          = Section_Attrs{sectionType =
                            definiteA fromAttrToStr "section" "type" as,
                          sectionAnchor = definiteA fromAttrToStr "section" "anchor" as}
        toAttrs v
          = catMaybes
              [toAttrFrStr "type" (sectionType v),
               toAttrFrStr "anchor" (sectionAnchor v)]

instance HTypeable Heading where
        toHType x = Defined "heading" [] []

instance XmlContent Heading where
        toContents (Heading a)
          = [CElem (Elem (N "heading") [] (toContents a)) ()]
        parseContents
          = do e@(Elem _ [] _) <- element ["heading"]
               interior e $ return (Heading) `apply` parseContents
              `adjustErr` ("in <heading>, " ++)

instance HTypeable Row where
        toHType x = Defined "row" [] []

instance XmlContent Row where
        toContents (Row as a)
          = [CElem (Elem (N "row") (toAttrs as) (toContents a)) ()]
        parseContents
          = do e@(Elem _ as _) <- element ["row"]
               interior e $ return (Row (fromAttrs as)) `apply` parseContents
              `adjustErr` ("in <row>, " ++)

instance XmlAttributes Row_Attrs where
        fromAttrs as
          = Row_Attrs{rowClass = possibleA fromAttrToStr "class" as}
        toAttrs v
          = catMaybes [maybeToAttr toAttrFrStr "class" (rowClass v)]

instance HTypeable Tbody where
        toHType x = Defined "tbody" [] []

instance XmlContent Tbody where
        toContents (Tbody a)
          = [CElem (Elem (N "tbody") [] (toContents a)) ()]
        parseContents
          = do e@(Elem _ [] _) <- element ["tbody"]
               interior e $ return (Tbody) `apply` parseContents
              `adjustErr` ("in <tbody>, " ++)

instance HTypeable Entry where
        toHType x = Defined "entry" [] []

instance XmlContent Entry where
        toContents (Entry as a)
          = [CElem (Elem (N "entry") (toAttrs as) (concatMap toContents a))
               ()]
        parseContents
          = do e@(Elem _ as _) <- element ["entry"]
               interior e $
                 return (Entry (fromAttrs as)) `apply` many parseContents
              `adjustErr` ("in <entry>, " ++)

instance XmlAttributes Entry_Attrs where
        fromAttrs as
          = Entry_Attrs{entryRowspan = possibleA fromAttrToStr "rowspan" as,
                        entryColspan = possibleA fromAttrToStr "colspan" as,
                        entryClass = possibleA fromAttrToStr "class" as}
        toAttrs v
          = catMaybes
              [maybeToAttr toAttrFrStr "rowspan" (entryRowspan v),
               maybeToAttr toAttrFrStr "colspan" (entryColspan v),
               maybeToAttr toAttrFrStr "class" (entryClass v)]

instance HTypeable Entry_ where
        toHType x = Defined "entry" [] []

instance XmlContent Entry_ where
        toContents (Entry_Str a) = toText a
        toContents (Entry_A a) = toContents a
        parseContents
          = oneOf
              [return (Entry_Str) `apply` text,
               return (Entry_A) `apply` parseContents]
              `adjustErr` ("in <entry>, " ++)

instance HTypeable A where
        toHType x = Defined "a" [] []

instance XmlContent A where
        toContents (A as a)
          = [CElem (Elem (N "a") (toAttrs as) (toText a)) ()]
        parseContents
          = do e@(Elem _ as _) <- element ["a"]
               interior e $
                 return (A (fromAttrs as)) `apply` (text `onFail` return "")
              `adjustErr` ("in <a>, " ++)

instance XmlAttributes A_Attrs where
        fromAttrs as
          = A_Attrs{aHref = definiteA fromAttrToStr "a" "href" as}
        toAttrs v = catMaybes [toAttrFrStr "href" (aHref v)]

instance HTypeable Timestamp where
        toHType x = Defined "timestamp" [] []

instance XmlContent Timestamp where
        toContents (Timestamp a)
          = [CElem (Elem (N "timestamp") [] (toText a)) ()]
        parseContents
          = do e@(Elem _ [] _) <- element ["timestamp"]
               interior e $ return (Timestamp) `apply` (text `onFail` return "")
              `adjustErr` ("in <timestamp>, " ++)
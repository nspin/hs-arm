module ARM.MRAS.DTD.A64.Encodingindex where
import Text.XML.HaXml.OneOfN
import Prelude hiding (Right, Left)
import Text.XML.HaXml.XmlContent hiding (Content, List)
import Text.XML.HaXml.Types hiding (Content, Name)

data A = A A_Attrs String
       deriving (Eq, Show)

data A_Attrs = A_Attrs{aClassid :: (Maybe String)}
             deriving (Eq, Show)

data Td = Td Td_Attrs [Td_]
        deriving (Eq, Show)

data Td_Attrs = Td_Attrs{tdColspan :: (Maybe String),
                         tdRowspan :: (Maybe String), tdClass :: (Maybe String),
                         tdIformid :: (Maybe String), tdBitwidth :: (Maybe String),
                         tdNote :: (Maybe String), tdIngroup :: (Maybe Td_ingroup),
                         tdBg :: (Maybe String), tdHover :: (Maybe String)}
              deriving (Eq, Show)

data Td_ = Td_Str String
         | Td_A A
         deriving (Eq, Show)

data Td_ingroup = Td_ingroup_1
                deriving (Eq, Show)

data Th = Th Th_Attrs String
        deriving (Eq, Show)

data Th_Attrs = Th_Attrs{thColno :: (Maybe String),
                         thColspan :: (Maybe String), thRowspan :: (Maybe String),
                         thClass :: (Maybe String), thBitwidth :: (Maybe String)}
              deriving (Eq, Show)

data Tr = TrTh Tr_Attrs [Th]
        | TrTd Tr_Attrs [Td]
        deriving (Eq, Show)

data Tr_Attrs = Tr_Attrs{trClass :: (Maybe String),
                         trIclass :: (Maybe String), trId :: (Maybe String),
                         trEncname :: (Maybe String), trFirst :: (Maybe String),
                         trLast :: (Maybe String), trIformfile :: (Maybe String),
                         trOneofthismnem :: (Maybe String), trSize :: (Maybe Tr_size),
                         trLabel :: (Maybe String), trUndef :: (Maybe Tr_undef),
                         trUnpred :: (Maybe Tr_unpred),
                         trReserved_nop_hint :: (Maybe Tr_reserved_nop_hint),
                         trGroupid :: (Maybe String), trGroupname :: (Maybe String),
                         trArch_version :: (Maybe String)}
              deriving (Eq, Show)

data Tr_size = Tr_size_16
             | Tr_size_16x2
             | Tr_size_32
             deriving (Eq, Show)

data Tr_undef = Tr_undef_1
              deriving (Eq, Show)

data Tr_unpred = Tr_unpred_1
               deriving (Eq, Show)

data Tr_reserved_nop_hint = Tr_reserved_nop_hint_1
                          deriving (Eq, Show)

data Maintablesect = Maintablesect{maintablesectSect :: String,
                                   maintablesectLinkref :: (Maybe String)}
                   deriving (Eq, Show)

newtype Tablebody = Tablebody (List1 Tablebody_)
                  deriving (Eq, Show)

data Tablebody_ = Tablebody_Maintablesect Maintablesect
                | Tablebody_Tr Tr
                deriving (Eq, Show)

newtype Tableheader = Tableheader (List1 Tr)
                    deriving (Eq, Show)

data Col = Col{colBitno :: (Maybe String),
               colColno :: (Maybe String), colPrintwidth :: (Maybe String)}
         deriving (Eq, Show)

data Maintable = Maintable Maintable_Attrs [Col] Tableheader
                           Tablebody
               deriving (Eq, Show)

data Maintable_Attrs = Maintable_Attrs{maintableSize ::
                                       (Maybe Maintable_size),
                                       maintableIsa :: (Maybe String),
                                       maintableHowmanybits :: (Maybe String),
                                       maintableClass :: (Maybe Maintable_class)}
                     deriving (Eq, Show)

data Maintable_size = Maintable_size_16x2
                    | Maintable_size_32
                    deriving (Eq, Show)

data Maintable_class = Maintable_class_grouptable
                     | Maintable_class_allclasses
                     deriving (Eq, Show)

newtype Tbody = Tbody (List1 Tr)
              deriving (Eq, Show)

data Thead = Thead Thead_Attrs (List1 Tr)
           deriving (Eq, Show)

data Thead_Attrs = Thead_Attrs{theadClass :: (Maybe String)}
                 deriving (Eq, Show)

data Instructiontable = Instructiontable Instructiontable_Attrs
                                         [Col] Thead Tbody
                      deriving (Eq, Show)

data Instructiontable_Attrs = Instructiontable_Attrs{instructiontableIclass
                                                     :: String,
                                                     instructiontableCols :: String}
                            deriving (Eq, Show)

data C = C C_Attrs String
       deriving (Eq, Show)

data C_Attrs = C_Attrs{cColspan :: (Maybe String),
                       cHref :: (Maybe String)}
             deriving (Eq, Show)

data Box = Box Box_Attrs [C]
         deriving (Eq, Show)

data Box_Attrs = Box_Attrs{boxHibit :: (Maybe String),
                           boxName :: (Maybe String), boxUsename :: (Maybe String),
                           boxWidth :: (Maybe String), boxSettings :: (Maybe String),
                           boxConstraint :: (Maybe String)}
               deriving (Eq, Show)

data Regdiagram = Regdiagram Regdiagram_Attrs [Box]
                deriving (Eq, Show)

data Regdiagram_Attrs = Regdiagram_Attrs{regdiagramForm ::
                                         Regdiagram_form,
                                         regdiagramIsa :: (Maybe String),
                                         regdiagramPsname :: (Maybe String),
                                         regdiagramTworows :: (Maybe Regdiagram_tworows),
                                         regdiagramConstraint :: (Maybe String)}
                      deriving (Eq, Show)

data Regdiagram_form = Regdiagram_form_16
                     | Regdiagram_form_16x2
                     | Regdiagram_form_32
                     deriving (Eq, Show)

data Regdiagram_tworows = Regdiagram_tworows_1
                        deriving (Eq, Show)

newtype Header = Header String
               deriving (Eq, Show)

newtype Decode = Decode (List1 Box)
               deriving (Eq, Show)

newtype Decode_constraints = Decode_constraints (List1
                                                   Decode_constraint)
                           deriving (Eq, Show)

data Decode_constraint = Decode_constraint{decode_constraintName ::
                                           String,
                                           decode_constraintOp :: String,
                                           decode_constraintVal :: String}
                       deriving (Eq, Show)

data Node = Node Node_Attrs Header (Maybe Decode)
                 (Maybe Regdiagram) (Maybe Decode_constraints) [Node]
          deriving (Eq, Show)

data Node_Attrs = Node_Attrs{nodeIclass :: (Maybe String),
                             nodeGroupname :: (Maybe String),
                             nodeUnallocated :: (Maybe Node_unallocated),
                             nodeUnpredictable :: (Maybe Node_unpredictable),
                             nodeReserved_nop_hint :: (Maybe Node_reserved_nop_hint)}
                deriving (Eq, Show)

data Node_unallocated = Node_unallocated_0
                      | Node_unallocated_1
                      deriving (Eq, Show)

data Node_unpredictable = Node_unpredictable_0
                        | Node_unpredictable_1
                        deriving (Eq, Show)

data Node_reserved_nop_hint = Node_reserved_nop_hint_0
                            | Node_reserved_nop_hint_1
                            deriving (Eq, Show)

data Hierarchy = Hierarchy Regdiagram [Node]
               deriving (Eq, Show)

data Groups = Groups Groups_Attrs Maintable
            deriving (Eq, Show)

data Groups_Attrs = Groups_Attrs{groupsHeading :: String}
                  deriving (Eq, Show)

data Funcgroupheader = Funcgroupheader Funcgroupheader_Attrs String
                     deriving (Eq, Show)

data Funcgroupheader_Attrs = Funcgroupheader_Attrs{funcgroupheaderId
                                                   :: String}
                           deriving (Eq, Show)

data Iclass_sect = Iclass_sect Iclass_sect_Attrs (List1 Regdiagram)
                               Instructiontable
                 deriving (Eq, Show)

data Iclass_sect_Attrs = Iclass_sect_Attrs{iclass_sectId :: String,
                                           iclass_sectTitle :: String}
                       deriving (Eq, Show)

data Mapping = Mapping{mappingFrom_isa :: (Maybe String),
                       mappingFrom :: String, mappingTo_isa :: String,
                       mappingTo :: String}
             deriving (Eq, Show)

newtype Mappings = Mappings [Mapping]
                 deriving (Eq, Show)

data Encodingindex = Encodingindex Encodingindex_Attrs
                                   (Maybe Hierarchy) (Maybe Groups) Maintable
                                   (List1 ((Maybe Funcgroupheader), (List1 Iclass_sect)))
                                   (Maybe Mappings)
                   deriving (Eq, Show)

data Encodingindex_Attrs = Encodingindex_Attrs{encodingindexInstructionset
                                               :: (Maybe String),
                                               encodingindexTitle :: (Maybe String)}
                         deriving (Eq, Show)

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
          = A_Attrs{aClassid = possibleA fromAttrToStr "classid" as}
        toAttrs v
          = catMaybes [maybeToAttr toAttrFrStr "classid" (aClassid v)]

instance HTypeable Td where
        toHType x = Defined "td" [] []

instance XmlContent Td where
        toContents (Td as a)
          = [CElem (Elem (N "td") (toAttrs as) (concatMap toContents a)) ()]
        parseContents
          = do e@(Elem _ as _) <- element ["td"]
               interior e $ return (Td (fromAttrs as)) `apply` many parseContents
              `adjustErr` ("in <td>, " ++)

instance XmlAttributes Td_Attrs where
        fromAttrs as
          = Td_Attrs{tdColspan = possibleA fromAttrToStr "colspan" as,
                     tdRowspan = possibleA fromAttrToStr "rowspan" as,
                     tdClass = possibleA fromAttrToStr "class" as,
                     tdIformid = possibleA fromAttrToStr "iformid" as,
                     tdBitwidth = possibleA fromAttrToStr "bitwidth" as,
                     tdNote = possibleA fromAttrToStr "note" as,
                     tdIngroup = possibleA fromAttrToTyp "ingroup" as,
                     tdBg = possibleA fromAttrToStr "bg" as,
                     tdHover = possibleA fromAttrToStr "hover" as}
        toAttrs v
          = catMaybes
              [maybeToAttr toAttrFrStr "colspan" (tdColspan v),
               maybeToAttr toAttrFrStr "rowspan" (tdRowspan v),
               maybeToAttr toAttrFrStr "class" (tdClass v),
               maybeToAttr toAttrFrStr "iformid" (tdIformid v),
               maybeToAttr toAttrFrStr "bitwidth" (tdBitwidth v),
               maybeToAttr toAttrFrStr "note" (tdNote v),
               maybeToAttr toAttrFrTyp "ingroup" (tdIngroup v),
               maybeToAttr toAttrFrStr "bg" (tdBg v),
               maybeToAttr toAttrFrStr "hover" (tdHover v)]

instance HTypeable Td_ where
        toHType x = Defined "td" [] []

instance XmlContent Td_ where
        toContents (Td_Str a) = toText a
        toContents (Td_A a) = toContents a
        parseContents
          = oneOf
              [return (Td_Str) `apply` text, return (Td_A) `apply` parseContents]
              `adjustErr` ("in <td>, " ++)

instance XmlAttrType Td_ingroup where
        fromAttrToTyp n (N n', v)
          | n == n' = translate (attr2str v)
          | otherwise = Nothing
          where translate "1" = Just Td_ingroup_1
                translate _ = Nothing
        toAttrFrTyp n Td_ingroup_1 = Just (N n, str2attr "1")

instance HTypeable Th where
        toHType x = Defined "th" [] []

instance XmlContent Th where
        toContents (Th as a)
          = [CElem (Elem (N "th") (toAttrs as) (toText a)) ()]
        parseContents
          = do e@(Elem _ as _) <- element ["th"]
               interior e $
                 return (Th (fromAttrs as)) `apply` (text `onFail` return "")
              `adjustErr` ("in <th>, " ++)

instance XmlAttributes Th_Attrs where
        fromAttrs as
          = Th_Attrs{thColno = possibleA fromAttrToStr "colno" as,
                     thColspan = possibleA fromAttrToStr "colspan" as,
                     thRowspan = possibleA fromAttrToStr "rowspan" as,
                     thClass = possibleA fromAttrToStr "class" as,
                     thBitwidth = possibleA fromAttrToStr "bitwidth" as}
        toAttrs v
          = catMaybes
              [maybeToAttr toAttrFrStr "colno" (thColno v),
               maybeToAttr toAttrFrStr "colspan" (thColspan v),
               maybeToAttr toAttrFrStr "rowspan" (thRowspan v),
               maybeToAttr toAttrFrStr "class" (thClass v),
               maybeToAttr toAttrFrStr "bitwidth" (thBitwidth v)]

instance HTypeable Tr where
        toHType x = Defined "tr" [] []

instance XmlContent Tr where
        toContents (TrTh as a)
          = [CElem (Elem (N "tr") (toAttrs as) (concatMap toContents a)) ()]
        toContents (TrTd as a)
          = [CElem (Elem (N "tr") (toAttrs as) (concatMap toContents a)) ()]
        parseContents
          = do e@(Elem _ as _) <- element ["tr"]
               interior e $
                 oneOf
                   [return (TrTh (fromAttrs as)) `apply` many parseContents,
                    return (TrTd (fromAttrs as)) `apply` many parseContents]
                   `adjustErr` ("in <tr>, " ++)

instance XmlAttributes Tr_Attrs where
        fromAttrs as
          = Tr_Attrs{trClass = possibleA fromAttrToStr "class" as,
                     trIclass = possibleA fromAttrToStr "iclass" as,
                     trId = possibleA fromAttrToStr "id" as,
                     trEncname = possibleA fromAttrToStr "encname" as,
                     trFirst = possibleA fromAttrToStr "first" as,
                     trLast = possibleA fromAttrToStr "last" as,
                     trIformfile = possibleA fromAttrToStr "iformfile" as,
                     trOneofthismnem = possibleA fromAttrToStr "oneofthismnem" as,
                     trSize = possibleA fromAttrToTyp "size" as,
                     trLabel = possibleA fromAttrToStr "label" as,
                     trUndef = possibleA fromAttrToTyp "undef" as,
                     trUnpred = possibleA fromAttrToTyp "unpred" as,
                     trReserved_nop_hint =
                       possibleA fromAttrToTyp "reserved_nop_hint" as,
                     trGroupid = possibleA fromAttrToStr "groupid" as,
                     trGroupname = possibleA fromAttrToStr "groupname" as,
                     trArch_version = possibleA fromAttrToStr "arch_version" as}
        toAttrs v
          = catMaybes
              [maybeToAttr toAttrFrStr "class" (trClass v),
               maybeToAttr toAttrFrStr "iclass" (trIclass v),
               maybeToAttr toAttrFrStr "id" (trId v),
               maybeToAttr toAttrFrStr "encname" (trEncname v),
               maybeToAttr toAttrFrStr "first" (trFirst v),
               maybeToAttr toAttrFrStr "last" (trLast v),
               maybeToAttr toAttrFrStr "iformfile" (trIformfile v),
               maybeToAttr toAttrFrStr "oneofthismnem" (trOneofthismnem v),
               maybeToAttr toAttrFrTyp "size" (trSize v),
               maybeToAttr toAttrFrStr "label" (trLabel v),
               maybeToAttr toAttrFrTyp "undef" (trUndef v),
               maybeToAttr toAttrFrTyp "unpred" (trUnpred v),
               maybeToAttr toAttrFrTyp "reserved_nop_hint"
                 (trReserved_nop_hint v),
               maybeToAttr toAttrFrStr "groupid" (trGroupid v),
               maybeToAttr toAttrFrStr "groupname" (trGroupname v),
               maybeToAttr toAttrFrStr "arch_version" (trArch_version v)]

instance XmlAttrType Tr_size where
        fromAttrToTyp n (N n', v)
          | n == n' = translate (attr2str v)
          | otherwise = Nothing
          where translate "16" = Just Tr_size_16
                translate "16x2" = Just Tr_size_16x2
                translate "32" = Just Tr_size_32
                translate _ = Nothing
        toAttrFrTyp n Tr_size_16 = Just (N n, str2attr "16")
        toAttrFrTyp n Tr_size_16x2 = Just (N n, str2attr "16x2")
        toAttrFrTyp n Tr_size_32 = Just (N n, str2attr "32")

instance XmlAttrType Tr_undef where
        fromAttrToTyp n (N n', v)
          | n == n' = translate (attr2str v)
          | otherwise = Nothing
          where translate "1" = Just Tr_undef_1
                translate _ = Nothing
        toAttrFrTyp n Tr_undef_1 = Just (N n, str2attr "1")

instance XmlAttrType Tr_unpred where
        fromAttrToTyp n (N n', v)
          | n == n' = translate (attr2str v)
          | otherwise = Nothing
          where translate "1" = Just Tr_unpred_1
                translate _ = Nothing
        toAttrFrTyp n Tr_unpred_1 = Just (N n, str2attr "1")

instance XmlAttrType Tr_reserved_nop_hint where
        fromAttrToTyp n (N n', v)
          | n == n' = translate (attr2str v)
          | otherwise = Nothing
          where translate "1" = Just Tr_reserved_nop_hint_1
                translate _ = Nothing
        toAttrFrTyp n Tr_reserved_nop_hint_1 = Just (N n, str2attr "1")

instance HTypeable Maintablesect where
        toHType x = Defined "maintablesect" [] []

instance XmlContent Maintablesect where
        toContents as
          = [CElem (Elem (N "maintablesect") (toAttrs as) []) ()]
        parseContents
          = do (Elem _ as []) <- element ["maintablesect"]
               return (fromAttrs as)
              `adjustErr` ("in <maintablesect>, " ++)

instance XmlAttributes Maintablesect where
        fromAttrs as
          = Maintablesect{maintablesectSect =
                            definiteA fromAttrToStr "maintablesect" "sect" as,
                          maintablesectLinkref = possibleA fromAttrToStr "linkref" as}
        toAttrs v
          = catMaybes
              [toAttrFrStr "sect" (maintablesectSect v),
               maybeToAttr toAttrFrStr "linkref" (maintablesectLinkref v)]

instance HTypeable Tablebody where
        toHType x = Defined "tablebody" [] []

instance XmlContent Tablebody where
        toContents (Tablebody a)
          = [CElem (Elem (N "tablebody") [] (toContents a)) ()]
        parseContents
          = do e@(Elem _ [] _) <- element ["tablebody"]
               interior e $ return (Tablebody) `apply` parseContents
              `adjustErr` ("in <tablebody>, " ++)

instance HTypeable Tablebody_ where
        toHType x = Defined "tablebody" [] []

instance XmlContent Tablebody_ where
        toContents (Tablebody_Maintablesect a) = toContents a
        toContents (Tablebody_Tr a) = toContents a
        parseContents
          = oneOf
              [return (Tablebody_Maintablesect) `apply` parseContents,
               return (Tablebody_Tr) `apply` parseContents]
              `adjustErr` ("in <tablebody>, " ++)

instance HTypeable Tableheader where
        toHType x = Defined "tableheader" [] []

instance XmlContent Tableheader where
        toContents (Tableheader a)
          = [CElem (Elem (N "tableheader") [] (toContents a)) ()]
        parseContents
          = do e@(Elem _ [] _) <- element ["tableheader"]
               interior e $ return (Tableheader) `apply` parseContents
              `adjustErr` ("in <tableheader>, " ++)

instance HTypeable Col where
        toHType x = Defined "col" [] []

instance XmlContent Col where
        toContents as = [CElem (Elem (N "col") (toAttrs as) []) ()]
        parseContents
          = do (Elem _ as []) <- element ["col"]
               return (fromAttrs as)
              `adjustErr` ("in <col>, " ++)

instance XmlAttributes Col where
        fromAttrs as
          = Col{colBitno = possibleA fromAttrToStr "bitno" as,
                colColno = possibleA fromAttrToStr "colno" as,
                colPrintwidth = possibleA fromAttrToStr "printwidth" as}
        toAttrs v
          = catMaybes
              [maybeToAttr toAttrFrStr "bitno" (colBitno v),
               maybeToAttr toAttrFrStr "colno" (colColno v),
               maybeToAttr toAttrFrStr "printwidth" (colPrintwidth v)]

instance HTypeable Maintable where
        toHType x = Defined "maintable" [] []

instance XmlContent Maintable where
        toContents (Maintable as a b c)
          = [CElem
               (Elem (N "maintable") (toAttrs as)
                  (concatMap toContents a ++ toContents b ++ toContents c))
               ()]
        parseContents
          = do e@(Elem _ as _) <- element ["maintable"]
               interior e $
                 return (Maintable (fromAttrs as)) `apply` many parseContents
                   `apply` parseContents
                   `apply` parseContents
              `adjustErr` ("in <maintable>, " ++)

instance XmlAttributes Maintable_Attrs where
        fromAttrs as
          = Maintable_Attrs{maintableSize =
                              possibleA fromAttrToTyp "size" as,
                            maintableIsa = possibleA fromAttrToStr "isa" as,
                            maintableHowmanybits = possibleA fromAttrToStr "howmanybits" as,
                            maintableClass = possibleA fromAttrToTyp "class" as}
        toAttrs v
          = catMaybes
              [maybeToAttr toAttrFrTyp "size" (maintableSize v),
               maybeToAttr toAttrFrStr "isa" (maintableIsa v),
               maybeToAttr toAttrFrStr "howmanybits" (maintableHowmanybits v),
               maybeToAttr toAttrFrTyp "class" (maintableClass v)]

instance XmlAttrType Maintable_size where
        fromAttrToTyp n (N n', v)
          | n == n' = translate (attr2str v)
          | otherwise = Nothing
          where translate "16x2" = Just Maintable_size_16x2
                translate "32" = Just Maintable_size_32
                translate _ = Nothing
        toAttrFrTyp n Maintable_size_16x2 = Just (N n, str2attr "16x2")
        toAttrFrTyp n Maintable_size_32 = Just (N n, str2attr "32")

instance XmlAttrType Maintable_class where
        fromAttrToTyp n (N n', v)
          | n == n' = translate (attr2str v)
          | otherwise = Nothing
          where translate "grouptable" = Just Maintable_class_grouptable
                translate "allclasses" = Just Maintable_class_allclasses
                translate _ = Nothing
        toAttrFrTyp n Maintable_class_grouptable
          = Just (N n, str2attr "grouptable")
        toAttrFrTyp n Maintable_class_allclasses
          = Just (N n, str2attr "allclasses")

instance HTypeable Tbody where
        toHType x = Defined "tbody" [] []

instance XmlContent Tbody where
        toContents (Tbody a)
          = [CElem (Elem (N "tbody") [] (toContents a)) ()]
        parseContents
          = do e@(Elem _ [] _) <- element ["tbody"]
               interior e $ return (Tbody) `apply` parseContents
              `adjustErr` ("in <tbody>, " ++)

instance HTypeable Thead where
        toHType x = Defined "thead" [] []

instance XmlContent Thead where
        toContents (Thead as a)
          = [CElem (Elem (N "thead") (toAttrs as) (toContents a)) ()]
        parseContents
          = do e@(Elem _ as _) <- element ["thead"]
               interior e $ return (Thead (fromAttrs as)) `apply` parseContents
              `adjustErr` ("in <thead>, " ++)

instance XmlAttributes Thead_Attrs where
        fromAttrs as
          = Thead_Attrs{theadClass = possibleA fromAttrToStr "class" as}
        toAttrs v
          = catMaybes [maybeToAttr toAttrFrStr "class" (theadClass v)]

instance HTypeable Instructiontable where
        toHType x = Defined "instructiontable" [] []

instance XmlContent Instructiontable where
        toContents (Instructiontable as a b c)
          = [CElem
               (Elem (N "instructiontable") (toAttrs as)
                  (concatMap toContents a ++ toContents b ++ toContents c))
               ()]
        parseContents
          = do e@(Elem _ as _) <- element ["instructiontable"]
               interior e $
                 return (Instructiontable (fromAttrs as)) `apply` many parseContents
                   `apply` parseContents
                   `apply` parseContents
              `adjustErr` ("in <instructiontable>, " ++)

instance XmlAttributes Instructiontable_Attrs where
        fromAttrs as
          = Instructiontable_Attrs{instructiontableIclass =
                                     definiteA fromAttrToStr "instructiontable" "iclass" as,
                                   instructiontableCols =
                                     definiteA fromAttrToStr "instructiontable" "cols" as}
        toAttrs v
          = catMaybes
              [toAttrFrStr "iclass" (instructiontableIclass v),
               toAttrFrStr "cols" (instructiontableCols v)]

instance HTypeable C where
        toHType x = Defined "c" [] []

instance XmlContent C where
        toContents (C as a)
          = [CElem (Elem (N "c") (toAttrs as) (toText a)) ()]
        parseContents
          = do e@(Elem _ as _) <- element ["c"]
               interior e $
                 return (C (fromAttrs as)) `apply` (text `onFail` return "")
              `adjustErr` ("in <c>, " ++)

instance XmlAttributes C_Attrs where
        fromAttrs as
          = C_Attrs{cColspan = possibleA fromAttrToStr "colspan" as,
                    cHref = possibleA fromAttrToStr "href" as}
        toAttrs v
          = catMaybes
              [maybeToAttr toAttrFrStr "colspan" (cColspan v),
               maybeToAttr toAttrFrStr "href" (cHref v)]

instance HTypeable Box where
        toHType x = Defined "box" [] []

instance XmlContent Box where
        toContents (Box as a)
          = [CElem (Elem (N "box") (toAttrs as) (concatMap toContents a)) ()]
        parseContents
          = do e@(Elem _ as _) <- element ["box"]
               interior e $ return (Box (fromAttrs as)) `apply` many parseContents
              `adjustErr` ("in <box>, " ++)

instance XmlAttributes Box_Attrs where
        fromAttrs as
          = Box_Attrs{boxHibit = possibleA fromAttrToStr "hibit" as,
                      boxName = possibleA fromAttrToStr "name" as,
                      boxUsename = possibleA fromAttrToStr "usename" as,
                      boxWidth = possibleA fromAttrToStr "width" as,
                      boxSettings = possibleA fromAttrToStr "settings" as,
                      boxConstraint = possibleA fromAttrToStr "constraint" as}
        toAttrs v
          = catMaybes
              [maybeToAttr toAttrFrStr "hibit" (boxHibit v),
               maybeToAttr toAttrFrStr "name" (boxName v),
               maybeToAttr toAttrFrStr "usename" (boxUsename v),
               maybeToAttr toAttrFrStr "width" (boxWidth v),
               maybeToAttr toAttrFrStr "settings" (boxSettings v),
               maybeToAttr toAttrFrStr "constraint" (boxConstraint v)]

instance HTypeable Regdiagram where
        toHType x = Defined "regdiagram" [] []

instance XmlContent Regdiagram where
        toContents (Regdiagram as a)
          = [CElem
               (Elem (N "regdiagram") (toAttrs as) (concatMap toContents a))
               ()]
        parseContents
          = do e@(Elem _ as _) <- element ["regdiagram"]
               interior e $
                 return (Regdiagram (fromAttrs as)) `apply` many parseContents
              `adjustErr` ("in <regdiagram>, " ++)

instance XmlAttributes Regdiagram_Attrs where
        fromAttrs as
          = Regdiagram_Attrs{regdiagramForm =
                               definiteA fromAttrToTyp "regdiagram" "form" as,
                             regdiagramIsa = possibleA fromAttrToStr "isa" as,
                             regdiagramPsname = possibleA fromAttrToStr "psname" as,
                             regdiagramTworows = possibleA fromAttrToTyp "tworows" as,
                             regdiagramConstraint = possibleA fromAttrToStr "constraint" as}
        toAttrs v
          = catMaybes
              [toAttrFrTyp "form" (regdiagramForm v),
               maybeToAttr toAttrFrStr "isa" (regdiagramIsa v),
               maybeToAttr toAttrFrStr "psname" (regdiagramPsname v),
               maybeToAttr toAttrFrTyp "tworows" (regdiagramTworows v),
               maybeToAttr toAttrFrStr "constraint" (regdiagramConstraint v)]

instance XmlAttrType Regdiagram_form where
        fromAttrToTyp n (N n', v)
          | n == n' = translate (attr2str v)
          | otherwise = Nothing
          where translate "16" = Just Regdiagram_form_16
                translate "16x2" = Just Regdiagram_form_16x2
                translate "32" = Just Regdiagram_form_32
                translate _ = Nothing
        toAttrFrTyp n Regdiagram_form_16 = Just (N n, str2attr "16")
        toAttrFrTyp n Regdiagram_form_16x2 = Just (N n, str2attr "16x2")
        toAttrFrTyp n Regdiagram_form_32 = Just (N n, str2attr "32")

instance XmlAttrType Regdiagram_tworows where
        fromAttrToTyp n (N n', v)
          | n == n' = translate (attr2str v)
          | otherwise = Nothing
          where translate "1" = Just Regdiagram_tworows_1
                translate _ = Nothing
        toAttrFrTyp n Regdiagram_tworows_1 = Just (N n, str2attr "1")

instance HTypeable Header where
        toHType x = Defined "header" [] []

instance XmlContent Header where
        toContents (Header a)
          = [CElem (Elem (N "header") [] (toText a)) ()]
        parseContents
          = do e@(Elem _ [] _) <- element ["header"]
               interior e $ return (Header) `apply` (text `onFail` return "")
              `adjustErr` ("in <header>, " ++)

instance HTypeable Decode where
        toHType x = Defined "decode" [] []

instance XmlContent Decode where
        toContents (Decode a)
          = [CElem (Elem (N "decode") [] (toContents a)) ()]
        parseContents
          = do e@(Elem _ [] _) <- element ["decode"]
               interior e $ return (Decode) `apply` parseContents
              `adjustErr` ("in <decode>, " ++)

instance HTypeable Decode_constraints where
        toHType x = Defined "decode_constraints" [] []

instance XmlContent Decode_constraints where
        toContents (Decode_constraints a)
          = [CElem (Elem (N "decode_constraints") [] (toContents a)) ()]
        parseContents
          = do e@(Elem _ [] _) <- element ["decode_constraints"]
               interior e $ return (Decode_constraints) `apply` parseContents
              `adjustErr` ("in <decode_constraints>, " ++)

instance HTypeable Decode_constraint where
        toHType x = Defined "decode_constraint" [] []

instance XmlContent Decode_constraint where
        toContents as
          = [CElem (Elem (N "decode_constraint") (toAttrs as) []) ()]
        parseContents
          = do (Elem _ as []) <- element ["decode_constraint"]
               return (fromAttrs as)
              `adjustErr` ("in <decode_constraint>, " ++)

instance XmlAttributes Decode_constraint where
        fromAttrs as
          = Decode_constraint{decode_constraintName =
                                definiteA fromAttrToStr "decode_constraint" "name" as,
                              decode_constraintOp =
                                definiteA fromAttrToStr "decode_constraint" "op" as,
                              decode_constraintVal =
                                definiteA fromAttrToStr "decode_constraint" "val" as}
        toAttrs v
          = catMaybes
              [toAttrFrStr "name" (decode_constraintName v),
               toAttrFrStr "op" (decode_constraintOp v),
               toAttrFrStr "val" (decode_constraintVal v)]

instance HTypeable Node where
        toHType x = Defined "node" [] []

instance XmlContent Node where
        toContents (Node as a b c d e)
          = [CElem
               (Elem (N "node") (toAttrs as)
                  (toContents a ++
                     maybe [] toContents b ++
                       maybe [] toContents c ++
                         maybe [] toContents d ++ concatMap toContents e))
               ()]
        parseContents
          = do e@(Elem _ as _) <- element ["node"]
               interior e $
                 return (Node (fromAttrs as)) `apply` parseContents `apply`
                   optional parseContents
                   `apply` optional parseContents
                   `apply` optional parseContents
                   `apply` many parseContents
              `adjustErr` ("in <node>, " ++)

instance XmlAttributes Node_Attrs where
        fromAttrs as
          = Node_Attrs{nodeIclass = possibleA fromAttrToStr "iclass" as,
                       nodeGroupname = possibleA fromAttrToStr "groupname" as,
                       nodeUnallocated = possibleA fromAttrToTyp "unallocated" as,
                       nodeUnpredictable = possibleA fromAttrToTyp "unpredictable" as,
                       nodeReserved_nop_hint =
                         possibleA fromAttrToTyp "reserved_nop_hint" as}
        toAttrs v
          = catMaybes
              [maybeToAttr toAttrFrStr "iclass" (nodeIclass v),
               maybeToAttr toAttrFrStr "groupname" (nodeGroupname v),
               maybeToAttr toAttrFrTyp "unallocated" (nodeUnallocated v),
               maybeToAttr toAttrFrTyp "unpredictable" (nodeUnpredictable v),
               maybeToAttr toAttrFrTyp "reserved_nop_hint"
                 (nodeReserved_nop_hint v)]

instance XmlAttrType Node_unallocated where
        fromAttrToTyp n (N n', v)
          | n == n' = translate (attr2str v)
          | otherwise = Nothing
          where translate "0" = Just Node_unallocated_0
                translate "1" = Just Node_unallocated_1
                translate _ = Nothing
        toAttrFrTyp n Node_unallocated_0 = Just (N n, str2attr "0")
        toAttrFrTyp n Node_unallocated_1 = Just (N n, str2attr "1")

instance XmlAttrType Node_unpredictable where
        fromAttrToTyp n (N n', v)
          | n == n' = translate (attr2str v)
          | otherwise = Nothing
          where translate "0" = Just Node_unpredictable_0
                translate "1" = Just Node_unpredictable_1
                translate _ = Nothing
        toAttrFrTyp n Node_unpredictable_0 = Just (N n, str2attr "0")
        toAttrFrTyp n Node_unpredictable_1 = Just (N n, str2attr "1")

instance XmlAttrType Node_reserved_nop_hint where
        fromAttrToTyp n (N n', v)
          | n == n' = translate (attr2str v)
          | otherwise = Nothing
          where translate "0" = Just Node_reserved_nop_hint_0
                translate "1" = Just Node_reserved_nop_hint_1
                translate _ = Nothing
        toAttrFrTyp n Node_reserved_nop_hint_0 = Just (N n, str2attr "0")
        toAttrFrTyp n Node_reserved_nop_hint_1 = Just (N n, str2attr "1")

instance HTypeable Hierarchy where
        toHType x = Defined "hierarchy" [] []

instance XmlContent Hierarchy where
        toContents (Hierarchy a b)
          = [CElem
               (Elem (N "hierarchy") [] (toContents a ++ concatMap toContents b))
               ()]
        parseContents
          = do e@(Elem _ [] _) <- element ["hierarchy"]
               interior e $
                 return (Hierarchy) `apply` parseContents `apply` many parseContents
              `adjustErr` ("in <hierarchy>, " ++)

instance HTypeable Groups where
        toHType x = Defined "groups" [] []

instance XmlContent Groups where
        toContents (Groups as a)
          = [CElem (Elem (N "groups") (toAttrs as) (toContents a)) ()]
        parseContents
          = do e@(Elem _ as _) <- element ["groups"]
               interior e $ return (Groups (fromAttrs as)) `apply` parseContents
              `adjustErr` ("in <groups>, " ++)

instance XmlAttributes Groups_Attrs where
        fromAttrs as
          = Groups_Attrs{groupsHeading =
                           definiteA fromAttrToStr "groups" "heading" as}
        toAttrs v = catMaybes [toAttrFrStr "heading" (groupsHeading v)]

instance HTypeable Funcgroupheader where
        toHType x = Defined "funcgroupheader" [] []

instance XmlContent Funcgroupheader where
        toContents (Funcgroupheader as a)
          = [CElem (Elem (N "funcgroupheader") (toAttrs as) (toText a)) ()]
        parseContents
          = do e@(Elem _ as _) <- element ["funcgroupheader"]
               interior e $
                 return (Funcgroupheader (fromAttrs as)) `apply`
                   (text `onFail` return "")
              `adjustErr` ("in <funcgroupheader>, " ++)

instance XmlAttributes Funcgroupheader_Attrs where
        fromAttrs as
          = Funcgroupheader_Attrs{funcgroupheaderId =
                                    definiteA fromAttrToStr "funcgroupheader" "id" as}
        toAttrs v = catMaybes [toAttrFrStr "id" (funcgroupheaderId v)]

instance HTypeable Iclass_sect where
        toHType x = Defined "iclass_sect" [] []

instance XmlContent Iclass_sect where
        toContents (Iclass_sect as a b)
          = [CElem
               (Elem (N "iclass_sect") (toAttrs as)
                  (toContents a ++ toContents b))
               ()]
        parseContents
          = do e@(Elem _ as _) <- element ["iclass_sect"]
               interior e $
                 return (Iclass_sect (fromAttrs as)) `apply` parseContents `apply`
                   parseContents
              `adjustErr` ("in <iclass_sect>, " ++)

instance XmlAttributes Iclass_sect_Attrs where
        fromAttrs as
          = Iclass_sect_Attrs{iclass_sectId =
                                definiteA fromAttrToStr "iclass_sect" "id" as,
                              iclass_sectTitle =
                                definiteA fromAttrToStr "iclass_sect" "title" as}
        toAttrs v
          = catMaybes
              [toAttrFrStr "id" (iclass_sectId v),
               toAttrFrStr "title" (iclass_sectTitle v)]

instance HTypeable Mapping where
        toHType x = Defined "mapping" [] []

instance XmlContent Mapping where
        toContents as = [CElem (Elem (N "mapping") (toAttrs as) []) ()]
        parseContents
          = do (Elem _ as []) <- element ["mapping"]
               return (fromAttrs as)
              `adjustErr` ("in <mapping>, " ++)

instance XmlAttributes Mapping where
        fromAttrs as
          = Mapping{mappingFrom_isa = possibleA fromAttrToStr "from_isa" as,
                    mappingFrom = definiteA fromAttrToStr "mapping" "from" as,
                    mappingTo_isa = definiteA fromAttrToStr "mapping" "to_isa" as,
                    mappingTo = definiteA fromAttrToStr "mapping" "to" as}
        toAttrs v
          = catMaybes
              [maybeToAttr toAttrFrStr "from_isa" (mappingFrom_isa v),
               toAttrFrStr "from" (mappingFrom v),
               toAttrFrStr "to_isa" (mappingTo_isa v),
               toAttrFrStr "to" (mappingTo v)]

instance HTypeable Mappings where
        toHType x = Defined "mappings" [] []

instance XmlContent Mappings where
        toContents (Mappings a)
          = [CElem (Elem (N "mappings") [] (concatMap toContents a)) ()]
        parseContents
          = do e@(Elem _ [] _) <- element ["mappings"]
               interior e $ return (Mappings) `apply` many parseContents
              `adjustErr` ("in <mappings>, " ++)

instance HTypeable Encodingindex where
        toHType x = Defined "encodingindex" [] []

instance XmlContent Encodingindex where
        toContents (Encodingindex as a b c d e)
          = [CElem
               (Elem (N "encodingindex") (toAttrs as)
                  (maybe [] toContents a ++
                     maybe [] toContents b ++
                       toContents c ++ toContents d ++ maybe [] toContents e))
               ()]
        parseContents
          = do e@(Elem _ as _) <- element ["encodingindex"]
               interior e $
                 return (Encodingindex (fromAttrs as)) `apply`
                   optional parseContents
                   `apply` optional parseContents
                   `apply` parseContents
                   `apply` parseContents
                   `apply` optional parseContents
              `adjustErr` ("in <encodingindex>, " ++)

instance XmlAttributes Encodingindex_Attrs where
        fromAttrs as
          = Encodingindex_Attrs{encodingindexInstructionset =
                                  possibleA fromAttrToStr "instructionset" as,
                                encodingindexTitle = possibleA fromAttrToStr "title" as}
        toAttrs v
          = catMaybes
              [maybeToAttr toAttrFrStr "instructionset"
                 (encodingindexInstructionset v),
               maybeToAttr toAttrFrStr "title" (encodingindexTitle v)]
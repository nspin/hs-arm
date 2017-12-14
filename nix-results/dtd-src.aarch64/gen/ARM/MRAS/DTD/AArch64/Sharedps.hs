module ARM.MRAS.DTD.AArch64.Sharedps where
import Text.XML.HaXml.OneOfN
import Prelude hiding (Right, Left)
import Text.XML.HaXml.XmlContent hiding (Content, List)
import Text.XML.HaXml.Types hiding (Content, Name)

newtype Aml_para = Aml_para [Aml_para_]
                 deriving (Eq, Show)

data Aml_para_ = Aml_para_Str String
               | Aml_para_A A
               | Aml_para_Anchor Anchor
               | Aml_para_Txt Txt
               deriving (Eq, Show)

newtype Aml_bullets = Aml_bullets [Aml_bullets_]
                    deriving (Eq, Show)

data Aml_bullets_ = Aml_bullets_Aml_bullets Aml_bullets
                  | Aml_bullets_Aml_bullet Aml_bullet
                  deriving (Eq, Show)

newtype Aml_bullet = Aml_bullet [Aml_bullet_]
                   deriving (Eq, Show)

data Aml_bullet_ = Aml_bullet_Str String
                 | Aml_bullet_A A
                 | Aml_bullet_Anchor Anchor
                 | Aml_bullet_Txt Txt
                 deriving (Eq, Show)

newtype Heading = Heading [Heading_]
                deriving (Eq, Show)

data Heading_ = Heading_Str String
              | Heading_A A
              | Heading_Anchor Anchor
              | Heading_Txt Txt
              deriving (Eq, Show)

newtype Desc = Desc Brief
             deriving (Eq, Show)

newtype Brief = Brief [Brief_]
              deriving (Eq, Show)

data Brief_ = Brief_Str String
            | Brief_A A
            | Brief_Anchor Anchor
            | Brief_Txt Txt
            deriving (Eq, Show)

data Ps_section = Ps_sectionPs Ps_section_Attrs (List1 Ps)
                | Ps_sectionPsheading_Codegroup Ps_section_Attrs
                                                (List1 ((Maybe Psheading), Codegroup))
                deriving (Eq, Show)

data Ps_section_Attrs = Ps_section_Attrs{ps_sectionHowmany ::
                                         String}
                      deriving (Eq, Show)

data Ps = Ps Ps_Attrs (Maybe Psdoc) (Maybe Pstext)
        deriving (Eq, Show)

data Ps_Attrs = Ps_Attrs{psName :: String,
                         psSource :: (Maybe String), psMylink :: (Maybe String),
                         psEnclabels :: (Maybe String), psDiagram :: (Maybe String),
                         psSections :: String, psSecttype :: (Maybe String)}
              deriving (Eq, Show)

newtype Psdoc = Psdoc String
              deriving (Eq, Show)

data Pstext = Pstext Pstext_Attrs [Pstext_]
            deriving (Eq, Show)

data Pstext_Attrs = Pstext_Attrs{pstextSection :: String,
                                 pstextMayhavelinks :: (Maybe String),
                                 pstextRep_section :: (Maybe String)}
                  deriving (Eq, Show)

data Pstext_ = Pstext_Str String
             | Pstext_A A
             | Pstext_Anchor Anchor
             deriving (Eq, Show)

data A = A A_Attrs [String]
       deriving (Eq, Show)

data A_Attrs = A_Attrs{aHref :: (Maybe String),
                       aLink :: (Maybe String), aFile :: (Maybe String),
                       aHover :: (Maybe String)}
             deriving (Eq, Show)

data Anchor = Anchor Anchor_Attrs String
            deriving (Eq, Show)

data Anchor_Attrs = Anchor_Attrs{anchorLink :: String,
                                 anchorHover :: (Maybe String)}
                  deriving (Eq, Show)

data Instructionsection = Instructionsection Instructionsection_Attrs
                                             Heading Desc Ps_section
                        deriving (Eq, Show)

data Instructionsection_Attrs = Instructionsection_Attrs{instructionsectionId
                                                         :: String,
                                                         instructionsectionTitle :: String,
                                                         instructionsectionTags :: (Maybe String),
                                                         instructionsectionType ::
                                                         Instructionsection_type}
                              deriving (Eq, Show)

data Instructionsection_type = Instructionsection_type_pseudocode
                             deriving (Eq, Show)

newtype Psheading = Psheading [Psheading_]
                  deriving (Eq, Show)

data Psheading_ = Psheading_Aml_para Aml_para
                | Psheading_Aml_bullets Aml_bullets
                deriving (Eq, Show)

data Codegroup = Codegroup Codegroup_Attrs (List1 Code)
               deriving (Eq, Show)

data Codegroup_Attrs = Codegroup_Attrs{codegroupId ::
                                       (Maybe String),
                                       codegroupMylink :: (Maybe String),
                                       codegroupHeading :: (Maybe String), codegroupFile :: String,
                                       codegroupLine :: String}
                     deriving (Eq, Show)

data Code = Code Code_Attrs (Maybe Codeintro) (List1 Asl_line)
          deriving (Eq, Show)

data Code_Attrs = Code_Attrs{codeSection :: (Maybe String),
                             codeHeading :: (Maybe String)}
                deriving (Eq, Show)

newtype Codeintro = Codeintro [Codeintro_]
                  deriving (Eq, Show)

data Codeintro_ = Codeintro_Aml_para Aml_para
                | Codeintro_Aml_bullets Aml_bullets
                deriving (Eq, Show)

data Asl_line = Asl_line Asl_line_Attrs [Asl_line_]
              deriving (Eq, Show)

data Asl_line_Attrs = Asl_line_Attrs{asl_lineFst ::
                                     (Maybe Asl_line_fst),
                                     asl_lineLst :: (Maybe Asl_line_lst),
                                     asl_lineHdr :: (Maybe Asl_line_hdr),
                                     asl_lineDoc :: (Maybe Asl_line_doc),
                                     asl_lineDontshow :: (Maybe Asl_line_dontshow),
                                     asl_lineIndent :: (Maybe String)}
                    deriving (Eq, Show)

data Asl_line_ = Asl_line_Str String
               | Asl_line_A A
               | Asl_line_Anchor Anchor
               deriving (Eq, Show)

data Asl_line_fst = Asl_line_fst_1
                  deriving (Eq, Show)

data Asl_line_lst = Asl_line_lst_1
                  deriving (Eq, Show)

data Asl_line_hdr = Asl_line_hdr_1
                  deriving (Eq, Show)

data Asl_line_doc = Asl_line_doc_1
                  deriving (Eq, Show)

data Asl_line_dontshow = Asl_line_dontshow_1
                       deriving (Eq, Show)

newtype Amltext = Amltext String
                deriving (Eq, Show)

data Txt = Txt Txt_Attrs [Txt_]
         deriving (Eq, Show)

data Txt_Attrs = Txt_Attrs{txtClass :: (Maybe String)}
               deriving (Eq, Show)

data Txt_ = Txt_Str String
          | Txt_A A
          | Txt_Anchor Anchor
          | Txt_Txt Txt
          deriving (Eq, Show)

instance HTypeable Aml_para where
        toHType x = Defined "aml-para" [] []

instance XmlContent Aml_para where
        toContents (Aml_para a)
          = [CElem (Elem (N "aml-para") [] (concatMap toContents a)) ()]
        parseContents
          = do e@(Elem _ [] _) <- element ["aml-para"]
               interior e $ return (Aml_para) `apply` many parseContents
              `adjustErr` ("in <aml-para>, " ++)

instance HTypeable Aml_para_ where
        toHType x = Defined "aml-para" [] []

instance XmlContent Aml_para_ where
        toContents (Aml_para_Str a) = toText a
        toContents (Aml_para_A a) = toContents a
        toContents (Aml_para_Anchor a) = toContents a
        toContents (Aml_para_Txt a) = toContents a
        parseContents
          = oneOf
              [return (Aml_para_Str) `apply` text,
               return (Aml_para_A) `apply` parseContents,
               return (Aml_para_Anchor) `apply` parseContents,
               return (Aml_para_Txt) `apply` parseContents]
              `adjustErr` ("in <aml-para>, " ++)

instance HTypeable Aml_bullets where
        toHType x = Defined "aml-bullets" [] []

instance XmlContent Aml_bullets where
        toContents (Aml_bullets a)
          = [CElem (Elem (N "aml-bullets") [] (concatMap toContents a)) ()]
        parseContents
          = do e@(Elem _ [] _) <- element ["aml-bullets"]
               interior e $ return (Aml_bullets) `apply` many parseContents
              `adjustErr` ("in <aml-bullets>, " ++)

instance HTypeable Aml_bullets_ where
        toHType x = Defined "aml-bullets" [] []

instance XmlContent Aml_bullets_ where
        toContents (Aml_bullets_Aml_bullets a) = toContents a
        toContents (Aml_bullets_Aml_bullet a) = toContents a
        parseContents
          = oneOf
              [return (Aml_bullets_Aml_bullets) `apply` parseContents,
               return (Aml_bullets_Aml_bullet) `apply` parseContents]
              `adjustErr` ("in <aml-bullets>, " ++)

instance HTypeable Aml_bullet where
        toHType x = Defined "aml-bullet" [] []

instance XmlContent Aml_bullet where
        toContents (Aml_bullet a)
          = [CElem (Elem (N "aml-bullet") [] (concatMap toContents a)) ()]
        parseContents
          = do e@(Elem _ [] _) <- element ["aml-bullet"]
               interior e $ return (Aml_bullet) `apply` many parseContents
              `adjustErr` ("in <aml-bullet>, " ++)

instance HTypeable Aml_bullet_ where
        toHType x = Defined "aml-bullet" [] []

instance XmlContent Aml_bullet_ where
        toContents (Aml_bullet_Str a) = toText a
        toContents (Aml_bullet_A a) = toContents a
        toContents (Aml_bullet_Anchor a) = toContents a
        toContents (Aml_bullet_Txt a) = toContents a
        parseContents
          = oneOf
              [return (Aml_bullet_Str) `apply` text,
               return (Aml_bullet_A) `apply` parseContents,
               return (Aml_bullet_Anchor) `apply` parseContents,
               return (Aml_bullet_Txt) `apply` parseContents]
              `adjustErr` ("in <aml-bullet>, " ++)

instance HTypeable Heading where
        toHType x = Defined "heading" [] []

instance XmlContent Heading where
        toContents (Heading a)
          = [CElem (Elem (N "heading") [] (concatMap toContents a)) ()]
        parseContents
          = do e@(Elem _ [] _) <- element ["heading"]
               interior e $ return (Heading) `apply` many parseContents
              `adjustErr` ("in <heading>, " ++)

instance HTypeable Heading_ where
        toHType x = Defined "heading" [] []

instance XmlContent Heading_ where
        toContents (Heading_Str a) = toText a
        toContents (Heading_A a) = toContents a
        toContents (Heading_Anchor a) = toContents a
        toContents (Heading_Txt a) = toContents a
        parseContents
          = oneOf
              [return (Heading_Str) `apply` text,
               return (Heading_A) `apply` parseContents,
               return (Heading_Anchor) `apply` parseContents,
               return (Heading_Txt) `apply` parseContents]
              `adjustErr` ("in <heading>, " ++)

instance HTypeable Desc where
        toHType x = Defined "desc" [] []

instance XmlContent Desc where
        toContents (Desc a)
          = [CElem (Elem (N "desc") [] (toContents a)) ()]
        parseContents
          = do e@(Elem _ [] _) <- element ["desc"]
               interior e $ return (Desc) `apply` parseContents
              `adjustErr` ("in <desc>, " ++)

instance HTypeable Brief where
        toHType x = Defined "brief" [] []

instance XmlContent Brief where
        toContents (Brief a)
          = [CElem (Elem (N "brief") [] (concatMap toContents a)) ()]
        parseContents
          = do e@(Elem _ [] _) <- element ["brief"]
               interior e $ return (Brief) `apply` many parseContents
              `adjustErr` ("in <brief>, " ++)

instance HTypeable Brief_ where
        toHType x = Defined "brief" [] []

instance XmlContent Brief_ where
        toContents (Brief_Str a) = toText a
        toContents (Brief_A a) = toContents a
        toContents (Brief_Anchor a) = toContents a
        toContents (Brief_Txt a) = toContents a
        parseContents
          = oneOf
              [return (Brief_Str) `apply` text,
               return (Brief_A) `apply` parseContents,
               return (Brief_Anchor) `apply` parseContents,
               return (Brief_Txt) `apply` parseContents]
              `adjustErr` ("in <brief>, " ++)

instance HTypeable Ps_section where
        toHType x = Defined "ps_section" [] []

instance XmlContent Ps_section where
        toContents (Ps_sectionPs as a)
          = [CElem (Elem (N "ps_section") (toAttrs as) (toContents a)) ()]
        toContents (Ps_sectionPsheading_Codegroup as a)
          = [CElem (Elem (N "ps_section") (toAttrs as) (toContents a)) ()]
        parseContents
          = do e@(Elem _ as _) <- element ["ps_section"]
               interior e $
                 oneOf
                   [return (Ps_sectionPs (fromAttrs as)) `apply` parseContents,
                    return (Ps_sectionPsheading_Codegroup (fromAttrs as)) `apply`
                      parseContents]
                   `adjustErr` ("in <ps_section>, " ++)

instance XmlAttributes Ps_section_Attrs where
        fromAttrs as
          = Ps_section_Attrs{ps_sectionHowmany =
                               definiteA fromAttrToStr "ps_section" "howmany" as}
        toAttrs v = catMaybes [toAttrFrStr "howmany" (ps_sectionHowmany v)]

instance HTypeable Ps where
        toHType x = Defined "ps" [] []

instance XmlContent Ps where
        toContents (Ps as a b)
          = [CElem
               (Elem (N "ps") (toAttrs as)
                  (maybe [] toContents a ++ maybe [] toContents b))
               ()]
        parseContents
          = do e@(Elem _ as _) <- element ["ps"]
               interior e $
                 return (Ps (fromAttrs as)) `apply` optional parseContents `apply`
                   optional parseContents
              `adjustErr` ("in <ps>, " ++)

instance XmlAttributes Ps_Attrs where
        fromAttrs as
          = Ps_Attrs{psName = definiteA fromAttrToStr "ps" "name" as,
                     psSource = possibleA fromAttrToStr "source" as,
                     psMylink = possibleA fromAttrToStr "mylink" as,
                     psEnclabels = possibleA fromAttrToStr "enclabels" as,
                     psDiagram = possibleA fromAttrToStr "diagram" as,
                     psSections = definiteA fromAttrToStr "ps" "sections" as,
                     psSecttype = possibleA fromAttrToStr "secttype" as}
        toAttrs v
          = catMaybes
              [toAttrFrStr "name" (psName v),
               maybeToAttr toAttrFrStr "source" (psSource v),
               maybeToAttr toAttrFrStr "mylink" (psMylink v),
               maybeToAttr toAttrFrStr "enclabels" (psEnclabels v),
               maybeToAttr toAttrFrStr "diagram" (psDiagram v),
               toAttrFrStr "sections" (psSections v),
               maybeToAttr toAttrFrStr "secttype" (psSecttype v)]

instance HTypeable Psdoc where
        toHType x = Defined "psdoc" [] []

instance XmlContent Psdoc where
        toContents (Psdoc a) = [CElem (Elem (N "psdoc") [] (toText a)) ()]
        parseContents
          = do e@(Elem _ [] _) <- element ["psdoc"]
               interior e $ return (Psdoc) `apply` (text `onFail` return "")
              `adjustErr` ("in <psdoc>, " ++)

instance HTypeable Pstext where
        toHType x = Defined "pstext" [] []

instance XmlContent Pstext where
        toContents (Pstext as a)
          = [CElem (Elem (N "pstext") (toAttrs as) (concatMap toContents a))
               ()]
        parseContents
          = do e@(Elem _ as _) <- element ["pstext"]
               interior e $
                 return (Pstext (fromAttrs as)) `apply` many parseContents
              `adjustErr` ("in <pstext>, " ++)

instance XmlAttributes Pstext_Attrs where
        fromAttrs as
          = Pstext_Attrs{pstextSection =
                           definiteA fromAttrToStr "pstext" "section" as,
                         pstextMayhavelinks = possibleA fromAttrToStr "mayhavelinks" as,
                         pstextRep_section = possibleA fromAttrToStr "rep_section" as}
        toAttrs v
          = catMaybes
              [toAttrFrStr "section" (pstextSection v),
               maybeToAttr toAttrFrStr "mayhavelinks" (pstextMayhavelinks v),
               maybeToAttr toAttrFrStr "rep_section" (pstextRep_section v)]

instance HTypeable Pstext_ where
        toHType x = Defined "pstext" [] []

instance XmlContent Pstext_ where
        toContents (Pstext_Str a) = toText a
        toContents (Pstext_A a) = toContents a
        toContents (Pstext_Anchor a) = toContents a
        parseContents
          = oneOf
              [return (Pstext_Str) `apply` text,
               return (Pstext_A) `apply` parseContents,
               return (Pstext_Anchor) `apply` parseContents]
              `adjustErr` ("in <pstext>, " ++)

instance HTypeable A where
        toHType x = Defined "a" [] []

instance XmlContent A where
        toContents (A as a)
          = [CElem (Elem (N "a") (toAttrs as) (concatMap toContents a)) ()]
        parseContents
          = do e@(Elem _ as _) <- element ["a"]
               interior e $ return (A (fromAttrs as)) `apply` many parseContents
              `adjustErr` ("in <a>, " ++)

instance XmlAttributes A_Attrs where
        fromAttrs as
          = A_Attrs{aHref = possibleA fromAttrToStr "href" as,
                    aLink = possibleA fromAttrToStr "link" as,
                    aFile = possibleA fromAttrToStr "file" as,
                    aHover = possibleA fromAttrToStr "hover" as}
        toAttrs v
          = catMaybes
              [maybeToAttr toAttrFrStr "href" (aHref v),
               maybeToAttr toAttrFrStr "link" (aLink v),
               maybeToAttr toAttrFrStr "file" (aFile v),
               maybeToAttr toAttrFrStr "hover" (aHover v)]

instance HTypeable Anchor where
        toHType x = Defined "anchor" [] []

instance XmlContent Anchor where
        toContents (Anchor as a)
          = [CElem (Elem (N "anchor") (toAttrs as) (toText a)) ()]
        parseContents
          = do e@(Elem _ as _) <- element ["anchor"]
               interior e $
                 return (Anchor (fromAttrs as)) `apply` (text `onFail` return "")
              `adjustErr` ("in <anchor>, " ++)

instance XmlAttributes Anchor_Attrs where
        fromAttrs as
          = Anchor_Attrs{anchorLink =
                           definiteA fromAttrToStr "anchor" "link" as,
                         anchorHover = possibleA fromAttrToStr "hover" as}
        toAttrs v
          = catMaybes
              [toAttrFrStr "link" (anchorLink v),
               maybeToAttr toAttrFrStr "hover" (anchorHover v)]

instance HTypeable Instructionsection where
        toHType x = Defined "instructionsection" [] []

instance XmlContent Instructionsection where
        toContents (Instructionsection as a b c)
          = [CElem
               (Elem (N "instructionsection") (toAttrs as)
                  (toContents a ++ toContents b ++ toContents c))
               ()]
        parseContents
          = do e@(Elem _ as _) <- element ["instructionsection"]
               interior e $
                 return (Instructionsection (fromAttrs as)) `apply` parseContents
                   `apply` parseContents
                   `apply` parseContents
              `adjustErr` ("in <instructionsection>, " ++)

instance XmlAttributes Instructionsection_Attrs where
        fromAttrs as
          = Instructionsection_Attrs{instructionsectionId =
                                       definiteA fromAttrToStr "instructionsection" "id" as,
                                     instructionsectionTitle =
                                       definiteA fromAttrToStr "instructionsection" "title" as,
                                     instructionsectionTags = possibleA fromAttrToStr "tags" as,
                                     instructionsectionType =
                                       definiteA fromAttrToTyp "instructionsection" "type" as}
        toAttrs v
          = catMaybes
              [toAttrFrStr "id" (instructionsectionId v),
               toAttrFrStr "title" (instructionsectionTitle v),
               maybeToAttr toAttrFrStr "tags" (instructionsectionTags v),
               toAttrFrTyp "type" (instructionsectionType v)]

instance XmlAttrType Instructionsection_type where
        fromAttrToTyp n (N n', v)
          | n == n' = translate (attr2str v)
          | otherwise = Nothing
          where translate "pseudocode"
                  = Just Instructionsection_type_pseudocode
                translate _ = Nothing
        toAttrFrTyp n Instructionsection_type_pseudocode
          = Just (N n, str2attr "pseudocode")

instance HTypeable Psheading where
        toHType x = Defined "psheading" [] []

instance XmlContent Psheading where
        toContents (Psheading a)
          = [CElem (Elem (N "psheading") [] (concatMap toContents a)) ()]
        parseContents
          = do e@(Elem _ [] _) <- element ["psheading"]
               interior e $ return (Psheading) `apply` many parseContents
              `adjustErr` ("in <psheading>, " ++)

instance HTypeable Psheading_ where
        toHType x = Defined "psheading" [] []

instance XmlContent Psheading_ where
        toContents (Psheading_Aml_para a) = toContents a
        toContents (Psheading_Aml_bullets a) = toContents a
        parseContents
          = oneOf
              [return (Psheading_Aml_para) `apply` parseContents,
               return (Psheading_Aml_bullets) `apply` parseContents]
              `adjustErr` ("in <psheading>, " ++)

instance HTypeable Codegroup where
        toHType x = Defined "codegroup" [] []

instance XmlContent Codegroup where
        toContents (Codegroup as a)
          = [CElem (Elem (N "codegroup") (toAttrs as) (toContents a)) ()]
        parseContents
          = do e@(Elem _ as _) <- element ["codegroup"]
               interior e $
                 return (Codegroup (fromAttrs as)) `apply` parseContents
              `adjustErr` ("in <codegroup>, " ++)

instance XmlAttributes Codegroup_Attrs where
        fromAttrs as
          = Codegroup_Attrs{codegroupId = possibleA fromAttrToStr "id" as,
                            codegroupMylink = possibleA fromAttrToStr "mylink" as,
                            codegroupHeading = possibleA fromAttrToStr "heading" as,
                            codegroupFile = definiteA fromAttrToStr "codegroup" "file" as,
                            codegroupLine = definiteA fromAttrToStr "codegroup" "line" as}
        toAttrs v
          = catMaybes
              [maybeToAttr toAttrFrStr "id" (codegroupId v),
               maybeToAttr toAttrFrStr "mylink" (codegroupMylink v),
               maybeToAttr toAttrFrStr "heading" (codegroupHeading v),
               toAttrFrStr "file" (codegroupFile v),
               toAttrFrStr "line" (codegroupLine v)]

instance HTypeable Code where
        toHType x = Defined "code" [] []

instance XmlContent Code where
        toContents (Code as a b)
          = [CElem
               (Elem (N "code") (toAttrs as)
                  (maybe [] toContents a ++ toContents b))
               ()]
        parseContents
          = do e@(Elem _ as _) <- element ["code"]
               interior e $
                 return (Code (fromAttrs as)) `apply` optional parseContents `apply`
                   parseContents
              `adjustErr` ("in <code>, " ++)

instance XmlAttributes Code_Attrs where
        fromAttrs as
          = Code_Attrs{codeSection = possibleA fromAttrToStr "section" as,
                       codeHeading = possibleA fromAttrToStr "heading" as}
        toAttrs v
          = catMaybes
              [maybeToAttr toAttrFrStr "section" (codeSection v),
               maybeToAttr toAttrFrStr "heading" (codeHeading v)]

instance HTypeable Codeintro where
        toHType x = Defined "codeintro" [] []

instance XmlContent Codeintro where
        toContents (Codeintro a)
          = [CElem (Elem (N "codeintro") [] (concatMap toContents a)) ()]
        parseContents
          = do e@(Elem _ [] _) <- element ["codeintro"]
               interior e $ return (Codeintro) `apply` many parseContents
              `adjustErr` ("in <codeintro>, " ++)

instance HTypeable Codeintro_ where
        toHType x = Defined "codeintro" [] []

instance XmlContent Codeintro_ where
        toContents (Codeintro_Aml_para a) = toContents a
        toContents (Codeintro_Aml_bullets a) = toContents a
        parseContents
          = oneOf
              [return (Codeintro_Aml_para) `apply` parseContents,
               return (Codeintro_Aml_bullets) `apply` parseContents]
              `adjustErr` ("in <codeintro>, " ++)

instance HTypeable Asl_line where
        toHType x = Defined "asl_line" [] []

instance XmlContent Asl_line where
        toContents (Asl_line as a)
          = [CElem
               (Elem (N "asl_line") (toAttrs as) (concatMap toContents a))
               ()]
        parseContents
          = do e@(Elem _ as _) <- element ["asl_line"]
               interior e $
                 return (Asl_line (fromAttrs as)) `apply` many parseContents
              `adjustErr` ("in <asl_line>, " ++)

instance XmlAttributes Asl_line_Attrs where
        fromAttrs as
          = Asl_line_Attrs{asl_lineFst = possibleA fromAttrToTyp "fst" as,
                           asl_lineLst = possibleA fromAttrToTyp "lst" as,
                           asl_lineHdr = possibleA fromAttrToTyp "hdr" as,
                           asl_lineDoc = possibleA fromAttrToTyp "doc" as,
                           asl_lineDontshow = possibleA fromAttrToTyp "dontshow" as,
                           asl_lineIndent = possibleA fromAttrToStr "indent" as}
        toAttrs v
          = catMaybes
              [maybeToAttr toAttrFrTyp "fst" (asl_lineFst v),
               maybeToAttr toAttrFrTyp "lst" (asl_lineLst v),
               maybeToAttr toAttrFrTyp "hdr" (asl_lineHdr v),
               maybeToAttr toAttrFrTyp "doc" (asl_lineDoc v),
               maybeToAttr toAttrFrTyp "dontshow" (asl_lineDontshow v),
               maybeToAttr toAttrFrStr "indent" (asl_lineIndent v)]

instance HTypeable Asl_line_ where
        toHType x = Defined "asl_line" [] []

instance XmlContent Asl_line_ where
        toContents (Asl_line_Str a) = toText a
        toContents (Asl_line_A a) = toContents a
        toContents (Asl_line_Anchor a) = toContents a
        parseContents
          = oneOf
              [return (Asl_line_Str) `apply` text,
               return (Asl_line_A) `apply` parseContents,
               return (Asl_line_Anchor) `apply` parseContents]
              `adjustErr` ("in <asl_line>, " ++)

instance XmlAttrType Asl_line_fst where
        fromAttrToTyp n (N n', v)
          | n == n' = translate (attr2str v)
          | otherwise = Nothing
          where translate "1" = Just Asl_line_fst_1
                translate _ = Nothing
        toAttrFrTyp n Asl_line_fst_1 = Just (N n, str2attr "1")

instance XmlAttrType Asl_line_lst where
        fromAttrToTyp n (N n', v)
          | n == n' = translate (attr2str v)
          | otherwise = Nothing
          where translate "1" = Just Asl_line_lst_1
                translate _ = Nothing
        toAttrFrTyp n Asl_line_lst_1 = Just (N n, str2attr "1")

instance XmlAttrType Asl_line_hdr where
        fromAttrToTyp n (N n', v)
          | n == n' = translate (attr2str v)
          | otherwise = Nothing
          where translate "1" = Just Asl_line_hdr_1
                translate _ = Nothing
        toAttrFrTyp n Asl_line_hdr_1 = Just (N n, str2attr "1")

instance XmlAttrType Asl_line_doc where
        fromAttrToTyp n (N n', v)
          | n == n' = translate (attr2str v)
          | otherwise = Nothing
          where translate "1" = Just Asl_line_doc_1
                translate _ = Nothing
        toAttrFrTyp n Asl_line_doc_1 = Just (N n, str2attr "1")

instance XmlAttrType Asl_line_dontshow where
        fromAttrToTyp n (N n', v)
          | n == n' = translate (attr2str v)
          | otherwise = Nothing
          where translate "1" = Just Asl_line_dontshow_1
                translate _ = Nothing
        toAttrFrTyp n Asl_line_dontshow_1 = Just (N n, str2attr "1")

instance HTypeable Amltext where
        toHType x = Defined "amltext" [] []

instance XmlContent Amltext where
        toContents (Amltext a)
          = [CElem (Elem (N "amltext") [] (toText a)) ()]
        parseContents
          = do e@(Elem _ [] _) <- element ["amltext"]
               interior e $ return (Amltext) `apply` (text `onFail` return "")
              `adjustErr` ("in <amltext>, " ++)

instance HTypeable Txt where
        toHType x = Defined "txt" [] []

instance XmlContent Txt where
        toContents (Txt as a)
          = [CElem (Elem (N "txt") (toAttrs as) (concatMap toContents a)) ()]
        parseContents
          = do e@(Elem _ as _) <- element ["txt"]
               interior e $ return (Txt (fromAttrs as)) `apply` many parseContents
              `adjustErr` ("in <txt>, " ++)

instance XmlAttributes Txt_Attrs where
        fromAttrs as
          = Txt_Attrs{txtClass = possibleA fromAttrToStr "class" as}
        toAttrs v
          = catMaybes [maybeToAttr toAttrFrStr "class" (txtClass v)]

instance HTypeable Txt_ where
        toHType x = Defined "txt" [] []

instance XmlContent Txt_ where
        toContents (Txt_Str a) = toText a
        toContents (Txt_A a) = toContents a
        toContents (Txt_Anchor a) = toContents a
        toContents (Txt_Txt a) = toContents a
        parseContents
          = oneOf
              [return (Txt_Str) `apply` text,
               return (Txt_A) `apply` parseContents,
               return (Txt_Anchor) `apply` parseContents,
               return (Txt_Txt) `apply` parseContents]
              `adjustErr` ("in <txt>, " ++)
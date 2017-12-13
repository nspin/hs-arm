module ARM.MRAS.DTD.A64.Allinstrs where
import Text.XML.HaXml.OneOfN
import Prelude hiding (Right, Left)
import Text.XML.HaXml.XmlContent hiding (Content, List)
import Text.XML.HaXml.Types hiding (Content, Name)

data A = A A_Attrs String
       deriving (Eq, Show)

data A_Attrs = A_Attrs{aHref :: (Maybe String),
                       aClass :: (Maybe String), aLink :: (Maybe String),
                       aFile :: (Maybe String), aHover :: (Maybe String),
                       aClassid :: (Maybe String)}
             deriving (Eq, Show)

data Account = Account Account_Attrs (Maybe Docvars) Intro
             deriving (Eq, Show)

data Account_Attrs = Account_Attrs{accountEncodedin ::
                                   (Maybe String)}
                   deriving (Eq, Show)

newtype Intro = Intro [Intro_]
              deriving (Eq, Show)

data Intro_ = Intro_Str String
            | Intro_A A
            deriving (Eq, Show)

data Allinstrs = Allinstrs Allinstrs_Attrs Title
                           (List1 (OneOf3 Para File Sect1))
               deriving (Eq, Show)

data Allinstrs_Attrs = Allinstrs_Attrs{allinstrsId :: String,
                                       allinstrsXreflabel :: String}
                     deriving (Eq, Show)

data File = FileAlphaindex File_Attrs Alphaindex
          | FileEncodingindex File_Attrs Encodingindex
          | FileInstructionsection File_Attrs Instructionsection
          | FileConstraint_text_mappings File_Attrs Constraint_text_mappings
          deriving (Eq, Show)

data File_Attrs = File_Attrs{fileType :: String,
                             fileFile :: String}
                deriving (Eq, Show)

data Alphaindex = Alphaindex Toptitle Iforms
                deriving (Eq, Show)

newtype Text = Text String
             deriving (Eq, Show)

data Asmtemplate = Asmtemplate Asmtemplate_Attrs [Asmtemplate_]
                 deriving (Eq, Show)

data Asmtemplate_Attrs = Asmtemplate_Attrs{asmtemplateClass ::
                                           (Maybe String),
                                           asmtemplateRole :: (Maybe Asmtemplate_role)}
                       deriving (Eq, Show)

data Asmtemplate_ = Asmtemplate_Str String
                  | Asmtemplate_Text Text
                  | Asmtemplate_A A
                  deriving (Eq, Show)

data Asmtemplate_role = Asmtemplate_role_alias_prototype
                      | Asmtemplate_role_alias_equivalent_to
                      deriving (Eq, Show)

data Box = Box Box_Attrs [C]
         deriving (Eq, Show)

data Box_Attrs = Box_Attrs{boxHibit :: (Maybe String),
                           boxName :: (Maybe String), boxUsename :: (Maybe String),
                           boxWidth :: (Maybe String), boxConstraint :: (Maybe String),
                           boxSettings :: (Maybe String), boxPsbits :: (Maybe String)}
               deriving (Eq, Show)

data C = C C_Attrs String
       deriving (Eq, Show)

data C_Attrs = C_Attrs{cColspan :: (Maybe String),
                       cHref :: (Maybe String)}
             deriving (Eq, Show)

data Desc = Desc Brief [Alg] (Maybe (Longer, [Alg]))
          deriving (Eq, Show)

data Brief = Brief Brief_Attrs [Brief_]
           deriving (Eq, Show)

data Brief_Attrs = Brief_Attrs{briefEnclist :: (Maybe String),
                               briefChecked :: (Maybe Brief_checked),
                               briefSynth :: (Maybe Brief_synth)}
                 deriving (Eq, Show)

data Brief_ = Brief_Str String
            | Brief_A A
            deriving (Eq, Show)

data Brief_checked = Brief_checked_yes
                   deriving (Eq, Show)

data Brief_synth = Brief_synth_single
                 | Brief_synth_multiple
                 deriving (Eq, Show)

data Alg = Alg Alg_Attrs [Alg_]
         deriving (Eq, Show)

data Alg_Attrs = Alg_Attrs{algHowmany :: (Maybe String)}
               deriving (Eq, Show)

data Alg_ = Alg_Str String
          | Alg_A A
          deriving (Eq, Show)

newtype Longer = Longer [Longer_]
               deriving (Eq, Show)

data Longer_ = Longer_Str String
             | Longer_A A
             deriving (Eq, Show)

data Encoding = Encoding Encoding_Attrs (Maybe Docvars) [Box]
                         (List1 Asmtemplate) (Maybe Equivalent_to)
              deriving (Eq, Show)

data Encoding_Attrs = Encoding_Attrs{encodingName :: String,
                                     encodingOneofinclass :: String, encodingOneof :: String,
                                     encodingLabel :: String, encodingBitdiffs :: (Maybe String),
                                     encodingTags :: (Maybe String)}
                    deriving (Eq, Show)

data Equivalent_to = Equivalent_to Asmtemplate Aliascond
                   deriving (Eq, Show)

newtype Aliascond = Aliascond [Aliascond_]
                  deriving (Eq, Show)

data Aliascond_ = Aliascond_Str String
                | Aliascond_A A
                | Aliascond_Anchor Anchor
                | Aliascond_Txt Txt
                deriving (Eq, Show)

data Encodingindex = Encodingindex Encodingindex_Attrs
                                   (Maybe Groups) Maintable
                                   (List1 ((Maybe Funcgroupheader), (List1 Iclass_sect)))
                   deriving (Eq, Show)

data Encodingindex_Attrs = Encodingindex_Attrs{encodingindexInstructionset
                                               :: String}
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

data Entry = Entry Entry_Attrs String
           deriving (Eq, Show)

data Entry_Attrs = Entry_Attrs{entryClass :: String,
                               entryIclasslink :: (Maybe String),
                               entryIclasslinkfile :: (Maybe String)}
                 deriving (Eq, Show)

newtype Row = Row (List1 Entry)
            deriving (Eq, Show)

data Tbody = TbodyRow (List1 Row)
           | TbodyTr (List1 Tr)
           deriving (Eq, Show)

data Thead = TheadRow Thead_Attrs (List1 Row)
           | TheadTr Thead_Attrs (List1 Tr)
           deriving (Eq, Show)

data Thead_Attrs = Thead_Attrs{theadClass :: (Maybe String)}
                 deriving (Eq, Show)

data Tgroup = Tgroup Tgroup_Attrs Thead Tbody
            deriving (Eq, Show)

data Tgroup_Attrs = Tgroup_Attrs{tgroupCols :: String}
                  deriving (Eq, Show)

data Table = Table Table_Attrs (List1 Tgroup)
           deriving (Eq, Show)

data Table_Attrs = Table_Attrs{tableClass :: String}
                 deriving (Eq, Show)

newtype After = After String
              deriving (Eq, Show)

data Definition = Definition Definition_Attrs Intro Table
                             (Maybe After)
                deriving (Eq, Show)

data Definition_Attrs = Definition_Attrs{definitionEncodedin ::
                                         String,
                                         definitionTabulatedwith :: (Maybe String)}
                      deriving (Eq, Show)

data Explanation_intro = Explanation_intro Explanation_intro_Attrs
                                           [Explanation_intro_]
                       deriving (Eq, Show)

data Explanation_intro_Attrs = Explanation_intro_Attrs{explanation_introHeadingsabove
                                                       :: String}
                             deriving (Eq, Show)

data Explanation_intro_ = Explanation_intro_Str String
                        | Explanation_intro_A A
                        deriving (Eq, Show)

data Explanations = Explanations Explanations_Attrs
                                 (Maybe Explanation_intro) [Explanation]
                  deriving (Eq, Show)

data Explanations_Attrs = Explanations_Attrs{explanationsScope ::
                                             String}
                        deriving (Eq, Show)

data Explanation = Explanation Explanation_Attrs Symbol
                               (OneOf2 Account Definition)
                 deriving (Eq, Show)

data Explanation_Attrs = Explanation_Attrs{explanationEnclist ::
                                           (Maybe String),
                                           explanationSymboldefcount :: (Maybe String),
                                           explanationTags :: (Maybe String)}
                       deriving (Eq, Show)

data Aliasmnem = Aliasmnem Aliasmnem_Attrs (Maybe Desc)
                           (OneOf2 (List1 Alias) (List1 Aliases))
               deriving (Eq, Show)

data Aliasmnem_Attrs = Aliasmnem_Attrs{aliasmnemMnemonic :: String,
                                       aliasmnemId :: String, aliasmnemHeading :: (Maybe String)}
                     deriving (Eq, Show)

data Aliases = Aliases Aliases_Attrs (List1 Alias)
             deriving (Eq, Show)

data Aliases_Attrs = Aliases_Attrs{aliasesConditions ::
                                   (Maybe String)}
                   deriving (Eq, Show)

data Alias = Alias Alias_Attrs [Alias_]
           deriving (Eq, Show)

data Alias_Attrs = Alias_Attrs{aliasEnctag :: (Maybe String),
                               aliasEncname :: String, aliasEquivalent_to :: String,
                               aliasAssembler_prototype :: String,
                               aliasConditions :: (Maybe String),
                               aliasDescription :: (Maybe String)}
                 deriving (Eq, Show)

data Alias_ = Alias_Str String
            | Alias_Asmtemplate Asmtemplate
            deriving (Eq, Show)

newtype Heading = Heading [Heading_]
                deriving (Eq, Show)

data Heading_ = Heading_Str String
              | Heading_A A
              deriving (Eq, Show)

data Instructiontable = Instructiontable Instructiontable_Attrs
                                         (List1 Col) Thead Tbody
                      deriving (Eq, Show)

data Instructiontable_Attrs = Instructiontable_Attrs{instructiontableCols
                                                     :: String,
                                                     instructiontableIclass :: String}
                            deriving (Eq, Show)

data Iclass_sect = Iclass_sect Iclass_sect_Attrs Regdiagram
                               Instructiontable
                 deriving (Eq, Show)

data Iclass_sect_Attrs = Iclass_sect_Attrs{iclass_sectId :: String,
                                           iclass_sectTitle :: String}
                       deriving (Eq, Show)

data Iclass = Iclass Iclass_Attrs (Maybe Docvars)
                     (Maybe Iclassintro) Regdiagram (List1 Encoding) (Maybe Ps_section)
            deriving (Eq, Show)

data Iclass_Attrs = Iclass_Attrs{iclassName :: String,
                                 iclassId :: String, iclassOneof :: String,
                                 iclassNo_encodings :: String, iclassIsa :: String}
                  deriving (Eq, Show)

data Iclassintro = Iclassintro Iclassintro_Attrs [Iclassintro_]
                 deriving (Eq, Show)

data Iclassintro_Attrs = Iclassintro_Attrs{iclassintroCount ::
                                           String}
                       deriving (Eq, Show)

data Iclassintro_ = Iclassintro_Txt Txt
                  | Iclassintro_A A
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

data Iform = Iform Iform_Attrs String
           deriving (Eq, Show)

data Iform_Attrs = Iform_Attrs{iformId :: String,
                               iformIformfile :: String, iformHeading :: String}
                 deriving (Eq, Show)

data Iforms = Iforms Iforms_Attrs (List1 Iform)
            deriving (Eq, Show)

data Iforms_Attrs = Iforms_Attrs{iformsTitle :: String}
                  deriving (Eq, Show)

newtype Docvars = Docvars (List1 Docvar)
                deriving (Eq, Show)

data Docvar = Docvar{docvarKey :: String, docvarValue :: String}
            deriving (Eq, Show)

data Instructionsection = Instructionsection Instructionsection_Attrs
                                             (Maybe Docvars) Heading Desc
                                             (Maybe (OneOf2 Alias_list Aliasto)) (Maybe Classes)
                                             [Aliasmnem] (Maybe Explanations) (Maybe Aliastablehook)
                                             [Ps_section] (Maybe Exceptions)
                        deriving (Eq, Show)

data Instructionsection_Attrs = Instructionsection_Attrs{instructionsectionId
                                                         :: String,
                                                         instructionsectionTitle :: String,
                                                         instructionsectionTags :: (Maybe String),
                                                         instructionsectionType ::
                                                         Instructionsection_type}
                              deriving (Eq, Show)

data Instructionsection_type = Instructionsection_type_instruction
                             | Instructionsection_type_alias
                             | Instructionsection_type_pseudocode
                             deriving (Eq, Show)

newtype Constraint_text_mappings = Constraint_text_mappings [Constraint_text_mapping]
                                 deriving (Eq, Show)

data Constraint_text_mapping = Constraint_text_mapping Constraint_id
                                                       Constraint_text
                             deriving (Eq, Show)

newtype Constraint_id = Constraint_id String
                      deriving (Eq, Show)

newtype Constraint_text = Constraint_text String
                        deriving (Eq, Show)

data Classes = Classes Classesintro (List1 Iclass)
             deriving (Eq, Show)

data Classesintro = Classesintro Classesintro_Attrs [Classesintro_]
                  deriving (Eq, Show)

data Classesintro_Attrs = Classesintro_Attrs{classesintroCount ::
                                             String}
                        deriving (Eq, Show)

data Classesintro_ = Classesintro_Txt Txt
                   | Classesintro_A A
                   deriving (Eq, Show)

data Alias_list = Alias_list Alias_list_Attrs
                             (Maybe Alias_list_intro) [Aliasref] (Maybe Alias_list_outro)
                deriving (Eq, Show)

data Alias_list_Attrs = Alias_list_Attrs{alias_listHowmany ::
                                         String}
                      deriving (Eq, Show)

newtype Alias_list_intro = Alias_list_intro String
                         deriving (Eq, Show)

data Aliasref = Aliasref Aliasref_Attrs Text (List1 Aliaspref)
              deriving (Eq, Show)

data Aliasref_Attrs = Aliasref_Attrs{aliasrefAliaspageid :: String,
                                     aliasrefAliasfile :: String, aliasrefHover :: (Maybe String),
                                     aliasrefPunct :: String}
                    deriving (Eq, Show)

data Aliaspref = Aliaspref Aliaspref_Attrs [Aliaspref_]
               deriving (Eq, Show)

data Aliaspref_Attrs = Aliaspref_Attrs{aliasprefLabels ::
                                       (Maybe String)}
                     deriving (Eq, Show)

data Aliaspref_ = Aliaspref_Str String
                | Aliaspref_A A
                | Aliaspref_Anchor Anchor
                | Aliaspref_Txt Txt
                deriving (Eq, Show)

newtype Alias_list_outro = Alias_list_outro [Alias_list_outro_]
                         deriving (Eq, Show)

data Alias_list_outro_ = Alias_list_outro_Str String
                       | Alias_list_outro_Text Text
                       | Alias_list_outro_Aliastablelink Aliastablelink
                       deriving (Eq, Show)

data Aliastablelink = Aliastablelink
                    deriving (Eq, Show)

data Aliasto = Aliasto Aliasto_Attrs String
             deriving (Eq, Show)

data Aliasto_Attrs = Aliasto_Attrs{aliastoRefiform :: String,
                                   aliastoIformid :: String}
                   deriving (Eq, Show)

data Aliastablehook = Aliastablehook Aliastablehook_Attrs String
                    deriving (Eq, Show)

data Aliastablehook_Attrs = Aliastablehook_Attrs{aliastablehookAnchor
                                                 :: String}
                          deriving (Eq, Show)

data Col = Col{colBitno :: (Maybe String), colColno :: String,
               colPrintwidth :: (Maybe String)}
         deriving (Eq, Show)

data Maintable = Maintable Maintable_Attrs [Col] Tableheader
                           Tablebody
               deriving (Eq, Show)

data Maintable_Attrs = Maintable_Attrs{maintableSize ::
                                       (Maybe Maintable_size),
                                       maintableHowmanybits :: (Maybe String),
                                       maintableClass :: (Maybe Maintable_class)}
                     deriving (Eq, Show)

data Maintable_size = Maintable_size_16x2
                    | Maintable_size_32
                    deriving (Eq, Show)

data Maintable_class = Maintable_class_grouptable
                     | Maintable_class_allclasses
                     deriving (Eq, Show)

data Maintablesect = Maintablesect{maintablesectSect :: String,
                                   maintablesectLinkref :: (Maybe String)}
                   deriving (Eq, Show)

newtype Para = Para String
             deriving (Eq, Show)

data Regdiagram = Regdiagram Regdiagram_Attrs [Box]
                deriving (Eq, Show)

data Regdiagram_Attrs = Regdiagram_Attrs{regdiagramForm ::
                                         Regdiagram_form,
                                         regdiagramTworows :: (Maybe String),
                                         regdiagramEncname :: (Maybe String),
                                         regdiagramPsname :: (Maybe String)}
                      deriving (Eq, Show)

data Regdiagram_form = Regdiagram_form_16x2
                     | Regdiagram_form_32
                     deriving (Eq, Show)

data Sect1 = Sect1File Sect1_Attrs File
           | Sect1Title_Para_File Sect1_Attrs (Title, Para, (List1 File))
           deriving (Eq, Show)

data Sect1_Attrs = Sect1_Attrs{sect1Id :: String}
                 deriving (Eq, Show)

data Symbol = Symbol Symbol_Attrs [Symbol_]
            deriving (Eq, Show)

data Symbol_Attrs = Symbol_Attrs{symbolLink :: (Maybe String)}
                  deriving (Eq, Show)

data Symbol_ = Symbol_Str String
             | Symbol_A A
             deriving (Eq, Show)

newtype Tablebody = Tablebody [Tablebody_]
                  deriving (Eq, Show)

data Tablebody_ = Tablebody_ [Maintablesect] (List1 Tr)
                deriving (Eq, Show)

newtype Tableheader = Tableheader (List1 Tr)
                    deriving (Eq, Show)

data Td = Td Td_Attrs [Td_]
        deriving (Eq, Show)

data Td_Attrs = Td_Attrs{tdColspan :: (Maybe String),
                         tdRowspan :: (Maybe String), tdClass :: (Maybe String),
                         tdIformid :: (Maybe String), tdBitwidth :: (Maybe String),
                         tdNote :: (Maybe String), tdIngroup :: (Maybe Td_ingroup),
                         tdBg :: (Maybe String)}
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

newtype Title = Title [Title_]
              deriving (Eq, Show)

data Title_ = Title_Str String
            | Title_A A
            deriving (Eq, Show)

data Toptitle = Toptitle{toptitleInstructionset :: String}
              deriving (Eq, Show)

data Tr = TrTh Tr_Attrs (List1 Th)
        | TrTd Tr_Attrs (List1 Td)
        deriving (Eq, Show)

data Tr_Attrs = Tr_Attrs{trClass :: (Maybe String),
                         trIclass :: (Maybe String), trId :: (Maybe String),
                         trEncname :: (Maybe String), trFirst :: (Maybe String),
                         trLast :: (Maybe String), trIformfile :: (Maybe String),
                         trOneofthismnem :: (Maybe String), trLabel :: (Maybe String),
                         trUndef :: (Maybe Tr_undef), trGroupid :: (Maybe String)}
              deriving (Eq, Show)

data Tr_undef = Tr_undef_1
              deriving (Eq, Show)

data Anchor = Anchor Anchor_Attrs String
            deriving (Eq, Show)

data Anchor_Attrs = Anchor_Attrs{anchorLink :: String,
                                 anchorFile :: (Maybe String), anchorHover :: (Maybe String)}
                  deriving (Eq, Show)

data Pstext = Pstext Pstext_Attrs [Line]
            deriving (Eq, Show)

data Pstext_Attrs = Pstext_Attrs{pstextSection :: String,
                                 pstextRep_section :: (Maybe String),
                                 pstextMayhavelinks :: (Maybe Pstext_mayhavelinks)}
                  deriving (Eq, Show)

data Pstext_mayhavelinks = Pstext_mayhavelinks_1
                         deriving (Eq, Show)

data Line = Line Line_Attrs [Line_]
          deriving (Eq, Show)

data Line_Attrs = Line_Attrs{lineIndent :: (Maybe String),
                             lineLink :: (Maybe String), lineFile :: (Maybe String),
                             lineHover :: (Maybe String), lineConts :: (Maybe String)}
                deriving (Eq, Show)

data Line_ = Line_Str String
           | Line_A A
           | Line_Anchor Anchor
           deriving (Eq, Show)

data Ps = Ps Ps_Attrs Pstext
        deriving (Eq, Show)

data Ps_Attrs = Ps_Attrs{psName :: String,
                         psMylink :: (Maybe String), psEnclabels :: (Maybe String),
                         psSections :: String, psSecttype :: (Maybe String)}
              deriving (Eq, Show)

data Ps_section = Ps_section Ps_section_Attrs (List1 Ps)
                deriving (Eq, Show)

data Ps_section_Attrs = Ps_section_Attrs{ps_sectionHowmany ::
                                         String}
                      deriving (Eq, Show)

newtype Exceptions = Exceptions [Exception_group]
                   deriving (Eq, Show)

data Exception_group = Exception_group Exception_group_Attrs
                                       (List1 Exception)
                     deriving (Eq, Show)

data Exception_group_Attrs = Exception_group_Attrs{exception_groupGroup_name
                                                   :: (Maybe String)}
                           deriving (Eq, Show)

data Exception = Exception{exceptionRegister :: (Maybe String),
                           exceptionField :: (Maybe String), exceptionValue :: (Maybe String),
                           exceptionName :: (Maybe String)}
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
          = A_Attrs{aHref = possibleA fromAttrToStr "href" as,
                    aClass = possibleA fromAttrToStr "class" as,
                    aLink = possibleA fromAttrToStr "link" as,
                    aFile = possibleA fromAttrToStr "file" as,
                    aHover = possibleA fromAttrToStr "hover" as,
                    aClassid = possibleA fromAttrToStr "classid" as}
        toAttrs v
          = catMaybes
              [maybeToAttr toAttrFrStr "href" (aHref v),
               maybeToAttr toAttrFrStr "class" (aClass v),
               maybeToAttr toAttrFrStr "link" (aLink v),
               maybeToAttr toAttrFrStr "file" (aFile v),
               maybeToAttr toAttrFrStr "hover" (aHover v),
               maybeToAttr toAttrFrStr "classid" (aClassid v)]

instance HTypeable Account where
        toHType x = Defined "account" [] []

instance XmlContent Account where
        toContents (Account as a b)
          = [CElem
               (Elem (N "account") (toAttrs as)
                  (maybe [] toContents a ++ toContents b))
               ()]
        parseContents
          = do e@(Elem _ as _) <- element ["account"]
               interior e $
                 return (Account (fromAttrs as)) `apply` optional parseContents
                   `apply` parseContents
              `adjustErr` ("in <account>, " ++)

instance XmlAttributes Account_Attrs where
        fromAttrs as
          = Account_Attrs{accountEncodedin =
                            possibleA fromAttrToStr "encodedin" as}
        toAttrs v
          = catMaybes
              [maybeToAttr toAttrFrStr "encodedin" (accountEncodedin v)]

instance HTypeable Intro where
        toHType x = Defined "intro" [] []

instance XmlContent Intro where
        toContents (Intro a)
          = [CElem (Elem (N "intro") [] (concatMap toContents a)) ()]
        parseContents
          = do e@(Elem _ [] _) <- element ["intro"]
               interior e $ return (Intro) `apply` many parseContents
              `adjustErr` ("in <intro>, " ++)

instance HTypeable Intro_ where
        toHType x = Defined "intro" [] []

instance XmlContent Intro_ where
        toContents (Intro_Str a) = toText a
        toContents (Intro_A a) = toContents a
        parseContents
          = oneOf
              [return (Intro_Str) `apply` text,
               return (Intro_A) `apply` parseContents]
              `adjustErr` ("in <intro>, " ++)

instance HTypeable Allinstrs where
        toHType x = Defined "allinstrs" [] []

instance XmlContent Allinstrs where
        toContents (Allinstrs as a b)
          = [CElem
               (Elem (N "allinstrs") (toAttrs as) (toContents a ++ toContents b))
               ()]
        parseContents
          = do e@(Elem _ as _) <- element ["allinstrs"]
               interior e $
                 return (Allinstrs (fromAttrs as)) `apply` parseContents `apply`
                   parseContents
              `adjustErr` ("in <allinstrs>, " ++)

instance XmlAttributes Allinstrs_Attrs where
        fromAttrs as
          = Allinstrs_Attrs{allinstrsId =
                              definiteA fromAttrToStr "allinstrs" "id" as,
                            allinstrsXreflabel =
                              definiteA fromAttrToStr "allinstrs" "xreflabel" as}
        toAttrs v
          = catMaybes
              [toAttrFrStr "id" (allinstrsId v),
               toAttrFrStr "xreflabel" (allinstrsXreflabel v)]

instance HTypeable File where
        toHType x = Defined "file" [] []

instance XmlContent File where
        toContents (FileAlphaindex as a)
          = [CElem (Elem (N "file") (toAttrs as) (toContents a)) ()]
        toContents (FileEncodingindex as a)
          = [CElem (Elem (N "file") (toAttrs as) (toContents a)) ()]
        toContents (FileInstructionsection as a)
          = [CElem (Elem (N "file") (toAttrs as) (toContents a)) ()]
        toContents (FileConstraint_text_mappings as a)
          = [CElem (Elem (N "file") (toAttrs as) (toContents a)) ()]
        parseContents
          = do e@(Elem _ as _) <- element ["file"]
               interior e $
                 oneOf
                   [return (FileAlphaindex (fromAttrs as)) `apply` parseContents,
                    return (FileEncodingindex (fromAttrs as)) `apply` parseContents,
                    return (FileInstructionsection (fromAttrs as)) `apply`
                      parseContents,
                    return (FileConstraint_text_mappings (fromAttrs as)) `apply`
                      parseContents]
                   `adjustErr` ("in <file>, " ++)

instance XmlAttributes File_Attrs where
        fromAttrs as
          = File_Attrs{fileType = definiteA fromAttrToStr "file" "type" as,
                       fileFile = definiteA fromAttrToStr "file" "file" as}
        toAttrs v
          = catMaybes
              [toAttrFrStr "type" (fileType v), toAttrFrStr "file" (fileFile v)]

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

instance HTypeable Text where
        toHType x = Defined "text" [] []

instance XmlContent Text where
        toContents (Text a) = [CElem (Elem (N "text") [] (toText a)) ()]
        parseContents
          = do e@(Elem _ [] _) <- element ["text"]
               interior e $ return (Text) `apply` (text `onFail` return "")
              `adjustErr` ("in <text>, " ++)

instance HTypeable Asmtemplate where
        toHType x = Defined "asmtemplate" [] []

instance XmlContent Asmtemplate where
        toContents (Asmtemplate as a)
          = [CElem
               (Elem (N "asmtemplate") (toAttrs as) (concatMap toContents a))
               ()]
        parseContents
          = do e@(Elem _ as _) <- element ["asmtemplate"]
               interior e $
                 return (Asmtemplate (fromAttrs as)) `apply` many parseContents
              `adjustErr` ("in <asmtemplate>, " ++)

instance XmlAttributes Asmtemplate_Attrs where
        fromAttrs as
          = Asmtemplate_Attrs{asmtemplateClass =
                                possibleA fromAttrToStr "class" as,
                              asmtemplateRole = possibleA fromAttrToTyp "role" as}
        toAttrs v
          = catMaybes
              [maybeToAttr toAttrFrStr "class" (asmtemplateClass v),
               maybeToAttr toAttrFrTyp "role" (asmtemplateRole v)]

instance HTypeable Asmtemplate_ where
        toHType x = Defined "asmtemplate" [] []

instance XmlContent Asmtemplate_ where
        toContents (Asmtemplate_Str a) = toText a
        toContents (Asmtemplate_Text a) = toContents a
        toContents (Asmtemplate_A a) = toContents a
        parseContents
          = oneOf
              [return (Asmtemplate_Str) `apply` text,
               return (Asmtemplate_Text) `apply` parseContents,
               return (Asmtemplate_A) `apply` parseContents]
              `adjustErr` ("in <asmtemplate>, " ++)

instance XmlAttrType Asmtemplate_role where
        fromAttrToTyp n (N n', v)
          | n == n' = translate (attr2str v)
          | otherwise = Nothing
          where translate "alias_prototype"
                  = Just Asmtemplate_role_alias_prototype
                translate "alias_equivalent_to"
                  = Just Asmtemplate_role_alias_equivalent_to
                translate _ = Nothing
        toAttrFrTyp n Asmtemplate_role_alias_prototype
          = Just (N n, str2attr "alias_prototype")
        toAttrFrTyp n Asmtemplate_role_alias_equivalent_to
          = Just (N n, str2attr "alias_equivalent_to")

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
                      boxConstraint = possibleA fromAttrToStr "constraint" as,
                      boxSettings = possibleA fromAttrToStr "settings" as,
                      boxPsbits = possibleA fromAttrToStr "psbits" as}
        toAttrs v
          = catMaybes
              [maybeToAttr toAttrFrStr "hibit" (boxHibit v),
               maybeToAttr toAttrFrStr "name" (boxName v),
               maybeToAttr toAttrFrStr "usename" (boxUsename v),
               maybeToAttr toAttrFrStr "width" (boxWidth v),
               maybeToAttr toAttrFrStr "constraint" (boxConstraint v),
               maybeToAttr toAttrFrStr "settings" (boxSettings v),
               maybeToAttr toAttrFrStr "psbits" (boxPsbits v)]

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

instance HTypeable Desc where
        toHType x = Defined "desc" [] []

instance XmlContent Desc where
        toContents (Desc a b c)
          = [CElem
               (Elem (N "desc") []
                  (toContents a ++ concatMap toContents b ++ maybe [] toContents c))
               ()]
        parseContents
          = do e@(Elem _ [] _) <- element ["desc"]
               interior e $
                 return (Desc) `apply` parseContents `apply` many parseContents
                   `apply` optional parseContents
              `adjustErr` ("in <desc>, " ++)

instance HTypeable Brief where
        toHType x = Defined "brief" [] []

instance XmlContent Brief where
        toContents (Brief as a)
          = [CElem (Elem (N "brief") (toAttrs as) (concatMap toContents a))
               ()]
        parseContents
          = do e@(Elem _ as _) <- element ["brief"]
               interior e $
                 return (Brief (fromAttrs as)) `apply` many parseContents
              `adjustErr` ("in <brief>, " ++)

instance XmlAttributes Brief_Attrs where
        fromAttrs as
          = Brief_Attrs{briefEnclist = possibleA fromAttrToStr "enclist" as,
                        briefChecked = possibleA fromAttrToTyp "checked" as,
                        briefSynth = possibleA fromAttrToTyp "synth" as}
        toAttrs v
          = catMaybes
              [maybeToAttr toAttrFrStr "enclist" (briefEnclist v),
               maybeToAttr toAttrFrTyp "checked" (briefChecked v),
               maybeToAttr toAttrFrTyp "synth" (briefSynth v)]

instance HTypeable Brief_ where
        toHType x = Defined "brief" [] []

instance XmlContent Brief_ where
        toContents (Brief_Str a) = toText a
        toContents (Brief_A a) = toContents a
        parseContents
          = oneOf
              [return (Brief_Str) `apply` text,
               return (Brief_A) `apply` parseContents]
              `adjustErr` ("in <brief>, " ++)

instance XmlAttrType Brief_checked where
        fromAttrToTyp n (N n', v)
          | n == n' = translate (attr2str v)
          | otherwise = Nothing
          where translate "yes" = Just Brief_checked_yes
                translate _ = Nothing
        toAttrFrTyp n Brief_checked_yes = Just (N n, str2attr "yes")

instance XmlAttrType Brief_synth where
        fromAttrToTyp n (N n', v)
          | n == n' = translate (attr2str v)
          | otherwise = Nothing
          where translate "single" = Just Brief_synth_single
                translate "multiple" = Just Brief_synth_multiple
                translate _ = Nothing
        toAttrFrTyp n Brief_synth_single = Just (N n, str2attr "single")
        toAttrFrTyp n Brief_synth_multiple
          = Just (N n, str2attr "multiple")

instance HTypeable Alg where
        toHType x = Defined "alg" [] []

instance XmlContent Alg where
        toContents (Alg as a)
          = [CElem (Elem (N "alg") (toAttrs as) (concatMap toContents a)) ()]
        parseContents
          = do e@(Elem _ as _) <- element ["alg"]
               interior e $ return (Alg (fromAttrs as)) `apply` many parseContents
              `adjustErr` ("in <alg>, " ++)

instance XmlAttributes Alg_Attrs where
        fromAttrs as
          = Alg_Attrs{algHowmany = possibleA fromAttrToStr "howmany" as}
        toAttrs v
          = catMaybes [maybeToAttr toAttrFrStr "howmany" (algHowmany v)]

instance HTypeable Alg_ where
        toHType x = Defined "alg" [] []

instance XmlContent Alg_ where
        toContents (Alg_Str a) = toText a
        toContents (Alg_A a) = toContents a
        parseContents
          = oneOf
              [return (Alg_Str) `apply` text,
               return (Alg_A) `apply` parseContents]
              `adjustErr` ("in <alg>, " ++)

instance HTypeable Longer where
        toHType x = Defined "longer" [] []

instance XmlContent Longer where
        toContents (Longer a)
          = [CElem (Elem (N "longer") [] (concatMap toContents a)) ()]
        parseContents
          = do e@(Elem _ [] _) <- element ["longer"]
               interior e $ return (Longer) `apply` many parseContents
              `adjustErr` ("in <longer>, " ++)

instance HTypeable Longer_ where
        toHType x = Defined "longer" [] []

instance XmlContent Longer_ where
        toContents (Longer_Str a) = toText a
        toContents (Longer_A a) = toContents a
        parseContents
          = oneOf
              [return (Longer_Str) `apply` text,
               return (Longer_A) `apply` parseContents]
              `adjustErr` ("in <longer>, " ++)

instance HTypeable Encoding where
        toHType x = Defined "encoding" [] []

instance XmlContent Encoding where
        toContents (Encoding as a b c d)
          = [CElem
               (Elem (N "encoding") (toAttrs as)
                  (maybe [] toContents a ++
                     concatMap toContents b ++ toContents c ++ maybe [] toContents d))
               ()]
        parseContents
          = do e@(Elem _ as _) <- element ["encoding"]
               interior e $
                 return (Encoding (fromAttrs as)) `apply` optional parseContents
                   `apply` many parseContents
                   `apply` parseContents
                   `apply` optional parseContents
              `adjustErr` ("in <encoding>, " ++)

instance XmlAttributes Encoding_Attrs where
        fromAttrs as
          = Encoding_Attrs{encodingName =
                             definiteA fromAttrToStr "encoding" "name" as,
                           encodingOneofinclass =
                             definiteA fromAttrToStr "encoding" "oneofinclass" as,
                           encodingOneof = definiteA fromAttrToStr "encoding" "oneof" as,
                           encodingLabel = definiteA fromAttrToStr "encoding" "label" as,
                           encodingBitdiffs = possibleA fromAttrToStr "bitdiffs" as,
                           encodingTags = possibleA fromAttrToStr "tags" as}
        toAttrs v
          = catMaybes
              [toAttrFrStr "name" (encodingName v),
               toAttrFrStr "oneofinclass" (encodingOneofinclass v),
               toAttrFrStr "oneof" (encodingOneof v),
               toAttrFrStr "label" (encodingLabel v),
               maybeToAttr toAttrFrStr "bitdiffs" (encodingBitdiffs v),
               maybeToAttr toAttrFrStr "tags" (encodingTags v)]

instance HTypeable Equivalent_to where
        toHType x = Defined "equivalent_to" [] []

instance XmlContent Equivalent_to where
        toContents (Equivalent_to a b)
          = [CElem
               (Elem (N "equivalent_to") [] (toContents a ++ toContents b))
               ()]
        parseContents
          = do e@(Elem _ [] _) <- element ["equivalent_to"]
               interior e $
                 return (Equivalent_to) `apply` parseContents `apply` parseContents
              `adjustErr` ("in <equivalent_to>, " ++)

instance HTypeable Aliascond where
        toHType x = Defined "aliascond" [] []

instance XmlContent Aliascond where
        toContents (Aliascond a)
          = [CElem (Elem (N "aliascond") [] (concatMap toContents a)) ()]
        parseContents
          = do e@(Elem _ [] _) <- element ["aliascond"]
               interior e $ return (Aliascond) `apply` many parseContents
              `adjustErr` ("in <aliascond>, " ++)

instance HTypeable Aliascond_ where
        toHType x = Defined "aliascond" [] []

instance XmlContent Aliascond_ where
        toContents (Aliascond_Str a) = toText a
        toContents (Aliascond_A a) = toContents a
        toContents (Aliascond_Anchor a) = toContents a
        toContents (Aliascond_Txt a) = toContents a
        parseContents
          = oneOf
              [return (Aliascond_Str) `apply` text,
               return (Aliascond_A) `apply` parseContents,
               return (Aliascond_Anchor) `apply` parseContents,
               return (Aliascond_Txt) `apply` parseContents]
              `adjustErr` ("in <aliascond>, " ++)

instance HTypeable Encodingindex where
        toHType x = Defined "encodingindex" [] []

instance XmlContent Encodingindex where
        toContents (Encodingindex as a b c)
          = [CElem
               (Elem (N "encodingindex") (toAttrs as)
                  (maybe [] toContents a ++ toContents b ++ toContents c))
               ()]
        parseContents
          = do e@(Elem _ as _) <- element ["encodingindex"]
               interior e $
                 return (Encodingindex (fromAttrs as)) `apply`
                   optional parseContents
                   `apply` parseContents
                   `apply` parseContents
              `adjustErr` ("in <encodingindex>, " ++)

instance XmlAttributes Encodingindex_Attrs where
        fromAttrs as
          = Encodingindex_Attrs{encodingindexInstructionset =
                                  definiteA fromAttrToStr "encodingindex" "instructionset" as}
        toAttrs v
          = catMaybes
              [toAttrFrStr "instructionset" (encodingindexInstructionset v)]

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

instance HTypeable Entry where
        toHType x = Defined "entry" [] []

instance XmlContent Entry where
        toContents (Entry as a)
          = [CElem (Elem (N "entry") (toAttrs as) (toText a)) ()]
        parseContents
          = do e@(Elem _ as _) <- element ["entry"]
               interior e $
                 return (Entry (fromAttrs as)) `apply` (text `onFail` return "")
              `adjustErr` ("in <entry>, " ++)

instance XmlAttributes Entry_Attrs where
        fromAttrs as
          = Entry_Attrs{entryClass =
                          definiteA fromAttrToStr "entry" "class" as,
                        entryIclasslink = possibleA fromAttrToStr "iclasslink" as,
                        entryIclasslinkfile = possibleA fromAttrToStr "iclasslinkfile" as}
        toAttrs v
          = catMaybes
              [toAttrFrStr "class" (entryClass v),
               maybeToAttr toAttrFrStr "iclasslink" (entryIclasslink v),
               maybeToAttr toAttrFrStr "iclasslinkfile" (entryIclasslinkfile v)]

instance HTypeable Row where
        toHType x = Defined "row" [] []

instance XmlContent Row where
        toContents (Row a) = [CElem (Elem (N "row") [] (toContents a)) ()]
        parseContents
          = do e@(Elem _ [] _) <- element ["row"]
               interior e $ return (Row) `apply` parseContents
              `adjustErr` ("in <row>, " ++)

instance HTypeable Tbody where
        toHType x = Defined "tbody" [] []

instance XmlContent Tbody where
        toContents (TbodyRow a)
          = [CElem (Elem (N "tbody") [] (toContents a)) ()]
        toContents (TbodyTr a)
          = [CElem (Elem (N "tbody") [] (toContents a)) ()]
        parseContents
          = do e@(Elem _ [] _) <- element ["tbody"]
               interior e $
                 oneOf
                   [return (TbodyRow) `apply` parseContents,
                    return (TbodyTr) `apply` parseContents]
                   `adjustErr` ("in <tbody>, " ++)

instance HTypeable Thead where
        toHType x = Defined "thead" [] []

instance XmlContent Thead where
        toContents (TheadRow as a)
          = [CElem (Elem (N "thead") (toAttrs as) (toContents a)) ()]
        toContents (TheadTr as a)
          = [CElem (Elem (N "thead") (toAttrs as) (toContents a)) ()]
        parseContents
          = do e@(Elem _ as _) <- element ["thead"]
               interior e $
                 oneOf
                   [return (TheadRow (fromAttrs as)) `apply` parseContents,
                    return (TheadTr (fromAttrs as)) `apply` parseContents]
                   `adjustErr` ("in <thead>, " ++)

instance XmlAttributes Thead_Attrs where
        fromAttrs as
          = Thead_Attrs{theadClass = possibleA fromAttrToStr "class" as}
        toAttrs v
          = catMaybes [maybeToAttr toAttrFrStr "class" (theadClass v)]

instance HTypeable Tgroup where
        toHType x = Defined "tgroup" [] []

instance XmlContent Tgroup where
        toContents (Tgroup as a b)
          = [CElem
               (Elem (N "tgroup") (toAttrs as) (toContents a ++ toContents b))
               ()]
        parseContents
          = do e@(Elem _ as _) <- element ["tgroup"]
               interior e $
                 return (Tgroup (fromAttrs as)) `apply` parseContents `apply`
                   parseContents
              `adjustErr` ("in <tgroup>, " ++)

instance XmlAttributes Tgroup_Attrs where
        fromAttrs as
          = Tgroup_Attrs{tgroupCols =
                           definiteA fromAttrToStr "tgroup" "cols" as}
        toAttrs v = catMaybes [toAttrFrStr "cols" (tgroupCols v)]

instance HTypeable Table where
        toHType x = Defined "table" [] []

instance XmlContent Table where
        toContents (Table as a)
          = [CElem (Elem (N "table") (toAttrs as) (toContents a)) ()]
        parseContents
          = do e@(Elem _ as _) <- element ["table"]
               interior e $ return (Table (fromAttrs as)) `apply` parseContents
              `adjustErr` ("in <table>, " ++)

instance XmlAttributes Table_Attrs where
        fromAttrs as
          = Table_Attrs{tableClass =
                          definiteA fromAttrToStr "table" "class" as}
        toAttrs v = catMaybes [toAttrFrStr "class" (tableClass v)]

instance HTypeable After where
        toHType x = Defined "after" [] []

instance XmlContent After where
        toContents (After a) = [CElem (Elem (N "after") [] (toText a)) ()]
        parseContents
          = do e@(Elem _ [] _) <- element ["after"]
               interior e $ return (After) `apply` (text `onFail` return "")
              `adjustErr` ("in <after>, " ++)

instance HTypeable Definition where
        toHType x = Defined "definition" [] []

instance XmlContent Definition where
        toContents (Definition as a b c)
          = [CElem
               (Elem (N "definition") (toAttrs as)
                  (toContents a ++ toContents b ++ maybe [] toContents c))
               ()]
        parseContents
          = do e@(Elem _ as _) <- element ["definition"]
               interior e $
                 return (Definition (fromAttrs as)) `apply` parseContents `apply`
                   parseContents
                   `apply` optional parseContents
              `adjustErr` ("in <definition>, " ++)

instance XmlAttributes Definition_Attrs where
        fromAttrs as
          = Definition_Attrs{definitionEncodedin =
                               definiteA fromAttrToStr "definition" "encodedin" as,
                             definitionTabulatedwith =
                               possibleA fromAttrToStr "tabulatedwith" as}
        toAttrs v
          = catMaybes
              [toAttrFrStr "encodedin" (definitionEncodedin v),
               maybeToAttr toAttrFrStr "tabulatedwith"
                 (definitionTabulatedwith v)]

instance HTypeable Explanation_intro where
        toHType x = Defined "explanation_intro" [] []

instance XmlContent Explanation_intro where
        toContents (Explanation_intro as a)
          = [CElem
               (Elem (N "explanation_intro") (toAttrs as)
                  (concatMap toContents a))
               ()]
        parseContents
          = do e@(Elem _ as _) <- element ["explanation_intro"]
               interior e $
                 return (Explanation_intro (fromAttrs as)) `apply`
                   many parseContents
              `adjustErr` ("in <explanation_intro>, " ++)

instance XmlAttributes Explanation_intro_Attrs where
        fromAttrs as
          = Explanation_intro_Attrs{explanation_introHeadingsabove =
                                      definiteA fromAttrToStr "explanation_intro" "headingsabove"
                                        as}
        toAttrs v
          = catMaybes
              [toAttrFrStr "headingsabove" (explanation_introHeadingsabove v)]

instance HTypeable Explanation_intro_ where
        toHType x = Defined "explanation_intro" [] []

instance XmlContent Explanation_intro_ where
        toContents (Explanation_intro_Str a) = toText a
        toContents (Explanation_intro_A a) = toContents a
        parseContents
          = oneOf
              [return (Explanation_intro_Str) `apply` text,
               return (Explanation_intro_A) `apply` parseContents]
              `adjustErr` ("in <explanation_intro>, " ++)

instance HTypeable Explanations where
        toHType x = Defined "explanations" [] []

instance XmlContent Explanations where
        toContents (Explanations as a b)
          = [CElem
               (Elem (N "explanations") (toAttrs as)
                  (maybe [] toContents a ++ concatMap toContents b))
               ()]
        parseContents
          = do e@(Elem _ as _) <- element ["explanations"]
               interior e $
                 return (Explanations (fromAttrs as)) `apply` optional parseContents
                   `apply` many parseContents
              `adjustErr` ("in <explanations>, " ++)

instance XmlAttributes Explanations_Attrs where
        fromAttrs as
          = Explanations_Attrs{explanationsScope =
                                 definiteA fromAttrToStr "explanations" "scope" as}
        toAttrs v = catMaybes [toAttrFrStr "scope" (explanationsScope v)]

instance HTypeable Explanation where
        toHType x = Defined "explanation" [] []

instance XmlContent Explanation where
        toContents (Explanation as a b)
          = [CElem
               (Elem (N "explanation") (toAttrs as)
                  (toContents a ++ toContents b))
               ()]
        parseContents
          = do e@(Elem _ as _) <- element ["explanation"]
               interior e $
                 return (Explanation (fromAttrs as)) `apply` parseContents `apply`
                   parseContents
              `adjustErr` ("in <explanation>, " ++)

instance XmlAttributes Explanation_Attrs where
        fromAttrs as
          = Explanation_Attrs{explanationEnclist =
                                possibleA fromAttrToStr "enclist" as,
                              explanationSymboldefcount =
                                possibleA fromAttrToStr "symboldefcount" as,
                              explanationTags = possibleA fromAttrToStr "tags" as}
        toAttrs v
          = catMaybes
              [maybeToAttr toAttrFrStr "enclist" (explanationEnclist v),
               maybeToAttr toAttrFrStr "symboldefcount"
                 (explanationSymboldefcount v),
               maybeToAttr toAttrFrStr "tags" (explanationTags v)]

instance HTypeable Aliasmnem where
        toHType x = Defined "aliasmnem" [] []

instance XmlContent Aliasmnem where
        toContents (Aliasmnem as a b)
          = [CElem
               (Elem (N "aliasmnem") (toAttrs as)
                  (maybe [] toContents a ++ toContents b))
               ()]
        parseContents
          = do e@(Elem _ as _) <- element ["aliasmnem"]
               interior e $
                 return (Aliasmnem (fromAttrs as)) `apply` optional parseContents
                   `apply` parseContents
              `adjustErr` ("in <aliasmnem>, " ++)

instance XmlAttributes Aliasmnem_Attrs where
        fromAttrs as
          = Aliasmnem_Attrs{aliasmnemMnemonic =
                              definiteA fromAttrToStr "aliasmnem" "mnemonic" as,
                            aliasmnemId = definiteA fromAttrToStr "aliasmnem" "id" as,
                            aliasmnemHeading = possibleA fromAttrToStr "heading" as}
        toAttrs v
          = catMaybes
              [toAttrFrStr "mnemonic" (aliasmnemMnemonic v),
               toAttrFrStr "id" (aliasmnemId v),
               maybeToAttr toAttrFrStr "heading" (aliasmnemHeading v)]

instance HTypeable Aliases where
        toHType x = Defined "aliases" [] []

instance XmlContent Aliases where
        toContents (Aliases as a)
          = [CElem (Elem (N "aliases") (toAttrs as) (toContents a)) ()]
        parseContents
          = do e@(Elem _ as _) <- element ["aliases"]
               interior e $ return (Aliases (fromAttrs as)) `apply` parseContents
              `adjustErr` ("in <aliases>, " ++)

instance XmlAttributes Aliases_Attrs where
        fromAttrs as
          = Aliases_Attrs{aliasesConditions =
                            possibleA fromAttrToStr "conditions" as}
        toAttrs v
          = catMaybes
              [maybeToAttr toAttrFrStr "conditions" (aliasesConditions v)]

instance HTypeable Alias where
        toHType x = Defined "alias" [] []

instance XmlContent Alias where
        toContents (Alias as a)
          = [CElem (Elem (N "alias") (toAttrs as) (concatMap toContents a))
               ()]
        parseContents
          = do e@(Elem _ as _) <- element ["alias"]
               interior e $
                 return (Alias (fromAttrs as)) `apply` many parseContents
              `adjustErr` ("in <alias>, " ++)

instance XmlAttributes Alias_Attrs where
        fromAttrs as
          = Alias_Attrs{aliasEnctag = possibleA fromAttrToStr "enctag" as,
                        aliasEncname = definiteA fromAttrToStr "alias" "encname" as,
                        aliasEquivalent_to =
                          definiteA fromAttrToStr "alias" "equivalent_to" as,
                        aliasAssembler_prototype =
                          definiteA fromAttrToStr "alias" "assembler_prototype" as,
                        aliasConditions = possibleA fromAttrToStr "conditions" as,
                        aliasDescription = possibleA fromAttrToStr "description" as}
        toAttrs v
          = catMaybes
              [maybeToAttr toAttrFrStr "enctag" (aliasEnctag v),
               toAttrFrStr "encname" (aliasEncname v),
               toAttrFrStr "equivalent_to" (aliasEquivalent_to v),
               toAttrFrStr "assembler_prototype" (aliasAssembler_prototype v),
               maybeToAttr toAttrFrStr "conditions" (aliasConditions v),
               maybeToAttr toAttrFrStr "description" (aliasDescription v)]

instance HTypeable Alias_ where
        toHType x = Defined "alias" [] []

instance XmlContent Alias_ where
        toContents (Alias_Str a) = toText a
        toContents (Alias_Asmtemplate a) = toContents a
        parseContents
          = oneOf
              [return (Alias_Str) `apply` text,
               return (Alias_Asmtemplate) `apply` parseContents]
              `adjustErr` ("in <alias>, " ++)

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
        parseContents
          = oneOf
              [return (Heading_Str) `apply` text,
               return (Heading_A) `apply` parseContents]
              `adjustErr` ("in <heading>, " ++)

instance HTypeable Instructiontable where
        toHType x = Defined "instructiontable" [] []

instance XmlContent Instructiontable where
        toContents (Instructiontable as a b c)
          = [CElem
               (Elem (N "instructiontable") (toAttrs as)
                  (toContents a ++ toContents b ++ toContents c))
               ()]
        parseContents
          = do e@(Elem _ as _) <- element ["instructiontable"]
               interior e $
                 return (Instructiontable (fromAttrs as)) `apply` parseContents
                   `apply` parseContents
                   `apply` parseContents
              `adjustErr` ("in <instructiontable>, " ++)

instance XmlAttributes Instructiontable_Attrs where
        fromAttrs as
          = Instructiontable_Attrs{instructiontableCols =
                                     definiteA fromAttrToStr "instructiontable" "cols" as,
                                   instructiontableIclass =
                                     definiteA fromAttrToStr "instructiontable" "iclass" as}
        toAttrs v
          = catMaybes
              [toAttrFrStr "cols" (instructiontableCols v),
               toAttrFrStr "iclass" (instructiontableIclass v)]

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

instance HTypeable Iclass where
        toHType x = Defined "iclass" [] []

instance XmlContent Iclass where
        toContents (Iclass as a b c d e)
          = [CElem
               (Elem (N "iclass") (toAttrs as)
                  (maybe [] toContents a ++
                     maybe [] toContents b ++
                       toContents c ++ toContents d ++ maybe [] toContents e))
               ()]
        parseContents
          = do e@(Elem _ as _) <- element ["iclass"]
               interior e $
                 return (Iclass (fromAttrs as)) `apply` optional parseContents
                   `apply` optional parseContents
                   `apply` parseContents
                   `apply` parseContents
                   `apply` optional parseContents
              `adjustErr` ("in <iclass>, " ++)

instance XmlAttributes Iclass_Attrs where
        fromAttrs as
          = Iclass_Attrs{iclassName =
                           definiteA fromAttrToStr "iclass" "name" as,
                         iclassId = definiteA fromAttrToStr "iclass" "id" as,
                         iclassOneof = definiteA fromAttrToStr "iclass" "oneof" as,
                         iclassNo_encodings =
                           definiteA fromAttrToStr "iclass" "no_encodings" as,
                         iclassIsa = definiteA fromAttrToStr "iclass" "isa" as}
        toAttrs v
          = catMaybes
              [toAttrFrStr "name" (iclassName v), toAttrFrStr "id" (iclassId v),
               toAttrFrStr "oneof" (iclassOneof v),
               toAttrFrStr "no_encodings" (iclassNo_encodings v),
               toAttrFrStr "isa" (iclassIsa v)]

instance HTypeable Iclassintro where
        toHType x = Defined "iclassintro" [] []

instance XmlContent Iclassintro where
        toContents (Iclassintro as a)
          = [CElem
               (Elem (N "iclassintro") (toAttrs as) (concatMap toContents a))
               ()]
        parseContents
          = do e@(Elem _ as _) <- element ["iclassintro"]
               interior e $
                 return (Iclassintro (fromAttrs as)) `apply` many parseContents
              `adjustErr` ("in <iclassintro>, " ++)

instance XmlAttributes Iclassintro_Attrs where
        fromAttrs as
          = Iclassintro_Attrs{iclassintroCount =
                                definiteA fromAttrToStr "iclassintro" "count" as}
        toAttrs v = catMaybes [toAttrFrStr "count" (iclassintroCount v)]

instance HTypeable Iclassintro_ where
        toHType x = Defined "iclassintro" [] []

instance XmlContent Iclassintro_ where
        toContents (Iclassintro_Txt a) = toContents a
        toContents (Iclassintro_A a) = toContents a
        parseContents
          = oneOf
              [return (Iclassintro_Txt) `apply` parseContents,
               return (Iclassintro_A) `apply` parseContents]
              `adjustErr` ("in <iclassintro>, " ++)

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
                        iformIformfile = definiteA fromAttrToStr "iform" "iformfile" as,
                        iformHeading = definiteA fromAttrToStr "iform" "heading" as}
        toAttrs v
          = catMaybes
              [toAttrFrStr "id" (iformId v),
               toAttrFrStr "iformfile" (iformIformfile v),
               toAttrFrStr "heading" (iformHeading v)]

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

instance HTypeable Docvars where
        toHType x = Defined "docvars" [] []

instance XmlContent Docvars where
        toContents (Docvars a)
          = [CElem (Elem (N "docvars") [] (toContents a)) ()]
        parseContents
          = do e@(Elem _ [] _) <- element ["docvars"]
               interior e $ return (Docvars) `apply` parseContents
              `adjustErr` ("in <docvars>, " ++)

instance HTypeable Docvar where
        toHType x = Defined "docvar" [] []

instance XmlContent Docvar where
        toContents as = [CElem (Elem (N "docvar") (toAttrs as) []) ()]
        parseContents
          = do (Elem _ as []) <- element ["docvar"]
               return (fromAttrs as)
              `adjustErr` ("in <docvar>, " ++)

instance XmlAttributes Docvar where
        fromAttrs as
          = Docvar{docvarKey = definiteA fromAttrToStr "docvar" "key" as,
                   docvarValue = definiteA fromAttrToStr "docvar" "value" as}
        toAttrs v
          = catMaybes
              [toAttrFrStr "key" (docvarKey v),
               toAttrFrStr "value" (docvarValue v)]

instance HTypeable Instructionsection where
        toHType x = Defined "instructionsection" [] []

instance XmlContent Instructionsection where
        toContents (Instructionsection as a b c d e f g h i j)
          = [CElem
               (Elem (N "instructionsection") (toAttrs as)
                  (maybe [] toContents a ++
                     toContents b ++
                       toContents c ++
                         maybe [] toContents d ++
                           maybe [] toContents e ++
                             concatMap toContents f ++
                               maybe [] toContents g ++
                                 maybe [] toContents h ++
                                   concatMap toContents i ++ maybe [] toContents j))
               ()]
        parseContents
          = do e@(Elem _ as _) <- element ["instructionsection"]
               interior e $
                 return (Instructionsection (fromAttrs as)) `apply`
                   optional parseContents
                   `apply` parseContents
                   `apply` parseContents
                   `apply` optional parseContents
                   `apply` optional parseContents
                   `apply` many parseContents
                   `apply` optional parseContents
                   `apply` optional parseContents
                   `apply` many parseContents
                   `apply` optional parseContents
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
          where translate "instruction"
                  = Just Instructionsection_type_instruction
                translate "alias" = Just Instructionsection_type_alias
                translate "pseudocode" = Just Instructionsection_type_pseudocode
                translate _ = Nothing
        toAttrFrTyp n Instructionsection_type_instruction
          = Just (N n, str2attr "instruction")
        toAttrFrTyp n Instructionsection_type_alias
          = Just (N n, str2attr "alias")
        toAttrFrTyp n Instructionsection_type_pseudocode
          = Just (N n, str2attr "pseudocode")

instance HTypeable Constraint_text_mappings where
        toHType x = Defined "constraint_text_mappings" [] []

instance XmlContent Constraint_text_mappings where
        toContents (Constraint_text_mappings a)
          = [CElem
               (Elem (N "constraint_text_mappings") [] (concatMap toContents a))
               ()]
        parseContents
          = do e@(Elem _ [] _) <- element ["constraint_text_mappings"]
               interior e $
                 return (Constraint_text_mappings) `apply` many parseContents
              `adjustErr` ("in <constraint_text_mappings>, " ++)

instance HTypeable Constraint_text_mapping where
        toHType x = Defined "constraint_text_mapping" [] []

instance XmlContent Constraint_text_mapping where
        toContents (Constraint_text_mapping a b)
          = [CElem
               (Elem (N "constraint_text_mapping") []
                  (toContents a ++ toContents b))
               ()]
        parseContents
          = do e@(Elem _ [] _) <- element ["constraint_text_mapping"]
               interior e $
                 return (Constraint_text_mapping) `apply` parseContents `apply`
                   parseContents
              `adjustErr` ("in <constraint_text_mapping>, " ++)

instance HTypeable Constraint_id where
        toHType x = Defined "constraint_id" [] []

instance XmlContent Constraint_id where
        toContents (Constraint_id a)
          = [CElem (Elem (N "constraint_id") [] (toText a)) ()]
        parseContents
          = do e@(Elem _ [] _) <- element ["constraint_id"]
               interior e $
                 return (Constraint_id) `apply` (text `onFail` return "")
              `adjustErr` ("in <constraint_id>, " ++)

instance HTypeable Constraint_text where
        toHType x = Defined "constraint_text" [] []

instance XmlContent Constraint_text where
        toContents (Constraint_text a)
          = [CElem (Elem (N "constraint_text") [] (toText a)) ()]
        parseContents
          = do e@(Elem _ [] _) <- element ["constraint_text"]
               interior e $
                 return (Constraint_text) `apply` (text `onFail` return "")
              `adjustErr` ("in <constraint_text>, " ++)

instance HTypeable Classes where
        toHType x = Defined "classes" [] []

instance XmlContent Classes where
        toContents (Classes a b)
          = [CElem (Elem (N "classes") [] (toContents a ++ toContents b)) ()]
        parseContents
          = do e@(Elem _ [] _) <- element ["classes"]
               interior e $
                 return (Classes) `apply` parseContents `apply` parseContents
              `adjustErr` ("in <classes>, " ++)

instance HTypeable Classesintro where
        toHType x = Defined "classesintro" [] []

instance XmlContent Classesintro where
        toContents (Classesintro as a)
          = [CElem
               (Elem (N "classesintro") (toAttrs as) (concatMap toContents a))
               ()]
        parseContents
          = do e@(Elem _ as _) <- element ["classesintro"]
               interior e $
                 return (Classesintro (fromAttrs as)) `apply` many parseContents
              `adjustErr` ("in <classesintro>, " ++)

instance XmlAttributes Classesintro_Attrs where
        fromAttrs as
          = Classesintro_Attrs{classesintroCount =
                                 definiteA fromAttrToStr "classesintro" "count" as}
        toAttrs v = catMaybes [toAttrFrStr "count" (classesintroCount v)]

instance HTypeable Classesintro_ where
        toHType x = Defined "classesintro" [] []

instance XmlContent Classesintro_ where
        toContents (Classesintro_Txt a) = toContents a
        toContents (Classesintro_A a) = toContents a
        parseContents
          = oneOf
              [return (Classesintro_Txt) `apply` parseContents,
               return (Classesintro_A) `apply` parseContents]
              `adjustErr` ("in <classesintro>, " ++)

instance HTypeable Alias_list where
        toHType x = Defined "alias_list" [] []

instance XmlContent Alias_list where
        toContents (Alias_list as a b c)
          = [CElem
               (Elem (N "alias_list") (toAttrs as)
                  (maybe [] toContents a ++
                     concatMap toContents b ++ maybe [] toContents c))
               ()]
        parseContents
          = do e@(Elem _ as _) <- element ["alias_list"]
               interior e $
                 return (Alias_list (fromAttrs as)) `apply` optional parseContents
                   `apply` many parseContents
                   `apply` optional parseContents
              `adjustErr` ("in <alias_list>, " ++)

instance XmlAttributes Alias_list_Attrs where
        fromAttrs as
          = Alias_list_Attrs{alias_listHowmany =
                               definiteA fromAttrToStr "alias_list" "howmany" as}
        toAttrs v = catMaybes [toAttrFrStr "howmany" (alias_listHowmany v)]

instance HTypeable Alias_list_intro where
        toHType x = Defined "alias_list_intro" [] []

instance XmlContent Alias_list_intro where
        toContents (Alias_list_intro a)
          = [CElem (Elem (N "alias_list_intro") [] (toText a)) ()]
        parseContents
          = do e@(Elem _ [] _) <- element ["alias_list_intro"]
               interior e $
                 return (Alias_list_intro) `apply` (text `onFail` return "")
              `adjustErr` ("in <alias_list_intro>, " ++)

instance HTypeable Aliasref where
        toHType x = Defined "aliasref" [] []

instance XmlContent Aliasref where
        toContents (Aliasref as a b)
          = [CElem
               (Elem (N "aliasref") (toAttrs as) (toContents a ++ toContents b))
               ()]
        parseContents
          = do e@(Elem _ as _) <- element ["aliasref"]
               interior e $
                 return (Aliasref (fromAttrs as)) `apply` parseContents `apply`
                   parseContents
              `adjustErr` ("in <aliasref>, " ++)

instance XmlAttributes Aliasref_Attrs where
        fromAttrs as
          = Aliasref_Attrs{aliasrefAliaspageid =
                             definiteA fromAttrToStr "aliasref" "aliaspageid" as,
                           aliasrefAliasfile =
                             definiteA fromAttrToStr "aliasref" "aliasfile" as,
                           aliasrefHover = possibleA fromAttrToStr "hover" as,
                           aliasrefPunct = definiteA fromAttrToStr "aliasref" "punct" as}
        toAttrs v
          = catMaybes
              [toAttrFrStr "aliaspageid" (aliasrefAliaspageid v),
               toAttrFrStr "aliasfile" (aliasrefAliasfile v),
               maybeToAttr toAttrFrStr "hover" (aliasrefHover v),
               toAttrFrStr "punct" (aliasrefPunct v)]

instance HTypeable Aliaspref where
        toHType x = Defined "aliaspref" [] []

instance XmlContent Aliaspref where
        toContents (Aliaspref as a)
          = [CElem
               (Elem (N "aliaspref") (toAttrs as) (concatMap toContents a))
               ()]
        parseContents
          = do e@(Elem _ as _) <- element ["aliaspref"]
               interior e $
                 return (Aliaspref (fromAttrs as)) `apply` many parseContents
              `adjustErr` ("in <aliaspref>, " ++)

instance XmlAttributes Aliaspref_Attrs where
        fromAttrs as
          = Aliaspref_Attrs{aliasprefLabels =
                              possibleA fromAttrToStr "labels" as}
        toAttrs v
          = catMaybes [maybeToAttr toAttrFrStr "labels" (aliasprefLabels v)]

instance HTypeable Aliaspref_ where
        toHType x = Defined "aliaspref" [] []

instance XmlContent Aliaspref_ where
        toContents (Aliaspref_Str a) = toText a
        toContents (Aliaspref_A a) = toContents a
        toContents (Aliaspref_Anchor a) = toContents a
        toContents (Aliaspref_Txt a) = toContents a
        parseContents
          = oneOf
              [return (Aliaspref_Str) `apply` text,
               return (Aliaspref_A) `apply` parseContents,
               return (Aliaspref_Anchor) `apply` parseContents,
               return (Aliaspref_Txt) `apply` parseContents]
              `adjustErr` ("in <aliaspref>, " ++)

instance HTypeable Alias_list_outro where
        toHType x = Defined "alias_list_outro" [] []

instance XmlContent Alias_list_outro where
        toContents (Alias_list_outro a)
          = [CElem (Elem (N "alias_list_outro") [] (concatMap toContents a))
               ()]
        parseContents
          = do e@(Elem _ [] _) <- element ["alias_list_outro"]
               interior e $ return (Alias_list_outro) `apply` many parseContents
              `adjustErr` ("in <alias_list_outro>, " ++)

instance HTypeable Alias_list_outro_ where
        toHType x = Defined "alias_list_outro" [] []

instance XmlContent Alias_list_outro_ where
        toContents (Alias_list_outro_Str a) = toText a
        toContents (Alias_list_outro_Text a) = toContents a
        toContents (Alias_list_outro_Aliastablelink a) = toContents a
        parseContents
          = oneOf
              [return (Alias_list_outro_Str) `apply` text,
               return (Alias_list_outro_Text) `apply` parseContents,
               return (Alias_list_outro_Aliastablelink) `apply` parseContents]
              `adjustErr` ("in <alias_list_outro>, " ++)

instance HTypeable Aliastablelink where
        toHType x = Defined "aliastablelink" [] []

instance XmlContent Aliastablelink where
        toContents Aliastablelink
          = [CElem (Elem (N "aliastablelink") [] []) ()]
        parseContents
          = do (Elem _ as []) <- element ["aliastablelink"]
               return Aliastablelink
              `adjustErr` ("in <aliastablelink>, " ++)

instance HTypeable Aliasto where
        toHType x = Defined "aliasto" [] []

instance XmlContent Aliasto where
        toContents (Aliasto as a)
          = [CElem (Elem (N "aliasto") (toAttrs as) (toText a)) ()]
        parseContents
          = do e@(Elem _ as _) <- element ["aliasto"]
               interior e $
                 return (Aliasto (fromAttrs as)) `apply` (text `onFail` return "")
              `adjustErr` ("in <aliasto>, " ++)

instance XmlAttributes Aliasto_Attrs where
        fromAttrs as
          = Aliasto_Attrs{aliastoRefiform =
                            definiteA fromAttrToStr "aliasto" "refiform" as,
                          aliastoIformid = definiteA fromAttrToStr "aliasto" "iformid" as}
        toAttrs v
          = catMaybes
              [toAttrFrStr "refiform" (aliastoRefiform v),
               toAttrFrStr "iformid" (aliastoIformid v)]

instance HTypeable Aliastablehook where
        toHType x = Defined "aliastablehook" [] []

instance XmlContent Aliastablehook where
        toContents (Aliastablehook as a)
          = [CElem (Elem (N "aliastablehook") (toAttrs as) (toText a)) ()]
        parseContents
          = do e@(Elem _ as _) <- element ["aliastablehook"]
               interior e $
                 return (Aliastablehook (fromAttrs as)) `apply`
                   (text `onFail` return "")
              `adjustErr` ("in <aliastablehook>, " ++)

instance XmlAttributes Aliastablehook_Attrs where
        fromAttrs as
          = Aliastablehook_Attrs{aliastablehookAnchor =
                                   definiteA fromAttrToStr "aliastablehook" "anchor" as}
        toAttrs v
          = catMaybes [toAttrFrStr "anchor" (aliastablehookAnchor v)]

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
                colColno = definiteA fromAttrToStr "col" "colno" as,
                colPrintwidth = possibleA fromAttrToStr "printwidth" as}
        toAttrs v
          = catMaybes
              [maybeToAttr toAttrFrStr "bitno" (colBitno v),
               toAttrFrStr "colno" (colColno v),
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
                            maintableHowmanybits = possibleA fromAttrToStr "howmanybits" as,
                            maintableClass = possibleA fromAttrToTyp "class" as}
        toAttrs v
          = catMaybes
              [maybeToAttr toAttrFrTyp "size" (maintableSize v),
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

instance HTypeable Para where
        toHType x = Defined "para" [] []

instance XmlContent Para where
        toContents (Para a) = [CElem (Elem (N "para") [] (toText a)) ()]
        parseContents
          = do e@(Elem _ [] _) <- element ["para"]
               interior e $ return (Para) `apply` (text `onFail` return "")
              `adjustErr` ("in <para>, " ++)

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
                             regdiagramTworows = possibleA fromAttrToStr "tworows" as,
                             regdiagramEncname = possibleA fromAttrToStr "encname" as,
                             regdiagramPsname = possibleA fromAttrToStr "psname" as}
        toAttrs v
          = catMaybes
              [toAttrFrTyp "form" (regdiagramForm v),
               maybeToAttr toAttrFrStr "tworows" (regdiagramTworows v),
               maybeToAttr toAttrFrStr "encname" (regdiagramEncname v),
               maybeToAttr toAttrFrStr "psname" (regdiagramPsname v)]

instance XmlAttrType Regdiagram_form where
        fromAttrToTyp n (N n', v)
          | n == n' = translate (attr2str v)
          | otherwise = Nothing
          where translate "16x2" = Just Regdiagram_form_16x2
                translate "32" = Just Regdiagram_form_32
                translate _ = Nothing
        toAttrFrTyp n Regdiagram_form_16x2 = Just (N n, str2attr "16x2")
        toAttrFrTyp n Regdiagram_form_32 = Just (N n, str2attr "32")

instance HTypeable Sect1 where
        toHType x = Defined "sect1" [] []

instance XmlContent Sect1 where
        toContents (Sect1File as a)
          = [CElem (Elem (N "sect1") (toAttrs as) (toContents a)) ()]
        toContents (Sect1Title_Para_File as a)
          = [CElem (Elem (N "sect1") (toAttrs as) (toContents a)) ()]
        parseContents
          = do e@(Elem _ as _) <- element ["sect1"]
               interior e $
                 oneOf
                   [return (Sect1File (fromAttrs as)) `apply` parseContents,
                    return (Sect1Title_Para_File (fromAttrs as)) `apply` parseContents]
                   `adjustErr` ("in <sect1>, " ++)

instance XmlAttributes Sect1_Attrs where
        fromAttrs as
          = Sect1_Attrs{sect1Id = definiteA fromAttrToStr "sect1" "id" as}
        toAttrs v = catMaybes [toAttrFrStr "id" (sect1Id v)]

instance HTypeable Symbol where
        toHType x = Defined "symbol" [] []

instance XmlContent Symbol where
        toContents (Symbol as a)
          = [CElem (Elem (N "symbol") (toAttrs as) (concatMap toContents a))
               ()]
        parseContents
          = do e@(Elem _ as _) <- element ["symbol"]
               interior e $
                 return (Symbol (fromAttrs as)) `apply` many parseContents
              `adjustErr` ("in <symbol>, " ++)

instance XmlAttributes Symbol_Attrs where
        fromAttrs as
          = Symbol_Attrs{symbolLink = possibleA fromAttrToStr "link" as}
        toAttrs v
          = catMaybes [maybeToAttr toAttrFrStr "link" (symbolLink v)]

instance HTypeable Symbol_ where
        toHType x = Defined "symbol" [] []

instance XmlContent Symbol_ where
        toContents (Symbol_Str a) = toText a
        toContents (Symbol_A a) = toContents a
        parseContents
          = oneOf
              [return (Symbol_Str) `apply` text,
               return (Symbol_A) `apply` parseContents]
              `adjustErr` ("in <symbol>, " ++)

instance HTypeable Tablebody where
        toHType x = Defined "tablebody" [] []

instance XmlContent Tablebody where
        toContents (Tablebody a)
          = [CElem (Elem (N "tablebody") [] (concatMap toContents a)) ()]
        parseContents
          = do e@(Elem _ [] _) <- element ["tablebody"]
               interior e $ return (Tablebody) `apply` many parseContents
              `adjustErr` ("in <tablebody>, " ++)

instance HTypeable Tablebody_ where
        toHType x = Defined "tablebody" [] []

instance XmlContent Tablebody_ where
        toContents (Tablebody_ a b)
          = (concatMap toContents a ++ toContents b)
        parseContents
          = return (Tablebody_) `apply` many parseContents `apply`
              parseContents

instance HTypeable Tableheader where
        toHType x = Defined "tableheader" [] []

instance XmlContent Tableheader where
        toContents (Tableheader a)
          = [CElem (Elem (N "tableheader") [] (toContents a)) ()]
        parseContents
          = do e@(Elem _ [] _) <- element ["tableheader"]
               interior e $ return (Tableheader) `apply` parseContents
              `adjustErr` ("in <tableheader>, " ++)

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
                     tdBg = possibleA fromAttrToStr "bg" as}
        toAttrs v
          = catMaybes
              [maybeToAttr toAttrFrStr "colspan" (tdColspan v),
               maybeToAttr toAttrFrStr "rowspan" (tdRowspan v),
               maybeToAttr toAttrFrStr "class" (tdClass v),
               maybeToAttr toAttrFrStr "iformid" (tdIformid v),
               maybeToAttr toAttrFrStr "bitwidth" (tdBitwidth v),
               maybeToAttr toAttrFrStr "note" (tdNote v),
               maybeToAttr toAttrFrTyp "ingroup" (tdIngroup v),
               maybeToAttr toAttrFrStr "bg" (tdBg v)]

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

instance HTypeable Title where
        toHType x = Defined "title" [] []

instance XmlContent Title where
        toContents (Title a)
          = [CElem (Elem (N "title") [] (concatMap toContents a)) ()]
        parseContents
          = do e@(Elem _ [] _) <- element ["title"]
               interior e $ return (Title) `apply` many parseContents
              `adjustErr` ("in <title>, " ++)

instance HTypeable Title_ where
        toHType x = Defined "title" [] []

instance XmlContent Title_ where
        toContents (Title_Str a) = toText a
        toContents (Title_A a) = toContents a
        parseContents
          = oneOf
              [return (Title_Str) `apply` text,
               return (Title_A) `apply` parseContents]
              `adjustErr` ("in <title>, " ++)

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

instance HTypeable Tr where
        toHType x = Defined "tr" [] []

instance XmlContent Tr where
        toContents (TrTh as a)
          = [CElem (Elem (N "tr") (toAttrs as) (toContents a)) ()]
        toContents (TrTd as a)
          = [CElem (Elem (N "tr") (toAttrs as) (toContents a)) ()]
        parseContents
          = do e@(Elem _ as _) <- element ["tr"]
               interior e $
                 oneOf
                   [return (TrTh (fromAttrs as)) `apply` parseContents,
                    return (TrTd (fromAttrs as)) `apply` parseContents]
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
                     trLabel = possibleA fromAttrToStr "label" as,
                     trUndef = possibleA fromAttrToTyp "undef" as,
                     trGroupid = possibleA fromAttrToStr "groupid" as}
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
               maybeToAttr toAttrFrStr "label" (trLabel v),
               maybeToAttr toAttrFrTyp "undef" (trUndef v),
               maybeToAttr toAttrFrStr "groupid" (trGroupid v)]

instance XmlAttrType Tr_undef where
        fromAttrToTyp n (N n', v)
          | n == n' = translate (attr2str v)
          | otherwise = Nothing
          where translate "1" = Just Tr_undef_1
                translate _ = Nothing
        toAttrFrTyp n Tr_undef_1 = Just (N n, str2attr "1")

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
                         anchorFile = possibleA fromAttrToStr "file" as,
                         anchorHover = possibleA fromAttrToStr "hover" as}
        toAttrs v
          = catMaybes
              [toAttrFrStr "link" (anchorLink v),
               maybeToAttr toAttrFrStr "file" (anchorFile v),
               maybeToAttr toAttrFrStr "hover" (anchorHover v)]

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
                         pstextRep_section = possibleA fromAttrToStr "rep_section" as,
                         pstextMayhavelinks = possibleA fromAttrToTyp "mayhavelinks" as}
        toAttrs v
          = catMaybes
              [toAttrFrStr "section" (pstextSection v),
               maybeToAttr toAttrFrStr "rep_section" (pstextRep_section v),
               maybeToAttr toAttrFrTyp "mayhavelinks" (pstextMayhavelinks v)]

instance XmlAttrType Pstext_mayhavelinks where
        fromAttrToTyp n (N n', v)
          | n == n' = translate (attr2str v)
          | otherwise = Nothing
          where translate "1" = Just Pstext_mayhavelinks_1
                translate _ = Nothing
        toAttrFrTyp n Pstext_mayhavelinks_1 = Just (N n, str2attr "1")

instance HTypeable Line where
        toHType x = Defined "line" [] []

instance XmlContent Line where
        toContents (Line as a)
          = [CElem (Elem (N "line") (toAttrs as) (concatMap toContents a))
               ()]
        parseContents
          = do e@(Elem _ as _) <- element ["line"]
               interior e $
                 return (Line (fromAttrs as)) `apply` many parseContents
              `adjustErr` ("in <line>, " ++)

instance XmlAttributes Line_Attrs where
        fromAttrs as
          = Line_Attrs{lineIndent = possibleA fromAttrToStr "indent" as,
                       lineLink = possibleA fromAttrToStr "link" as,
                       lineFile = possibleA fromAttrToStr "file" as,
                       lineHover = possibleA fromAttrToStr "hover" as,
                       lineConts = possibleA fromAttrToStr "conts" as}
        toAttrs v
          = catMaybes
              [maybeToAttr toAttrFrStr "indent" (lineIndent v),
               maybeToAttr toAttrFrStr "link" (lineLink v),
               maybeToAttr toAttrFrStr "file" (lineFile v),
               maybeToAttr toAttrFrStr "hover" (lineHover v),
               maybeToAttr toAttrFrStr "conts" (lineConts v)]

instance HTypeable Line_ where
        toHType x = Defined "line" [] []

instance XmlContent Line_ where
        toContents (Line_Str a) = toText a
        toContents (Line_A a) = toContents a
        toContents (Line_Anchor a) = toContents a
        parseContents
          = oneOf
              [return (Line_Str) `apply` text,
               return (Line_A) `apply` parseContents,
               return (Line_Anchor) `apply` parseContents]
              `adjustErr` ("in <line>, " ++)

instance HTypeable Ps where
        toHType x = Defined "ps" [] []

instance XmlContent Ps where
        toContents (Ps as a)
          = [CElem (Elem (N "ps") (toAttrs as) (toContents a)) ()]
        parseContents
          = do e@(Elem _ as _) <- element ["ps"]
               interior e $ return (Ps (fromAttrs as)) `apply` parseContents
              `adjustErr` ("in <ps>, " ++)

instance XmlAttributes Ps_Attrs where
        fromAttrs as
          = Ps_Attrs{psName = definiteA fromAttrToStr "ps" "name" as,
                     psMylink = possibleA fromAttrToStr "mylink" as,
                     psEnclabels = possibleA fromAttrToStr "enclabels" as,
                     psSections = definiteA fromAttrToStr "ps" "sections" as,
                     psSecttype = possibleA fromAttrToStr "secttype" as}
        toAttrs v
          = catMaybes
              [toAttrFrStr "name" (psName v),
               maybeToAttr toAttrFrStr "mylink" (psMylink v),
               maybeToAttr toAttrFrStr "enclabels" (psEnclabels v),
               toAttrFrStr "sections" (psSections v),
               maybeToAttr toAttrFrStr "secttype" (psSecttype v)]

instance HTypeable Ps_section where
        toHType x = Defined "ps_section" [] []

instance XmlContent Ps_section where
        toContents (Ps_section as a)
          = [CElem (Elem (N "ps_section") (toAttrs as) (toContents a)) ()]
        parseContents
          = do e@(Elem _ as _) <- element ["ps_section"]
               interior e $
                 return (Ps_section (fromAttrs as)) `apply` parseContents
              `adjustErr` ("in <ps_section>, " ++)

instance XmlAttributes Ps_section_Attrs where
        fromAttrs as
          = Ps_section_Attrs{ps_sectionHowmany =
                               definiteA fromAttrToStr "ps_section" "howmany" as}
        toAttrs v = catMaybes [toAttrFrStr "howmany" (ps_sectionHowmany v)]

instance HTypeable Exceptions where
        toHType x = Defined "exceptions" [] []

instance XmlContent Exceptions where
        toContents (Exceptions a)
          = [CElem (Elem (N "exceptions") [] (concatMap toContents a)) ()]
        parseContents
          = do e@(Elem _ [] _) <- element ["exceptions"]
               interior e $ return (Exceptions) `apply` many parseContents
              `adjustErr` ("in <exceptions>, " ++)

instance HTypeable Exception_group where
        toHType x = Defined "exception_group" [] []

instance XmlContent Exception_group where
        toContents (Exception_group as a)
          = [CElem (Elem (N "exception_group") (toAttrs as) (toContents a))
               ()]
        parseContents
          = do e@(Elem _ as _) <- element ["exception_group"]
               interior e $
                 return (Exception_group (fromAttrs as)) `apply` parseContents
              `adjustErr` ("in <exception_group>, " ++)

instance XmlAttributes Exception_group_Attrs where
        fromAttrs as
          = Exception_group_Attrs{exception_groupGroup_name =
                                    possibleA fromAttrToStr "group_name" as}
        toAttrs v
          = catMaybes
              [maybeToAttr toAttrFrStr "group_name"
                 (exception_groupGroup_name v)]

instance HTypeable Exception where
        toHType x = Defined "exception" [] []

instance XmlContent Exception where
        toContents as = [CElem (Elem (N "exception") (toAttrs as) []) ()]
        parseContents
          = do (Elem _ as []) <- element ["exception"]
               return (fromAttrs as)
              `adjustErr` ("in <exception>, " ++)

instance XmlAttributes Exception where
        fromAttrs as
          = Exception{exceptionRegister =
                        possibleA fromAttrToStr "register" as,
                      exceptionField = possibleA fromAttrToStr "field" as,
                      exceptionValue = possibleA fromAttrToStr "value" as,
                      exceptionName = possibleA fromAttrToStr "name" as}
        toAttrs v
          = catMaybes
              [maybeToAttr toAttrFrStr "register" (exceptionRegister v),
               maybeToAttr toAttrFrStr "field" (exceptionField v),
               maybeToAttr toAttrFrStr "value" (exceptionValue v),
               maybeToAttr toAttrFrStr "name" (exceptionName v)]
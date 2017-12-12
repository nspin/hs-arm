module ARM.MRAS.DTD.A64.Iformp where

import Prelude hiding (Right, Left)
import Text.XML.HaXml.XmlContent hiding (Content, List)
import Text.XML.HaXml.Types hiding (Content, Name)
import Text.XML.HaXml.OneOfN


-- TYPES --


newtype Docvars = Docvars (List1 Docvar) 		deriving (Eq,Show)

data Docvar = Docvar
    { docvarKey :: String
    , docvarValue :: String
    } deriving (Eq,Show)

newtype Para = Para [Para_] 		deriving (Eq,Show)

data Para_ = Para_Str String
           | Para_Instruction Instruction
           | Para_Literal Literal
           | Para_Xref Xref
           | Para_B B
           | Para_Arm_defined_word Arm_defined_word
           | Para_Parameter Parameter
           | Para_Sup Sup
           | Para_Sub Sub
           | Para_Binarynumber Binarynumber
           | Para_Hexnumber Hexnumber
           | Para_Syntax Syntax
           | Para_Field Field
           | Para_Value Value
           | Para_Function Function
           | Para_AEnum AEnum
           | Para_Enumvalue Enumvalue
           | Para_Url Url
           | Para_Image Image
           deriving (Eq,Show)

data Instruction = Instruction Instruction_Attrs [String]
                 deriving (Eq,Show)
data Instruction_Attrs = Instruction_Attrs
    { instructionParam0 :: (Maybe String)
    } deriving (Eq,Show)

data List = List List_Attrs (List1 Listitem)
          deriving (Eq,Show)
data List_Attrs = List_Attrs
    { listType :: List_type
    , listRole :: (Maybe List_role)
    , listLanguage :: (Maybe String)
    } deriving (Eq,Show)

data List_type = List_type_ordered  |  List_type_unordered  | 
                 List_type_var  |  List_type_param
               deriving (Eq,Show)

data List_role = List_role_standard  |  List_role_compressed  | 
                 List_role_break  |  List_role_wide
               deriving (Eq,Show)

data Listitem = Listitem (OneOf2 [Param] [Term]) Content
              deriving (Eq,Show)

newtype Term = Term [Term_] 		deriving (Eq,Show)

data Term_ = Term_Str String
           | Term_Instruction Instruction
           | Term_Literal Literal
           | Term_Xref Xref
           | Term_B B
           | Term_Arm_defined_word Arm_defined_word
           | Term_Parameter Parameter
           | Term_Sup Sup
           | Term_Sub Sub
           | Term_Binarynumber Binarynumber
           | Term_Hexnumber Hexnumber
           | Term_Syntax Syntax
           | Term_Field Field
           | Term_Value Value
           | Term_Function Function
           | Term_AEnum AEnum
           | Term_Enumvalue Enumvalue
           | Term_Url Url
           | Term_Image Image
           deriving (Eq,Show)

newtype Param = Param [Param_] 		deriving (Eq,Show)

data Param_ = Param_Str String
            | Param_Instruction Instruction
            | Param_Literal Literal
            | Param_Xref Xref
            | Param_B B
            | Param_Arm_defined_word Arm_defined_word
            | Param_Parameter Parameter
            | Param_Sup Sup
            | Param_Sub Sub
            | Param_Binarynumber Binarynumber
            | Param_Hexnumber Hexnumber
            | Param_Syntax Syntax
            | Param_Field Field
            | Param_Value Value
            | Param_Function Function
            | Param_AEnum AEnum
            | Param_Enumvalue Enumvalue
            | Param_Url Url
            | Param_Image Image
            deriving (Eq,Show)

newtype Content = Content [Content_] 		deriving (Eq,Show)

data Content_ = Content_Str String
              | Content_List List
              | Content_Para Para
              | Content_Instruction Instruction
              | Content_Literal Literal
              | Content_Xref Xref
              | Content_B B
              | Content_Arm_defined_word Arm_defined_word
              | Content_Parameter Parameter
              | Content_Sup Sup
              | Content_Sub Sub
              | Content_Binarynumber Binarynumber
              | Content_Hexnumber Hexnumber
              | Content_Syntax Syntax
              | Content_Field Field
              | Content_Value Value
              | Content_Function Function
              | Content_AEnum AEnum
              | Content_Enumvalue Enumvalue
              | Content_Url Url
              | Content_Image Image
              deriving (Eq,Show)

newtype Arm_defined_word = Arm_defined_word [String] 		deriving (Eq,Show)

newtype Code = Code [String] 		deriving (Eq,Show)

newtype Sup = Sup [String] 		deriving (Eq,Show)

newtype Sub = Sub [String] 		deriving (Eq,Show)

newtype Binarynumber = Binarynumber [String] 		deriving (Eq,Show)

newtype Hexnumber = Hexnumber [String] 		deriving (Eq,Show)

newtype Syntax = Syntax [String] 		deriving (Eq,Show)

newtype Field = Field [String] 		deriving (Eq,Show)

newtype Value = Value [String] 		deriving (Eq,Show)

newtype Parameter = Parameter [String] 		deriving (Eq,Show)

newtype Literal = Literal [String] 		deriving (Eq,Show)

newtype Function = Function [String] 		deriving (Eq,Show)

newtype AEnum = AEnum [String] 		deriving (Eq,Show)

newtype Enumvalue = Enumvalue [String] 		deriving (Eq,Show)

newtype B = B [String] 		deriving (Eq,Show)

data Xref = Xref Xref_Attrs [String]
          deriving (Eq,Show)
data Xref_Attrs = Xref_Attrs
    { xrefLinkend :: String
    } deriving (Eq,Show)

newtype Url = Url [String] 		deriving (Eq,Show)

data Textsection = Textsection Textsection_Attrs [Para]
                 deriving (Eq,Show)
data Textsection_Attrs = Textsection_Attrs
    { textsectionTitle :: String
    } deriving (Eq,Show)

data Instructionsection = Instructionsection Instructionsection_Attrs
                                             Docvars Heading Desc
                                             (Maybe (OneOf2 Alias_list Aliasto)) Classes [Aliasmnem]
                                             (Maybe Explanations) (Maybe Aliastablehook)
                                             [(OneOf2 Ps_section Constrained_unpredictables)]
                                             (Maybe Exceptions)
                        deriving (Eq,Show)
data Instructionsection_Attrs = Instructionsection_Attrs
    { instructionsectionId :: String
    , instructionsectionTitle :: String
    , instructionsectionTags :: (Maybe String)
    , instructionsectionType :: (Maybe Instructionsection_type)
    } deriving (Eq,Show)

data Instructionsection_type = Instructionsection_type_alias
                             deriving (Eq,Show)

data A = A A_Attrs [String]
       deriving (Eq,Show)
data A_Attrs = A_Attrs
    { aHref :: (Maybe String)
    , aLink :: (Maybe String)
    , aFile :: (Maybe String)
    , aHover :: (Maybe String)
    } deriving (Eq,Show)

data Anchor = Anchor Anchor_Attrs String
            deriving (Eq,Show)
data Anchor_Attrs = Anchor_Attrs
    { anchorLink :: String
    , anchorFile :: (Maybe String)
    , anchorHover :: (Maybe String)
    } deriving (Eq,Show)

newtype Heading = Heading [Heading_] 		deriving (Eq,Show)

data Heading_ = Heading_Str String
              | Heading_A A
              | Heading_Anchor Anchor
              | Heading_Txt Txt
              deriving (Eq,Show)

data Desc = Desc Brief [Alg] (Maybe Longer) (Maybe Authored)
                 (Maybe Encodingnotes) (Maybe Syntaxnotes)
          deriving (Eq,Show)

data Brief = Brief Brief_Attrs [Brief_]
           deriving (Eq,Show)
data Brief_Attrs = Brief_Attrs
    { briefSynth :: (Maybe Brief_synth)
    , briefChecked :: (Maybe Brief_checked)
    , briefEnclist :: (Maybe String)
    } deriving (Eq,Show)

data Brief_ = Brief_Str String
            | Brief_Para Para
            | Brief_List List
            | Brief_Note Note
            | Brief_Instruction Instruction
            | Brief_Literal Literal
            | Brief_Xref Xref
            | Brief_B B
            | Brief_Arm_defined_word Arm_defined_word
            | Brief_Parameter Parameter
            | Brief_Sup Sup
            | Brief_Sub Sub
            | Brief_Binarynumber Binarynumber
            | Brief_Hexnumber Hexnumber
            | Brief_Syntax Syntax
            | Brief_Field Field
            | Brief_Value Value
            | Brief_Function Function
            | Brief_AEnum AEnum
            | Brief_Enumvalue Enumvalue
            | Brief_Url Url
            | Brief_Image Image
            deriving (Eq,Show)

data Brief_synth = Brief_synth_single
                 deriving (Eq,Show)

data Brief_checked = Brief_checked_yes
                   deriving (Eq,Show)

data Alg = Alg Alg_Attrs String
         deriving (Eq,Show)
data Alg_Attrs = Alg_Attrs
    { algHowmany :: (Maybe String)
    } deriving (Eq,Show)

newtype Longer = Longer [Longer_] 		deriving (Eq,Show)

data Longer_ = Longer_Str String
             | Longer_Para Para
             | Longer_List List
             | Longer_Note Note
             | Longer_Instruction Instruction
             | Longer_Literal Literal
             | Longer_Xref Xref
             | Longer_B B
             | Longer_Arm_defined_word Arm_defined_word
             | Longer_Parameter Parameter
             | Longer_Sup Sup
             | Longer_Sub Sub
             | Longer_Binarynumber Binarynumber
             | Longer_Hexnumber Hexnumber
             | Longer_Syntax Syntax
             | Longer_Field Field
             | Longer_Value Value
             | Longer_Function Function
             | Longer_AEnum AEnum
             | Longer_Enumvalue Enumvalue
             | Longer_Url Url
             | Longer_Image Image
             deriving (Eq,Show)

newtype Authored = Authored [Authored_] 		deriving (Eq,Show)

data Authored_ = Authored_Str String
               | Authored_Para Para
               | Authored_List List
               | Authored_Note Note
               | Authored_Instruction Instruction
               | Authored_Literal Literal
               | Authored_Xref Xref
               | Authored_B B
               | Authored_Arm_defined_word Arm_defined_word
               | Authored_Parameter Parameter
               | Authored_Sup Sup
               | Authored_Sub Sub
               | Authored_Binarynumber Binarynumber
               | Authored_Hexnumber Hexnumber
               | Authored_Syntax Syntax
               | Authored_Field Field
               | Authored_Value Value
               | Authored_Function Function
               | Authored_AEnum AEnum
               | Authored_Enumvalue Enumvalue
               | Authored_Url Url
               | Authored_Image Image
               deriving (Eq,Show)

newtype Encodingnotes = Encodingnotes [Encodingnotes_] 		deriving (Eq,Show)

data Encodingnotes_ = Encodingnotes_Str String
                    | Encodingnotes_Para Para
                    | Encodingnotes_List List
                    | Encodingnotes_Note Note
                    | Encodingnotes_Instruction Instruction
                    | Encodingnotes_Literal Literal
                    | Encodingnotes_Xref Xref
                    | Encodingnotes_B B
                    | Encodingnotes_Arm_defined_word Arm_defined_word
                    | Encodingnotes_Parameter Parameter
                    | Encodingnotes_Sup Sup
                    | Encodingnotes_Sub Sub
                    | Encodingnotes_Binarynumber Binarynumber
                    | Encodingnotes_Hexnumber Hexnumber
                    | Encodingnotes_Syntax Syntax
                    | Encodingnotes_Field Field
                    | Encodingnotes_Value Value
                    | Encodingnotes_Function Function
                    | Encodingnotes_AEnum AEnum
                    | Encodingnotes_Enumvalue Enumvalue
                    | Encodingnotes_Url Url
                    | Encodingnotes_Image Image
                    deriving (Eq,Show)

newtype Syntaxnotes = Syntaxnotes [Syntaxnotes_] 		deriving (Eq,Show)

data Syntaxnotes_ = Syntaxnotes_Str String
                  | Syntaxnotes_Para Para
                  | Syntaxnotes_List List
                  | Syntaxnotes_Note Note
                  | Syntaxnotes_Instruction Instruction
                  | Syntaxnotes_Literal Literal
                  | Syntaxnotes_Xref Xref
                  | Syntaxnotes_B B
                  | Syntaxnotes_Arm_defined_word Arm_defined_word
                  | Syntaxnotes_Parameter Parameter
                  | Syntaxnotes_Sup Sup
                  | Syntaxnotes_Sub Sub
                  | Syntaxnotes_Binarynumber Binarynumber
                  | Syntaxnotes_Hexnumber Hexnumber
                  | Syntaxnotes_Syntax Syntax
                  | Syntaxnotes_Field Field
                  | Syntaxnotes_Value Value
                  | Syntaxnotes_Function Function
                  | Syntaxnotes_AEnum AEnum
                  | Syntaxnotes_Enumvalue Enumvalue
                  | Syntaxnotes_Url Url
                  | Syntaxnotes_Image Image
                  deriving (Eq,Show)

data Alias_list = Alias_list Alias_list_Attrs
                             (Maybe Alias_list_intro) [Aliasref] (Maybe Alias_list_outro)
                deriving (Eq,Show)
data Alias_list_Attrs = Alias_list_Attrs
    { alias_listHowmany :: String
    } deriving (Eq,Show)

newtype Alias_list_intro = Alias_list_intro String 		deriving (Eq,Show)

data Aliasref = Aliasref Aliasref_Attrs Text (List1 Aliaspref)
              deriving (Eq,Show)
data Aliasref_Attrs = Aliasref_Attrs
    { aliasrefAliaspageid :: String
    , aliasrefAliasfile :: String
    , aliasrefHover :: (Maybe String)
    , aliasrefPunct :: String
    } deriving (Eq,Show)

data Aliaspref = Aliaspref Aliaspref_Attrs [Aliaspref_]
               deriving (Eq,Show)
data Aliaspref_Attrs = Aliaspref_Attrs
    { aliasprefLabels :: (Maybe String)
    } deriving (Eq,Show)

data Aliaspref_ = Aliaspref_Str String
                | Aliaspref_A A
                | Aliaspref_Anchor Anchor
                | Aliaspref_Txt Txt
                deriving (Eq,Show)

newtype Alias_list_outro = Alias_list_outro [Alias_list_outro_] 		deriving (Eq,Show)

data Alias_list_outro_ = Alias_list_outro_Str String
                       | Alias_list_outro_Text Text
                       | Alias_list_outro_Aliastablelink Aliastablelink
                       deriving (Eq,Show)

data Aliastablelink = Aliastablelink 		deriving (Eq,Show)

data Aliasto = Aliasto Aliasto_Attrs String
             deriving (Eq,Show)
data Aliasto_Attrs = Aliasto_Attrs
    { aliastoRefiform :: String
    , aliastoIformid :: String
    } deriving (Eq,Show)

data Asmtemplate = Asmtemplate Asmtemplate_Attrs [Asmtemplate_]
                 deriving (Eq,Show)
data Asmtemplate_Attrs = Asmtemplate_Attrs
    { asmtemplateRole :: (Maybe Asmtemplate_role)
    , asmtemplateComment :: (Maybe String)
    } deriving (Eq,Show)

data Asmtemplate_ = Asmtemplate_Str String
                  | Asmtemplate_A A
                  | Asmtemplate_Anchor Anchor
                  | Asmtemplate_Txt Txt
                  | Asmtemplate_Text Text
                  deriving (Eq,Show)

data Asmtemplate_role = Asmtemplate_role_alias_prototype  | 
                        Asmtemplate_role_alias_equivalent_to
                      deriving (Eq,Show)

data Aliasmnem = Aliasmnem Aliasmnem_Attrs (Maybe Desc)
                           ((Maybe Docvars),(OneOf2 (List1 Alias) (List1 Aliases)))
               deriving (Eq,Show)
data Aliasmnem_Attrs = Aliasmnem_Attrs
    { aliasmnemMnemonic :: String
    , aliasmnemId :: String
    , aliasmnemIformqual :: (Maybe String)
    , aliasmnemHeading :: (Maybe String)
    } deriving (Eq,Show)

data Aliases = Aliases Aliases_Attrs (List1 Alias)
             deriving (Eq,Show)
data Aliases_Attrs = Aliases_Attrs
    { aliasesConditions :: (Maybe String)
    } deriving (Eq,Show)

data Alias = Alias Alias_Attrs (Maybe Docvars) Asmtemplate
                   Asmtemplate (Maybe Conditionexpr)
           deriving (Eq,Show)
data Alias_Attrs = Alias_Attrs
    { aliasEncname :: String
    , aliasEquivalent_to :: String
    , aliasAssembler_prototype :: String
    , aliasEnctag :: (Maybe String)
    , aliasConditions :: (Maybe String)
    , aliasDescription :: (Maybe String)
    } deriving (Eq,Show)

newtype Conditionexpr = Conditionexpr Pstext 		deriving (Eq,Show)

data C = C C_Attrs String
       deriving (Eq,Show)
data C_Attrs = C_Attrs
    { cColspan :: (Maybe String)
    } deriving (Eq,Show)

data Box = Box Box_Attrs [C]
         deriving (Eq,Show)
data Box_Attrs = Box_Attrs
    { boxHibit :: String
    , boxName :: (Maybe String)
    , boxWidth :: (Maybe String)
    , boxUsename :: (Maybe Box_usename)
    , boxSettings :: (Maybe String)
    , boxPsbits :: (Maybe String)
    , boxConstraint :: (Maybe String)
    , boxComp :: (Maybe String)
    } deriving (Eq,Show)

data Box_usename = Box_usename_1
                 deriving (Eq,Show)

data Regdiagram = Regdiagram Regdiagram_Attrs [Box]
                deriving (Eq,Show)
data Regdiagram_Attrs = Regdiagram_Attrs
    { regdiagramForm :: Regdiagram_form
    , regdiagramTworows :: (Maybe Regdiagram_tworows)
    , regdiagramEncname :: (Maybe String)
    , regdiagramPsname :: (Maybe String)
    , regdiagramConstraint :: (Maybe String)
    } deriving (Eq,Show)

data Regdiagram_form = Regdiagram_form_16  |  Regdiagram_form_16x2
                        |  Regdiagram_form_32
                     deriving (Eq,Show)

data Regdiagram_tworows = Regdiagram_tworows_1
                        deriving (Eq,Show)

data Encoding = Encoding Encoding_Attrs (Maybe Docvars)
                         (Maybe Arch_variants) [Box] (List1 Asmtemplate)
                         (Maybe Equivalent_to)
              deriving (Eq,Show)
data Encoding_Attrs = Encoding_Attrs
    { encodingName :: String
    , encodingOneofinclass :: String
    , encodingOneof :: String
    , encodingLabel :: String
    , encodingBitdiffs :: (Maybe String)
    , encodingTags :: (Maybe String)
    } deriving (Eq,Show)

data Equivalent_to = Equivalent_to Asmtemplate Aliascond
                   deriving (Eq,Show)

newtype Aliascond = Aliascond [Aliascond_] 		deriving (Eq,Show)

data Aliascond_ = Aliascond_Str String
                | Aliascond_A A
                | Aliascond_Anchor Anchor
                | Aliascond_Txt Txt
                deriving (Eq,Show)

data Classesintro = Classesintro Classesintro_Attrs [Classesintro_]
                  deriving (Eq,Show)
data Classesintro_Attrs = Classesintro_Attrs
    { classesintroCount :: (Maybe String)
    } deriving (Eq,Show)

data Classesintro_ = Classesintro_Str String
                   | Classesintro_A A
                   | Classesintro_Anchor Anchor
                   | Classesintro_Txt Txt
                   deriving (Eq,Show)

data Classes = Classes (Maybe Classesintro) (List1 Iclass)
             deriving (Eq,Show)

data Iclassintro = Iclassintro Iclassintro_Attrs [Iclassintro_]
                 deriving (Eq,Show)
data Iclassintro_Attrs = Iclassintro_Attrs
    { iclassintroCount :: (Maybe String)
    } deriving (Eq,Show)

data Iclassintro_ = Iclassintro_Txt Txt
                  | Iclassintro_A A
                  deriving (Eq,Show)

data Iclass = Iclass Iclass_Attrs (Maybe Docvars)
                     (Maybe Iclassintro) (Maybe Arch_variants) Regdiagram
                     (List1 Encoding) (Maybe Ps_section)
                     (Maybe Constrained_unpredictables)
            deriving (Eq,Show)
data Iclass_Attrs = Iclass_Attrs
    { iclassName :: String
    , iclassId :: String
    , iclassOneof :: String
    , iclassNo_encodings :: String
    , iclassIsa :: String
    } deriving (Eq,Show)

newtype Arch_variants = Arch_variants [Arch_variant] 		deriving (Eq,Show)

data Arch_variant = Arch_variant
    { arch_variantName :: (Maybe String)
    , arch_variantFeature :: (Maybe String)
    } deriving (Eq,Show)

data Explanations = Explanations Explanations_Attrs [Explanation]
                  deriving (Eq,Show)
data Explanations_Attrs = Explanations_Attrs
    { explanationsScope :: Explanations_scope
    } deriving (Eq,Show)

data Explanations_scope = Explanations_scope_all
                        deriving (Eq,Show)

data Explanation = Explanation Explanation_Attrs Symbol
                               (OneOf2 Account Definition) (Maybe Arch_variants)
                 deriving (Eq,Show)
data Explanation_Attrs = Explanation_Attrs
    { explanationEnclist :: String
    , explanationTags :: (Maybe String)
    , explanationSymboldefcount :: String
    } deriving (Eq,Show)

data Symbol = Symbol Symbol_Attrs [Symbol_]
            deriving (Eq,Show)
data Symbol_Attrs = Symbol_Attrs
    { symbolLink :: (Maybe String)
    } deriving (Eq,Show)

data Symbol_ = Symbol_Str String
             | Symbol_A A
             | Symbol_Anchor Anchor
             | Symbol_Txt Txt
             deriving (Eq,Show)

newtype Intro = Intro [Intro_] 		deriving (Eq,Show)

data Intro_ = Intro_Str String
            | Intro_Para Para
            | Intro_List List
            | Intro_Note Note
            | Intro_Instruction Instruction
            | Intro_Literal Literal
            | Intro_Xref Xref
            | Intro_B B
            | Intro_Arm_defined_word Arm_defined_word
            | Intro_Parameter Parameter
            | Intro_Sup Sup
            | Intro_Sub Sub
            | Intro_Binarynumber Binarynumber
            | Intro_Hexnumber Hexnumber
            | Intro_Syntax Syntax
            | Intro_Field Field
            | Intro_Value Value
            | Intro_Function Function
            | Intro_AEnum AEnum
            | Intro_Enumvalue Enumvalue
            | Intro_Url Url
            | Intro_Image Image
            deriving (Eq,Show)

data Account = Account Account_Attrs (Maybe Docvars) Intro
             deriving (Eq,Show)
data Account_Attrs = Account_Attrs
    { accountEncodedin :: (Maybe String)
    } deriving (Eq,Show)

data Definition = Definition Definition_Attrs Intro Table
                             (Maybe After)
                deriving (Eq,Show)
data Definition_Attrs = Definition_Attrs
    { definitionEncodedin :: String
    , definitionTabulatedwith :: (Maybe String)
    } deriving (Eq,Show)

newtype After = After [After_] 		deriving (Eq,Show)

data After_ = After_Str String
            | After_A A
            | After_Anchor Anchor
            | After_Txt Txt
            deriving (Eq,Show)

data Table = Table Table_Attrs (List1 Tgroup)
           deriving (Eq,Show)
data Table_Attrs = Table_Attrs
    { tableClass :: Table_class
    } deriving (Eq,Show)

data Table_class = Table_class_valuetable
                 deriving (Eq,Show)

data Tgroup = Tgroup Tgroup_Attrs Thead Tbody
            deriving (Eq,Show)
data Tgroup_Attrs = Tgroup_Attrs
    { tgroupCols :: String
    } deriving (Eq,Show)

newtype Thead = Thead (List1 Row) 		deriving (Eq,Show)

newtype Tbody = Tbody (List1 Row) 		deriving (Eq,Show)

newtype Row = Row (List1 Entry) 		deriving (Eq,Show)

data Entry = Entry Entry_Attrs [Entry_]
           deriving (Eq,Show)
data Entry_Attrs = Entry_Attrs
    { entryClass :: Entry_class
    , entryBitwidth :: (Maybe String)
    , entryIclasslink :: (Maybe String)
    , entryIclasslinkfile :: (Maybe String)
    } deriving (Eq,Show)

data Entry_ = Entry_Str String
            | Entry_A A
            | Entry_Anchor Anchor
            | Entry_Txt Txt
            | Entry_Arch_variants Arch_variants
            deriving (Eq,Show)

data Entry_class = Entry_class_symbol  |  Entry_class_bitfield  | 
                   Entry_class_feature
                 deriving (Eq,Show)

data Aliastablehook = Aliastablehook Aliastablehook_Attrs String
                    deriving (Eq,Show)
data Aliastablehook_Attrs = Aliastablehook_Attrs
    { aliastablehookAnchor :: String
    } deriving (Eq,Show)

data Ps_section = Ps_section Ps_section_Attrs (List1 Ps)
                deriving (Eq,Show)
data Ps_section_Attrs = Ps_section_Attrs
    { ps_sectionHowmany :: String
    } deriving (Eq,Show)

data Ps = Ps Ps_Attrs Pstext
        deriving (Eq,Show)
data Ps_Attrs = Ps_Attrs
    { psName :: String
    , psMylink :: (Maybe String)
    , psEnclabels :: (Maybe String)
    , psSections :: String
    , psSecttype :: (Maybe String)
    } deriving (Eq,Show)

newtype Psdoc = Psdoc String 		deriving (Eq,Show)

data Pstext = Pstext Pstext_Attrs [Pstext_]
            deriving (Eq,Show)
data Pstext_Attrs = Pstext_Attrs
    { pstextSection :: String
    , pstextRep_section :: (Maybe String)
    , pstextMayhavelinks :: (Maybe Pstext_mayhavelinks)
    } deriving (Eq,Show)

data Pstext_ = Pstext_Str String
             | Pstext_A A
             | Pstext_Anchor Anchor
             | Pstext_Txt Txt
             deriving (Eq,Show)

data Pstext_mayhavelinks = Pstext_mayhavelinks_1
                         deriving (Eq,Show)

data Constrained_unpredictables = Constrained_unpredictables Constrained_unpredictables_Attrs
                                                             (List1 Cu_case)
                                deriving (Eq,Show)
data Constrained_unpredictables_Attrs = Constrained_unpredictables_Attrs
    { constrained_unpredictablesEncoding :: (Maybe String)
    , constrained_unpredictablesPs_block :: (Maybe String)
    } deriving (Eq,Show)

data Cu_case = Cu_case Cu_cause (List1 Cu_type)
                       (Maybe Arch_variants)
             deriving (Eq,Show)

newtype Cu_cause = Cu_cause Pstext 		deriving (Eq,Show)

data Cu_type = Cu_type Cu_type_Attrs [Cu_type_variable]
                       [Cu_type_text]
             deriving (Eq,Show)
data Cu_type_Attrs = Cu_type_Attrs
    { cu_typeConstraint :: (Maybe String)
    } deriving (Eq,Show)

data Cu_type_variable = Cu_type_variable
    { cu_type_variableName :: String
    , cu_type_variableValue :: String
    } deriving (Eq,Show)

newtype Cu_type_text = Cu_type_text [String] 		deriving (Eq,Show)

newtype Exceptions = Exceptions [Exception_group] 		deriving (Eq,Show)

data Exception_group = Exception_group Exception_group_Attrs
                                       (List1 Exception)
                     deriving (Eq,Show)
data Exception_group_Attrs = Exception_group_Attrs
    { exception_groupGroup_name :: (Maybe String)
    } deriving (Eq,Show)

data Exception = Exception
    { exceptionRegister :: (Maybe String)
    , exceptionField :: (Maybe String)
    , exceptionValue :: (Maybe String)
    , exceptionName :: (Maybe String)
    } deriving (Eq,Show)

data Txt = Txt Txt_Attrs [Txt_]
         deriving (Eq,Show)
data Txt_Attrs = Txt_Attrs
    { txtClass :: (Maybe String)
    } deriving (Eq,Show)

data Txt_ = Txt_Str String
          | Txt_A A
          | Txt_Anchor Anchor
          | Txt_Txt Txt
          deriving (Eq,Show)

newtype Text = Text String 		deriving (Eq,Show)

newtype Note = Note [Note_] 		deriving (Eq,Show)

data Note_ = Note_Str String
           | Note_Para Para
           | Note_List List
           | Note_Table Table
           deriving (Eq,Show)

data Image = Image
    { imageFile :: String
    , imageLabel :: (Maybe String)
    } deriving (Eq,Show)


-- INSTANCES --


instance HTypeable Docvars where
    toHType x = Defined "docvars" [] []
instance XmlContent Docvars where
    toContents (Docvars a) =
        [CElem (Elem (N "docvars") [] (toContents a)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["docvars"]
        ; interior e $ return (Docvars) `apply` parseContents
        } `adjustErr` ("in <docvars>, "++)

instance HTypeable Docvar where
    toHType x = Defined "docvar" [] []
instance XmlContent Docvar where
    toContents as =
        [CElem (Elem (N "docvar") (toAttrs as) []) ()]
    parseContents = do
        { (Elem _ as []) <- element ["docvar"]
        ; return (fromAttrs as)
        } `adjustErr` ("in <docvar>, "++)
instance XmlAttributes Docvar where
    fromAttrs as =
        Docvar
          { docvarKey = definiteA fromAttrToStr "docvar" "key" as
          , docvarValue = definiteA fromAttrToStr "docvar" "value" as
          }
    toAttrs v = catMaybes 
        [ toAttrFrStr "key" (docvarKey v)
        , toAttrFrStr "value" (docvarValue v)
        ]

instance HTypeable Para where
    toHType x = Defined "para" [] []
instance XmlContent Para where
    toContents (Para a) =
        [CElem (Elem (N "para") [] (concatMap toContents a)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["para"]
        ; interior e $ return (Para) `apply` many parseContents
        } `adjustErr` ("in <para>, "++)

instance HTypeable Para_ where
    toHType x = Defined "para" [] []
instance XmlContent Para_ where
    toContents (Para_Str a) = toText a
    toContents (Para_Instruction a) = toContents a
    toContents (Para_Literal a) = toContents a
    toContents (Para_Xref a) = toContents a
    toContents (Para_B a) = toContents a
    toContents (Para_Arm_defined_word a) = toContents a
    toContents (Para_Parameter a) = toContents a
    toContents (Para_Sup a) = toContents a
    toContents (Para_Sub a) = toContents a
    toContents (Para_Binarynumber a) = toContents a
    toContents (Para_Hexnumber a) = toContents a
    toContents (Para_Syntax a) = toContents a
    toContents (Para_Field a) = toContents a
    toContents (Para_Value a) = toContents a
    toContents (Para_Function a) = toContents a
    toContents (Para_AEnum a) = toContents a
    toContents (Para_Enumvalue a) = toContents a
    toContents (Para_Url a) = toContents a
    toContents (Para_Image a) = toContents a
    parseContents = oneOf
        [ return (Para_Str) `apply` text
        , return (Para_Instruction) `apply` parseContents
        , return (Para_Literal) `apply` parseContents
        , return (Para_Xref) `apply` parseContents
        , return (Para_B) `apply` parseContents
        , return (Para_Arm_defined_word) `apply` parseContents
        , return (Para_Parameter) `apply` parseContents
        , return (Para_Sup) `apply` parseContents
        , return (Para_Sub) `apply` parseContents
        , return (Para_Binarynumber) `apply` parseContents
        , return (Para_Hexnumber) `apply` parseContents
        , return (Para_Syntax) `apply` parseContents
        , return (Para_Field) `apply` parseContents
        , return (Para_Value) `apply` parseContents
        , return (Para_Function) `apply` parseContents
        , return (Para_AEnum) `apply` parseContents
        , return (Para_Enumvalue) `apply` parseContents
        , return (Para_Url) `apply` parseContents
        , return (Para_Image) `apply` parseContents
        ] `adjustErr` ("in <para>, "++)

instance HTypeable Instruction where
    toHType x = Defined "instruction" [] []
instance XmlContent Instruction where
    toContents (Instruction as a) =
        [CElem (Elem (N "instruction") (toAttrs as) (concatMap toContents a)) ()]
    parseContents = do
        { e@(Elem _ as _) <- element ["instruction"]
        ; interior e $ return (Instruction (fromAttrs as))
                       `apply` many parseContents
        } `adjustErr` ("in <instruction>, "++)
instance XmlAttributes Instruction_Attrs where
    fromAttrs as =
        Instruction_Attrs
          { instructionParam0 = possibleA fromAttrToStr "param0" as
          }
    toAttrs v = catMaybes 
        [ maybeToAttr toAttrFrStr "param0" (instructionParam0 v)
        ]

instance HTypeable List where
    toHType x = Defined "list" [] []
instance XmlContent List where
    toContents (List as a) =
        [CElem (Elem (N "list") (toAttrs as) (toContents a)) ()]
    parseContents = do
        { e@(Elem _ as _) <- element ["list"]
        ; interior e $ return (List (fromAttrs as)) `apply` parseContents
        } `adjustErr` ("in <list>, "++)
instance XmlAttributes List_Attrs where
    fromAttrs as =
        List_Attrs
          { listType = definiteA fromAttrToTyp "list" "type" as
          , listRole = possibleA fromAttrToTyp "role" as
          , listLanguage = possibleA fromAttrToStr "language" as
          }
    toAttrs v = catMaybes 
        [ toAttrFrTyp "type" (listType v)
        , maybeToAttr toAttrFrTyp "role" (listRole v)
        , maybeToAttr toAttrFrStr "language" (listLanguage v)
        ]

instance XmlAttrType List_type where
    fromAttrToTyp n (N n',v)
        | n==n'     = translate (attr2str v)
        | otherwise = Nothing
      where translate "ordered" = Just List_type_ordered
            translate "unordered" = Just List_type_unordered
            translate "var" = Just List_type_var
            translate "param" = Just List_type_param
            translate _ = Nothing
    toAttrFrTyp n List_type_ordered = Just (N n, str2attr "ordered")
    toAttrFrTyp n List_type_unordered = Just (N n, str2attr "unordered")
    toAttrFrTyp n List_type_var = Just (N n, str2attr "var")
    toAttrFrTyp n List_type_param = Just (N n, str2attr "param")

instance XmlAttrType List_role where
    fromAttrToTyp n (N n',v)
        | n==n'     = translate (attr2str v)
        | otherwise = Nothing
      where translate "standard" = Just List_role_standard
            translate "compressed" = Just List_role_compressed
            translate "break" = Just List_role_break
            translate "wide" = Just List_role_wide
            translate _ = Nothing
    toAttrFrTyp n List_role_standard = Just (N n, str2attr "standard")
    toAttrFrTyp n List_role_compressed = Just (N n, str2attr "compressed")
    toAttrFrTyp n List_role_break = Just (N n, str2attr "break")
    toAttrFrTyp n List_role_wide = Just (N n, str2attr "wide")

instance HTypeable Listitem where
    toHType x = Defined "listitem" [] []
instance XmlContent Listitem where
    toContents (Listitem a b) =
        [CElem (Elem (N "listitem") [] (toContents a ++ toContents b)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["listitem"]
        ; interior e $ return (Listitem) `apply` parseContents
                       `apply` parseContents
        } `adjustErr` ("in <listitem>, "++)

instance HTypeable Term where
    toHType x = Defined "term" [] []
instance XmlContent Term where
    toContents (Term a) =
        [CElem (Elem (N "term") [] (concatMap toContents a)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["term"]
        ; interior e $ return (Term) `apply` many parseContents
        } `adjustErr` ("in <term>, "++)

instance HTypeable Term_ where
    toHType x = Defined "term" [] []
instance XmlContent Term_ where
    toContents (Term_Str a) = toText a
    toContents (Term_Instruction a) = toContents a
    toContents (Term_Literal a) = toContents a
    toContents (Term_Xref a) = toContents a
    toContents (Term_B a) = toContents a
    toContents (Term_Arm_defined_word a) = toContents a
    toContents (Term_Parameter a) = toContents a
    toContents (Term_Sup a) = toContents a
    toContents (Term_Sub a) = toContents a
    toContents (Term_Binarynumber a) = toContents a
    toContents (Term_Hexnumber a) = toContents a
    toContents (Term_Syntax a) = toContents a
    toContents (Term_Field a) = toContents a
    toContents (Term_Value a) = toContents a
    toContents (Term_Function a) = toContents a
    toContents (Term_AEnum a) = toContents a
    toContents (Term_Enumvalue a) = toContents a
    toContents (Term_Url a) = toContents a
    toContents (Term_Image a) = toContents a
    parseContents = oneOf
        [ return (Term_Str) `apply` text
        , return (Term_Instruction) `apply` parseContents
        , return (Term_Literal) `apply` parseContents
        , return (Term_Xref) `apply` parseContents
        , return (Term_B) `apply` parseContents
        , return (Term_Arm_defined_word) `apply` parseContents
        , return (Term_Parameter) `apply` parseContents
        , return (Term_Sup) `apply` parseContents
        , return (Term_Sub) `apply` parseContents
        , return (Term_Binarynumber) `apply` parseContents
        , return (Term_Hexnumber) `apply` parseContents
        , return (Term_Syntax) `apply` parseContents
        , return (Term_Field) `apply` parseContents
        , return (Term_Value) `apply` parseContents
        , return (Term_Function) `apply` parseContents
        , return (Term_AEnum) `apply` parseContents
        , return (Term_Enumvalue) `apply` parseContents
        , return (Term_Url) `apply` parseContents
        , return (Term_Image) `apply` parseContents
        ] `adjustErr` ("in <term>, "++)

instance HTypeable Param where
    toHType x = Defined "param" [] []
instance XmlContent Param where
    toContents (Param a) =
        [CElem (Elem (N "param") [] (concatMap toContents a)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["param"]
        ; interior e $ return (Param) `apply` many parseContents
        } `adjustErr` ("in <param>, "++)

instance HTypeable Param_ where
    toHType x = Defined "param" [] []
instance XmlContent Param_ where
    toContents (Param_Str a) = toText a
    toContents (Param_Instruction a) = toContents a
    toContents (Param_Literal a) = toContents a
    toContents (Param_Xref a) = toContents a
    toContents (Param_B a) = toContents a
    toContents (Param_Arm_defined_word a) = toContents a
    toContents (Param_Parameter a) = toContents a
    toContents (Param_Sup a) = toContents a
    toContents (Param_Sub a) = toContents a
    toContents (Param_Binarynumber a) = toContents a
    toContents (Param_Hexnumber a) = toContents a
    toContents (Param_Syntax a) = toContents a
    toContents (Param_Field a) = toContents a
    toContents (Param_Value a) = toContents a
    toContents (Param_Function a) = toContents a
    toContents (Param_AEnum a) = toContents a
    toContents (Param_Enumvalue a) = toContents a
    toContents (Param_Url a) = toContents a
    toContents (Param_Image a) = toContents a
    parseContents = oneOf
        [ return (Param_Str) `apply` text
        , return (Param_Instruction) `apply` parseContents
        , return (Param_Literal) `apply` parseContents
        , return (Param_Xref) `apply` parseContents
        , return (Param_B) `apply` parseContents
        , return (Param_Arm_defined_word) `apply` parseContents
        , return (Param_Parameter) `apply` parseContents
        , return (Param_Sup) `apply` parseContents
        , return (Param_Sub) `apply` parseContents
        , return (Param_Binarynumber) `apply` parseContents
        , return (Param_Hexnumber) `apply` parseContents
        , return (Param_Syntax) `apply` parseContents
        , return (Param_Field) `apply` parseContents
        , return (Param_Value) `apply` parseContents
        , return (Param_Function) `apply` parseContents
        , return (Param_AEnum) `apply` parseContents
        , return (Param_Enumvalue) `apply` parseContents
        , return (Param_Url) `apply` parseContents
        , return (Param_Image) `apply` parseContents
        ] `adjustErr` ("in <param>, "++)

instance HTypeable Content where
    toHType x = Defined "content" [] []
instance XmlContent Content where
    toContents (Content a) =
        [CElem (Elem (N "content") [] (concatMap toContents a)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["content"]
        ; interior e $ return (Content) `apply` many parseContents
        } `adjustErr` ("in <content>, "++)

instance HTypeable Content_ where
    toHType x = Defined "content" [] []
instance XmlContent Content_ where
    toContents (Content_Str a) = toText a
    toContents (Content_List a) = toContents a
    toContents (Content_Para a) = toContents a
    toContents (Content_Instruction a) = toContents a
    toContents (Content_Literal a) = toContents a
    toContents (Content_Xref a) = toContents a
    toContents (Content_B a) = toContents a
    toContents (Content_Arm_defined_word a) = toContents a
    toContents (Content_Parameter a) = toContents a
    toContents (Content_Sup a) = toContents a
    toContents (Content_Sub a) = toContents a
    toContents (Content_Binarynumber a) = toContents a
    toContents (Content_Hexnumber a) = toContents a
    toContents (Content_Syntax a) = toContents a
    toContents (Content_Field a) = toContents a
    toContents (Content_Value a) = toContents a
    toContents (Content_Function a) = toContents a
    toContents (Content_AEnum a) = toContents a
    toContents (Content_Enumvalue a) = toContents a
    toContents (Content_Url a) = toContents a
    toContents (Content_Image a) = toContents a
    parseContents = oneOf
        [ return (Content_Str) `apply` text
        , return (Content_List) `apply` parseContents
        , return (Content_Para) `apply` parseContents
        , return (Content_Instruction) `apply` parseContents
        , return (Content_Literal) `apply` parseContents
        , return (Content_Xref) `apply` parseContents
        , return (Content_B) `apply` parseContents
        , return (Content_Arm_defined_word) `apply` parseContents
        , return (Content_Parameter) `apply` parseContents
        , return (Content_Sup) `apply` parseContents
        , return (Content_Sub) `apply` parseContents
        , return (Content_Binarynumber) `apply` parseContents
        , return (Content_Hexnumber) `apply` parseContents
        , return (Content_Syntax) `apply` parseContents
        , return (Content_Field) `apply` parseContents
        , return (Content_Value) `apply` parseContents
        , return (Content_Function) `apply` parseContents
        , return (Content_AEnum) `apply` parseContents
        , return (Content_Enumvalue) `apply` parseContents
        , return (Content_Url) `apply` parseContents
        , return (Content_Image) `apply` parseContents
        ] `adjustErr` ("in <content>, "++)

instance HTypeable Arm_defined_word where
    toHType x = Defined "arm-defined-word" [] []
instance XmlContent Arm_defined_word where
    toContents (Arm_defined_word a) =
        [CElem (Elem (N "arm-defined-word") [] (concatMap toContents a)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["arm-defined-word"]
        ; interior e $ return (Arm_defined_word) `apply` many parseContents
        } `adjustErr` ("in <arm-defined-word>, "++)

instance HTypeable Code where
    toHType x = Defined "code" [] []
instance XmlContent Code where
    toContents (Code a) =
        [CElem (Elem (N "code") [] (concatMap toContents a)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["code"]
        ; interior e $ return (Code) `apply` many parseContents
        } `adjustErr` ("in <code>, "++)

instance HTypeable Sup where
    toHType x = Defined "sup" [] []
instance XmlContent Sup where
    toContents (Sup a) =
        [CElem (Elem (N "sup") [] (concatMap toContents a)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["sup"]
        ; interior e $ return (Sup) `apply` many parseContents
        } `adjustErr` ("in <sup>, "++)

instance HTypeable Sub where
    toHType x = Defined "sub" [] []
instance XmlContent Sub where
    toContents (Sub a) =
        [CElem (Elem (N "sub") [] (concatMap toContents a)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["sub"]
        ; interior e $ return (Sub) `apply` many parseContents
        } `adjustErr` ("in <sub>, "++)

instance HTypeable Binarynumber where
    toHType x = Defined "binarynumber" [] []
instance XmlContent Binarynumber where
    toContents (Binarynumber a) =
        [CElem (Elem (N "binarynumber") [] (concatMap toContents a)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["binarynumber"]
        ; interior e $ return (Binarynumber) `apply` many parseContents
        } `adjustErr` ("in <binarynumber>, "++)

instance HTypeable Hexnumber where
    toHType x = Defined "hexnumber" [] []
instance XmlContent Hexnumber where
    toContents (Hexnumber a) =
        [CElem (Elem (N "hexnumber") [] (concatMap toContents a)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["hexnumber"]
        ; interior e $ return (Hexnumber) `apply` many parseContents
        } `adjustErr` ("in <hexnumber>, "++)

instance HTypeable Syntax where
    toHType x = Defined "syntax" [] []
instance XmlContent Syntax where
    toContents (Syntax a) =
        [CElem (Elem (N "syntax") [] (concatMap toContents a)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["syntax"]
        ; interior e $ return (Syntax) `apply` many parseContents
        } `adjustErr` ("in <syntax>, "++)

instance HTypeable Field where
    toHType x = Defined "field" [] []
instance XmlContent Field where
    toContents (Field a) =
        [CElem (Elem (N "field") [] (concatMap toContents a)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["field"]
        ; interior e $ return (Field) `apply` many parseContents
        } `adjustErr` ("in <field>, "++)

instance HTypeable Value where
    toHType x = Defined "value" [] []
instance XmlContent Value where
    toContents (Value a) =
        [CElem (Elem (N "value") [] (concatMap toContents a)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["value"]
        ; interior e $ return (Value) `apply` many parseContents
        } `adjustErr` ("in <value>, "++)

instance HTypeable Parameter where
    toHType x = Defined "parameter" [] []
instance XmlContent Parameter where
    toContents (Parameter a) =
        [CElem (Elem (N "parameter") [] (concatMap toContents a)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["parameter"]
        ; interior e $ return (Parameter) `apply` many parseContents
        } `adjustErr` ("in <parameter>, "++)

instance HTypeable Literal where
    toHType x = Defined "literal" [] []
instance XmlContent Literal where
    toContents (Literal a) =
        [CElem (Elem (N "literal") [] (concatMap toContents a)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["literal"]
        ; interior e $ return (Literal) `apply` many parseContents
        } `adjustErr` ("in <literal>, "++)

instance HTypeable Function where
    toHType x = Defined "function" [] []
instance XmlContent Function where
    toContents (Function a) =
        [CElem (Elem (N "function") [] (concatMap toContents a)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["function"]
        ; interior e $ return (Function) `apply` many parseContents
        } `adjustErr` ("in <function>, "++)

instance HTypeable AEnum where
    toHType x = Defined "enum" [] []
instance XmlContent AEnum where
    toContents (AEnum a) =
        [CElem (Elem (N "enum") [] (concatMap toContents a)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["enum"]
        ; interior e $ return (AEnum) `apply` many parseContents
        } `adjustErr` ("in <enum>, "++)

instance HTypeable Enumvalue where
    toHType x = Defined "enumvalue" [] []
instance XmlContent Enumvalue where
    toContents (Enumvalue a) =
        [CElem (Elem (N "enumvalue") [] (concatMap toContents a)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["enumvalue"]
        ; interior e $ return (Enumvalue) `apply` many parseContents
        } `adjustErr` ("in <enumvalue>, "++)

instance HTypeable B where
    toHType x = Defined "b" [] []
instance XmlContent B where
    toContents (B a) =
        [CElem (Elem (N "b") [] (concatMap toContents a)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["b"]
        ; interior e $ return (B) `apply` many parseContents
        } `adjustErr` ("in <b>, "++)

instance HTypeable Xref where
    toHType x = Defined "xref" [] []
instance XmlContent Xref where
    toContents (Xref as a) =
        [CElem (Elem (N "xref") (toAttrs as) (concatMap toContents a)) ()]
    parseContents = do
        { e@(Elem _ as _) <- element ["xref"]
        ; interior e $ return (Xref (fromAttrs as))
                       `apply` many parseContents
        } `adjustErr` ("in <xref>, "++)
instance XmlAttributes Xref_Attrs where
    fromAttrs as =
        Xref_Attrs
          { xrefLinkend = definiteA fromAttrToStr "xref" "linkend" as
          }
    toAttrs v = catMaybes 
        [ toAttrFrStr "linkend" (xrefLinkend v)
        ]

instance HTypeable Url where
    toHType x = Defined "url" [] []
instance XmlContent Url where
    toContents (Url a) =
        [CElem (Elem (N "url") [] (concatMap toContents a)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["url"]
        ; interior e $ return (Url) `apply` many parseContents
        } `adjustErr` ("in <url>, "++)

instance HTypeable Textsection where
    toHType x = Defined "textsection" [] []
instance XmlContent Textsection where
    toContents (Textsection as a) =
        [CElem (Elem (N "textsection") (toAttrs as) (concatMap toContents a)) ()]
    parseContents = do
        { e@(Elem _ as _) <- element ["textsection"]
        ; interior e $ return (Textsection (fromAttrs as))
                       `apply` many parseContents
        } `adjustErr` ("in <textsection>, "++)
instance XmlAttributes Textsection_Attrs where
    fromAttrs as =
        Textsection_Attrs
          { textsectionTitle = definiteA fromAttrToStr "textsection" "title" as
          }
    toAttrs v = catMaybes 
        [ toAttrFrStr "title" (textsectionTitle v)
        ]

instance HTypeable Instructionsection where
    toHType x = Defined "instructionsection" [] []
instance XmlContent Instructionsection where
    toContents (Instructionsection as a b c d e f g h i j) =
        [CElem (Elem (N "instructionsection") (toAttrs as) (toContents a ++
                                                            toContents b ++ toContents c ++
                                                            maybe [] toContents d ++ toContents e ++
                                                            concatMap toContents f ++
                                                            maybe [] toContents g ++
                                                            maybe [] toContents h ++
                                                            concatMap toContents i ++
                                                            maybe [] toContents j)) ()]
    parseContents = do
        { e@(Elem _ as _) <- element ["instructionsection"]
        ; interior e $ return (Instructionsection (fromAttrs as))
                       `apply` parseContents `apply` parseContents `apply` parseContents
                       `apply` optional parseContents `apply` parseContents
                       `apply` many parseContents `apply` optional parseContents
                       `apply` optional parseContents `apply` many parseContents
                       `apply` optional parseContents
        } `adjustErr` ("in <instructionsection>, "++)
instance XmlAttributes Instructionsection_Attrs where
    fromAttrs as =
        Instructionsection_Attrs
          { instructionsectionId = definiteA fromAttrToStr "instructionsection" "id" as
          , instructionsectionTitle = definiteA fromAttrToStr "instructionsection" "title" as
          , instructionsectionTags = possibleA fromAttrToStr "tags" as
          , instructionsectionType = possibleA fromAttrToTyp "type" as
          }
    toAttrs v = catMaybes 
        [ toAttrFrStr "id" (instructionsectionId v)
        , toAttrFrStr "title" (instructionsectionTitle v)
        , maybeToAttr toAttrFrStr "tags" (instructionsectionTags v)
        , maybeToAttr toAttrFrTyp "type" (instructionsectionType v)
        ]

instance XmlAttrType Instructionsection_type where
    fromAttrToTyp n (N n',v)
        | n==n'     = translate (attr2str v)
        | otherwise = Nothing
      where translate "alias" = Just Instructionsection_type_alias
            translate _ = Nothing
    toAttrFrTyp n Instructionsection_type_alias = Just (N n, str2attr "alias")

instance HTypeable A where
    toHType x = Defined "a" [] []
instance XmlContent A where
    toContents (A as a) =
        [CElem (Elem (N "a") (toAttrs as) (concatMap toContents a)) ()]
    parseContents = do
        { e@(Elem _ as _) <- element ["a"]
        ; interior e $ return (A (fromAttrs as)) `apply` many parseContents
        } `adjustErr` ("in <a>, "++)
instance XmlAttributes A_Attrs where
    fromAttrs as =
        A_Attrs
          { aHref = possibleA fromAttrToStr "href" as
          , aLink = possibleA fromAttrToStr "link" as
          , aFile = possibleA fromAttrToStr "file" as
          , aHover = possibleA fromAttrToStr "hover" as
          }
    toAttrs v = catMaybes 
        [ maybeToAttr toAttrFrStr "href" (aHref v)
        , maybeToAttr toAttrFrStr "link" (aLink v)
        , maybeToAttr toAttrFrStr "file" (aFile v)
        , maybeToAttr toAttrFrStr "hover" (aHover v)
        ]

instance HTypeable Anchor where
    toHType x = Defined "anchor" [] []
instance XmlContent Anchor where
    toContents (Anchor as a) =
        [CElem (Elem (N "anchor") (toAttrs as) (toText a)) ()]
    parseContents = do
        { e@(Elem _ as _) <- element ["anchor"]
        ; interior e $ return (Anchor (fromAttrs as))
                       `apply` (text `onFail` return "")
        } `adjustErr` ("in <anchor>, "++)
instance XmlAttributes Anchor_Attrs where
    fromAttrs as =
        Anchor_Attrs
          { anchorLink = definiteA fromAttrToStr "anchor" "link" as
          , anchorFile = possibleA fromAttrToStr "file" as
          , anchorHover = possibleA fromAttrToStr "hover" as
          }
    toAttrs v = catMaybes 
        [ toAttrFrStr "link" (anchorLink v)
        , maybeToAttr toAttrFrStr "file" (anchorFile v)
        , maybeToAttr toAttrFrStr "hover" (anchorHover v)
        ]

instance HTypeable Heading where
    toHType x = Defined "heading" [] []
instance XmlContent Heading where
    toContents (Heading a) =
        [CElem (Elem (N "heading") [] (concatMap toContents a)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["heading"]
        ; interior e $ return (Heading) `apply` many parseContents
        } `adjustErr` ("in <heading>, "++)

instance HTypeable Heading_ where
    toHType x = Defined "heading" [] []
instance XmlContent Heading_ where
    toContents (Heading_Str a) = toText a
    toContents (Heading_A a) = toContents a
    toContents (Heading_Anchor a) = toContents a
    toContents (Heading_Txt a) = toContents a
    parseContents = oneOf
        [ return (Heading_Str) `apply` text
        , return (Heading_A) `apply` parseContents
        , return (Heading_Anchor) `apply` parseContents
        , return (Heading_Txt) `apply` parseContents
        ] `adjustErr` ("in <heading>, "++)

instance HTypeable Desc where
    toHType x = Defined "desc" [] []
instance XmlContent Desc where
    toContents (Desc a b c d e f) =
        [CElem (Elem (N "desc") [] (toContents a ++ concatMap toContents b
                                    ++ maybe [] toContents c ++ maybe [] toContents d ++
                                    maybe [] toContents e ++ maybe [] toContents f)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["desc"]
        ; interior e $ return (Desc) `apply` parseContents
                       `apply` many parseContents `apply` optional parseContents
                       `apply` optional parseContents `apply` optional parseContents
                       `apply` optional parseContents
        } `adjustErr` ("in <desc>, "++)

instance HTypeable Brief where
    toHType x = Defined "brief" [] []
instance XmlContent Brief where
    toContents (Brief as a) =
        [CElem (Elem (N "brief") (toAttrs as) (concatMap toContents a)) ()]
    parseContents = do
        { e@(Elem _ as _) <- element ["brief"]
        ; interior e $ return (Brief (fromAttrs as))
                       `apply` many parseContents
        } `adjustErr` ("in <brief>, "++)
instance XmlAttributes Brief_Attrs where
    fromAttrs as =
        Brief_Attrs
          { briefSynth = possibleA fromAttrToTyp "synth" as
          , briefChecked = possibleA fromAttrToTyp "checked" as
          , briefEnclist = possibleA fromAttrToStr "enclist" as
          }
    toAttrs v = catMaybes 
        [ maybeToAttr toAttrFrTyp "synth" (briefSynth v)
        , maybeToAttr toAttrFrTyp "checked" (briefChecked v)
        , maybeToAttr toAttrFrStr "enclist" (briefEnclist v)
        ]

instance HTypeable Brief_ where
    toHType x = Defined "brief" [] []
instance XmlContent Brief_ where
    toContents (Brief_Str a) = toText a
    toContents (Brief_Para a) = toContents a
    toContents (Brief_List a) = toContents a
    toContents (Brief_Note a) = toContents a
    toContents (Brief_Instruction a) = toContents a
    toContents (Brief_Literal a) = toContents a
    toContents (Brief_Xref a) = toContents a
    toContents (Brief_B a) = toContents a
    toContents (Brief_Arm_defined_word a) = toContents a
    toContents (Brief_Parameter a) = toContents a
    toContents (Brief_Sup a) = toContents a
    toContents (Brief_Sub a) = toContents a
    toContents (Brief_Binarynumber a) = toContents a
    toContents (Brief_Hexnumber a) = toContents a
    toContents (Brief_Syntax a) = toContents a
    toContents (Brief_Field a) = toContents a
    toContents (Brief_Value a) = toContents a
    toContents (Brief_Function a) = toContents a
    toContents (Brief_AEnum a) = toContents a
    toContents (Brief_Enumvalue a) = toContents a
    toContents (Brief_Url a) = toContents a
    toContents (Brief_Image a) = toContents a
    parseContents = oneOf
        [ return (Brief_Str) `apply` text
        , return (Brief_Para) `apply` parseContents
        , return (Brief_List) `apply` parseContents
        , return (Brief_Note) `apply` parseContents
        , return (Brief_Instruction) `apply` parseContents
        , return (Brief_Literal) `apply` parseContents
        , return (Brief_Xref) `apply` parseContents
        , return (Brief_B) `apply` parseContents
        , return (Brief_Arm_defined_word) `apply` parseContents
        , return (Brief_Parameter) `apply` parseContents
        , return (Brief_Sup) `apply` parseContents
        , return (Brief_Sub) `apply` parseContents
        , return (Brief_Binarynumber) `apply` parseContents
        , return (Brief_Hexnumber) `apply` parseContents
        , return (Brief_Syntax) `apply` parseContents
        , return (Brief_Field) `apply` parseContents
        , return (Brief_Value) `apply` parseContents
        , return (Brief_Function) `apply` parseContents
        , return (Brief_AEnum) `apply` parseContents
        , return (Brief_Enumvalue) `apply` parseContents
        , return (Brief_Url) `apply` parseContents
        , return (Brief_Image) `apply` parseContents
        ] `adjustErr` ("in <brief>, "++)

instance XmlAttrType Brief_synth where
    fromAttrToTyp n (N n',v)
        | n==n'     = translate (attr2str v)
        | otherwise = Nothing
      where translate "single" = Just Brief_synth_single
            translate _ = Nothing
    toAttrFrTyp n Brief_synth_single = Just (N n, str2attr "single")

instance XmlAttrType Brief_checked where
    fromAttrToTyp n (N n',v)
        | n==n'     = translate (attr2str v)
        | otherwise = Nothing
      where translate "yes" = Just Brief_checked_yes
            translate _ = Nothing
    toAttrFrTyp n Brief_checked_yes = Just (N n, str2attr "yes")

instance HTypeable Alg where
    toHType x = Defined "alg" [] []
instance XmlContent Alg where
    toContents (Alg as a) =
        [CElem (Elem (N "alg") (toAttrs as) (toText a)) ()]
    parseContents = do
        { e@(Elem _ as _) <- element ["alg"]
        ; interior e $ return (Alg (fromAttrs as))
                       `apply` (text `onFail` return "")
        } `adjustErr` ("in <alg>, "++)
instance XmlAttributes Alg_Attrs where
    fromAttrs as =
        Alg_Attrs
          { algHowmany = possibleA fromAttrToStr "howmany" as
          }
    toAttrs v = catMaybes 
        [ maybeToAttr toAttrFrStr "howmany" (algHowmany v)
        ]

instance HTypeable Longer where
    toHType x = Defined "longer" [] []
instance XmlContent Longer where
    toContents (Longer a) =
        [CElem (Elem (N "longer") [] (concatMap toContents a)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["longer"]
        ; interior e $ return (Longer) `apply` many parseContents
        } `adjustErr` ("in <longer>, "++)

instance HTypeable Longer_ where
    toHType x = Defined "longer" [] []
instance XmlContent Longer_ where
    toContents (Longer_Str a) = toText a
    toContents (Longer_Para a) = toContents a
    toContents (Longer_List a) = toContents a
    toContents (Longer_Note a) = toContents a
    toContents (Longer_Instruction a) = toContents a
    toContents (Longer_Literal a) = toContents a
    toContents (Longer_Xref a) = toContents a
    toContents (Longer_B a) = toContents a
    toContents (Longer_Arm_defined_word a) = toContents a
    toContents (Longer_Parameter a) = toContents a
    toContents (Longer_Sup a) = toContents a
    toContents (Longer_Sub a) = toContents a
    toContents (Longer_Binarynumber a) = toContents a
    toContents (Longer_Hexnumber a) = toContents a
    toContents (Longer_Syntax a) = toContents a
    toContents (Longer_Field a) = toContents a
    toContents (Longer_Value a) = toContents a
    toContents (Longer_Function a) = toContents a
    toContents (Longer_AEnum a) = toContents a
    toContents (Longer_Enumvalue a) = toContents a
    toContents (Longer_Url a) = toContents a
    toContents (Longer_Image a) = toContents a
    parseContents = oneOf
        [ return (Longer_Str) `apply` text
        , return (Longer_Para) `apply` parseContents
        , return (Longer_List) `apply` parseContents
        , return (Longer_Note) `apply` parseContents
        , return (Longer_Instruction) `apply` parseContents
        , return (Longer_Literal) `apply` parseContents
        , return (Longer_Xref) `apply` parseContents
        , return (Longer_B) `apply` parseContents
        , return (Longer_Arm_defined_word) `apply` parseContents
        , return (Longer_Parameter) `apply` parseContents
        , return (Longer_Sup) `apply` parseContents
        , return (Longer_Sub) `apply` parseContents
        , return (Longer_Binarynumber) `apply` parseContents
        , return (Longer_Hexnumber) `apply` parseContents
        , return (Longer_Syntax) `apply` parseContents
        , return (Longer_Field) `apply` parseContents
        , return (Longer_Value) `apply` parseContents
        , return (Longer_Function) `apply` parseContents
        , return (Longer_AEnum) `apply` parseContents
        , return (Longer_Enumvalue) `apply` parseContents
        , return (Longer_Url) `apply` parseContents
        , return (Longer_Image) `apply` parseContents
        ] `adjustErr` ("in <longer>, "++)

instance HTypeable Authored where
    toHType x = Defined "authored" [] []
instance XmlContent Authored where
    toContents (Authored a) =
        [CElem (Elem (N "authored") [] (concatMap toContents a)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["authored"]
        ; interior e $ return (Authored) `apply` many parseContents
        } `adjustErr` ("in <authored>, "++)

instance HTypeable Authored_ where
    toHType x = Defined "authored" [] []
instance XmlContent Authored_ where
    toContents (Authored_Str a) = toText a
    toContents (Authored_Para a) = toContents a
    toContents (Authored_List a) = toContents a
    toContents (Authored_Note a) = toContents a
    toContents (Authored_Instruction a) = toContents a
    toContents (Authored_Literal a) = toContents a
    toContents (Authored_Xref a) = toContents a
    toContents (Authored_B a) = toContents a
    toContents (Authored_Arm_defined_word a) = toContents a
    toContents (Authored_Parameter a) = toContents a
    toContents (Authored_Sup a) = toContents a
    toContents (Authored_Sub a) = toContents a
    toContents (Authored_Binarynumber a) = toContents a
    toContents (Authored_Hexnumber a) = toContents a
    toContents (Authored_Syntax a) = toContents a
    toContents (Authored_Field a) = toContents a
    toContents (Authored_Value a) = toContents a
    toContents (Authored_Function a) = toContents a
    toContents (Authored_AEnum a) = toContents a
    toContents (Authored_Enumvalue a) = toContents a
    toContents (Authored_Url a) = toContents a
    toContents (Authored_Image a) = toContents a
    parseContents = oneOf
        [ return (Authored_Str) `apply` text
        , return (Authored_Para) `apply` parseContents
        , return (Authored_List) `apply` parseContents
        , return (Authored_Note) `apply` parseContents
        , return (Authored_Instruction) `apply` parseContents
        , return (Authored_Literal) `apply` parseContents
        , return (Authored_Xref) `apply` parseContents
        , return (Authored_B) `apply` parseContents
        , return (Authored_Arm_defined_word) `apply` parseContents
        , return (Authored_Parameter) `apply` parseContents
        , return (Authored_Sup) `apply` parseContents
        , return (Authored_Sub) `apply` parseContents
        , return (Authored_Binarynumber) `apply` parseContents
        , return (Authored_Hexnumber) `apply` parseContents
        , return (Authored_Syntax) `apply` parseContents
        , return (Authored_Field) `apply` parseContents
        , return (Authored_Value) `apply` parseContents
        , return (Authored_Function) `apply` parseContents
        , return (Authored_AEnum) `apply` parseContents
        , return (Authored_Enumvalue) `apply` parseContents
        , return (Authored_Url) `apply` parseContents
        , return (Authored_Image) `apply` parseContents
        ] `adjustErr` ("in <authored>, "++)

instance HTypeable Encodingnotes where
    toHType x = Defined "encodingnotes" [] []
instance XmlContent Encodingnotes where
    toContents (Encodingnotes a) =
        [CElem (Elem (N "encodingnotes") [] (concatMap toContents a)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["encodingnotes"]
        ; interior e $ return (Encodingnotes) `apply` many parseContents
        } `adjustErr` ("in <encodingnotes>, "++)

instance HTypeable Encodingnotes_ where
    toHType x = Defined "encodingnotes" [] []
instance XmlContent Encodingnotes_ where
    toContents (Encodingnotes_Str a) = toText a
    toContents (Encodingnotes_Para a) = toContents a
    toContents (Encodingnotes_List a) = toContents a
    toContents (Encodingnotes_Note a) = toContents a
    toContents (Encodingnotes_Instruction a) = toContents a
    toContents (Encodingnotes_Literal a) = toContents a
    toContents (Encodingnotes_Xref a) = toContents a
    toContents (Encodingnotes_B a) = toContents a
    toContents (Encodingnotes_Arm_defined_word a) = toContents a
    toContents (Encodingnotes_Parameter a) = toContents a
    toContents (Encodingnotes_Sup a) = toContents a
    toContents (Encodingnotes_Sub a) = toContents a
    toContents (Encodingnotes_Binarynumber a) = toContents a
    toContents (Encodingnotes_Hexnumber a) = toContents a
    toContents (Encodingnotes_Syntax a) = toContents a
    toContents (Encodingnotes_Field a) = toContents a
    toContents (Encodingnotes_Value a) = toContents a
    toContents (Encodingnotes_Function a) = toContents a
    toContents (Encodingnotes_AEnum a) = toContents a
    toContents (Encodingnotes_Enumvalue a) = toContents a
    toContents (Encodingnotes_Url a) = toContents a
    toContents (Encodingnotes_Image a) = toContents a
    parseContents = oneOf
        [ return (Encodingnotes_Str) `apply` text
        , return (Encodingnotes_Para) `apply` parseContents
        , return (Encodingnotes_List) `apply` parseContents
        , return (Encodingnotes_Note) `apply` parseContents
        , return (Encodingnotes_Instruction) `apply` parseContents
        , return (Encodingnotes_Literal) `apply` parseContents
        , return (Encodingnotes_Xref) `apply` parseContents
        , return (Encodingnotes_B) `apply` parseContents
        , return (Encodingnotes_Arm_defined_word) `apply` parseContents
        , return (Encodingnotes_Parameter) `apply` parseContents
        , return (Encodingnotes_Sup) `apply` parseContents
        , return (Encodingnotes_Sub) `apply` parseContents
        , return (Encodingnotes_Binarynumber) `apply` parseContents
        , return (Encodingnotes_Hexnumber) `apply` parseContents
        , return (Encodingnotes_Syntax) `apply` parseContents
        , return (Encodingnotes_Field) `apply` parseContents
        , return (Encodingnotes_Value) `apply` parseContents
        , return (Encodingnotes_Function) `apply` parseContents
        , return (Encodingnotes_AEnum) `apply` parseContents
        , return (Encodingnotes_Enumvalue) `apply` parseContents
        , return (Encodingnotes_Url) `apply` parseContents
        , return (Encodingnotes_Image) `apply` parseContents
        ] `adjustErr` ("in <encodingnotes>, "++)

instance HTypeable Syntaxnotes where
    toHType x = Defined "syntaxnotes" [] []
instance XmlContent Syntaxnotes where
    toContents (Syntaxnotes a) =
        [CElem (Elem (N "syntaxnotes") [] (concatMap toContents a)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["syntaxnotes"]
        ; interior e $ return (Syntaxnotes) `apply` many parseContents
        } `adjustErr` ("in <syntaxnotes>, "++)

instance HTypeable Syntaxnotes_ where
    toHType x = Defined "syntaxnotes" [] []
instance XmlContent Syntaxnotes_ where
    toContents (Syntaxnotes_Str a) = toText a
    toContents (Syntaxnotes_Para a) = toContents a
    toContents (Syntaxnotes_List a) = toContents a
    toContents (Syntaxnotes_Note a) = toContents a
    toContents (Syntaxnotes_Instruction a) = toContents a
    toContents (Syntaxnotes_Literal a) = toContents a
    toContents (Syntaxnotes_Xref a) = toContents a
    toContents (Syntaxnotes_B a) = toContents a
    toContents (Syntaxnotes_Arm_defined_word a) = toContents a
    toContents (Syntaxnotes_Parameter a) = toContents a
    toContents (Syntaxnotes_Sup a) = toContents a
    toContents (Syntaxnotes_Sub a) = toContents a
    toContents (Syntaxnotes_Binarynumber a) = toContents a
    toContents (Syntaxnotes_Hexnumber a) = toContents a
    toContents (Syntaxnotes_Syntax a) = toContents a
    toContents (Syntaxnotes_Field a) = toContents a
    toContents (Syntaxnotes_Value a) = toContents a
    toContents (Syntaxnotes_Function a) = toContents a
    toContents (Syntaxnotes_AEnum a) = toContents a
    toContents (Syntaxnotes_Enumvalue a) = toContents a
    toContents (Syntaxnotes_Url a) = toContents a
    toContents (Syntaxnotes_Image a) = toContents a
    parseContents = oneOf
        [ return (Syntaxnotes_Str) `apply` text
        , return (Syntaxnotes_Para) `apply` parseContents
        , return (Syntaxnotes_List) `apply` parseContents
        , return (Syntaxnotes_Note) `apply` parseContents
        , return (Syntaxnotes_Instruction) `apply` parseContents
        , return (Syntaxnotes_Literal) `apply` parseContents
        , return (Syntaxnotes_Xref) `apply` parseContents
        , return (Syntaxnotes_B) `apply` parseContents
        , return (Syntaxnotes_Arm_defined_word) `apply` parseContents
        , return (Syntaxnotes_Parameter) `apply` parseContents
        , return (Syntaxnotes_Sup) `apply` parseContents
        , return (Syntaxnotes_Sub) `apply` parseContents
        , return (Syntaxnotes_Binarynumber) `apply` parseContents
        , return (Syntaxnotes_Hexnumber) `apply` parseContents
        , return (Syntaxnotes_Syntax) `apply` parseContents
        , return (Syntaxnotes_Field) `apply` parseContents
        , return (Syntaxnotes_Value) `apply` parseContents
        , return (Syntaxnotes_Function) `apply` parseContents
        , return (Syntaxnotes_AEnum) `apply` parseContents
        , return (Syntaxnotes_Enumvalue) `apply` parseContents
        , return (Syntaxnotes_Url) `apply` parseContents
        , return (Syntaxnotes_Image) `apply` parseContents
        ] `adjustErr` ("in <syntaxnotes>, "++)

instance HTypeable Alias_list where
    toHType x = Defined "alias_list" [] []
instance XmlContent Alias_list where
    toContents (Alias_list as a b c) =
        [CElem (Elem (N "alias_list") (toAttrs as) (maybe [] toContents a
                                                    ++ concatMap toContents b ++
                                                    maybe [] toContents c)) ()]
    parseContents = do
        { e@(Elem _ as _) <- element ["alias_list"]
        ; interior e $ return (Alias_list (fromAttrs as))
                       `apply` optional parseContents `apply` many parseContents
                       `apply` optional parseContents
        } `adjustErr` ("in <alias_list>, "++)
instance XmlAttributes Alias_list_Attrs where
    fromAttrs as =
        Alias_list_Attrs
          { alias_listHowmany = definiteA fromAttrToStr "alias_list" "howmany" as
          }
    toAttrs v = catMaybes 
        [ toAttrFrStr "howmany" (alias_listHowmany v)
        ]

instance HTypeable Alias_list_intro where
    toHType x = Defined "alias_list_intro" [] []
instance XmlContent Alias_list_intro where
    toContents (Alias_list_intro a) =
        [CElem (Elem (N "alias_list_intro") [] (toText a)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["alias_list_intro"]
        ; interior e $ return (Alias_list_intro)
                       `apply` (text `onFail` return "")
        } `adjustErr` ("in <alias_list_intro>, "++)

instance HTypeable Aliasref where
    toHType x = Defined "aliasref" [] []
instance XmlContent Aliasref where
    toContents (Aliasref as a b) =
        [CElem (Elem (N "aliasref") (toAttrs as) (toContents a ++
                                                  toContents b)) ()]
    parseContents = do
        { e@(Elem _ as _) <- element ["aliasref"]
        ; interior e $ return (Aliasref (fromAttrs as))
                       `apply` parseContents `apply` parseContents
        } `adjustErr` ("in <aliasref>, "++)
instance XmlAttributes Aliasref_Attrs where
    fromAttrs as =
        Aliasref_Attrs
          { aliasrefAliaspageid = definiteA fromAttrToStr "aliasref" "aliaspageid" as
          , aliasrefAliasfile = definiteA fromAttrToStr "aliasref" "aliasfile" as
          , aliasrefHover = possibleA fromAttrToStr "hover" as
          , aliasrefPunct = definiteA fromAttrToStr "aliasref" "punct" as
          }
    toAttrs v = catMaybes 
        [ toAttrFrStr "aliaspageid" (aliasrefAliaspageid v)
        , toAttrFrStr "aliasfile" (aliasrefAliasfile v)
        , maybeToAttr toAttrFrStr "hover" (aliasrefHover v)
        , toAttrFrStr "punct" (aliasrefPunct v)
        ]

instance HTypeable Aliaspref where
    toHType x = Defined "aliaspref" [] []
instance XmlContent Aliaspref where
    toContents (Aliaspref as a) =
        [CElem (Elem (N "aliaspref") (toAttrs as) (concatMap toContents a)) ()]
    parseContents = do
        { e@(Elem _ as _) <- element ["aliaspref"]
        ; interior e $ return (Aliaspref (fromAttrs as))
                       `apply` many parseContents
        } `adjustErr` ("in <aliaspref>, "++)
instance XmlAttributes Aliaspref_Attrs where
    fromAttrs as =
        Aliaspref_Attrs
          { aliasprefLabels = possibleA fromAttrToStr "labels" as
          }
    toAttrs v = catMaybes 
        [ maybeToAttr toAttrFrStr "labels" (aliasprefLabels v)
        ]

instance HTypeable Aliaspref_ where
    toHType x = Defined "aliaspref" [] []
instance XmlContent Aliaspref_ where
    toContents (Aliaspref_Str a) = toText a
    toContents (Aliaspref_A a) = toContents a
    toContents (Aliaspref_Anchor a) = toContents a
    toContents (Aliaspref_Txt a) = toContents a
    parseContents = oneOf
        [ return (Aliaspref_Str) `apply` text
        , return (Aliaspref_A) `apply` parseContents
        , return (Aliaspref_Anchor) `apply` parseContents
        , return (Aliaspref_Txt) `apply` parseContents
        ] `adjustErr` ("in <aliaspref>, "++)

instance HTypeable Alias_list_outro where
    toHType x = Defined "alias_list_outro" [] []
instance XmlContent Alias_list_outro where
    toContents (Alias_list_outro a) =
        [CElem (Elem (N "alias_list_outro") [] (concatMap toContents a)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["alias_list_outro"]
        ; interior e $ return (Alias_list_outro) `apply` many parseContents
        } `adjustErr` ("in <alias_list_outro>, "++)

instance HTypeable Alias_list_outro_ where
    toHType x = Defined "alias_list_outro" [] []
instance XmlContent Alias_list_outro_ where
    toContents (Alias_list_outro_Str a) = toText a
    toContents (Alias_list_outro_Text a) = toContents a
    toContents (Alias_list_outro_Aliastablelink a) = toContents a
    parseContents = oneOf
        [ return (Alias_list_outro_Str) `apply` text
        , return (Alias_list_outro_Text) `apply` parseContents
        , return (Alias_list_outro_Aliastablelink) `apply` parseContents
        ] `adjustErr` ("in <alias_list_outro>, "++)

instance HTypeable Aliastablelink where
    toHType x = Defined "aliastablelink" [] []
instance XmlContent Aliastablelink where
    toContents Aliastablelink =
        [CElem (Elem (N "aliastablelink") [] []) ()]
    parseContents = do
        { (Elem _ as []) <- element ["aliastablelink"]
        ; return Aliastablelink
        } `adjustErr` ("in <aliastablelink>, "++)

instance HTypeable Aliasto where
    toHType x = Defined "aliasto" [] []
instance XmlContent Aliasto where
    toContents (Aliasto as a) =
        [CElem (Elem (N "aliasto") (toAttrs as) (toText a)) ()]
    parseContents = do
        { e@(Elem _ as _) <- element ["aliasto"]
        ; interior e $ return (Aliasto (fromAttrs as))
                       `apply` (text `onFail` return "")
        } `adjustErr` ("in <aliasto>, "++)
instance XmlAttributes Aliasto_Attrs where
    fromAttrs as =
        Aliasto_Attrs
          { aliastoRefiform = definiteA fromAttrToStr "aliasto" "refiform" as
          , aliastoIformid = definiteA fromAttrToStr "aliasto" "iformid" as
          }
    toAttrs v = catMaybes 
        [ toAttrFrStr "refiform" (aliastoRefiform v)
        , toAttrFrStr "iformid" (aliastoIformid v)
        ]

instance HTypeable Asmtemplate where
    toHType x = Defined "asmtemplate" [] []
instance XmlContent Asmtemplate where
    toContents (Asmtemplate as a) =
        [CElem (Elem (N "asmtemplate") (toAttrs as) (concatMap toContents a)) ()]
    parseContents = do
        { e@(Elem _ as _) <- element ["asmtemplate"]
        ; interior e $ return (Asmtemplate (fromAttrs as))
                       `apply` many parseContents
        } `adjustErr` ("in <asmtemplate>, "++)
instance XmlAttributes Asmtemplate_Attrs where
    fromAttrs as =
        Asmtemplate_Attrs
          { asmtemplateRole = possibleA fromAttrToTyp "role" as
          , asmtemplateComment = possibleA fromAttrToStr "comment" as
          }
    toAttrs v = catMaybes 
        [ maybeToAttr toAttrFrTyp "role" (asmtemplateRole v)
        , maybeToAttr toAttrFrStr "comment" (asmtemplateComment v)
        ]

instance HTypeable Asmtemplate_ where
    toHType x = Defined "asmtemplate" [] []
instance XmlContent Asmtemplate_ where
    toContents (Asmtemplate_Str a) = toText a
    toContents (Asmtemplate_A a) = toContents a
    toContents (Asmtemplate_Anchor a) = toContents a
    toContents (Asmtemplate_Txt a) = toContents a
    toContents (Asmtemplate_Text a) = toContents a
    parseContents = oneOf
        [ return (Asmtemplate_Str) `apply` text
        , return (Asmtemplate_A) `apply` parseContents
        , return (Asmtemplate_Anchor) `apply` parseContents
        , return (Asmtemplate_Txt) `apply` parseContents
        , return (Asmtemplate_Text) `apply` parseContents
        ] `adjustErr` ("in <asmtemplate>, "++)

instance XmlAttrType Asmtemplate_role where
    fromAttrToTyp n (N n',v)
        | n==n'     = translate (attr2str v)
        | otherwise = Nothing
      where translate "alias_prototype" = Just Asmtemplate_role_alias_prototype
            translate "alias_equivalent_to" = Just Asmtemplate_role_alias_equivalent_to
            translate _ = Nothing
    toAttrFrTyp n Asmtemplate_role_alias_prototype = Just (N n, str2attr "alias_prototype")
    toAttrFrTyp n Asmtemplate_role_alias_equivalent_to = Just (N n, str2attr "alias_equivalent_to")

instance HTypeable Aliasmnem where
    toHType x = Defined "aliasmnem" [] []
instance XmlContent Aliasmnem where
    toContents (Aliasmnem as a b) =
        [CElem (Elem (N "aliasmnem") (toAttrs as) (maybe [] toContents a ++
                                                   toContents b)) ()]
    parseContents = do
        { e@(Elem _ as _) <- element ["aliasmnem"]
        ; interior e $ return (Aliasmnem (fromAttrs as))
                       `apply` optional parseContents `apply` parseContents
        } `adjustErr` ("in <aliasmnem>, "++)
instance XmlAttributes Aliasmnem_Attrs where
    fromAttrs as =
        Aliasmnem_Attrs
          { aliasmnemMnemonic = definiteA fromAttrToStr "aliasmnem" "mnemonic" as
          , aliasmnemId = definiteA fromAttrToStr "aliasmnem" "id" as
          , aliasmnemIformqual = possibleA fromAttrToStr "iformqual" as
          , aliasmnemHeading = possibleA fromAttrToStr "heading" as
          }
    toAttrs v = catMaybes 
        [ toAttrFrStr "mnemonic" (aliasmnemMnemonic v)
        , toAttrFrStr "id" (aliasmnemId v)
        , maybeToAttr toAttrFrStr "iformqual" (aliasmnemIformqual v)
        , maybeToAttr toAttrFrStr "heading" (aliasmnemHeading v)
        ]

instance HTypeable Aliases where
    toHType x = Defined "aliases" [] []
instance XmlContent Aliases where
    toContents (Aliases as a) =
        [CElem (Elem (N "aliases") (toAttrs as) (toContents a)) ()]
    parseContents = do
        { e@(Elem _ as _) <- element ["aliases"]
        ; interior e $ return (Aliases (fromAttrs as))
                       `apply` parseContents
        } `adjustErr` ("in <aliases>, "++)
instance XmlAttributes Aliases_Attrs where
    fromAttrs as =
        Aliases_Attrs
          { aliasesConditions = possibleA fromAttrToStr "conditions" as
          }
    toAttrs v = catMaybes 
        [ maybeToAttr toAttrFrStr "conditions" (aliasesConditions v)
        ]

instance HTypeable Alias where
    toHType x = Defined "alias" [] []
instance XmlContent Alias where
    toContents (Alias as a b c d) =
        [CElem (Elem (N "alias") (toAttrs as) (maybe [] toContents a ++
                                               toContents b ++ toContents c ++
                                               maybe [] toContents d)) ()]
    parseContents = do
        { e@(Elem _ as _) <- element ["alias"]
        ; interior e $ return (Alias (fromAttrs as))
                       `apply` optional parseContents `apply` parseContents
                       `apply` parseContents `apply` optional parseContents
        } `adjustErr` ("in <alias>, "++)
instance XmlAttributes Alias_Attrs where
    fromAttrs as =
        Alias_Attrs
          { aliasEncname = definiteA fromAttrToStr "alias" "encname" as
          , aliasEquivalent_to = definiteA fromAttrToStr "alias" "equivalent_to" as
          , aliasAssembler_prototype = definiteA fromAttrToStr "alias" "assembler_prototype" as
          , aliasEnctag = possibleA fromAttrToStr "enctag" as
          , aliasConditions = possibleA fromAttrToStr "conditions" as
          , aliasDescription = possibleA fromAttrToStr "description" as
          }
    toAttrs v = catMaybes 
        [ toAttrFrStr "encname" (aliasEncname v)
        , toAttrFrStr "equivalent_to" (aliasEquivalent_to v)
        , toAttrFrStr "assembler_prototype" (aliasAssembler_prototype v)
        , maybeToAttr toAttrFrStr "enctag" (aliasEnctag v)
        , maybeToAttr toAttrFrStr "conditions" (aliasConditions v)
        , maybeToAttr toAttrFrStr "description" (aliasDescription v)
        ]

instance HTypeable Conditionexpr where
    toHType x = Defined "conditionexpr" [] []
instance XmlContent Conditionexpr where
    toContents (Conditionexpr a) =
        [CElem (Elem (N "conditionexpr") [] (toContents a)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["conditionexpr"]
        ; interior e $ return (Conditionexpr) `apply` parseContents
        } `adjustErr` ("in <conditionexpr>, "++)

instance HTypeable C where
    toHType x = Defined "c" [] []
instance XmlContent C where
    toContents (C as a) =
        [CElem (Elem (N "c") (toAttrs as) (toText a)) ()]
    parseContents = do
        { e@(Elem _ as _) <- element ["c"]
        ; interior e $ return (C (fromAttrs as))
                       `apply` (text `onFail` return "")
        } `adjustErr` ("in <c>, "++)
instance XmlAttributes C_Attrs where
    fromAttrs as =
        C_Attrs
          { cColspan = possibleA fromAttrToStr "colspan" as
          }
    toAttrs v = catMaybes 
        [ maybeToAttr toAttrFrStr "colspan" (cColspan v)
        ]

instance HTypeable Box where
    toHType x = Defined "box" [] []
instance XmlContent Box where
    toContents (Box as a) =
        [CElem (Elem (N "box") (toAttrs as) (concatMap toContents a)) ()]
    parseContents = do
        { e@(Elem _ as _) <- element ["box"]
        ; interior e $ return (Box (fromAttrs as))
                       `apply` many parseContents
        } `adjustErr` ("in <box>, "++)
instance XmlAttributes Box_Attrs where
    fromAttrs as =
        Box_Attrs
          { boxHibit = definiteA fromAttrToStr "box" "hibit" as
          , boxName = possibleA fromAttrToStr "name" as
          , boxWidth = possibleA fromAttrToStr "width" as
          , boxUsename = possibleA fromAttrToTyp "usename" as
          , boxSettings = possibleA fromAttrToStr "settings" as
          , boxPsbits = possibleA fromAttrToStr "psbits" as
          , boxConstraint = possibleA fromAttrToStr "constraint" as
          , boxComp = possibleA fromAttrToStr "comp" as
          }
    toAttrs v = catMaybes 
        [ toAttrFrStr "hibit" (boxHibit v)
        , maybeToAttr toAttrFrStr "name" (boxName v)
        , maybeToAttr toAttrFrStr "width" (boxWidth v)
        , maybeToAttr toAttrFrTyp "usename" (boxUsename v)
        , maybeToAttr toAttrFrStr "settings" (boxSettings v)
        , maybeToAttr toAttrFrStr "psbits" (boxPsbits v)
        , maybeToAttr toAttrFrStr "constraint" (boxConstraint v)
        , maybeToAttr toAttrFrStr "comp" (boxComp v)
        ]

instance XmlAttrType Box_usename where
    fromAttrToTyp n (N n',v)
        | n==n'     = translate (attr2str v)
        | otherwise = Nothing
      where translate "1" = Just Box_usename_1
            translate _ = Nothing
    toAttrFrTyp n Box_usename_1 = Just (N n, str2attr "1")

instance HTypeable Regdiagram where
    toHType x = Defined "regdiagram" [] []
instance XmlContent Regdiagram where
    toContents (Regdiagram as a) =
        [CElem (Elem (N "regdiagram") (toAttrs as) (concatMap toContents a)) ()]
    parseContents = do
        { e@(Elem _ as _) <- element ["regdiagram"]
        ; interior e $ return (Regdiagram (fromAttrs as))
                       `apply` many parseContents
        } `adjustErr` ("in <regdiagram>, "++)
instance XmlAttributes Regdiagram_Attrs where
    fromAttrs as =
        Regdiagram_Attrs
          { regdiagramForm = definiteA fromAttrToTyp "regdiagram" "form" as
          , regdiagramTworows = possibleA fromAttrToTyp "tworows" as
          , regdiagramEncname = possibleA fromAttrToStr "encname" as
          , regdiagramPsname = possibleA fromAttrToStr "psname" as
          , regdiagramConstraint = possibleA fromAttrToStr "constraint" as
          }
    toAttrs v = catMaybes 
        [ toAttrFrTyp "form" (regdiagramForm v)
        , maybeToAttr toAttrFrTyp "tworows" (regdiagramTworows v)
        , maybeToAttr toAttrFrStr "encname" (regdiagramEncname v)
        , maybeToAttr toAttrFrStr "psname" (regdiagramPsname v)
        , maybeToAttr toAttrFrStr "constraint" (regdiagramConstraint v)
        ]

instance XmlAttrType Regdiagram_form where
    fromAttrToTyp n (N n',v)
        | n==n'     = translate (attr2str v)
        | otherwise = Nothing
      where translate "16" = Just Regdiagram_form_16
            translate "16x2" = Just Regdiagram_form_16x2
            translate "32" = Just Regdiagram_form_32
            translate _ = Nothing
    toAttrFrTyp n Regdiagram_form_16 = Just (N n, str2attr "16")
    toAttrFrTyp n Regdiagram_form_16x2 = Just (N n, str2attr "16x2")
    toAttrFrTyp n Regdiagram_form_32 = Just (N n, str2attr "32")

instance XmlAttrType Regdiagram_tworows where
    fromAttrToTyp n (N n',v)
        | n==n'     = translate (attr2str v)
        | otherwise = Nothing
      where translate "1" = Just Regdiagram_tworows_1
            translate _ = Nothing
    toAttrFrTyp n Regdiagram_tworows_1 = Just (N n, str2attr "1")

instance HTypeable Encoding where
    toHType x = Defined "encoding" [] []
instance XmlContent Encoding where
    toContents (Encoding as a b c d e) =
        [CElem (Elem (N "encoding") (toAttrs as) (maybe [] toContents a ++
                                                  maybe [] toContents b ++ concatMap toContents c ++
                                                  toContents d ++ maybe [] toContents e)) ()]
    parseContents = do
        { e@(Elem _ as _) <- element ["encoding"]
        ; interior e $ return (Encoding (fromAttrs as))
                       `apply` optional parseContents `apply` optional parseContents
                       `apply` many parseContents `apply` parseContents
                       `apply` optional parseContents
        } `adjustErr` ("in <encoding>, "++)
instance XmlAttributes Encoding_Attrs where
    fromAttrs as =
        Encoding_Attrs
          { encodingName = definiteA fromAttrToStr "encoding" "name" as
          , encodingOneofinclass = definiteA fromAttrToStr "encoding" "oneofinclass" as
          , encodingOneof = definiteA fromAttrToStr "encoding" "oneof" as
          , encodingLabel = definiteA fromAttrToStr "encoding" "label" as
          , encodingBitdiffs = possibleA fromAttrToStr "bitdiffs" as
          , encodingTags = possibleA fromAttrToStr "tags" as
          }
    toAttrs v = catMaybes 
        [ toAttrFrStr "name" (encodingName v)
        , toAttrFrStr "oneofinclass" (encodingOneofinclass v)
        , toAttrFrStr "oneof" (encodingOneof v)
        , toAttrFrStr "label" (encodingLabel v)
        , maybeToAttr toAttrFrStr "bitdiffs" (encodingBitdiffs v)
        , maybeToAttr toAttrFrStr "tags" (encodingTags v)
        ]

instance HTypeable Equivalent_to where
    toHType x = Defined "equivalent_to" [] []
instance XmlContent Equivalent_to where
    toContents (Equivalent_to a b) =
        [CElem (Elem (N "equivalent_to") [] (toContents a ++
                                             toContents b)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["equivalent_to"]
        ; interior e $ return (Equivalent_to) `apply` parseContents
                       `apply` parseContents
        } `adjustErr` ("in <equivalent_to>, "++)

instance HTypeable Aliascond where
    toHType x = Defined "aliascond" [] []
instance XmlContent Aliascond where
    toContents (Aliascond a) =
        [CElem (Elem (N "aliascond") [] (concatMap toContents a)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["aliascond"]
        ; interior e $ return (Aliascond) `apply` many parseContents
        } `adjustErr` ("in <aliascond>, "++)

instance HTypeable Aliascond_ where
    toHType x = Defined "aliascond" [] []
instance XmlContent Aliascond_ where
    toContents (Aliascond_Str a) = toText a
    toContents (Aliascond_A a) = toContents a
    toContents (Aliascond_Anchor a) = toContents a
    toContents (Aliascond_Txt a) = toContents a
    parseContents = oneOf
        [ return (Aliascond_Str) `apply` text
        , return (Aliascond_A) `apply` parseContents
        , return (Aliascond_Anchor) `apply` parseContents
        , return (Aliascond_Txt) `apply` parseContents
        ] `adjustErr` ("in <aliascond>, "++)

instance HTypeable Classesintro where
    toHType x = Defined "classesintro" [] []
instance XmlContent Classesintro where
    toContents (Classesintro as a) =
        [CElem (Elem (N "classesintro") (toAttrs as) (concatMap toContents a)) ()]
    parseContents = do
        { e@(Elem _ as _) <- element ["classesintro"]
        ; interior e $ return (Classesintro (fromAttrs as))
                       `apply` many parseContents
        } `adjustErr` ("in <classesintro>, "++)
instance XmlAttributes Classesintro_Attrs where
    fromAttrs as =
        Classesintro_Attrs
          { classesintroCount = possibleA fromAttrToStr "count" as
          }
    toAttrs v = catMaybes 
        [ maybeToAttr toAttrFrStr "count" (classesintroCount v)
        ]

instance HTypeable Classesintro_ where
    toHType x = Defined "classesintro" [] []
instance XmlContent Classesintro_ where
    toContents (Classesintro_Str a) = toText a
    toContents (Classesintro_A a) = toContents a
    toContents (Classesintro_Anchor a) = toContents a
    toContents (Classesintro_Txt a) = toContents a
    parseContents = oneOf
        [ return (Classesintro_Str) `apply` text
        , return (Classesintro_A) `apply` parseContents
        , return (Classesintro_Anchor) `apply` parseContents
        , return (Classesintro_Txt) `apply` parseContents
        ] `adjustErr` ("in <classesintro>, "++)

instance HTypeable Classes where
    toHType x = Defined "classes" [] []
instance XmlContent Classes where
    toContents (Classes a b) =
        [CElem (Elem (N "classes") [] (maybe [] toContents a ++
                                       toContents b)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["classes"]
        ; interior e $ return (Classes) `apply` optional parseContents
                       `apply` parseContents
        } `adjustErr` ("in <classes>, "++)

instance HTypeable Iclassintro where
    toHType x = Defined "iclassintro" [] []
instance XmlContent Iclassintro where
    toContents (Iclassintro as a) =
        [CElem (Elem (N "iclassintro") (toAttrs as) (concatMap toContents a)) ()]
    parseContents = do
        { e@(Elem _ as _) <- element ["iclassintro"]
        ; interior e $ return (Iclassintro (fromAttrs as))
                       `apply` many parseContents
        } `adjustErr` ("in <iclassintro>, "++)
instance XmlAttributes Iclassintro_Attrs where
    fromAttrs as =
        Iclassintro_Attrs
          { iclassintroCount = possibleA fromAttrToStr "count" as
          }
    toAttrs v = catMaybes 
        [ maybeToAttr toAttrFrStr "count" (iclassintroCount v)
        ]

instance HTypeable Iclassintro_ where
    toHType x = Defined "iclassintro" [] []
instance XmlContent Iclassintro_ where
    toContents (Iclassintro_Txt a) = toContents a
    toContents (Iclassintro_A a) = toContents a
    parseContents = oneOf
        [ return (Iclassintro_Txt) `apply` parseContents
        , return (Iclassintro_A) `apply` parseContents
        ] `adjustErr` ("in <iclassintro>, "++)

instance HTypeable Iclass where
    toHType x = Defined "iclass" [] []
instance XmlContent Iclass where
    toContents (Iclass as a b c d e f g) =
        [CElem (Elem (N "iclass") (toAttrs as) (maybe [] toContents a ++
                                                maybe [] toContents b ++ maybe [] toContents c ++
                                                toContents d ++ toContents e ++
                                                maybe [] toContents f ++ maybe [] toContents g)) ()]
    parseContents = do
        { e@(Elem _ as _) <- element ["iclass"]
        ; interior e $ return (Iclass (fromAttrs as))
                       `apply` optional parseContents `apply` optional parseContents
                       `apply` optional parseContents `apply` parseContents
                       `apply` parseContents `apply` optional parseContents
                       `apply` optional parseContents
        } `adjustErr` ("in <iclass>, "++)
instance XmlAttributes Iclass_Attrs where
    fromAttrs as =
        Iclass_Attrs
          { iclassName = definiteA fromAttrToStr "iclass" "name" as
          , iclassId = definiteA fromAttrToStr "iclass" "id" as
          , iclassOneof = definiteA fromAttrToStr "iclass" "oneof" as
          , iclassNo_encodings = definiteA fromAttrToStr "iclass" "no_encodings" as
          , iclassIsa = definiteA fromAttrToStr "iclass" "isa" as
          }
    toAttrs v = catMaybes 
        [ toAttrFrStr "name" (iclassName v)
        , toAttrFrStr "id" (iclassId v)
        , toAttrFrStr "oneof" (iclassOneof v)
        , toAttrFrStr "no_encodings" (iclassNo_encodings v)
        , toAttrFrStr "isa" (iclassIsa v)
        ]

instance HTypeable Arch_variants where
    toHType x = Defined "arch_variants" [] []
instance XmlContent Arch_variants where
    toContents (Arch_variants a) =
        [CElem (Elem (N "arch_variants") [] (concatMap toContents a)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["arch_variants"]
        ; interior e $ return (Arch_variants) `apply` many parseContents
        } `adjustErr` ("in <arch_variants>, "++)

instance HTypeable Arch_variant where
    toHType x = Defined "arch_variant" [] []
instance XmlContent Arch_variant where
    toContents as =
        [CElem (Elem (N "arch_variant") (toAttrs as) []) ()]
    parseContents = do
        { (Elem _ as []) <- element ["arch_variant"]
        ; return (fromAttrs as)
        } `adjustErr` ("in <arch_variant>, "++)
instance XmlAttributes Arch_variant where
    fromAttrs as =
        Arch_variant
          { arch_variantName = possibleA fromAttrToStr "name" as
          , arch_variantFeature = possibleA fromAttrToStr "feature" as
          }
    toAttrs v = catMaybes 
        [ maybeToAttr toAttrFrStr "name" (arch_variantName v)
        , maybeToAttr toAttrFrStr "feature" (arch_variantFeature v)
        ]

instance HTypeable Explanations where
    toHType x = Defined "explanations" [] []
instance XmlContent Explanations where
    toContents (Explanations as a) =
        [CElem (Elem (N "explanations") (toAttrs as) (concatMap toContents a)) ()]
    parseContents = do
        { e@(Elem _ as _) <- element ["explanations"]
        ; interior e $ return (Explanations (fromAttrs as))
                       `apply` many parseContents
        } `adjustErr` ("in <explanations>, "++)
instance XmlAttributes Explanations_Attrs where
    fromAttrs as =
        Explanations_Attrs
          { explanationsScope = definiteA fromAttrToTyp "explanations" "scope" as
          }
    toAttrs v = catMaybes 
        [ toAttrFrTyp "scope" (explanationsScope v)
        ]

instance XmlAttrType Explanations_scope where
    fromAttrToTyp n (N n',v)
        | n==n'     = translate (attr2str v)
        | otherwise = Nothing
      where translate "all" = Just Explanations_scope_all
            translate _ = Nothing
    toAttrFrTyp n Explanations_scope_all = Just (N n, str2attr "all")

instance HTypeable Explanation where
    toHType x = Defined "explanation" [] []
instance XmlContent Explanation where
    toContents (Explanation as a b c) =
        [CElem (Elem (N "explanation") (toAttrs as) (toContents a ++
                                                     toContents b ++ maybe [] toContents c)) ()]
    parseContents = do
        { e@(Elem _ as _) <- element ["explanation"]
        ; interior e $ return (Explanation (fromAttrs as))
                       `apply` parseContents `apply` parseContents
                       `apply` optional parseContents
        } `adjustErr` ("in <explanation>, "++)
instance XmlAttributes Explanation_Attrs where
    fromAttrs as =
        Explanation_Attrs
          { explanationEnclist = definiteA fromAttrToStr "explanation" "enclist" as
          , explanationTags = possibleA fromAttrToStr "tags" as
          , explanationSymboldefcount = definiteA fromAttrToStr "explanation" "symboldefcount" as
          }
    toAttrs v = catMaybes 
        [ toAttrFrStr "enclist" (explanationEnclist v)
        , maybeToAttr toAttrFrStr "tags" (explanationTags v)
        , toAttrFrStr "symboldefcount" (explanationSymboldefcount v)
        ]

instance HTypeable Symbol where
    toHType x = Defined "symbol" [] []
instance XmlContent Symbol where
    toContents (Symbol as a) =
        [CElem (Elem (N "symbol") (toAttrs as) (concatMap toContents a)) ()]
    parseContents = do
        { e@(Elem _ as _) <- element ["symbol"]
        ; interior e $ return (Symbol (fromAttrs as))
                       `apply` many parseContents
        } `adjustErr` ("in <symbol>, "++)
instance XmlAttributes Symbol_Attrs where
    fromAttrs as =
        Symbol_Attrs
          { symbolLink = possibleA fromAttrToStr "link" as
          }
    toAttrs v = catMaybes 
        [ maybeToAttr toAttrFrStr "link" (symbolLink v)
        ]

instance HTypeable Symbol_ where
    toHType x = Defined "symbol" [] []
instance XmlContent Symbol_ where
    toContents (Symbol_Str a) = toText a
    toContents (Symbol_A a) = toContents a
    toContents (Symbol_Anchor a) = toContents a
    toContents (Symbol_Txt a) = toContents a
    parseContents = oneOf
        [ return (Symbol_Str) `apply` text
        , return (Symbol_A) `apply` parseContents
        , return (Symbol_Anchor) `apply` parseContents
        , return (Symbol_Txt) `apply` parseContents
        ] `adjustErr` ("in <symbol>, "++)

instance HTypeable Intro where
    toHType x = Defined "intro" [] []
instance XmlContent Intro where
    toContents (Intro a) =
        [CElem (Elem (N "intro") [] (concatMap toContents a)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["intro"]
        ; interior e $ return (Intro) `apply` many parseContents
        } `adjustErr` ("in <intro>, "++)

instance HTypeable Intro_ where
    toHType x = Defined "intro" [] []
instance XmlContent Intro_ where
    toContents (Intro_Str a) = toText a
    toContents (Intro_Para a) = toContents a
    toContents (Intro_List a) = toContents a
    toContents (Intro_Note a) = toContents a
    toContents (Intro_Instruction a) = toContents a
    toContents (Intro_Literal a) = toContents a
    toContents (Intro_Xref a) = toContents a
    toContents (Intro_B a) = toContents a
    toContents (Intro_Arm_defined_word a) = toContents a
    toContents (Intro_Parameter a) = toContents a
    toContents (Intro_Sup a) = toContents a
    toContents (Intro_Sub a) = toContents a
    toContents (Intro_Binarynumber a) = toContents a
    toContents (Intro_Hexnumber a) = toContents a
    toContents (Intro_Syntax a) = toContents a
    toContents (Intro_Field a) = toContents a
    toContents (Intro_Value a) = toContents a
    toContents (Intro_Function a) = toContents a
    toContents (Intro_AEnum a) = toContents a
    toContents (Intro_Enumvalue a) = toContents a
    toContents (Intro_Url a) = toContents a
    toContents (Intro_Image a) = toContents a
    parseContents = oneOf
        [ return (Intro_Str) `apply` text
        , return (Intro_Para) `apply` parseContents
        , return (Intro_List) `apply` parseContents
        , return (Intro_Note) `apply` parseContents
        , return (Intro_Instruction) `apply` parseContents
        , return (Intro_Literal) `apply` parseContents
        , return (Intro_Xref) `apply` parseContents
        , return (Intro_B) `apply` parseContents
        , return (Intro_Arm_defined_word) `apply` parseContents
        , return (Intro_Parameter) `apply` parseContents
        , return (Intro_Sup) `apply` parseContents
        , return (Intro_Sub) `apply` parseContents
        , return (Intro_Binarynumber) `apply` parseContents
        , return (Intro_Hexnumber) `apply` parseContents
        , return (Intro_Syntax) `apply` parseContents
        , return (Intro_Field) `apply` parseContents
        , return (Intro_Value) `apply` parseContents
        , return (Intro_Function) `apply` parseContents
        , return (Intro_AEnum) `apply` parseContents
        , return (Intro_Enumvalue) `apply` parseContents
        , return (Intro_Url) `apply` parseContents
        , return (Intro_Image) `apply` parseContents
        ] `adjustErr` ("in <intro>, "++)

instance HTypeable Account where
    toHType x = Defined "account" [] []
instance XmlContent Account where
    toContents (Account as a b) =
        [CElem (Elem (N "account") (toAttrs as) (maybe [] toContents a ++
                                                 toContents b)) ()]
    parseContents = do
        { e@(Elem _ as _) <- element ["account"]
        ; interior e $ return (Account (fromAttrs as))
                       `apply` optional parseContents `apply` parseContents
        } `adjustErr` ("in <account>, "++)
instance XmlAttributes Account_Attrs where
    fromAttrs as =
        Account_Attrs
          { accountEncodedin = possibleA fromAttrToStr "encodedin" as
          }
    toAttrs v = catMaybes 
        [ maybeToAttr toAttrFrStr "encodedin" (accountEncodedin v)
        ]

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

instance HTypeable After where
    toHType x = Defined "after" [] []
instance XmlContent After where
    toContents (After a) =
        [CElem (Elem (N "after") [] (concatMap toContents a)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["after"]
        ; interior e $ return (After) `apply` many parseContents
        } `adjustErr` ("in <after>, "++)

instance HTypeable After_ where
    toHType x = Defined "after" [] []
instance XmlContent After_ where
    toContents (After_Str a) = toText a
    toContents (After_A a) = toContents a
    toContents (After_Anchor a) = toContents a
    toContents (After_Txt a) = toContents a
    parseContents = oneOf
        [ return (After_Str) `apply` text
        , return (After_A) `apply` parseContents
        , return (After_Anchor) `apply` parseContents
        , return (After_Txt) `apply` parseContents
        ] `adjustErr` ("in <after>, "++)

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
          { tableClass = definiteA fromAttrToTyp "table" "class" as
          }
    toAttrs v = catMaybes 
        [ toAttrFrTyp "class" (tableClass v)
        ]

instance XmlAttrType Table_class where
    fromAttrToTyp n (N n',v)
        | n==n'     = translate (attr2str v)
        | otherwise = Nothing
      where translate "valuetable" = Just Table_class_valuetable
            translate _ = Nothing
    toAttrFrTyp n Table_class_valuetable = Just (N n, str2attr "valuetable")

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

instance HTypeable Thead where
    toHType x = Defined "thead" [] []
instance XmlContent Thead where
    toContents (Thead a) =
        [CElem (Elem (N "thead") [] (toContents a)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["thead"]
        ; interior e $ return (Thead) `apply` parseContents
        } `adjustErr` ("in <thead>, "++)

instance HTypeable Tbody where
    toHType x = Defined "tbody" [] []
instance XmlContent Tbody where
    toContents (Tbody a) =
        [CElem (Elem (N "tbody") [] (toContents a)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["tbody"]
        ; interior e $ return (Tbody) `apply` parseContents
        } `adjustErr` ("in <tbody>, "++)

instance HTypeable Row where
    toHType x = Defined "row" [] []
instance XmlContent Row where
    toContents (Row a) =
        [CElem (Elem (N "row") [] (toContents a)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["row"]
        ; interior e $ return (Row) `apply` parseContents
        } `adjustErr` ("in <row>, "++)

instance HTypeable Entry where
    toHType x = Defined "entry" [] []
instance XmlContent Entry where
    toContents (Entry as a) =
        [CElem (Elem (N "entry") (toAttrs as) (concatMap toContents a)) ()]
    parseContents = do
        { e@(Elem _ as _) <- element ["entry"]
        ; interior e $ return (Entry (fromAttrs as))
                       `apply` many parseContents
        } `adjustErr` ("in <entry>, "++)
instance XmlAttributes Entry_Attrs where
    fromAttrs as =
        Entry_Attrs
          { entryClass = definiteA fromAttrToTyp "entry" "class" as
          , entryBitwidth = possibleA fromAttrToStr "bitwidth" as
          , entryIclasslink = possibleA fromAttrToStr "iclasslink" as
          , entryIclasslinkfile = possibleA fromAttrToStr "iclasslinkfile" as
          }
    toAttrs v = catMaybes 
        [ toAttrFrTyp "class" (entryClass v)
        , maybeToAttr toAttrFrStr "bitwidth" (entryBitwidth v)
        , maybeToAttr toAttrFrStr "iclasslink" (entryIclasslink v)
        , maybeToAttr toAttrFrStr "iclasslinkfile" (entryIclasslinkfile v)
        ]

instance HTypeable Entry_ where
    toHType x = Defined "entry" [] []
instance XmlContent Entry_ where
    toContents (Entry_Str a) = toText a
    toContents (Entry_A a) = toContents a
    toContents (Entry_Anchor a) = toContents a
    toContents (Entry_Txt a) = toContents a
    toContents (Entry_Arch_variants a) = toContents a
    parseContents = oneOf
        [ return (Entry_Str) `apply` text
        , return (Entry_A) `apply` parseContents
        , return (Entry_Anchor) `apply` parseContents
        , return (Entry_Txt) `apply` parseContents
        , return (Entry_Arch_variants) `apply` parseContents
        ] `adjustErr` ("in <entry>, "++)

instance XmlAttrType Entry_class where
    fromAttrToTyp n (N n',v)
        | n==n'     = translate (attr2str v)
        | otherwise = Nothing
      where translate "symbol" = Just Entry_class_symbol
            translate "bitfield" = Just Entry_class_bitfield
            translate "feature" = Just Entry_class_feature
            translate _ = Nothing
    toAttrFrTyp n Entry_class_symbol = Just (N n, str2attr "symbol")
    toAttrFrTyp n Entry_class_bitfield = Just (N n, str2attr "bitfield")
    toAttrFrTyp n Entry_class_feature = Just (N n, str2attr "feature")

instance HTypeable Aliastablehook where
    toHType x = Defined "aliastablehook" [] []
instance XmlContent Aliastablehook where
    toContents (Aliastablehook as a) =
        [CElem (Elem (N "aliastablehook") (toAttrs as) (toText a)) ()]
    parseContents = do
        { e@(Elem _ as _) <- element ["aliastablehook"]
        ; interior e $ return (Aliastablehook (fromAttrs as))
                       `apply` (text `onFail` return "")
        } `adjustErr` ("in <aliastablehook>, "++)
instance XmlAttributes Aliastablehook_Attrs where
    fromAttrs as =
        Aliastablehook_Attrs
          { aliastablehookAnchor = definiteA fromAttrToStr "aliastablehook" "anchor" as
          }
    toAttrs v = catMaybes 
        [ toAttrFrStr "anchor" (aliastablehookAnchor v)
        ]

instance HTypeable Ps_section where
    toHType x = Defined "ps_section" [] []
instance XmlContent Ps_section where
    toContents (Ps_section as a) =
        [CElem (Elem (N "ps_section") (toAttrs as) (toContents a)) ()]
    parseContents = do
        { e@(Elem _ as _) <- element ["ps_section"]
        ; interior e $ return (Ps_section (fromAttrs as))
                       `apply` parseContents
        } `adjustErr` ("in <ps_section>, "++)
instance XmlAttributes Ps_section_Attrs where
    fromAttrs as =
        Ps_section_Attrs
          { ps_sectionHowmany = definiteA fromAttrToStr "ps_section" "howmany" as
          }
    toAttrs v = catMaybes 
        [ toAttrFrStr "howmany" (ps_sectionHowmany v)
        ]

instance HTypeable Ps where
    toHType x = Defined "ps" [] []
instance XmlContent Ps where
    toContents (Ps as a) =
        [CElem (Elem (N "ps") (toAttrs as) (toContents a)) ()]
    parseContents = do
        { e@(Elem _ as _) <- element ["ps"]
        ; interior e $ return (Ps (fromAttrs as)) `apply` parseContents
        } `adjustErr` ("in <ps>, "++)
instance XmlAttributes Ps_Attrs where
    fromAttrs as =
        Ps_Attrs
          { psName = definiteA fromAttrToStr "ps" "name" as
          , psMylink = possibleA fromAttrToStr "mylink" as
          , psEnclabels = possibleA fromAttrToStr "enclabels" as
          , psSections = definiteA fromAttrToStr "ps" "sections" as
          , psSecttype = possibleA fromAttrToStr "secttype" as
          }
    toAttrs v = catMaybes 
        [ toAttrFrStr "name" (psName v)
        , maybeToAttr toAttrFrStr "mylink" (psMylink v)
        , maybeToAttr toAttrFrStr "enclabels" (psEnclabels v)
        , toAttrFrStr "sections" (psSections v)
        , maybeToAttr toAttrFrStr "secttype" (psSecttype v)
        ]

instance HTypeable Psdoc where
    toHType x = Defined "psdoc" [] []
instance XmlContent Psdoc where
    toContents (Psdoc a) =
        [CElem (Elem (N "psdoc") [] (toText a)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["psdoc"]
        ; interior e $ return (Psdoc) `apply` (text `onFail` return "")
        } `adjustErr` ("in <psdoc>, "++)

instance HTypeable Pstext where
    toHType x = Defined "pstext" [] []
instance XmlContent Pstext where
    toContents (Pstext as a) =
        [CElem (Elem (N "pstext") (toAttrs as) (concatMap toContents a)) ()]
    parseContents = do
        { e@(Elem _ as _) <- element ["pstext"]
        ; interior e $ return (Pstext (fromAttrs as))
                       `apply` many parseContents
        } `adjustErr` ("in <pstext>, "++)
instance XmlAttributes Pstext_Attrs where
    fromAttrs as =
        Pstext_Attrs
          { pstextSection = definiteA fromAttrToStr "pstext" "section" as
          , pstextRep_section = possibleA fromAttrToStr "rep_section" as
          , pstextMayhavelinks = possibleA fromAttrToTyp "mayhavelinks" as
          }
    toAttrs v = catMaybes 
        [ toAttrFrStr "section" (pstextSection v)
        , maybeToAttr toAttrFrStr "rep_section" (pstextRep_section v)
        , maybeToAttr toAttrFrTyp "mayhavelinks" (pstextMayhavelinks v)
        ]

instance HTypeable Pstext_ where
    toHType x = Defined "pstext" [] []
instance XmlContent Pstext_ where
    toContents (Pstext_Str a) = toText a
    toContents (Pstext_A a) = toContents a
    toContents (Pstext_Anchor a) = toContents a
    toContents (Pstext_Txt a) = toContents a
    parseContents = oneOf
        [ return (Pstext_Str) `apply` text
        , return (Pstext_A) `apply` parseContents
        , return (Pstext_Anchor) `apply` parseContents
        , return (Pstext_Txt) `apply` parseContents
        ] `adjustErr` ("in <pstext>, "++)

instance XmlAttrType Pstext_mayhavelinks where
    fromAttrToTyp n (N n',v)
        | n==n'     = translate (attr2str v)
        | otherwise = Nothing
      where translate "1" = Just Pstext_mayhavelinks_1
            translate _ = Nothing
    toAttrFrTyp n Pstext_mayhavelinks_1 = Just (N n, str2attr "1")

instance HTypeable Constrained_unpredictables where
    toHType x = Defined "constrained_unpredictables" [] []
instance XmlContent Constrained_unpredictables where
    toContents (Constrained_unpredictables as a) =
        [CElem (Elem (N "constrained_unpredictables") (toAttrs as) (toContents a)) ()]
    parseContents = do
        { e@(Elem _ as _) <- element ["constrained_unpredictables"]
        ; interior e $ return (Constrained_unpredictables (fromAttrs as))
                       `apply` parseContents
        } `adjustErr` ("in <constrained_unpredictables>, "++)
instance XmlAttributes Constrained_unpredictables_Attrs where
    fromAttrs as =
        Constrained_unpredictables_Attrs
          { constrained_unpredictablesEncoding = possibleA fromAttrToStr "encoding" as
          , constrained_unpredictablesPs_block = possibleA fromAttrToStr "ps_block" as
          }
    toAttrs v = catMaybes 
        [ maybeToAttr toAttrFrStr "encoding" (constrained_unpredictablesEncoding v)
        , maybeToAttr toAttrFrStr "ps_block" (constrained_unpredictablesPs_block v)
        ]

instance HTypeable Cu_case where
    toHType x = Defined "cu_case" [] []
instance XmlContent Cu_case where
    toContents (Cu_case a b c) =
        [CElem (Elem (N "cu_case") [] (toContents a ++ toContents b ++
                                       maybe [] toContents c)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["cu_case"]
        ; interior e $ return (Cu_case) `apply` parseContents
                       `apply` parseContents `apply` optional parseContents
        } `adjustErr` ("in <cu_case>, "++)

instance HTypeable Cu_cause where
    toHType x = Defined "cu_cause" [] []
instance XmlContent Cu_cause where
    toContents (Cu_cause a) =
        [CElem (Elem (N "cu_cause") [] (toContents a)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["cu_cause"]
        ; interior e $ return (Cu_cause) `apply` parseContents
        } `adjustErr` ("in <cu_cause>, "++)

instance HTypeable Cu_type where
    toHType x = Defined "cu_type" [] []
instance XmlContent Cu_type where
    toContents (Cu_type as a b) =
        [CElem (Elem (N "cu_type") (toAttrs as) (concatMap toContents a ++
                                                 concatMap toContents b)) ()]
    parseContents = do
        { e@(Elem _ as _) <- element ["cu_type"]
        ; interior e $ return (Cu_type (fromAttrs as))
                       `apply` many parseContents `apply` many parseContents
        } `adjustErr` ("in <cu_type>, "++)
instance XmlAttributes Cu_type_Attrs where
    fromAttrs as =
        Cu_type_Attrs
          { cu_typeConstraint = possibleA fromAttrToStr "constraint" as
          }
    toAttrs v = catMaybes 
        [ maybeToAttr toAttrFrStr "constraint" (cu_typeConstraint v)
        ]

instance HTypeable Cu_type_variable where
    toHType x = Defined "cu_type_variable" [] []
instance XmlContent Cu_type_variable where
    toContents as =
        [CElem (Elem (N "cu_type_variable") (toAttrs as) []) ()]
    parseContents = do
        { (Elem _ as []) <- element ["cu_type_variable"]
        ; return (fromAttrs as)
        } `adjustErr` ("in <cu_type_variable>, "++)
instance XmlAttributes Cu_type_variable where
    fromAttrs as =
        Cu_type_variable
          { cu_type_variableName = definiteA fromAttrToStr "cu_type_variable" "name" as
          , cu_type_variableValue = definiteA fromAttrToStr "cu_type_variable" "value" as
          }
    toAttrs v = catMaybes 
        [ toAttrFrStr "name" (cu_type_variableName v)
        , toAttrFrStr "value" (cu_type_variableValue v)
        ]

instance HTypeable Cu_type_text where
    toHType x = Defined "cu_type_text" [] []
instance XmlContent Cu_type_text where
    toContents (Cu_type_text a) =
        [CElem (Elem (N "cu_type_text") [] (concatMap toContents a)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["cu_type_text"]
        ; interior e $ return (Cu_type_text) `apply` many parseContents
        } `adjustErr` ("in <cu_type_text>, "++)

instance HTypeable Exceptions where
    toHType x = Defined "exceptions" [] []
instance XmlContent Exceptions where
    toContents (Exceptions a) =
        [CElem (Elem (N "exceptions") [] (concatMap toContents a)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["exceptions"]
        ; interior e $ return (Exceptions) `apply` many parseContents
        } `adjustErr` ("in <exceptions>, "++)

instance HTypeable Exception_group where
    toHType x = Defined "exception_group" [] []
instance XmlContent Exception_group where
    toContents (Exception_group as a) =
        [CElem (Elem (N "exception_group") (toAttrs as) (toContents a)) ()]
    parseContents = do
        { e@(Elem _ as _) <- element ["exception_group"]
        ; interior e $ return (Exception_group (fromAttrs as))
                       `apply` parseContents
        } `adjustErr` ("in <exception_group>, "++)
instance XmlAttributes Exception_group_Attrs where
    fromAttrs as =
        Exception_group_Attrs
          { exception_groupGroup_name = possibleA fromAttrToStr "group_name" as
          }
    toAttrs v = catMaybes 
        [ maybeToAttr toAttrFrStr "group_name" (exception_groupGroup_name v)
        ]

instance HTypeable Exception where
    toHType x = Defined "exception" [] []
instance XmlContent Exception where
    toContents as =
        [CElem (Elem (N "exception") (toAttrs as) []) ()]
    parseContents = do
        { (Elem _ as []) <- element ["exception"]
        ; return (fromAttrs as)
        } `adjustErr` ("in <exception>, "++)
instance XmlAttributes Exception where
    fromAttrs as =
        Exception
          { exceptionRegister = possibleA fromAttrToStr "register" as
          , exceptionField = possibleA fromAttrToStr "field" as
          , exceptionValue = possibleA fromAttrToStr "value" as
          , exceptionName = possibleA fromAttrToStr "name" as
          }
    toAttrs v = catMaybes 
        [ maybeToAttr toAttrFrStr "register" (exceptionRegister v)
        , maybeToAttr toAttrFrStr "field" (exceptionField v)
        , maybeToAttr toAttrFrStr "value" (exceptionValue v)
        , maybeToAttr toAttrFrStr "name" (exceptionName v)
        ]

instance HTypeable Txt where
    toHType x = Defined "txt" [] []
instance XmlContent Txt where
    toContents (Txt as a) =
        [CElem (Elem (N "txt") (toAttrs as) (concatMap toContents a)) ()]
    parseContents = do
        { e@(Elem _ as _) <- element ["txt"]
        ; interior e $ return (Txt (fromAttrs as))
                       `apply` many parseContents
        } `adjustErr` ("in <txt>, "++)
instance XmlAttributes Txt_Attrs where
    fromAttrs as =
        Txt_Attrs
          { txtClass = possibleA fromAttrToStr "class" as
          }
    toAttrs v = catMaybes 
        [ maybeToAttr toAttrFrStr "class" (txtClass v)
        ]

instance HTypeable Txt_ where
    toHType x = Defined "txt" [] []
instance XmlContent Txt_ where
    toContents (Txt_Str a) = toText a
    toContents (Txt_A a) = toContents a
    toContents (Txt_Anchor a) = toContents a
    toContents (Txt_Txt a) = toContents a
    parseContents = oneOf
        [ return (Txt_Str) `apply` text
        , return (Txt_A) `apply` parseContents
        , return (Txt_Anchor) `apply` parseContents
        , return (Txt_Txt) `apply` parseContents
        ] `adjustErr` ("in <txt>, "++)

instance HTypeable Text where
    toHType x = Defined "text" [] []
instance XmlContent Text where
    toContents (Text a) =
        [CElem (Elem (N "text") [] (toText a)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["text"]
        ; interior e $ return (Text) `apply` (text `onFail` return "")
        } `adjustErr` ("in <text>, "++)

instance HTypeable Note where
    toHType x = Defined "note" [] []
instance XmlContent Note where
    toContents (Note a) =
        [CElem (Elem (N "note") [] (concatMap toContents a)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["note"]
        ; interior e $ return (Note) `apply` many parseContents
        } `adjustErr` ("in <note>, "++)

instance HTypeable Note_ where
    toHType x = Defined "note" [] []
instance XmlContent Note_ where
    toContents (Note_Str a) = toText a
    toContents (Note_Para a) = toContents a
    toContents (Note_List a) = toContents a
    toContents (Note_Table a) = toContents a
    parseContents = oneOf
        [ return (Note_Str) `apply` text
        , return (Note_Para) `apply` parseContents
        , return (Note_List) `apply` parseContents
        , return (Note_Table) `apply` parseContents
        ] `adjustErr` ("in <note>, "++)

instance HTypeable Image where
    toHType x = Defined "image" [] []
instance XmlContent Image where
    toContents as =
        [CElem (Elem (N "image") (toAttrs as) []) ()]
    parseContents = do
        { (Elem _ as []) <- element ["image"]
        ; return (fromAttrs as)
        } `adjustErr` ("in <image>, "++)
instance XmlAttributes Image where
    fromAttrs as =
        Image
          { imageFile = definiteA fromAttrToStr "image" "file" as
          , imageLabel = possibleA fromAttrToStr "label" as
          }
    toAttrs v = catMaybes 
        [ toAttrFrStr "file" (imageFile v)
        , maybeToAttr toAttrFrStr "label" (imageLabel v)
        ]

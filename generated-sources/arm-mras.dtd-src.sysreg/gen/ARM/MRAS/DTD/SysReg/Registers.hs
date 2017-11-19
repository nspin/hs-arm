module ARM.MRAS.DTD.SysReg.Registers where

import Prelude hiding (Right, Left)
import Text.XML.HaXml.XmlContent hiding (Content, List)
import Text.XML.HaXml.Types hiding (Content, Name)
import Text.XML.HaXml.OneOfN


-- TYPES --


newtype Para = Para [Para_] 		deriving (Eq,Show)

data Para_ = Para_Str String
           | Para_Register_link Register_link
           | Para_Instruction Instruction
           | Para_Xref Xref
           | Para_Arm_defined_word Arm_defined_word
           | Para_Sup Sup
           | Para_Sub Sub
           | Para_B B
           | Para_Binarynumber Binarynumber
           | Para_Hexnumber Hexnumber
           | Para_Signal Signal
           | Para_Syntax Syntax
           | Para_Value Value
           | Para_Function Function
           | Para_AEnum AEnum
           | Para_Enumvalue Enumvalue
           | Para_Url Url
           deriving (Eq,Show)

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

data Listitem = Listitem (OneOf2 [Term] [Param]) Content
              deriving (Eq,Show)

newtype Term = Term [Term_] 		deriving (Eq,Show)

data Term_ = Term_Str String
           | Term_Register_link Register_link
           | Term_Instruction Instruction
           | Term_Xref Xref
           | Term_Arm_defined_word Arm_defined_word
           | Term_Sup Sup
           | Term_Sub Sub
           | Term_B B
           | Term_Binarynumber Binarynumber
           | Term_Hexnumber Hexnumber
           | Term_Signal Signal
           | Term_Syntax Syntax
           | Term_Value Value
           | Term_Function Function
           | Term_AEnum AEnum
           | Term_Enumvalue Enumvalue
           | Term_Url Url
           deriving (Eq,Show)

newtype Param = Param [Param_] 		deriving (Eq,Show)

data Param_ = Param_Str String
            | Param_Register_link Register_link
            | Param_Instruction Instruction
            | Param_Xref Xref
            | Param_Arm_defined_word Arm_defined_word
            | Param_Sup Sup
            | Param_Sub Sub
            | Param_B B
            | Param_Binarynumber Binarynumber
            | Param_Hexnumber Hexnumber
            | Param_Signal Signal
            | Param_Syntax Syntax
            | Param_Value Value
            | Param_Function Function
            | Param_AEnum AEnum
            | Param_Enumvalue Enumvalue
            | Param_Url Url
            deriving (Eq,Show)

newtype Content = Content [Content_] 		deriving (Eq,Show)

data Content_ = Content_Str String
              | Content_List List
              | Content_Para Para
              | Content_Register_link Register_link
              | Content_Instruction Instruction
              | Content_Xref Xref
              | Content_Arm_defined_word Arm_defined_word
              | Content_Sup Sup
              | Content_Sub Sub
              | Content_B B
              | Content_Binarynumber Binarynumber
              | Content_Hexnumber Hexnumber
              | Content_Signal Signal
              | Content_Syntax Syntax
              | Content_Value Value
              | Content_Function Function
              | Content_AEnum AEnum
              | Content_Enumvalue Enumvalue
              | Content_Url Url
              deriving (Eq,Show)

newtype Note = Note [Note_] 		deriving (Eq,Show)

data Note_ = Note_Str String
           | Note_Para Para
           | Note_List List
           | Note_Table Table
           deriving (Eq,Show)

newtype Hexnumber = Hexnumber String 		deriving (Eq,Show)

newtype Binarynumber = Binarynumber String 		deriving (Eq,Show)

newtype Sub = Sub String 		deriving (Eq,Show)

newtype Sup = Sup String 		deriving (Eq,Show)

newtype B = B String 		deriving (Eq,Show)

newtype Signal = Signal String 		deriving (Eq,Show)

newtype Syntax = Syntax [String] 		deriving (Eq,Show)

newtype Value = Value [String] 		deriving (Eq,Show)

newtype Function = Function [String] 		deriving (Eq,Show)

newtype AEnum = AEnum [String] 		deriving (Eq,Show)

newtype Enumvalue = Enumvalue [String] 		deriving (Eq,Show)

newtype Arm_defined_word = Arm_defined_word String 		deriving (Eq,Show)

data Register_link = Register_link Register_link_Attrs String
                   deriving (Eq,Show)
data Register_link_Attrs = Register_link_Attrs
    { register_linkState :: (Maybe Register_link_state)
    , register_linkId :: (Maybe String)
    } deriving (Eq,Show)

data Register_link_state = Register_link_state_AArch64  | 
                           Register_link_state_AArch32  |  Register_link_state_ext
                         deriving (Eq,Show)

newtype Instruction = Instruction [String] 		deriving (Eq,Show)

data Xref = Xref
    { xrefLinkend :: String
    , xrefFilename :: (Maybe String)
    , xrefBrowsertext :: String
    } deriving (Eq,Show)

newtype Url = Url [String] 		deriving (Eq,Show)

newtype Entry = Entry [Entry_] 		deriving (Eq,Show)

data Entry_ = Entry_Str String
            | Entry_Register_link Register_link
            | Entry_Instruction Instruction
            | Entry_Xref Xref
            | Entry_Arm_defined_word Arm_defined_word
            | Entry_Sup Sup
            | Entry_Sub Sub
            | Entry_B B
            | Entry_Binarynumber Binarynumber
            | Entry_Hexnumber Hexnumber
            | Entry_Signal Signal
            | Entry_Syntax Syntax
            | Entry_Value Value
            | Entry_Function Function
            | Entry_AEnum AEnum
            | Entry_Enumvalue Enumvalue
            | Entry_Url Url
            deriving (Eq,Show)

newtype Row = Row (List1 Entry) 		deriving (Eq,Show)

newtype Tbody = Tbody (List1 Row) 		deriving (Eq,Show)

newtype Thead = Thead (List1 Row) 		deriving (Eq,Show)

data Tgroup = Tgroup Tgroup_Attrs Thead Tbody
            deriving (Eq,Show)
data Tgroup_Attrs = Tgroup_Attrs
    { tgroupCols :: String
    } deriving (Eq,Show)

newtype Table = Table (List1 Tgroup) 		deriving (Eq,Show)

data Textsection = Textsection Textsection_Attrs [Para]
                 deriving (Eq,Show)
data Textsection_Attrs = Textsection_Attrs
    { textsectionTitle :: String
    } deriving (Eq,Show)

data Register_page = Register_page Registers Timestamp
                   deriving (Eq,Show)

newtype Registers = Registers (List1 Register) 		deriving (Eq,Show)

data Register = Register Register_Attrs Reg_short_name
                         Reg_long_name (Maybe Reg_documents_other_regs)
                         (Maybe Reg_documented_in) (Maybe Reg_array) [Reg_address]
                         (Maybe Reg_reset_value) [Usage_constraint_set] (Maybe Reg_mappings)
                         Reg_purpose Reg_groups Reg_usage_constraints
                         (Maybe Reg_reverse_traps_and_enables) Reg_configuration
                         (Maybe Reg_banking) (Maybe Reg_attributes) Reg_fieldsets
                         [Reg_encoding] (Maybe Reg_variables) (Maybe Access_mechanisms)
                         (Maybe Arch_variants)
              deriving (Eq,Show)
data Register_Attrs = Register_Attrs
    { registerIs_register :: Register_is_register
    , registerIs_internal :: Register_is_internal
    , registerExecution_state :: (Maybe Register_execution_state)
    , registerIs_banked :: Register_is_banked
    , registerIs_optional :: Register_is_optional
    , registerIs_stub_entry :: Register_is_stub_entry
    } deriving (Eq,Show)

data Register_is_register = Register_is_register_True  | 
                            Register_is_register_False
                          deriving (Eq,Show)

data Register_is_internal = Register_is_internal_True  | 
                            Register_is_internal_False
                          deriving (Eq,Show)

data Register_execution_state = Register_execution_state_AArch32
                                 |  Register_execution_state_AArch64
                              deriving (Eq,Show)

data Register_is_banked = Register_is_banked_True  | 
                          Register_is_banked_False
                        deriving (Eq,Show)

data Register_is_optional = Register_is_optional_True  | 
                            Register_is_optional_False
                          deriving (Eq,Show)

data Register_is_stub_entry = Register_is_stub_entry_True  | 
                              Register_is_stub_entry_False
                            deriving (Eq,Show)

newtype Reg_short_name = Reg_short_name String 		deriving (Eq,Show)

newtype Reg_long_name = Reg_long_name String 		deriving (Eq,Show)

data Reg_reset_value = Reg_reset_value Reg_reset_value_Attrs
                                       [Reg_reset_limited_to_el] (Maybe Reg_reset_special_text)
                     deriving (Eq,Show)
data Reg_reset_value_Attrs = Reg_reset_value_Attrs
    { reg_reset_valueType :: (Maybe String)
    } deriving (Eq,Show)

newtype Reg_reset_limited_to_el = Reg_reset_limited_to_el String 		deriving (Eq,Show)

newtype Reg_reset_special_text = Reg_reset_special_text [Reg_reset_special_text_] 		deriving (Eq,Show)

data Reg_reset_special_text_ = Reg_reset_special_text_Str String
                             | Reg_reset_special_text_Para Para
                             | Reg_reset_special_text_List List
                             | Reg_reset_special_text_Listitem Listitem
                             | Reg_reset_special_text_Content Content
                             | Reg_reset_special_text_Table Table
                             | Reg_reset_special_text_Note Note
                             | Reg_reset_special_text_Register_link Register_link
                             | Reg_reset_special_text_Instruction Instruction
                             | Reg_reset_special_text_Xref Xref
                             | Reg_reset_special_text_Arm_defined_word Arm_defined_word
                             | Reg_reset_special_text_Sup Sup
                             | Reg_reset_special_text_Sub Sub
                             | Reg_reset_special_text_B B
                             | Reg_reset_special_text_Binarynumber Binarynumber
                             | Reg_reset_special_text_Hexnumber Hexnumber
                             | Reg_reset_special_text_Signal Signal
                             | Reg_reset_special_text_Syntax Syntax
                             | Reg_reset_special_text_Value Value
                             | Reg_reset_special_text_Function Function
                             | Reg_reset_special_text_AEnum AEnum
                             | Reg_reset_special_text_Enumvalue Enumvalue
                             | Reg_reset_special_text_Url Url
                             deriving (Eq,Show)

newtype Reg_groups = Reg_groups [Reg_group] 		deriving (Eq,Show)

newtype Reg_group = Reg_group String 		deriving (Eq,Show)

newtype Reg_documents_other_regs = Reg_documents_other_regs (List1 Register_link) 		deriving (Eq,Show)

data Reg_documented_in = Reg_documented_in Reg_documented_in_Attrs
                                           String
                       deriving (Eq,Show)
data Reg_documented_in_Attrs = Reg_documented_in_Attrs
    { reg_documented_inId :: String
    } deriving (Eq,Show)

data Reg_array = Reg_array Reg_array_start Reg_array_end
               deriving (Eq,Show)

newtype Reg_array_start = Reg_array_start String 		deriving (Eq,Show)

newtype Reg_array_end = Reg_array_end String 		deriving (Eq,Show)

data Usage_constraint_set = Usage_constraint_set Usage_constraint_set_Attrs
                                                 [Reg_access]
                          deriving (Eq,Show)
data Usage_constraint_set_Attrs = Usage_constraint_set_Attrs
    { usage_constraint_setName :: (Maybe String)
    } deriving (Eq,Show)

data Reg_access = Reg_access Reg_access_Attrs [Reg_access_state]
                deriving (Eq,Show)
data Reg_access_Attrs = Reg_access_Attrs
    { reg_accessName :: (Maybe String)
    } deriving (Eq,Show)

data Reg_access_state = Reg_access_state Reg_access_level
                                         Reg_access_type
                      deriving (Eq,Show)

newtype Reg_access_level = Reg_access_level String 		deriving (Eq,Show)

newtype Reg_access_type = Reg_access_type String 		deriving (Eq,Show)

data Reg_address = Reg_address Reg_address_Attrs Reg_component
                               (Maybe Reg_frame) Reg_offset
                 deriving (Eq,Show)
data Reg_address_Attrs = Reg_address_Attrs
    { reg_addressExternal_access :: Reg_address_external_access
    , reg_addressMem_map_access :: Reg_address_mem_map_access
    , reg_addressPower_domain :: String
    , reg_addressRegister_startbit :: (Maybe Reg_address_register_startbit)
    , reg_addressRegister_endbit :: (Maybe Reg_address_register_endbit)
    } deriving (Eq,Show)

data Reg_address_external_access = Reg_address_external_access_True
                                    |  Reg_address_external_access_False
                                 deriving (Eq,Show)

data Reg_address_mem_map_access = Reg_address_mem_map_access_True
                                   |  Reg_address_mem_map_access_False
                                deriving (Eq,Show)

data Reg_address_register_startbit = Reg_address_register_startbit_31
                                      |  Reg_address_register_startbit_63
                                   deriving (Eq,Show)

data Reg_address_register_endbit = Reg_address_register_endbit_0
                                    |  Reg_address_register_endbit_32
                                 deriving (Eq,Show)

newtype Reg_component = Reg_component String 		deriving (Eq,Show)

newtype Reg_frame = Reg_frame String 		deriving (Eq,Show)

newtype Reg_offset = Reg_offset [Reg_offset_] 		deriving (Eq,Show)

data Reg_offset_ = Reg_offset_Str String
                 | Reg_offset_Register_link Register_link
                 | Reg_offset_Instruction Instruction
                 | Reg_offset_Xref Xref
                 | Reg_offset_Arm_defined_word Arm_defined_word
                 | Reg_offset_Sup Sup
                 | Reg_offset_Sub Sub
                 | Reg_offset_B B
                 | Reg_offset_Binarynumber Binarynumber
                 | Reg_offset_Hexnumber Hexnumber
                 | Reg_offset_Signal Signal
                 | Reg_offset_Syntax Syntax
                 | Reg_offset_Value Value
                 | Reg_offset_Function Function
                 | Reg_offset_AEnum AEnum
                 | Reg_offset_Enumvalue Enumvalue
                 | Reg_offset_Url Url
                 deriving (Eq,Show)

data Reg_encoding = Reg_encoding (Maybe Reg_condition)
                                 (Maybe Reg_read_instruction) (Maybe Reg_write_instruction)
                                 Reg_encoding_params (Maybe Reg_encoding_text)
                  deriving (Eq,Show)

newtype Reg_condition = Reg_condition String 		deriving (Eq,Show)

data Reg_read_instruction = Reg_read_instruction Reg_read_instruction_Attrs
                                                 String
                          deriving (Eq,Show)
data Reg_read_instruction_Attrs = Reg_read_instruction_Attrs
    { reg_read_instructionMnemonic :: String
    } deriving (Eq,Show)

data Reg_write_instruction = Reg_write_instruction Reg_write_instruction_Attrs
                                                   String
                           deriving (Eq,Show)
data Reg_write_instruction_Attrs = Reg_write_instruction_Attrs
    { reg_write_instructionMnemonic :: String
    } deriving (Eq,Show)

newtype Reg_encoding_params = Reg_encoding_params (List1 Encoding_param) 		deriving (Eq,Show)

data Encoding_param = Encoding_param Encoding_fieldname
                                     Encoding_fieldvalue
                    deriving (Eq,Show)

newtype Encoding_fieldname = Encoding_fieldname String 		deriving (Eq,Show)

newtype Encoding_fieldvalue = Encoding_fieldvalue String 		deriving (Eq,Show)

newtype Reg_encoding_text = Reg_encoding_text [Reg_encoding_text_] 		deriving (Eq,Show)

data Reg_encoding_text_ = Reg_encoding_text_Str String
                        | Reg_encoding_text_Para Para
                        | Reg_encoding_text_List List
                        | Reg_encoding_text_Listitem Listitem
                        | Reg_encoding_text_Content Content
                        | Reg_encoding_text_Table Table
                        | Reg_encoding_text_Note Note
                        | Reg_encoding_text_Register_link Register_link
                        | Reg_encoding_text_Instruction Instruction
                        | Reg_encoding_text_Xref Xref
                        | Reg_encoding_text_Arm_defined_word Arm_defined_word
                        | Reg_encoding_text_Sup Sup
                        | Reg_encoding_text_Sub Sub
                        | Reg_encoding_text_B B
                        | Reg_encoding_text_Binarynumber Binarynumber
                        | Reg_encoding_text_Hexnumber Hexnumber
                        | Reg_encoding_text_Signal Signal
                        | Reg_encoding_text_Syntax Syntax
                        | Reg_encoding_text_Value Value
                        | Reg_encoding_text_Function Function
                        | Reg_encoding_text_AEnum AEnum
                        | Reg_encoding_text_Enumvalue Enumvalue
                        | Reg_encoding_text_Url Url
                        deriving (Eq,Show)

newtype Reg_mappings = Reg_mappings [Reg_mapping] 		deriving (Eq,Show)

data Reg_mapping = Reg_mapping Mapped_name Mapped_type
                               Mapped_execution_state (Maybe Mapped_from_startbit)
                               (Maybe Mapped_from_endbit) (Maybe Mapped_from_sec_state)
                               (Maybe Mapped_from_condition) (Maybe Mapped_to_startbit)
                               (Maybe Mapped_to_endbit) (Maybe Mapped_to_sec_state)
                               (Maybe Mapped_to_condition)
                 deriving (Eq,Show)

data Mapped_name = Mapped_name Mapped_name_Attrs String
                 deriving (Eq,Show)
data Mapped_name_Attrs = Mapped_name_Attrs
    { mapped_nameFilename :: (Maybe String)
    } deriving (Eq,Show)

newtype Mapped_type = Mapped_type String 		deriving (Eq,Show)

newtype Mapped_execution_state = Mapped_execution_state String 		deriving (Eq,Show)

newtype Mapped_from_startbit = Mapped_from_startbit String 		deriving (Eq,Show)

newtype Mapped_from_endbit = Mapped_from_endbit String 		deriving (Eq,Show)

newtype Mapped_to_startbit = Mapped_to_startbit String 		deriving (Eq,Show)

newtype Mapped_to_endbit = Mapped_to_endbit String 		deriving (Eq,Show)

newtype Mapped_from_sec_state = Mapped_from_sec_state String 		deriving (Eq,Show)

newtype Mapped_to_sec_state = Mapped_to_sec_state String 		deriving (Eq,Show)

newtype Mapped_from_condition = Mapped_from_condition String 		deriving (Eq,Show)

newtype Mapped_to_condition = Mapped_to_condition String 		deriving (Eq,Show)

newtype Reg_purpose = Reg_purpose [Purpose_text] 		deriving (Eq,Show)

newtype Purpose_text = Purpose_text [Purpose_text_] 		deriving (Eq,Show)

data Purpose_text_ = Purpose_text_Str String
                   | Purpose_text_Para Para
                   | Purpose_text_List List
                   | Purpose_text_Listitem Listitem
                   | Purpose_text_Content Content
                   | Purpose_text_Table Table
                   | Purpose_text_Note Note
                   | Purpose_text_Register_link Register_link
                   | Purpose_text_Instruction Instruction
                   | Purpose_text_Xref Xref
                   | Purpose_text_Arm_defined_word Arm_defined_word
                   | Purpose_text_Sup Sup
                   | Purpose_text_Sub Sub
                   | Purpose_text_B B
                   | Purpose_text_Binarynumber Binarynumber
                   | Purpose_text_Hexnumber Hexnumber
                   | Purpose_text_Signal Signal
                   | Purpose_text_Syntax Syntax
                   | Purpose_text_Value Value
                   | Purpose_text_Function Function
                   | Purpose_text_AEnum AEnum
                   | Purpose_text_Enumvalue Enumvalue
                   | Purpose_text_Url Url
                   deriving (Eq,Show)

newtype Reg_usage_constraints = Reg_usage_constraints [Usage_constraints_text] 		deriving (Eq,Show)

newtype Reg_reverse_traps_and_enables = Reg_reverse_traps_and_enables [Reverse_trap_or_enable_text] 		deriving (Eq,Show)

newtype Usage_constraints_text = Usage_constraints_text [Usage_constraints_text_] 		deriving (Eq,Show)

data Usage_constraints_text_ = Usage_constraints_text_Str String
                             | Usage_constraints_text_Para Para
                             | Usage_constraints_text_List List
                             | Usage_constraints_text_Listitem Listitem
                             | Usage_constraints_text_Content Content
                             | Usage_constraints_text_Table Table
                             | Usage_constraints_text_Note Note
                             | Usage_constraints_text_Register_link Register_link
                             | Usage_constraints_text_Instruction Instruction
                             | Usage_constraints_text_Xref Xref
                             | Usage_constraints_text_Arm_defined_word Arm_defined_word
                             | Usage_constraints_text_Sup Sup
                             | Usage_constraints_text_Sub Sub
                             | Usage_constraints_text_B B
                             | Usage_constraints_text_Binarynumber Binarynumber
                             | Usage_constraints_text_Hexnumber Hexnumber
                             | Usage_constraints_text_Signal Signal
                             | Usage_constraints_text_Syntax Syntax
                             | Usage_constraints_text_Value Value
                             | Usage_constraints_text_Function Function
                             | Usage_constraints_text_AEnum AEnum
                             | Usage_constraints_text_Enumvalue Enumvalue
                             | Usage_constraints_text_Url Url
                             deriving (Eq,Show)

newtype Reverse_trap_or_enable_text = Reverse_trap_or_enable_text [Reverse_trap_or_enable_text_] 		deriving (Eq,Show)

data Reverse_trap_or_enable_text_ = Reverse_trap_or_enable_text_Str String
                                  | Reverse_trap_or_enable_text_Para Para
                                  | Reverse_trap_or_enable_text_List List
                                  | Reverse_trap_or_enable_text_Listitem Listitem
                                  | Reverse_trap_or_enable_text_Content Content
                                  | Reverse_trap_or_enable_text_Table Table
                                  | Reverse_trap_or_enable_text_Note Note
                                  | Reverse_trap_or_enable_text_Register_link Register_link
                                  | Reverse_trap_or_enable_text_Instruction Instruction
                                  | Reverse_trap_or_enable_text_Xref Xref
                                  | Reverse_trap_or_enable_text_Arm_defined_word Arm_defined_word
                                  | Reverse_trap_or_enable_text_Sup Sup
                                  | Reverse_trap_or_enable_text_Sub Sub
                                  | Reverse_trap_or_enable_text_B B
                                  | Reverse_trap_or_enable_text_Binarynumber Binarynumber
                                  | Reverse_trap_or_enable_text_Hexnumber Hexnumber
                                  | Reverse_trap_or_enable_text_Signal Signal
                                  | Reverse_trap_or_enable_text_Syntax Syntax
                                  | Reverse_trap_or_enable_text_Value Value
                                  | Reverse_trap_or_enable_text_Function Function
                                  | Reverse_trap_or_enable_text_AEnum AEnum
                                  | Reverse_trap_or_enable_text_Enumvalue Enumvalue
                                  | Reverse_trap_or_enable_text_Url Url
                                  deriving (Eq,Show)

newtype Reg_configuration = Reg_configuration [Configuration_text] 		deriving (Eq,Show)

newtype Configuration_text = Configuration_text [Configuration_text_] 		deriving (Eq,Show)

data Configuration_text_ = Configuration_text_Str String
                         | Configuration_text_Para Para
                         | Configuration_text_List List
                         | Configuration_text_Listitem Listitem
                         | Configuration_text_Content Content
                         | Configuration_text_Table Table
                         | Configuration_text_Note Note
                         | Configuration_text_Register_link Register_link
                         | Configuration_text_Instruction Instruction
                         | Configuration_text_Xref Xref
                         | Configuration_text_Arm_defined_word Arm_defined_word
                         | Configuration_text_Sup Sup
                         | Configuration_text_Sub Sub
                         | Configuration_text_B B
                         | Configuration_text_Binarynumber Binarynumber
                         | Configuration_text_Hexnumber Hexnumber
                         | Configuration_text_Signal Signal
                         | Configuration_text_Syntax Syntax
                         | Configuration_text_Value Value
                         | Configuration_text_Function Function
                         | Configuration_text_AEnum AEnum
                         | Configuration_text_Enumvalue Enumvalue
                         | Configuration_text_Url Url
                         deriving (Eq,Show)

newtype Reg_banking = Reg_banking [Reg_banking_] 		deriving (Eq,Show)

data Reg_banking_ = Reg_banking_Str String
                  | Reg_banking_Para Para
                  | Reg_banking_List List
                  | Reg_banking_Listitem Listitem
                  | Reg_banking_Content Content
                  | Reg_banking_Table Table
                  | Reg_banking_Note Note
                  | Reg_banking_Register_link Register_link
                  | Reg_banking_Instruction Instruction
                  | Reg_banking_Xref Xref
                  | Reg_banking_Arm_defined_word Arm_defined_word
                  | Reg_banking_Sup Sup
                  | Reg_banking_Sub Sub
                  | Reg_banking_B B
                  | Reg_banking_Binarynumber Binarynumber
                  | Reg_banking_Hexnumber Hexnumber
                  | Reg_banking_Signal Signal
                  | Reg_banking_Syntax Syntax
                  | Reg_banking_Value Value
                  | Reg_banking_Function Function
                  | Reg_banking_AEnum AEnum
                  | Reg_banking_Enumvalue Enumvalue
                  | Reg_banking_Url Url
                  deriving (Eq,Show)

newtype Reg_attributes = Reg_attributes [Attributes_text] 		deriving (Eq,Show)

newtype Attributes_text = Attributes_text [Attributes_text_] 		deriving (Eq,Show)

data Attributes_text_ = Attributes_text_Str String
                      | Attributes_text_Para Para
                      | Attributes_text_List List
                      | Attributes_text_Listitem Listitem
                      | Attributes_text_Content Content
                      | Attributes_text_Table Table
                      | Attributes_text_Note Note
                      | Attributes_text_Register_link Register_link
                      | Attributes_text_Instruction Instruction
                      | Attributes_text_Xref Xref
                      | Attributes_text_Arm_defined_word Arm_defined_word
                      | Attributes_text_Sup Sup
                      | Attributes_text_Sub Sub
                      | Attributes_text_B B
                      | Attributes_text_Binarynumber Binarynumber
                      | Attributes_text_Hexnumber Hexnumber
                      | Attributes_text_Signal Signal
                      | Attributes_text_Syntax Syntax
                      | Attributes_text_Value Value
                      | Attributes_text_Function Function
                      | Attributes_text_AEnum AEnum
                      | Attributes_text_Enumvalue Enumvalue
                      | Attributes_text_Url Url
                      deriving (Eq,Show)

data Reg_fieldsets = Reg_fieldsets (Maybe Shared_fields) [Fields]
                                   [Reg_fieldset]
                   deriving (Eq,Show)

newtype Shared_fields = Shared_fields [Field] 		deriving (Eq,Show)

data Fields = Fields Fields_Attrs (Maybe Fields_condition)
                     (Maybe Text_before_fields) (List1 Field) (Maybe Text_after_fields)
            deriving (Eq,Show)
data Fields_Attrs = Fields_Attrs
    { fieldsLength :: String
    } deriving (Eq,Show)

newtype Fields_condition = Fields_condition String 		deriving (Eq,Show)

newtype Text_before_fields = Text_before_fields [Text_before_fields_] 		deriving (Eq,Show)

data Text_before_fields_ = Text_before_fields_Str String
                         | Text_before_fields_Para Para
                         | Text_before_fields_List List
                         | Text_before_fields_Listitem Listitem
                         | Text_before_fields_Content Content
                         | Text_before_fields_Table Table
                         | Text_before_fields_Note Note
                         | Text_before_fields_Register_link Register_link
                         | Text_before_fields_Instruction Instruction
                         | Text_before_fields_Xref Xref
                         | Text_before_fields_Arm_defined_word Arm_defined_word
                         | Text_before_fields_Sup Sup
                         | Text_before_fields_Sub Sub
                         | Text_before_fields_B B
                         | Text_before_fields_Binarynumber Binarynumber
                         | Text_before_fields_Hexnumber Hexnumber
                         | Text_before_fields_Signal Signal
                         | Text_before_fields_Syntax Syntax
                         | Text_before_fields_Value Value
                         | Text_before_fields_Function Function
                         | Text_before_fields_AEnum AEnum
                         | Text_before_fields_Enumvalue Enumvalue
                         | Text_before_fields_Url Url
                         deriving (Eq,Show)

newtype Text_after_fields = Text_after_fields [Text_after_fields_] 		deriving (Eq,Show)

data Text_after_fields_ = Text_after_fields_Str String
                        | Text_after_fields_Para Para
                        | Text_after_fields_List List
                        | Text_after_fields_Listitem Listitem
                        | Text_after_fields_Content Content
                        | Text_after_fields_Table Table
                        | Text_after_fields_Note Note
                        | Text_after_fields_Register_link Register_link
                        | Text_after_fields_Instruction Instruction
                        | Text_after_fields_Xref Xref
                        | Text_after_fields_Arm_defined_word Arm_defined_word
                        | Text_after_fields_Sup Sup
                        | Text_after_fields_Sub Sub
                        | Text_after_fields_B B
                        | Text_after_fields_Binarynumber Binarynumber
                        | Text_after_fields_Hexnumber Hexnumber
                        | Text_after_fields_Signal Signal
                        | Text_after_fields_Syntax Syntax
                        | Text_after_fields_Value Value
                        | Text_after_fields_Function Function
                        | Text_after_fields_AEnum AEnum
                        | Text_after_fields_Enumvalue Enumvalue
                        | Text_after_fields_Url Url
                        deriving (Eq,Show)

data Field = Field Field_Attrs (Maybe Field_name)
                   (Maybe Field_shortdesc) Field_msb Field_lsb (Maybe Field_array)
                   [Field_description] Field_values [Field_description]
                   (Maybe Field_resets) (Maybe Field_access) [Partial_fieldset]
                   (Maybe Arch_variants)
           deriving (Eq,Show)
data Field_Attrs = Field_Attrs
    { fieldIs_variable_length :: Field_is_variable_length
    , fieldHas_partial_fieldset :: Field_has_partial_fieldset
    , fieldIs_linked_to_partial_fieldset :: Field_is_linked_to_partial_fieldset
    , fieldIs_access_restriction_possible :: Field_is_access_restriction_possible
    , fieldId :: String
    } deriving (Eq,Show)

data Field_is_variable_length = Field_is_variable_length_True  | 
                                Field_is_variable_length_False
                              deriving (Eq,Show)

data Field_has_partial_fieldset = Field_has_partial_fieldset_True
                                   |  Field_has_partial_fieldset_False
                                deriving (Eq,Show)

data Field_is_linked_to_partial_fieldset = Field_is_linked_to_partial_fieldset_True
                                            |  Field_is_linked_to_partial_fieldset_False
                                         deriving (Eq,Show)

data Field_is_access_restriction_possible = Field_is_access_restriction_possible_True
                                             |  Field_is_access_restriction_possible_False
                                          deriving (Eq,Show)

newtype Field_name = Field_name String 		deriving (Eq,Show)

newtype Field_shortdesc = Field_shortdesc [Field_shortdesc_] 		deriving (Eq,Show)

data Field_shortdesc_ = Field_shortdesc_Str String
                      | Field_shortdesc_Para Para
                      | Field_shortdesc_List List
                      | Field_shortdesc_Listitem Listitem
                      | Field_shortdesc_Content Content
                      | Field_shortdesc_Table Table
                      | Field_shortdesc_Note Note
                      | Field_shortdesc_Register_link Register_link
                      | Field_shortdesc_Instruction Instruction
                      | Field_shortdesc_Xref Xref
                      | Field_shortdesc_Arm_defined_word Arm_defined_word
                      | Field_shortdesc_Sup Sup
                      | Field_shortdesc_Sub Sub
                      | Field_shortdesc_B B
                      | Field_shortdesc_Binarynumber Binarynumber
                      | Field_shortdesc_Hexnumber Hexnumber
                      | Field_shortdesc_Signal Signal
                      | Field_shortdesc_Syntax Syntax
                      | Field_shortdesc_Value Value
                      | Field_shortdesc_Function Function
                      | Field_shortdesc_AEnum AEnum
                      | Field_shortdesc_Enumvalue Enumvalue
                      | Field_shortdesc_Url Url
                      deriving (Eq,Show)

newtype Field_msb = Field_msb String 		deriving (Eq,Show)

newtype Field_lsb = Field_lsb String 		deriving (Eq,Show)

data Partial_fieldset = Partial_fieldset Partial_fieldset_Attrs
                                         (List1 Linked_value) Fields Reg_fieldset
                      deriving (Eq,Show)
data Partial_fieldset_Attrs = Partial_fieldset_Attrs
    { partial_fieldsetLinked_field_name :: String
    } deriving (Eq,Show)

data Linked_value = Linked_value Linked_value_Attrs [Linked_value_]
                  deriving (Eq,Show)
data Linked_value_Attrs = Linked_value_Attrs
    { linked_valueValue :: String
    } deriving (Eq,Show)

data Linked_value_ = Linked_value_Str String
                   | Linked_value_Register_link Register_link
                   | Linked_value_Instruction Instruction
                   | Linked_value_Xref Xref
                   | Linked_value_Arm_defined_word Arm_defined_word
                   | Linked_value_Sup Sup
                   | Linked_value_Sub Sub
                   | Linked_value_B B
                   | Linked_value_Binarynumber Binarynumber
                   | Linked_value_Hexnumber Hexnumber
                   | Linked_value_Signal Signal
                   | Linked_value_Syntax Syntax
                   | Linked_value_Value Value
                   | Linked_value_Function Function
                   | Linked_value_AEnum AEnum
                   | Linked_value_Enumvalue Enumvalue
                   | Linked_value_Url Url
                   deriving (Eq,Show)

data Field_array = Field_array Field_array_start Field_array_end
                               Field_array_description
                 deriving (Eq,Show)

newtype Field_array_start = Field_array_start String 		deriving (Eq,Show)

newtype Field_array_end = Field_array_end String 		deriving (Eq,Show)

newtype Field_array_description = Field_array_description String 		deriving (Eq,Show)

data Field_description = Field_description Field_description_Attrs
                                           [Field_description_]
                       deriving (Eq,Show)
data Field_description_Attrs = Field_description_Attrs
    { field_descriptionOrder :: Field_description_order
    } deriving (Eq,Show)

data Field_description_ = Field_description_Str String
                        | Field_description_Para Para
                        | Field_description_List List
                        | Field_description_Listitem Listitem
                        | Field_description_Content Content
                        | Field_description_Table Table
                        | Field_description_Note Note
                        | Field_description_Register_link Register_link
                        | Field_description_Instruction Instruction
                        | Field_description_Xref Xref
                        | Field_description_Arm_defined_word Arm_defined_word
                        | Field_description_Sup Sup
                        | Field_description_Sub Sub
                        | Field_description_B B
                        | Field_description_Binarynumber Binarynumber
                        | Field_description_Hexnumber Hexnumber
                        | Field_description_Signal Signal
                        | Field_description_Syntax Syntax
                        | Field_description_Value Value
                        | Field_description_Function Function
                        | Field_description_AEnum AEnum
                        | Field_description_Enumvalue Enumvalue
                        | Field_description_Url Url
                        deriving (Eq,Show)

data Field_description_order = Field_description_order_before  | 
                               Field_description_order_value  |  Field_description_order_after
                             deriving (Eq,Show)

data Field_values = Field_values (Maybe Field_value_name)
                                 [Field_value_instance]
                  deriving (Eq,Show)

newtype Field_value_name = Field_value_name String 		deriving (Eq,Show)

data Field_value_instance = Field_value_instance Field_value
                                                 (List1 Field_value_description)
                                                 (Maybe Field_value_links_to)
                                                 (Maybe Field_value_applies_to)
                          deriving (Eq,Show)

newtype Field_value = Field_value String 		deriving (Eq,Show)

newtype Field_value_description = Field_value_description [Field_value_description_] 		deriving (Eq,Show)

data Field_value_description_ = Field_value_description_Str String
                              | Field_value_description_Para Para
                              | Field_value_description_List List
                              | Field_value_description_Listitem Listitem
                              | Field_value_description_Content Content
                              | Field_value_description_Table Table
                              | Field_value_description_Note Note
                              | Field_value_description_Register_link Register_link
                              | Field_value_description_Instruction Instruction
                              | Field_value_description_Xref Xref
                              | Field_value_description_Arm_defined_word Arm_defined_word
                              | Field_value_description_Sup Sup
                              | Field_value_description_Sub Sub
                              | Field_value_description_B B
                              | Field_value_description_Binarynumber Binarynumber
                              | Field_value_description_Hexnumber Hexnumber
                              | Field_value_description_Signal Signal
                              | Field_value_description_Syntax Syntax
                              | Field_value_description_Value Value
                              | Field_value_description_Function Function
                              | Field_value_description_AEnum AEnum
                              | Field_value_description_Enumvalue Enumvalue
                              | Field_value_description_Url Url
                              deriving (Eq,Show)

data Field_value_links_to = Field_value_links_to Field_value_links_to_Attrs
                                                 String
                          deriving (Eq,Show)
data Field_value_links_to_Attrs = Field_value_links_to_Attrs
    { field_value_links_toLinked_field_name :: String
    , field_value_links_toLinked_field_condition :: String
    } deriving (Eq,Show)

data Field_value_applies_to = Field_value_applies_to Field_value_applies_to_Attrs
                                                     [Register_link]
                            deriving (Eq,Show)
data Field_value_applies_to_Attrs = Field_value_applies_to_Attrs
    { field_value_applies_toApplies_to_all :: Field_value_applies_to_applies_to_all
    } deriving (Eq,Show)

data Field_value_applies_to_applies_to_all = Field_value_applies_to_applies_to_all_True
                                              |  Field_value_applies_to_applies_to_all_False
                                           deriving (Eq,Show)

newtype Field_resets = Field_resets [Field_reset] 		deriving (Eq,Show)

data Field_reset = Field_reset Field_reset_Attrs
                               (List1 (OneOf4 Field_reset_number Field_reset_other_field Field_reset_standard_text Field_reset_special_text))
                 deriving (Eq,Show)
data Field_reset_Attrs = Field_reset_Attrs
    { field_resetReset_type :: (Maybe String)
    } deriving (Eq,Show)

newtype Field_reset_number = Field_reset_number String 		deriving (Eq,Show)

data Field_reset_other_field = Field_reset_other_field Field_reset_other_field_regname
                                                       Field_reset_other_field_fieldname
                             deriving (Eq,Show)

data Field_reset_other_field_regname = Field_reset_other_field_regname Field_reset_other_field_regname_Attrs
                                                                       String
                                     deriving (Eq,Show)
data Field_reset_other_field_regname_Attrs = Field_reset_other_field_regname_Attrs
    { field_reset_other_field_regnameState :: Field_reset_other_field_regname_state
    } deriving (Eq,Show)

data Field_reset_other_field_regname_state = Field_reset_other_field_regname_state_AArch32
                                              |  Field_reset_other_field_regname_state_AArch64  | 
                                             Field_reset_other_field_regname_state_ext
                                           deriving (Eq,Show)

newtype Field_reset_other_field_fieldname = Field_reset_other_field_fieldname String 		deriving (Eq,Show)

newtype Field_reset_standard_text = Field_reset_standard_text String 		deriving (Eq,Show)

newtype Field_reset_special_text = Field_reset_special_text [Field_reset_special_text_] 		deriving (Eq,Show)

data Field_reset_special_text_ = Field_reset_special_text_Str String
                               | Field_reset_special_text_Para Para
                               | Field_reset_special_text_List List
                               | Field_reset_special_text_Listitem Listitem
                               | Field_reset_special_text_Content Content
                               | Field_reset_special_text_Table Table
                               | Field_reset_special_text_Note Note
                               | Field_reset_special_text_Register_link Register_link
                               | Field_reset_special_text_Instruction Instruction
                               | Field_reset_special_text_Xref Xref
                               | Field_reset_special_text_Arm_defined_word Arm_defined_word
                               | Field_reset_special_text_Sup Sup
                               | Field_reset_special_text_Sub Sub
                               | Field_reset_special_text_B B
                               | Field_reset_special_text_Binarynumber Binarynumber
                               | Field_reset_special_text_Hexnumber Hexnumber
                               | Field_reset_special_text_Signal Signal
                               | Field_reset_special_text_Syntax Syntax
                               | Field_reset_special_text_Value Value
                               | Field_reset_special_text_Function Function
                               | Field_reset_special_text_AEnum AEnum
                               | Field_reset_special_text_Enumvalue Enumvalue
                               | Field_reset_special_text_Url Url
                               deriving (Eq,Show)

newtype Field_access = Field_access (List1 Field_access_state) 		deriving (Eq,Show)

data Field_access_state = Field_access_state Field_access_level
                                             Field_access_type
                        deriving (Eq,Show)

newtype Field_access_level = Field_access_level String 		deriving (Eq,Show)

newtype Field_access_type = Field_access_type String 		deriving (Eq,Show)

data Reg_fieldset = Reg_fieldset Reg_fieldset_Attrs
                                 (Maybe Arch_variants) (Maybe Fields_condition) (List1 Fieldat)
                  deriving (Eq,Show)
data Reg_fieldset_Attrs = Reg_fieldset_Attrs
    { reg_fieldsetLength :: String
    } deriving (Eq,Show)

data Fieldat = Fieldat
    { fieldatId :: (Maybe String)
    , fieldatMsb :: String
    , fieldatLsb :: String
    } deriving (Eq,Show)

newtype Timestamp = Timestamp String 		deriving (Eq,Show)

newtype Reg_variables = Reg_variables (List1 Reg_variable) 		deriving (Eq,Show)

data Reg_variable = Reg_variable Reg_variable_Attrs
                                 [Reg_variable_val]
                  deriving (Eq,Show)
data Reg_variable_Attrs = Reg_variable_Attrs
    { reg_variableVariable :: String
    , reg_variablePrefix :: (Maybe String)
    , reg_variableMin :: (Maybe String)
    , reg_variableMax :: (Maybe String)
    } deriving (Eq,Show)

newtype Reg_variable_val = Reg_variable_val String 		deriving (Eq,Show)

data Access_mechanisms = Access_mechanisms (List1 Access_mechanism)
                                           (Maybe Access_mechanism_text) (Maybe Access_permissions)
                                           [Traps_and_enables]
                       deriving (Eq,Show)

newtype Access_mechanism = Access_mechanism Access_instructions 		deriving (Eq,Show)

data Access_instructions = Access_instructions (List1 Defvar)
                                               (List1 Access_instruction)
                         deriving (Eq,Show)

data Defvar = Defvar Defvar_Attrs (List1 Def)
            deriving (Eq,Show)
data Defvar_Attrs = Defvar_Attrs
    { defvarAccessibility_id :: (Maybe String)
    } deriving (Eq,Show)

data Def = Def Def_Attrs [Enc]
         deriving (Eq,Show)
data Def_Attrs = Def_Attrs
    { defAsmname :: String
    , defAsmvalue :: (Maybe String)
    , defN :: (Maybe String)
    , defV :: (Maybe String)
    } deriving (Eq,Show)

data Enc = Enc Enc_Attrs [Encbits]
         deriving (Eq,Show)
data Enc_Attrs = Enc_Attrs
    { encN :: String
    , encV :: (Maybe String)
    , encWidth :: (Maybe String)
    , encVarname :: (Maybe String)
    } deriving (Eq,Show)

data Encbits = Encbits Encbits_Attrs [Encvar]
             deriving (Eq,Show)
data Encbits_Attrs = Encbits_Attrs
    { encbitsV :: (Maybe String)
    , encbitsMsb :: String
    , encbitsLsb :: String
    } deriving (Eq,Show)

data Encvar = Encvar
    { encvarName :: String
    , encvarMsb :: String
    , encvarLsb :: String
    } deriving (Eq,Show)

data Access_instruction = Access_instruction
    { access_instructionId :: String
    } deriving (Eq,Show)

newtype Access_mechanism_text = Access_mechanism_text [Access_mechanism_text_] 		deriving (Eq,Show)

data Access_mechanism_text_ = Access_mechanism_text_Str String
                            | Access_mechanism_text_Para Para
                            | Access_mechanism_text_List List
                            | Access_mechanism_text_Listitem Listitem
                            | Access_mechanism_text_Content Content
                            | Access_mechanism_text_Table Table
                            | Access_mechanism_text_Note Note
                            | Access_mechanism_text_Register_link Register_link
                            | Access_mechanism_text_Instruction Instruction
                            | Access_mechanism_text_Xref Xref
                            | Access_mechanism_text_Arm_defined_word Arm_defined_word
                            | Access_mechanism_text_Sup Sup
                            | Access_mechanism_text_Sub Sub
                            | Access_mechanism_text_B B
                            | Access_mechanism_text_Binarynumber Binarynumber
                            | Access_mechanism_text_Hexnumber Hexnumber
                            | Access_mechanism_text_Signal Signal
                            | Access_mechanism_text_Syntax Syntax
                            | Access_mechanism_text_Value Value
                            | Access_mechanism_text_Function Function
                            | Access_mechanism_text_AEnum AEnum
                            | Access_mechanism_text_Enumvalue Enumvalue
                            | Access_mechanism_text_Url Url
                            deriving (Eq,Show)

data Access_permissions = Access_permissions (Maybe Access_controls)
                                             [Access_permission] [Access_permission_text]
                        deriving (Eq,Show)

newtype Access_controls = Access_controls [Control] 		deriving (Eq,Show)

data Control = Control
    { controlField :: String
    , controlAarch64_register :: (Maybe String)
    , controlAarch32_register :: (Maybe String)
    } deriving (Eq,Show)

data Access_permission = Access_permission Access_permission_Attrs
                                           (List1 Access_set)
                       deriving (Eq,Show)
data Access_permission_Attrs = Access_permission_Attrs
    { access_permissionInstance :: String
    } deriving (Eq,Show)

data Access_set = Access_set Access_set_Attrs Accessibility
                deriving (Eq,Show)
data Access_set_Attrs = Access_set_Attrs
    { access_setAccessibility_id :: String
    } deriving (Eq,Show)

newtype Accessibility = Accessibility (List1 Access) 		deriving (Eq,Show)

data Access = Access Access_Attrs [Access_conditions]
                     (Maybe Register_link)
            deriving (Eq,Show)
data Access_Attrs = Access_Attrs
    { accessEl :: String
    , accessType :: Access_type
    } deriving (Eq,Show)

data Access_type = Access_type_undef  |  Access_type_RO  | 
                   Access_type_WO  |  Access_type_RW  |  Access_type_inaccessible  | 
                   Access_type_impdef  |  Access_type_register
                 deriving (Eq,Show)

data Access_conditions = Access_conditions [Condition]
                                           [Exception_level_config]
                       deriving (Eq,Show)

data Condition = Condition
    { conditionField :: String
    , conditionOp :: (Maybe String)
    , conditionValue :: String
    } deriving (Eq,Show)

data Exception_level_config = Exception_level_config
    { exception_level_configEl :: Exception_level_config_el
    , exception_level_configState :: (Maybe Exception_level_config_state)
    , exception_level_configHighest_el :: (Maybe Exception_level_config_highest_el)
    } deriving (Eq,Show)

data Exception_level_config_el = Exception_level_config_el_0  | 
                                 Exception_level_config_el_1  |  Exception_level_config_el_2  | 
                                 Exception_level_config_el_3
                               deriving (Eq,Show)

data Exception_level_config_state = Exception_level_config_state_unimplemented
                                     |  Exception_level_config_state_implemented  | 
                                    Exception_level_config_state_AArch32  | 
                                    Exception_level_config_state_AArch64
                                  deriving (Eq,Show)

data Exception_level_config_highest_el = Exception_level_config_highest_el_True
                                          |  Exception_level_config_highest_el_False
                                       deriving (Eq,Show)

newtype Access_permission_text = Access_permission_text [Access_permission_text_] 		deriving (Eq,Show)

data Access_permission_text_ = Access_permission_text_Str String
                             | Access_permission_text_Para Para
                             | Access_permission_text_List List
                             | Access_permission_text_Listitem Listitem
                             | Access_permission_text_Content Content
                             | Access_permission_text_Table Table
                             | Access_permission_text_Note Note
                             | Access_permission_text_Register_link Register_link
                             | Access_permission_text_Instruction Instruction
                             | Access_permission_text_Xref Xref
                             | Access_permission_text_Arm_defined_word Arm_defined_word
                             | Access_permission_text_Sup Sup
                             | Access_permission_text_Sub Sub
                             | Access_permission_text_B B
                             | Access_permission_text_Binarynumber Binarynumber
                             | Access_permission_text_Hexnumber Hexnumber
                             | Access_permission_text_Signal Signal
                             | Access_permission_text_Syntax Syntax
                             | Access_permission_text_Value Value
                             | Access_permission_text_Function Function
                             | Access_permission_text_AEnum AEnum
                             | Access_permission_text_Enumvalue Enumvalue
                             | Access_permission_text_Url Url
                             deriving (Eq,Show)

data Traps_and_enables = Traps_and_enables (Maybe Trap_conditions)
                                           [Trap]
                       deriving (Eq,Show)

newtype Trap_conditions = Trap_conditions [When] 		deriving (Eq,Show)

newtype When = When [When_] 		deriving (Eq,Show)

data When_ = When_Condition Condition
           | When_Exception_level_config Exception_level_config
           deriving (Eq,Show)

data Trap = Trap Trap_data Trap_text
          deriving (Eq,Show)

newtype Trap_text = Trap_text [Para] 		deriving (Eq,Show)

data Trap_data = Trap_data 		deriving (Eq,Show)

newtype Arch_variants = Arch_variants [Arch_variant] 		deriving (Eq,Show)

data Arch_variant = Arch_variant
    { arch_variantName :: String
    } deriving (Eq,Show)


-- INSTANCES --


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
    toContents (Para_Register_link a) = toContents a
    toContents (Para_Instruction a) = toContents a
    toContents (Para_Xref a) = toContents a
    toContents (Para_Arm_defined_word a) = toContents a
    toContents (Para_Sup a) = toContents a
    toContents (Para_Sub a) = toContents a
    toContents (Para_B a) = toContents a
    toContents (Para_Binarynumber a) = toContents a
    toContents (Para_Hexnumber a) = toContents a
    toContents (Para_Signal a) = toContents a
    toContents (Para_Syntax a) = toContents a
    toContents (Para_Value a) = toContents a
    toContents (Para_Function a) = toContents a
    toContents (Para_AEnum a) = toContents a
    toContents (Para_Enumvalue a) = toContents a
    toContents (Para_Url a) = toContents a
    parseContents = oneOf
        [ return (Para_Str) `apply` text
        , return (Para_Register_link) `apply` parseContents
        , return (Para_Instruction) `apply` parseContents
        , return (Para_Xref) `apply` parseContents
        , return (Para_Arm_defined_word) `apply` parseContents
        , return (Para_Sup) `apply` parseContents
        , return (Para_Sub) `apply` parseContents
        , return (Para_B) `apply` parseContents
        , return (Para_Binarynumber) `apply` parseContents
        , return (Para_Hexnumber) `apply` parseContents
        , return (Para_Signal) `apply` parseContents
        , return (Para_Syntax) `apply` parseContents
        , return (Para_Value) `apply` parseContents
        , return (Para_Function) `apply` parseContents
        , return (Para_AEnum) `apply` parseContents
        , return (Para_Enumvalue) `apply` parseContents
        , return (Para_Url) `apply` parseContents
        ] `adjustErr` ("in <para>, "++)

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
    toContents (Term_Register_link a) = toContents a
    toContents (Term_Instruction a) = toContents a
    toContents (Term_Xref a) = toContents a
    toContents (Term_Arm_defined_word a) = toContents a
    toContents (Term_Sup a) = toContents a
    toContents (Term_Sub a) = toContents a
    toContents (Term_B a) = toContents a
    toContents (Term_Binarynumber a) = toContents a
    toContents (Term_Hexnumber a) = toContents a
    toContents (Term_Signal a) = toContents a
    toContents (Term_Syntax a) = toContents a
    toContents (Term_Value a) = toContents a
    toContents (Term_Function a) = toContents a
    toContents (Term_AEnum a) = toContents a
    toContents (Term_Enumvalue a) = toContents a
    toContents (Term_Url a) = toContents a
    parseContents = oneOf
        [ return (Term_Str) `apply` text
        , return (Term_Register_link) `apply` parseContents
        , return (Term_Instruction) `apply` parseContents
        , return (Term_Xref) `apply` parseContents
        , return (Term_Arm_defined_word) `apply` parseContents
        , return (Term_Sup) `apply` parseContents
        , return (Term_Sub) `apply` parseContents
        , return (Term_B) `apply` parseContents
        , return (Term_Binarynumber) `apply` parseContents
        , return (Term_Hexnumber) `apply` parseContents
        , return (Term_Signal) `apply` parseContents
        , return (Term_Syntax) `apply` parseContents
        , return (Term_Value) `apply` parseContents
        , return (Term_Function) `apply` parseContents
        , return (Term_AEnum) `apply` parseContents
        , return (Term_Enumvalue) `apply` parseContents
        , return (Term_Url) `apply` parseContents
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
    toContents (Param_Register_link a) = toContents a
    toContents (Param_Instruction a) = toContents a
    toContents (Param_Xref a) = toContents a
    toContents (Param_Arm_defined_word a) = toContents a
    toContents (Param_Sup a) = toContents a
    toContents (Param_Sub a) = toContents a
    toContents (Param_B a) = toContents a
    toContents (Param_Binarynumber a) = toContents a
    toContents (Param_Hexnumber a) = toContents a
    toContents (Param_Signal a) = toContents a
    toContents (Param_Syntax a) = toContents a
    toContents (Param_Value a) = toContents a
    toContents (Param_Function a) = toContents a
    toContents (Param_AEnum a) = toContents a
    toContents (Param_Enumvalue a) = toContents a
    toContents (Param_Url a) = toContents a
    parseContents = oneOf
        [ return (Param_Str) `apply` text
        , return (Param_Register_link) `apply` parseContents
        , return (Param_Instruction) `apply` parseContents
        , return (Param_Xref) `apply` parseContents
        , return (Param_Arm_defined_word) `apply` parseContents
        , return (Param_Sup) `apply` parseContents
        , return (Param_Sub) `apply` parseContents
        , return (Param_B) `apply` parseContents
        , return (Param_Binarynumber) `apply` parseContents
        , return (Param_Hexnumber) `apply` parseContents
        , return (Param_Signal) `apply` parseContents
        , return (Param_Syntax) `apply` parseContents
        , return (Param_Value) `apply` parseContents
        , return (Param_Function) `apply` parseContents
        , return (Param_AEnum) `apply` parseContents
        , return (Param_Enumvalue) `apply` parseContents
        , return (Param_Url) `apply` parseContents
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
    toContents (Content_Register_link a) = toContents a
    toContents (Content_Instruction a) = toContents a
    toContents (Content_Xref a) = toContents a
    toContents (Content_Arm_defined_word a) = toContents a
    toContents (Content_Sup a) = toContents a
    toContents (Content_Sub a) = toContents a
    toContents (Content_B a) = toContents a
    toContents (Content_Binarynumber a) = toContents a
    toContents (Content_Hexnumber a) = toContents a
    toContents (Content_Signal a) = toContents a
    toContents (Content_Syntax a) = toContents a
    toContents (Content_Value a) = toContents a
    toContents (Content_Function a) = toContents a
    toContents (Content_AEnum a) = toContents a
    toContents (Content_Enumvalue a) = toContents a
    toContents (Content_Url a) = toContents a
    parseContents = oneOf
        [ return (Content_Str) `apply` text
        , return (Content_List) `apply` parseContents
        , return (Content_Para) `apply` parseContents
        , return (Content_Register_link) `apply` parseContents
        , return (Content_Instruction) `apply` parseContents
        , return (Content_Xref) `apply` parseContents
        , return (Content_Arm_defined_word) `apply` parseContents
        , return (Content_Sup) `apply` parseContents
        , return (Content_Sub) `apply` parseContents
        , return (Content_B) `apply` parseContents
        , return (Content_Binarynumber) `apply` parseContents
        , return (Content_Hexnumber) `apply` parseContents
        , return (Content_Signal) `apply` parseContents
        , return (Content_Syntax) `apply` parseContents
        , return (Content_Value) `apply` parseContents
        , return (Content_Function) `apply` parseContents
        , return (Content_AEnum) `apply` parseContents
        , return (Content_Enumvalue) `apply` parseContents
        , return (Content_Url) `apply` parseContents
        ] `adjustErr` ("in <content>, "++)

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

instance HTypeable Hexnumber where
    toHType x = Defined "hexnumber" [] []
instance XmlContent Hexnumber where
    toContents (Hexnumber a) =
        [CElem (Elem (N "hexnumber") [] (toText a)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["hexnumber"]
        ; interior e $ return (Hexnumber) `apply` (text `onFail` return "")
        } `adjustErr` ("in <hexnumber>, "++)

instance HTypeable Binarynumber where
    toHType x = Defined "binarynumber" [] []
instance XmlContent Binarynumber where
    toContents (Binarynumber a) =
        [CElem (Elem (N "binarynumber") [] (toText a)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["binarynumber"]
        ; interior e $ return (Binarynumber)
                       `apply` (text `onFail` return "")
        } `adjustErr` ("in <binarynumber>, "++)

instance HTypeable Sub where
    toHType x = Defined "sub" [] []
instance XmlContent Sub where
    toContents (Sub a) =
        [CElem (Elem (N "sub") [] (toText a)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["sub"]
        ; interior e $ return (Sub) `apply` (text `onFail` return "")
        } `adjustErr` ("in <sub>, "++)

instance HTypeable Sup where
    toHType x = Defined "sup" [] []
instance XmlContent Sup where
    toContents (Sup a) =
        [CElem (Elem (N "sup") [] (toText a)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["sup"]
        ; interior e $ return (Sup) `apply` (text `onFail` return "")
        } `adjustErr` ("in <sup>, "++)

instance HTypeable B where
    toHType x = Defined "b" [] []
instance XmlContent B where
    toContents (B a) =
        [CElem (Elem (N "b") [] (toText a)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["b"]
        ; interior e $ return (B) `apply` (text `onFail` return "")
        } `adjustErr` ("in <b>, "++)

instance HTypeable Signal where
    toHType x = Defined "signal" [] []
instance XmlContent Signal where
    toContents (Signal a) =
        [CElem (Elem (N "signal") [] (toText a)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["signal"]
        ; interior e $ return (Signal) `apply` (text `onFail` return "")
        } `adjustErr` ("in <signal>, "++)

instance HTypeable Syntax where
    toHType x = Defined "syntax" [] []
instance XmlContent Syntax where
    toContents (Syntax a) =
        [CElem (Elem (N "syntax") [] (concatMap toContents a)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["syntax"]
        ; interior e $ return (Syntax) `apply` many parseContents
        } `adjustErr` ("in <syntax>, "++)

instance HTypeable Value where
    toHType x = Defined "value" [] []
instance XmlContent Value where
    toContents (Value a) =
        [CElem (Elem (N "value") [] (concatMap toContents a)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["value"]
        ; interior e $ return (Value) `apply` many parseContents
        } `adjustErr` ("in <value>, "++)

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

instance HTypeable Arm_defined_word where
    toHType x = Defined "arm-defined-word" [] []
instance XmlContent Arm_defined_word where
    toContents (Arm_defined_word a) =
        [CElem (Elem (N "arm-defined-word") [] (toText a)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["arm-defined-word"]
        ; interior e $ return (Arm_defined_word)
                       `apply` (text `onFail` return "")
        } `adjustErr` ("in <arm-defined-word>, "++)

instance HTypeable Register_link where
    toHType x = Defined "register_link" [] []
instance XmlContent Register_link where
    toContents (Register_link as a) =
        [CElem (Elem (N "register_link") (toAttrs as) (toText a)) ()]
    parseContents = do
        { e@(Elem _ as _) <- element ["register_link"]
        ; interior e $ return (Register_link (fromAttrs as))
                       `apply` (text `onFail` return "")
        } `adjustErr` ("in <register_link>, "++)
instance XmlAttributes Register_link_Attrs where
    fromAttrs as =
        Register_link_Attrs
          { register_linkState = possibleA fromAttrToTyp "state" as
          , register_linkId = possibleA fromAttrToStr "id" as
          }
    toAttrs v = catMaybes 
        [ maybeToAttr toAttrFrTyp "state" (register_linkState v)
        , maybeToAttr toAttrFrStr "id" (register_linkId v)
        ]

instance XmlAttrType Register_link_state where
    fromAttrToTyp n (N n',v)
        | n==n'     = translate (attr2str v)
        | otherwise = Nothing
      where translate "AArch64" = Just Register_link_state_AArch64
            translate "AArch32" = Just Register_link_state_AArch32
            translate "ext" = Just Register_link_state_ext
            translate _ = Nothing
    toAttrFrTyp n Register_link_state_AArch64 = Just (N n, str2attr "AArch64")
    toAttrFrTyp n Register_link_state_AArch32 = Just (N n, str2attr "AArch32")
    toAttrFrTyp n Register_link_state_ext = Just (N n, str2attr "ext")

instance HTypeable Instruction where
    toHType x = Defined "instruction" [] []
instance XmlContent Instruction where
    toContents (Instruction a) =
        [CElem (Elem (N "instruction") [] (concatMap toContents a)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["instruction"]
        ; interior e $ return (Instruction) `apply` many parseContents
        } `adjustErr` ("in <instruction>, "++)

instance HTypeable Xref where
    toHType x = Defined "xref" [] []
instance XmlContent Xref where
    toContents as =
        [CElem (Elem (N "xref") (toAttrs as) []) ()]
    parseContents = do
        { (Elem _ as []) <- element ["xref"]
        ; return (fromAttrs as)
        } `adjustErr` ("in <xref>, "++)
instance XmlAttributes Xref where
    fromAttrs as =
        Xref
          { xrefLinkend = definiteA fromAttrToStr "xref" "linkend" as
          , xrefFilename = possibleA fromAttrToStr "filename" as
          , xrefBrowsertext = definiteA fromAttrToStr "xref" "browsertext" as
          }
    toAttrs v = catMaybes 
        [ toAttrFrStr "linkend" (xrefLinkend v)
        , maybeToAttr toAttrFrStr "filename" (xrefFilename v)
        , toAttrFrStr "browsertext" (xrefBrowsertext v)
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

instance HTypeable Entry where
    toHType x = Defined "entry" [] []
instance XmlContent Entry where
    toContents (Entry a) =
        [CElem (Elem (N "entry") [] (concatMap toContents a)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["entry"]
        ; interior e $ return (Entry) `apply` many parseContents
        } `adjustErr` ("in <entry>, "++)

instance HTypeable Entry_ where
    toHType x = Defined "entry" [] []
instance XmlContent Entry_ where
    toContents (Entry_Str a) = toText a
    toContents (Entry_Register_link a) = toContents a
    toContents (Entry_Instruction a) = toContents a
    toContents (Entry_Xref a) = toContents a
    toContents (Entry_Arm_defined_word a) = toContents a
    toContents (Entry_Sup a) = toContents a
    toContents (Entry_Sub a) = toContents a
    toContents (Entry_B a) = toContents a
    toContents (Entry_Binarynumber a) = toContents a
    toContents (Entry_Hexnumber a) = toContents a
    toContents (Entry_Signal a) = toContents a
    toContents (Entry_Syntax a) = toContents a
    toContents (Entry_Value a) = toContents a
    toContents (Entry_Function a) = toContents a
    toContents (Entry_AEnum a) = toContents a
    toContents (Entry_Enumvalue a) = toContents a
    toContents (Entry_Url a) = toContents a
    parseContents = oneOf
        [ return (Entry_Str) `apply` text
        , return (Entry_Register_link) `apply` parseContents
        , return (Entry_Instruction) `apply` parseContents
        , return (Entry_Xref) `apply` parseContents
        , return (Entry_Arm_defined_word) `apply` parseContents
        , return (Entry_Sup) `apply` parseContents
        , return (Entry_Sub) `apply` parseContents
        , return (Entry_B) `apply` parseContents
        , return (Entry_Binarynumber) `apply` parseContents
        , return (Entry_Hexnumber) `apply` parseContents
        , return (Entry_Signal) `apply` parseContents
        , return (Entry_Syntax) `apply` parseContents
        , return (Entry_Value) `apply` parseContents
        , return (Entry_Function) `apply` parseContents
        , return (Entry_AEnum) `apply` parseContents
        , return (Entry_Enumvalue) `apply` parseContents
        , return (Entry_Url) `apply` parseContents
        ] `adjustErr` ("in <entry>, "++)

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
    toContents (Table a) =
        [CElem (Elem (N "table") [] (toContents a)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["table"]
        ; interior e $ return (Table) `apply` parseContents
        } `adjustErr` ("in <table>, "++)

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

instance HTypeable Register_page where
    toHType x = Defined "register_page" [] []
instance XmlContent Register_page where
    toContents (Register_page a b) =
        [CElem (Elem (N "register_page") [] (toContents a ++
                                             toContents b)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["register_page"]
        ; interior e $ return (Register_page) `apply` parseContents
                       `apply` parseContents
        } `adjustErr` ("in <register_page>, "++)

instance HTypeable Registers where
    toHType x = Defined "registers" [] []
instance XmlContent Registers where
    toContents (Registers a) =
        [CElem (Elem (N "registers") [] (toContents a)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["registers"]
        ; interior e $ return (Registers) `apply` parseContents
        } `adjustErr` ("in <registers>, "++)

instance HTypeable Register where
    toHType x = Defined "register" [] []
instance XmlContent Register where
    toContents (Register as a b c d e f g h i j k l m n o p q r s t
                            u) =
        [CElem (Elem (N "register") (toAttrs as) (toContents a ++
                                                  toContents b ++ maybe [] toContents c ++
                                                  maybe [] toContents d ++ maybe [] toContents e ++
                                                  concatMap toContents f ++ maybe [] toContents g ++
                                                  concatMap toContents h ++ maybe [] toContents i ++
                                                  toContents j ++ toContents k ++ toContents l ++
                                                  maybe [] toContents m ++ toContents n ++
                                                  maybe [] toContents o ++ maybe [] toContents p ++
                                                  toContents q ++ concatMap toContents r ++
                                                  maybe [] toContents s ++ maybe [] toContents t ++
                                                  maybe [] toContents u)) ()]
    parseContents = do
        { e@(Elem _ as _) <- element ["register"]
        ; interior e $ return (Register (fromAttrs as))
                       `apply` parseContents `apply` parseContents
                       `apply` optional parseContents `apply` optional parseContents
                       `apply` optional parseContents `apply` many parseContents
                       `apply` optional parseContents `apply` many parseContents
                       `apply` optional parseContents `apply` parseContents
                       `apply` parseContents `apply` parseContents
                       `apply` optional parseContents `apply` parseContents
                       `apply` optional parseContents `apply` optional parseContents
                       `apply` parseContents `apply` many parseContents
                       `apply` optional parseContents `apply` optional parseContents
                       `apply` optional parseContents
        } `adjustErr` ("in <register>, "++)
instance XmlAttributes Register_Attrs where
    fromAttrs as =
        Register_Attrs
          { registerIs_register = definiteA fromAttrToTyp "register" "is_register" as
          , registerIs_internal = definiteA fromAttrToTyp "register" "is_internal" as
          , registerExecution_state = possibleA fromAttrToTyp "execution_state" as
          , registerIs_banked = definiteA fromAttrToTyp "register" "is_banked" as
          , registerIs_optional = definiteA fromAttrToTyp "register" "is_optional" as
          , registerIs_stub_entry = definiteA fromAttrToTyp "register" "is_stub_entry" as
          }
    toAttrs v = catMaybes 
        [ toAttrFrTyp "is_register" (registerIs_register v)
        , toAttrFrTyp "is_internal" (registerIs_internal v)
        , maybeToAttr toAttrFrTyp "execution_state" (registerExecution_state v)
        , toAttrFrTyp "is_banked" (registerIs_banked v)
        , toAttrFrTyp "is_optional" (registerIs_optional v)
        , toAttrFrTyp "is_stub_entry" (registerIs_stub_entry v)
        ]

instance XmlAttrType Register_is_register where
    fromAttrToTyp n (N n',v)
        | n==n'     = translate (attr2str v)
        | otherwise = Nothing
      where translate "True" = Just Register_is_register_True
            translate "False" = Just Register_is_register_False
            translate _ = Nothing
    toAttrFrTyp n Register_is_register_True = Just (N n, str2attr "True")
    toAttrFrTyp n Register_is_register_False = Just (N n, str2attr "False")

instance XmlAttrType Register_is_internal where
    fromAttrToTyp n (N n',v)
        | n==n'     = translate (attr2str v)
        | otherwise = Nothing
      where translate "True" = Just Register_is_internal_True
            translate "False" = Just Register_is_internal_False
            translate _ = Nothing
    toAttrFrTyp n Register_is_internal_True = Just (N n, str2attr "True")
    toAttrFrTyp n Register_is_internal_False = Just (N n, str2attr "False")

instance XmlAttrType Register_execution_state where
    fromAttrToTyp n (N n',v)
        | n==n'     = translate (attr2str v)
        | otherwise = Nothing
      where translate "AArch32" = Just Register_execution_state_AArch32
            translate "AArch64" = Just Register_execution_state_AArch64
            translate _ = Nothing
    toAttrFrTyp n Register_execution_state_AArch32 = Just (N n, str2attr "AArch32")
    toAttrFrTyp n Register_execution_state_AArch64 = Just (N n, str2attr "AArch64")

instance XmlAttrType Register_is_banked where
    fromAttrToTyp n (N n',v)
        | n==n'     = translate (attr2str v)
        | otherwise = Nothing
      where translate "True" = Just Register_is_banked_True
            translate "False" = Just Register_is_banked_False
            translate _ = Nothing
    toAttrFrTyp n Register_is_banked_True = Just (N n, str2attr "True")
    toAttrFrTyp n Register_is_banked_False = Just (N n, str2attr "False")

instance XmlAttrType Register_is_optional where
    fromAttrToTyp n (N n',v)
        | n==n'     = translate (attr2str v)
        | otherwise = Nothing
      where translate "True" = Just Register_is_optional_True
            translate "False" = Just Register_is_optional_False
            translate _ = Nothing
    toAttrFrTyp n Register_is_optional_True = Just (N n, str2attr "True")
    toAttrFrTyp n Register_is_optional_False = Just (N n, str2attr "False")

instance XmlAttrType Register_is_stub_entry where
    fromAttrToTyp n (N n',v)
        | n==n'     = translate (attr2str v)
        | otherwise = Nothing
      where translate "True" = Just Register_is_stub_entry_True
            translate "False" = Just Register_is_stub_entry_False
            translate _ = Nothing
    toAttrFrTyp n Register_is_stub_entry_True = Just (N n, str2attr "True")
    toAttrFrTyp n Register_is_stub_entry_False = Just (N n, str2attr "False")

instance HTypeable Reg_short_name where
    toHType x = Defined "reg_short_name" [] []
instance XmlContent Reg_short_name where
    toContents (Reg_short_name a) =
        [CElem (Elem (N "reg_short_name") [] (toText a)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["reg_short_name"]
        ; interior e $ return (Reg_short_name)
                       `apply` (text `onFail` return "")
        } `adjustErr` ("in <reg_short_name>, "++)

instance HTypeable Reg_long_name where
    toHType x = Defined "reg_long_name" [] []
instance XmlContent Reg_long_name where
    toContents (Reg_long_name a) =
        [CElem (Elem (N "reg_long_name") [] (toText a)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["reg_long_name"]
        ; interior e $ return (Reg_long_name)
                       `apply` (text `onFail` return "")
        } `adjustErr` ("in <reg_long_name>, "++)

instance HTypeable Reg_reset_value where
    toHType x = Defined "reg_reset_value" [] []
instance XmlContent Reg_reset_value where
    toContents (Reg_reset_value as a b) =
        [CElem (Elem (N "reg_reset_value") (toAttrs as) (concatMap toContents a
                                                         ++ maybe [] toContents b)) ()]
    parseContents = do
        { e@(Elem _ as _) <- element ["reg_reset_value"]
        ; interior e $ return (Reg_reset_value (fromAttrs as))
                       `apply` many parseContents `apply` optional parseContents
        } `adjustErr` ("in <reg_reset_value>, "++)
instance XmlAttributes Reg_reset_value_Attrs where
    fromAttrs as =
        Reg_reset_value_Attrs
          { reg_reset_valueType = possibleA fromAttrToStr "type" as
          }
    toAttrs v = catMaybes 
        [ maybeToAttr toAttrFrStr "type" (reg_reset_valueType v)
        ]

instance HTypeable Reg_reset_limited_to_el where
    toHType x = Defined "reg_reset_limited_to_el" [] []
instance XmlContent Reg_reset_limited_to_el where
    toContents (Reg_reset_limited_to_el a) =
        [CElem (Elem (N "reg_reset_limited_to_el") [] (toText a)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["reg_reset_limited_to_el"]
        ; interior e $ return (Reg_reset_limited_to_el)
                       `apply` (text `onFail` return "")
        } `adjustErr` ("in <reg_reset_limited_to_el>, "++)

instance HTypeable Reg_reset_special_text where
    toHType x = Defined "reg_reset_special_text" [] []
instance XmlContent Reg_reset_special_text where
    toContents (Reg_reset_special_text a) =
        [CElem (Elem (N "reg_reset_special_text") [] (concatMap toContents a)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["reg_reset_special_text"]
        ; interior e $ return (Reg_reset_special_text)
                       `apply` many parseContents
        } `adjustErr` ("in <reg_reset_special_text>, "++)

instance HTypeable Reg_reset_special_text_ where
    toHType x = Defined "reg_reset_special_text" [] []
instance XmlContent Reg_reset_special_text_ where
    toContents (Reg_reset_special_text_Str a) = toText a
    toContents (Reg_reset_special_text_Para a) = toContents a
    toContents (Reg_reset_special_text_List a) = toContents a
    toContents (Reg_reset_special_text_Listitem a) = toContents a
    toContents (Reg_reset_special_text_Content a) = toContents a
    toContents (Reg_reset_special_text_Table a) = toContents a
    toContents (Reg_reset_special_text_Note a) = toContents a
    toContents (Reg_reset_special_text_Register_link a) = toContents a
    toContents (Reg_reset_special_text_Instruction a) = toContents a
    toContents (Reg_reset_special_text_Xref a) = toContents a
    toContents (Reg_reset_special_text_Arm_defined_word a) = toContents a
    toContents (Reg_reset_special_text_Sup a) = toContents a
    toContents (Reg_reset_special_text_Sub a) = toContents a
    toContents (Reg_reset_special_text_B a) = toContents a
    toContents (Reg_reset_special_text_Binarynumber a) = toContents a
    toContents (Reg_reset_special_text_Hexnumber a) = toContents a
    toContents (Reg_reset_special_text_Signal a) = toContents a
    toContents (Reg_reset_special_text_Syntax a) = toContents a
    toContents (Reg_reset_special_text_Value a) = toContents a
    toContents (Reg_reset_special_text_Function a) = toContents a
    toContents (Reg_reset_special_text_AEnum a) = toContents a
    toContents (Reg_reset_special_text_Enumvalue a) = toContents a
    toContents (Reg_reset_special_text_Url a) = toContents a
    parseContents = oneOf
        [ return (Reg_reset_special_text_Str) `apply` text
        , return (Reg_reset_special_text_Para) `apply` parseContents
        , return (Reg_reset_special_text_List) `apply` parseContents
        , return (Reg_reset_special_text_Listitem) `apply` parseContents
        , return (Reg_reset_special_text_Content) `apply` parseContents
        , return (Reg_reset_special_text_Table) `apply` parseContents
        , return (Reg_reset_special_text_Note) `apply` parseContents
        , return (Reg_reset_special_text_Register_link)
          `apply` parseContents
        , return (Reg_reset_special_text_Instruction) `apply` parseContents
        , return (Reg_reset_special_text_Xref) `apply` parseContents
        , return (Reg_reset_special_text_Arm_defined_word)
          `apply` parseContents
        , return (Reg_reset_special_text_Sup) `apply` parseContents
        , return (Reg_reset_special_text_Sub) `apply` parseContents
        , return (Reg_reset_special_text_B) `apply` parseContents
        , return (Reg_reset_special_text_Binarynumber)
          `apply` parseContents
        , return (Reg_reset_special_text_Hexnumber) `apply` parseContents
        , return (Reg_reset_special_text_Signal) `apply` parseContents
        , return (Reg_reset_special_text_Syntax) `apply` parseContents
        , return (Reg_reset_special_text_Value) `apply` parseContents
        , return (Reg_reset_special_text_Function) `apply` parseContents
        , return (Reg_reset_special_text_AEnum) `apply` parseContents
        , return (Reg_reset_special_text_Enumvalue) `apply` parseContents
        , return (Reg_reset_special_text_Url) `apply` parseContents
        ] `adjustErr` ("in <reg_reset_special_text>, "++)

instance HTypeable Reg_groups where
    toHType x = Defined "reg_groups" [] []
instance XmlContent Reg_groups where
    toContents (Reg_groups a) =
        [CElem (Elem (N "reg_groups") [] (concatMap toContents a)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["reg_groups"]
        ; interior e $ return (Reg_groups) `apply` many parseContents
        } `adjustErr` ("in <reg_groups>, "++)

instance HTypeable Reg_group where
    toHType x = Defined "reg_group" [] []
instance XmlContent Reg_group where
    toContents (Reg_group a) =
        [CElem (Elem (N "reg_group") [] (toText a)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["reg_group"]
        ; interior e $ return (Reg_group) `apply` (text `onFail` return "")
        } `adjustErr` ("in <reg_group>, "++)

instance HTypeable Reg_documents_other_regs where
    toHType x = Defined "reg_documents_other_regs" [] []
instance XmlContent Reg_documents_other_regs where
    toContents (Reg_documents_other_regs a) =
        [CElem (Elem (N "reg_documents_other_regs") [] (toContents a)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["reg_documents_other_regs"]
        ; interior e $ return (Reg_documents_other_regs)
                       `apply` parseContents
        } `adjustErr` ("in <reg_documents_other_regs>, "++)

instance HTypeable Reg_documented_in where
    toHType x = Defined "reg_documented_in" [] []
instance XmlContent Reg_documented_in where
    toContents (Reg_documented_in as a) =
        [CElem (Elem (N "reg_documented_in") (toAttrs as) (toText a)) ()]
    parseContents = do
        { e@(Elem _ as _) <- element ["reg_documented_in"]
        ; interior e $ return (Reg_documented_in (fromAttrs as))
                       `apply` (text `onFail` return "")
        } `adjustErr` ("in <reg_documented_in>, "++)
instance XmlAttributes Reg_documented_in_Attrs where
    fromAttrs as =
        Reg_documented_in_Attrs
          { reg_documented_inId = definiteA fromAttrToStr "reg_documented_in" "id" as
          }
    toAttrs v = catMaybes 
        [ toAttrFrStr "id" (reg_documented_inId v)
        ]

instance HTypeable Reg_array where
    toHType x = Defined "reg_array" [] []
instance XmlContent Reg_array where
    toContents (Reg_array a b) =
        [CElem (Elem (N "reg_array") [] (toContents a ++ toContents b)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["reg_array"]
        ; interior e $ return (Reg_array) `apply` parseContents
                       `apply` parseContents
        } `adjustErr` ("in <reg_array>, "++)

instance HTypeable Reg_array_start where
    toHType x = Defined "reg_array_start" [] []
instance XmlContent Reg_array_start where
    toContents (Reg_array_start a) =
        [CElem (Elem (N "reg_array_start") [] (toText a)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["reg_array_start"]
        ; interior e $ return (Reg_array_start)
                       `apply` (text `onFail` return "")
        } `adjustErr` ("in <reg_array_start>, "++)

instance HTypeable Reg_array_end where
    toHType x = Defined "reg_array_end" [] []
instance XmlContent Reg_array_end where
    toContents (Reg_array_end a) =
        [CElem (Elem (N "reg_array_end") [] (toText a)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["reg_array_end"]
        ; interior e $ return (Reg_array_end)
                       `apply` (text `onFail` return "")
        } `adjustErr` ("in <reg_array_end>, "++)

instance HTypeable Usage_constraint_set where
    toHType x = Defined "usage_constraint_set" [] []
instance XmlContent Usage_constraint_set where
    toContents (Usage_constraint_set as a) =
        [CElem (Elem (N "usage_constraint_set") (toAttrs as) (concatMap toContents a)) ()]
    parseContents = do
        { e@(Elem _ as _) <- element ["usage_constraint_set"]
        ; interior e $ return (Usage_constraint_set (fromAttrs as))
                       `apply` many parseContents
        } `adjustErr` ("in <usage_constraint_set>, "++)
instance XmlAttributes Usage_constraint_set_Attrs where
    fromAttrs as =
        Usage_constraint_set_Attrs
          { usage_constraint_setName = possibleA fromAttrToStr "name" as
          }
    toAttrs v = catMaybes 
        [ maybeToAttr toAttrFrStr "name" (usage_constraint_setName v)
        ]

instance HTypeable Reg_access where
    toHType x = Defined "reg_access" [] []
instance XmlContent Reg_access where
    toContents (Reg_access as a) =
        [CElem (Elem (N "reg_access") (toAttrs as) (concatMap toContents a)) ()]
    parseContents = do
        { e@(Elem _ as _) <- element ["reg_access"]
        ; interior e $ return (Reg_access (fromAttrs as))
                       `apply` many parseContents
        } `adjustErr` ("in <reg_access>, "++)
instance XmlAttributes Reg_access_Attrs where
    fromAttrs as =
        Reg_access_Attrs
          { reg_accessName = possibleA fromAttrToStr "name" as
          }
    toAttrs v = catMaybes 
        [ maybeToAttr toAttrFrStr "name" (reg_accessName v)
        ]

instance HTypeable Reg_access_state where
    toHType x = Defined "reg_access_state" [] []
instance XmlContent Reg_access_state where
    toContents (Reg_access_state a b) =
        [CElem (Elem (N "reg_access_state") [] (toContents a ++
                                                toContents b)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["reg_access_state"]
        ; interior e $ return (Reg_access_state) `apply` parseContents
                       `apply` parseContents
        } `adjustErr` ("in <reg_access_state>, "++)

instance HTypeable Reg_access_level where
    toHType x = Defined "reg_access_level" [] []
instance XmlContent Reg_access_level where
    toContents (Reg_access_level a) =
        [CElem (Elem (N "reg_access_level") [] (toText a)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["reg_access_level"]
        ; interior e $ return (Reg_access_level)
                       `apply` (text `onFail` return "")
        } `adjustErr` ("in <reg_access_level>, "++)

instance HTypeable Reg_access_type where
    toHType x = Defined "reg_access_type" [] []
instance XmlContent Reg_access_type where
    toContents (Reg_access_type a) =
        [CElem (Elem (N "reg_access_type") [] (toText a)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["reg_access_type"]
        ; interior e $ return (Reg_access_type)
                       `apply` (text `onFail` return "")
        } `adjustErr` ("in <reg_access_type>, "++)

instance HTypeable Reg_address where
    toHType x = Defined "reg_address" [] []
instance XmlContent Reg_address where
    toContents (Reg_address as a b c) =
        [CElem (Elem (N "reg_address") (toAttrs as) (toContents a ++
                                                     maybe [] toContents b ++ toContents c)) ()]
    parseContents = do
        { e@(Elem _ as _) <- element ["reg_address"]
        ; interior e $ return (Reg_address (fromAttrs as))
                       `apply` parseContents `apply` optional parseContents
                       `apply` parseContents
        } `adjustErr` ("in <reg_address>, "++)
instance XmlAttributes Reg_address_Attrs where
    fromAttrs as =
        Reg_address_Attrs
          { reg_addressExternal_access = definiteA fromAttrToTyp "reg_address" "external_access" as
          , reg_addressMem_map_access = definiteA fromAttrToTyp "reg_address" "mem_map_access" as
          , reg_addressPower_domain = definiteA fromAttrToStr "reg_address" "power_domain" as
          , reg_addressRegister_startbit = possibleA fromAttrToTyp "register_startbit" as
          , reg_addressRegister_endbit = possibleA fromAttrToTyp "register_endbit" as
          }
    toAttrs v = catMaybes 
        [ toAttrFrTyp "external_access" (reg_addressExternal_access v)
        , toAttrFrTyp "mem_map_access" (reg_addressMem_map_access v)
        , toAttrFrStr "power_domain" (reg_addressPower_domain v)
        , maybeToAttr toAttrFrTyp "register_startbit" (reg_addressRegister_startbit v)
        , maybeToAttr toAttrFrTyp "register_endbit" (reg_addressRegister_endbit v)
        ]

instance XmlAttrType Reg_address_external_access where
    fromAttrToTyp n (N n',v)
        | n==n'     = translate (attr2str v)
        | otherwise = Nothing
      where translate "True" = Just Reg_address_external_access_True
            translate "False" = Just Reg_address_external_access_False
            translate _ = Nothing
    toAttrFrTyp n Reg_address_external_access_True = Just (N n, str2attr "True")
    toAttrFrTyp n Reg_address_external_access_False = Just (N n, str2attr "False")

instance XmlAttrType Reg_address_mem_map_access where
    fromAttrToTyp n (N n',v)
        | n==n'     = translate (attr2str v)
        | otherwise = Nothing
      where translate "True" = Just Reg_address_mem_map_access_True
            translate "False" = Just Reg_address_mem_map_access_False
            translate _ = Nothing
    toAttrFrTyp n Reg_address_mem_map_access_True = Just (N n, str2attr "True")
    toAttrFrTyp n Reg_address_mem_map_access_False = Just (N n, str2attr "False")

instance XmlAttrType Reg_address_register_startbit where
    fromAttrToTyp n (N n',v)
        | n==n'     = translate (attr2str v)
        | otherwise = Nothing
      where translate "31" = Just Reg_address_register_startbit_31
            translate "63" = Just Reg_address_register_startbit_63
            translate _ = Nothing
    toAttrFrTyp n Reg_address_register_startbit_31 = Just (N n, str2attr "31")
    toAttrFrTyp n Reg_address_register_startbit_63 = Just (N n, str2attr "63")

instance XmlAttrType Reg_address_register_endbit where
    fromAttrToTyp n (N n',v)
        | n==n'     = translate (attr2str v)
        | otherwise = Nothing
      where translate "0" = Just Reg_address_register_endbit_0
            translate "32" = Just Reg_address_register_endbit_32
            translate _ = Nothing
    toAttrFrTyp n Reg_address_register_endbit_0 = Just (N n, str2attr "0")
    toAttrFrTyp n Reg_address_register_endbit_32 = Just (N n, str2attr "32")

instance HTypeable Reg_component where
    toHType x = Defined "reg_component" [] []
instance XmlContent Reg_component where
    toContents (Reg_component a) =
        [CElem (Elem (N "reg_component") [] (toText a)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["reg_component"]
        ; interior e $ return (Reg_component)
                       `apply` (text `onFail` return "")
        } `adjustErr` ("in <reg_component>, "++)

instance HTypeable Reg_frame where
    toHType x = Defined "reg_frame" [] []
instance XmlContent Reg_frame where
    toContents (Reg_frame a) =
        [CElem (Elem (N "reg_frame") [] (toText a)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["reg_frame"]
        ; interior e $ return (Reg_frame) `apply` (text `onFail` return "")
        } `adjustErr` ("in <reg_frame>, "++)

instance HTypeable Reg_offset where
    toHType x = Defined "reg_offset" [] []
instance XmlContent Reg_offset where
    toContents (Reg_offset a) =
        [CElem (Elem (N "reg_offset") [] (concatMap toContents a)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["reg_offset"]
        ; interior e $ return (Reg_offset) `apply` many parseContents
        } `adjustErr` ("in <reg_offset>, "++)

instance HTypeable Reg_offset_ where
    toHType x = Defined "reg_offset" [] []
instance XmlContent Reg_offset_ where
    toContents (Reg_offset_Str a) = toText a
    toContents (Reg_offset_Register_link a) = toContents a
    toContents (Reg_offset_Instruction a) = toContents a
    toContents (Reg_offset_Xref a) = toContents a
    toContents (Reg_offset_Arm_defined_word a) = toContents a
    toContents (Reg_offset_Sup a) = toContents a
    toContents (Reg_offset_Sub a) = toContents a
    toContents (Reg_offset_B a) = toContents a
    toContents (Reg_offset_Binarynumber a) = toContents a
    toContents (Reg_offset_Hexnumber a) = toContents a
    toContents (Reg_offset_Signal a) = toContents a
    toContents (Reg_offset_Syntax a) = toContents a
    toContents (Reg_offset_Value a) = toContents a
    toContents (Reg_offset_Function a) = toContents a
    toContents (Reg_offset_AEnum a) = toContents a
    toContents (Reg_offset_Enumvalue a) = toContents a
    toContents (Reg_offset_Url a) = toContents a
    parseContents = oneOf
        [ return (Reg_offset_Str) `apply` text
        , return (Reg_offset_Register_link) `apply` parseContents
        , return (Reg_offset_Instruction) `apply` parseContents
        , return (Reg_offset_Xref) `apply` parseContents
        , return (Reg_offset_Arm_defined_word) `apply` parseContents
        , return (Reg_offset_Sup) `apply` parseContents
        , return (Reg_offset_Sub) `apply` parseContents
        , return (Reg_offset_B) `apply` parseContents
        , return (Reg_offset_Binarynumber) `apply` parseContents
        , return (Reg_offset_Hexnumber) `apply` parseContents
        , return (Reg_offset_Signal) `apply` parseContents
        , return (Reg_offset_Syntax) `apply` parseContents
        , return (Reg_offset_Value) `apply` parseContents
        , return (Reg_offset_Function) `apply` parseContents
        , return (Reg_offset_AEnum) `apply` parseContents
        , return (Reg_offset_Enumvalue) `apply` parseContents
        , return (Reg_offset_Url) `apply` parseContents
        ] `adjustErr` ("in <reg_offset>, "++)

instance HTypeable Reg_encoding where
    toHType x = Defined "reg_encoding" [] []
instance XmlContent Reg_encoding where
    toContents (Reg_encoding a b c d e) =
        [CElem (Elem (N "reg_encoding") [] (maybe [] toContents a ++
                                            maybe [] toContents b ++ maybe [] toContents c ++
                                            toContents d ++ maybe [] toContents e)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["reg_encoding"]
        ; interior e $ return (Reg_encoding) `apply` optional parseContents
                       `apply` optional parseContents `apply` optional parseContents
                       `apply` parseContents `apply` optional parseContents
        } `adjustErr` ("in <reg_encoding>, "++)

instance HTypeable Reg_condition where
    toHType x = Defined "reg_condition" [] []
instance XmlContent Reg_condition where
    toContents (Reg_condition a) =
        [CElem (Elem (N "reg_condition") [] (toText a)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["reg_condition"]
        ; interior e $ return (Reg_condition)
                       `apply` (text `onFail` return "")
        } `adjustErr` ("in <reg_condition>, "++)

instance HTypeable Reg_read_instruction where
    toHType x = Defined "reg_read_instruction" [] []
instance XmlContent Reg_read_instruction where
    toContents (Reg_read_instruction as a) =
        [CElem (Elem (N "reg_read_instruction") (toAttrs as) (toText a)) ()]
    parseContents = do
        { e@(Elem _ as _) <- element ["reg_read_instruction"]
        ; interior e $ return (Reg_read_instruction (fromAttrs as))
                       `apply` (text `onFail` return "")
        } `adjustErr` ("in <reg_read_instruction>, "++)
instance XmlAttributes Reg_read_instruction_Attrs where
    fromAttrs as =
        Reg_read_instruction_Attrs
          { reg_read_instructionMnemonic = definiteA fromAttrToStr "reg_read_instruction" "mnemonic" as
          }
    toAttrs v = catMaybes 
        [ toAttrFrStr "mnemonic" (reg_read_instructionMnemonic v)
        ]

instance HTypeable Reg_write_instruction where
    toHType x = Defined "reg_write_instruction" [] []
instance XmlContent Reg_write_instruction where
    toContents (Reg_write_instruction as a) =
        [CElem (Elem (N "reg_write_instruction") (toAttrs as) (toText a)) ()]
    parseContents = do
        { e@(Elem _ as _) <- element ["reg_write_instruction"]
        ; interior e $ return (Reg_write_instruction (fromAttrs as))
                       `apply` (text `onFail` return "")
        } `adjustErr` ("in <reg_write_instruction>, "++)
instance XmlAttributes Reg_write_instruction_Attrs where
    fromAttrs as =
        Reg_write_instruction_Attrs
          { reg_write_instructionMnemonic = definiteA fromAttrToStr "reg_write_instruction" "mnemonic" as
          }
    toAttrs v = catMaybes 
        [ toAttrFrStr "mnemonic" (reg_write_instructionMnemonic v)
        ]

instance HTypeable Reg_encoding_params where
    toHType x = Defined "reg_encoding_params" [] []
instance XmlContent Reg_encoding_params where
    toContents (Reg_encoding_params a) =
        [CElem (Elem (N "reg_encoding_params") [] (toContents a)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["reg_encoding_params"]
        ; interior e $ return (Reg_encoding_params) `apply` parseContents
        } `adjustErr` ("in <reg_encoding_params>, "++)

instance HTypeable Encoding_param where
    toHType x = Defined "encoding_param" [] []
instance XmlContent Encoding_param where
    toContents (Encoding_param a b) =
        [CElem (Elem (N "encoding_param") [] (toContents a ++
                                              toContents b)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["encoding_param"]
        ; interior e $ return (Encoding_param) `apply` parseContents
                       `apply` parseContents
        } `adjustErr` ("in <encoding_param>, "++)

instance HTypeable Encoding_fieldname where
    toHType x = Defined "encoding_fieldname" [] []
instance XmlContent Encoding_fieldname where
    toContents (Encoding_fieldname a) =
        [CElem (Elem (N "encoding_fieldname") [] (toText a)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["encoding_fieldname"]
        ; interior e $ return (Encoding_fieldname)
                       `apply` (text `onFail` return "")
        } `adjustErr` ("in <encoding_fieldname>, "++)

instance HTypeable Encoding_fieldvalue where
    toHType x = Defined "encoding_fieldvalue" [] []
instance XmlContent Encoding_fieldvalue where
    toContents (Encoding_fieldvalue a) =
        [CElem (Elem (N "encoding_fieldvalue") [] (toText a)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["encoding_fieldvalue"]
        ; interior e $ return (Encoding_fieldvalue)
                       `apply` (text `onFail` return "")
        } `adjustErr` ("in <encoding_fieldvalue>, "++)

instance HTypeable Reg_encoding_text where
    toHType x = Defined "reg_encoding_text" [] []
instance XmlContent Reg_encoding_text where
    toContents (Reg_encoding_text a) =
        [CElem (Elem (N "reg_encoding_text") [] (concatMap toContents a)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["reg_encoding_text"]
        ; interior e $ return (Reg_encoding_text)
                       `apply` many parseContents
        } `adjustErr` ("in <reg_encoding_text>, "++)

instance HTypeable Reg_encoding_text_ where
    toHType x = Defined "reg_encoding_text" [] []
instance XmlContent Reg_encoding_text_ where
    toContents (Reg_encoding_text_Str a) = toText a
    toContents (Reg_encoding_text_Para a) = toContents a
    toContents (Reg_encoding_text_List a) = toContents a
    toContents (Reg_encoding_text_Listitem a) = toContents a
    toContents (Reg_encoding_text_Content a) = toContents a
    toContents (Reg_encoding_text_Table a) = toContents a
    toContents (Reg_encoding_text_Note a) = toContents a
    toContents (Reg_encoding_text_Register_link a) = toContents a
    toContents (Reg_encoding_text_Instruction a) = toContents a
    toContents (Reg_encoding_text_Xref a) = toContents a
    toContents (Reg_encoding_text_Arm_defined_word a) = toContents a
    toContents (Reg_encoding_text_Sup a) = toContents a
    toContents (Reg_encoding_text_Sub a) = toContents a
    toContents (Reg_encoding_text_B a) = toContents a
    toContents (Reg_encoding_text_Binarynumber a) = toContents a
    toContents (Reg_encoding_text_Hexnumber a) = toContents a
    toContents (Reg_encoding_text_Signal a) = toContents a
    toContents (Reg_encoding_text_Syntax a) = toContents a
    toContents (Reg_encoding_text_Value a) = toContents a
    toContents (Reg_encoding_text_Function a) = toContents a
    toContents (Reg_encoding_text_AEnum a) = toContents a
    toContents (Reg_encoding_text_Enumvalue a) = toContents a
    toContents (Reg_encoding_text_Url a) = toContents a
    parseContents = oneOf
        [ return (Reg_encoding_text_Str) `apply` text
        , return (Reg_encoding_text_Para) `apply` parseContents
        , return (Reg_encoding_text_List) `apply` parseContents
        , return (Reg_encoding_text_Listitem) `apply` parseContents
        , return (Reg_encoding_text_Content) `apply` parseContents
        , return (Reg_encoding_text_Table) `apply` parseContents
        , return (Reg_encoding_text_Note) `apply` parseContents
        , return (Reg_encoding_text_Register_link) `apply` parseContents
        , return (Reg_encoding_text_Instruction) `apply` parseContents
        , return (Reg_encoding_text_Xref) `apply` parseContents
        , return (Reg_encoding_text_Arm_defined_word) `apply` parseContents
        , return (Reg_encoding_text_Sup) `apply` parseContents
        , return (Reg_encoding_text_Sub) `apply` parseContents
        , return (Reg_encoding_text_B) `apply` parseContents
        , return (Reg_encoding_text_Binarynumber) `apply` parseContents
        , return (Reg_encoding_text_Hexnumber) `apply` parseContents
        , return (Reg_encoding_text_Signal) `apply` parseContents
        , return (Reg_encoding_text_Syntax) `apply` parseContents
        , return (Reg_encoding_text_Value) `apply` parseContents
        , return (Reg_encoding_text_Function) `apply` parseContents
        , return (Reg_encoding_text_AEnum) `apply` parseContents
        , return (Reg_encoding_text_Enumvalue) `apply` parseContents
        , return (Reg_encoding_text_Url) `apply` parseContents
        ] `adjustErr` ("in <reg_encoding_text>, "++)

instance HTypeable Reg_mappings where
    toHType x = Defined "reg_mappings" [] []
instance XmlContent Reg_mappings where
    toContents (Reg_mappings a) =
        [CElem (Elem (N "reg_mappings") [] (concatMap toContents a)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["reg_mappings"]
        ; interior e $ return (Reg_mappings) `apply` many parseContents
        } `adjustErr` ("in <reg_mappings>, "++)

instance HTypeable Reg_mapping where
    toHType x = Defined "reg_mapping" [] []
instance XmlContent Reg_mapping where
    toContents (Reg_mapping a b c d e f g h i j k) =
        [CElem (Elem (N "reg_mapping") [] (toContents a ++ toContents b ++
                                           toContents c ++ maybe [] toContents d ++
                                           maybe [] toContents e ++ maybe [] toContents f ++
                                           maybe [] toContents g ++ maybe [] toContents h ++
                                           maybe [] toContents i ++ maybe [] toContents j ++
                                           maybe [] toContents k)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["reg_mapping"]
        ; interior e $ return (Reg_mapping) `apply` parseContents
                       `apply` parseContents `apply` parseContents
                       `apply` optional parseContents `apply` optional parseContents
                       `apply` optional parseContents `apply` optional parseContents
                       `apply` optional parseContents `apply` optional parseContents
                       `apply` optional parseContents `apply` optional parseContents
        } `adjustErr` ("in <reg_mapping>, "++)

instance HTypeable Mapped_name where
    toHType x = Defined "mapped_name" [] []
instance XmlContent Mapped_name where
    toContents (Mapped_name as a) =
        [CElem (Elem (N "mapped_name") (toAttrs as) (toText a)) ()]
    parseContents = do
        { e@(Elem _ as _) <- element ["mapped_name"]
        ; interior e $ return (Mapped_name (fromAttrs as))
                       `apply` (text `onFail` return "")
        } `adjustErr` ("in <mapped_name>, "++)
instance XmlAttributes Mapped_name_Attrs where
    fromAttrs as =
        Mapped_name_Attrs
          { mapped_nameFilename = possibleA fromAttrToStr "filename" as
          }
    toAttrs v = catMaybes 
        [ maybeToAttr toAttrFrStr "filename" (mapped_nameFilename v)
        ]

instance HTypeable Mapped_type where
    toHType x = Defined "mapped_type" [] []
instance XmlContent Mapped_type where
    toContents (Mapped_type a) =
        [CElem (Elem (N "mapped_type") [] (toText a)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["mapped_type"]
        ; interior e $ return (Mapped_type)
                       `apply` (text `onFail` return "")
        } `adjustErr` ("in <mapped_type>, "++)

instance HTypeable Mapped_execution_state where
    toHType x = Defined "mapped_execution_state" [] []
instance XmlContent Mapped_execution_state where
    toContents (Mapped_execution_state a) =
        [CElem (Elem (N "mapped_execution_state") [] (toText a)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["mapped_execution_state"]
        ; interior e $ return (Mapped_execution_state)
                       `apply` (text `onFail` return "")
        } `adjustErr` ("in <mapped_execution_state>, "++)

instance HTypeable Mapped_from_startbit where
    toHType x = Defined "mapped_from_startbit" [] []
instance XmlContent Mapped_from_startbit where
    toContents (Mapped_from_startbit a) =
        [CElem (Elem (N "mapped_from_startbit") [] (toText a)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["mapped_from_startbit"]
        ; interior e $ return (Mapped_from_startbit)
                       `apply` (text `onFail` return "")
        } `adjustErr` ("in <mapped_from_startbit>, "++)

instance HTypeable Mapped_from_endbit where
    toHType x = Defined "mapped_from_endbit" [] []
instance XmlContent Mapped_from_endbit where
    toContents (Mapped_from_endbit a) =
        [CElem (Elem (N "mapped_from_endbit") [] (toText a)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["mapped_from_endbit"]
        ; interior e $ return (Mapped_from_endbit)
                       `apply` (text `onFail` return "")
        } `adjustErr` ("in <mapped_from_endbit>, "++)

instance HTypeable Mapped_to_startbit where
    toHType x = Defined "mapped_to_startbit" [] []
instance XmlContent Mapped_to_startbit where
    toContents (Mapped_to_startbit a) =
        [CElem (Elem (N "mapped_to_startbit") [] (toText a)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["mapped_to_startbit"]
        ; interior e $ return (Mapped_to_startbit)
                       `apply` (text `onFail` return "")
        } `adjustErr` ("in <mapped_to_startbit>, "++)

instance HTypeable Mapped_to_endbit where
    toHType x = Defined "mapped_to_endbit" [] []
instance XmlContent Mapped_to_endbit where
    toContents (Mapped_to_endbit a) =
        [CElem (Elem (N "mapped_to_endbit") [] (toText a)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["mapped_to_endbit"]
        ; interior e $ return (Mapped_to_endbit)
                       `apply` (text `onFail` return "")
        } `adjustErr` ("in <mapped_to_endbit>, "++)

instance HTypeable Mapped_from_sec_state where
    toHType x = Defined "mapped_from_sec_state" [] []
instance XmlContent Mapped_from_sec_state where
    toContents (Mapped_from_sec_state a) =
        [CElem (Elem (N "mapped_from_sec_state") [] (toText a)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["mapped_from_sec_state"]
        ; interior e $ return (Mapped_from_sec_state)
                       `apply` (text `onFail` return "")
        } `adjustErr` ("in <mapped_from_sec_state>, "++)

instance HTypeable Mapped_to_sec_state where
    toHType x = Defined "mapped_to_sec_state" [] []
instance XmlContent Mapped_to_sec_state where
    toContents (Mapped_to_sec_state a) =
        [CElem (Elem (N "mapped_to_sec_state") [] (toText a)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["mapped_to_sec_state"]
        ; interior e $ return (Mapped_to_sec_state)
                       `apply` (text `onFail` return "")
        } `adjustErr` ("in <mapped_to_sec_state>, "++)

instance HTypeable Mapped_from_condition where
    toHType x = Defined "mapped_from_condition" [] []
instance XmlContent Mapped_from_condition where
    toContents (Mapped_from_condition a) =
        [CElem (Elem (N "mapped_from_condition") [] (toText a)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["mapped_from_condition"]
        ; interior e $ return (Mapped_from_condition)
                       `apply` (text `onFail` return "")
        } `adjustErr` ("in <mapped_from_condition>, "++)

instance HTypeable Mapped_to_condition where
    toHType x = Defined "mapped_to_condition" [] []
instance XmlContent Mapped_to_condition where
    toContents (Mapped_to_condition a) =
        [CElem (Elem (N "mapped_to_condition") [] (toText a)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["mapped_to_condition"]
        ; interior e $ return (Mapped_to_condition)
                       `apply` (text `onFail` return "")
        } `adjustErr` ("in <mapped_to_condition>, "++)

instance HTypeable Reg_purpose where
    toHType x = Defined "reg_purpose" [] []
instance XmlContent Reg_purpose where
    toContents (Reg_purpose a) =
        [CElem (Elem (N "reg_purpose") [] (concatMap toContents a)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["reg_purpose"]
        ; interior e $ return (Reg_purpose) `apply` many parseContents
        } `adjustErr` ("in <reg_purpose>, "++)

instance HTypeable Purpose_text where
    toHType x = Defined "purpose_text" [] []
instance XmlContent Purpose_text where
    toContents (Purpose_text a) =
        [CElem (Elem (N "purpose_text") [] (concatMap toContents a)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["purpose_text"]
        ; interior e $ return (Purpose_text) `apply` many parseContents
        } `adjustErr` ("in <purpose_text>, "++)

instance HTypeable Purpose_text_ where
    toHType x = Defined "purpose_text" [] []
instance XmlContent Purpose_text_ where
    toContents (Purpose_text_Str a) = toText a
    toContents (Purpose_text_Para a) = toContents a
    toContents (Purpose_text_List a) = toContents a
    toContents (Purpose_text_Listitem a) = toContents a
    toContents (Purpose_text_Content a) = toContents a
    toContents (Purpose_text_Table a) = toContents a
    toContents (Purpose_text_Note a) = toContents a
    toContents (Purpose_text_Register_link a) = toContents a
    toContents (Purpose_text_Instruction a) = toContents a
    toContents (Purpose_text_Xref a) = toContents a
    toContents (Purpose_text_Arm_defined_word a) = toContents a
    toContents (Purpose_text_Sup a) = toContents a
    toContents (Purpose_text_Sub a) = toContents a
    toContents (Purpose_text_B a) = toContents a
    toContents (Purpose_text_Binarynumber a) = toContents a
    toContents (Purpose_text_Hexnumber a) = toContents a
    toContents (Purpose_text_Signal a) = toContents a
    toContents (Purpose_text_Syntax a) = toContents a
    toContents (Purpose_text_Value a) = toContents a
    toContents (Purpose_text_Function a) = toContents a
    toContents (Purpose_text_AEnum a) = toContents a
    toContents (Purpose_text_Enumvalue a) = toContents a
    toContents (Purpose_text_Url a) = toContents a
    parseContents = oneOf
        [ return (Purpose_text_Str) `apply` text
        , return (Purpose_text_Para) `apply` parseContents
        , return (Purpose_text_List) `apply` parseContents
        , return (Purpose_text_Listitem) `apply` parseContents
        , return (Purpose_text_Content) `apply` parseContents
        , return (Purpose_text_Table) `apply` parseContents
        , return (Purpose_text_Note) `apply` parseContents
        , return (Purpose_text_Register_link) `apply` parseContents
        , return (Purpose_text_Instruction) `apply` parseContents
        , return (Purpose_text_Xref) `apply` parseContents
        , return (Purpose_text_Arm_defined_word) `apply` parseContents
        , return (Purpose_text_Sup) `apply` parseContents
        , return (Purpose_text_Sub) `apply` parseContents
        , return (Purpose_text_B) `apply` parseContents
        , return (Purpose_text_Binarynumber) `apply` parseContents
        , return (Purpose_text_Hexnumber) `apply` parseContents
        , return (Purpose_text_Signal) `apply` parseContents
        , return (Purpose_text_Syntax) `apply` parseContents
        , return (Purpose_text_Value) `apply` parseContents
        , return (Purpose_text_Function) `apply` parseContents
        , return (Purpose_text_AEnum) `apply` parseContents
        , return (Purpose_text_Enumvalue) `apply` parseContents
        , return (Purpose_text_Url) `apply` parseContents
        ] `adjustErr` ("in <purpose_text>, "++)

instance HTypeable Reg_usage_constraints where
    toHType x = Defined "reg_usage_constraints" [] []
instance XmlContent Reg_usage_constraints where
    toContents (Reg_usage_constraints a) =
        [CElem (Elem (N "reg_usage_constraints") [] (concatMap toContents a)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["reg_usage_constraints"]
        ; interior e $ return (Reg_usage_constraints)
                       `apply` many parseContents
        } `adjustErr` ("in <reg_usage_constraints>, "++)

instance HTypeable Reg_reverse_traps_and_enables where
    toHType x = Defined "reg_reverse_traps_and_enables" [] []
instance XmlContent Reg_reverse_traps_and_enables where
    toContents (Reg_reverse_traps_and_enables a) =
        [CElem (Elem (N "reg_reverse_traps_and_enables") [] (concatMap toContents a)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["reg_reverse_traps_and_enables"]
        ; interior e $ return (Reg_reverse_traps_and_enables)
                       `apply` many parseContents
        } `adjustErr` ("in <reg_reverse_traps_and_enables>, "++)

instance HTypeable Usage_constraints_text where
    toHType x = Defined "usage_constraints_text" [] []
instance XmlContent Usage_constraints_text where
    toContents (Usage_constraints_text a) =
        [CElem (Elem (N "usage_constraints_text") [] (concatMap toContents a)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["usage_constraints_text"]
        ; interior e $ return (Usage_constraints_text)
                       `apply` many parseContents
        } `adjustErr` ("in <usage_constraints_text>, "++)

instance HTypeable Usage_constraints_text_ where
    toHType x = Defined "usage_constraints_text" [] []
instance XmlContent Usage_constraints_text_ where
    toContents (Usage_constraints_text_Str a) = toText a
    toContents (Usage_constraints_text_Para a) = toContents a
    toContents (Usage_constraints_text_List a) = toContents a
    toContents (Usage_constraints_text_Listitem a) = toContents a
    toContents (Usage_constraints_text_Content a) = toContents a
    toContents (Usage_constraints_text_Table a) = toContents a
    toContents (Usage_constraints_text_Note a) = toContents a
    toContents (Usage_constraints_text_Register_link a) = toContents a
    toContents (Usage_constraints_text_Instruction a) = toContents a
    toContents (Usage_constraints_text_Xref a) = toContents a
    toContents (Usage_constraints_text_Arm_defined_word a) = toContents a
    toContents (Usage_constraints_text_Sup a) = toContents a
    toContents (Usage_constraints_text_Sub a) = toContents a
    toContents (Usage_constraints_text_B a) = toContents a
    toContents (Usage_constraints_text_Binarynumber a) = toContents a
    toContents (Usage_constraints_text_Hexnumber a) = toContents a
    toContents (Usage_constraints_text_Signal a) = toContents a
    toContents (Usage_constraints_text_Syntax a) = toContents a
    toContents (Usage_constraints_text_Value a) = toContents a
    toContents (Usage_constraints_text_Function a) = toContents a
    toContents (Usage_constraints_text_AEnum a) = toContents a
    toContents (Usage_constraints_text_Enumvalue a) = toContents a
    toContents (Usage_constraints_text_Url a) = toContents a
    parseContents = oneOf
        [ return (Usage_constraints_text_Str) `apply` text
        , return (Usage_constraints_text_Para) `apply` parseContents
        , return (Usage_constraints_text_List) `apply` parseContents
        , return (Usage_constraints_text_Listitem) `apply` parseContents
        , return (Usage_constraints_text_Content) `apply` parseContents
        , return (Usage_constraints_text_Table) `apply` parseContents
        , return (Usage_constraints_text_Note) `apply` parseContents
        , return (Usage_constraints_text_Register_link)
          `apply` parseContents
        , return (Usage_constraints_text_Instruction) `apply` parseContents
        , return (Usage_constraints_text_Xref) `apply` parseContents
        , return (Usage_constraints_text_Arm_defined_word)
          `apply` parseContents
        , return (Usage_constraints_text_Sup) `apply` parseContents
        , return (Usage_constraints_text_Sub) `apply` parseContents
        , return (Usage_constraints_text_B) `apply` parseContents
        , return (Usage_constraints_text_Binarynumber)
          `apply` parseContents
        , return (Usage_constraints_text_Hexnumber) `apply` parseContents
        , return (Usage_constraints_text_Signal) `apply` parseContents
        , return (Usage_constraints_text_Syntax) `apply` parseContents
        , return (Usage_constraints_text_Value) `apply` parseContents
        , return (Usage_constraints_text_Function) `apply` parseContents
        , return (Usage_constraints_text_AEnum) `apply` parseContents
        , return (Usage_constraints_text_Enumvalue) `apply` parseContents
        , return (Usage_constraints_text_Url) `apply` parseContents
        ] `adjustErr` ("in <usage_constraints_text>, "++)

instance HTypeable Reverse_trap_or_enable_text where
    toHType x = Defined "reverse_trap_or_enable_text" [] []
instance XmlContent Reverse_trap_or_enable_text where
    toContents (Reverse_trap_or_enable_text a) =
        [CElem (Elem (N "reverse_trap_or_enable_text") [] (concatMap toContents a)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["reverse_trap_or_enable_text"]
        ; interior e $ return (Reverse_trap_or_enable_text)
                       `apply` many parseContents
        } `adjustErr` ("in <reverse_trap_or_enable_text>, "++)

instance HTypeable Reverse_trap_or_enable_text_ where
    toHType x = Defined "reverse_trap_or_enable_text" [] []
instance XmlContent Reverse_trap_or_enable_text_ where
    toContents (Reverse_trap_or_enable_text_Str a) = toText a
    toContents (Reverse_trap_or_enable_text_Para a) = toContents a
    toContents (Reverse_trap_or_enable_text_List a) = toContents a
    toContents (Reverse_trap_or_enable_text_Listitem a) = toContents a
    toContents (Reverse_trap_or_enable_text_Content a) = toContents a
    toContents (Reverse_trap_or_enable_text_Table a) = toContents a
    toContents (Reverse_trap_or_enable_text_Note a) = toContents a
    toContents (Reverse_trap_or_enable_text_Register_link a) = toContents a
    toContents (Reverse_trap_or_enable_text_Instruction a) = toContents a
    toContents (Reverse_trap_or_enable_text_Xref a) = toContents a
    toContents (Reverse_trap_or_enable_text_Arm_defined_word a) = toContents a
    toContents (Reverse_trap_or_enable_text_Sup a) = toContents a
    toContents (Reverse_trap_or_enable_text_Sub a) = toContents a
    toContents (Reverse_trap_or_enable_text_B a) = toContents a
    toContents (Reverse_trap_or_enable_text_Binarynumber a) = toContents a
    toContents (Reverse_trap_or_enable_text_Hexnumber a) = toContents a
    toContents (Reverse_trap_or_enable_text_Signal a) = toContents a
    toContents (Reverse_trap_or_enable_text_Syntax a) = toContents a
    toContents (Reverse_trap_or_enable_text_Value a) = toContents a
    toContents (Reverse_trap_or_enable_text_Function a) = toContents a
    toContents (Reverse_trap_or_enable_text_AEnum a) = toContents a
    toContents (Reverse_trap_or_enable_text_Enumvalue a) = toContents a
    toContents (Reverse_trap_or_enable_text_Url a) = toContents a
    parseContents = oneOf
        [ return (Reverse_trap_or_enable_text_Str) `apply` text
        , return (Reverse_trap_or_enable_text_Para) `apply` parseContents
        , return (Reverse_trap_or_enable_text_List) `apply` parseContents
        , return (Reverse_trap_or_enable_text_Listitem)
          `apply` parseContents
        , return (Reverse_trap_or_enable_text_Content)
          `apply` parseContents
        , return (Reverse_trap_or_enable_text_Table) `apply` parseContents
        , return (Reverse_trap_or_enable_text_Note) `apply` parseContents
        , return (Reverse_trap_or_enable_text_Register_link)
          `apply` parseContents
        , return (Reverse_trap_or_enable_text_Instruction)
          `apply` parseContents
        , return (Reverse_trap_or_enable_text_Xref) `apply` parseContents
        , return (Reverse_trap_or_enable_text_Arm_defined_word)
          `apply` parseContents
        , return (Reverse_trap_or_enable_text_Sup) `apply` parseContents
        , return (Reverse_trap_or_enable_text_Sub) `apply` parseContents
        , return (Reverse_trap_or_enable_text_B) `apply` parseContents
        , return (Reverse_trap_or_enable_text_Binarynumber)
          `apply` parseContents
        , return (Reverse_trap_or_enable_text_Hexnumber)
          `apply` parseContents
        , return (Reverse_trap_or_enable_text_Signal) `apply` parseContents
        , return (Reverse_trap_or_enable_text_Syntax) `apply` parseContents
        , return (Reverse_trap_or_enable_text_Value) `apply` parseContents
        , return (Reverse_trap_or_enable_text_Function)
          `apply` parseContents
        , return (Reverse_trap_or_enable_text_AEnum) `apply` parseContents
        , return (Reverse_trap_or_enable_text_Enumvalue)
          `apply` parseContents
        , return (Reverse_trap_or_enable_text_Url) `apply` parseContents
        ] `adjustErr` ("in <reverse_trap_or_enable_text>, "++)

instance HTypeable Reg_configuration where
    toHType x = Defined "reg_configuration" [] []
instance XmlContent Reg_configuration where
    toContents (Reg_configuration a) =
        [CElem (Elem (N "reg_configuration") [] (concatMap toContents a)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["reg_configuration"]
        ; interior e $ return (Reg_configuration)
                       `apply` many parseContents
        } `adjustErr` ("in <reg_configuration>, "++)

instance HTypeable Configuration_text where
    toHType x = Defined "configuration_text" [] []
instance XmlContent Configuration_text where
    toContents (Configuration_text a) =
        [CElem (Elem (N "configuration_text") [] (concatMap toContents a)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["configuration_text"]
        ; interior e $ return (Configuration_text)
                       `apply` many parseContents
        } `adjustErr` ("in <configuration_text>, "++)

instance HTypeable Configuration_text_ where
    toHType x = Defined "configuration_text" [] []
instance XmlContent Configuration_text_ where
    toContents (Configuration_text_Str a) = toText a
    toContents (Configuration_text_Para a) = toContents a
    toContents (Configuration_text_List a) = toContents a
    toContents (Configuration_text_Listitem a) = toContents a
    toContents (Configuration_text_Content a) = toContents a
    toContents (Configuration_text_Table a) = toContents a
    toContents (Configuration_text_Note a) = toContents a
    toContents (Configuration_text_Register_link a) = toContents a
    toContents (Configuration_text_Instruction a) = toContents a
    toContents (Configuration_text_Xref a) = toContents a
    toContents (Configuration_text_Arm_defined_word a) = toContents a
    toContents (Configuration_text_Sup a) = toContents a
    toContents (Configuration_text_Sub a) = toContents a
    toContents (Configuration_text_B a) = toContents a
    toContents (Configuration_text_Binarynumber a) = toContents a
    toContents (Configuration_text_Hexnumber a) = toContents a
    toContents (Configuration_text_Signal a) = toContents a
    toContents (Configuration_text_Syntax a) = toContents a
    toContents (Configuration_text_Value a) = toContents a
    toContents (Configuration_text_Function a) = toContents a
    toContents (Configuration_text_AEnum a) = toContents a
    toContents (Configuration_text_Enumvalue a) = toContents a
    toContents (Configuration_text_Url a) = toContents a
    parseContents = oneOf
        [ return (Configuration_text_Str) `apply` text
        , return (Configuration_text_Para) `apply` parseContents
        , return (Configuration_text_List) `apply` parseContents
        , return (Configuration_text_Listitem) `apply` parseContents
        , return (Configuration_text_Content) `apply` parseContents
        , return (Configuration_text_Table) `apply` parseContents
        , return (Configuration_text_Note) `apply` parseContents
        , return (Configuration_text_Register_link) `apply` parseContents
        , return (Configuration_text_Instruction) `apply` parseContents
        , return (Configuration_text_Xref) `apply` parseContents
        , return (Configuration_text_Arm_defined_word)
          `apply` parseContents
        , return (Configuration_text_Sup) `apply` parseContents
        , return (Configuration_text_Sub) `apply` parseContents
        , return (Configuration_text_B) `apply` parseContents
        , return (Configuration_text_Binarynumber) `apply` parseContents
        , return (Configuration_text_Hexnumber) `apply` parseContents
        , return (Configuration_text_Signal) `apply` parseContents
        , return (Configuration_text_Syntax) `apply` parseContents
        , return (Configuration_text_Value) `apply` parseContents
        , return (Configuration_text_Function) `apply` parseContents
        , return (Configuration_text_AEnum) `apply` parseContents
        , return (Configuration_text_Enumvalue) `apply` parseContents
        , return (Configuration_text_Url) `apply` parseContents
        ] `adjustErr` ("in <configuration_text>, "++)

instance HTypeable Reg_banking where
    toHType x = Defined "reg_banking" [] []
instance XmlContent Reg_banking where
    toContents (Reg_banking a) =
        [CElem (Elem (N "reg_banking") [] (concatMap toContents a)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["reg_banking"]
        ; interior e $ return (Reg_banking) `apply` many parseContents
        } `adjustErr` ("in <reg_banking>, "++)

instance HTypeable Reg_banking_ where
    toHType x = Defined "reg_banking" [] []
instance XmlContent Reg_banking_ where
    toContents (Reg_banking_Str a) = toText a
    toContents (Reg_banking_Para a) = toContents a
    toContents (Reg_banking_List a) = toContents a
    toContents (Reg_banking_Listitem a) = toContents a
    toContents (Reg_banking_Content a) = toContents a
    toContents (Reg_banking_Table a) = toContents a
    toContents (Reg_banking_Note a) = toContents a
    toContents (Reg_banking_Register_link a) = toContents a
    toContents (Reg_banking_Instruction a) = toContents a
    toContents (Reg_banking_Xref a) = toContents a
    toContents (Reg_banking_Arm_defined_word a) = toContents a
    toContents (Reg_banking_Sup a) = toContents a
    toContents (Reg_banking_Sub a) = toContents a
    toContents (Reg_banking_B a) = toContents a
    toContents (Reg_banking_Binarynumber a) = toContents a
    toContents (Reg_banking_Hexnumber a) = toContents a
    toContents (Reg_banking_Signal a) = toContents a
    toContents (Reg_banking_Syntax a) = toContents a
    toContents (Reg_banking_Value a) = toContents a
    toContents (Reg_banking_Function a) = toContents a
    toContents (Reg_banking_AEnum a) = toContents a
    toContents (Reg_banking_Enumvalue a) = toContents a
    toContents (Reg_banking_Url a) = toContents a
    parseContents = oneOf
        [ return (Reg_banking_Str) `apply` text
        , return (Reg_banking_Para) `apply` parseContents
        , return (Reg_banking_List) `apply` parseContents
        , return (Reg_banking_Listitem) `apply` parseContents
        , return (Reg_banking_Content) `apply` parseContents
        , return (Reg_banking_Table) `apply` parseContents
        , return (Reg_banking_Note) `apply` parseContents
        , return (Reg_banking_Register_link) `apply` parseContents
        , return (Reg_banking_Instruction) `apply` parseContents
        , return (Reg_banking_Xref) `apply` parseContents
        , return (Reg_banking_Arm_defined_word) `apply` parseContents
        , return (Reg_banking_Sup) `apply` parseContents
        , return (Reg_banking_Sub) `apply` parseContents
        , return (Reg_banking_B) `apply` parseContents
        , return (Reg_banking_Binarynumber) `apply` parseContents
        , return (Reg_banking_Hexnumber) `apply` parseContents
        , return (Reg_banking_Signal) `apply` parseContents
        , return (Reg_banking_Syntax) `apply` parseContents
        , return (Reg_banking_Value) `apply` parseContents
        , return (Reg_banking_Function) `apply` parseContents
        , return (Reg_banking_AEnum) `apply` parseContents
        , return (Reg_banking_Enumvalue) `apply` parseContents
        , return (Reg_banking_Url) `apply` parseContents
        ] `adjustErr` ("in <reg_banking>, "++)

instance HTypeable Reg_attributes where
    toHType x = Defined "reg_attributes" [] []
instance XmlContent Reg_attributes where
    toContents (Reg_attributes a) =
        [CElem (Elem (N "reg_attributes") [] (concatMap toContents a)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["reg_attributes"]
        ; interior e $ return (Reg_attributes) `apply` many parseContents
        } `adjustErr` ("in <reg_attributes>, "++)

instance HTypeable Attributes_text where
    toHType x = Defined "attributes_text" [] []
instance XmlContent Attributes_text where
    toContents (Attributes_text a) =
        [CElem (Elem (N "attributes_text") [] (concatMap toContents a)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["attributes_text"]
        ; interior e $ return (Attributes_text) `apply` many parseContents
        } `adjustErr` ("in <attributes_text>, "++)

instance HTypeable Attributes_text_ where
    toHType x = Defined "attributes_text" [] []
instance XmlContent Attributes_text_ where
    toContents (Attributes_text_Str a) = toText a
    toContents (Attributes_text_Para a) = toContents a
    toContents (Attributes_text_List a) = toContents a
    toContents (Attributes_text_Listitem a) = toContents a
    toContents (Attributes_text_Content a) = toContents a
    toContents (Attributes_text_Table a) = toContents a
    toContents (Attributes_text_Note a) = toContents a
    toContents (Attributes_text_Register_link a) = toContents a
    toContents (Attributes_text_Instruction a) = toContents a
    toContents (Attributes_text_Xref a) = toContents a
    toContents (Attributes_text_Arm_defined_word a) = toContents a
    toContents (Attributes_text_Sup a) = toContents a
    toContents (Attributes_text_Sub a) = toContents a
    toContents (Attributes_text_B a) = toContents a
    toContents (Attributes_text_Binarynumber a) = toContents a
    toContents (Attributes_text_Hexnumber a) = toContents a
    toContents (Attributes_text_Signal a) = toContents a
    toContents (Attributes_text_Syntax a) = toContents a
    toContents (Attributes_text_Value a) = toContents a
    toContents (Attributes_text_Function a) = toContents a
    toContents (Attributes_text_AEnum a) = toContents a
    toContents (Attributes_text_Enumvalue a) = toContents a
    toContents (Attributes_text_Url a) = toContents a
    parseContents = oneOf
        [ return (Attributes_text_Str) `apply` text
        , return (Attributes_text_Para) `apply` parseContents
        , return (Attributes_text_List) `apply` parseContents
        , return (Attributes_text_Listitem) `apply` parseContents
        , return (Attributes_text_Content) `apply` parseContents
        , return (Attributes_text_Table) `apply` parseContents
        , return (Attributes_text_Note) `apply` parseContents
        , return (Attributes_text_Register_link) `apply` parseContents
        , return (Attributes_text_Instruction) `apply` parseContents
        , return (Attributes_text_Xref) `apply` parseContents
        , return (Attributes_text_Arm_defined_word) `apply` parseContents
        , return (Attributes_text_Sup) `apply` parseContents
        , return (Attributes_text_Sub) `apply` parseContents
        , return (Attributes_text_B) `apply` parseContents
        , return (Attributes_text_Binarynumber) `apply` parseContents
        , return (Attributes_text_Hexnumber) `apply` parseContents
        , return (Attributes_text_Signal) `apply` parseContents
        , return (Attributes_text_Syntax) `apply` parseContents
        , return (Attributes_text_Value) `apply` parseContents
        , return (Attributes_text_Function) `apply` parseContents
        , return (Attributes_text_AEnum) `apply` parseContents
        , return (Attributes_text_Enumvalue) `apply` parseContents
        , return (Attributes_text_Url) `apply` parseContents
        ] `adjustErr` ("in <attributes_text>, "++)

instance HTypeable Reg_fieldsets where
    toHType x = Defined "reg_fieldsets" [] []
instance XmlContent Reg_fieldsets where
    toContents (Reg_fieldsets a b c) =
        [CElem (Elem (N "reg_fieldsets") [] (maybe [] toContents a ++
                                             concatMap toContents b ++ concatMap toContents c)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["reg_fieldsets"]
        ; interior e $ return (Reg_fieldsets)
                       `apply` optional parseContents `apply` many parseContents
                       `apply` many parseContents
        } `adjustErr` ("in <reg_fieldsets>, "++)

instance HTypeable Shared_fields where
    toHType x = Defined "shared_fields" [] []
instance XmlContent Shared_fields where
    toContents (Shared_fields a) =
        [CElem (Elem (N "shared_fields") [] (concatMap toContents a)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["shared_fields"]
        ; interior e $ return (Shared_fields) `apply` many parseContents
        } `adjustErr` ("in <shared_fields>, "++)

instance HTypeable Fields where
    toHType x = Defined "fields" [] []
instance XmlContent Fields where
    toContents (Fields as a b c d) =
        [CElem (Elem (N "fields") (toAttrs as) (maybe [] toContents a ++
                                                maybe [] toContents b ++ toContents c ++
                                                maybe [] toContents d)) ()]
    parseContents = do
        { e@(Elem _ as _) <- element ["fields"]
        ; interior e $ return (Fields (fromAttrs as))
                       `apply` optional parseContents `apply` optional parseContents
                       `apply` parseContents `apply` optional parseContents
        } `adjustErr` ("in <fields>, "++)
instance XmlAttributes Fields_Attrs where
    fromAttrs as =
        Fields_Attrs
          { fieldsLength = definiteA fromAttrToStr "fields" "length" as
          }
    toAttrs v = catMaybes 
        [ toAttrFrStr "length" (fieldsLength v)
        ]

instance HTypeable Fields_condition where
    toHType x = Defined "fields_condition" [] []
instance XmlContent Fields_condition where
    toContents (Fields_condition a) =
        [CElem (Elem (N "fields_condition") [] (toText a)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["fields_condition"]
        ; interior e $ return (Fields_condition)
                       `apply` (text `onFail` return "")
        } `adjustErr` ("in <fields_condition>, "++)

instance HTypeable Text_before_fields where
    toHType x = Defined "text_before_fields" [] []
instance XmlContent Text_before_fields where
    toContents (Text_before_fields a) =
        [CElem (Elem (N "text_before_fields") [] (concatMap toContents a)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["text_before_fields"]
        ; interior e $ return (Text_before_fields)
                       `apply` many parseContents
        } `adjustErr` ("in <text_before_fields>, "++)

instance HTypeable Text_before_fields_ where
    toHType x = Defined "text_before_fields" [] []
instance XmlContent Text_before_fields_ where
    toContents (Text_before_fields_Str a) = toText a
    toContents (Text_before_fields_Para a) = toContents a
    toContents (Text_before_fields_List a) = toContents a
    toContents (Text_before_fields_Listitem a) = toContents a
    toContents (Text_before_fields_Content a) = toContents a
    toContents (Text_before_fields_Table a) = toContents a
    toContents (Text_before_fields_Note a) = toContents a
    toContents (Text_before_fields_Register_link a) = toContents a
    toContents (Text_before_fields_Instruction a) = toContents a
    toContents (Text_before_fields_Xref a) = toContents a
    toContents (Text_before_fields_Arm_defined_word a) = toContents a
    toContents (Text_before_fields_Sup a) = toContents a
    toContents (Text_before_fields_Sub a) = toContents a
    toContents (Text_before_fields_B a) = toContents a
    toContents (Text_before_fields_Binarynumber a) = toContents a
    toContents (Text_before_fields_Hexnumber a) = toContents a
    toContents (Text_before_fields_Signal a) = toContents a
    toContents (Text_before_fields_Syntax a) = toContents a
    toContents (Text_before_fields_Value a) = toContents a
    toContents (Text_before_fields_Function a) = toContents a
    toContents (Text_before_fields_AEnum a) = toContents a
    toContents (Text_before_fields_Enumvalue a) = toContents a
    toContents (Text_before_fields_Url a) = toContents a
    parseContents = oneOf
        [ return (Text_before_fields_Str) `apply` text
        , return (Text_before_fields_Para) `apply` parseContents
        , return (Text_before_fields_List) `apply` parseContents
        , return (Text_before_fields_Listitem) `apply` parseContents
        , return (Text_before_fields_Content) `apply` parseContents
        , return (Text_before_fields_Table) `apply` parseContents
        , return (Text_before_fields_Note) `apply` parseContents
        , return (Text_before_fields_Register_link) `apply` parseContents
        , return (Text_before_fields_Instruction) `apply` parseContents
        , return (Text_before_fields_Xref) `apply` parseContents
        , return (Text_before_fields_Arm_defined_word)
          `apply` parseContents
        , return (Text_before_fields_Sup) `apply` parseContents
        , return (Text_before_fields_Sub) `apply` parseContents
        , return (Text_before_fields_B) `apply` parseContents
        , return (Text_before_fields_Binarynumber) `apply` parseContents
        , return (Text_before_fields_Hexnumber) `apply` parseContents
        , return (Text_before_fields_Signal) `apply` parseContents
        , return (Text_before_fields_Syntax) `apply` parseContents
        , return (Text_before_fields_Value) `apply` parseContents
        , return (Text_before_fields_Function) `apply` parseContents
        , return (Text_before_fields_AEnum) `apply` parseContents
        , return (Text_before_fields_Enumvalue) `apply` parseContents
        , return (Text_before_fields_Url) `apply` parseContents
        ] `adjustErr` ("in <text_before_fields>, "++)

instance HTypeable Text_after_fields where
    toHType x = Defined "text_after_fields" [] []
instance XmlContent Text_after_fields where
    toContents (Text_after_fields a) =
        [CElem (Elem (N "text_after_fields") [] (concatMap toContents a)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["text_after_fields"]
        ; interior e $ return (Text_after_fields)
                       `apply` many parseContents
        } `adjustErr` ("in <text_after_fields>, "++)

instance HTypeable Text_after_fields_ where
    toHType x = Defined "text_after_fields" [] []
instance XmlContent Text_after_fields_ where
    toContents (Text_after_fields_Str a) = toText a
    toContents (Text_after_fields_Para a) = toContents a
    toContents (Text_after_fields_List a) = toContents a
    toContents (Text_after_fields_Listitem a) = toContents a
    toContents (Text_after_fields_Content a) = toContents a
    toContents (Text_after_fields_Table a) = toContents a
    toContents (Text_after_fields_Note a) = toContents a
    toContents (Text_after_fields_Register_link a) = toContents a
    toContents (Text_after_fields_Instruction a) = toContents a
    toContents (Text_after_fields_Xref a) = toContents a
    toContents (Text_after_fields_Arm_defined_word a) = toContents a
    toContents (Text_after_fields_Sup a) = toContents a
    toContents (Text_after_fields_Sub a) = toContents a
    toContents (Text_after_fields_B a) = toContents a
    toContents (Text_after_fields_Binarynumber a) = toContents a
    toContents (Text_after_fields_Hexnumber a) = toContents a
    toContents (Text_after_fields_Signal a) = toContents a
    toContents (Text_after_fields_Syntax a) = toContents a
    toContents (Text_after_fields_Value a) = toContents a
    toContents (Text_after_fields_Function a) = toContents a
    toContents (Text_after_fields_AEnum a) = toContents a
    toContents (Text_after_fields_Enumvalue a) = toContents a
    toContents (Text_after_fields_Url a) = toContents a
    parseContents = oneOf
        [ return (Text_after_fields_Str) `apply` text
        , return (Text_after_fields_Para) `apply` parseContents
        , return (Text_after_fields_List) `apply` parseContents
        , return (Text_after_fields_Listitem) `apply` parseContents
        , return (Text_after_fields_Content) `apply` parseContents
        , return (Text_after_fields_Table) `apply` parseContents
        , return (Text_after_fields_Note) `apply` parseContents
        , return (Text_after_fields_Register_link) `apply` parseContents
        , return (Text_after_fields_Instruction) `apply` parseContents
        , return (Text_after_fields_Xref) `apply` parseContents
        , return (Text_after_fields_Arm_defined_word) `apply` parseContents
        , return (Text_after_fields_Sup) `apply` parseContents
        , return (Text_after_fields_Sub) `apply` parseContents
        , return (Text_after_fields_B) `apply` parseContents
        , return (Text_after_fields_Binarynumber) `apply` parseContents
        , return (Text_after_fields_Hexnumber) `apply` parseContents
        , return (Text_after_fields_Signal) `apply` parseContents
        , return (Text_after_fields_Syntax) `apply` parseContents
        , return (Text_after_fields_Value) `apply` parseContents
        , return (Text_after_fields_Function) `apply` parseContents
        , return (Text_after_fields_AEnum) `apply` parseContents
        , return (Text_after_fields_Enumvalue) `apply` parseContents
        , return (Text_after_fields_Url) `apply` parseContents
        ] `adjustErr` ("in <text_after_fields>, "++)

instance HTypeable Field where
    toHType x = Defined "field" [] []
instance XmlContent Field where
    toContents (Field as a b c d e f g h i j k l) =
        [CElem (Elem (N "field") (toAttrs as) (maybe [] toContents a ++
                                               maybe [] toContents b ++ toContents c ++ toContents d
                                               ++ maybe [] toContents e ++ concatMap toContents f ++
                                               toContents g ++ concatMap toContents h ++
                                               maybe [] toContents i ++ maybe [] toContents j ++
                                               concatMap toContents k ++ maybe [] toContents l)) ()]
    parseContents = do
        { e@(Elem _ as _) <- element ["field"]
        ; interior e $ return (Field (fromAttrs as))
                       `apply` optional parseContents `apply` optional parseContents
                       `apply` parseContents `apply` parseContents
                       `apply` optional parseContents `apply` many parseContents
                       `apply` parseContents `apply` many parseContents
                       `apply` optional parseContents `apply` optional parseContents
                       `apply` many parseContents `apply` optional parseContents
        } `adjustErr` ("in <field>, "++)
instance XmlAttributes Field_Attrs where
    fromAttrs as =
        Field_Attrs
          { fieldIs_variable_length = definiteA fromAttrToTyp "field" "is_variable_length" as
          , fieldHas_partial_fieldset = definiteA fromAttrToTyp "field" "has_partial_fieldset" as
          , fieldIs_linked_to_partial_fieldset = definiteA fromAttrToTyp "field" "is_linked_to_partial_fieldset" as
          , fieldIs_access_restriction_possible = definiteA fromAttrToTyp "field" "is_access_restriction_possible" as
          , fieldId = definiteA fromAttrToStr "field" "id" as
          }
    toAttrs v = catMaybes 
        [ toAttrFrTyp "is_variable_length" (fieldIs_variable_length v)
        , toAttrFrTyp "has_partial_fieldset" (fieldHas_partial_fieldset v)
        , toAttrFrTyp "is_linked_to_partial_fieldset" (fieldIs_linked_to_partial_fieldset v)
        , toAttrFrTyp "is_access_restriction_possible" (fieldIs_access_restriction_possible v)
        , toAttrFrStr "id" (fieldId v)
        ]

instance XmlAttrType Field_is_variable_length where
    fromAttrToTyp n (N n',v)
        | n==n'     = translate (attr2str v)
        | otherwise = Nothing
      where translate "True" = Just Field_is_variable_length_True
            translate "False" = Just Field_is_variable_length_False
            translate _ = Nothing
    toAttrFrTyp n Field_is_variable_length_True = Just (N n, str2attr "True")
    toAttrFrTyp n Field_is_variable_length_False = Just (N n, str2attr "False")

instance XmlAttrType Field_has_partial_fieldset where
    fromAttrToTyp n (N n',v)
        | n==n'     = translate (attr2str v)
        | otherwise = Nothing
      where translate "True" = Just Field_has_partial_fieldset_True
            translate "False" = Just Field_has_partial_fieldset_False
            translate _ = Nothing
    toAttrFrTyp n Field_has_partial_fieldset_True = Just (N n, str2attr "True")
    toAttrFrTyp n Field_has_partial_fieldset_False = Just (N n, str2attr "False")

instance XmlAttrType Field_is_linked_to_partial_fieldset where
    fromAttrToTyp n (N n',v)
        | n==n'     = translate (attr2str v)
        | otherwise = Nothing
      where translate "True" = Just Field_is_linked_to_partial_fieldset_True
            translate "False" = Just Field_is_linked_to_partial_fieldset_False
            translate _ = Nothing
    toAttrFrTyp n Field_is_linked_to_partial_fieldset_True = Just (N n, str2attr "True")
    toAttrFrTyp n Field_is_linked_to_partial_fieldset_False = Just (N n, str2attr "False")

instance XmlAttrType Field_is_access_restriction_possible where
    fromAttrToTyp n (N n',v)
        | n==n'     = translate (attr2str v)
        | otherwise = Nothing
      where translate "True" = Just Field_is_access_restriction_possible_True
            translate "False" = Just Field_is_access_restriction_possible_False
            translate _ = Nothing
    toAttrFrTyp n Field_is_access_restriction_possible_True = Just (N n, str2attr "True")
    toAttrFrTyp n Field_is_access_restriction_possible_False = Just (N n, str2attr "False")

instance HTypeable Field_name where
    toHType x = Defined "field_name" [] []
instance XmlContent Field_name where
    toContents (Field_name a) =
        [CElem (Elem (N "field_name") [] (toText a)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["field_name"]
        ; interior e $ return (Field_name)
                       `apply` (text `onFail` return "")
        } `adjustErr` ("in <field_name>, "++)

instance HTypeable Field_shortdesc where
    toHType x = Defined "field_shortdesc" [] []
instance XmlContent Field_shortdesc where
    toContents (Field_shortdesc a) =
        [CElem (Elem (N "field_shortdesc") [] (concatMap toContents a)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["field_shortdesc"]
        ; interior e $ return (Field_shortdesc) `apply` many parseContents
        } `adjustErr` ("in <field_shortdesc>, "++)

instance HTypeable Field_shortdesc_ where
    toHType x = Defined "field_shortdesc" [] []
instance XmlContent Field_shortdesc_ where
    toContents (Field_shortdesc_Str a) = toText a
    toContents (Field_shortdesc_Para a) = toContents a
    toContents (Field_shortdesc_List a) = toContents a
    toContents (Field_shortdesc_Listitem a) = toContents a
    toContents (Field_shortdesc_Content a) = toContents a
    toContents (Field_shortdesc_Table a) = toContents a
    toContents (Field_shortdesc_Note a) = toContents a
    toContents (Field_shortdesc_Register_link a) = toContents a
    toContents (Field_shortdesc_Instruction a) = toContents a
    toContents (Field_shortdesc_Xref a) = toContents a
    toContents (Field_shortdesc_Arm_defined_word a) = toContents a
    toContents (Field_shortdesc_Sup a) = toContents a
    toContents (Field_shortdesc_Sub a) = toContents a
    toContents (Field_shortdesc_B a) = toContents a
    toContents (Field_shortdesc_Binarynumber a) = toContents a
    toContents (Field_shortdesc_Hexnumber a) = toContents a
    toContents (Field_shortdesc_Signal a) = toContents a
    toContents (Field_shortdesc_Syntax a) = toContents a
    toContents (Field_shortdesc_Value a) = toContents a
    toContents (Field_shortdesc_Function a) = toContents a
    toContents (Field_shortdesc_AEnum a) = toContents a
    toContents (Field_shortdesc_Enumvalue a) = toContents a
    toContents (Field_shortdesc_Url a) = toContents a
    parseContents = oneOf
        [ return (Field_shortdesc_Str) `apply` text
        , return (Field_shortdesc_Para) `apply` parseContents
        , return (Field_shortdesc_List) `apply` parseContents
        , return (Field_shortdesc_Listitem) `apply` parseContents
        , return (Field_shortdesc_Content) `apply` parseContents
        , return (Field_shortdesc_Table) `apply` parseContents
        , return (Field_shortdesc_Note) `apply` parseContents
        , return (Field_shortdesc_Register_link) `apply` parseContents
        , return (Field_shortdesc_Instruction) `apply` parseContents
        , return (Field_shortdesc_Xref) `apply` parseContents
        , return (Field_shortdesc_Arm_defined_word) `apply` parseContents
        , return (Field_shortdesc_Sup) `apply` parseContents
        , return (Field_shortdesc_Sub) `apply` parseContents
        , return (Field_shortdesc_B) `apply` parseContents
        , return (Field_shortdesc_Binarynumber) `apply` parseContents
        , return (Field_shortdesc_Hexnumber) `apply` parseContents
        , return (Field_shortdesc_Signal) `apply` parseContents
        , return (Field_shortdesc_Syntax) `apply` parseContents
        , return (Field_shortdesc_Value) `apply` parseContents
        , return (Field_shortdesc_Function) `apply` parseContents
        , return (Field_shortdesc_AEnum) `apply` parseContents
        , return (Field_shortdesc_Enumvalue) `apply` parseContents
        , return (Field_shortdesc_Url) `apply` parseContents
        ] `adjustErr` ("in <field_shortdesc>, "++)

instance HTypeable Field_msb where
    toHType x = Defined "field_msb" [] []
instance XmlContent Field_msb where
    toContents (Field_msb a) =
        [CElem (Elem (N "field_msb") [] (toText a)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["field_msb"]
        ; interior e $ return (Field_msb) `apply` (text `onFail` return "")
        } `adjustErr` ("in <field_msb>, "++)

instance HTypeable Field_lsb where
    toHType x = Defined "field_lsb" [] []
instance XmlContent Field_lsb where
    toContents (Field_lsb a) =
        [CElem (Elem (N "field_lsb") [] (toText a)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["field_lsb"]
        ; interior e $ return (Field_lsb) `apply` (text `onFail` return "")
        } `adjustErr` ("in <field_lsb>, "++)

instance HTypeable Partial_fieldset where
    toHType x = Defined "partial_fieldset" [] []
instance XmlContent Partial_fieldset where
    toContents (Partial_fieldset as a b c) =
        [CElem (Elem (N "partial_fieldset") (toAttrs as) (toContents a ++
                                                          toContents b ++ toContents c)) ()]
    parseContents = do
        { e@(Elem _ as _) <- element ["partial_fieldset"]
        ; interior e $ return (Partial_fieldset (fromAttrs as))
                       `apply` parseContents `apply` parseContents `apply` parseContents
        } `adjustErr` ("in <partial_fieldset>, "++)
instance XmlAttributes Partial_fieldset_Attrs where
    fromAttrs as =
        Partial_fieldset_Attrs
          { partial_fieldsetLinked_field_name = definiteA fromAttrToStr "partial_fieldset" "linked_field_name" as
          }
    toAttrs v = catMaybes 
        [ toAttrFrStr "linked_field_name" (partial_fieldsetLinked_field_name v)
        ]

instance HTypeable Linked_value where
    toHType x = Defined "linked_value" [] []
instance XmlContent Linked_value where
    toContents (Linked_value as a) =
        [CElem (Elem (N "linked_value") (toAttrs as) (concatMap toContents a)) ()]
    parseContents = do
        { e@(Elem _ as _) <- element ["linked_value"]
        ; interior e $ return (Linked_value (fromAttrs as))
                       `apply` many parseContents
        } `adjustErr` ("in <linked_value>, "++)
instance XmlAttributes Linked_value_Attrs where
    fromAttrs as =
        Linked_value_Attrs
          { linked_valueValue = definiteA fromAttrToStr "linked_value" "value" as
          }
    toAttrs v = catMaybes 
        [ toAttrFrStr "value" (linked_valueValue v)
        ]

instance HTypeable Linked_value_ where
    toHType x = Defined "linked_value" [] []
instance XmlContent Linked_value_ where
    toContents (Linked_value_Str a) = toText a
    toContents (Linked_value_Register_link a) = toContents a
    toContents (Linked_value_Instruction a) = toContents a
    toContents (Linked_value_Xref a) = toContents a
    toContents (Linked_value_Arm_defined_word a) = toContents a
    toContents (Linked_value_Sup a) = toContents a
    toContents (Linked_value_Sub a) = toContents a
    toContents (Linked_value_B a) = toContents a
    toContents (Linked_value_Binarynumber a) = toContents a
    toContents (Linked_value_Hexnumber a) = toContents a
    toContents (Linked_value_Signal a) = toContents a
    toContents (Linked_value_Syntax a) = toContents a
    toContents (Linked_value_Value a) = toContents a
    toContents (Linked_value_Function a) = toContents a
    toContents (Linked_value_AEnum a) = toContents a
    toContents (Linked_value_Enumvalue a) = toContents a
    toContents (Linked_value_Url a) = toContents a
    parseContents = oneOf
        [ return (Linked_value_Str) `apply` text
        , return (Linked_value_Register_link) `apply` parseContents
        , return (Linked_value_Instruction) `apply` parseContents
        , return (Linked_value_Xref) `apply` parseContents
        , return (Linked_value_Arm_defined_word) `apply` parseContents
        , return (Linked_value_Sup) `apply` parseContents
        , return (Linked_value_Sub) `apply` parseContents
        , return (Linked_value_B) `apply` parseContents
        , return (Linked_value_Binarynumber) `apply` parseContents
        , return (Linked_value_Hexnumber) `apply` parseContents
        , return (Linked_value_Signal) `apply` parseContents
        , return (Linked_value_Syntax) `apply` parseContents
        , return (Linked_value_Value) `apply` parseContents
        , return (Linked_value_Function) `apply` parseContents
        , return (Linked_value_AEnum) `apply` parseContents
        , return (Linked_value_Enumvalue) `apply` parseContents
        , return (Linked_value_Url) `apply` parseContents
        ] `adjustErr` ("in <linked_value>, "++)

instance HTypeable Field_array where
    toHType x = Defined "field_array" [] []
instance XmlContent Field_array where
    toContents (Field_array a b c) =
        [CElem (Elem (N "field_array") [] (toContents a ++ toContents b ++
                                           toContents c)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["field_array"]
        ; interior e $ return (Field_array) `apply` parseContents
                       `apply` parseContents `apply` parseContents
        } `adjustErr` ("in <field_array>, "++)

instance HTypeable Field_array_start where
    toHType x = Defined "field_array_start" [] []
instance XmlContent Field_array_start where
    toContents (Field_array_start a) =
        [CElem (Elem (N "field_array_start") [] (toText a)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["field_array_start"]
        ; interior e $ return (Field_array_start)
                       `apply` (text `onFail` return "")
        } `adjustErr` ("in <field_array_start>, "++)

instance HTypeable Field_array_end where
    toHType x = Defined "field_array_end" [] []
instance XmlContent Field_array_end where
    toContents (Field_array_end a) =
        [CElem (Elem (N "field_array_end") [] (toText a)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["field_array_end"]
        ; interior e $ return (Field_array_end)
                       `apply` (text `onFail` return "")
        } `adjustErr` ("in <field_array_end>, "++)

instance HTypeable Field_array_description where
    toHType x = Defined "field_array_description" [] []
instance XmlContent Field_array_description where
    toContents (Field_array_description a) =
        [CElem (Elem (N "field_array_description") [] (toText a)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["field_array_description"]
        ; interior e $ return (Field_array_description)
                       `apply` (text `onFail` return "")
        } `adjustErr` ("in <field_array_description>, "++)

instance HTypeable Field_description where
    toHType x = Defined "field_description" [] []
instance XmlContent Field_description where
    toContents (Field_description as a) =
        [CElem (Elem (N "field_description") (toAttrs as) (concatMap toContents a)) ()]
    parseContents = do
        { e@(Elem _ as _) <- element ["field_description"]
        ; interior e $ return (Field_description (fromAttrs as))
                       `apply` many parseContents
        } `adjustErr` ("in <field_description>, "++)
instance XmlAttributes Field_description_Attrs where
    fromAttrs as =
        Field_description_Attrs
          { field_descriptionOrder = definiteA fromAttrToTyp "field_description" "order" as
          }
    toAttrs v = catMaybes 
        [ toAttrFrTyp "order" (field_descriptionOrder v)
        ]

instance HTypeable Field_description_ where
    toHType x = Defined "field_description" [] []
instance XmlContent Field_description_ where
    toContents (Field_description_Str a) = toText a
    toContents (Field_description_Para a) = toContents a
    toContents (Field_description_List a) = toContents a
    toContents (Field_description_Listitem a) = toContents a
    toContents (Field_description_Content a) = toContents a
    toContents (Field_description_Table a) = toContents a
    toContents (Field_description_Note a) = toContents a
    toContents (Field_description_Register_link a) = toContents a
    toContents (Field_description_Instruction a) = toContents a
    toContents (Field_description_Xref a) = toContents a
    toContents (Field_description_Arm_defined_word a) = toContents a
    toContents (Field_description_Sup a) = toContents a
    toContents (Field_description_Sub a) = toContents a
    toContents (Field_description_B a) = toContents a
    toContents (Field_description_Binarynumber a) = toContents a
    toContents (Field_description_Hexnumber a) = toContents a
    toContents (Field_description_Signal a) = toContents a
    toContents (Field_description_Syntax a) = toContents a
    toContents (Field_description_Value a) = toContents a
    toContents (Field_description_Function a) = toContents a
    toContents (Field_description_AEnum a) = toContents a
    toContents (Field_description_Enumvalue a) = toContents a
    toContents (Field_description_Url a) = toContents a
    parseContents = oneOf
        [ return (Field_description_Str) `apply` text
        , return (Field_description_Para) `apply` parseContents
        , return (Field_description_List) `apply` parseContents
        , return (Field_description_Listitem) `apply` parseContents
        , return (Field_description_Content) `apply` parseContents
        , return (Field_description_Table) `apply` parseContents
        , return (Field_description_Note) `apply` parseContents
        , return (Field_description_Register_link) `apply` parseContents
        , return (Field_description_Instruction) `apply` parseContents
        , return (Field_description_Xref) `apply` parseContents
        , return (Field_description_Arm_defined_word) `apply` parseContents
        , return (Field_description_Sup) `apply` parseContents
        , return (Field_description_Sub) `apply` parseContents
        , return (Field_description_B) `apply` parseContents
        , return (Field_description_Binarynumber) `apply` parseContents
        , return (Field_description_Hexnumber) `apply` parseContents
        , return (Field_description_Signal) `apply` parseContents
        , return (Field_description_Syntax) `apply` parseContents
        , return (Field_description_Value) `apply` parseContents
        , return (Field_description_Function) `apply` parseContents
        , return (Field_description_AEnum) `apply` parseContents
        , return (Field_description_Enumvalue) `apply` parseContents
        , return (Field_description_Url) `apply` parseContents
        ] `adjustErr` ("in <field_description>, "++)

instance XmlAttrType Field_description_order where
    fromAttrToTyp n (N n',v)
        | n==n'     = translate (attr2str v)
        | otherwise = Nothing
      where translate "before" = Just Field_description_order_before
            translate "value" = Just Field_description_order_value
            translate "after" = Just Field_description_order_after
            translate _ = Nothing
    toAttrFrTyp n Field_description_order_before = Just (N n, str2attr "before")
    toAttrFrTyp n Field_description_order_value = Just (N n, str2attr "value")
    toAttrFrTyp n Field_description_order_after = Just (N n, str2attr "after")

instance HTypeable Field_values where
    toHType x = Defined "field_values" [] []
instance XmlContent Field_values where
    toContents (Field_values a b) =
        [CElem (Elem (N "field_values") [] (maybe [] toContents a ++
                                            concatMap toContents b)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["field_values"]
        ; interior e $ return (Field_values) `apply` optional parseContents
                       `apply` many parseContents
        } `adjustErr` ("in <field_values>, "++)

instance HTypeable Field_value_name where
    toHType x = Defined "field_value_name" [] []
instance XmlContent Field_value_name where
    toContents (Field_value_name a) =
        [CElem (Elem (N "field_value_name") [] (toText a)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["field_value_name"]
        ; interior e $ return (Field_value_name)
                       `apply` (text `onFail` return "")
        } `adjustErr` ("in <field_value_name>, "++)

instance HTypeable Field_value_instance where
    toHType x = Defined "field_value_instance" [] []
instance XmlContent Field_value_instance where
    toContents (Field_value_instance a b c d) =
        [CElem (Elem (N "field_value_instance") [] (toContents a ++
                                                    toContents b ++ maybe [] toContents c ++
                                                    maybe [] toContents d)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["field_value_instance"]
        ; interior e $ return (Field_value_instance) `apply` parseContents
                       `apply` parseContents `apply` optional parseContents
                       `apply` optional parseContents
        } `adjustErr` ("in <field_value_instance>, "++)

instance HTypeable Field_value where
    toHType x = Defined "field_value" [] []
instance XmlContent Field_value where
    toContents (Field_value a) =
        [CElem (Elem (N "field_value") [] (toText a)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["field_value"]
        ; interior e $ return (Field_value)
                       `apply` (text `onFail` return "")
        } `adjustErr` ("in <field_value>, "++)

instance HTypeable Field_value_description where
    toHType x = Defined "field_value_description" [] []
instance XmlContent Field_value_description where
    toContents (Field_value_description a) =
        [CElem (Elem (N "field_value_description") [] (concatMap toContents a)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["field_value_description"]
        ; interior e $ return (Field_value_description)
                       `apply` many parseContents
        } `adjustErr` ("in <field_value_description>, "++)

instance HTypeable Field_value_description_ where
    toHType x = Defined "field_value_description" [] []
instance XmlContent Field_value_description_ where
    toContents (Field_value_description_Str a) = toText a
    toContents (Field_value_description_Para a) = toContents a
    toContents (Field_value_description_List a) = toContents a
    toContents (Field_value_description_Listitem a) = toContents a
    toContents (Field_value_description_Content a) = toContents a
    toContents (Field_value_description_Table a) = toContents a
    toContents (Field_value_description_Note a) = toContents a
    toContents (Field_value_description_Register_link a) = toContents a
    toContents (Field_value_description_Instruction a) = toContents a
    toContents (Field_value_description_Xref a) = toContents a
    toContents (Field_value_description_Arm_defined_word a) = toContents a
    toContents (Field_value_description_Sup a) = toContents a
    toContents (Field_value_description_Sub a) = toContents a
    toContents (Field_value_description_B a) = toContents a
    toContents (Field_value_description_Binarynumber a) = toContents a
    toContents (Field_value_description_Hexnumber a) = toContents a
    toContents (Field_value_description_Signal a) = toContents a
    toContents (Field_value_description_Syntax a) = toContents a
    toContents (Field_value_description_Value a) = toContents a
    toContents (Field_value_description_Function a) = toContents a
    toContents (Field_value_description_AEnum a) = toContents a
    toContents (Field_value_description_Enumvalue a) = toContents a
    toContents (Field_value_description_Url a) = toContents a
    parseContents = oneOf
        [ return (Field_value_description_Str) `apply` text
        , return (Field_value_description_Para) `apply` parseContents
        , return (Field_value_description_List) `apply` parseContents
        , return (Field_value_description_Listitem) `apply` parseContents
        , return (Field_value_description_Content) `apply` parseContents
        , return (Field_value_description_Table) `apply` parseContents
        , return (Field_value_description_Note) `apply` parseContents
        , return (Field_value_description_Register_link)
          `apply` parseContents
        , return (Field_value_description_Instruction)
          `apply` parseContents
        , return (Field_value_description_Xref) `apply` parseContents
        , return (Field_value_description_Arm_defined_word)
          `apply` parseContents
        , return (Field_value_description_Sup) `apply` parseContents
        , return (Field_value_description_Sub) `apply` parseContents
        , return (Field_value_description_B) `apply` parseContents
        , return (Field_value_description_Binarynumber)
          `apply` parseContents
        , return (Field_value_description_Hexnumber) `apply` parseContents
        , return (Field_value_description_Signal) `apply` parseContents
        , return (Field_value_description_Syntax) `apply` parseContents
        , return (Field_value_description_Value) `apply` parseContents
        , return (Field_value_description_Function) `apply` parseContents
        , return (Field_value_description_AEnum) `apply` parseContents
        , return (Field_value_description_Enumvalue) `apply` parseContents
        , return (Field_value_description_Url) `apply` parseContents
        ] `adjustErr` ("in <field_value_description>, "++)

instance HTypeable Field_value_links_to where
    toHType x = Defined "field_value_links_to" [] []
instance XmlContent Field_value_links_to where
    toContents (Field_value_links_to as a) =
        [CElem (Elem (N "field_value_links_to") (toAttrs as) (toText a)) ()]
    parseContents = do
        { e@(Elem _ as _) <- element ["field_value_links_to"]
        ; interior e $ return (Field_value_links_to (fromAttrs as))
                       `apply` (text `onFail` return "")
        } `adjustErr` ("in <field_value_links_to>, "++)
instance XmlAttributes Field_value_links_to_Attrs where
    fromAttrs as =
        Field_value_links_to_Attrs
          { field_value_links_toLinked_field_name = definiteA fromAttrToStr "field_value_links_to" "linked_field_name" as
          , field_value_links_toLinked_field_condition = definiteA fromAttrToStr "field_value_links_to" "linked_field_condition" as
          }
    toAttrs v = catMaybes 
        [ toAttrFrStr "linked_field_name" (field_value_links_toLinked_field_name v)
        , toAttrFrStr "linked_field_condition" (field_value_links_toLinked_field_condition v)
        ]

instance HTypeable Field_value_applies_to where
    toHType x = Defined "field_value_applies_to" [] []
instance XmlContent Field_value_applies_to where
    toContents (Field_value_applies_to as a) =
        [CElem (Elem (N "field_value_applies_to") (toAttrs as) (concatMap toContents a)) ()]
    parseContents = do
        { e@(Elem _ as _) <- element ["field_value_applies_to"]
        ; interior e $ return (Field_value_applies_to (fromAttrs as))
                       `apply` many parseContents
        } `adjustErr` ("in <field_value_applies_to>, "++)
instance XmlAttributes Field_value_applies_to_Attrs where
    fromAttrs as =
        Field_value_applies_to_Attrs
          { field_value_applies_toApplies_to_all = definiteA fromAttrToTyp "field_value_applies_to" "applies_to_all" as
          }
    toAttrs v = catMaybes 
        [ toAttrFrTyp "applies_to_all" (field_value_applies_toApplies_to_all v)
        ]

instance XmlAttrType Field_value_applies_to_applies_to_all where
    fromAttrToTyp n (N n',v)
        | n==n'     = translate (attr2str v)
        | otherwise = Nothing
      where translate "True" = Just Field_value_applies_to_applies_to_all_True
            translate "False" = Just Field_value_applies_to_applies_to_all_False
            translate _ = Nothing
    toAttrFrTyp n Field_value_applies_to_applies_to_all_True = Just (N n, str2attr "True")
    toAttrFrTyp n Field_value_applies_to_applies_to_all_False = Just (N n, str2attr "False")

instance HTypeable Field_resets where
    toHType x = Defined "field_resets" [] []
instance XmlContent Field_resets where
    toContents (Field_resets a) =
        [CElem (Elem (N "field_resets") [] (concatMap toContents a)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["field_resets"]
        ; interior e $ return (Field_resets) `apply` many parseContents
        } `adjustErr` ("in <field_resets>, "++)

instance HTypeable Field_reset where
    toHType x = Defined "field_reset" [] []
instance XmlContent Field_reset where
    toContents (Field_reset as a) =
        [CElem (Elem (N "field_reset") (toAttrs as) (toContents a)) ()]
    parseContents = do
        { e@(Elem _ as _) <- element ["field_reset"]
        ; interior e $ return (Field_reset (fromAttrs as))
                       `apply` parseContents
        } `adjustErr` ("in <field_reset>, "++)
instance XmlAttributes Field_reset_Attrs where
    fromAttrs as =
        Field_reset_Attrs
          { field_resetReset_type = possibleA fromAttrToStr "reset_type" as
          }
    toAttrs v = catMaybes 
        [ maybeToAttr toAttrFrStr "reset_type" (field_resetReset_type v)
        ]

instance HTypeable Field_reset_number where
    toHType x = Defined "field_reset_number" [] []
instance XmlContent Field_reset_number where
    toContents (Field_reset_number a) =
        [CElem (Elem (N "field_reset_number") [] (toText a)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["field_reset_number"]
        ; interior e $ return (Field_reset_number)
                       `apply` (text `onFail` return "")
        } `adjustErr` ("in <field_reset_number>, "++)

instance HTypeable Field_reset_other_field where
    toHType x = Defined "field_reset_other_field" [] []
instance XmlContent Field_reset_other_field where
    toContents (Field_reset_other_field a b) =
        [CElem (Elem (N "field_reset_other_field") [] (toContents a ++
                                                       toContents b)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["field_reset_other_field"]
        ; interior e $ return (Field_reset_other_field)
                       `apply` parseContents `apply` parseContents
        } `adjustErr` ("in <field_reset_other_field>, "++)

instance HTypeable Field_reset_other_field_regname where
    toHType x = Defined "field_reset_other_field_regname" [] []
instance XmlContent Field_reset_other_field_regname where
    toContents (Field_reset_other_field_regname as a) =
        [CElem (Elem (N "field_reset_other_field_regname") (toAttrs as) (toText a)) ()]
    parseContents = do
        { e@(Elem _ as _) <- element ["field_reset_other_field_regname"]
        ; interior e $ return (Field_reset_other_field_regname (fromAttrs as))
                       `apply` (text `onFail` return "")
        } `adjustErr` ("in <field_reset_other_field_regname>, "++)
instance XmlAttributes Field_reset_other_field_regname_Attrs where
    fromAttrs as =
        Field_reset_other_field_regname_Attrs
          { field_reset_other_field_regnameState = definiteA fromAttrToTyp "field_reset_other_field_regname" "state" as
          }
    toAttrs v = catMaybes 
        [ toAttrFrTyp "state" (field_reset_other_field_regnameState v)
        ]

instance XmlAttrType Field_reset_other_field_regname_state where
    fromAttrToTyp n (N n',v)
        | n==n'     = translate (attr2str v)
        | otherwise = Nothing
      where translate "AArch32" = Just Field_reset_other_field_regname_state_AArch32
            translate "AArch64" = Just Field_reset_other_field_regname_state_AArch64
            translate "ext" = Just Field_reset_other_field_regname_state_ext
            translate _ = Nothing
    toAttrFrTyp n Field_reset_other_field_regname_state_AArch32 = Just (N n, str2attr "AArch32")
    toAttrFrTyp n Field_reset_other_field_regname_state_AArch64 = Just (N n, str2attr "AArch64")
    toAttrFrTyp n Field_reset_other_field_regname_state_ext = Just (N n, str2attr "ext")

instance HTypeable Field_reset_other_field_fieldname where
    toHType x = Defined "field_reset_other_field_fieldname" [] []
instance XmlContent Field_reset_other_field_fieldname where
    toContents (Field_reset_other_field_fieldname a) =
        [CElem (Elem (N "field_reset_other_field_fieldname") [] (toText a)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["field_reset_other_field_fieldname"]
        ; interior e $ return (Field_reset_other_field_fieldname)
                       `apply` (text `onFail` return "")
        } `adjustErr` ("in <field_reset_other_field_fieldname>, "++)

instance HTypeable Field_reset_standard_text where
    toHType x = Defined "field_reset_standard_text" [] []
instance XmlContent Field_reset_standard_text where
    toContents (Field_reset_standard_text a) =
        [CElem (Elem (N "field_reset_standard_text") [] (toText a)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["field_reset_standard_text"]
        ; interior e $ return (Field_reset_standard_text)
                       `apply` (text `onFail` return "")
        } `adjustErr` ("in <field_reset_standard_text>, "++)

instance HTypeable Field_reset_special_text where
    toHType x = Defined "field_reset_special_text" [] []
instance XmlContent Field_reset_special_text where
    toContents (Field_reset_special_text a) =
        [CElem (Elem (N "field_reset_special_text") [] (concatMap toContents a)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["field_reset_special_text"]
        ; interior e $ return (Field_reset_special_text)
                       `apply` many parseContents
        } `adjustErr` ("in <field_reset_special_text>, "++)

instance HTypeable Field_reset_special_text_ where
    toHType x = Defined "field_reset_special_text" [] []
instance XmlContent Field_reset_special_text_ where
    toContents (Field_reset_special_text_Str a) = toText a
    toContents (Field_reset_special_text_Para a) = toContents a
    toContents (Field_reset_special_text_List a) = toContents a
    toContents (Field_reset_special_text_Listitem a) = toContents a
    toContents (Field_reset_special_text_Content a) = toContents a
    toContents (Field_reset_special_text_Table a) = toContents a
    toContents (Field_reset_special_text_Note a) = toContents a
    toContents (Field_reset_special_text_Register_link a) = toContents a
    toContents (Field_reset_special_text_Instruction a) = toContents a
    toContents (Field_reset_special_text_Xref a) = toContents a
    toContents (Field_reset_special_text_Arm_defined_word a) = toContents a
    toContents (Field_reset_special_text_Sup a) = toContents a
    toContents (Field_reset_special_text_Sub a) = toContents a
    toContents (Field_reset_special_text_B a) = toContents a
    toContents (Field_reset_special_text_Binarynumber a) = toContents a
    toContents (Field_reset_special_text_Hexnumber a) = toContents a
    toContents (Field_reset_special_text_Signal a) = toContents a
    toContents (Field_reset_special_text_Syntax a) = toContents a
    toContents (Field_reset_special_text_Value a) = toContents a
    toContents (Field_reset_special_text_Function a) = toContents a
    toContents (Field_reset_special_text_AEnum a) = toContents a
    toContents (Field_reset_special_text_Enumvalue a) = toContents a
    toContents (Field_reset_special_text_Url a) = toContents a
    parseContents = oneOf
        [ return (Field_reset_special_text_Str) `apply` text
        , return (Field_reset_special_text_Para) `apply` parseContents
        , return (Field_reset_special_text_List) `apply` parseContents
        , return (Field_reset_special_text_Listitem) `apply` parseContents
        , return (Field_reset_special_text_Content) `apply` parseContents
        , return (Field_reset_special_text_Table) `apply` parseContents
        , return (Field_reset_special_text_Note) `apply` parseContents
        , return (Field_reset_special_text_Register_link)
          `apply` parseContents
        , return (Field_reset_special_text_Instruction)
          `apply` parseContents
        , return (Field_reset_special_text_Xref) `apply` parseContents
        , return (Field_reset_special_text_Arm_defined_word)
          `apply` parseContents
        , return (Field_reset_special_text_Sup) `apply` parseContents
        , return (Field_reset_special_text_Sub) `apply` parseContents
        , return (Field_reset_special_text_B) `apply` parseContents
        , return (Field_reset_special_text_Binarynumber)
          `apply` parseContents
        , return (Field_reset_special_text_Hexnumber) `apply` parseContents
        , return (Field_reset_special_text_Signal) `apply` parseContents
        , return (Field_reset_special_text_Syntax) `apply` parseContents
        , return (Field_reset_special_text_Value) `apply` parseContents
        , return (Field_reset_special_text_Function) `apply` parseContents
        , return (Field_reset_special_text_AEnum) `apply` parseContents
        , return (Field_reset_special_text_Enumvalue) `apply` parseContents
        , return (Field_reset_special_text_Url) `apply` parseContents
        ] `adjustErr` ("in <field_reset_special_text>, "++)

instance HTypeable Field_access where
    toHType x = Defined "field_access" [] []
instance XmlContent Field_access where
    toContents (Field_access a) =
        [CElem (Elem (N "field_access") [] (toContents a)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["field_access"]
        ; interior e $ return (Field_access) `apply` parseContents
        } `adjustErr` ("in <field_access>, "++)

instance HTypeable Field_access_state where
    toHType x = Defined "field_access_state" [] []
instance XmlContent Field_access_state where
    toContents (Field_access_state a b) =
        [CElem (Elem (N "field_access_state") [] (toContents a ++
                                                  toContents b)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["field_access_state"]
        ; interior e $ return (Field_access_state) `apply` parseContents
                       `apply` parseContents
        } `adjustErr` ("in <field_access_state>, "++)

instance HTypeable Field_access_level where
    toHType x = Defined "field_access_level" [] []
instance XmlContent Field_access_level where
    toContents (Field_access_level a) =
        [CElem (Elem (N "field_access_level") [] (toText a)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["field_access_level"]
        ; interior e $ return (Field_access_level)
                       `apply` (text `onFail` return "")
        } `adjustErr` ("in <field_access_level>, "++)

instance HTypeable Field_access_type where
    toHType x = Defined "field_access_type" [] []
instance XmlContent Field_access_type where
    toContents (Field_access_type a) =
        [CElem (Elem (N "field_access_type") [] (toText a)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["field_access_type"]
        ; interior e $ return (Field_access_type)
                       `apply` (text `onFail` return "")
        } `adjustErr` ("in <field_access_type>, "++)

instance HTypeable Reg_fieldset where
    toHType x = Defined "reg_fieldset" [] []
instance XmlContent Reg_fieldset where
    toContents (Reg_fieldset as a b c) =
        [CElem (Elem (N "reg_fieldset") (toAttrs as) (maybe [] toContents a
                                                      ++ maybe [] toContents b ++ toContents c)) ()]
    parseContents = do
        { e@(Elem _ as _) <- element ["reg_fieldset"]
        ; interior e $ return (Reg_fieldset (fromAttrs as))
                       `apply` optional parseContents `apply` optional parseContents
                       `apply` parseContents
        } `adjustErr` ("in <reg_fieldset>, "++)
instance XmlAttributes Reg_fieldset_Attrs where
    fromAttrs as =
        Reg_fieldset_Attrs
          { reg_fieldsetLength = definiteA fromAttrToStr "reg_fieldset" "length" as
          }
    toAttrs v = catMaybes 
        [ toAttrFrStr "length" (reg_fieldsetLength v)
        ]

instance HTypeable Fieldat where
    toHType x = Defined "fieldat" [] []
instance XmlContent Fieldat where
    toContents as =
        [CElem (Elem (N "fieldat") (toAttrs as) []) ()]
    parseContents = do
        { (Elem _ as []) <- element ["fieldat"]
        ; return (fromAttrs as)
        } `adjustErr` ("in <fieldat>, "++)
instance XmlAttributes Fieldat where
    fromAttrs as =
        Fieldat
          { fieldatId = possibleA fromAttrToStr "id" as
          , fieldatMsb = definiteA fromAttrToStr "fieldat" "msb" as
          , fieldatLsb = definiteA fromAttrToStr "fieldat" "lsb" as
          }
    toAttrs v = catMaybes 
        [ maybeToAttr toAttrFrStr "id" (fieldatId v)
        , toAttrFrStr "msb" (fieldatMsb v)
        , toAttrFrStr "lsb" (fieldatLsb v)
        ]

instance HTypeable Timestamp where
    toHType x = Defined "timestamp" [] []
instance XmlContent Timestamp where
    toContents (Timestamp a) =
        [CElem (Elem (N "timestamp") [] (toText a)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["timestamp"]
        ; interior e $ return (Timestamp) `apply` (text `onFail` return "")
        } `adjustErr` ("in <timestamp>, "++)

instance HTypeable Reg_variables where
    toHType x = Defined "reg_variables" [] []
instance XmlContent Reg_variables where
    toContents (Reg_variables a) =
        [CElem (Elem (N "reg_variables") [] (toContents a)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["reg_variables"]
        ; interior e $ return (Reg_variables) `apply` parseContents
        } `adjustErr` ("in <reg_variables>, "++)

instance HTypeable Reg_variable where
    toHType x = Defined "reg_variable" [] []
instance XmlContent Reg_variable where
    toContents (Reg_variable as a) =
        [CElem (Elem (N "reg_variable") (toAttrs as) (concatMap toContents a)) ()]
    parseContents = do
        { e@(Elem _ as _) <- element ["reg_variable"]
        ; interior e $ return (Reg_variable (fromAttrs as))
                       `apply` many parseContents
        } `adjustErr` ("in <reg_variable>, "++)
instance XmlAttributes Reg_variable_Attrs where
    fromAttrs as =
        Reg_variable_Attrs
          { reg_variableVariable = definiteA fromAttrToStr "reg_variable" "variable" as
          , reg_variablePrefix = possibleA fromAttrToStr "prefix" as
          , reg_variableMin = possibleA fromAttrToStr "min" as
          , reg_variableMax = possibleA fromAttrToStr "max" as
          }
    toAttrs v = catMaybes 
        [ toAttrFrStr "variable" (reg_variableVariable v)
        , maybeToAttr toAttrFrStr "prefix" (reg_variablePrefix v)
        , maybeToAttr toAttrFrStr "min" (reg_variableMin v)
        , maybeToAttr toAttrFrStr "max" (reg_variableMax v)
        ]

instance HTypeable Reg_variable_val where
    toHType x = Defined "reg_variable_val" [] []
instance XmlContent Reg_variable_val where
    toContents (Reg_variable_val a) =
        [CElem (Elem (N "reg_variable_val") [] (toText a)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["reg_variable_val"]
        ; interior e $ return (Reg_variable_val)
                       `apply` (text `onFail` return "")
        } `adjustErr` ("in <reg_variable_val>, "++)

instance HTypeable Access_mechanisms where
    toHType x = Defined "access_mechanisms" [] []
instance XmlContent Access_mechanisms where
    toContents (Access_mechanisms a b c d) =
        [CElem (Elem (N "access_mechanisms") [] (toContents a ++
                                                 maybe [] toContents b ++ maybe [] toContents c ++
                                                 concatMap toContents d)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["access_mechanisms"]
        ; interior e $ return (Access_mechanisms) `apply` parseContents
                       `apply` optional parseContents `apply` optional parseContents
                       `apply` many parseContents
        } `adjustErr` ("in <access_mechanisms>, "++)

instance HTypeable Access_mechanism where
    toHType x = Defined "access_mechanism" [] []
instance XmlContent Access_mechanism where
    toContents (Access_mechanism a) =
        [CElem (Elem (N "access_mechanism") [] (toContents a)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["access_mechanism"]
        ; interior e $ return (Access_mechanism) `apply` parseContents
        } `adjustErr` ("in <access_mechanism>, "++)

instance HTypeable Access_instructions where
    toHType x = Defined "access_instructions" [] []
instance XmlContent Access_instructions where
    toContents (Access_instructions a b) =
        [CElem (Elem (N "access_instructions") [] (toContents a ++
                                                   toContents b)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["access_instructions"]
        ; interior e $ return (Access_instructions) `apply` parseContents
                       `apply` parseContents
        } `adjustErr` ("in <access_instructions>, "++)

instance HTypeable Defvar where
    toHType x = Defined "defvar" [] []
instance XmlContent Defvar where
    toContents (Defvar as a) =
        [CElem (Elem (N "defvar") (toAttrs as) (toContents a)) ()]
    parseContents = do
        { e@(Elem _ as _) <- element ["defvar"]
        ; interior e $ return (Defvar (fromAttrs as)) `apply` parseContents
        } `adjustErr` ("in <defvar>, "++)
instance XmlAttributes Defvar_Attrs where
    fromAttrs as =
        Defvar_Attrs
          { defvarAccessibility_id = possibleA fromAttrToStr "accessibility_id" as
          }
    toAttrs v = catMaybes 
        [ maybeToAttr toAttrFrStr "accessibility_id" (defvarAccessibility_id v)
        ]

instance HTypeable Def where
    toHType x = Defined "def" [] []
instance XmlContent Def where
    toContents (Def as a) =
        [CElem (Elem (N "def") (toAttrs as) (concatMap toContents a)) ()]
    parseContents = do
        { e@(Elem _ as _) <- element ["def"]
        ; interior e $ return (Def (fromAttrs as))
                       `apply` many parseContents
        } `adjustErr` ("in <def>, "++)
instance XmlAttributes Def_Attrs where
    fromAttrs as =
        Def_Attrs
          { defAsmname = definiteA fromAttrToStr "def" "asmname" as
          , defAsmvalue = possibleA fromAttrToStr "asmvalue" as
          , defN = possibleA fromAttrToStr "n" as
          , defV = possibleA fromAttrToStr "v" as
          }
    toAttrs v = catMaybes 
        [ toAttrFrStr "asmname" (defAsmname v)
        , maybeToAttr toAttrFrStr "asmvalue" (defAsmvalue v)
        , maybeToAttr toAttrFrStr "n" (defN v)
        , maybeToAttr toAttrFrStr "v" (defV v)
        ]

instance HTypeable Enc where
    toHType x = Defined "enc" [] []
instance XmlContent Enc where
    toContents (Enc as a) =
        [CElem (Elem (N "enc") (toAttrs as) (concatMap toContents a)) ()]
    parseContents = do
        { e@(Elem _ as _) <- element ["enc"]
        ; interior e $ return (Enc (fromAttrs as))
                       `apply` many parseContents
        } `adjustErr` ("in <enc>, "++)
instance XmlAttributes Enc_Attrs where
    fromAttrs as =
        Enc_Attrs
          { encN = definiteA fromAttrToStr "enc" "n" as
          , encV = possibleA fromAttrToStr "v" as
          , encWidth = possibleA fromAttrToStr "width" as
          , encVarname = possibleA fromAttrToStr "varname" as
          }
    toAttrs v = catMaybes 
        [ toAttrFrStr "n" (encN v)
        , maybeToAttr toAttrFrStr "v" (encV v)
        , maybeToAttr toAttrFrStr "width" (encWidth v)
        , maybeToAttr toAttrFrStr "varname" (encVarname v)
        ]

instance HTypeable Encbits where
    toHType x = Defined "encbits" [] []
instance XmlContent Encbits where
    toContents (Encbits as a) =
        [CElem (Elem (N "encbits") (toAttrs as) (concatMap toContents a)) ()]
    parseContents = do
        { e@(Elem _ as _) <- element ["encbits"]
        ; interior e $ return (Encbits (fromAttrs as))
                       `apply` many parseContents
        } `adjustErr` ("in <encbits>, "++)
instance XmlAttributes Encbits_Attrs where
    fromAttrs as =
        Encbits_Attrs
          { encbitsV = possibleA fromAttrToStr "v" as
          , encbitsMsb = definiteA fromAttrToStr "encbits" "msb" as
          , encbitsLsb = definiteA fromAttrToStr "encbits" "lsb" as
          }
    toAttrs v = catMaybes 
        [ maybeToAttr toAttrFrStr "v" (encbitsV v)
        , toAttrFrStr "msb" (encbitsMsb v)
        , toAttrFrStr "lsb" (encbitsLsb v)
        ]

instance HTypeable Encvar where
    toHType x = Defined "encvar" [] []
instance XmlContent Encvar where
    toContents as =
        [CElem (Elem (N "encvar") (toAttrs as) []) ()]
    parseContents = do
        { (Elem _ as []) <- element ["encvar"]
        ; return (fromAttrs as)
        } `adjustErr` ("in <encvar>, "++)
instance XmlAttributes Encvar where
    fromAttrs as =
        Encvar
          { encvarName = definiteA fromAttrToStr "encvar" "name" as
          , encvarMsb = definiteA fromAttrToStr "encvar" "msb" as
          , encvarLsb = definiteA fromAttrToStr "encvar" "lsb" as
          }
    toAttrs v = catMaybes 
        [ toAttrFrStr "name" (encvarName v)
        , toAttrFrStr "msb" (encvarMsb v)
        , toAttrFrStr "lsb" (encvarLsb v)
        ]

instance HTypeable Access_instruction where
    toHType x = Defined "access_instruction" [] []
instance XmlContent Access_instruction where
    toContents as =
        [CElem (Elem (N "access_instruction") (toAttrs as) []) ()]
    parseContents = do
        { (Elem _ as []) <- element ["access_instruction"]
        ; return (fromAttrs as)
        } `adjustErr` ("in <access_instruction>, "++)
instance XmlAttributes Access_instruction where
    fromAttrs as =
        Access_instruction
          { access_instructionId = definiteA fromAttrToStr "access_instruction" "id" as
          }
    toAttrs v = catMaybes 
        [ toAttrFrStr "id" (access_instructionId v)
        ]

instance HTypeable Access_mechanism_text where
    toHType x = Defined "access_mechanism_text" [] []
instance XmlContent Access_mechanism_text where
    toContents (Access_mechanism_text a) =
        [CElem (Elem (N "access_mechanism_text") [] (concatMap toContents a)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["access_mechanism_text"]
        ; interior e $ return (Access_mechanism_text)
                       `apply` many parseContents
        } `adjustErr` ("in <access_mechanism_text>, "++)

instance HTypeable Access_mechanism_text_ where
    toHType x = Defined "access_mechanism_text" [] []
instance XmlContent Access_mechanism_text_ where
    toContents (Access_mechanism_text_Str a) = toText a
    toContents (Access_mechanism_text_Para a) = toContents a
    toContents (Access_mechanism_text_List a) = toContents a
    toContents (Access_mechanism_text_Listitem a) = toContents a
    toContents (Access_mechanism_text_Content a) = toContents a
    toContents (Access_mechanism_text_Table a) = toContents a
    toContents (Access_mechanism_text_Note a) = toContents a
    toContents (Access_mechanism_text_Register_link a) = toContents a
    toContents (Access_mechanism_text_Instruction a) = toContents a
    toContents (Access_mechanism_text_Xref a) = toContents a
    toContents (Access_mechanism_text_Arm_defined_word a) = toContents a
    toContents (Access_mechanism_text_Sup a) = toContents a
    toContents (Access_mechanism_text_Sub a) = toContents a
    toContents (Access_mechanism_text_B a) = toContents a
    toContents (Access_mechanism_text_Binarynumber a) = toContents a
    toContents (Access_mechanism_text_Hexnumber a) = toContents a
    toContents (Access_mechanism_text_Signal a) = toContents a
    toContents (Access_mechanism_text_Syntax a) = toContents a
    toContents (Access_mechanism_text_Value a) = toContents a
    toContents (Access_mechanism_text_Function a) = toContents a
    toContents (Access_mechanism_text_AEnum a) = toContents a
    toContents (Access_mechanism_text_Enumvalue a) = toContents a
    toContents (Access_mechanism_text_Url a) = toContents a
    parseContents = oneOf
        [ return (Access_mechanism_text_Str) `apply` text
        , return (Access_mechanism_text_Para) `apply` parseContents
        , return (Access_mechanism_text_List) `apply` parseContents
        , return (Access_mechanism_text_Listitem) `apply` parseContents
        , return (Access_mechanism_text_Content) `apply` parseContents
        , return (Access_mechanism_text_Table) `apply` parseContents
        , return (Access_mechanism_text_Note) `apply` parseContents
        , return (Access_mechanism_text_Register_link)
          `apply` parseContents
        , return (Access_mechanism_text_Instruction) `apply` parseContents
        , return (Access_mechanism_text_Xref) `apply` parseContents
        , return (Access_mechanism_text_Arm_defined_word)
          `apply` parseContents
        , return (Access_mechanism_text_Sup) `apply` parseContents
        , return (Access_mechanism_text_Sub) `apply` parseContents
        , return (Access_mechanism_text_B) `apply` parseContents
        , return (Access_mechanism_text_Binarynumber) `apply` parseContents
        , return (Access_mechanism_text_Hexnumber) `apply` parseContents
        , return (Access_mechanism_text_Signal) `apply` parseContents
        , return (Access_mechanism_text_Syntax) `apply` parseContents
        , return (Access_mechanism_text_Value) `apply` parseContents
        , return (Access_mechanism_text_Function) `apply` parseContents
        , return (Access_mechanism_text_AEnum) `apply` parseContents
        , return (Access_mechanism_text_Enumvalue) `apply` parseContents
        , return (Access_mechanism_text_Url) `apply` parseContents
        ] `adjustErr` ("in <access_mechanism_text>, "++)

instance HTypeable Access_permissions where
    toHType x = Defined "access_permissions" [] []
instance XmlContent Access_permissions where
    toContents (Access_permissions a b c) =
        [CElem (Elem (N "access_permissions") [] (maybe [] toContents a ++
                                                  concatMap toContents b ++
                                                  concatMap toContents c)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["access_permissions"]
        ; interior e $ return (Access_permissions)
                       `apply` optional parseContents `apply` many parseContents
                       `apply` many parseContents
        } `adjustErr` ("in <access_permissions>, "++)

instance HTypeable Access_controls where
    toHType x = Defined "access_controls" [] []
instance XmlContent Access_controls where
    toContents (Access_controls a) =
        [CElem (Elem (N "access_controls") [] (concatMap toContents a)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["access_controls"]
        ; interior e $ return (Access_controls) `apply` many parseContents
        } `adjustErr` ("in <access_controls>, "++)

instance HTypeable Control where
    toHType x = Defined "control" [] []
instance XmlContent Control where
    toContents as =
        [CElem (Elem (N "control") (toAttrs as) []) ()]
    parseContents = do
        { (Elem _ as []) <- element ["control"]
        ; return (fromAttrs as)
        } `adjustErr` ("in <control>, "++)
instance XmlAttributes Control where
    fromAttrs as =
        Control
          { controlField = definiteA fromAttrToStr "control" "field" as
          , controlAarch64_register = possibleA fromAttrToStr "aarch64_register" as
          , controlAarch32_register = possibleA fromAttrToStr "aarch32_register" as
          }
    toAttrs v = catMaybes 
        [ toAttrFrStr "field" (controlField v)
        , maybeToAttr toAttrFrStr "aarch64_register" (controlAarch64_register v)
        , maybeToAttr toAttrFrStr "aarch32_register" (controlAarch32_register v)
        ]

instance HTypeable Access_permission where
    toHType x = Defined "access_permission" [] []
instance XmlContent Access_permission where
    toContents (Access_permission as a) =
        [CElem (Elem (N "access_permission") (toAttrs as) (toContents a)) ()]
    parseContents = do
        { e@(Elem _ as _) <- element ["access_permission"]
        ; interior e $ return (Access_permission (fromAttrs as))
                       `apply` parseContents
        } `adjustErr` ("in <access_permission>, "++)
instance XmlAttributes Access_permission_Attrs where
    fromAttrs as =
        Access_permission_Attrs
          { access_permissionInstance = definiteA fromAttrToStr "access_permission" "instance" as
          }
    toAttrs v = catMaybes 
        [ toAttrFrStr "instance" (access_permissionInstance v)
        ]

instance HTypeable Access_set where
    toHType x = Defined "access_set" [] []
instance XmlContent Access_set where
    toContents (Access_set as a) =
        [CElem (Elem (N "access_set") (toAttrs as) (toContents a)) ()]
    parseContents = do
        { e@(Elem _ as _) <- element ["access_set"]
        ; interior e $ return (Access_set (fromAttrs as))
                       `apply` parseContents
        } `adjustErr` ("in <access_set>, "++)
instance XmlAttributes Access_set_Attrs where
    fromAttrs as =
        Access_set_Attrs
          { access_setAccessibility_id = definiteA fromAttrToStr "access_set" "accessibility_id" as
          }
    toAttrs v = catMaybes 
        [ toAttrFrStr "accessibility_id" (access_setAccessibility_id v)
        ]

instance HTypeable Accessibility where
    toHType x = Defined "accessibility" [] []
instance XmlContent Accessibility where
    toContents (Accessibility a) =
        [CElem (Elem (N "accessibility") [] (toContents a)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["accessibility"]
        ; interior e $ return (Accessibility) `apply` parseContents
        } `adjustErr` ("in <accessibility>, "++)

instance HTypeable Access where
    toHType x = Defined "access" [] []
instance XmlContent Access where
    toContents (Access as a b) =
        [CElem (Elem (N "access") (toAttrs as) (concatMap toContents a ++
                                                maybe [] toContents b)) ()]
    parseContents = do
        { e@(Elem _ as _) <- element ["access"]
        ; interior e $ return (Access (fromAttrs as))
                       `apply` many parseContents `apply` optional parseContents
        } `adjustErr` ("in <access>, "++)
instance XmlAttributes Access_Attrs where
    fromAttrs as =
        Access_Attrs
          { accessEl = definiteA fromAttrToStr "access" "el" as
          , accessType = definiteA fromAttrToTyp "access" "type" as
          }
    toAttrs v = catMaybes 
        [ toAttrFrStr "el" (accessEl v)
        , toAttrFrTyp "type" (accessType v)
        ]

instance XmlAttrType Access_type where
    fromAttrToTyp n (N n',v)
        | n==n'     = translate (attr2str v)
        | otherwise = Nothing
      where translate "undef" = Just Access_type_undef
            translate "RO" = Just Access_type_RO
            translate "WO" = Just Access_type_WO
            translate "RW" = Just Access_type_RW
            translate "inaccessible" = Just Access_type_inaccessible
            translate "impdef" = Just Access_type_impdef
            translate "register" = Just Access_type_register
            translate _ = Nothing
    toAttrFrTyp n Access_type_undef = Just (N n, str2attr "undef")
    toAttrFrTyp n Access_type_RO = Just (N n, str2attr "RO")
    toAttrFrTyp n Access_type_WO = Just (N n, str2attr "WO")
    toAttrFrTyp n Access_type_RW = Just (N n, str2attr "RW")
    toAttrFrTyp n Access_type_inaccessible = Just (N n, str2attr "inaccessible")
    toAttrFrTyp n Access_type_impdef = Just (N n, str2attr "impdef")
    toAttrFrTyp n Access_type_register = Just (N n, str2attr "register")

instance HTypeable Access_conditions where
    toHType x = Defined "access_conditions" [] []
instance XmlContent Access_conditions where
    toContents (Access_conditions a b) =
        [CElem (Elem (N "access_conditions") [] (concatMap toContents a ++
                                                 concatMap toContents b)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["access_conditions"]
        ; interior e $ return (Access_conditions)
                       `apply` many parseContents `apply` many parseContents
        } `adjustErr` ("in <access_conditions>, "++)

instance HTypeable Condition where
    toHType x = Defined "condition" [] []
instance XmlContent Condition where
    toContents as =
        [CElem (Elem (N "condition") (toAttrs as) []) ()]
    parseContents = do
        { (Elem _ as []) <- element ["condition"]
        ; return (fromAttrs as)
        } `adjustErr` ("in <condition>, "++)
instance XmlAttributes Condition where
    fromAttrs as =
        Condition
          { conditionField = definiteA fromAttrToStr "condition" "field" as
          , conditionOp = possibleA fromAttrToStr "op" as
          , conditionValue = definiteA fromAttrToStr "condition" "value" as
          }
    toAttrs v = catMaybes 
        [ toAttrFrStr "field" (conditionField v)
        , maybeToAttr toAttrFrStr "op" (conditionOp v)
        , toAttrFrStr "value" (conditionValue v)
        ]

instance HTypeable Exception_level_config where
    toHType x = Defined "exception_level_config" [] []
instance XmlContent Exception_level_config where
    toContents as =
        [CElem (Elem (N "exception_level_config") (toAttrs as) []) ()]
    parseContents = do
        { (Elem _ as []) <- element ["exception_level_config"]
        ; return (fromAttrs as)
        } `adjustErr` ("in <exception_level_config>, "++)
instance XmlAttributes Exception_level_config where
    fromAttrs as =
        Exception_level_config
          { exception_level_configEl = definiteA fromAttrToTyp "exception_level_config" "el" as
          , exception_level_configState = possibleA fromAttrToTyp "state" as
          , exception_level_configHighest_el = possibleA fromAttrToTyp "highest_el" as
          }
    toAttrs v = catMaybes 
        [ toAttrFrTyp "el" (exception_level_configEl v)
        , maybeToAttr toAttrFrTyp "state" (exception_level_configState v)
        , maybeToAttr toAttrFrTyp "highest_el" (exception_level_configHighest_el v)
        ]

instance XmlAttrType Exception_level_config_el where
    fromAttrToTyp n (N n',v)
        | n==n'     = translate (attr2str v)
        | otherwise = Nothing
      where translate "0" = Just Exception_level_config_el_0
            translate "1" = Just Exception_level_config_el_1
            translate "2" = Just Exception_level_config_el_2
            translate "3" = Just Exception_level_config_el_3
            translate _ = Nothing
    toAttrFrTyp n Exception_level_config_el_0 = Just (N n, str2attr "0")
    toAttrFrTyp n Exception_level_config_el_1 = Just (N n, str2attr "1")
    toAttrFrTyp n Exception_level_config_el_2 = Just (N n, str2attr "2")
    toAttrFrTyp n Exception_level_config_el_3 = Just (N n, str2attr "3")

instance XmlAttrType Exception_level_config_state where
    fromAttrToTyp n (N n',v)
        | n==n'     = translate (attr2str v)
        | otherwise = Nothing
      where translate "unimplemented" = Just Exception_level_config_state_unimplemented
            translate "implemented" = Just Exception_level_config_state_implemented
            translate "AArch32" = Just Exception_level_config_state_AArch32
            translate "AArch64" = Just Exception_level_config_state_AArch64
            translate _ = Nothing
    toAttrFrTyp n Exception_level_config_state_unimplemented = Just (N n, str2attr "unimplemented")
    toAttrFrTyp n Exception_level_config_state_implemented = Just (N n, str2attr "implemented")
    toAttrFrTyp n Exception_level_config_state_AArch32 = Just (N n, str2attr "AArch32")
    toAttrFrTyp n Exception_level_config_state_AArch64 = Just (N n, str2attr "AArch64")

instance XmlAttrType Exception_level_config_highest_el where
    fromAttrToTyp n (N n',v)
        | n==n'     = translate (attr2str v)
        | otherwise = Nothing
      where translate "True" = Just Exception_level_config_highest_el_True
            translate "False" = Just Exception_level_config_highest_el_False
            translate _ = Nothing
    toAttrFrTyp n Exception_level_config_highest_el_True = Just (N n, str2attr "True")
    toAttrFrTyp n Exception_level_config_highest_el_False = Just (N n, str2attr "False")

instance HTypeable Access_permission_text where
    toHType x = Defined "access_permission_text" [] []
instance XmlContent Access_permission_text where
    toContents (Access_permission_text a) =
        [CElem (Elem (N "access_permission_text") [] (concatMap toContents a)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["access_permission_text"]
        ; interior e $ return (Access_permission_text)
                       `apply` many parseContents
        } `adjustErr` ("in <access_permission_text>, "++)

instance HTypeable Access_permission_text_ where
    toHType x = Defined "access_permission_text" [] []
instance XmlContent Access_permission_text_ where
    toContents (Access_permission_text_Str a) = toText a
    toContents (Access_permission_text_Para a) = toContents a
    toContents (Access_permission_text_List a) = toContents a
    toContents (Access_permission_text_Listitem a) = toContents a
    toContents (Access_permission_text_Content a) = toContents a
    toContents (Access_permission_text_Table a) = toContents a
    toContents (Access_permission_text_Note a) = toContents a
    toContents (Access_permission_text_Register_link a) = toContents a
    toContents (Access_permission_text_Instruction a) = toContents a
    toContents (Access_permission_text_Xref a) = toContents a
    toContents (Access_permission_text_Arm_defined_word a) = toContents a
    toContents (Access_permission_text_Sup a) = toContents a
    toContents (Access_permission_text_Sub a) = toContents a
    toContents (Access_permission_text_B a) = toContents a
    toContents (Access_permission_text_Binarynumber a) = toContents a
    toContents (Access_permission_text_Hexnumber a) = toContents a
    toContents (Access_permission_text_Signal a) = toContents a
    toContents (Access_permission_text_Syntax a) = toContents a
    toContents (Access_permission_text_Value a) = toContents a
    toContents (Access_permission_text_Function a) = toContents a
    toContents (Access_permission_text_AEnum a) = toContents a
    toContents (Access_permission_text_Enumvalue a) = toContents a
    toContents (Access_permission_text_Url a) = toContents a
    parseContents = oneOf
        [ return (Access_permission_text_Str) `apply` text
        , return (Access_permission_text_Para) `apply` parseContents
        , return (Access_permission_text_List) `apply` parseContents
        , return (Access_permission_text_Listitem) `apply` parseContents
        , return (Access_permission_text_Content) `apply` parseContents
        , return (Access_permission_text_Table) `apply` parseContents
        , return (Access_permission_text_Note) `apply` parseContents
        , return (Access_permission_text_Register_link)
          `apply` parseContents
        , return (Access_permission_text_Instruction) `apply` parseContents
        , return (Access_permission_text_Xref) `apply` parseContents
        , return (Access_permission_text_Arm_defined_word)
          `apply` parseContents
        , return (Access_permission_text_Sup) `apply` parseContents
        , return (Access_permission_text_Sub) `apply` parseContents
        , return (Access_permission_text_B) `apply` parseContents
        , return (Access_permission_text_Binarynumber)
          `apply` parseContents
        , return (Access_permission_text_Hexnumber) `apply` parseContents
        , return (Access_permission_text_Signal) `apply` parseContents
        , return (Access_permission_text_Syntax) `apply` parseContents
        , return (Access_permission_text_Value) `apply` parseContents
        , return (Access_permission_text_Function) `apply` parseContents
        , return (Access_permission_text_AEnum) `apply` parseContents
        , return (Access_permission_text_Enumvalue) `apply` parseContents
        , return (Access_permission_text_Url) `apply` parseContents
        ] `adjustErr` ("in <access_permission_text>, "++)

instance HTypeable Traps_and_enables where
    toHType x = Defined "traps_and_enables" [] []
instance XmlContent Traps_and_enables where
    toContents (Traps_and_enables a b) =
        [CElem (Elem (N "traps_and_enables") [] (maybe [] toContents a ++
                                                 concatMap toContents b)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["traps_and_enables"]
        ; interior e $ return (Traps_and_enables)
                       `apply` optional parseContents `apply` many parseContents
        } `adjustErr` ("in <traps_and_enables>, "++)

instance HTypeable Trap_conditions where
    toHType x = Defined "trap_conditions" [] []
instance XmlContent Trap_conditions where
    toContents (Trap_conditions a) =
        [CElem (Elem (N "trap_conditions") [] (concatMap toContents a)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["trap_conditions"]
        ; interior e $ return (Trap_conditions) `apply` many parseContents
        } `adjustErr` ("in <trap_conditions>, "++)

instance HTypeable When where
    toHType x = Defined "when" [] []
instance XmlContent When where
    toContents (When a) =
        [CElem (Elem (N "when") [] (concatMap toContents a)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["when"]
        ; interior e $ return (When) `apply` many parseContents
        } `adjustErr` ("in <when>, "++)

instance HTypeable When_ where
    toHType x = Defined "when" [] []
instance XmlContent When_ where
    toContents (When_Condition a) = toContents a
    toContents (When_Exception_level_config a) = toContents a
    parseContents = oneOf
        [ return (When_Condition) `apply` parseContents
        , return (When_Exception_level_config) `apply` parseContents
        ] `adjustErr` ("in <when>, "++)

instance HTypeable Trap where
    toHType x = Defined "trap" [] []
instance XmlContent Trap where
    toContents (Trap a b) =
        [CElem (Elem (N "trap") [] (toContents a ++ toContents b)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["trap"]
        ; interior e $ return (Trap) `apply` parseContents
                       `apply` parseContents
        } `adjustErr` ("in <trap>, "++)

instance HTypeable Trap_text where
    toHType x = Defined "trap_text" [] []
instance XmlContent Trap_text where
    toContents (Trap_text a) =
        [CElem (Elem (N "trap_text") [] (concatMap toContents a)) ()]
    parseContents = do
        { e@(Elem _ [] _) <- element ["trap_text"]
        ; interior e $ return (Trap_text) `apply` many parseContents
        } `adjustErr` ("in <trap_text>, "++)

instance HTypeable Trap_data where
    toHType x = Defined "trap_data" [] []
instance XmlContent Trap_data where
    toContents Trap_data =
        [CElem (Elem (N "trap_data") [] []) ()]
    parseContents = do
        { (Elem _ as []) <- element ["trap_data"]
        ; return Trap_data
        } `adjustErr` ("in <trap_data>, "++)

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
          { arch_variantName = definiteA fromAttrToStr "arch_variant" "name" as
          }
    toAttrs v = catMaybes 
        [ toAttrFrStr "name" (arch_variantName v)
        ]

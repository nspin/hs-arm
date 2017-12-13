module ARM.MRAS.DTD.SysReg.Instructions where
import Text.XML.HaXml.OneOfN
import Prelude hiding (Right, Left)
import Text.XML.HaXml.XmlContent hiding (Content, List)
import Text.XML.HaXml.Types hiding (Content, Name)

newtype Access_instruction_defs = Access_instruction_defs (List1
                                                             Access_instruction_def)
                                deriving (Eq, Show)

data Access_instruction_def = Access_instruction_def Access_instruction_def_Attrs
                                                     Name (Maybe Access_type) (List1 Access_syntax)
                            deriving (Eq, Show)

data Access_instruction_def_Attrs = Access_instruction_def_Attrs{access_instruction_defExecution_state
                                                                 ::
                                                                 Access_instruction_def_execution_state,
                                                                 access_instruction_defId :: String}
                                  deriving (Eq, Show)

data Access_instruction_def_execution_state = Access_instruction_def_execution_state_AArch32
                                            | Access_instruction_def_execution_state_AArch64
                                            deriving (Eq, Show)

newtype Name = Name String
             deriving (Eq, Show)

data Access_type = Access_type{access_typeType :: Access_type_type}
                 deriving (Eq, Show)

data Access_type_type = Access_type_type_read
                      | Access_type_type_write
                      | Access_type_type_modify
                      deriving (Eq, Show)

data Access_syntax = Access_syntax Access_syntax_Attrs [Var]
                   deriving (Eq, Show)

data Access_syntax_Attrs = Access_syntax_Attrs{access_syntaxName ::
                                               String,
                                               access_syntaxVariant :: (Maybe String)}
                         deriving (Eq, Show)

data Var = Var Var_Attrs [Var]
         deriving (Eq, Show)

data Var_Attrs = Var_Attrs{varN :: String, varT :: (Maybe String),
                           varPrefix :: (Maybe String)}
               deriving (Eq, Show)

instance HTypeable Access_instruction_defs where
        toHType x = Defined "access_instruction_defs" [] []

instance XmlContent Access_instruction_defs where
        toContents (Access_instruction_defs a)
          = [CElem (Elem (N "access_instruction_defs") [] (toContents a)) ()]
        parseContents
          = do e@(Elem _ [] _) <- element ["access_instruction_defs"]
               interior e $ return (Access_instruction_defs) `apply` parseContents
              `adjustErr` ("in <access_instruction_defs>, " ++)

instance HTypeable Access_instruction_def where
        toHType x = Defined "access_instruction_def" [] []

instance XmlContent Access_instruction_def where
        toContents (Access_instruction_def as a b c)
          = [CElem
               (Elem (N "access_instruction_def") (toAttrs as)
                  (toContents a ++ maybe [] toContents b ++ toContents c))
               ()]
        parseContents
          = do e@(Elem _ as _) <- element ["access_instruction_def"]
               interior e $
                 return (Access_instruction_def (fromAttrs as)) `apply`
                   parseContents
                   `apply` optional parseContents
                   `apply` parseContents
              `adjustErr` ("in <access_instruction_def>, " ++)

instance XmlAttributes Access_instruction_def_Attrs where
        fromAttrs as
          = Access_instruction_def_Attrs{access_instruction_defExecution_state
                                           =
                                           definiteA fromAttrToTyp "access_instruction_def"
                                             "execution_state"
                                             as,
                                         access_instruction_defId =
                                           definiteA fromAttrToStr "access_instruction_def" "id" as}
        toAttrs v
          = catMaybes
              [toAttrFrTyp "execution_state"
                 (access_instruction_defExecution_state v),
               toAttrFrStr "id" (access_instruction_defId v)]

instance XmlAttrType Access_instruction_def_execution_state where
        fromAttrToTyp n (N n', v)
          | n == n' = translate (attr2str v)
          | otherwise = Nothing
          where translate "AArch32"
                  = Just Access_instruction_def_execution_state_AArch32
                translate "AArch64"
                  = Just Access_instruction_def_execution_state_AArch64
                translate _ = Nothing
        toAttrFrTyp n Access_instruction_def_execution_state_AArch32
          = Just (N n, str2attr "AArch32")
        toAttrFrTyp n Access_instruction_def_execution_state_AArch64
          = Just (N n, str2attr "AArch64")

instance HTypeable Name where
        toHType x = Defined "name" [] []

instance XmlContent Name where
        toContents (Name a) = [CElem (Elem (N "name") [] (toText a)) ()]
        parseContents
          = do e@(Elem _ [] _) <- element ["name"]
               interior e $ return (Name) `apply` (text `onFail` return "")
              `adjustErr` ("in <name>, " ++)

instance HTypeable Access_type where
        toHType x = Defined "access_type" [] []

instance XmlContent Access_type where
        toContents as = [CElem (Elem (N "access_type") (toAttrs as) []) ()]
        parseContents
          = do (Elem _ as []) <- element ["access_type"]
               return (fromAttrs as)
              `adjustErr` ("in <access_type>, " ++)

instance XmlAttributes Access_type where
        fromAttrs as
          = Access_type{access_typeType =
                          definiteA fromAttrToTyp "access_type" "type" as}
        toAttrs v = catMaybes [toAttrFrTyp "type" (access_typeType v)]

instance XmlAttrType Access_type_type where
        fromAttrToTyp n (N n', v)
          | n == n' = translate (attr2str v)
          | otherwise = Nothing
          where translate "read" = Just Access_type_type_read
                translate "write" = Just Access_type_type_write
                translate "modify" = Just Access_type_type_modify
                translate _ = Nothing
        toAttrFrTyp n Access_type_type_read = Just (N n, str2attr "read")
        toAttrFrTyp n Access_type_type_write = Just (N n, str2attr "write")
        toAttrFrTyp n Access_type_type_modify
          = Just (N n, str2attr "modify")

instance HTypeable Access_syntax where
        toHType x = Defined "access_syntax" [] []

instance XmlContent Access_syntax where
        toContents (Access_syntax as a)
          = [CElem
               (Elem (N "access_syntax") (toAttrs as) (concatMap toContents a))
               ()]
        parseContents
          = do e@(Elem _ as _) <- element ["access_syntax"]
               interior e $
                 return (Access_syntax (fromAttrs as)) `apply` many parseContents
              `adjustErr` ("in <access_syntax>, " ++)

instance XmlAttributes Access_syntax_Attrs where
        fromAttrs as
          = Access_syntax_Attrs{access_syntaxName =
                                  definiteA fromAttrToStr "access_syntax" "name" as,
                                access_syntaxVariant = possibleA fromAttrToStr "variant" as}
        toAttrs v
          = catMaybes
              [toAttrFrStr "name" (access_syntaxName v),
               maybeToAttr toAttrFrStr "variant" (access_syntaxVariant v)]

instance HTypeable Var where
        toHType x = Defined "var" [] []

instance XmlContent Var where
        toContents (Var as a)
          = [CElem (Elem (N "var") (toAttrs as) (concatMap toContents a)) ()]
        parseContents
          = do e@(Elem _ as _) <- element ["var"]
               interior e $ return (Var (fromAttrs as)) `apply` many parseContents
              `adjustErr` ("in <var>, " ++)

instance XmlAttributes Var_Attrs where
        fromAttrs as
          = Var_Attrs{varN = definiteA fromAttrToStr "var" "n" as,
                      varT = possibleA fromAttrToStr "t" as,
                      varPrefix = possibleA fromAttrToStr "prefix" as}
        toAttrs v
          = catMaybes
              [toAttrFrStr "n" (varN v), maybeToAttr toAttrFrStr "t" (varT v),
               maybeToAttr toAttrFrStr "prefix" (varPrefix v)]
module ARM.MRAS.DTD.SysReg.Architectureinfo where
import Text.XML.HaXml.OneOfN
import Prelude hiding (Right, Left)
import Text.XML.HaXml.XmlContent hiding (Content, List)
import Text.XML.HaXml.Types hiding (Content, Name)

data Architecture_info = Architecture_info Architecture_info_Attrs
                                           Implemented_els
                       deriving (Eq, Show)

data Architecture_info_Attrs = Architecture_info_Attrs{architecture_infoArch_profile
                                                       :: Architecture_info_arch_profile,
                                                       architecture_infoS_ns_implemented ::
                                                       Architecture_info_s_ns_implemented,
                                                       architecture_infoAarch32_implemented ::
                                                       Architecture_info_aarch32_implemented,
                                                       architecture_infoAarch64_implemented ::
                                                       Architecture_info_aarch64_implemented}
                             deriving (Eq, Show)

data Architecture_info_arch_profile = Architecture_info_arch_profile_A
                                    | Architecture_info_arch_profile_R
                                    | Architecture_info_arch_profile_M
                                    deriving (Eq, Show)

data Architecture_info_s_ns_implemented = Architecture_info_s_ns_implemented_True
                                        | Architecture_info_s_ns_implemented_False
                                        deriving (Eq, Show)

data Architecture_info_aarch32_implemented = Architecture_info_aarch32_implemented_True
                                           | Architecture_info_aarch32_implemented_False
                                           deriving (Eq, Show)

data Architecture_info_aarch64_implemented = Architecture_info_aarch64_implemented_True
                                           | Architecture_info_aarch64_implemented_False
                                           deriving (Eq, Show)

newtype Implemented_els = Implemented_els (List1 Implemented_el)
                        deriving (Eq, Show)

data Implemented_el = Implemented_el{implemented_elEl_name ::
                                     Implemented_el_el_name}
                    deriving (Eq, Show)

data Implemented_el_el_name = Implemented_el_el_name_EL0
                            | Implemented_el_el_name_EL1
                            | Implemented_el_el_name_EL2
                            | Implemented_el_el_name_EL3
                            deriving (Eq, Show)

instance HTypeable Architecture_info where
        toHType x = Defined "architecture_info" [] []

instance XmlContent Architecture_info where
        toContents (Architecture_info as a)
          = [CElem (Elem (N "architecture_info") (toAttrs as) (toContents a))
               ()]
        parseContents
          = do e@(Elem _ as _) <- element ["architecture_info"]
               interior e $
                 return (Architecture_info (fromAttrs as)) `apply` parseContents
              `adjustErr` ("in <architecture_info>, " ++)

instance XmlAttributes Architecture_info_Attrs where
        fromAttrs as
          = Architecture_info_Attrs{architecture_infoArch_profile =
                                      definiteA fromAttrToTyp "architecture_info" "arch_profile" as,
                                    architecture_infoS_ns_implemented =
                                      definiteA fromAttrToTyp "architecture_info" "s_ns_implemented"
                                        as,
                                    architecture_infoAarch32_implemented =
                                      definiteA fromAttrToTyp "architecture_info"
                                        "aarch32_implemented"
                                        as,
                                    architecture_infoAarch64_implemented =
                                      definiteA fromAttrToTyp "architecture_info"
                                        "aarch64_implemented"
                                        as}
        toAttrs v
          = catMaybes
              [toAttrFrTyp "arch_profile" (architecture_infoArch_profile v),
               toAttrFrTyp "s_ns_implemented"
                 (architecture_infoS_ns_implemented v),
               toAttrFrTyp "aarch32_implemented"
                 (architecture_infoAarch32_implemented v),
               toAttrFrTyp "aarch64_implemented"
                 (architecture_infoAarch64_implemented v)]

instance XmlAttrType Architecture_info_arch_profile where
        fromAttrToTyp n (N n', v)
          | n == n' = translate (attr2str v)
          | otherwise = Nothing
          where translate "A" = Just Architecture_info_arch_profile_A
                translate "R" = Just Architecture_info_arch_profile_R
                translate "M" = Just Architecture_info_arch_profile_M
                translate _ = Nothing
        toAttrFrTyp n Architecture_info_arch_profile_A
          = Just (N n, str2attr "A")
        toAttrFrTyp n Architecture_info_arch_profile_R
          = Just (N n, str2attr "R")
        toAttrFrTyp n Architecture_info_arch_profile_M
          = Just (N n, str2attr "M")

instance XmlAttrType Architecture_info_s_ns_implemented where
        fromAttrToTyp n (N n', v)
          | n == n' = translate (attr2str v)
          | otherwise = Nothing
          where translate "True"
                  = Just Architecture_info_s_ns_implemented_True
                translate "False" = Just Architecture_info_s_ns_implemented_False
                translate _ = Nothing
        toAttrFrTyp n Architecture_info_s_ns_implemented_True
          = Just (N n, str2attr "True")
        toAttrFrTyp n Architecture_info_s_ns_implemented_False
          = Just (N n, str2attr "False")

instance XmlAttrType Architecture_info_aarch32_implemented where
        fromAttrToTyp n (N n', v)
          | n == n' = translate (attr2str v)
          | otherwise = Nothing
          where translate "True"
                  = Just Architecture_info_aarch32_implemented_True
                translate "False"
                  = Just Architecture_info_aarch32_implemented_False
                translate _ = Nothing
        toAttrFrTyp n Architecture_info_aarch32_implemented_True
          = Just (N n, str2attr "True")
        toAttrFrTyp n Architecture_info_aarch32_implemented_False
          = Just (N n, str2attr "False")

instance XmlAttrType Architecture_info_aarch64_implemented where
        fromAttrToTyp n (N n', v)
          | n == n' = translate (attr2str v)
          | otherwise = Nothing
          where translate "True"
                  = Just Architecture_info_aarch64_implemented_True
                translate "False"
                  = Just Architecture_info_aarch64_implemented_False
                translate _ = Nothing
        toAttrFrTyp n Architecture_info_aarch64_implemented_True
          = Just (N n, str2attr "True")
        toAttrFrTyp n Architecture_info_aarch64_implemented_False
          = Just (N n, str2attr "False")

instance HTypeable Implemented_els where
        toHType x = Defined "implemented_els" [] []

instance XmlContent Implemented_els where
        toContents (Implemented_els a)
          = [CElem (Elem (N "implemented_els") [] (toContents a)) ()]
        parseContents
          = do e@(Elem _ [] _) <- element ["implemented_els"]
               interior e $ return (Implemented_els) `apply` parseContents
              `adjustErr` ("in <implemented_els>, " ++)

instance HTypeable Implemented_el where
        toHType x = Defined "implemented_el" [] []

instance XmlContent Implemented_el where
        toContents as
          = [CElem (Elem (N "implemented_el") (toAttrs as) []) ()]
        parseContents
          = do (Elem _ as []) <- element ["implemented_el"]
               return (fromAttrs as)
              `adjustErr` ("in <implemented_el>, " ++)

instance XmlAttributes Implemented_el where
        fromAttrs as
          = Implemented_el{implemented_elEl_name =
                             definiteA fromAttrToTyp "implemented_el" "el_name" as}
        toAttrs v
          = catMaybes [toAttrFrTyp "el_name" (implemented_elEl_name v)]

instance XmlAttrType Implemented_el_el_name where
        fromAttrToTyp n (N n', v)
          | n == n' = translate (attr2str v)
          | otherwise = Nothing
          where translate "EL0" = Just Implemented_el_el_name_EL0
                translate "EL1" = Just Implemented_el_el_name_EL1
                translate "EL2" = Just Implemented_el_el_name_EL2
                translate "EL3" = Just Implemented_el_el_name_EL3
                translate _ = Nothing
        toAttrFrTyp n Implemented_el_el_name_EL0
          = Just (N n, str2attr "EL0")
        toAttrFrTyp n Implemented_el_el_name_EL1
          = Just (N n, str2attr "EL1")
        toAttrFrTyp n Implemented_el_el_name_EL2
          = Just (N n, str2attr "EL2")
        toAttrFrTyp n Implemented_el_el_name_EL3
          = Just (N n, str2attr "EL3")
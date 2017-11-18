module C
    ( extractEnumByName
    , extractFeatureSets
    ) where

import Data.List
import Data.Maybe
import Debug.Trace

import Language.C
import Language.C.Data.Ident

extractEnumByName :: String -> CTranslationUnit a -> [String]
extractEnumByName name = onlyDecl f
  where
    f (CDeclExt (CDecl [CTypeSpec (CEnumType (CEnum (Just (Ident enumName _ _)) (Just xs) _ _) _)] [] _))
        | enumName == name = Just (map g xs)
    f _ = Nothing
    g (Ident str _ _, Nothing) = str

onlyDecl :: (CExternalDeclaration a -> Maybe b) -> CTranslationUnit a -> b
onlyDecl f (CTranslUnit extDecls _) = case catMaybes (map f extDecls) of
    [b] -> b

extractFeatureSets :: CTranslationUnit a -> [String]
extractFeatureSets (CTranslUnit extDecls _) = catMaybes (map f extDecls)
  where
    f (CDeclExt
        (CDecl
            [ CStorageSpec (CStatic _)
            , CTypeQual (CConstQual _)
            , CTypeSpec (CTypeDef (Ident "aarch64_feature_set" _ _) _)
            ]
            [ ( Just (CDeclr (Just (Ident fs _ _)) [] Nothing [] _)
              , Just _
              , Nothing
              )
            ] _)) = Just fs
    f _ = Nothing

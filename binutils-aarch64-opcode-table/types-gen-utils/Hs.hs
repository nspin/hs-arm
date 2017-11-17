module Hs
    ( buildEnumsModule
    ) where

import Language.Haskell.Exts


buildEnumsModule :: String -> [String] -> [String] -> [(String, [String])] -> Module ()
buildEnumsModule modName insnClasses featureSets otherEnums = Module () (Just head) [] [] decls
  where
    head = ModuleHead () (ModuleName () modName) Nothing Nothing
    decls = map (uncurry buildEnum) otherEnums ++ (fss:fsfs) ++ (incs:inclfs)
    incs = buildEnum "InsnClass" (map ("InsnClass_" ++) insnClasses)
    inclfs = buildFromStringFn "InsnClass" "insnClassFromString" ("InsnClass_" ++) insnClasses
    fss = buildEnum "FeatureSet" (map ("FeatureSet_" ++) featureSets)
    fsfs = buildFromStringFn "FeatureSet" "featureSetFromString" ("FeatureSet_" ++) featureSets

buildFromStringFn :: String -> String -> (String -> String) -> [String] -> [Decl ()]
buildFromStringFn ty fn f strs = [convsig, conv]
  where
    convsig = TypeSig () [icfs]
        (TyFun ()
            (TyCon () (UnQual () (Ident () "String")))
            (TyApp ()
                (TyCon () (UnQual () (Ident () "Maybe")))
                (TyCon () (UnQual () (Ident () ty)))))
    conv = FunBind () (map match strs ++ [end])
    match str = Match ()
        icfs
        [PLit () (Signless ()) (String () str str)]
        (UnGuardedRhs ()
            (App ()
                (Con () (UnQual () (Ident () "Just")))
                (Con () (UnQual () (Ident () (f str))))))
        Nothing
    end = Match ()
        icfs
        [PWildCard ()]
        (UnGuardedRhs () (Con () (UnQual () (Ident () "Nothing"))))
        Nothing
    icfs = Ident () fn


buildEnum :: String -> [String] -> Decl ()
buildEnum name vals = DataDecl () (DataType ()) Nothing
    (DHead () (Ident () name))
    (map f vals)
    (Just (Deriving () (map g ["Eq", "Read", "Show", "Enum"])))
  where
    f con = QualConDecl () Nothing Nothing (ConDecl () (Ident () con) [])
    g cl = IRule () Nothing Nothing (IHCon () (UnQual () (Ident () cl)))

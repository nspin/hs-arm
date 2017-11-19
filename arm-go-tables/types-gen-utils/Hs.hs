module Hs where

import Language.Haskell.Exts

generate :: [String] -> [String] -> [String] -> String
generate = (fmap.fmap.fmap) prettyPrint buildModule

buildModule :: [String] -> [String] -> [String] -> Module ()
buildModule ops args predictors = Module () (Just head) [] [] decls
  where
    head = ModuleHead () (ModuleName () "ARM.Go.Tables.Types.Gen") Nothing Nothing
    decls = concat
        [ buildEnum "Op" "opFromString" ("Op_" ++) id ops
        , buildEnum "Arg" "argFromString" ("Arg_" ++) ("arg_" ++) args
        , buildEnum "Predictor" "predictorFromString" ("Predictor_" ++) (++ "_cond") predictors
        ]

buildEnum :: String -> String -> (String -> String) -> (String -> String) -> [String] -> [Decl ()]
buildEnum tname fname fcons fstr vals = [ty, sig, conv]
  where
    ty = DataDecl () (DataType ()) Nothing
            (DHead () (Ident () tname))
            (map f vals)
            (Just (Deriving () (map g ["Eq", "Read", "Show", "Enum"])))
      where
        f val = QualConDecl () Nothing Nothing (ConDecl () (Ident () (fcons val)) [])
        g cl = IRule () Nothing Nothing (IHCon () (UnQual () (Ident () cl)))
    sig = TypeSig () [icfs]
        (TyFun ()
            (TyCon () (UnQual () (Ident () "String")))
            (TyApp ()
                (TyCon () (UnQual () (Ident () "Maybe")))
                (TyCon () (UnQual () (Ident () tname)))))
    conv = FunBind () (map match vals ++ [end])
    match val = Match ()
        icfs
        [PLit () (Signless ()) (String () (fstr val) (fstr val))]
        (UnGuardedRhs ()
            (App ()
                (Con () (UnQual () (Ident () "Just")))
                (Con () (UnQual () (Ident () (fcons val))))))
        Nothing
    end = Match ()
        icfs
        [PWildCard ()]
        (UnGuardedRhs () (Con () (UnQual () (Ident () "Nothing"))))
        Nothing
    icfs = Ident () fname

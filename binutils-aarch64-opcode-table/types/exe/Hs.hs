module Hs where

import HarmGen.Binutils.Types

import Language.Haskell.Exts

buildModule :: String -> [Row] -> Module ()
buildModule modName table = Module () (Just head) [] [imp] [ty, val]
  where
    head = ModuleHead () (ModuleName () modName) Nothing Nothing
    ty = TypeSig () [Ident () "table"] (TyList () (TyCon () (UnQual () (Ident () "Row"))))
    val = FunBind () [Match () (Ident () "table") [] (UnGuardedRhs () (() <$ exp)) Nothing]
    ParseOk exp = parseExp (show table)
    imp = ImportDecl
        { importAnn = ()
        , importModule = ModuleName () "HarmGen.Binutils.Types"
        , importQualified = False
        , importSrc = False
        , importSafe = False
        , importPkg = Nothing
        , importAs = Nothing
        , importSpecs = Nothing
        }

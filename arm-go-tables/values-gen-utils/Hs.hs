module Hs where

import ARM.Go.Tables.Types
import Language.Haskell.Exts

generate :: [InstFormat] -> String
generate = fmap prettyPrint buildModule

buildModule :: [InstFormat] -> Module ()
buildModule ifms = Module () (Just head) [] [imp] [ty, val]
  where
    head = ModuleHead () (ModuleName () "ARM.Go.Tables.Gen") Nothing Nothing
    ty = TypeSig () [Ident () "instFormats"] (TyList () (TyCon () (UnQual () (Ident () "InstFormat" ))))
    val = FunBind () [Match () (Ident () "instFormats") [] (UnGuardedRhs () (() <$ expr)) Nothing]
    ParseOk expr = parseExp (show ifms)
    imp = ImportDecl
        { importAnn = ()
        , importModule = ModuleName () "ARM.Go.Tables.Types"
        , importQualified = False
        , importSrc = False
        , importSafe = False
        , importPkg = Nothing
        , importAs = Nothing
        , importSpecs = Nothing
        }

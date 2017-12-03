module Hs where

import ARM.Binutils.Tables.Types

import Language.Haskell.Exts

buildModule :: String -> [Opcode] -> [Operand] -> Module ()
buildModule modName opcodes operands = Module () (Just head) [] [imp] [opcty, opcval, opnty, opnval]
  where
    head = ModuleHead () (ModuleName () modName) Nothing Nothing
    opcty = TypeSig () [Ident () "opcodeTable"] (TyList () (TyCon () (UnQual () (Ident () "Opcode" ))))
    opnty = TypeSig () [Ident () "operands"   ] (TyList () (TyCon () (UnQual () (Ident () "Operand"))))
    opcval = FunBind () [Match () (Ident () "opcodeTable") [] (UnGuardedRhs () (() <$ opcExpr)) Nothing]
    opnval = FunBind () [Match () (Ident () "operands"   ) [] (UnGuardedRhs () (() <$ opnExpr)) Nothing]
    ParseOk opcExpr = parseExp (show opcodes)
    ParseOk opnExpr = parseExp (show operands)
    imp = ImportDecl
        { importAnn = ()
        , importModule = ModuleName () "ARM.Binutils.Tables.Types"
        , importQualified = False
        , importSrc = False
        , importSafe = False
        , importPkg = Nothing
        , importAs = Nothing
        , importSpecs = Nothing
        }

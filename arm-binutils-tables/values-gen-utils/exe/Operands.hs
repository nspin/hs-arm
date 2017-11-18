module Operands
    ( extractOperands
    ) where

import ARM.Binutils.Tables.Types
import ARM.Binutils.Tables.Types.Gen

import Control.Exception (assert)
import Data.Bits
import Data.Maybe
import Data.Word

import Language.C
import Language.C.Data.Ident


extractOperands :: CTranslationUnit a -> [Operand]
extractOperands = map parseOperand . init . extractRawOperands

extractRawOperands :: CTranslationUnit a -> [[CInitializer a]]
extractRawOperands (CTranslUnit extDecls _) = map g initList
  where
    [initList] = catMaybes (map f extDecls)
    f (CDeclExt (CDecl _ [(Just (CDeclr (Just (Ident "aarch64_operands" _ _)) _ _ _ _), Just (CInitList il _), _)] _)) = Just il
    f _ = Nothing
    g ([], CInitList innerInitList _) = map h innerInitList
    h ([], initializer) = initializer


parseOperand :: [CInitializer a] -> Operand
parseOperand [op_class, name, flags, fields, desc] = Operand
    (parseOperandClass op_class)
    (parseString name)
    (parseOperandFlags flags)
    (parseOperandFields fields)
    (parseString desc)


type Parser a b = CInitializer a -> b


parseString :: Parser a String
parseString (CInitExpr (CConst (CStrConst cstr _)) _) = getCString cstr

parseOperandClass :: Parser a OperandClass
parseOperandClass (CInitExpr (CVar (Ident oc _ _) _) _) = read oc

parseOperandFields :: Parser a [FieldKind]
parseOperandFields (CInitList is _) = map f is
  where
    f ([], CInitExpr (CConst (CIntConst cint _)) _) | getCInteger cint == 0 = FLD_NIL
    f ([], CInitExpr (CVar (Ident fk _ _) _) _) = read fk

parseOperandFlags :: Parser a [OperandFlag]
parseOperandFlags (CInitExpr expr _) = f expr
  where
    f (CConst (CIntConst cint _)) | getCInteger cint == 0 = []
    f (CBinary COrOp x y _) = f x ++ f y
    f expr = [g expr]
    g (CBinary CShlOp (CConst (CIntConst cl _)) (CConst (CIntConst cr _)) _)
        | getCInteger cr == 5 = OPD_F_OD_LSB (fromInteger (getCInteger cl))
    g (CConst (CIntConst cint _)) = case getCInteger cint of
        0x001 -> OPD_F_HAS_INSERTER
        0x002 -> OPD_F_HAS_EXTRACTOR
        0x004 -> OPD_F_SEXT
        0x008 -> OPD_F_SHIFT_BY_2
        0x010 -> OPD_F_MAYBE_SP
        0x0e0 -> OPD_F_OD_MASK
        0x100 -> OPD_F_NO_ZR

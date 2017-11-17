module C where

import HarmGen.Binutils.Types
import HarmGen.Binutils.Types.Gen.Enums

import Control.Exception (assert)
import Debug.Trace
import Data.Bits
import Data.Maybe
import Data.Word

import Language.C
import Language.C.Data.Ident


parseRow :: [CInitializer a] -> Row
parseRow [name, opcode, mask, iclass, op, avariant, operands, qualifiers_list, flags, tied_operand, verifier]
    = case parseFnRef verifier of
        Nothing -> Row
            (parseString name)
            (parseIntegral opcode)
            (parseIntegral mask)
            (parseInsnClass iclass)
            (parseOp op)
            (parseFeatureSet avariant)
            (parseOpndList operands)
            (parseOpndQualifierList qualifiers_list)
            (parseBitExpr flags)
            (parseIntegral tied_operand)


type Parser a b = CInitializer a -> b


parseString :: Parser a String
parseString (CInitExpr (CConst (CStrConst cstr _)) _) = getCString cstr

parseIntegral :: Integral b => Parser a b
parseIntegral (CInitExpr (CConst (CIntConst cint _)) _) = fromInteger (getCInteger cint)

parseBitExpr :: (Integral b, Bits b) => Parser a b
parseBitExpr (CInitExpr expr _) = fromIntegral (f expr)
  where
    f (CConst (CIntConst x _)) = getCInteger x
    f (CBinary COrOp x y _) = f x .|. f y
    f (CBinary CAndOp x y _) = f x .&. f y
    f (CBinary CShlOp x y _) = f x `shiftL` fromInteger (f y)

parseInsnClass :: Parser a InsnClass
parseInsnClass (CInitExpr (CVar (Ident fs _ _) _) _) = fromJust (insnClassFromString fs)

parseOp :: Parser a Op
parseOp (CInitExpr (CConst (CIntConst cint _)) _) = assert (getCInteger cint == 0) OP_NIL
parseOp (CInitExpr (CVar (Ident op _ _) _) _) = read op

parseFeatureSet :: Parser a FeatureSet
parseFeatureSet (CInitExpr (CUnary CAdrOp (CVar (Ident fs _ _) _) _) _) = fromJust (featureSetFromString fs)

parseOpndList :: Parser a [Opnd]
parseOpndList (CInitList is _) = map f is
  where
    f ([], CInitExpr (CVar (Ident opnd _ _) _) _) = read opnd

parseOpndQualifierList :: Parser a [[OpndQualifier]]
parseOpndQualifierList (CInitList is _) = map f is
  where
    f ([], CInitList iis _) = map g iis
    g ([], CInitExpr (CVar (Ident opqf _ _) _) _) = read opqf

parseFnRef :: Parser a (Maybe String)
parseFnRef (CInitExpr (CCast (CDecl [CTypeSpec (CVoidType _)] [(Just (CDeclr Nothing [CPtrDeclr [] _] Nothing [] _),Nothing,Nothing)] _) (CConst (CIntConst cint _)) _) _) = assert (getCInteger cint == 0) Nothing

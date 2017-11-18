module OpcodeTable
    ( extractOpcodeTable
    ) where

import ARM.Binutils.Tables.Types
import ARM.Binutils.Tables.Types.Gen

import Control.Exception (assert)
import Debug.Trace
import Data.Bits
import Data.Maybe
import Data.Word

import Language.C
import Language.C.Data.Ident


extractOpcodeTable :: CTranslationUnit a -> [Opcode]
extractOpcodeTable = map parseOpcode . init . extractRawOpcodeTable

extractRawOpcodeTable :: CTranslationUnit a -> [[CInitializer a]]
extractRawOpcodeTable (CTranslUnit extDecls _) = map g initList
  where
    [initList] = catMaybes (map f extDecls)
    f (CDeclExt (CDecl _ [(Just (CDeclr (Just (Ident "aarch64_opcode_table" _ _)) _ _ _ _), Just (CInitList il _), _)] _)) = Just il
    f _ = Nothing
    g ([], CInitList innerInitList _) = map h innerInitList
    h ([], initializer) = initializer


parseOpcode :: [CInitializer a] -> Opcode
parseOpcode [name, opcode, mask, iclass, op, avariant, operands, qualifiers_list, flags, tied_operand, verifier]
    = case parseFnRef verifier of
        Nothing -> Opcode
            (parseString name)
            (parseIntegral opcode)
            (parseIntegral mask)
            (parseInsnClass iclass)
            (parseOp op)
            (parseFeatureSet avariant)
            (parseOpndList operands)
            (parseOpndQualifierList qualifiers_list)
            (parseOpcodeFlags flags)
            (parseIntegral tied_operand)


type Parser a b = CInitializer a -> b


parseString :: Parser a String
parseString (CInitExpr (CConst (CStrConst cstr _)) _) = getCString cstr

parseIntegral :: Integral b => Parser a b
parseIntegral (CInitExpr (CConst (CIntConst cint _)) _) = fromInteger (getCInteger cint)

parseInsnClass :: Parser a InsnClass
parseInsnClass (CInitExpr (CVar (Ident fs _ _) _) _) = fromJust (insnClassFromString fs)

parseOp :: Parser a Op
parseOp (CInitExpr (CConst (CIntConst cint _)) _) | getCInteger cint == 0 = OP_NIL
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

parseOpcodeFlags :: Parser a [OpcodeFlag]
parseOpcodeFlags (CInitExpr expr _) = f expr
  where
    f (CConst (CIntConst cint _)) | getCInteger cint == 0 = []
    f (CBinary COrOp x y _) = f x ++ f y
    f (CBinary CShlOp x (CConst (CIntConst cint _)) _) = [g x cint]
    g x cint = case getCInteger cint of
        00 -> one F_ALIAS
        01 -> one F_HAS_ALIAS
        02 -> any [1..3] F_Pn
        04 -> one F_COND
        05 -> one F_SF
        06 -> one F_SIZEQ
        07 -> one F_FPTYPE
        08 -> one F_SSIZE
        09 -> one F_T
        10 -> one F_GPRSIZE_IN_Q
        11 -> one F_LDS_SIZE
        12 -> any [1..5] F_OPDn_OPT
        15 -> masked 0x1f F_DEFAULT
        20 -> one F_CONV
        21 -> one F_PSEUDO
        22 -> one F_MISC
        23 -> one F_N
        24 -> masked 0x7 F_OD
        27 -> one F_LSE_SZ
        28 -> one F_STRICT
      where
        one a = case x of
            CConst (CIntConst ci _) ->
                case getCInteger ci of
                    1 -> a
        any is a = case x of
            CConst (CIntConst ci _) ->
                let i = fromInteger (getCInteger ci)
                in assert (i `elem` is) (a i)
        masked mask a = case x of
            CBinary CAndOp (CConst (CIntConst cil _)) (CConst (CIntConst cir _)) _ | getCInteger cir == mask ->
                a (fromInteger (getCInteger cil))

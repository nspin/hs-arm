module AADL.AST where

type AST = [OuterDecl]
    deriving Show

data OuterDecl = Macro String [InnerDecl] | Insn String [InnerDecl]
    deriving Show

data InnerDecl
    = MacroInterp String
    | InDecl String String
    | InAsDecl String String InAs
    | DecodeDecl String String DecExpr
    | EncodeDecl BitSpec BitExpr
    deriving Show

data InAs = InAs
    deriving Show

data BitSpec = BitSpec
    deriving Show

type InsnId = String

type TypeId = String

data FieldDec = FieldDec FieldId DecExpr

type FieldId = String

data DecExpr = DecExprIdent Ident
             | DecExprAp DecExpr DecExpr
             | DecExprInfix InfixOp DecExpr DecExpr
             | DecExprCase BitsExpr [([Bit], DecExpr)]

data BitExpr = BitsExprIdent Ident
             | BitsExprRange BitsExpr Int Int
             | BitsExprConcat BitsExpr BitsExpr

data DecExpr = DecExpr

data BitsEnc = BitsEnc BitsSpec EncExpr

data BitsSpec = BitsSpec

data EncExpr = EncExpr

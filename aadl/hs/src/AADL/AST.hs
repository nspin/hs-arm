module AADL.AST
    (
    ) where

type AST = [Insn]

data Insn = Insn InsnId [InsnInfo]

type InsnId = String

data InsnInfo = InsnType [(FieldId, TypeId)]
              | InsnDec [FieldDec]
              | InsnEnc [BitsEnc]

type TypeId = String

data FieldDec = FieldDec FieldId DecExpr

type FieldId = String

-- data DecExpr = DecExprIdent Ident
--              | DecExprAp DecExpr DecExpr
--              | DecExprInfix InfixOp DecExpr DecExpr
--              | DecExprCase BitsExpr [([Bit], DecExpr)]

-- data BitsExpr = BitsExprIdent Ident
--               | BitsExprRange BitsExpr Int Int
--               | BitsExprConcat BitsExpr BitsExpr

data DecExpr = DecExpr

data BitsEnc = BitsEnc BitsSpec EncExpr

data BitsSpec = BitsSpec

data EncExpr = EncExpr

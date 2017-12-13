{-# LANGUAGE DeriveAnyClass #-}
{-# LANGUAGE DeriveGeneric #-}

module ARM.MRAS.ASL.Parser.Syntax where

import Data.Ratio
import Data.List.NonEmpty
import Control.DeepSeq
import GHC.Generics (Generic)


newtype Ident = Ident String
    deriving (Eq, Show, Generic, NFData)

data QIdent = QIdent (Maybe Ident) Ident
    deriving (Eq, Show, Generic, NFData)

data Definition =
      DefTyBuiltin QIdent
    | DefTyDecl QIdent
    | DefTyDef QIdent [(TyExpr, Ident)]
    | DefTyAlias QIdent TyExpr
    | DefTyEnum QIdent [Ident]

    | DefVarDecl TyExpr QIdent
    | DefConstDef TyExpr Ident Expr
    | DefArrDecl TyExpr Ident IxType

    | DefFn (Maybe [TyExpr]) QIdent [(TyExpr, Ident)] (Maybe (NonEmpty Statement))
    | DefGetter [TyExpr] QIdent (Maybe [(TyExpr, Ident)]) (Maybe (NonEmpty Statement))
    | DefSetter QIdent (Maybe [(TyExpr, Bool, Ident)]) TyExpr Ident (Maybe (NonEmpty Statement))
    deriving (Eq, Show, Generic, NFData)

data IxType = IxTypeTy QIdent | IxTypeRange Expr Expr
    deriving (Eq, Show, Generic, NFData)

data TyExpr =
      TyExprId QIdent
    | TyExprApp QIdent Expr
    | TyExprTyOf Expr
    | TyExprReg Integer [NonEmpty Slice]
    | TyExprArr IxType TyExpr
    deriving (Eq, Show, Generic, NFData)

data Statement =
      StAssignSig TyExpr (NonEmpty Ident)
    | StAssignVal TyExpr Ident Expr
    | StAssignConst TyExpr Ident Expr
    | StAssignPat LExpr Expr

    | StProc QIdent [Expr]
    | StRet (Maybe Expr)
    | StAssert Expr
    | StUnpredictable
    | StImpDef String

    | StIf Expr (NonEmpty Statement) [(Expr, NonEmpty Statement)] (Maybe (NonEmpty Statement))
    | StCase Expr (NonEmpty (Maybe ([Pattern], Maybe Expr), [Statement]))

    | StFor Ident Expr Direction Expr (NonEmpty Statement)
    | StWhile Expr (NonEmpty Statement)
    | StRepeat (NonEmpty Statement) Expr

    | StThrow Ident
    | StUndefined
    | StSeeExpr Expr
    | StSeeStr String
    | StTryCatch (NonEmpty Statement) Ident (NonEmpty (Maybe Expr, NonEmpty Statement))
    deriving (Eq, Show, Generic, NFData)

data LExpr =
      LExprId QIdent
    | LExprDot LExpr Ident
    | LExprDotBrack LExpr (NonEmpty Ident)
    | LExprSlice LExpr [Slice]
    | LExprBrack (NonEmpty LExpr)
    | LExprParen (NonEmpty LExpr)
    deriving (Eq, Show, Generic, NFData)

data Pattern =
      PatInt Integer
    | PatHex Integer
    | PatBin [Bool]
    | PatMask [Maybe Bool]
    | PatIdent Ident
    | PatTuple (NonEmpty Pattern)
    deriving (Eq, Show, Generic, NFData)

data Direction = DirTo | DirDownTo
    deriving (Eq, Show, Generic, NFData)

data Expr = 
      ExprInt Integer
    | ExprHex Integer
    | ExprReal Rational
    | ExprBin [Bool]
    | ExprMask [Maybe Bool]
    | ExprStr String
    | ExprId QIdent
    | ExprApp QIdent [Expr]
    | ExprTuple (NonEmpty Expr)
    | ExprUnOp UnOp Expr
    | ExprUnk TyExpr
    | ExprImpDef TyExpr (Maybe String)

    | ExprDot Expr Ident
    | ExprDotBrack Expr (NonEmpty Ident)
    | ExprSlice Expr [Slice]
    | ExprInSet Expr [(Expr, Maybe Expr)]
    | ExprInMask Expr [Maybe Bool]

    | ExprBinOp Expr BinOp Expr

    | ExprIf Expr Expr [(Expr, Expr)] Expr

    deriving (Eq, Show, Generic, NFData)

data Slice =
      Slice Expr
    | SliceColon Slice Expr
    | SlicePlusColon Slice Expr
    deriving (Eq, Show, Generic, NFData)

data UnOp =
      UnOpMinus
    | UnOpBang
    | UnOpNot
    deriving (Eq, Show, Generic, NFData)

data BinOp =
      BinOpEqEq
    | BinOpNeq
    | BinOpGt
    | BinOpGtEq
    | BinOpLt
    | BinOpLtEq
    | BinOpLtLt
    | BinOpGtGt
    | BinOpPlus
    | BinOpMinus
    | BinOpStar
    | BinOpSlash
    | BinOpCaret
    | BinOpAmpAmp
    | BinOpBarBar
    | BinOpOr
    | BinOpEor
    | BinOpAnd
    | BinOpPlusplus
    | BinOpQuot
    | BinOpRem
    | BinOpDiv
    | BinOpMod
    deriving (Eq, Show, Generic, NFData)

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

type DecExpr = ()

data BitsEnc = BitsEnc BitsSpec EncExpr

type BitsSpec = ()

type EncExpr = ()

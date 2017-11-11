module Gen
    ( instructions
    ) where

import Language.Haskell.Exts

instructions :: Module ()
instructions = Module () (Just head) [] [] [decl]
  where
    head = ModuleHead () name Nothing Nothing
    name = ModuleName () "ARM.MRA.Gen"
    decl = DataDecl () (DataType ()) Nothing
        (DHead () (Ident () "Instruction"))
        [QualConDecl () Nothing Nothing (ConDecl () (Ident () "Instruction") [])]
        Nothing

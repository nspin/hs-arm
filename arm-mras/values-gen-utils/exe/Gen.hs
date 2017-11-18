module Gen
    ( gen
    ) where

import Language.Haskell.Exts

gen :: Module ()
gen = Module () (Just head) [] [] []
  where
    head = ModuleHead () name Nothing Nothing
    name = ModuleName () "ARM.MRAS.Gen"

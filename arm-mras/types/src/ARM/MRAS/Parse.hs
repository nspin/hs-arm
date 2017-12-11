module ARM.MRAS.Parse
    ( parsePage
    ) where

import ARM.MRAS.Types
import ARM.MRAS.Parse.Internal.Distill (distillPage)
import ARM.MRAS.Parse.Internal.Tidy (tidyPage)

import ARM.MRAS.DTD.A64.Iformp (Instructionsection)

parsePage :: Instructionsection -> Either Insn Alias
parsePage = tidyPage . distillPage

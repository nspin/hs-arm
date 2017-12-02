module ARM.MRAS.Parse
    ( parsePage
    ) where

import ARM.MRAS.Types
import ARM.MRAS.Parse.Internal.Distill (distillPage)
import ARM.MRAS.Parse.Internal.Tidy

import ARM.MRAS.DTD.A64.Iformp

parsePage :: Instructionsection -> Either AliasPage Page
parsePage = tidyPage . distillPage

module Harm.Tables.Internal.Show
    ( withMnem
    , module Harm.Tables.Logic
    , module Harm.Tables.Gen.Insn
    ) where

import Harm.Tables.Gen.Insn
import Harm.Tables.Logic

withMnem :: String -> (String, ShowS) -> (String, ShowS)
withMnem mnem (suffix, operand) = (mnem ++ suffix, operand)

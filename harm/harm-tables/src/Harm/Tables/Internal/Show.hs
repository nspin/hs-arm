module Harm.Tables.Internal.Show
    ( withMnem
    , module Harm.Tables.Gen.Insn
    , module Harm.Tables.Logic.Base
    , module Harm.Tables.Logic.FpSimd
    ) where

import Harm.Tables.Logic.Base
import Harm.Tables.Logic.FpSimd
import Harm.Tables.Gen.Insn

withMnem :: String -> (String, String) -> (String, String)
withMnem mnem (suffix, operand) = (mnem ++ suffix, operand)

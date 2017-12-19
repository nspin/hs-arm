module Harm.Tables.Gen.Encode where
import Harm.Tables.Gen.Insn
import Harm.Tables.Logic
import Harm.Tables.Logic.Binary
import Data.Word

encode :: Insn -> Encode Word32
encode insn = return 0
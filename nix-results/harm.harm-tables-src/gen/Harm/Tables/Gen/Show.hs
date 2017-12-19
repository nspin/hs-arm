module Harm.Tables.Gen.Show where
import Harm.Tables.Gen.Insn

showsAsm :: Insn -> (String, ShowS)
showsAsm insn = ("NOP", id)
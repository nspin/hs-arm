module Test where

import ARM.MRAS.Types
import ARM.MRAS.Types.Lens
import ARM.MRAS.Parse.IO

root :: String
root = "../../test/nix-results/arm-mras.patched-a64/ISA_v83A_A64_xml_00bet5"

test :: IO ([Insn], [Insn])
test = (,) <$> parseBaseFrom root <*> parseFpsimdFrom root

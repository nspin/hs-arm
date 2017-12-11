module Lib where

import ARM.MRAS.Types

import System.FilePath

root :: FilePath
root = "../../test/nix-results/arm-mras.patched-a64/ISA_v83A_A64_xml_00bet5"

showBit :: Bit -> Char
showBit I = '1'
showBit O = 'O'
showBit X = 'x'

splitAssoc :: (a, [b]) -> [(a, b)]
splitAssoc (a, bs) = map ((,) a) bs
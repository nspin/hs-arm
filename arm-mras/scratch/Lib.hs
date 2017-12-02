module Lib where

import ARM.MRAS.Types
import ARM.MRAS.Parse.IO

import System.FilePath

root :: FilePath
root = "../../test/nix-results/arm-mras.patched-a64/ISA_v83A_A64_xml_00bet5"

getAll :: IO [(FilePath, Either AliasPage Page)]
getAll = parseAllFrom root

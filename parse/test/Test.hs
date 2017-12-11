module Test where

import ARM.MRAS.Types
import ARM.MRAS.Types.Lens
import ARM.MRAS.Parse
import ARM.MRAS.Parse.IO

import Control.Monad
import System.FilePath

root :: String
root = "../test/nix-results/patched-a64/ISA_v83A_A64_xml_00bet5"

testAll :: IO ([Insn], [Insn])
testAll = (,) <$> parseBaseFrom root <*> parseFpsimdFrom root

testEach :: IO ()
testEach = do
    base <- listPages root "index.xml"
    fpsimd <- listPages root "fpsimdindex.xml"
    forM_ (base ++ fpsimd) $ \fname -> do
        putStrLn $ "# " ++ fname
        p <- readPage (root </> fname)
        print $ parsePage p

module Test where

import ARM.MRAS.Types
import ARM.MRAS.Parse
import qualified ARM.MRAS.Types.AArch64 as AArch64
import qualified ARM.MRAS.Parse.AArch64 as AArch64

import Control.Exception
import Control.Monad
import Control.DeepSeq
import Data.List
import Debug.Trace

import Control.Lens
import System.FilePath

import Text.XML.HaXml.XmlContent

aarch64, aarch32 :: String
aarch64 = "../test/nix-results/patched-aarch64/ISA_v83A_A64_xml_00bet5"
aarch32 = "../test/nix-results/patched-aarch32/ISA_v83A_AArch32_xml_00bet5"

testAll :: IO ([AArch64.Insn], [AArch64.Insn])
testAll = (,) <$> (force <$> parseBaseFrom aarch64) <*> (force <$> parseFpSimdFrom aarch64)

testEach :: IO ()
testEach = do
    base <- listPages aarch64 "index.xml"
    fpsimd <- listPages aarch64 "fpsimdindex.xml"
    forM_ (base ++ fpsimd) $ \fname -> do
        putStrLn $ "# " ++ fname
        p <- fReadXml (aarch64 </> fname)
        print (AArch64.parsePage p)

testDistill :: IO ()
testDistill = do
    base <- listPages aarch64 "index.xml"
    fpsimd <- listPages aarch64 "fpsimdindex.xml"
    forM_ (base ++ fpsimd) $ \fname -> do
        putStrLn $ "# " ++ fname
        p <- fReadXml (aarch64 </> fname)
        print (D.distllPage p)

absentDeps :: [SharedPs] -> [String]
absentDeps ps = deps \\ syms
  where
    deps = ps ^.. traverse.shared_ps_deps.traverse
    syms = ps ^.. traverse.shared_ps_symbols.traverse

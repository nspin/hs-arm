module Test where

import ARM.MRAS.Types
import ARM.MRAS.Parse
import ARM.MRAS.Parse.Internal.Distill (distillPage)

import Control.Exception
import Control.Monad
import Data.List
import Debug.Trace

import Control.Lens
import System.FilePath

import Text.XML.HaXml.XmlContent

aarch64, aarch32 :: String
aarch64 = "../test/nix-results/arm-mras.patched-aarch64/ISA_v83A_A64_xml_00bet5"
aarch32 = "../test/nix-results/arm-mras.patched-aarch32/ISA_v83A_AArch32_xml_00bet5"

testAll :: IO ([Insn], [Insn])
testAll = (,) <$> parseBaseFrom aarch64 <*> parseFpSimdFrom aarch64

testEach :: IO ()
testEach = do
    base <- listPages aarch64 "index.xml"
    fpsimd <- listPages aarch64 "fpsimdindex.xml"
    forM_ (base ++ fpsimd) $ \fname -> do
        putStrLn $ "# " ++ fname
        p <- fReadXml (aarch64 </> fname)
        print $ parsePage p

testDistillAll :: IO ()
testDistillAll = do
    paths <- concat <$> sequence
        [ f aarch64 "index.xml"
        , f aarch64 "fpsimdindex.xml"
        , f aarch32 "index.xml"
        , f aarch32 "fpsimdindex.xml"
        ]
    forM_ paths $ \path -> do
        putStrLn $ "# " ++ path
        p <- fReadXml path
        print . length . show $ distillPage p
  where
    f root fname = map (root </>) <$> listPages root fname

testPs :: IO [SharedPs]
testPs = parseSharedPsFrom aarch64

absentDeps :: [SharedPs] -> [String]
absentDeps ps = deps \\ syms
  where
    deps = ps ^.. traverse.shared_ps_deps.traverse
    syms = ps ^.. traverse.shared_ps_symbols.traverse

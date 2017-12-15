module Test where

import ARM.MRAS.Types
import ARM.MRAS.Parse
import ARM.MRAS.Parse.Internal.SharedPs

import Control.Exception
import Control.Monad
import Control.DeepSeq
import Data.List
import Debug.Trace

import Control.Lens
import System.FilePath

import Text.XML.HaXml.XmlContent

import ARM.MRAS.DTD.AArch64.Alphaindex
import ARM.MRAS.DTD.AArch64.Iformp (Instructionsection)

-- test :: IO (Insn DiagramAArch32)
test :: IO Instructionsection
test = fReadXml (aarch32 </> "cmp_r.xml")

aarch64, aarch32 :: String
aarch64 = "../test/nix-results/patched-aarch64/ISA_v83A_A64_xml_00bet5"
aarch32 = "../test/nix-results/patched-aarch32/ISA_v83A_AArch32_xml_00bet5"

testAll :: IO ([Insn DiagramAArch64], [Insn DiagramAArch64])
testAll = (,) <$> (force <$> parseBaseFrom aarch64) <*> (force <$> parseFpSimdFrom aarch64)

testEach :: IO ()
testEach = do
    -- base64 <- listPages aarch64 "index.xml"
    -- fpsimd64 <- listPages aarch64 "fpsimdindex.xml"
    -- forM_ (base64 ++ fpsimd64) $ \fname -> do
    --     putStrLn $ "# " ++ fname
    --     p <- fReadXml (aarch64 </> fname)
    --     print (parsePage p :: Either (InsnFromWith DiagramAArch64 PageId ()) (PageId, AliasFrom DiagramAArch64 ()))
    base32 <- listPages aarch32 "index.xml"
    fpsimd32 <- listPages aarch32 "fpsimdindex.xml"
    forM_ (base32 ++ fpsimd32) $ \fname -> do
        putStrLn $ "# " ++ fname
        p <- fReadXml (aarch32 </> fname)
        -- print (parsePage p :: Either (InsnFromWith DiagramAArch32 PageId ()) (PageId, AliasFrom DiagramAArch32 ()))
        print (length (show (parsePage p :: Either (InsnFromWith DiagramAArch32 PageId ()) (PageId, AliasFrom DiagramAArch32 ()))))

absentDeps :: [SharedPs] -> [String]
absentDeps ps = deps \\ syms
  where
    deps = ps ^.. traverse.shared_ps_deps.traverse
    syms = ps ^.. traverse.shared_ps_symbols.traverse

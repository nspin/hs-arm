module Test where

import ARM.MRAS.Types
import ARM.MRAS.Parse
import ARM.MRAS.Parse.Internal.SharedPs

import Control.Exception
import Control.Monad
import Data.List
import Debug.Trace

import Control.Lens
import System.FilePath

import Text.XML.HaXml.XmlContent

root :: String
root = "../test/nix-results/patched-a64/ISA_v83A_A64_xml_00bet5"

testAll :: IO ([Insn], [Insn])
testAll = (,) <$> parseBaseFrom root <*> parseFpSimdFrom root

testEach :: IO ()
testEach = do
    base <- listPages root "index.xml"
    fpsimd <- listPages root "fpsimdindex.xml"
    forM_ (base ++ fpsimd) $ \fname -> do
        putStrLn $ "# " ++ fname
        p <- fReadXml (root </> fname)
        print $ parsePage p

testPs :: IO [SharedPs]
testPs = parseSharedPsFrom root

absentDeps :: [SharedPs] -> [String]
absentDeps ps = deps \\ syms
  where
    deps = ps ^.. traverse.shared_ps_deps.traverse
    syms = ps ^.. traverse.shared_ps_symbols.traverse

-- It turns out there are cycles in the graph of chunks. However, because chunks
-- can contain more than one declaration, that doesn't necessarily mean there
-- are mutually dependent declarations.
topoSort :: [SharedPs] -> Maybe [SharedPs]
topoSort = go . map f
  where
    f ps = (ps, _shared_ps_deps ps)
    go [] = Just []
    go pairs = case partition (null . snd) pairs of
        ([], _) -> Nothing
        (good, bad) -> (map fst good ++) <$> go ((fmap . fmap) (\\ (concatMap (_shared_ps_symbols . fst) good)) bad)

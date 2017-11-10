module Main (main) where


import Control.Monad
import Data.List
import System.Environment
import System.Exit

import Language.Haskell.Exts
import System.FilePath
import System.Directory
import Text.XML.HaXml.XmlContent

import ARM.MRA.DTD.A64.Alphaindex
import ARM.MRA.DTD.A64.Iformp


modulePath :: [String]
modulePath = ["ARM", "MRA", "Gen"]


main :: IO ()
main = do
    args <- getArgs
    case args of
        [outDir, a64Dir] -> generate outDir a64Dir
        _ -> die $ "Usage: gen-arm-mra-src <outDir> <a64Dir>"


root :: FilePath
root = "../results/xml/patched-a64/ISA_v83A_A64_xml_00bet5"

test :: IO ()
test = do
    files <- allInstrFiles root
    forM files $ \file -> do
        putStrLn ""
        putStrLn file
        putStrLn ""
        fReadXml file >>= process
    return ()


allInstrFiles :: FilePath -> IO [FilePath]
allInstrFiles root = do
    Alphaindex _ (Iforms _ (NonEmpty iforms)) <- fReadXml $ root </> "index.xml"
    return [ root </> iformIformfile attrs | Iform attrs _ <- iforms ]


process :: Instructionsection -> IO ()
process (Instructionsection attrs doc head desc _ classes aliasmnem _ _ _ _) = do
    print desc


-- HASKELL CODE GENERATION --

generate :: FilePath -> FilePath -> IO ()
generate outDir a64Dir = do
    createDirectoryIfMissing True (takeDirectory file)
    writeFile file $ prettyPrint instructions
  where
    file = outDir </> joinPath modulePath <.> "hs"


instructions :: Module ()
instructions = Module () (Just head) [] [] [decl]
  where
    head = ModuleHead () name Nothing Nothing
    name = ModuleName () $ intercalate "." modulePath
    decl = DataDecl () (DataType ()) Nothing
        (DHead () (Ident () "Instruction"))
        [QualConDecl () Nothing Nothing (ConDecl () (Ident () "Instruction") [])]
        Nothing

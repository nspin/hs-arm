module Main (main) where


import Data.List
import System.Environment
import System.Exit

import System.FilePath
import System.Directory

import Language.Haskell.Exts


moduleRoot :: [String]
moduleRoot = ["ARM", "MRA", "Gen"]


main :: IO ()
main = do
    args <- getArgs
    case args of
        [outDir] -> generate outDir
        _ -> die $ "Usage: gen-arm-mra-src" ++ " <outDir>"


generate :: FilePath -> IO ()
generate outDir = do
    createDirectoryIfMissing True baseDir
    writeFile (baseDir </> "Code.hs") $ prettyPrint code
  where
    baseDir = outDir </> joinPath moduleRoot


code :: Module ()
code = Module () (Just head) [] [] [decl]
  where
    head = ModuleHead () name Nothing Nothing
    name = ModuleName () . intercalate "." $ moduleRoot ++ ["Code"]
    decl = DataDecl () (DataType ()) Nothing
        (DHead () (Ident () "Code"))
        [QualConDecl () Nothing Nothing (ConDecl () (Ident () "Code") [])]
        Nothing

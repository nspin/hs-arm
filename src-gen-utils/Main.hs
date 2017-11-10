module Main (main) where


import Data.List
import System.Environment
import System.Exit

import System.FilePath
import System.Directory

import Language.Haskell.Exts


modulePath :: [String]
modulePath = ["ARM", "MRA", "Gen"]


main :: IO ()
main = do
    args <- getArgs
    case args of
        [outDir] -> generate outDir
        _ -> die $ "Usage: gen-arm-mra-src" ++ " <outDir>"


generate :: FilePath -> IO ()
generate outDir = do
    createDirectoryIfMissing True (takeDirectory file)
    writeFile file $ prettyPrint code
  where
    file = outDir </> joinPath modulePath <.> "hs"


code :: Module ()
code = Module () (Just head) [] [] [decl]
  where
    head = ModuleHead () name Nothing Nothing
    name = ModuleName () $ intercalate "." modulePath
    decl = DataDecl () (DataType ()) Nothing
        (DHead () (Ident () "Instruction"))
        [QualConDecl () Nothing Nothing (ConDecl () (Ident () "Instruction") [])]
        Nothing

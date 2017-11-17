module Main where

import C
import Hs

import HarmGen.Binutils.Types

import System.Environment
import System.Exit

import Language.C
import Language.Haskell.Exts
import System.Directory
import System.FilePath


main :: IO ()
main = do
    args <- getArgs
    case args of
        [outDir] -> do
            let hsOut = outDir </> "gen/HarmGen/Binutils/Values/Gen.hs"
            c <- getContents
            case parseC (inputStreamFromString c) (initPos "[stdin]") of
                Left err -> die (show err)
                Right tunit -> do
                    createDirectoryIfMissing True (takeDirectory hsOut)
                    writeFile hsOut (prettyPrint (buildModule "HarmGen.Binutils.Values.Gen" (extractTable tunit)))
        _ -> die "usage: _ <outDir>"


extractTable :: CTranslationUnit a -> [Row]
extractTable = map parseRow . init . extractRawTable

extractRawTable :: CTranslationUnit a -> [[CInitializer a]]
extractRawTable (CTranslUnit extDecls _) = map f initList
  where
    CDeclExt (CDecl _ [(_, Just (CInitList initList _), _)] _) = last extDecls
    f ([], CInitList innerInitList _) = map g innerInitList
    g ([], initializer) = initializer

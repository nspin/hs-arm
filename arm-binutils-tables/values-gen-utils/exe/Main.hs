module Main where

import OpcodeTable
import Operands
import Hs

import ARM.Binutils.Tables.Types

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
            let hsOut = outDir </> "gen/ARM/Binutils/Tables/Gen.hs"
            c <- getContents
            case parseC (inputStreamFromString c) (initPos "[stdin]") of
                Left err -> die (show err)
                Right tunit -> do
                    createDirectoryIfMissing True (takeDirectory hsOut)
                    writeFile hsOut
                        (prettyPrint
                            (buildModule "ARM.Binutils.Tables.Gen"
                                (extractOpcodeTable tunit)
                                (extractOperands tunit)))
        _ -> die "usage: _ <outDir>"

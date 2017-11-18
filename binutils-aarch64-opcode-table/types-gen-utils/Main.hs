module Main (main) where

import C
import Hs

import System.Environment
import System.Exit

import Language.C
import Language.Haskell.Exts
import System.Directory
import System.FilePath

-- stdin: pre-processed aarch64-tbl.h
-- stdout: HarmGen/Binutils/Enums.hs
main :: IO ()
main = do
    args <- getArgs
    case args of
        [outDir] -> do
            let hsOut = outDir </> "gen/HarmGen/Binutils/Types/Gen/Enums.hs"
            c <- getContents
            case parseC (inputStreamFromString c) (initPos "[stdin]") of
                Left err -> die (show err)
                Right tunit -> do
                    createDirectoryIfMissing True (takeDirectory hsOut)
                    writeFile hsOut (prettyPrint (generate tunit))
        _ -> die "usage: _ <outDir>"

generate :: CTranslationUnit a -> Module ()
generate tunit = buildEnumsModule
    "HarmGen.Binutils.Types.Gen.Enums"
    (extractEnumByName "aarch64_insn_class" tunit)
    (extractFeatureSets tunit)
    (map f enums)
  where
    f (c, hs) = (hs, extractEnumByName c tunit)
    enums = [ ("aarch64_operand_class", "OperandClass")
            , ("aarch64_opnd", "Opnd")
            , ("aarch64_opnd_qualifier", "OpndQualifier")
            , ("aarch64_op", "Op")
            , ("aarch64_field_kind", "FieldKind")
            ]

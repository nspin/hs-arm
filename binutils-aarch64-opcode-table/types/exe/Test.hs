module Test where

import Operands
import OpcodeTable
import Hs
import Main

import HarmGen.Binutils.Types

import Control.Monad
import Data.Char
import Data.List
import Language.C
import Language.Haskell.Exts
import System.Directory
import System.FilePath


source = "../../gen-test-out/everything.c"

-- Too lazy to derive NFData and Generic in generated modules
goofyDeepSeq :: Show a => a -> IO ()
goofyDeepSeq x = if sum (map ord (show x)) == -1 then putStr "" else return ()

data Empty = Empty

instance Show Empty where
    show _ = "_"

test :: IO ()
test = do
    Right tunit@(CTranslUnit decls _ ) <- (fmap . fmap . fmap) (const Empty) (parseCFilePre source)
    -- forM decls $ \decl -> do
    --     let s = show decl
    --     when ("aarch64_opcode_table" `isInfixOf` s) $ do
    --         putStrLn (take 800 s)
    --         putStrLn ""
    let opns = extractOperands tunit
    -- goofyDeepSeq opns
    forM (take 10000 opns) $ \opn -> do
        print opn
    return ()

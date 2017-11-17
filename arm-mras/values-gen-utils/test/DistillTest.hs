{-# LANGUAGE DeriveAnyClass #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StandaloneDeriving #-}

module DistillTest
    ( test
    ) where

import IO
import Distill as L

import Control.Applicative
import Control.DeepSeq
import Control.Exception
import Control.Monad
import Data.Foldable
import Data.List
import Data.Maybe
import GHC.Generics (Generic)
import System.IO

import qualified Data.Text as T
import Data.Attoparsec.Text hiding (I)
import System.FilePath
import Text.XML.HaXml.XmlContent hiding (Parser)

import qualified ARM.MRAS.DTD.A64.Iformp as D
import ARM.MRAS.DTD.A64.Iformp hiding (Encoding, C, Box)


root :: FilePath
root = "../gen-test-out/patched-a64/ISA_v83A_A64_xml_00bet5"

test :: IO ()
test = do
    base <- listInstrs root "index.xml"
    fpsimd <- listInstrs root "fpsimdindex.xml"
    forM (base ++ fpsimd) $ \p -> do
        putStrLn $ ">> " ++ p
        isec <- readInstr p
        let ins = distillInstr isec
        deepseq ins $ do
            let Instr id alias classes expls _ = ins
            forM expls $ \(L.Explanation eids sym mapping) -> do
                case mapping of
                    L.Definition fld (L.Table hd bd) -> do
                        let f e@(TEntry Entry_class_symbol (Left ('<':cs))) =
                                case reverse cs of
                                    '>':css -> TEntry Entry_class_symbol (Left "<>")
                                    _ -> e
                            f e = e
                            t = L.Table (map f hd) bd
                        putStrLn (show t)
                    L.Account fld expl -> do
                        return ()
    return ()

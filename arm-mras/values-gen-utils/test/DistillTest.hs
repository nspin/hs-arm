{-# LANGUAGE DeriveAnyClass #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StandaloneDeriving #-}

module DistillTest
    ( test
    ) where

import IO
import Distill as D

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

import qualified ARM.MRAS.DTD.A64.Iformp as X
import ARM.MRAS.DTD.A64.Iformp hiding (Encoding, C, Box)


root :: FilePath
root = "../../test/nix-results/arm-mras.patched-a64/ISA_v83A_A64_xml_00bet5"

test :: IO ()
test = do
    base <- listPages root "index.xml"
    fpsimd <- listPages root "fpsimdindex.xml"
    forM (base ++ fpsimd) $ \p -> do
        putStrLn $ ">> " ++ p
        isec <- readPage p
        let ins = distillPage isec
        deepseq ins $ do
            let D.Page id alias classes expls _ = ins
            forM expls $ \(D.Explanation eids sym mapping) -> do
                case mapping of
                    D.Definition fld (D.Table hd bd) -> do
                        let f e@(TableEntry Entry_class_symbol (Left ('<':cs))) =
                                case reverse cs of
                                    '>':css -> TableEntry Entry_class_symbol (Left "<>")
                                    _ -> e
                            f e = e
                            t = D.Table (map f hd) bd
                        putStrLn (show t)
                    D.Account fld expl -> do
                        return ()
    return ()

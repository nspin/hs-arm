{-# LANGUAGE DeriveAnyClass #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StandaloneDeriving #-}

module StructureTest
    ( test
    ) where

import IO
import Distill as D
import Tidy as T
import Table as S

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
        isec <- readPage p
        let page = tidyPage (distillPage isec)
        deepseq page $ case page of
            Left _ -> return ()
            Right (T.Page pid apids classes pss) -> void $
                forM classes $ \(T.Class cid _ diag encs _) -> do
                    let fields = fieldsOf diag
                    forM encs $ \(T.Encoding _ _ _ syms) ->
                        forM syms $ \(T.Symbol sym bits mtbl) ->
                            case mtbl of
                                Nothing -> return ()
                                Just tbl -> do
                                    let S.Table bfs bdy = parseTable fields tbl
                                    let vars = splitWith (== ':') bits
                                    putStrLn p
                                    putStrLn sym
                                    putStrLn bits
                                    print bfs
                                    forM bdy $ \(S.TableRow v bv av) -> do
                                        putStrLn $ show v ++  ": " ++ intercalate " " (map (map showBit) bv) ++ maybe "" (\a -> " (" ++ show a ++ ")") av
                                    putStrLn ""
    return ()



fieldsOf :: T.Diagram -> [String]
fieldsOf (T.Diagram _ blocks) = catMaybes (map f blocks)
  where
    f (Block n _) = n

splitWith :: (a -> Bool) -> [a] -> [[a]]
splitWith p = go
  where
    go [] = []
    go cs = case break p cs of
        (good, bad) -> case bad of
            [] -> [good]
            b:ad -> good : go ad

showBit :: Bit -> Char
showBit I = '1'
showBit O = 'O'
showBit X = 'x'

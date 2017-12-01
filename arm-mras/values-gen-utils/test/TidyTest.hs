{-# LANGUAGE DeriveAnyClass #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StandaloneDeriving #-}

module TidyTest
    ( test
    ) where

import IO
import Tidy as T
import qualified Distill as D

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
        let page = tidyPage (D.distillPage isec)
        print p
        deepseq page $ case page of
            Left (AliasPage _ _ _) -> return ()
            Right (T.Page pid apids classes pss) -> void $
                forM (map fst classes) $ \(T.Class cid marchvar diags encs) -> do
                    forM encs $ \(T.Encoding _ _ tmp syms) ->
                        forM syms $ \(T.Symbol sym bits tbl) -> do
                            -- print pid
                            print bits
                            -- case tbl of
                            --     Nothing -> return ()
                            --     Just (T.Table bfs bdy) -> do
                            --         let vars = splitWith (== ':') bits
                            --         putStrLn p
                            --         putStrLn sym
                            --         putStrLn bits
                            --         print bfs
                            --         forM bdy $ \(TableRow v bv av) -> do
                            --             putStrLn $ show v ++  ": " ++ intercalate " " (map (map showBit) bv) ++ maybe "" (\a -> " (" ++ show a ++ ")") av
                            --         putStrLn ""
    return ()

checkAliases :: IO ()
checkAliases = do
    base <- listPages root "index.xml"
    fpsimd <- listPages root "fpsimdindex.xml"
    forM (base ++ fpsimd) $ \p -> do
        isec <- readPage p
        let page = tidyPage (D.distillPage isec)
        deepseq page $ case page of
            Right (T.Page pid apids classes pss) -> return ()
            Left (AliasPage pid apid (Class cid marchvar (Diagram dpsn blks) encs)) -> do
                let checks =
                        [
                        ]
                putStrLn p
                assert (and checks) $ putStr ""
    return ()

splitWith :: (a -> Bool) -> [a] -> [[a]]
splitWith p = go
  where
    go [] = []
    go cs = case break p cs of
        (good, bad) -> case bad of
            [] -> [good]
            b:ad -> good : go ad

showBit :: T.Bit -> Char
showBit I = '1'
showBit O = 'O'
showBit X = 'x'

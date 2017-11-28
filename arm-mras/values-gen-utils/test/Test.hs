{-# LANGUAGE DeriveAnyClass #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StandaloneDeriving #-}

module Test
    (
    ) where

import IO
import Tidy
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


root :: FilePath
root = "../../test/nix-results/arm-mras.patched-a64/ISA_v83A_A64_xml_00bet5"

allPages :: IO [Page]
allPages = fmap force $ do
    base <- listPages root "index.xml"
    fpsimd <- listPages root "fpsimdindex.xml"
    forM (base ++ fpsimd) $ \p -> do
        isec <- readPage p
        return (tidyPage (D.distillPage isec))

allPages' :: IO [(FilePath, Page)]
allPages' = fmap force $ do
    base <- listPages root "index.xml"
    fpsimd <- listPages root "fpsimdindex.xml"
    forM (base ++ fpsimd) $ \p -> do
        isec <- readPage p
        return (p, tidyPage (D.distillPage isec))

findPages :: (Page -> Maybe a) -> IO [(FilePath, a)]
findPages f = do
    ps <- allPages'
    return $ catMaybes (map (traverse f) ps)

withPages :: (Page -> [String]) -> IO [String]
withPages f = do
    pages <- allPages
    return (concatMap f pages)

withPagesTo :: (Page -> [String]) -> FilePath -> IO ()
withPagesTo f out = withFile out WriteMode $ \h -> do
    pages <- allPages
    forM_ (concatMap f pages) (hPutStrLn h)

getTemplates :: Page -> [String]
getTemplates p = case p of
    Page _ _ xs _ -> concatMap f xs
    AliasPage _ _ x -> f x
  where
    f (Class _ _ _ encs _) = map g encs
    g (Encoding _ _ t _) = t

getSymbols :: Page -> [String]
getSymbols p = case p of
    Page _ _ xs _ -> concatMap f xs
    AliasPage _ _ x -> f x
  where
    f (Class _ _ _ encs _) = concatMap g encs
    g (Encoding _ _ tmplts syms) = map h syms
    h (Symbol from _ _) = from

f :: Page -> Maybe String
f p = if any (isSubsequenceOf "(s+1)") (getTemplates p)
        then Just (show p)
        else Nothing

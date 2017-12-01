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
import Diagram
import qualified Distill as D

import Control.Applicative
import Control.DeepSeq
import Control.Exception
import Control.Monad
import Data.Bifunctor
import Data.Char
import Data.Foldable
import Data.List
import Data.Either
import Data.Maybe
import GHC.Generics (Generic)
import System.IO

import qualified Data.Text as T
import Data.Attoparsec.Text hiding (I)
import System.FilePath
import Text.XML.HaXml.XmlContent hiding (Parser)


root :: FilePath
root = "../../test/nix-results/arm-mras.patched-a64/ISA_v83A_A64_xml_00bet5"

everything :: IO [(FilePath, Either AliasPage Page)]
everything = fmap force $ do
    base <- listPages root "index.xml"
    fpsimd <- listPages root "fpsimdindex.xml"
    forM (base ++ fpsimd) $ \p -> do
        isec <- readPage p
        return (p, tidyPage (D.distillPage isec))

splitEverything :: [(FilePath, Either AliasPage Page)] -> [Either (FilePath, AliasPage) (FilePath, Page)]
splitEverything = map . uncurry $ \p -> bimap ((,) p) ((,) p)

allAliases :: IO [(FilePath, AliasPage)]
allAliases = lefts . splitEverything <$> everything

allPages :: IO [(FilePath, Page)]
allPages = rights . splitEverything <$> everything

getDiagrams :: Page -> [[Block]]
getDiagrams (Page _ _ cs _) = (map fst cs) >>= diagrams

checkDiags :: IO ()
checkDiags = void $ do
    ppages <- allPages
    forM ppages $ \(p, page) -> do
        let diags = getDiagrams page
        when (not (all check diags)) $ do
            putStrLn p
  where
    check :: [Block] -> Bool
    check = all f
      where
        f (Block _ (BlockEq _)) = True
        f (Block _ (BlockNeq _)) = False

-- checkFields :: IO [Field]
-- checkFields = do
--     ppages <- allPages
--     fss <- forM ppages $ \(p, page) -> do
--         let fs = getDiagrams page >>= fields
--         forM fs $ \(Field hi lo s) ->
--             when (not (all isAlphaNum s)) $ do
--                 putStrLn p
--                 putStrLn s
--     return []
--     --     return fs
--     -- let sfs = (nub (sort (concat fss)))
--     -- return sfs
--         -- forM fs $ \(Field hi lo n) -> do
--             -- putStrLn n
--             -- return f

checkFields :: IO [Field]
checkFields = do
    ppages <- allPages
    fss <- forM ppages $ \(p, page) -> do
        let fs = getDiagrams page >>= fields
        return fs
    let sfs = (nub (sort (concat fss)))
    return sfs

-- allOf :: (Page -> [a]) -> [(FilePath, Page)] ->
-- allPages' :: IO [(FilePath, Page)]
-- allPages' = fmap force $ do
--     base <- listPages root "index.xml"
--     fpsimd <- listPages root "fpsimdindex.xml"
--     forM (base ++ fpsimd) $ \p -> do
--         isec <- readPage p
--         return (p, tidyPage (D.distillPage isec))

-- findPages :: (Page -> Maybe a) -> IO [(FilePath, a)]
-- findPages f = do
--     ps <- allPages'
--     return $ catMaybes (map (traverse f) ps)

-- withPages :: (Page -> [String]) -> IO [String]
-- withPages f = do
--     pages <- allPages
--     return (concatMap f pages)

-- withPagesTo :: (Page -> [String]) -> FilePath -> IO ()
-- withPagesTo f out = withFile out WriteMode $ \h -> do
--     pages <- allPages
--     forM_ (concatMap f pages) (hPutStrLn h)

-- getTemplates :: Page -> [String]
-- getTemplates p = case p of
--     Page _ _ xs _ -> concatMap f xs
--     AliasPage _ _ x -> f x
--   where
--     f (Class _ _ _ encs _) = map g encs
--     g (Encoding _ _ t _) = t

-- getSymbols :: Page -> [String]
-- getSymbols p = case p of
--     Page _ _ xs _ -> concatMap f xs
--     AliasPage _ _ x -> f x
--   where
--     f (Class _ _ _ encs _) = concatMap g encs
--     g (Encoding _ _ tmplts syms) = map h syms
--     h (Symbol from _ _) = from

-- f :: Page -> Maybe String
-- f p = if any (isSubsequenceOf "(s+1)") (getTemplates p)
--         then Just (show p)
--         else Nothing

{-# LANGUAGE DeriveAnyClass #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StandaloneDeriving #-}

module Test
    (
    ) where

import IO
import Distill as D
import Structure as S

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

rawTemplates :: IO [String]
rawTemplates = concatMap f <$> ((++) <$> listPages root "index.xml" <*> listPages root "fpsimdindex.xml" >>= traverse readPage)
  where
    f (Instructionsection attrs doc head desc _ (Classes _ (NonEmpty classes)) aliasmnem _ _ _ _) = do
        (Iclass iattrs _ _ _ (Regdiagram rattrs boxes) (NonEmpty encs) _ _) <- classes
        (X.Encoding eattrs _ _ bxs (NonEmpty asms) _) <- encs
        extract <$> asms

showTemplates :: IO ()
showTemplates = rawTemplates >>= mapM_ putStrLn

writeTemplates :: FilePath -> IO ()
writeTemplates p = do
    ts <- rawTemplates
    withFile p WriteMode $ \h -> mapM_ (hPutStrLn h) ts

extract :: Asmtemplate -> String
extract (Asmtemplate _ children) = unescape $ concatMap f children
  where
    f (Asmtemplate_A (A _ xs)) = concat xs
    f (Asmtemplate_Text (Text x)) = x

attoparse :: Parser a -> String -> a
attoparse parser str = case parseOnly parser (T.pack str) of
    Right a -> a
    Left err -> error ("|" ++ str ++ " !!! " ++ err ++ "|")


fancyBoxes :: [D.Box] -> String
fancyBoxes bs = intercalate " " (map fancyBox bs)

fancyBox :: D.Box -> String
fancyBox (D.Box hi width name cs) = prefix ++ "[ " ++ spec ++ " ]" ++ show width
  where
    prefix = fromMaybe "" name
    spec = intercalate " | " (map f cs)
    f (C w v) = v

writeBoxes :: FilePath -> IO ()
writeBoxes p = do
    withFile p WriteMode $ \h -> do
        base <- listPages root "index.xml"
        fpsimd <- listPages root "fpsimdindex.xml"
        forM (base ++ fpsimd) $ \p -> do
            hPutStr h "\n# "
            isec <- readPage p
            let ins = distillPage isec
                D.Page id alias classes expls _ = ins
            ins `deepseq` hPutStrLn h p
            forM classes $ \(D.Class id archvar (D.Diagram psn boxes) encs _) -> do
                hPutStrLn h (fancyBoxes boxes)
                forM encs $ \(D.Encoding eid bs t _) -> do
                    hPutStrLn h (fancyBoxes bs)
        return ()
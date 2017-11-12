{-# LANGUAGE OverloadedStrings #-}

module Test
    ( test
    ) where

import IO
import Distill

import Control.Monad
import Data.Maybe

import qualified Data.Text as T
import Data.Attoparsec.Text
import System.FilePath
import Text.XML.HaXml.XmlContent hiding (Parser)

import qualified ARM.MRAS.DTD.A64.Iformp as D
import ARM.MRAS.DTD.A64.Iformp hiding (Encoding)


root :: FilePath
root = "../gen-test-out/patched-a64/ISA_v83A_A64_xml_00bet5"

test :: IO ()
test = do
    files <- listInstrs root
    forM files $ \p -> do
        isec <- readInstr p
        isec `seq` putStrLn p
        let ins = distillInstr isec
        print ins
    return ()


attoparse :: Parser a -> String -> a
attoparse parser str = case parseOnly parser (T.pack str) of
    Right a -> a
    Left err -> error ("|" ++ str ++ " !!! " ++ err ++ "|")

data AsmTemplate = AsmTemplate String [Block] deriving Show

data Block = Raw String | Arg String String deriving Show

parseTemplate :: Asmtemplate -> AsmTemplate
parseTemplate (Asmtemplate _ (Asmtemplate_Text (Text nm) : rest)) = AsmTemplate nm (map f rest)
  where
    f (Asmtemplate_Text (Text raw)) = Raw raw
    f (Asmtemplate_A (A attrs [content])) = Arg ref sym
      where
        sym = attoparse (string "&lt;" *> manyTill anyChar (string "&gt;")) content
        ref = attoparse parseRef . fromJust $ aHover attrs
        parseRef = manyTill anyChar (string "(field ")
                *> (string "&quot;" <|> string "\"")
                *> manyTill anyChar (string "&quot;" <|> string "\"")
                <* string ")"

allTemplates :: IO ()
allTemplates = listInstrs root >>= mapM_ (fReadXml >=> mapM_ putStrLn . f)
  where
    f (Instructionsection attrs doc head desc _ (Classes _ (NonEmpty classes)) aliasmnem _ _ _ _) = do
        (Iclass iattrs _ _ _ (Regdiagram rattrs boxes) (NonEmpty encs) _ _) <- classes
        (D.Encoding eattrs _ _ bxs (NonEmpty asms) _) <- encs
        (show . parseTemplate) <$> asms

allTemplatesRaw :: IO ()
allTemplatesRaw = listInstrs root >>= mapM_ (fReadXml >=> mapM_ putStrLn . f)
  where
    f (Instructionsection attrs doc head desc _ (Classes _ (NonEmpty classes)) aliasmnem _ _ _ _) = do
        (Iclass iattrs _ _ _ (Regdiagram rattrs boxes) (NonEmpty encs) _ _) <- classes
        (D.Encoding eattrs _ _ bxs (NonEmpty asms) _) <- encs
        extract <$> asms

extract :: Asmtemplate -> String
extract (Asmtemplate _ children) = unescape $ concatMap f children
  where
    f (Asmtemplate_Str x) = x
    f (Asmtemplate_A (A _ xs)) = concat xs
    f (Asmtemplate_Anchor (Anchor _ x)) = x
    f (Asmtemplate_Txt txt) = undefined
    f (Asmtemplate_Text (Text x)) = x

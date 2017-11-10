{-# LANGUAGE OverloadedStrings #-}

module Main (main) where


import Control.Monad
import Data.Maybe
import Data.List (intercalate)
import System.Environment
import System.Exit

import Data.Attoparsec.Text hiding (take)
import qualified Data.Text as T
import Language.Haskell.Exts
import System.FilePath
import System.Directory
import Text.XML.HaXml.XmlContent hiding (Parser, many1)

import ARM.MRA.DTD.A64.Alphaindex
import ARM.MRA.DTD.A64.Iformp


modulePath :: [String]
modulePath = ["ARM", "MRA", "Gen"]


main :: IO ()
main = do
    args <- getArgs
    case args of
        [outDir, a64Dir] -> generate outDir a64Dir
        _ -> die $ "Usage: gen-arm-mra-src <outDir> <a64Dir>"


attoparse :: Parser a -> String -> a
attoparse parser str = case parseOnly parser (T.pack str) of
    Right a -> a
    Left err -> error ("|" ++ str ++ " !!! " ++ err ++ "|")

data Template = Template String [Block] deriving Show

data Block = Raw String | Arg String String deriving Show

parseTemplate :: Asmtemplate -> Template
parseTemplate (Asmtemplate _ (Asmtemplate_Text (Text nm) : rest)) = Template nm (map f rest)
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
allTemplates = allInstrFiles root >>= mapM_ (fReadXml >=> mapM_ putStrLn . f)
  where
    f (Instructionsection attrs doc head desc _ (Classes _ (NonEmpty classes)) aliasmnem _ _ _ _) = do
        (Iclass iattrs _ _ _ (Regdiagram rattrs boxes) (NonEmpty encs) _ _) <- classes
        (Encoding eattrs _ _ bxs (NonEmpty asms) _) <- encs
        (show . parseTemplate) <$> asms


root :: FilePath
root = "../results/xml/patched-a64/ISA_v83A_A64_xml_00bet5"

test :: IO ()
test = do
    files <- allInstrFiles root
    forM (take 10 files) $ \file -> do
        putStrLn ""
        putStrLn file
        putStrLn ""
        fReadXml file >>= process
    return ()


allInstrFiles :: FilePath -> IO [FilePath]
allInstrFiles root = do
    Alphaindex _ (Iforms _ (NonEmpty iforms)) <- fReadXml $ root </> "index.xml"
    return [ root </> iformIformfile attrs | Iform attrs _ <- iforms ]


process :: Instructionsection -> IO ()
process (Instructionsection attrs doc head desc _ (Classes _ (NonEmpty classes)) aliasmnem _ _ _ _) = do
    forM_ classes f
  where
    f (Iclass iattrs _ _ _ (Regdiagram rattrs boxes) (NonEmpty encs) _ _) = do
        print boxes
        forM_ encs g
    g (Encoding eattrs _ _ bxs (NonEmpty asms) _) = do
        print bxs
        forM asms $ \asm -> do
            print (extract asm)

extract :: Asmtemplate -> String
extract (Asmtemplate _ children) = unescape $ concatMap f children
  where
    f (Asmtemplate_Str x) = x
    f (Asmtemplate_A (A _ xs)) = concat xs
    f (Asmtemplate_Anchor (Anchor _ x)) = x
    f (Asmtemplate_Txt txt) = undefined
    f (Asmtemplate_Text (Text x)) = x

unescape :: String -> String
unescape ('&':'l':'t':';':cs) = '<' : unescape cs 
unescape ('&':'g':'t':';':cs) = '>' : unescape cs
unescape (c:cs) = c : unescape cs
unescape [] = []


-- HASKELL CODE GENERATION --

generate :: FilePath -> FilePath -> IO ()
generate outDir a64Dir = do
    createDirectoryIfMissing True (takeDirectory file)
    writeFile file $ prettyPrint instructions
  where
    file = outDir </> joinPath modulePath <.> "hs"


instructions :: Module ()
instructions = Module () (Just head) [] [] [decl]
  where
    head = ModuleHead () name Nothing Nothing
    name = ModuleName () $ intercalate "." modulePath
    decl = DataDecl () (DataType ()) Nothing
        (DHead () (Ident () "Instruction"))
        [QualConDecl () Nothing Nothing (ConDecl () (Ident () "Instruction") [])]
        Nothing

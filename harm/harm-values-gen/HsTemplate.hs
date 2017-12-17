{-# LANGUAGE OverloadedStrings #-}

module Main (main) where

import Extract

import ARM.MRAS

import Data.Foldable
import Data.Monoid
import Control.Applicative
import Language.Haskell.Exts
import System.Directory
import System.Environment
import System.Exit
import System.FilePath
import Text.Show
import Data.Attoparsec.ByteString.Char8
import Debug.Trace
import qualified Data.ByteString as B

main :: IO ()
main = do
    txt <- B.getContents
    let entries = case parseOnly parseEntries txt of
          Left err -> error err
          Right r -> r
    mapM_ print ( entries)

type Entry = ([Type ()], [String], [EncodingId])

parseEntries :: Parser [Entry]
parseEntries = many entry <* endOfInput
  where
    rol = manyTill anyChar endOfLine
    entry = do
        "# " *> rol
        ty <- "type: " *> rol
        let tys = unfoldType . (() <$) . fromParseResult $ parseType ("X " ++ ty)
        fs <- "fields: " *> (filter (not . null) <$> (many (satisfy (not . flip elem (" \n" :: String)))) `sepBy` char ' ') <* rol
        ids <- many $ "- " *> manyTill anyChar " " <* rol
        "\n"
        return (tys, fs, ids)

-- parseEntries :: Parser [Entry]
-- parseEntries = do
--     manyTill rol (() <$ "type: " <|> endOfInput)
--     end <- atEnd
--     if end
--       then return []
--       else do
--         ty <- rol
--         "fields: "
--         fs <- (many (satisfy (not . flip elem (" \n" :: String)))) `sepBy` char ' '
--         let tys = unfoldType . (() <$) . fromParseResult$ parseType ty
--         (:) (tys, fs) <$> parseEntries
--   where
--     rol = manyTill anyChar endOfLine

unfoldType :: Type a -> [Type a]
unfoldType = go []
  where
    go acc (TyApp _ f x) = go (x:acc) f
    go acc (TyCon _ _) = acc

unliness :: [ShowS] -> ShowS
unliness = concats . map (. showChar '\n')

concats :: [ShowS] -> ShowS
concats = appEndo . foldMap Endo

puts :: ShowS -> IO ()
puts s = putStr (s "")

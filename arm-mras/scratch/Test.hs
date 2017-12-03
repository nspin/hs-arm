{-# LANGUAGE LambdaCase #-}

module Test where

import Lib

import ARM.MRAS.Types
import ARM.MRAS.Types.Diagram

import Control.Monad
import Data.Bifunctor
import Data.Either
import Data.Function
import Data.List
import System.FilePath
import System.IO


splitAll :: [(FilePath, Either AliasPage Page)] -> [Either (FilePath, AliasPage) (FilePath, Page)]
splitAll = map . uncurry $ \p -> bimap ((,) p) ((,) p)

allAliases :: IO [(FilePath, AliasPage)]
allAliases = lefts . splitAll <$> getAll

allPages :: IO [(FilePath, Page)]
allPages = rights . splitAll <$> getAll

getDiagrams :: Page -> [[Block]]
getDiagrams (Page _ _ cs _) = (map fst cs) >>= diagrams

getClasses :: Either AliasPage Page -> [Class]
getClasses (Left (AliasPage _ _ cl)) = [cl]
getClasses (Right (Page _ _ cls _)) = map fst cls

getEncodings :: Class -> [Encoding]
getEncodings (Class _ _ _ encs) = encs

getSymbols :: Encoding -> [Symbol]
getSymbols (Encoding _ _ _ syms) = syms

getTablesWithInfo :: (FilePath, Either AliasPage Page) -> [(FilePath, Table)]
getTablesWithInfo (path, page) = do
    Symbol sym encin mt <- getClasses page >>= getEncodings >>= getSymbols
    case mt of
        Nothing -> []
        Just t -> return (path, t)

showTables :: IO ()
showTables = do
    parsed <- getAll
    let ts = nubBy ((==) `on` snd) (concatMap getTablesWithInfo parsed)
    withFile "tables.txt" WriteMode $ \h -> do
        forM_ ts $ \(path, Table collabs rows) -> do
            hPutStrLn h ""
            hPutStrLn h $ "# " ++ (dropExtension (takeFileName path))
            hPutStrLn h (show collabs)
            forM_ rows $ \(TableRow val pats marchvar) -> do
                hPutStrLn h $ val ++ concatMap ((++) "\t" . map showBit) pats

showBit :: Bit -> Char
showBit I = '1'
showBit O = 'O'
showBit X = 'x'

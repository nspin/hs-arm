{-# LANGUAGE LambdaCase #-}

module Test where

import Lib

import ARM.MRAS.Types
import ARM.MRAS.Parse
import ARM.MRAS.Parse.IO

import Control.Monad
import Data.Bifunctor
import Data.Either
import Data.Function
import Data.List
import System.FilePath
import System.IO


main :: IO ()
main = void $ do
    base <- listPages root "index.xml"
    fpsimd <- listPages root "fpsimdindex.xml"
    forM base $ \path -> do
        isec <- readPage path
        let aad = "// " ++ baseName ++ "\n\n" ++ gen (parsePage isec)
            baseName = dropExtension (takeFileName path)
            out = "../../aadl/aadl/base" </> baseName <.> "aad"
        withFile out WriteMode $ \h -> hPutStr h aad

gen :: Either AliasPage Page -> String
gen ep = init (unlines tops)
  where
    tops = case ep of
        Left (AliasPage pid _ cl) -> f cl
        Right (Page pid _ clps _) -> concatMap (f . fst) clps
    f (Class _ _ _ encs) = map g encs
    g (Encoding eid _ tmplt _) = block eid tmplt
    block eid tmplt = unlines
        [ "insn " ++ eid ++ " { // " ++ tmplt
        , "    "
        , "}"
        ]

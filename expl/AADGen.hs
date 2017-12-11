{-# LANGUAGE LambdaCase #-}

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
        case parsePage isec of
            Left _ -> return ()
            Right p -> do
                let baseName = dropExtension (takeFileName path)
                    out = "../../aadl/aadl/base" </> baseName <.> "aad"
                withFile out WriteMode $ \h -> hPutStr h (gen p)
    forM fpsimd $ \path -> do
        isec <- readPage path
        case parsePage isec of
            Left _ -> return ()
            Right p -> do
                let baseName = dropExtension (takeFileName path)
                    out = "../../aadl/aadl/fpsimd" </> baseName <.> "aad"
                withFile out WriteMode $ \h -> hPutStr h (gen p)

gen :: Page -> String
gen (Page pid _ clps _) = init (unlines (concatMap (f . fst) clps))
  where
    f (Class _ _ _ encs) = map g encs
    g (Encoding eid _ tmplt _) = block eid tmplt
    block eid tmplt = unlines
        [ "// " ++ tmplt
        , "insn " ++ eid ++ " {"
        , "    "
        , "}"
        ]

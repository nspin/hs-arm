{-# LANGUAGE DeriveAnyClass #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StandaloneDeriving #-}

module TableTest
    ( test
    ) where

import Lib
import ARM.MRAS.Types hiding (Table, TableRow)
import ARM.MRAS.Types.Table

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

test :: IO ()
test = do
    parsed <- getAll
    forM parsed $ \(p, page) -> do
        case page of
            Left _ -> return ()
            Right (Page pid apids classes pss) -> void $
                forM classes $ \(Class cid _ diag encs, _) -> do
                    let fields = fieldsOf diag
                    forM encs $ \(Encoding _ _ _ syms) ->
                        forM syms $ \(Symbol sym bits mtbl) ->
                            case mtbl of
                                Nothing -> return ()
                                Just tbl -> do
                                    let Table bfs bdy = parseTable fields tbl
                                    let vars = splitWith (== ':') bits
                                    putStrLn p
                                    putStrLn sym
                                    putStrLn bits
                                    print bfs
                                    forM bdy $ \(TableRow v bv av) -> do
                                        putStrLn $ show v ++  ": " ++ intercalate " " (map (map showBit) bv) ++ maybe "" (\a -> " (" ++ show a ++ ")") av
                                    putStrLn ""
    return ()


fieldsOf :: Diagram -> [String]
fieldsOf (Diagram _ blocks) = catMaybes (map f blocks)
  where
    f (Block n _) = n

splitWith :: (a -> Bool) -> [a] -> [[a]]
splitWith p = go
  where
    go [] = []
    go cs = case break p cs of
        (good, bad) -> case bad of
            [] -> [good]
            b:ad -> good : go ad

showBit :: Bit -> Char
showBit I = '1'
showBit O = 'O'
showBit X = 'x'

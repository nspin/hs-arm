import Lib

import ARM.MRAS

import Control.Monad
import Data.Bifunctor
import Data.Either
import Data.Function
import Data.List
import System.FilePath
import System.IO

import Control.Lens

tables :: [(FilePath, Table)]
tables = concatMap splitAssoc $
       f baseInsns
    ++ g baseAliases
    ++ f fpsimdInsns
    ++ g fpsimdAliases
  where
    f :: [(FilePath, Insn)] -> [(FilePath, [Table])]
    f = map . fmap . toListOf $ insn_classes.traverse._1.class_encodings.traverse.encoding_symbols.traverse.symbol_table._Just
    g = map . fmap . toListOf $              alias_class.class_encodings.traverse.encoding_symbols.traverse.symbol_table._Just

pp :: (FilePath, Table) -> String
pp (p, t) = unlines $ ("# " ++ p) : show (t^.table_head) : map f (t^.table_body)
  where
    f (TableRow val pats marchvar) = val ++ concatMap ((++) "\t" . map showBit) pats

main :: IO ()
main = mapM_ (putStrLn . pp) $ nubBy ((==) `on` snd) tables

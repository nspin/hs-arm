import Lib

import ARM.MRAS
import ARM.MRAS.Parse
import ARM.MRAS.Parse.IO

import Control.Monad
import Data.Bifunctor
import Data.Either
import Data.Function
import Data.List
import Data.Maybe
import System.FilePath
import System.IO
import System.Process

import Control.Lens

templates :: Insn -> [Template]
templates = toListOf $ insn_classes.traverse._1.class_encodings.traverse.encoding_template

stripMnem :: String -> String
stripMnem = dropWhile f
  where
    f c = 'A' <= c && c <= 'Z' || '0' <= c && c <= '9'

switch :: [(String, [Template])] -> [(Template, [String])]
switch = map f . groupBy ((==) `on` snd) . sortBy (compare `on` snd) . concatMap g
  where
    f l@((_, k):_) = (k, nub (map fst l))
    g (k, vs) = map ((,) k) (map stripMnem vs)

assocsOf :: [(String, Insn)] -> [(Template, [String])]
assocsOf = switch . map (fmap templates)

open name = system $ "'/Applications/Google Chrome.app/Contents/MacOS/Google Chrome'  https://meriac.github.io/A64_v83A_ISA/" ++ name

openAt assocs tplt = mapM_ open . fromJust $ lookup tplt (fst assocs)

main = do
    forM (assocsOf baseInsns) $ \(tplt, names) -> do
        unless (null tplt) $ void $ do
            putStrLn tplt
            forM names open
            getLine

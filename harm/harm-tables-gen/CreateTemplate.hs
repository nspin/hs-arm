{-# LANGUAGE RecordWildCards #-}

module Main (main) where

import ARM.MRAS

import Control.Lens
import Data.Function
import Data.List
import Data.Monoid
import System.IO
import Text.Show

test :: IO ()
test = withFile "../harm-tables/src/Harm/Tables/Logic.hs" WriteMode writeTemplate

main :: IO ()
main = writeTemplate stdout

writeTemplate :: Handle -> IO ()
writeTemplate h = hPutStr h . ($ "") . concats $ zipWith f [0..] encodingGroups
  where
    f n (tplt, grp) =
          showString "--- " . shows n . showString ": '" . showString tplt . showString "'\n"
        . concats (map el grp)
        . showChar '\n'
        . f ["type Logical", " = '[]"]
        . f ["type Binary", "  = '[]\n"]
        . f ["decode", " :: Fn Logical", " a -> FnW Binary", " (Decode a)"]
        . f ["decode", " f = return f\n"]
        . f ["encode", " :: FnW Binary", " a -> Fn Logical", " (Encode a)"]
        . f ["encode", " f = return f\n"]
        . f ["parse", " :: Fn Logical", " a -> Parser a"]
        . f ["parse", " f = do\n    return $ f\n"]
        . f ["show", " :: Fn Logical", " (String, ShowS)"]
        . f ["show", " = simple $ id"]
        . showString "\n\n"
      where
        f segs = (. showChar '\n') $ case reverse segs of
            s:egs -> concats . reverse $ showString s : map suffix egs
        suffix s =
              showString s
            . showChar '_'
            . shows n
    el (_, encid, file) =
          showString "--- "
        . showString (_encoding_id encid)
        . showString (replicate (30 - length (_encoding_id encid)) ' ')
        . showString file
        . showChar '\n'

concats :: [ShowS] -> ShowS
concats = appEndo . foldMap Endo

-- (template, [(mnemonic, encoding, file)])
encodingGroups :: [(String, [(String, Encoding, String)])]
encodingGroups = map reduce . groupBy ((==) `on` view _1) . sortBy (lengthFirst `on` view _1) $ concatMap flatten (base ++ fpsimd)
  where
    reduce grp@(g:rp) = (g^._1, map f grp)
      where
        f (_, m, i, f) = (m, i, f)

lengthFirst :: Ord a => [a] -> [a] -> Ordering
lengthFirst x y = case compare (length x) (length y) of
    EQ -> compare x y
    c -> c

flatten :: Insn -> [(String, String, Encoding, String)]
flatten Insn{..} = flip concatMap (map fst _insn_classes) $ \Class{..} ->
    -- keep class in scope this level because binding diagrams may be necessary later
    flip map _class_encodings $ \enc@Encoding{..} ->
        let (mnem, tplt) = splitMnem _encoding_template
        in ( tplt
           , mnem
           , enc
           , _insn_file
           )

splitMnem :: String -> (String, String)
splitMnem = span (not . flip elem " .{")

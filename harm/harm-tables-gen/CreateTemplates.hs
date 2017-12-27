{-# LANGUAGE RecordWildCards #-}

module Main (main) where

import ARM.MRAS

import Control.Lens
import Data.Function
import Data.List
import Data.Monoid
import System.Directory
import System.FilePath
import System.IO

main :: IO ()
main = createTemplates "../harm-tables/src/Harm/Tables/Logic"

createTemplates :: FilePath -> IO ()
createTemplates root = do
    createDirectoryIfMissing True root
    withFile (root </> "Base.hs") WriteMode $ \h ->
        writeTemplate h "B" base
    withFile (root </> "FpSimd.hs") WriteMode $ \h ->
        writeTemplate h "F" fpsimd

writeTemplate :: Handle -> String -> [Insn] -> IO ()
writeTemplate h prefix = hPutStr h . ($ "") . concats . zipWith f [0..] . encodingGroups
  where
    f n (tplt, grp) =
          showString "--- " . gid . showString ": '" . showString tplt . showString "'\n"
        . concats (map el grp)
        . showChar '\n'
        . g ["type Logical", " = '[]"]
        . g ["type Binary", "  = '[]\n"]
        . g ["decode", " :: Fn Logical", " a -> FnW Binary", " (Decode a)"]
        . g ["decode", " f = return f\n"]
        . g ["encode", " :: FnW Binary", " a -> Fn Logical", " (Encode a)"]
        . g ["encode", " f = return f\n"]
        . g ["parse", " :: Fn Logical", " a -> Parser a"]
        . g ["parse", " f = ws >> return f\n"]
        . g ["show", " :: Fn Logical", " (String, String)"]
        . g ["show", " = simple $ \"\""]
        . showString "\n\n"
      where

        g segs = (. showChar '\n') $ case reverse segs of
            s:egs -> concats . reverse $ showString s : [ showString eg . showChar '_' . gid | eg <- egs ]
        gid = showString prefix . shows n
    el (_, encid, file) =
          showString "--- "
        . showString (_encoding_id encid)
        . showString (replicate (30 - length (_encoding_id encid)) ' ')
        . showString file
        . showChar '\n'

concats :: [ShowS] -> ShowS
concats = appEndo . foldMap Endo

-- (template, [(mnemonic, encoding, file)])
encodingGroups :: [Insn] -> [(String, [(String, Encoding, String)])]
encodingGroups = map reduce . groupBy ((==) `on` view _1) . sortBy (lengthFirst `on` view _1) . concatMap flatten
  where
    reduce grp@(g:rp) = (g^._1, [ (m, i, f) | (_, m, i, f) <- grp ])

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

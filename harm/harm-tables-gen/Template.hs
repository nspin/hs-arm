module Main (main) where

import Extract

import ARM.MRAS

import Data.Monoid
import Data.Foldable
import System.IO
import Text.Show

main :: IO ()
main = withFile "../harm-tables/src/Harm/Tables/Logic.hs" WriteMode $ \h ->
    hPutStr h . ($ "") . concats $ zipWith f [0..] encodingGroups
  where
    f n (tplt, grp) =
          showString "-- '" . showString tplt . showString "'\n"
        . concats (map el grp)
        . suffix "decode" ":: (a) -> a"
        . suffix "decode" "f = f"
        . suffix "encode" ":: (a) -> a"
        . suffix "encode" "f = f\n"
        . suffix "parse" ":: (a) -> Parser a"
        . suffix "parse" "f = return f"
        . suffix "show" ":: ShowS"
        . suffix "show" "= id"
        . showChar '\n'
      where
        suffix before after =
              showString before
            . showChar '_'
            . showString (replicate (3 - length (show n)) '0')
            . shows n
            . showChar ' '
            . showString after
            . showChar '\n'
    el (_, encid, file) =
          showString "-- "
        . showString (_encoding_id encid)
        . showString (replicate (20 - length (_encoding_id encid)) ' ')
        . showString file
        . showChar '\n'

concats :: [ShowS] -> ShowS
concats = appEndo . foldMap Endo

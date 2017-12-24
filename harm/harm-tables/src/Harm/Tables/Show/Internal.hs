module Harm.Tables.Show.Internal
    ( withMnem
    ) where

withMnem :: String -> (String, ShowS) -> (String, ShowS)
withMnem mnem (suffix, operand) = (mnem ++ suffix, operand)

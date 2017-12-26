{-# LANGUAGE OverloadedStrings #-}

module Test where

import Harm
import Harm.Extra
import Control.Monad

main :: IO ()
main = do
    (start, words) <- elfText "../test/nix-results/test.busybox/busybox"
    forM_ (zip [start, start + 4..] words) $ \(offset, w) ->
        putLn $ hex offset . "  " . hex w . "  " .
            case decode w of
                Nothing -> ".inst  " . hex w
                Just insn -> padRight 30 (showAsmAt 7 insn)
                    . showString (encodingId insn)

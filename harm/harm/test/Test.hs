module Test where

import Harm
import Harm.Extra
import Control.Monad

busybox :: String
busybox = "../../test/nix-results/test.busybox/busybox"

main :: IO ()
main = do
    (start, t) <- elfText busybox
    forM_ (zip [start, start + 4..] t) $ \(offset, w) -> do
        putStrLn $ hex offset ++ "  " ++
            case encodingOf w of
                Nothing -> hex w
                Just enc -> show enc

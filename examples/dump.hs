import Harm
import Harm.Extra
import Control.Monad

main :: IO ()
main = do
    (start, words) <- elfText "../test/nix-results/test.busybox/busybox"
    forM_ (zip [start, start + 4..] words) $ \(offset, word) ->
        putStrLn $ hex offset ++ "  " ++ hex word ++ "  " ++
            case decode word of
                Nothing -> ".inst  " ++ hex word
                Just insn -> padRight 30 (toAsmCol 7 insn) ++ encodingId insn

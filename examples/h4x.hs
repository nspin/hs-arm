import Harm

import Control.Monad
import Data.Foldable
import Data.Word
import Foreign.Marshal
import Foreign.Storable
import System.IO

main :: IO ()
main = alloca $ \ptr -> for_ [0, 4..] $ \offset -> do
    n <- hGetBuf stdin ptr 4
    when (n == 4) $ do
        w <- peek ptr
        case encodingOf w of
            Just (RET _) -> print offset
            _ -> return ()

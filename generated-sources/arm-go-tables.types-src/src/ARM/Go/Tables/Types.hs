module ARM.Go.Tables.Types
    ( InstFormat(..)
    , module ARM.Go.Tables.Types.Gen
    ) where

import ARM.Go.Tables.Types.Gen
import Data.Word

data InstFormat = InstFormat
    { inst_format_mask :: Word32
    , inst_format_value :: Word32
    , inst_format_op :: Op
    , inst_format_args :: [Arg]
    , inst_format_can_decode :: Maybe Predictor
    , inst_format_template :: String
    } deriving (Eq, Show)

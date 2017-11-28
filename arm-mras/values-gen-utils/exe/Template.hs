{-# LANGUAGE DeriveAnyClass #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE StandaloneDeriving #-}
{-# LANGUAGE OverloadedStrings #-}

module Template where

import Control.Applicative
import Control.DeepSeq
import Control.Exception
import Data.Attoparsec.Text hiding (I)
import qualified Data.Text as T
import Data.Char
import Data.Foldable
import Data.Function
import Data.List
import Data.Maybe
import Debug.Trace
import GHC.Generics (Generic)


data Template = Template String
    deriving (Show, Generic, NFData)


parseTemplate :: Parser Template
parseTemplate = return (Template "hi")

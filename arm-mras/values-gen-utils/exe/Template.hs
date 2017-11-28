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


data Template = Template String (Maybe Suffix) [Chunk] Excl
    deriving (Show, Generic, NFData)

data Suffix = SquiggleTwo | DotCond
    deriving (Show, Generic, NFData)

data Excl = Excl | NoExcl
    deriving (Show, Generic, NFData)

data Chunk = ChunkUnit Unit | ChunkBracket [Chunk] | ChunkSquiggle [Chunk]
    deriving (Show, Generic, NFData)

data Unit = Unit Pound Atom
    deriving (Show, Generic, NFData)

data Atom = AtomSymbol String | Atom0 | AtomLSL
    deriving (Show, Generic, NFData)

data Pound = Pound | NoPound
    deriving (Show, Generic, NFData)


parseTemplate :: Parser Template
parseTemplate = return (Template "foo")

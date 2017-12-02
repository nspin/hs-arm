{-# LANGUAGE DeriveAnyClass #-}
{-# LANGUAGE DeriveGeneric #-}

module ARM.MRAS.Types
    ( Page(..)
    , PageId
    , AliasPage(..)
    , Class(..)
    , ClassId
    , ArchVar(..)
    , Diagram(..)
    , Box(..)
    , Block(..)
    , BlockSpec(..)
    , Bit(..)
    , Encoding(..)
    , EncodingId
    , Template
    , Symbol(..)
    , Table(..)
    , TableRow(..)
    , Ps(..)
    , PsName
    , PsSection(..)
    ) where

import Control.DeepSeq
import GHC.Generics (Generic)


data Page = Page PageId [PageId] [(Class, [Ps])] [Ps]
    deriving (Show, Generic, NFData)

type PageId = String

data AliasPage = AliasPage PageId PageId Class
    deriving (Show, Generic, NFData)

data Class = Class ClassId (Maybe ArchVar) Diagram [Encoding]
    deriving (Show, Generic, NFData)

type ClassId = String

data ArchVar = ArchName String | ArchFeature String
    deriving (Show, Generic, NFData)

data Diagram = Diagram PsName [Block]
    deriving (Show, Generic, NFData)

data Box = Box Int Int Block
    deriving (Show, Generic, NFData)

data Block = Block (Maybe String) BlockSpec
    deriving (Show, Generic, NFData)

data BlockSpec = BlockEq [Bit] | BlockNeq [Bit]
    deriving (Show, Generic, NFData)

data Bit = I | O | X
    deriving (Eq, Show, Generic, NFData)


data Encoding = Encoding EncodingId [(String, BlockSpec)] Template [Symbol]
    deriving (Show, Generic, NFData)

type EncodingId = String

type Template = String

data Symbol = Symbol String String (Maybe Table) -- sym bits values
    deriving (Show, Generic, NFData)

data Table = Table [String] [TableRow]
    deriving (Show, Generic, NFData)

data TableRow = TableRow String [[Bit]] (Maybe ArchVar)
    deriving (Show, Generic, NFData)


data Ps = Ps PsName (Maybe PsSection) String
    deriving (Show, Generic, NFData)

type PsName = String

data PsSection = PsDecode | PsPostDecode | PsExecute
    deriving (Show, Generic, NFData)

{-# LANGUAGE DeriveAnyClass #-}
{-# LANGUAGE DeriveGeneric #-}

module ARM.MRAS.Types
    ( Insn(..)
    , PageId
    , Alias(..)
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

data Insn = Insn
    { _insn_id :: PageId
    , _insn_aliases :: [PageId]
    , _insn_classes :: [(Class, [Ps])]
    , _insn_ps :: [Ps]
    } deriving (Eq, Show, Generic, NFData)

type PageId = String

data Alias = Alias
    { _alias_id :: PageId
    , _alias_insn :: PageId
    , _alias_class :: Class
    } deriving (Eq, Show, Generic, NFData)

data Class = Class
    { _class_id :: ClassId
    , _class_arch_var :: Maybe ArchVar
    , _class_diagram :: Diagram
    , _class_encodings :: [Encoding]
    } deriving (Eq, Show, Generic, NFData)

type ClassId = String

data ArchVar = ArchName String | ArchFeature String
    deriving (Eq, Show, Generic, NFData)

data Diagram = Diagram
    { _diagram_ps_name :: PsName
    , _diagram_blocks :: [Block]
    } deriving (Eq, Show, Generic, NFData)

data Box = Box
    { _box_hi :: Int
    , _box_width :: Int
    , _box_block :: Block
    } deriving (Eq, Show, Generic, NFData)

data Block = Block
    { _block_name :: Maybe String
    , _block_spec :: BlockSpec
    } deriving (Eq, Show, Generic, NFData)

data BlockSpec = BlockEq [Bit] | BlockNeq [Bit]
    deriving (Eq, Show, Generic, NFData)

data Bit = I | O | X
    deriving (Eq, Show, Generic, NFData)


data Encoding = Encoding
    { _encoding_id :: EncodingId
    , _encoding_diagram :: [(String, BlockSpec)]
    , _encoding_template :: Template
    , _encoding_symbols :: [Symbol]
    } deriving (Eq, Show, Generic, NFData)

type EncodingId = String

type Template = String

data Symbol = Symbol
    { _symbol_name :: String
    , _symbol_in :: String
    , _symbol_table :: Maybe Table
    } deriving (Eq, Show, Generic, NFData)

data Table = Table
    { _table_head :: [String]
    , _table_body :: [TableRow]
    } deriving (Eq, Show, Generic, NFData)

data TableRow = TableRow
    { _table_row_value :: String
    , _table_row_conds :: [[Bit]]
    , _table_row_arch_var :: Maybe ArchVar
    } deriving (Eq, Show, Generic, NFData)


data Ps = Ps
    { _ps_name :: PsName
    , _ps_section :: Maybe PsSection
    , _ps_code :: String
    } deriving (Eq, Show, Generic, NFData)

type PsName = String

data PsSection = PsDecode | PsPostDecode | PsExecute
    deriving (Eq, Show, Generic, NFData)

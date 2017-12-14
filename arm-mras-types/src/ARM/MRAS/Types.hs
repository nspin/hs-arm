{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveAnyClass #-}
{-# LANGUAGE DeriveFunctor #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE FunctionalDependencies #-}
{-# LANGUAGE KindSignatures #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE TypeFamilies #-}

module ARM.MRAS.Types
    ( InsnFromWith(..)
    , Insn
    , PageId
    , AliasFrom(..)
    , Alias
    , Class(..)
    , ClassId
    , ArchVar(..)
    , Ps(..)
    , PsName
    , PsSymbol
    , PsSection(..)

    , Encoding(..)
    , EncodingId
    , Template
    , Symbol(..)
    , Table(..)
    , TableRow(..)

    , DiagramAArch64(..)
    , DiagramAArch32(..)
    , Box(..)
    , Block(..)
    , BlockSpec(..)
    , Bit(..)

    , SharedPs(..)

    -- lenses
    , HasAliasFrom(..)
    , HasPs(..)

    , HasEncoding(..)
    , HasSymbol(..)
    , HasTable(..)
    , HasTableRow(..)

    , HasDiagramAArch64(..)
    , AsDiagramAArch32(..)
    , HasBox(..)
    , HasBlock(..)

    , insn_id
    , insn_file
    , insn_aliases
    , insn_classes
    , insn_ps

    , class_id
    , class_arch_var
    , class_diagram
    , class_encodings

    , HasSharedPs(..)
    ) where

import Control.DeepSeq
import Control.Lens.TH
import GHC.Generics (Generic)


data InsnFromWith diag alias file = Insn
    { _insn_id :: PageId
    , _insn_file :: file
    , _insn_aliases :: [alias]
    , _insn_classes :: [(Class diag, [Ps])]
    , _insn_ps :: [Ps]
    } deriving (Eq, Show, Generic, NFData, Functor)

type Insn diag = InsnFromWith diag (Alias diag) String

type PageId = String

data AliasFrom diag file = Alias
    { _alias_id :: PageId
    , _alias_file :: file
    , _alias_class :: Class diag
    } deriving (Eq, Show, Generic, NFData, Functor)

type Alias diag = AliasFrom diag String

data Class diag = Class
    { _class_id :: ClassId
    , _class_arch_var :: Maybe ArchVar
    , _class_diagram_ps_name :: PsName
    , _class_diagram :: diag
    , _class_encodings :: [Encoding]
    } deriving (Eq, Show, Generic, NFData)

type ClassId = String

data ArchVar = ArchName String | ArchFeature String
    deriving (Eq, Show, Generic, NFData)

data Ps = Ps
    { _ps_name :: PsName
    , _ps_deps :: [PsSymbol]
    , _ps_section :: Maybe PsSection
    , _ps_code :: String
    } deriving (Eq, Show, Generic, NFData)

type PsName = String
type PsSymbol = String

data PsSection = PsDecode | PsPostDecode | PsExecute
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


newtype DiagramAArch64 = DiagramA64 { _diagram_a64 :: [Block] }
    deriving (Eq, Show, Generic, NFData)
data DiagramAArch32 = DiagramA32 [Block] | DiagamT32 [Block] (Maybe [Block])
    deriving (Eq, Show, Generic, NFData)

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


data SharedPs = SharedPs
    { _shared_ps_name :: PsName
    , _shared_ps_link :: String
    , _shared_ps_deps :: [PsSymbol]
    , _shared_ps_symbols :: [PsSymbol]
    , _shared_ps_doc :: Maybe String
    , _shared_ps_code :: String
    } deriving (Eq, Show, Generic, NFData)


makeClassy ''AliasFrom
makeClassy ''Ps

makeClassy ''Encoding
makeClassy ''Symbol
makeClassy ''Table
makeClassy ''TableRow

makeClassy ''DiagramAArch64
makeClassyPrisms ''DiagramAArch32
makeClassy ''Box
makeClassy ''Block

makeLenses ''InsnFromWith
makeLenses ''Class

makeClassy ''SharedPs

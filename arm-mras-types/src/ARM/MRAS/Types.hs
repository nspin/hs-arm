{-# LANGUAGE DeriveAnyClass #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DeriveFunctor #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE FunctionalDependencies #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE TemplateHaskell #-}

module ARM.MRAS.Types
    ( PageId
    , ClassId
    , ArchVar(..)

    , Block(..)
    , BlockSpec(..)
    , Bit(..)

    , EncodingId
    , Template
    , Symbol(..)
    , Table(..)
    , TableRow(..)

    , Ps(..)
    , PsName
    , PsSymbol
    , PsSection(..)

    , SharedPs(..)

    , HasBlock(..)
    , HasSymbol(..)
    , HasTable(..)
    , HasTableRow(..)
    , HasPs(..)

    , HasSharedPs(..)
    ) where

import Control.DeepSeq
import Control.Lens.TH
import GHC.Generics (Generic)


type PageId = String
type ClassId = String

data ArchVar = ArchName String | ArchFeature String
    deriving (Eq, Show, Generic, NFData)

data Block = Block
    { _block_name :: Maybe String
    , _block_spec :: BlockSpec
    } deriving (Eq, Show, Generic, NFData)

data BlockSpec = BlockEq [Bit] | BlockNeq [Bit]
    deriving (Eq, Show, Generic, NFData)

data Bit = I | O | X
    deriving (Eq, Show, Generic, NFData)

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
    , _ps_deps :: [PsSymbol]
    , _ps_section :: Maybe PsSection
    , _ps_code :: String
    } deriving (Eq, Show, Generic, NFData)

type PsName = String
type PsSymbol = String

data PsSection = PsDecode | PsPostDecode | PsExecute
    deriving (Eq, Show, Generic, NFData)


data SharedPs = SharedPs
    { _shared_ps_name :: PsName
    , _shared_ps_link :: String
    , _shared_ps_deps :: [PsSymbol]
    , _shared_ps_symbols :: [PsSymbol]
    , _shared_ps_doc :: Maybe String
    , _shared_ps_code :: String
    } deriving (Eq, Show, Generic, NFData)


makeClassy ''Block
makeClassy ''Symbol
makeClassy ''Table
makeClassy ''TableRow
makeClassy ''Ps
makeClassy ''SharedPs

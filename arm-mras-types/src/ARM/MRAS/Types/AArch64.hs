{-# LANGUAGE DeriveAnyClass #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DeriveFunctor #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE FunctionalDependencies #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE TemplateHaskell #-}

module ARM.MRAS.Types.AArch64
    ( module ARM.MRAS.Types

    , InsnFromWith(..)
    , Insn
    , AliasFrom(..)
    , Alias
    , Class(..)
    , Encoding(..)

    , HasAliasFrom(..)
    , HasEncoding(..)

    , insn_id
    , insn_file
    , insn_aliases
    , insn_classes
    , insn_ps

    , class_id
    , class_arch_var
    , class_diagram
    , class_encodings
    ) where

import ARM.MRAS.Types

import Control.DeepSeq
import Control.Lens.TH
import GHC.Generics (Generic)


data InsnFromWith alias file = Insn
    { _insn_id :: PageId
    , _insn_file :: file
    , _insn_aliases :: [alias]
    , _insn_classes :: [(Class, [Ps])]
    , _insn_ps :: [Ps]
    } deriving (Eq, Show, Generic, NFData, Functor)

type Insn = InsnFromWith Alias String

data AliasFrom file = Alias
    { _alias_id :: PageId
    , _alias_file :: file
    , _alias_class :: Class
    } deriving (Eq, Show, Generic, NFData, Functor)

type Alias = AliasFrom String

data Class = Class
    { _class_id :: ClassId
    , _class_arch_var :: Maybe ArchVar
    , _class_ps_name :: PsName
    , _class_diagram :: [Block]
    , _class_encodings :: [Encoding]
    } deriving (Eq, Show, Generic, NFData)

data Encoding = Encoding
    { _encoding_id :: EncodingId
    , _encoding_diagram :: [(String, BlockSpec)]
    , _encoding_template :: Template
    , _encoding_symbols :: [Symbol]
    } deriving (Eq, Show, Generic, NFData)


makeLenses ''InsnFromWith
makeClassy ''AliasFrom
makeLenses ''Class
makeClassy ''Encoding

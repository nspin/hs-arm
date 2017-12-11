{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE FunctionalDependencies #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE TemplateHaskell #-}

module ARM.MRAS.Types.Lens
    ( HasAliasFrom(..)
    , HasDiagram(..)
    , HasBox(..)
    , HasBlock(..)
    , HasEncoding(..)
    , HasSymbol(..)
    , HasTable(..)
    , HasTableRow(..)
    , HasPs(..)

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

import ARM.MRAS.Types

import Control.Lens.TH

makeClassy ''AliasFrom
makeClassy ''Diagram
makeClassy ''Box
makeClassy ''Block
makeClassy ''Encoding
makeClassy ''Symbol
makeClassy ''Table
makeClassy ''TableRow
makeClassy ''Ps

makeLenses ''InsnFromWith
makeLenses ''Class

makeClassy ''SharedPs

{-# LANGUAGE TemplateHaskell #-}

module ARM.MRAS.Types.Lens
    ( HasInsn(..)
    , HasAlias(..)
    , HasDiagram(..)
    , HasBox(..)
    , HasBlock(..)
    , HasEncoding(..)
    , HasSymbol(..)
    , HasTable(..)
    , HasTableRow(..)
    , HasPs(..)

    , class_id
    , class_arch_var
    , class_diagram
    , class_encodings
    ) where

import ARM.MRAS.Types

import Control.Lens.TH

makeClassy ''Insn
makeClassy ''Alias
makeClassy ''Diagram
makeClassy ''Box
makeClassy ''Block
makeClassy ''Encoding
makeClassy ''Symbol
makeClassy ''Table
makeClassy ''TableRow
makeClassy ''Ps

makeLenses ''Class

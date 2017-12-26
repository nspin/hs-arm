{-# LANGUAGE DataKinds #-}
{-# LANGUAGE KindSignatures #-}
{-# LANGUAGE PolyKinds #-}

module Harm.Tables.Logic where

import Harm.Types
import Harm.Tables.Logic.Asm
import Harm.Tables.Logic.Binary
import Harm.Tables.Logic.Types

import Data.Attoparsec.ByteString.Char8

--- 229: '  <Xd|SP>, <Xn|SP>, #<imm>{, <shift>}'
--- ADD_64_addsub_imm             add_addsub_imm.xml
--- SUB_64_addsub_imm             sub_addsub_imm.xml

type Logical_229 = '[XnOrSP, XnOrSP, W 12, Bool]
type Binary_229  = '[2, 12, 5, 5]

decode_229 :: Fn Logical_229 a -> FnW Binary_229 (Decode a)
decode_229 f shift imm12 rn rd = f
    <$> dec rd
    <*> dec rn
    <*> dec imm12
    <*> decLSL12 shift

encode_229 :: FnW Binary_229 a -> Fn Logical_229 (Encode a)
encode_229 f xd xn imm shift = f
    <$> encLSL12 shift
    <*> enc imm
    <*> enc xn
    <*> enc xd

parse_229 :: Fn Logical_229 a -> Parser a
parse_229 f = ws >> f <$> msa <+> msa <+> msa <*> msaLSL12

show_229 :: Fn Logical_229 (String, ShowS)
show_229 xd xn imm shift = simple $ asm xd .> asm xn .> asm imm . asmLSL12 shift
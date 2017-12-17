{-# LANGUAGE DataKinds #-}
{-# LANGUAGE KindSignatures #-}
{-# LANGUAGE PolyKinds #-}

module Harm.Tables.Logic where

import Harm.Tables.Types
import Harm.Tables.Logic.Types
import Harm.Tables.Logic.Asm
import Harm.Tables.Logic.Binary

import Data.Attoparsec.ByteString.Char8

-- ''
-- AUTIA1716_HI_system autia.xml
-- AUTIASP_HI_system   autia.xml
-- AUTIAZ_HI_system    autia.xml
-- AUTIB1716_HI_system autib.xml
-- AUTIBSP_HI_system   autib.xml
-- AUTIBZ_HI_system    autib.xml
-- DRPS_64E_branch_reg drps.xml
-- ERET_64E_branch_reg eret.xml
-- ERETAA_64E_branch_regereta.xml
-- ERETAB_64E_branch_regereta.xml
-- ESB_HI_system       esb.xml
-- NOP_HI_system       nop.xml
-- PACIA1716_HI_system pacia.xml
-- PACIASP_HI_system   pacia.xml
-- PACIAZ_HI_system    pacia.xml
-- PACIB1716_HI_system pacib.xml
-- PACIBSP_HI_system   pacib.xml
-- PACIBZ_HI_system    pacib.xml
-- RETAA_64E_branch_regreta.xml
-- RETAB_64E_branch_regreta.xml
-- SEV_HI_system       sev.xml
-- SEVL_HI_system      sevl.xml
-- WFE_HI_system       wfe.xml
-- WFI_HI_system       wfi.xml
-- XPACLRI_HI_system   xpac.xml
-- YIELD_HI_system     yield.xml

type Logical_000 = '[]
type Binary_000  = '[]

decode_000 :: Fn Logical_000 a -> FnW Binary_000 (Decode a)
decode_000 f = return f

encode_000 :: FnW Binary_000 a -> Fn Logical_000 (Encode a)
encode_000 f = return f

parse_000 :: Fn Logical_000 a -> Parser a
parse_000 f = do
    return $ f

show_000 :: Fn Logical_000 ShowS
show_000 = id


-- '  <Xd>'
-- AUTDZA_64Z_dp_1src  autda.xml
-- AUTDZB_64Z_dp_1src  autdb.xml
-- AUTIZA_64Z_dp_1src  autia.xml
-- AUTIZB_64Z_dp_1src  autib.xml
-- PACDZA_64Z_dp_1src  pacda.xml
-- PACDZB_64Z_dp_1src  pacdb.xml
-- PACIZA_64Z_dp_1src  pacia.xml
-- PACIZB_64Z_dp_1src  pacib.xml
-- XPACD_64Z_dp_1src   xpac.xml
-- XPACI_64Z_dp_1src   xpac.xml

type Logical_001 = '[Xn]
type Binary_001  = '[5]

decode_001 :: Fn Logical_001 a -> FnW Binary_001 (Decode a)
decode_001 f rd = f <$> dec rd

encode_001 :: FnW Binary_001 a -> Fn Logical_001 (Encode a)
encode_001 f xd = f <$> enc xd

parse_001 :: Fn Logical_001 a -> Parser a
parse_001 f = f <$> msa

show_001 :: Fn Logical_001 ShowS
show_001 xd = asm xd


-- '  <Xn>'
-- BLR_64_branch_reg   blr.xml
-- BLRAAZ_64_branch_regblra.xml
-- BLRABZ_64_branch_regblra.xml
-- BR_64_branch_reg    br.xml
-- BRAAZ_64_branch_reg bra.xml
-- BRABZ_64_branch_reg bra.xml

type Logical_002 = '[Xn]
type Binary_002  = '[5]

decode_002 :: Fn Logical_002 a -> FnW Binary_002 (Decode a)
decode_002 f rn = f <$> dec rn

encode_002 :: FnW Binary_002 a -> Fn Logical_002 (Encode a)
encode_002 f xn = f <$> enc xn

parse_002 :: Fn Logical_002 a -> Parser a
parse_002 f = f <$> msa

show_002 :: Fn Logical_002 ShowS
show_002 xn = asm xn


-- ' CSYNC'
-- PSB_HC_system       psb.xml

type Logical_003 = '[]
type Binary_003  = '[]

decode_003 :: Fn Logical_003 a -> FnW Binary_003 (Decode a)
decode_003 f = return f

encode_003 :: FnW Binary_003 a -> Fn Logical_003 (Encode a)
encode_003 f = return f

parse_003 :: Fn Logical_003 a -> Parser a
parse_003 f = "CSYNC" *> f

show_003 :: Fn Logical_003 ShowS
show_003 = showString "CSYNC"


-- '  #<imm>'
-- BRK_EX_exception    brk.xml
-- HLT_EX_exception    hlt.xml
-- HVC_EX_exception    hvc.xml
-- SMC_EX_exception    smc.xml
-- SVC_EX_exception    svc.xml

type Logical_004a = '[]
type Binary_004a  = '[]

decode_004a :: Fn Logical_004a a -> FnW Binary_004a (Decode a)
decode_004a f = return f

encode_004a :: FnW Binary_004a a -> Fn Logical_004a (Encode a)
encode_004a f = return f

parse_004a :: Fn Logical_004a a -> Parser a
parse_004a f = do
    return $ f

show_004a :: Fn Logical_004a ShowS
show_004a = id


-- '  #<imm>'
-- HINT_1              hint.xml
-- HINT_2              hint.xml
-- HINT_3              hint.xml

type Logical_004b = '[Hint]
type Binary_004b  = '[4, 3]

decode_004b :: Fn Logical_004b a -> FnW Binary_004b (Decode a)
decode_004b f crm op2 = dec (crm <:> op2)

encode_004b :: FnW Binary_004b a -> Fn Logical_004b (Encode a)
encode_004b f hint = enc 

parse_004b :: Fn Logical_004b a -> Parser a
parse_004b f = do
    return $ f

show_004b :: Fn Logical_004b ShowS
show_004b = id

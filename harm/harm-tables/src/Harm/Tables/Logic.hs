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

type Logical_001 = '[]
type Binary_001  = '[]

decode_001 :: Fn Logical_001 a -> FnW Binary_001 (Decode a)
decode_001 f = return f

encode_001 :: FnW Binary_001 a -> Fn Logical_001 (Encode a)
encode_001 f = return f

parse_001 :: Fn Logical_001 a -> Parser a
parse_001 f = do
    return $ f

show_001 :: Fn Logical_001 ShowS
show_001 = id


-- '  <Xn>'
-- BLR_64_branch_reg   blr.xml
-- BLRAAZ_64_branch_regblra.xml
-- BLRABZ_64_branch_regblra.xml
-- BR_64_branch_reg    br.xml
-- BRAAZ_64_branch_reg bra.xml
-- BRABZ_64_branch_reg bra.xml

type Logical_002 = '[]
type Binary_002  = '[]

decode_002 :: Fn Logical_002 a -> FnW Binary_002 (Decode a)
decode_002 f = return f

encode_002 :: FnW Binary_002 a -> Fn Logical_002 (Encode a)
encode_002 f = return f

parse_002 :: Fn Logical_002 a -> Parser a
parse_002 f = do
    return $ f

show_002 :: Fn Logical_002 ShowS
show_002 = id


-- ' CSYNC'
-- PSB_HC_system       psb.xml

type Logical_003 = '[]
type Binary_003  = '[]

decode_003 :: Fn Logical_003 a -> FnW Binary_003 (Decode a)
decode_003 f = return f

encode_003 :: FnW Binary_003 a -> Fn Logical_003 (Encode a)
encode_003 f = return f

parse_003 :: Fn Logical_003 a -> Parser a
parse_003 f = do
    return $ f

show_003 :: Fn Logical_003 ShowS
show_003 = id


-- '  #<imm>'
-- BRK_EX_exception    brk.xml
-- HINT_1              hint.xml
-- HINT_2              hint.xml
-- HINT_3              hint.xml
-- HLT_EX_exception    hlt.xml
-- HVC_EX_exception    hvc.xml
-- SMC_EX_exception    smc.xml
-- SVC_EX_exception    svc.xml

type Logical_004 = '[]
type Binary_004  = '[]

decode_004 :: Fn Logical_004 a -> FnW Binary_004 (Decode a)
decode_004 f = return f

encode_004 :: FnW Binary_004 a -> Fn Logical_004 (Encode a)
encode_004 f = return f

parse_004 :: Fn Logical_004 a -> Parser a
parse_004 f = do
    return $ f

show_004 :: Fn Logical_004 ShowS
show_004 = id


-- '  {<Xn>}'
-- RET_64R_branch_reg  ret.xml

type Logical_005 = '[]
type Binary_005  = '[]

decode_005 :: Fn Logical_005 a -> FnW Binary_005 (Decode a)
decode_005 f = return f

encode_005 :: FnW Binary_005 a -> Fn Logical_005 (Encode a)
encode_005 f = return f

parse_005 :: Fn Logical_005 a -> Parser a
parse_005 f = do
    return $ f

show_005 :: Fn Logical_005 ShowS
show_005 = id


-- '  <label>'
-- B_only_branch_imm   b_uncond.xml
-- BL_only_branch_imm  bl.xml

type Logical_006 = '[]
type Binary_006  = '[]

decode_006 :: Fn Logical_006 a -> FnW Binary_006 (Decode a)
decode_006 f = return f

encode_006 :: FnW Binary_006 a -> Fn Logical_006 (Encode a)
encode_006 f = return f

parse_006 :: Fn Logical_006 a -> Parser a
parse_006 f = do
    return $ f

show_006 :: Fn Logical_006 ShowS
show_006 = id


-- '  {#<imm>}'
-- CLREX_BN_system     clrex.xml
-- DCPS1_DC_exception  dcps1.xml
-- DCPS2_DC_exception  dcps2.xml
-- DCPS3_DC_exception  dcps3.xml

type Logical_007 = '[]
type Binary_007  = '[]

decode_007 :: Fn Logical_007 a -> FnW Binary_007 (Decode a)
decode_007 f = return f

encode_007 :: FnW Binary_007 a -> Fn Logical_007 (Encode a)
encode_007 f = return f

parse_007 :: Fn Logical_007 a -> Parser a
parse_007 f = do
    return $ f

show_007 :: Fn Logical_007 ShowS
show_007 = id


-- '  <Dd>, <Dn>'
-- FABS_D_floatdp1     fabs_float.xml
-- FMOV_D_floatdp1     fmov_float.xml
-- FNEG_D_floatdp1     fneg_float.xml
-- FRINTA_D_floatdp1   frinta_float.xml
-- FRINTI_D_floatdp1   frinti_float.xml
-- FRINTM_D_floatdp1   frintm_float.xml
-- FRINTN_D_floatdp1   frintn_float.xml
-- FRINTP_D_floatdp1   frintp_float.xml
-- FRINTX_D_floatdp1   frintx_float.xml
-- FRINTZ_D_floatdp1   frintz_float.xml
-- FSQRT_D_floatdp1    fsqrt_float.xml

type Logical_008 = '[]
type Binary_008  = '[]

decode_008 :: Fn Logical_008 a -> FnW Binary_008 (Decode a)
decode_008 f = return f

encode_008 :: FnW Binary_008 a -> Fn Logical_008 (Encode a)
encode_008 f = return f

parse_008 :: Fn Logical_008 a -> Parser a
parse_008 f = do
    return $ f

show_008 :: Fn Logical_008 ShowS
show_008 = id


-- '  <Dd>, <Hn>'
-- FCVT_DH_floatdp1    fcvt_float.xml

type Logical_009 = '[]
type Binary_009  = '[]

decode_009 :: Fn Logical_009 a -> FnW Binary_009 (Decode a)
decode_009 f = return f

encode_009 :: FnW Binary_009 a -> Fn Logical_009 (Encode a)
encode_009 f = return f

parse_009 :: Fn Logical_009 a -> Parser a
parse_009 f = do
    return $ f

show_009 :: Fn Logical_009 ShowS
show_009 = id


-- '  <Dd>, <Sn>'
-- FCVT_DS_floatdp1    fcvt_float.xml

type Logical_010 = '[]
type Binary_010  = '[]

decode_010 :: Fn Logical_010 a -> FnW Binary_010 (Decode a)
decode_010 f = return f

encode_010 :: FnW Binary_010 a -> Fn Logical_010 (Encode a)
encode_010 f = return f

parse_010 :: Fn Logical_010 a -> Parser a
parse_010 f = do
    return $ f

show_010 :: Fn Logical_010 ShowS
show_010 = id


-- '  <Dd>, <Wn>'
-- SCVTF_D32_float2int scvtf_float_int.xml
-- UCVTF_D32_float2int ucvtf_float_int.xml

type Logical_011 = '[]
type Binary_011  = '[]

decode_011 :: Fn Logical_011 a -> FnW Binary_011 (Decode a)
decode_011 f = return f

encode_011 :: FnW Binary_011 a -> Fn Logical_011 (Encode a)
encode_011 f = return f

parse_011 :: Fn Logical_011 a -> Parser a
parse_011 f = do
    return $ f

show_011 :: Fn Logical_011 ShowS
show_011 = id


-- '  <Dd>, <Xn>'
-- FMOV_D64_float2int  fmov_float_gen.xml
-- SCVTF_D64_float2int scvtf_float_int.xml
-- UCVTF_D64_float2int ucvtf_float_int.xml

type Logical_012 = '[]
type Binary_012  = '[]

decode_012 :: Fn Logical_012 a -> FnW Binary_012 (Decode a)
decode_012 f = return f

encode_012 :: FnW Binary_012 a -> Fn Logical_012 (Encode a)
encode_012 f = return f

parse_012 :: Fn Logical_012 a -> Parser a
parse_012 f = do
    return $ f

show_012 :: Fn Logical_012 ShowS
show_012 = id


-- '  <Dn>, #0.0'
-- FCMP_DZ_floatcmp    fcmp_float.xml
-- FCMPE_DZ_floatcmp   fcmpe_float.xml

type Logical_013 = '[]
type Binary_013  = '[]

decode_013 :: Fn Logical_013 a -> FnW Binary_013 (Decode a)
decode_013 f = return f

encode_013 :: FnW Binary_013 a -> Fn Logical_013 (Encode a)
encode_013 f = return f

parse_013 :: Fn Logical_013 a -> Parser a
parse_013 f = do
    return $ f

show_013 :: Fn Logical_013 ShowS
show_013 = id


-- '  <Dn>, <Dm>'
-- FCMP_D_floatcmp     fcmp_float.xml
-- FCMPE_D_floatcmp    fcmpe_float.xml

type Logical_014 = '[]
type Binary_014  = '[]

decode_014 :: Fn Logical_014 a -> FnW Binary_014 (Decode a)
decode_014 f = return f

encode_014 :: FnW Binary_014 a -> Fn Logical_014 (Encode a)
encode_014 f = return f

parse_014 :: Fn Logical_014 a -> Parser a
parse_014 f = do
    return $ f

show_014 :: Fn Logical_014 ShowS
show_014 = id


-- '  <Hd>, <Dn>'
-- FCVT_HD_floatdp1    fcvt_float.xml

type Logical_015 = '[]
type Binary_015  = '[]

decode_015 :: Fn Logical_015 a -> FnW Binary_015 (Decode a)
decode_015 f = return f

encode_015 :: FnW Binary_015 a -> Fn Logical_015 (Encode a)
encode_015 f = return f

parse_015 :: Fn Logical_015 a -> Parser a
parse_015 f = do
    return $ f

show_015 :: Fn Logical_015 ShowS
show_015 = id


-- '  <Hd>, <Hn>'
-- FABS_H_floatdp1     fabs_float.xml
-- FCVTAS_asisdmiscfp16_Rfcvtas_advsimd.xml
-- FCVTAU_asisdmiscfp16_Rfcvtau_advsimd.xml
-- FCVTMS_asisdmiscfp16_Rfcvtms_advsimd.xml
-- FCVTMU_asisdmiscfp16_Rfcvtmu_advsimd.xml
-- FCVTNS_asisdmiscfp16_Rfcvtns_advsimd.xml
-- FCVTNU_asisdmiscfp16_Rfcvtnu_advsimd.xml
-- FCVTPS_asisdmiscfp16_Rfcvtps_advsimd.xml
-- FCVTPU_asisdmiscfp16_Rfcvtpu_advsimd.xml
-- FCVTZS_asisdmiscfp16_Rfcvtzs_advsimd_int.xml
-- FCVTZU_asisdmiscfp16_Rfcvtzu_advsimd_int.xml
-- FMOV_H_floatdp1     fmov_float.xml
-- FNEG_H_floatdp1     fneg_float.xml
-- FRECPE_asisdmiscfp16_Rfrecpe_advsimd.xml
-- FRECPX_asisdmiscfp16_Rfrecpx_advsimd.xml
-- FRINTA_H_floatdp1   frinta_float.xml
-- FRINTI_H_floatdp1   frinti_float.xml
-- FRINTM_H_floatdp1   frintm_float.xml
-- FRINTN_H_floatdp1   frintn_float.xml
-- FRINTP_H_floatdp1   frintp_float.xml
-- FRINTX_H_floatdp1   frintx_float.xml
-- FRINTZ_H_floatdp1   frintz_float.xml
-- FRSQRTE_asisdmiscfp16_Rfrsqrte_advsimd.xml
-- FSQRT_H_floatdp1    fsqrt_float.xml
-- SCVTF_asisdmiscfp16_Rscvtf_advsimd_int.xml
-- UCVTF_asisdmiscfp16_Rucvtf_advsimd_int.xml

type Logical_016 = '[]
type Binary_016  = '[]

decode_016 :: Fn Logical_016 a -> FnW Binary_016 (Decode a)
decode_016 f = return f

encode_016 :: FnW Binary_016 a -> Fn Logical_016 (Encode a)
encode_016 f = return f

parse_016 :: Fn Logical_016 a -> Parser a
parse_016 f = do
    return $ f

show_016 :: Fn Logical_016 ShowS
show_016 = id


-- '  <Hd>, <Sn>'
-- FCVT_HS_floatdp1    fcvt_float.xml

type Logical_017 = '[]
type Binary_017  = '[]

decode_017 :: Fn Logical_017 a -> FnW Binary_017 (Decode a)
decode_017 f = return f

encode_017 :: FnW Binary_017 a -> Fn Logical_017 (Encode a)
encode_017 f = return f

parse_017 :: Fn Logical_017 a -> Parser a
parse_017 f = do
    return $ f

show_017 :: Fn Logical_017 ShowS
show_017 = id


-- '  <Hd>, <Wn>'
-- FMOV_H32_float2int  fmov_float_gen.xml
-- SCVTF_H32_float2int scvtf_float_int.xml
-- UCVTF_H32_float2int ucvtf_float_int.xml

type Logical_018 = '[]
type Binary_018  = '[]

decode_018 :: Fn Logical_018 a -> FnW Binary_018 (Decode a)
decode_018 f = return f

encode_018 :: FnW Binary_018 a -> Fn Logical_018 (Encode a)
encode_018 f = return f

parse_018 :: Fn Logical_018 a -> Parser a
parse_018 f = do
    return $ f

show_018 :: Fn Logical_018 ShowS
show_018 = id


-- '  <Hd>, <Xn>'
-- FMOV_H64_float2int  fmov_float_gen.xml
-- SCVTF_H64_float2int scvtf_float_int.xml
-- UCVTF_H64_float2int ucvtf_float_int.xml

type Logical_019 = '[]
type Binary_019  = '[]

decode_019 :: Fn Logical_019 a -> FnW Binary_019 (Decode a)
decode_019 f = return f

encode_019 :: FnW Binary_019 a -> Fn Logical_019 (Encode a)
encode_019 f = return f

parse_019 :: Fn Logical_019 a -> Parser a
parse_019 f = do
    return $ f

show_019 :: Fn Logical_019 ShowS
show_019 = id


-- '  <Hn>, #0.0'
-- FCMP_HZ_floatcmp    fcmp_float.xml
-- FCMPE_HZ_floatcmp   fcmpe_float.xml

type Logical_020 = '[]
type Binary_020  = '[]

decode_020 :: Fn Logical_020 a -> FnW Binary_020 (Decode a)
decode_020 f = return f

encode_020 :: FnW Binary_020 a -> Fn Logical_020 (Encode a)
encode_020 f = return f

parse_020 :: Fn Logical_020 a -> Parser a
parse_020 f = do
    return $ f

show_020 :: Fn Logical_020 ShowS
show_020 = id


-- '  <Hn>, <Hm>'
-- FCMP_H_floatcmp     fcmp_float.xml
-- FCMPE_H_floatcmp    fcmpe_float.xml

type Logical_021 = '[]
type Binary_021  = '[]

decode_021 :: Fn Logical_021 a -> FnW Binary_021 (Decode a)
decode_021 f = return f

encode_021 :: FnW Binary_021 a -> Fn Logical_021 (Encode a)
encode_021 f = return f

parse_021 :: Fn Logical_021 a -> Parser a
parse_021 f = do
    return $ f

show_021 :: Fn Logical_021 ShowS
show_021 = id


-- '  <Sd>, <Dn>'
-- FCVT_SD_floatdp1    fcvt_float.xml

type Logical_022 = '[]
type Binary_022  = '[]

decode_022 :: Fn Logical_022 a -> FnW Binary_022 (Decode a)
decode_022 f = return f

encode_022 :: FnW Binary_022 a -> Fn Logical_022 (Encode a)
encode_022 f = return f

parse_022 :: Fn Logical_022 a -> Parser a
parse_022 f = do
    return $ f

show_022 :: Fn Logical_022 ShowS
show_022 = id


-- '  <Sd>, <Hn>'
-- FCVT_SH_floatdp1    fcvt_float.xml

type Logical_023 = '[]
type Binary_023  = '[]

decode_023 :: Fn Logical_023 a -> FnW Binary_023 (Decode a)
decode_023 f = return f

encode_023 :: FnW Binary_023 a -> Fn Logical_023 (Encode a)
encode_023 f = return f

parse_023 :: Fn Logical_023 a -> Parser a
parse_023 f = do
    return $ f

show_023 :: Fn Logical_023 ShowS
show_023 = id


-- '  <Sd>, <Sn>'
-- FABS_S_floatdp1     fabs_float.xml
-- FMOV_S_floatdp1     fmov_float.xml
-- FNEG_S_floatdp1     fneg_float.xml
-- FRINTA_S_floatdp1   frinta_float.xml
-- FRINTI_S_floatdp1   frinti_float.xml
-- FRINTM_S_floatdp1   frintm_float.xml
-- FRINTN_S_floatdp1   frintn_float.xml
-- FRINTP_S_floatdp1   frintp_float.xml
-- FRINTX_S_floatdp1   frintx_float.xml
-- FRINTZ_S_floatdp1   frintz_float.xml
-- FSQRT_S_floatdp1    fsqrt_float.xml
-- SHA1H_SS_cryptosha2 sha1h_advsimd.xml

type Logical_024 = '[]
type Binary_024  = '[]

decode_024 :: Fn Logical_024 a -> FnW Binary_024 (Decode a)
decode_024 f = return f

encode_024 :: FnW Binary_024 a -> Fn Logical_024 (Encode a)
encode_024 f = return f

parse_024 :: Fn Logical_024 a -> Parser a
parse_024 f = do
    return $ f

show_024 :: Fn Logical_024 ShowS
show_024 = id


-- '  <Sd>, <Wn>'
-- FMOV_S32_float2int  fmov_float_gen.xml
-- SCVTF_S32_float2int scvtf_float_int.xml
-- UCVTF_S32_float2int ucvtf_float_int.xml

type Logical_025 = '[]
type Binary_025  = '[]

decode_025 :: Fn Logical_025 a -> FnW Binary_025 (Decode a)
decode_025 f = return f

encode_025 :: FnW Binary_025 a -> Fn Logical_025 (Encode a)
encode_025 f = return f

parse_025 :: Fn Logical_025 a -> Parser a
parse_025 f = do
    return $ f

show_025 :: Fn Logical_025 ShowS
show_025 = id


-- '  <Sd>, <Xn>'
-- SCVTF_S64_float2int scvtf_float_int.xml
-- UCVTF_S64_float2int ucvtf_float_int.xml

type Logical_026 = '[]
type Binary_026  = '[]

decode_026 :: Fn Logical_026 a -> FnW Binary_026 (Decode a)
decode_026 f = return f

encode_026 :: FnW Binary_026 a -> Fn Logical_026 (Encode a)
encode_026 f = return f

parse_026 :: Fn Logical_026 a -> Parser a
parse_026 f = do
    return $ f

show_026 :: Fn Logical_026 ShowS
show_026 = id


-- '  <Sn>, #0.0'
-- FCMP_SZ_floatcmp    fcmp_float.xml
-- FCMPE_SZ_floatcmp   fcmpe_float.xml

type Logical_027 = '[]
type Binary_027  = '[]

decode_027 :: Fn Logical_027 a -> FnW Binary_027 (Decode a)
decode_027 f = return f

encode_027 :: FnW Binary_027 a -> Fn Logical_027 (Encode a)
encode_027 f = return f

parse_027 :: Fn Logical_027 a -> Parser a
parse_027 f = do
    return $ f

show_027 :: Fn Logical_027 ShowS
show_027 = id


-- '  <Sn>, <Sm>'
-- FCMP_S_floatcmp     fcmp_float.xml
-- FCMPE_S_floatcmp    fcmpe_float.xml

type Logical_028 = '[]
type Binary_028  = '[]

decode_028 :: Fn Logical_028 a -> FnW Binary_028 (Decode a)
decode_028 f = return f

encode_028 :: FnW Binary_028 a -> Fn Logical_028 (Encode a)
encode_028 f = return f

parse_028 :: Fn Logical_028 a -> Parser a
parse_028 f = do
    return $ f

show_028 :: Fn Logical_028 ShowS
show_028 = id


-- '  <Wd>, <Dn>'
-- FCVTAS_32D_float2intfcvtas_float.xml
-- FCVTAU_32D_float2intfcvtau_float.xml
-- FCVTMS_32D_float2intfcvtms_float.xml
-- FCVTMU_32D_float2intfcvtmu_float.xml
-- FCVTNS_32D_float2intfcvtns_float.xml
-- FCVTNU_32D_float2intfcvtnu_float.xml
-- FCVTPS_32D_float2intfcvtps_float.xml
-- FCVTPU_32D_float2intfcvtpu_float.xml
-- FCVTZS_32D_float2intfcvtzs_float_int.xml
-- FCVTZU_32D_float2intfcvtzu_float_int.xml
-- FJCVTZS_32D_float2intfjcvtzs.xml

type Logical_029 = '[]
type Binary_029  = '[]

decode_029 :: Fn Logical_029 a -> FnW Binary_029 (Decode a)
decode_029 f = return f

encode_029 :: FnW Binary_029 a -> Fn Logical_029 (Encode a)
encode_029 f = return f

parse_029 :: Fn Logical_029 a -> Parser a
parse_029 f = do
    return $ f

show_029 :: Fn Logical_029 ShowS
show_029 = id


-- '  <Wd>, <Hn>'
-- FCVTAS_32H_float2intfcvtas_float.xml
-- FCVTAU_32H_float2intfcvtau_float.xml
-- FCVTMS_32H_float2intfcvtms_float.xml
-- FCVTMU_32H_float2intfcvtmu_float.xml
-- FCVTNS_32H_float2intfcvtns_float.xml
-- FCVTNU_32H_float2intfcvtnu_float.xml
-- FCVTPS_32H_float2intfcvtps_float.xml
-- FCVTPU_32H_float2intfcvtpu_float.xml
-- FCVTZS_32H_float2intfcvtzs_float_int.xml
-- FCVTZU_32H_float2intfcvtzu_float_int.xml
-- FMOV_32H_float2int  fmov_float_gen.xml

type Logical_030 = '[]
type Binary_030  = '[]

decode_030 :: Fn Logical_030 a -> FnW Binary_030 (Decode a)
decode_030 f = return f

encode_030 :: FnW Binary_030 a -> Fn Logical_030 (Encode a)
encode_030 f = return f

parse_030 :: Fn Logical_030 a -> Parser a
parse_030 f = do
    return $ f

show_030 :: Fn Logical_030 ShowS
show_030 = id


-- '  <Wd>, <Sn>'
-- FCVTAS_32S_float2intfcvtas_float.xml
-- FCVTAU_32S_float2intfcvtau_float.xml
-- FCVTMS_32S_float2intfcvtms_float.xml
-- FCVTMU_32S_float2intfcvtmu_float.xml
-- FCVTNS_32S_float2intfcvtns_float.xml
-- FCVTNU_32S_float2intfcvtnu_float.xml
-- FCVTPS_32S_float2intfcvtps_float.xml
-- FCVTPU_32S_float2intfcvtpu_float.xml
-- FCVTZS_32S_float2intfcvtzs_float_int.xml
-- FCVTZU_32S_float2intfcvtzu_float_int.xml
-- FMOV_32S_float2int  fmov_float_gen.xml

type Logical_031 = '[]
type Binary_031  = '[]

decode_031 :: Fn Logical_031 a -> FnW Binary_031 (Decode a)
decode_031 f = return f

encode_031 :: FnW Binary_031 a -> Fn Logical_031 (Encode a)
encode_031 f = return f

parse_031 :: Fn Logical_031 a -> Parser a
parse_031 f = do
    return $ f

show_031 :: Fn Logical_031 ShowS
show_031 = id


-- '  <Wd>, <Wn>'
-- CLS_32_dp_1src      cls_int.xml
-- CLZ_32_dp_1src      clz_int.xml
-- RBIT_32_dp_1src     rbit_int.xml
-- REV_32_dp_1src      rev.xml
-- REV16_32_dp_1src    rev16_int.xml

type Logical_032 = '[]
type Binary_032  = '[]

decode_032 :: Fn Logical_032 a -> FnW Binary_032 (Decode a)
decode_032 f = return f

encode_032 :: FnW Binary_032 a -> Fn Logical_032 (Encode a)
encode_032 f = return f

parse_032 :: Fn Logical_032 a -> Parser a
parse_032 f = do
    return $ f

show_032 :: Fn Logical_032 ShowS
show_032 = id


-- '  <Xd>, <Dn>'
-- FCVTAS_64D_float2intfcvtas_float.xml
-- FCVTAU_64D_float2intfcvtau_float.xml
-- FCVTMS_64D_float2intfcvtms_float.xml
-- FCVTMU_64D_float2intfcvtmu_float.xml
-- FCVTNS_64D_float2intfcvtns_float.xml
-- FCVTNU_64D_float2intfcvtnu_float.xml
-- FCVTPS_64D_float2intfcvtps_float.xml
-- FCVTPU_64D_float2intfcvtpu_float.xml
-- FCVTZS_64D_float2intfcvtzs_float_int.xml
-- FCVTZU_64D_float2intfcvtzu_float_int.xml
-- FMOV_64D_float2int  fmov_float_gen.xml

type Logical_033 = '[]
type Binary_033  = '[]

decode_033 :: Fn Logical_033 a -> FnW Binary_033 (Decode a)
decode_033 f = return f

encode_033 :: FnW Binary_033 a -> Fn Logical_033 (Encode a)
encode_033 f = return f

parse_033 :: Fn Logical_033 a -> Parser a
parse_033 f = do
    return $ f

show_033 :: Fn Logical_033 ShowS
show_033 = id


-- '  <Xd>, <Hn>'
-- FCVTAS_64H_float2intfcvtas_float.xml
-- FCVTAU_64H_float2intfcvtau_float.xml
-- FCVTMS_64H_float2intfcvtms_float.xml
-- FCVTMU_64H_float2intfcvtmu_float.xml
-- FCVTNS_64H_float2intfcvtns_float.xml
-- FCVTNU_64H_float2intfcvtnu_float.xml
-- FCVTPS_64H_float2intfcvtps_float.xml
-- FCVTPU_64H_float2intfcvtpu_float.xml
-- FCVTZS_64H_float2intfcvtzs_float_int.xml
-- FCVTZU_64H_float2intfcvtzu_float_int.xml
-- FMOV_64H_float2int  fmov_float_gen.xml

type Logical_034 = '[]
type Binary_034  = '[]

decode_034 :: Fn Logical_034 a -> FnW Binary_034 (Decode a)
decode_034 f = return f

encode_034 :: FnW Binary_034 a -> Fn Logical_034 (Encode a)
encode_034 f = return f

parse_034 :: Fn Logical_034 a -> Parser a
parse_034 f = do
    return $ f

show_034 :: Fn Logical_034 ShowS
show_034 = id


-- '  <Xd>, <Sn>'
-- FCVTAS_64S_float2intfcvtas_float.xml
-- FCVTAU_64S_float2intfcvtau_float.xml
-- FCVTMS_64S_float2intfcvtms_float.xml
-- FCVTMU_64S_float2intfcvtmu_float.xml
-- FCVTNS_64S_float2intfcvtns_float.xml
-- FCVTNU_64S_float2intfcvtnu_float.xml
-- FCVTPS_64S_float2intfcvtps_float.xml
-- FCVTPU_64S_float2intfcvtpu_float.xml
-- FCVTZS_64S_float2intfcvtzs_float_int.xml
-- FCVTZU_64S_float2intfcvtzu_float_int.xml

type Logical_035 = '[]
type Binary_035  = '[]

decode_035 :: Fn Logical_035 a -> FnW Binary_035 (Decode a)
decode_035 f = return f

encode_035 :: FnW Binary_035 a -> Fn Logical_035 (Encode a)
encode_035 f = return f

parse_035 :: Fn Logical_035 a -> Parser a
parse_035 f = do
    return $ f

show_035 :: Fn Logical_035 ShowS
show_035 = id


-- '  <Xd>, <Xn>'
-- CLS_64_dp_1src      cls_int.xml
-- CLZ_64_dp_1src      clz_int.xml
-- RBIT_64_dp_1src     rbit_int.xml
-- REV_64_dp_1src      rev.xml
-- REV16_64_dp_1src    rev16_int.xml
-- REV32_64_dp_1src    rev32_int.xml

type Logical_036 = '[]
type Binary_036  = '[]

decode_036 :: Fn Logical_036 a -> FnW Binary_036 (Decode a)
decode_036 f = return f

encode_036 :: FnW Binary_036 a -> Fn Logical_036 (Encode a)
encode_036 f = return f

parse_036 :: Fn Logical_036 a -> Parser a
parse_036 f = do
    return $ f

show_036 :: Fn Logical_036 ShowS
show_036 = id


-- '  <Dd>, #<imm>'
-- FMOV_D_floatimm     fmov_float_imm.xml
-- MOVI_asimdimm_D_ds  movi_advsimd.xml

type Logical_037 = '[]
type Binary_037  = '[]

decode_037 :: Fn Logical_037 a -> FnW Binary_037 (Decode a)
decode_037 f = return f

encode_037 :: FnW Binary_037 a -> Fn Logical_037 (Encode a)
encode_037 f = return f

parse_037 :: Fn Logical_037 a -> Parser a
parse_037 f = do
    return $ f

show_037 :: Fn Logical_037 ShowS
show_037 = id


-- '  <Hd>, #<imm>'
-- FMOV_H_floatimm     fmov_float_imm.xml

type Logical_038 = '[]
type Binary_038  = '[]

decode_038 :: Fn Logical_038 a -> FnW Binary_038 (Decode a)
decode_038 f = return f

encode_038 :: FnW Binary_038 a -> Fn Logical_038 (Encode a)
encode_038 f = return f

parse_038 :: Fn Logical_038 a -> Parser a
parse_038 f = do
    return $ f

show_038 :: Fn Logical_038 ShowS
show_038 = id


-- '  <Sd>, #<imm>'
-- FMOV_S_floatimm     fmov_float_imm.xml

type Logical_039 = '[]
type Binary_039  = '[]

decode_039 :: Fn Logical_039 a -> FnW Binary_039 (Decode a)
decode_039 f = return f

encode_039 :: FnW Binary_039 a -> Fn Logical_039 (Encode a)
encode_039 f = return f

parse_039 :: Fn Logical_039 a -> Parser a
parse_039 f = do
    return $ f

show_039 :: Fn Logical_039 ShowS
show_039 = id


-- '  <Dt>, <label>'
-- LDR_D_loadlit       ldr_lit_fpsimd.xml

type Logical_040 = '[]
type Binary_040  = '[]

decode_040 :: Fn Logical_040 a -> FnW Binary_040 (Decode a)
decode_040 f = return f

encode_040 :: FnW Binary_040 a -> Fn Logical_040 (Encode a)
encode_040 f = return f

parse_040 :: Fn Logical_040 a -> Parser a
parse_040 f = do
    return $ f

show_040 :: Fn Logical_040 ShowS
show_040 = id


-- '  <Qt>, <label>'
-- LDR_Q_loadlit       ldr_lit_fpsimd.xml

type Logical_041 = '[]
type Binary_041  = '[]

decode_041 :: Fn Logical_041 a -> FnW Binary_041 (Decode a)
decode_041 f = return f

encode_041 :: FnW Binary_041 a -> Fn Logical_041 (Encode a)
encode_041 f = return f

parse_041 :: Fn Logical_041 a -> Parser a
parse_041 f = do
    return $ f

show_041 :: Fn Logical_041 ShowS
show_041 = id


-- '  <St>, <label>'
-- LDR_S_loadlit       ldr_lit_fpsimd.xml

type Logical_042 = '[]
type Binary_042  = '[]

decode_042 :: Fn Logical_042 a -> FnW Binary_042 (Decode a)
decode_042 f = return f

encode_042 :: FnW Binary_042 a -> Fn Logical_042 (Encode a)
encode_042 f = return f

parse_042 :: Fn Logical_042 a -> Parser a
parse_042 f = do
    return $ f

show_042 :: Fn Logical_042 ShowS
show_042 = id


-- '  <Wt>, <label>'
-- CBNZ_32_compbranch  cbnz.xml
-- CBZ_32_compbranch   cbz.xml
-- LDR_32_loadlit      ldr_lit_gen.xml

type Logical_043 = '[]
type Binary_043  = '[]

decode_043 :: Fn Logical_043 a -> FnW Binary_043 (Decode a)
decode_043 f = return f

encode_043 :: FnW Binary_043 a -> Fn Logical_043 (Encode a)
encode_043 f = return f

parse_043 :: Fn Logical_043 a -> Parser a
parse_043 f = do
    return $ f

show_043 :: Fn Logical_043 ShowS
show_043 = id


-- '  <Xd>, <Xn|SP>'
-- AUTDA_64P_dp_1src   autda.xml
-- AUTDB_64P_dp_1src   autdb.xml
-- AUTIA_64P_dp_1src   autia.xml
-- AUTIB_64P_dp_1src   autib.xml
-- PACDA_64P_dp_1src   pacda.xml
-- PACDB_64P_dp_1src   pacdb.xml
-- PACIA_64P_dp_1src   pacia.xml
-- PACIB_64P_dp_1src   pacib.xml

type Logical_044 = '[]
type Binary_044  = '[]

decode_044 :: Fn Logical_044 a -> FnW Binary_044 (Decode a)
decode_044 f = return f

encode_044 :: FnW Binary_044 a -> Fn Logical_044 (Encode a)
encode_044 f = return f

parse_044 :: Fn Logical_044 a -> Parser a
parse_044 f = do
    return $ f

show_044 :: Fn Logical_044 ShowS
show_044 = id


-- '  <Xd>, <label>'
-- ADR_only_pcreladdr  adr.xml
-- ADRP_only_pcreladdr adrp.xml

type Logical_045 = '[]
type Binary_045  = '[]

decode_045 :: Fn Logical_045 a -> FnW Binary_045 (Decode a)
decode_045 f = return f

encode_045 :: FnW Binary_045 a -> Fn Logical_045 (Encode a)
encode_045 f = return f

parse_045 :: Fn Logical_045 a -> Parser a
parse_045 f = do
    return $ f

show_045 :: Fn Logical_045 ShowS
show_045 = id


-- '  <Xn>, <Xm|SP>'
-- BLRAA_64P_branch_regblra.xml
-- BLRAB_64P_branch_regblra.xml
-- BRAA_64P_branch_reg bra.xml
-- BRAB_64P_branch_reg bra.xml

type Logical_046 = '[]
type Binary_046  = '[]

decode_046 :: Fn Logical_046 a -> FnW Binary_046 (Decode a)
decode_046 f = return f

encode_046 :: FnW Binary_046 a -> Fn Logical_046 (Encode a)
encode_046 f = return f

parse_046 :: Fn Logical_046 a -> Parser a
parse_046 f = do
    return $ f

show_046 :: Fn Logical_046 ShowS
show_046 = id


-- '  <Xt>, <label>'
-- CBNZ_64_compbranch  cbnz.xml
-- CBZ_64_compbranch   cbz.xml
-- LDR_64_loadlit      ldr_lit_gen.xml
-- LDRSW_64_loadlit    ldrsw_lit.xml

type Logical_047 = '[]
type Binary_047  = '[]

decode_047 :: Fn Logical_047 a -> FnW Binary_047 (Decode a)
decode_047 f = return f

encode_047 :: FnW Binary_047 a -> Fn Logical_047 (Encode a)
encode_047 f = return f

parse_047 :: Fn Logical_047 a -> Parser a
parse_047 f = do
    return $ f

show_047 :: Fn Logical_047 ShowS
show_047 = id


-- '  <V><d>, <V><n>'
-- ABS_asisdmisc_R     abs_advsimd.xml
-- FCVTAS_asisdmisc_R  fcvtas_advsimd.xml
-- FCVTAU_asisdmisc_R  fcvtau_advsimd.xml
-- FCVTMS_asisdmisc_R  fcvtms_advsimd.xml
-- FCVTMU_asisdmisc_R  fcvtmu_advsimd.xml
-- FCVTNS_asisdmisc_R  fcvtns_advsimd.xml
-- FCVTNU_asisdmisc_R  fcvtnu_advsimd.xml
-- FCVTPS_asisdmisc_R  fcvtps_advsimd.xml
-- FCVTPU_asisdmisc_R  fcvtpu_advsimd.xml
-- FCVTZS_asisdmisc_R  fcvtzs_advsimd_int.xml
-- FCVTZU_asisdmisc_R  fcvtzu_advsimd_int.xml
-- FRECPE_asisdmisc_R  frecpe_advsimd.xml
-- FRECPX_asisdmisc_R  frecpx_advsimd.xml
-- FRSQRTE_asisdmisc_R frsqrte_advsimd.xml
-- NEG_asisdmisc_R     neg_advsimd.xml
-- SCVTF_asisdmisc_R   scvtf_advsimd_int.xml
-- SQABS_asisdmisc_R   sqabs_advsimd.xml
-- SQNEG_asisdmisc_R   sqneg_advsimd.xml
-- SUQADD_asisdmisc_R  suqadd_advsimd.xml
-- UCVTF_asisdmisc_R   ucvtf_advsimd_int.xml
-- USQADD_asisdmisc_R  usqadd_advsimd.xml

type Logical_048 = '[]
type Binary_048  = '[]

decode_048 :: Fn Logical_048 a -> FnW Binary_048 (Decode a)
decode_048 f = return f

encode_048 :: FnW Binary_048 a -> Fn Logical_048 (Encode a)
encode_048 f = return f

parse_048 :: Fn Logical_048 a -> Parser a
parse_048 f = do
    return $ f

show_048 :: Fn Logical_048 ShowS
show_048 = id


-- '.<cond>  <label>'
-- B_only_condbranch   b_cond.xml

type Logical_049 = '[]
type Binary_049  = '[]

decode_049 :: Fn Logical_049 a -> FnW Binary_049 (Decode a)
decode_049 f = return f

encode_049 :: FnW Binary_049 a -> Fn Logical_049 (Encode a)
encode_049 f = return f

parse_049 :: Fn Logical_049 a -> Parser a
parse_049 f = do
    return $ f

show_049 :: Fn Logical_049 ShowS
show_049 = id


-- '  <Vd>.2D, #<imm>'
-- FMOV_asimdimm_D2_d  fmov_advsimd.xml
-- MOVI_asimdimm_D2_d  movi_advsimd.xml

type Logical_050 = '[]
type Binary_050  = '[]

decode_050 :: Fn Logical_050 a -> FnW Binary_050 (Decode a)
decode_050 f = return f

encode_050 :: FnW Binary_050 a -> Fn Logical_050 (Encode a)
encode_050 f = return f

parse_050 :: Fn Logical_050 a -> Parser a
parse_050 f = do
    return $ f

show_050 :: Fn Logical_050 ShowS
show_050 = id


-- '  <Vd>.D[1], <Xn>'
-- FMOV_V64I_float2int fmov_float_gen.xml

type Logical_051 = '[]
type Binary_051  = '[]

decode_051 :: Fn Logical_051 a -> FnW Binary_051 (Decode a)
decode_051 f = return f

encode_051 :: FnW Binary_051 a -> Fn Logical_051 (Encode a)
encode_051 f = return f

parse_051 :: Fn Logical_051 a -> Parser a
parse_051 f = do
    return $ f

show_051 :: Fn Logical_051 ShowS
show_051 = id


-- '  <Xd>, <Vn>.D[1]'
-- FMOV_64VX_float2int fmov_float_gen.xml

type Logical_052 = '[]
type Binary_052  = '[]

decode_052 :: Fn Logical_052 a -> FnW Binary_052 (Decode a)
decode_052 f = return f

encode_052 :: FnW Binary_052 a -> Fn Logical_052 (Encode a)
encode_052 f = return f

parse_052 :: Fn Logical_052 a -> Parser a
parse_052 f = do
    return $ f

show_052 :: Fn Logical_052 ShowS
show_052 = id


-- '  <option>|#<imm>'
-- DMB_BO_system       dmb.xml
-- DSB_BO_system       dsb.xml

type Logical_053 = '[]
type Binary_053  = '[]

decode_053 :: Fn Logical_053 a -> FnW Binary_053 (Decode a)
decode_053 f = return f

encode_053 :: FnW Binary_053 a -> Fn Logical_053 (Encode a)
encode_053 f = return f

parse_053 :: Fn Logical_053 a -> Parser a
parse_053 f = do
    return $ f

show_053 :: Fn Logical_053 ShowS
show_053 = id


-- '  <Dd>, <Dn>, <Dm>'
-- FADD_D_floatdp2     fadd_float.xml
-- FDIV_D_floatdp2     fdiv_float.xml
-- FMAX_D_floatdp2     fmax_float.xml
-- FMAXNM_D_floatdp2   fmaxnm_float.xml
-- FMIN_D_floatdp2     fmin_float.xml
-- FMINNM_D_floatdp2   fminnm_float.xml
-- FMUL_D_floatdp2     fmul_float.xml
-- FNMUL_D_floatdp2    fnmul_float.xml
-- FSUB_D_floatdp2     fsub_float.xml

type Logical_054 = '[]
type Binary_054  = '[]

decode_054 :: Fn Logical_054 a -> FnW Binary_054 (Decode a)
decode_054 f = return f

encode_054 :: FnW Binary_054 a -> Fn Logical_054 (Encode a)
encode_054 f = return f

parse_054 :: Fn Logical_054 a -> Parser a
parse_054 f = do
    return $ f

show_054 :: Fn Logical_054 ShowS
show_054 = id


-- '  <Hd>, <Hn>, #0.0'
-- FCMEQ_asisdmiscfp16_FZfcmeq_advsimd_zero.xml
-- FCMGE_asisdmiscfp16_FZfcmge_advsimd_zero.xml
-- FCMGT_asisdmiscfp16_FZfcmgt_advsimd_zero.xml
-- FCMLE_asisdmiscfp16_FZfcmle_advsimd.xml
-- FCMLT_asisdmiscfp16_FZfcmlt_advsimd.xml

type Logical_055 = '[]
type Binary_055  = '[]

decode_055 :: Fn Logical_055 a -> FnW Binary_055 (Decode a)
decode_055 f = return f

encode_055 :: FnW Binary_055 a -> Fn Logical_055 (Encode a)
encode_055 f = return f

parse_055 :: Fn Logical_055 a -> Parser a
parse_055 f = do
    return $ f

show_055 :: Fn Logical_055 ShowS
show_055 = id


-- '  <Hd>, <Hn>, <Hm>'
-- FABD_asisdsamefp16_onlyfabd_advsimd.xml
-- FACGE_asisdsamefp16_onlyfacge_advsimd.xml
-- FACGT_asisdsamefp16_onlyfacgt_advsimd.xml
-- FADD_H_floatdp2     fadd_float.xml
-- FCMEQ_asisdsamefp16_onlyfcmeq_advsimd_reg.xml
-- FCMGE_asisdsamefp16_onlyfcmge_advsimd_reg.xml
-- FCMGT_asisdsamefp16_onlyfcmgt_advsimd_reg.xml
-- FDIV_H_floatdp2     fdiv_float.xml
-- FMAX_H_floatdp2     fmax_float.xml
-- FMAXNM_H_floatdp2   fmaxnm_float.xml
-- FMIN_H_floatdp2     fmin_float.xml
-- FMINNM_H_floatdp2   fminnm_float.xml
-- FMUL_H_floatdp2     fmul_float.xml
-- FMULX_asisdsamefp16_onlyfmulx_advsimd_vec.xml
-- FNMUL_H_floatdp2    fnmul_float.xml
-- FRECPS_asisdsamefp16_onlyfrecps_advsimd.xml
-- FRSQRTS_asisdsamefp16_onlyfrsqrts_advsimd.xml
-- FSUB_H_floatdp2     fsub_float.xml

type Logical_056 = '[]
type Binary_056  = '[]

decode_056 :: Fn Logical_056 a -> FnW Binary_056 (Decode a)
decode_056 f = return f

encode_056 :: FnW Binary_056 a -> Fn Logical_056 (Encode a)
encode_056 f = return f

parse_056 :: Fn Logical_056 a -> Parser a
parse_056 f = do
    return $ f

show_056 :: Fn Logical_056 ShowS
show_056 = id


-- '  <Sd>, <Sn>, <Sm>'
-- FADD_S_floatdp2     fadd_float.xml
-- FDIV_S_floatdp2     fdiv_float.xml
-- FMAX_S_floatdp2     fmax_float.xml
-- FMAXNM_S_floatdp2   fmaxnm_float.xml
-- FMIN_S_floatdp2     fmin_float.xml
-- FMINNM_S_floatdp2   fminnm_float.xml
-- FMUL_S_floatdp2     fmul_float.xml
-- FNMUL_S_floatdp2    fnmul_float.xml
-- FSUB_S_floatdp2     fsub_float.xml

type Logical_057 = '[]
type Binary_057  = '[]

decode_057 :: Fn Logical_057 a -> FnW Binary_057 (Decode a)
decode_057 f = return f

encode_057 :: FnW Binary_057 a -> Fn Logical_057 (Encode a)
encode_057 f = return f

parse_057 :: Fn Logical_057 a -> Parser a
parse_057 f = do
    return $ f

show_057 :: Fn Logical_057 ShowS
show_057 = id


-- '  <V><d>, <Vn>.<T>'
-- ADDP_asisdpair_only addp_advsimd_pair.xml
-- ADDV_asimdall_only  addv_advsimd.xml
-- FADDP_asisdpair_only_Hfaddp_advsimd_pair.xml
-- FADDP_asisdpair_only_SDfaddp_advsimd_pair.xml
-- FMAXNMP_asisdpair_only_Hfmaxnmp_advsimd_pair.xml
-- FMAXNMP_asisdpair_only_SDfmaxnmp_advsimd_pair.xml
-- FMAXNMV_asimdall_only_Hfmaxnmv_advsimd.xml
-- FMAXNMV_asimdall_only_SDfmaxnmv_advsimd.xml
-- FMAXP_asisdpair_only_Hfmaxp_advsimd_pair.xml
-- FMAXP_asisdpair_only_SDfmaxp_advsimd_pair.xml
-- FMAXV_asimdall_only_Hfmaxv_advsimd.xml
-- FMAXV_asimdall_only_SDfmaxv_advsimd.xml
-- FMINNMP_asisdpair_only_Hfminnmp_advsimd_pair.xml
-- FMINNMP_asisdpair_only_SDfminnmp_advsimd_pair.xml
-- FMINNMV_asimdall_only_Hfminnmv_advsimd.xml
-- FMINNMV_asimdall_only_SDfminnmv_advsimd.xml
-- FMINP_asisdpair_only_Hfminp_advsimd_pair.xml
-- FMINP_asisdpair_only_SDfminp_advsimd_pair.xml
-- FMINV_asimdall_only_Hfminv_advsimd.xml
-- FMINV_asimdall_only_SDfminv_advsimd.xml
-- SADDLV_asimdall_onlysaddlv_advsimd.xml
-- SMAXV_asimdall_only smaxv_advsimd.xml
-- SMINV_asimdall_only sminv_advsimd.xml
-- UADDLV_asimdall_onlyuaddlv_advsimd.xml
-- UMAXV_asimdall_only umaxv_advsimd.xml
-- UMINV_asimdall_only uminv_advsimd.xml

type Logical_058 = '[]
type Binary_058  = '[]

decode_058 :: Fn Logical_058 a -> FnW Binary_058 (Decode a)
decode_058 f = return f

encode_058 :: FnW Binary_058 a -> Fn Logical_058 (Encode a)
encode_058 f = return f

parse_058 :: Fn Logical_058 a -> Parser a
parse_058 f = do
    return $ f

show_058 :: Fn Logical_058 ShowS
show_058 = id


-- '  <Vb><d>, <Va><n>'
-- FCVTXN_asisdmisc_N  fcvtxn_advsimd.xml
-- SQXTN_asisdmisc_N   sqxtn_advsimd.xml
-- SQXTUN_asisdmisc_N  sqxtun_advsimd.xml
-- UQXTN_asisdmisc_N   uqxtn_advsimd.xml

type Logical_059 = '[]
type Binary_059  = '[]

decode_059 :: Fn Logical_059 a -> FnW Binary_059 (Decode a)
decode_059 f = return f

encode_059 :: FnW Binary_059 a -> Fn Logical_059 (Encode a)
encode_059 f = return f

parse_059 :: Fn Logical_059 a -> Parser a
parse_059 f = do
    return $ f

show_059 :: Fn Logical_059 ShowS
show_059 = id


-- '  <Vd>.2D, <Vn>.2D'
-- SHA512SU0_VV2_cryptosha512_2sha512su0_advsimd.xml

type Logical_060 = '[]
type Binary_060  = '[]

decode_060 :: Fn Logical_060 a -> FnW Binary_060 (Decode a)
decode_060 f = return f

encode_060 :: FnW Binary_060 a -> Fn Logical_060 (Encode a)
encode_060 f = return f

parse_060 :: Fn Logical_060 a -> Parser a
parse_060 f = do
    return $ f

show_060 :: Fn Logical_060 ShowS
show_060 = id


-- '  <Vd>.4S, <Vn>.4S'
-- SHA1SU1_VV_cryptosha2sha1su1_advsimd.xml
-- SHA256SU0_VV_cryptosha2sha256su0_advsimd.xml
-- SM4E_VV4_cryptosha512_2sm4e_advsimd.xml

type Logical_061 = '[]
type Binary_061  = '[]

decode_061 :: Fn Logical_061 a -> FnW Binary_061 (Decode a)
decode_061 f = return f

encode_061 :: FnW Binary_061 a -> Fn Logical_061 (Encode a)
encode_061 f = return f

parse_061 :: Fn Logical_061 a -> Parser a
parse_061 f = do
    return $ f

show_061 :: Fn Logical_061 ShowS
show_061 = id


-- '  <Vd>.<T>, #<imm>'
-- FMOV_asimdimm_H_h   fmov_advsimd.xml
-- FMOV_asimdimm_S_s   fmov_advsimd.xml

type Logical_062 = '[]
type Binary_062  = '[]

decode_062 :: Fn Logical_062 a -> FnW Binary_062 (Decode a)
decode_062 f = return f

encode_062 :: FnW Binary_062 a -> Fn Logical_062 (Encode a)
encode_062 f = return f

parse_062 :: Fn Logical_062 a -> Parser a
parse_062 f = do
    return $ f

show_062 :: Fn Logical_062 ShowS
show_062 = id


-- '  <Vd>.<T>, <R><n>'
-- DUP_asimdins_DR_r   dup_advsimd_gen.xml

type Logical_063 = '[]
type Binary_063  = '[]

decode_063 :: Fn Logical_063 a -> FnW Binary_063 (Decode a)
decode_063 f = return f

encode_063 :: FnW Binary_063 a -> Fn Logical_063 (Encode a)
encode_063 f = return f

parse_063 :: Fn Logical_063 a -> Parser a
parse_063 f = do
    return $ f

show_063 :: Fn Logical_063 ShowS
show_063 = id


-- '  <Wd>, <Wn>, <Wm>'
-- ADC_32_addsub_carry adc.xml
-- ADCS_32_addsub_carryadcs.xml
-- ASRV_32_dp_2src     asrv.xml
-- CRC32B_32C_dp_2src  crc32.xml
-- CRC32H_32C_dp_2src  crc32.xml
-- CRC32W_32C_dp_2src  crc32.xml
-- CRC32CB_32C_dp_2src crc32c.xml
-- CRC32CH_32C_dp_2src crc32c.xml
-- CRC32CW_32C_dp_2src crc32c.xml
-- LSLV_32_dp_2src     lslv.xml
-- LSRV_32_dp_2src     lsrv.xml
-- RORV_32_dp_2src     rorv.xml
-- SBC_32_addsub_carry sbc.xml
-- SBCS_32_addsub_carrysbcs.xml
-- SDIV_32_dp_2src     sdiv.xml
-- UDIV_32_dp_2src     udiv.xml

type Logical_064 = '[]
type Binary_064  = '[]

decode_064 :: Fn Logical_064 a -> FnW Binary_064 (Decode a)
decode_064 f = return f

encode_064 :: FnW Binary_064 a -> Fn Logical_064 (Encode a)
encode_064 f = return f

parse_064 :: Fn Logical_064 a -> Parser a
parse_064 f = do
    return $ f

show_064 :: Fn Logical_064 ShowS
show_064 = id


-- '  <Wd>, <Wn>, <Xm>'
-- CRC32X_64C_dp_2src  crc32.xml
-- CRC32CX_64C_dp_2src crc32c.xml

type Logical_065 = '[]
type Binary_065  = '[]

decode_065 :: Fn Logical_065 a -> FnW Binary_065 (Decode a)
decode_065 f = return f

encode_065 :: FnW Binary_065 a -> Fn Logical_065 (Encode a)
encode_065 f = return f

parse_065 :: Fn Logical_065 a -> Parser a
parse_065 f = do
    return $ f

show_065 :: Fn Logical_065 ShowS
show_065 = id


-- '  <Xd>, <Xn>, <Xm>'
-- ADC_64_addsub_carry adc.xml
-- ADCS_64_addsub_carryadcs.xml
-- ASRV_64_dp_2src     asrv.xml
-- LSLV_64_dp_2src     lslv.xml
-- LSRV_64_dp_2src     lsrv.xml
-- RORV_64_dp_2src     rorv.xml
-- SBC_64_addsub_carry sbc.xml
-- SBCS_64_addsub_carrysbcs.xml
-- SDIV_64_dp_2src     sdiv.xml
-- SMULH_64_dp_3src    smulh.xml
-- UDIV_64_dp_2src     udiv.xml
-- UMULH_64_dp_3src    umulh.xml

type Logical_066 = '[]
type Binary_066  = '[]

decode_066 :: Fn Logical_066 a -> FnW Binary_066 (Decode a)
decode_066 f = return f

encode_066 :: FnW Binary_066 a -> Fn Logical_066 (Encode a)
encode_066 f = return f

parse_066 :: Fn Logical_066 a -> Parser a
parse_066 f = do
    return $ f

show_066 :: Fn Logical_066 ShowS
show_066 = id


-- '  {<option>|#<imm>}'
-- ISB_BI_system       isb.xml

type Logical_067 = '[]
type Binary_067  = '[]

decode_067 :: Fn Logical_067 a -> FnW Binary_067 (Decode a)
decode_067 f = return f

encode_067 :: FnW Binary_067 a -> Fn Logical_067 (Encode a)
encode_067 f = return f

parse_067 :: Fn Logical_067 a -> Parser a
parse_067 f = do
    return $ f

show_067 :: Fn Logical_067 ShowS
show_067 = id


-- '  <V><d>, <V><n>, #0'
-- CMEQ_asisdmisc_Z    cmeq_advsimd_zero.xml
-- CMGE_asisdmisc_Z    cmge_advsimd_zero.xml
-- CMGT_asisdmisc_Z    cmgt_advsimd_zero.xml
-- CMLE_asisdmisc_Z    cmle_advsimd.xml
-- CMLT_asisdmisc_Z    cmlt_advsimd.xml

type Logical_068 = '[]
type Binary_068  = '[]

decode_068 :: Fn Logical_068 a -> FnW Binary_068 (Decode a)
decode_068 f = return f

encode_068 :: FnW Binary_068 a -> Fn Logical_068 (Encode a)
encode_068 f = return f

parse_068 :: Fn Logical_068 a -> Parser a
parse_068 f = do
    return $ f

show_068 :: Fn Logical_068 ShowS
show_068 = id


-- '  <Vd>.16B, <Vn>.16B'
-- AESD_B_cryptoaes    aesd_advsimd.xml
-- AESE_B_cryptoaes    aese_advsimd.xml
-- AESIMC_B_cryptoaes  aesimc_advsimd.xml
-- AESMC_B_cryptoaes   aesmc_advsimd.xml

type Logical_069 = '[]
type Binary_069  = '[]

decode_069 :: Fn Logical_069 a -> FnW Binary_069 (Decode a)
decode_069 f = return f

encode_069 :: FnW Binary_069 a -> Fn Logical_069 (Encode a)
encode_069 f = return f

parse_069 :: Fn Logical_069 a -> Parser a
parse_069 f = do
    return $ f

show_069 :: Fn Logical_069 ShowS
show_069 = id


-- '  <Vd>.<T>, <Vn>.<T>'
-- ABS_asimdmisc_R     abs_advsimd.xml
-- CLS_asimdmisc_R     cls_advsimd.xml
-- CLZ_asimdmisc_R     clz_advsimd.xml
-- CNT_asimdmisc_R     cnt_advsimd.xml
-- FABS_asimdmiscfp16_Rfabs_advsimd.xml
-- FABS_asimdmisc_R    fabs_advsimd.xml
-- FCVTAS_asimdmiscfp16_Rfcvtas_advsimd.xml
-- FCVTAS_asimdmisc_R  fcvtas_advsimd.xml
-- FCVTAU_asimdmiscfp16_Rfcvtau_advsimd.xml
-- FCVTAU_asimdmisc_R  fcvtau_advsimd.xml
-- FCVTMS_asimdmiscfp16_Rfcvtms_advsimd.xml
-- FCVTMS_asimdmisc_R  fcvtms_advsimd.xml
-- FCVTMU_asimdmiscfp16_Rfcvtmu_advsimd.xml
-- FCVTMU_asimdmisc_R  fcvtmu_advsimd.xml
-- FCVTNS_asimdmiscfp16_Rfcvtns_advsimd.xml
-- FCVTNS_asimdmisc_R  fcvtns_advsimd.xml
-- FCVTNU_asimdmiscfp16_Rfcvtnu_advsimd.xml
-- FCVTNU_asimdmisc_R  fcvtnu_advsimd.xml
-- FCVTPS_asimdmiscfp16_Rfcvtps_advsimd.xml
-- FCVTPS_asimdmisc_R  fcvtps_advsimd.xml
-- FCVTPU_asimdmiscfp16_Rfcvtpu_advsimd.xml
-- FCVTPU_asimdmisc_R  fcvtpu_advsimd.xml
-- FCVTZS_asimdmiscfp16_Rfcvtzs_advsimd_int.xml
-- FCVTZS_asimdmisc_R  fcvtzs_advsimd_int.xml
-- FCVTZU_asimdmiscfp16_Rfcvtzu_advsimd_int.xml
-- FCVTZU_asimdmisc_R  fcvtzu_advsimd_int.xml
-- FNEG_asimdmiscfp16_Rfneg_advsimd.xml
-- FNEG_asimdmisc_R    fneg_advsimd.xml
-- FRECPE_asimdmiscfp16_Rfrecpe_advsimd.xml
-- FRECPE_asimdmisc_R  frecpe_advsimd.xml
-- FRINTA_asimdmiscfp16_Rfrinta_advsimd.xml
-- FRINTA_asimdmisc_R  frinta_advsimd.xml
-- FRINTI_asimdmiscfp16_Rfrinti_advsimd.xml
-- FRINTI_asimdmisc_R  frinti_advsimd.xml
-- FRINTM_asimdmiscfp16_Rfrintm_advsimd.xml
-- FRINTM_asimdmisc_R  frintm_advsimd.xml
-- FRINTN_asimdmiscfp16_Rfrintn_advsimd.xml
-- FRINTN_asimdmisc_R  frintn_advsimd.xml
-- FRINTP_asimdmiscfp16_Rfrintp_advsimd.xml
-- FRINTP_asimdmisc_R  frintp_advsimd.xml
-- FRINTX_asimdmiscfp16_Rfrintx_advsimd.xml
-- FRINTX_asimdmisc_R  frintx_advsimd.xml
-- FRINTZ_asimdmiscfp16_Rfrintz_advsimd.xml
-- FRINTZ_asimdmisc_R  frintz_advsimd.xml
-- FRSQRTE_asimdmiscfp16_Rfrsqrte_advsimd.xml
-- FRSQRTE_asimdmisc_R frsqrte_advsimd.xml
-- FSQRT_asimdmiscfp16_Rfsqrt_advsimd.xml
-- FSQRT_asimdmisc_R   fsqrt_advsimd.xml
-- NEG_asimdmisc_R     neg_advsimd.xml
-- NOT_asimdmisc_R     not_advsimd.xml
-- RBIT_asimdmisc_R    rbit_advsimd.xml
-- REV16_asimdmisc_R   rev16_advsimd.xml
-- REV32_asimdmisc_R   rev32_advsimd.xml
-- REV64_asimdmisc_R   rev64_advsimd.xml
-- SCVTF_asimdmiscfp16_Rscvtf_advsimd_int.xml
-- SCVTF_asimdmisc_R   scvtf_advsimd_int.xml
-- SQABS_asimdmisc_R   sqabs_advsimd.xml
-- SQNEG_asimdmisc_R   sqneg_advsimd.xml
-- SUQADD_asimdmisc_R  suqadd_advsimd.xml
-- UCVTF_asimdmiscfp16_Rucvtf_advsimd_int.xml
-- UCVTF_asimdmisc_R   ucvtf_advsimd_int.xml
-- URECPE_asimdmisc_R  urecpe_advsimd.xml
-- URSQRTE_asimdmisc_R ursqrte_advsimd.xml
-- USQADD_asimdmisc_R  usqadd_advsimd.xml

type Logical_070 = '[]
type Binary_070  = '[]

decode_070 :: Fn Logical_070 a -> FnW Binary_070 (Decode a)
decode_070 f = return f

encode_070 :: FnW Binary_070 a -> Fn Logical_070 (Encode a)
encode_070 f = return f

parse_070 :: Fn Logical_070 a -> Parser a
parse_070 f = do
    return $ f

show_070 :: Fn Logical_070 ShowS
show_070 = id


-- '  <Wd>, <Wn>, #<imm>'
-- ANDS_32S_log_imm    ands_log_imm.xml

type Logical_071 = '[]
type Binary_071  = '[]

decode_071 :: Fn Logical_071 a -> FnW Binary_071 (Decode a)
decode_071 f = return f

encode_071 :: FnW Binary_071 a -> Fn Logical_071 (Encode a)
encode_071 f = return f

parse_071 :: Fn Logical_071 a -> Parser a
parse_071 f = do
    return $ f

show_071 :: Fn Logical_071 ShowS
show_071 = id


-- '  <Xd>, <Xn>, #<imm>'
-- ANDS_64S_log_imm    ands_log_imm.xml

type Logical_072 = '[]
type Binary_072  = '[]

decode_072 :: Fn Logical_072 a -> FnW Binary_072 (Decode a)
decode_072 f = return f

encode_072 :: FnW Binary_072 a -> Fn Logical_072 (Encode a)
encode_072 f = return f

parse_072 :: Fn Logical_072 a -> Parser a
parse_072 f = do
    return $ f

show_072 :: Fn Logical_072 ShowS
show_072 = id


-- '  <Qd>, <Qn>, <Vm>.2D'
-- SHA512H_QQV_cryptosha512_3sha512h_advsimd.xml
-- SHA512H2_QQV_cryptosha512_3sha512h2_advsimd.xml

type Logical_073 = '[]
type Binary_073  = '[]

decode_073 :: Fn Logical_073 a -> FnW Binary_073 (Decode a)
decode_073 f = return f

encode_073 :: FnW Binary_073 a -> Fn Logical_073 (Encode a)
encode_073 f = return f

parse_073 :: Fn Logical_073 a -> Parser a
parse_073 f = do
    return $ f

show_073 :: Fn Logical_073 ShowS
show_073 = id


-- '  <Qd>, <Qn>, <Vm>.4S'
-- SHA256H_QQV_cryptosha3sha256h_advsimd.xml
-- SHA256H2_QQV_cryptosha3sha256h2_advsimd.xml

type Logical_074 = '[]
type Binary_074  = '[]

decode_074 :: Fn Logical_074 a -> FnW Binary_074 (Decode a)
decode_074 f = return f

encode_074 :: FnW Binary_074 a -> Fn Logical_074 (Encode a)
encode_074 f = return f

parse_074 :: Fn Logical_074 a -> Parser a
parse_074 f = do
    return $ f

show_074 :: Fn Logical_074 ShowS
show_074 = id


-- '  <Qd>, <Sn>, <Vm>.4S'
-- SHA1C_QSV_cryptosha3sha1c_advsimd.xml
-- SHA1M_QSV_cryptosha3sha1m_advsimd.xml
-- SHA1P_QSV_cryptosha3sha1p_advsimd.xml

type Logical_075 = '[]
type Binary_075  = '[]

decode_075 :: Fn Logical_075 a -> FnW Binary_075 (Decode a)
decode_075 f = return f

encode_075 :: FnW Binary_075 a -> Fn Logical_075 (Encode a)
encode_075 f = return f

parse_075 :: Fn Logical_075 a -> Parser a
parse_075 f = do
    return $ f

show_075 :: Fn Logical_075 ShowS
show_075 = id


-- '  <Xd>, <Xn>, <Xm|SP>'
-- PACGA_64P_dp_2src   pacga.xml

type Logical_076 = '[]
type Binary_076  = '[]

decode_076 :: Fn Logical_076 a -> FnW Binary_076 (Decode a)
decode_076 f = return f

encode_076 :: FnW Binary_076 a -> Fn Logical_076 (Encode a)
encode_076 f = return f

parse_076 :: Fn Logical_076 a -> Parser a
parse_076 f = do
    return $ f

show_076 :: Fn Logical_076 ShowS
show_076 = id


-- '  <Dd>, <Wn>, #<fbits>'
-- SCVTF_D32_float2fix scvtf_float_fix.xml
-- UCVTF_D32_float2fix ucvtf_float_fix.xml

type Logical_077 = '[]
type Binary_077  = '[]

decode_077 :: Fn Logical_077 a -> FnW Binary_077 (Decode a)
decode_077 f = return f

encode_077 :: FnW Binary_077 a -> Fn Logical_077 (Encode a)
encode_077 f = return f

parse_077 :: Fn Logical_077 a -> Parser a
parse_077 f = do
    return $ f

show_077 :: Fn Logical_077 ShowS
show_077 = id


-- '  <Dd>, <Xn>, #<fbits>'
-- SCVTF_D64_float2fix scvtf_float_fix.xml
-- UCVTF_D64_float2fix ucvtf_float_fix.xml

type Logical_078 = '[]
type Binary_078  = '[]

decode_078 :: Fn Logical_078 a -> FnW Binary_078 (Decode a)
decode_078 f = return f

encode_078 :: FnW Binary_078 a -> Fn Logical_078 (Encode a)
encode_078 f = return f

parse_078 :: Fn Logical_078 a -> Parser a
parse_078 f = do
    return $ f

show_078 :: Fn Logical_078 ShowS
show_078 = id


-- '  <Hd>, <Wn>, #<fbits>'
-- SCVTF_H32_float2fix scvtf_float_fix.xml
-- UCVTF_H32_float2fix ucvtf_float_fix.xml

type Logical_079 = '[]
type Binary_079  = '[]

decode_079 :: Fn Logical_079 a -> FnW Binary_079 (Decode a)
decode_079 f = return f

encode_079 :: FnW Binary_079 a -> Fn Logical_079 (Encode a)
encode_079 f = return f

parse_079 :: Fn Logical_079 a -> Parser a
parse_079 f = do
    return $ f

show_079 :: Fn Logical_079 ShowS
show_079 = id


-- '  <Hd>, <Xn>, #<fbits>'
-- SCVTF_H64_float2fix scvtf_float_fix.xml
-- UCVTF_H64_float2fix ucvtf_float_fix.xml

type Logical_080 = '[]
type Binary_080  = '[]

decode_080 :: Fn Logical_080 a -> FnW Binary_080 (Decode a)
decode_080 f = return f

encode_080 :: FnW Binary_080 a -> Fn Logical_080 (Encode a)
encode_080 f = return f

parse_080 :: Fn Logical_080 a -> Parser a
parse_080 f = do
    return $ f

show_080 :: Fn Logical_080 ShowS
show_080 = id


-- '  <Sd>, <Wn>, #<fbits>'
-- SCVTF_S32_float2fix scvtf_float_fix.xml
-- UCVTF_S32_float2fix ucvtf_float_fix.xml

type Logical_081 = '[]
type Binary_081  = '[]

decode_081 :: Fn Logical_081 a -> FnW Binary_081 (Decode a)
decode_081 f = return f

encode_081 :: FnW Binary_081 a -> Fn Logical_081 (Encode a)
encode_081 f = return f

parse_081 :: Fn Logical_081 a -> Parser a
parse_081 f = do
    return $ f

show_081 :: Fn Logical_081 ShowS
show_081 = id


-- '  <Sd>, <Xn>, #<fbits>'
-- SCVTF_S64_float2fix scvtf_float_fix.xml
-- UCVTF_S64_float2fix ucvtf_float_fix.xml

type Logical_082 = '[]
type Binary_082  = '[]

decode_082 :: Fn Logical_082 a -> FnW Binary_082 (Decode a)
decode_082 f = return f

encode_082 :: FnW Binary_082 a -> Fn Logical_082 (Encode a)
encode_082 f = return f

parse_082 :: Fn Logical_082 a -> Parser a
parse_082 f = do
    return $ f

show_082 :: Fn Logical_082 ShowS
show_082 = id


-- '  <V><d>, <V><n>, #0.0'
-- FCMEQ_asisdmisc_FZ  fcmeq_advsimd_zero.xml
-- FCMGE_asisdmisc_FZ  fcmge_advsimd_zero.xml
-- FCMGT_asisdmisc_FZ  fcmgt_advsimd_zero.xml
-- FCMLE_asisdmisc_FZ  fcmle_advsimd.xml
-- FCMLT_asisdmisc_FZ  fcmlt_advsimd.xml

type Logical_083 = '[]
type Binary_083  = '[]

decode_083 :: Fn Logical_083 a -> FnW Binary_083 (Decode a)
decode_083 f = return f

encode_083 :: FnW Binary_083 a -> Fn Logical_083 (Encode a)
encode_083 f = return f

parse_083 :: Fn Logical_083 a -> Parser a
parse_083 f = do
    return $ f

show_083 :: Fn Logical_083 ShowS
show_083 = id


-- '  <Vd>.<Ta>, <Vn>.<Tb>'
-- SADALP_asimdmisc_P  sadalp_advsimd.xml
-- SADDLP_asimdmisc_P  saddlp_advsimd.xml
-- UADALP_asimdmisc_P  uadalp_advsimd.xml
-- UADDLP_asimdmisc_P  uaddlp_advsimd.xml

type Logical_084 = '[]
type Binary_084  = '[]

decode_084 :: Fn Logical_084 a -> FnW Binary_084 (Decode a)
decode_084 f = return f

encode_084 :: FnW Binary_084 a -> Fn Logical_084 (Encode a)
encode_084 f = return f

parse_084 :: Fn Logical_084 a -> Parser a
parse_084 f = do
    return $ f

show_084 :: Fn Logical_084 ShowS
show_084 = id


-- '  <Wd>, <Dn>, #<fbits>'
-- FCVTZS_32D_float2fixfcvtzs_float_fix.xml
-- FCVTZU_32D_float2fixfcvtzu_float_fix.xml

type Logical_085 = '[]
type Binary_085  = '[]

decode_085 :: Fn Logical_085 a -> FnW Binary_085 (Decode a)
decode_085 f = return f

encode_085 :: FnW Binary_085 a -> Fn Logical_085 (Encode a)
encode_085 f = return f

parse_085 :: Fn Logical_085 a -> Parser a
parse_085 f = do
    return $ f

show_085 :: Fn Logical_085 ShowS
show_085 = id


-- '  <Wd>, <Hn>, #<fbits>'
-- FCVTZS_32H_float2fixfcvtzs_float_fix.xml
-- FCVTZU_32H_float2fixfcvtzu_float_fix.xml

type Logical_086 = '[]
type Binary_086  = '[]

decode_086 :: Fn Logical_086 a -> FnW Binary_086 (Decode a)
decode_086 f = return f

encode_086 :: FnW Binary_086 a -> Fn Logical_086 (Encode a)
encode_086 f = return f

parse_086 :: Fn Logical_086 a -> Parser a
parse_086 f = do
    return $ f

show_086 :: Fn Logical_086 ShowS
show_086 = id


-- '  <Wd>, <Sn>, #<fbits>'
-- FCVTZS_32S_float2fixfcvtzs_float_fix.xml
-- FCVTZU_32S_float2fixfcvtzu_float_fix.xml

type Logical_087 = '[]
type Binary_087  = '[]

decode_087 :: Fn Logical_087 a -> FnW Binary_087 (Decode a)
decode_087 f = return f

encode_087 :: FnW Binary_087 a -> Fn Logical_087 (Encode a)
encode_087 f = return f

parse_087 :: Fn Logical_087 a -> Parser a
parse_087 f = do
    return $ f

show_087 :: Fn Logical_087 ShowS
show_087 = id


-- '  <Wt>, [<Xn|SP>{,#0}]'
-- LDAR_LR32_ldstexcl  ldar.xml
-- LDARB_LR32_ldstexcl ldarb.xml
-- LDARH_LR32_ldstexcl ldarh.xml
-- LDAXR_LR32_ldstexcl ldaxr.xml
-- LDAXRB_LR32_ldstexclldaxrb.xml
-- LDAXRH_LR32_ldstexclldaxrh.xml
-- LDLAR_LR32_ldstexcl ldlar.xml
-- LDLARB_LR32_ldstexclldlarb.xml
-- LDLARH_LR32_ldstexclldlarh.xml
-- LDXR_LR32_ldstexcl  ldxr.xml
-- LDXRB_LR32_ldstexcl ldxrb.xml
-- LDXRH_LR32_ldstexcl ldxrh.xml
-- STLLR_SL32_ldstexcl stllr.xml
-- STLLRB_SL32_ldstexclstllrb.xml
-- STLLRH_SL32_ldstexclstllrh.xml
-- STLR_SL32_ldstexcl  stlr.xml
-- STLRB_SL32_ldstexcl stlrb.xml
-- STLRH_SL32_ldstexcl stlrh.xml

type Logical_088 = '[]
type Binary_088  = '[]

decode_088 :: Fn Logical_088 a -> FnW Binary_088 (Decode a)
decode_088 f = return f

encode_088 :: FnW Binary_088 a -> Fn Logical_088 (Encode a)
encode_088 f = return f

parse_088 :: Fn Logical_088 a -> Parser a
parse_088 f = do
    return $ f

show_088 :: Fn Logical_088 ShowS
show_088 = id


-- '  <Xd>, <Dn>, #<fbits>'
-- FCVTZS_64D_float2fixfcvtzs_float_fix.xml
-- FCVTZU_64D_float2fixfcvtzu_float_fix.xml

type Logical_089 = '[]
type Binary_089  = '[]

decode_089 :: Fn Logical_089 a -> FnW Binary_089 (Decode a)
decode_089 f = return f

encode_089 :: FnW Binary_089 a -> Fn Logical_089 (Encode a)
encode_089 f = return f

parse_089 :: Fn Logical_089 a -> Parser a
parse_089 f = do
    return $ f

show_089 :: Fn Logical_089 ShowS
show_089 = id


-- '  <Xd>, <Hn>, #<fbits>'
-- FCVTZS_64H_float2fixfcvtzs_float_fix.xml
-- FCVTZU_64H_float2fixfcvtzu_float_fix.xml

type Logical_090 = '[]
type Binary_090  = '[]

decode_090 :: Fn Logical_090 a -> FnW Binary_090 (Decode a)
decode_090 f = return f

encode_090 :: FnW Binary_090 a -> Fn Logical_090 (Encode a)
encode_090 f = return f

parse_090 :: Fn Logical_090 a -> Parser a
parse_090 f = do
    return $ f

show_090 :: Fn Logical_090 ShowS
show_090 = id


-- '  <Xd>, <Sn>, #<fbits>'
-- FCVTZS_64S_float2fixfcvtzs_float_fix.xml
-- FCVTZU_64S_float2fixfcvtzu_float_fix.xml

type Logical_091 = '[]
type Binary_091  = '[]

decode_091 :: Fn Logical_091 a -> FnW Binary_091 (Decode a)
decode_091 f = return f

encode_091 :: FnW Binary_091 a -> Fn Logical_091 (Encode a)
encode_091 f = return f

parse_091 :: Fn Logical_091 a -> Parser a
parse_091 f = do
    return $ f

show_091 :: Fn Logical_091 ShowS
show_091 = id


-- '  <Xt>, [<Xn|SP>{,#0}]'
-- LDAR_LR64_ldstexcl  ldar.xml
-- LDAXR_LR64_ldstexcl ldaxr.xml
-- LDLAR_LR64_ldstexcl ldlar.xml
-- LDXR_LR64_ldstexcl  ldxr.xml
-- STLLR_SL64_ldstexcl stllr.xml
-- STLR_SL64_ldstexcl  stlr.xml

type Logical_092 = '[]
type Binary_092  = '[]

decode_092 :: Fn Logical_092 a -> FnW Binary_092 (Decode a)
decode_092 f = return f

encode_092 :: FnW Binary_092 a -> Fn Logical_092 (Encode a)
encode_092 f = return f

parse_092 :: Fn Logical_092 a -> Parser a
parse_092 f = do
    return $ f

show_092 :: Fn Logical_092 ShowS
show_092 = id


-- '  <Ws>, <Wt>, [<Xn|SP>]'
-- LDADD_32_memop      ldadd.xml
-- LDADDA_32_memop     ldadd.xml
-- LDADDAL_32_memop    ldadd.xml
-- LDADDL_32_memop     ldadd.xml
-- LDADDAB_32_memop    ldaddb.xml
-- LDADDALB_32_memop   ldaddb.xml
-- LDADDB_32_memop     ldaddb.xml
-- LDADDLB_32_memop    ldaddb.xml
-- LDADDAH_32_memop    ldaddh.xml
-- LDADDALH_32_memop   ldaddh.xml
-- LDADDH_32_memop     ldaddh.xml
-- LDADDLH_32_memop    ldaddh.xml
-- LDCLR_32_memop      ldclr.xml
-- LDCLRA_32_memop     ldclr.xml
-- LDCLRAL_32_memop    ldclr.xml
-- LDCLRL_32_memop     ldclr.xml
-- LDCLRAB_32_memop    ldclrb.xml
-- LDCLRALB_32_memop   ldclrb.xml
-- LDCLRB_32_memop     ldclrb.xml
-- LDCLRLB_32_memop    ldclrb.xml
-- LDCLRAH_32_memop    ldclrh.xml
-- LDCLRALH_32_memop   ldclrh.xml
-- LDCLRH_32_memop     ldclrh.xml
-- LDCLRLH_32_memop    ldclrh.xml
-- LDEOR_32_memop      ldeor.xml
-- LDEORA_32_memop     ldeor.xml
-- LDEORAL_32_memop    ldeor.xml
-- LDEORL_32_memop     ldeor.xml
-- LDEORAB_32_memop    ldeorb.xml
-- LDEORALB_32_memop   ldeorb.xml
-- LDEORB_32_memop     ldeorb.xml
-- LDEORLB_32_memop    ldeorb.xml
-- LDEORAH_32_memop    ldeorh.xml
-- LDEORALH_32_memop   ldeorh.xml
-- LDEORH_32_memop     ldeorh.xml
-- LDEORLH_32_memop    ldeorh.xml
-- LDSET_32_memop      ldset.xml
-- LDSETA_32_memop     ldset.xml
-- LDSETAL_32_memop    ldset.xml
-- LDSETL_32_memop     ldset.xml
-- LDSETAB_32_memop    ldsetb.xml
-- LDSETALB_32_memop   ldsetb.xml
-- LDSETB_32_memop     ldsetb.xml
-- LDSETLB_32_memop    ldsetb.xml
-- LDSETAH_32_memop    ldseth.xml
-- LDSETALH_32_memop   ldseth.xml
-- LDSETH_32_memop     ldseth.xml
-- LDSETLH_32_memop    ldseth.xml
-- LDSMAX_32_memop     ldsmax.xml
-- LDSMAXA_32_memop    ldsmax.xml
-- LDSMAXAL_32_memop   ldsmax.xml
-- LDSMAXL_32_memop    ldsmax.xml
-- LDSMAXAB_32_memop   ldsmaxb.xml
-- LDSMAXALB_32_memop  ldsmaxb.xml
-- LDSMAXB_32_memop    ldsmaxb.xml
-- LDSMAXLB_32_memop   ldsmaxb.xml
-- LDSMAXAH_32_memop   ldsmaxh.xml
-- LDSMAXALH_32_memop  ldsmaxh.xml
-- LDSMAXH_32_memop    ldsmaxh.xml
-- LDSMAXLH_32_memop   ldsmaxh.xml
-- LDSMIN_32_memop     ldsmin.xml
-- LDSMINA_32_memop    ldsmin.xml
-- LDSMINAL_32_memop   ldsmin.xml
-- LDSMINL_32_memop    ldsmin.xml
-- LDSMINAB_32_memop   ldsminb.xml
-- LDSMINALB_32_memop  ldsminb.xml
-- LDSMINB_32_memop    ldsminb.xml
-- LDSMINLB_32_memop   ldsminb.xml
-- LDSMINAH_32_memop   ldsminh.xml
-- LDSMINALH_32_memop  ldsminh.xml
-- LDSMINH_32_memop    ldsminh.xml
-- LDSMINLH_32_memop   ldsminh.xml
-- LDUMAX_32_memop     ldumax.xml
-- LDUMAXA_32_memop    ldumax.xml
-- LDUMAXAL_32_memop   ldumax.xml
-- LDUMAXL_32_memop    ldumax.xml
-- LDUMAXAB_32_memop   ldumaxb.xml
-- LDUMAXALB_32_memop  ldumaxb.xml
-- LDUMAXB_32_memop    ldumaxb.xml
-- LDUMAXLB_32_memop   ldumaxb.xml
-- LDUMAXAH_32_memop   ldumaxh.xml
-- LDUMAXALH_32_memop  ldumaxh.xml
-- LDUMAXH_32_memop    ldumaxh.xml
-- LDUMAXLH_32_memop   ldumaxh.xml
-- LDUMIN_32_memop     ldumin.xml
-- LDUMINA_32_memop    ldumin.xml
-- LDUMINAL_32_memop   ldumin.xml
-- LDUMINL_32_memop    ldumin.xml
-- LDUMINAB_32_memop   lduminb.xml
-- LDUMINALB_32_memop  lduminb.xml
-- LDUMINB_32_memop    lduminb.xml
-- LDUMINLB_32_memop   lduminb.xml
-- LDUMINAH_32_memop   lduminh.xml
-- LDUMINALH_32_memop  lduminh.xml
-- LDUMINH_32_memop    lduminh.xml
-- LDUMINLH_32_memop   lduminh.xml
-- SWP_32_memop        swp.xml
-- SWPA_32_memop       swp.xml
-- SWPAL_32_memop      swp.xml
-- SWPL_32_memop       swp.xml
-- SWPAB_32_memop      swpb.xml
-- SWPALB_32_memop     swpb.xml
-- SWPB_32_memop       swpb.xml
-- SWPLB_32_memop      swpb.xml
-- SWPAH_32_memop      swph.xml
-- SWPALH_32_memop     swph.xml
-- SWPH_32_memop       swph.xml
-- SWPLH_32_memop      swph.xml

type Logical_093 = '[]
type Binary_093  = '[]

decode_093 :: Fn Logical_093 a -> FnW Binary_093 (Decode a)
decode_093 f = return f

encode_093 :: FnW Binary_093 a -> Fn Logical_093 (Encode a)
encode_093 f = return f

parse_093 :: Fn Logical_093 a -> Parser a
parse_093 f = do
    return $ f

show_093 :: Fn Logical_093 ShowS
show_093 = id


-- '  <Wt>, [<Xn|SP> {,#0}]'
-- LDAPR_32L_memop     ldapr.xml
-- LDAPRB_32L_memop    ldaprb.xml
-- LDAPRH_32L_memop    ldaprh.xml

type Logical_094 = '[]
type Binary_094  = '[]

decode_094 :: Fn Logical_094 a -> FnW Binary_094 (Decode a)
decode_094 f = return f

encode_094 :: FnW Binary_094 a -> Fn Logical_094 (Encode a)
encode_094 f = return f

parse_094 :: Fn Logical_094 a -> Parser a
parse_094 f = do
    return $ f

show_094 :: Fn Logical_094 ShowS
show_094 = id


-- '  <Xd|SP>, <Xn>, #<imm>'
-- AND_64_log_imm      and_log_imm.xml
-- EOR_64_log_imm      eor_log_imm.xml
-- ORR_64_log_imm      orr_log_imm.xml

type Logical_095 = '[]
type Binary_095  = '[]

decode_095 :: Fn Logical_095 a -> FnW Binary_095 (Decode a)
decode_095 f = return f

encode_095 :: FnW Binary_095 a -> Fn Logical_095 (Encode a)
encode_095 f = return f

parse_095 :: Fn Logical_095 a -> Parser a
parse_095 f = do
    return $ f

show_095 :: Fn Logical_095 ShowS
show_095 = id


-- '  <Xs>, <Xt>, [<Xn|SP>]'
-- LDADD_64_memop      ldadd.xml
-- LDADDA_64_memop     ldadd.xml
-- LDADDAL_64_memop    ldadd.xml
-- LDADDL_64_memop     ldadd.xml
-- LDCLR_64_memop      ldclr.xml
-- LDCLRA_64_memop     ldclr.xml
-- LDCLRAL_64_memop    ldclr.xml
-- LDCLRL_64_memop     ldclr.xml
-- LDEOR_64_memop      ldeor.xml
-- LDEORA_64_memop     ldeor.xml
-- LDEORAL_64_memop    ldeor.xml
-- LDEORL_64_memop     ldeor.xml
-- LDSET_64_memop      ldset.xml
-- LDSETA_64_memop     ldset.xml
-- LDSETAL_64_memop    ldset.xml
-- LDSETL_64_memop     ldset.xml
-- LDSMAX_64_memop     ldsmax.xml
-- LDSMAXA_64_memop    ldsmax.xml
-- LDSMAXAL_64_memop   ldsmax.xml
-- LDSMAXL_64_memop    ldsmax.xml
-- LDSMIN_64_memop     ldsmin.xml
-- LDSMINA_64_memop    ldsmin.xml
-- LDSMINAL_64_memop   ldsmin.xml
-- LDSMINL_64_memop    ldsmin.xml
-- LDUMAX_64_memop     ldumax.xml
-- LDUMAXA_64_memop    ldumax.xml
-- LDUMAXAL_64_memop   ldumax.xml
-- LDUMAXL_64_memop    ldumax.xml
-- LDUMIN_64_memop     ldumin.xml
-- LDUMINA_64_memop    ldumin.xml
-- LDUMINAL_64_memop   ldumin.xml
-- LDUMINL_64_memop    ldumin.xml
-- SWP_64_memop        swp.xml
-- SWPA_64_memop       swp.xml
-- SWPAL_64_memop      swp.xml
-- SWPL_64_memop       swp.xml

type Logical_096 = '[]
type Binary_096  = '[]

decode_096 :: Fn Logical_096 a -> FnW Binary_096 (Decode a)
decode_096 f = return f

encode_096 :: FnW Binary_096 a -> Fn Logical_096 (Encode a)
encode_096 f = return f

parse_096 :: Fn Logical_096 a -> Parser a
parse_096 f = do
    return $ f

show_096 :: Fn Logical_096 ShowS
show_096 = id


-- '  <Xt>, [<Xn|SP> {,#0}]'
-- LDAPR_64L_memop     ldapr.xml

type Logical_097 = '[]
type Binary_097  = '[]

decode_097 :: Fn Logical_097 a -> FnW Binary_097 (Decode a)
decode_097 f = return f

encode_097 :: FnW Binary_097 a -> Fn Logical_097 (Encode a)
encode_097 f = return f

parse_097 :: Fn Logical_097 a -> Parser a
parse_097 f = do
    return $ f

show_097 :: Fn Logical_097 ShowS
show_097 = id


-- '  <pstatefield>, #<imm>'
-- MSR_SI_system       msr_imm.xml

type Logical_098 = '[]
type Binary_098  = '[]

decode_098 :: Fn Logical_098 a -> FnW Binary_098 (Decode a)
decode_098 f = return f

encode_098 :: FnW Binary_098 a -> Fn Logical_098 (Encode a)
encode_098 f = return f

parse_098 :: Fn Logical_098 a -> Parser a
parse_098 f = do
    return $ f

show_098 :: Fn Logical_098 ShowS
show_098 = id


-- '  <Dd>, <Dn>, <Dm>, <Da>'
-- FMADD_D_floatdp3    fmadd_float.xml
-- FMSUB_D_floatdp3    fmsub_float.xml
-- FNMADD_D_floatdp3   fnmadd_float.xml
-- FNMSUB_D_floatdp3   fnmsub_float.xml

type Logical_099 = '[]
type Binary_099  = '[]

decode_099 :: Fn Logical_099 a -> FnW Binary_099 (Decode a)
decode_099 f = return f

encode_099 :: FnW Binary_099 a -> Fn Logical_099 (Encode a)
encode_099 f = return f

parse_099 :: Fn Logical_099 a -> Parser a
parse_099 f = do
    return $ f

show_099 :: Fn Logical_099 ShowS
show_099 = id


-- '  <Hd>, <Hn>, <Hm>, <Ha>'
-- FMADD_H_floatdp3    fmadd_float.xml
-- FMSUB_H_floatdp3    fmsub_float.xml
-- FNMADD_H_floatdp3   fnmadd_float.xml
-- FNMSUB_H_floatdp3   fnmsub_float.xml

type Logical_100 = '[]
type Binary_100  = '[]

decode_100 :: Fn Logical_100 a -> FnW Binary_100 (Decode a)
decode_100 f = return f

encode_100 :: FnW Binary_100 a -> Fn Logical_100 (Encode a)
encode_100 f = return f

parse_100 :: Fn Logical_100 a -> Parser a
parse_100 f = do
    return $ f

show_100 :: Fn Logical_100 ShowS
show_100 = id


-- '  <Sd>, <Sn>, <Sm>, <Sa>'
-- FMADD_S_floatdp3    fmadd_float.xml
-- FMSUB_S_floatdp3    fmsub_float.xml
-- FNMADD_S_floatdp3   fnmadd_float.xml
-- FNMSUB_S_floatdp3   fnmsub_float.xml

type Logical_101 = '[]
type Binary_101  = '[]

decode_101 :: Fn Logical_101 a -> FnW Binary_101 (Decode a)
decode_101 f = return f

encode_101 :: FnW Binary_101 a -> Fn Logical_101 (Encode a)
encode_101 f = return f

parse_101 :: Fn Logical_101 a -> Parser a
parse_101 f = do
    return $ f

show_101 :: Fn Logical_101 ShowS
show_101 = id


-- '  <V><d>, <V><n>, <V><m>'
-- ADD_asisdsame_only  add_advsimd.xml
-- CMEQ_asisdsame_only cmeq_advsimd_reg.xml
-- CMGE_asisdsame_only cmge_advsimd_reg.xml
-- CMGT_asisdsame_only cmgt_advsimd_reg.xml
-- CMHI_asisdsame_only cmhi_advsimd.xml
-- CMHS_asisdsame_only cmhs_advsimd.xml
-- CMTST_asisdsame_onlycmtst_advsimd.xml
-- FABD_asisdsame_only fabd_advsimd.xml
-- FACGE_asisdsame_onlyfacge_advsimd.xml
-- FACGT_asisdsame_onlyfacgt_advsimd.xml
-- FCMEQ_asisdsame_onlyfcmeq_advsimd_reg.xml
-- FCMGE_asisdsame_onlyfcmge_advsimd_reg.xml
-- FCMGT_asisdsame_onlyfcmgt_advsimd_reg.xml
-- FMULX_asisdsame_onlyfmulx_advsimd_vec.xml
-- FRECPS_asisdsame_onlyfrecps_advsimd.xml
-- FRSQRTS_asisdsame_onlyfrsqrts_advsimd.xml
-- SQADD_asisdsame_onlysqadd_advsimd.xml
-- SQDMULH_asisdsame_onlysqdmulh_advsimd_vec.xml
-- SQRDMLAH_asisdsame2_onlysqrdmlah_advsimd_vec.xml
-- SQRDMLSH_asisdsame2_onlysqrdmlsh_advsimd_vec.xml
-- SQRDMULH_asisdsame_onlysqrdmulh_advsimd_vec.xml
-- SQRSHL_asisdsame_onlysqrshl_advsimd.xml
-- SQSHL_asisdsame_onlysqshl_advsimd_reg.xml
-- SQSUB_asisdsame_onlysqsub_advsimd.xml
-- SRSHL_asisdsame_onlysrshl_advsimd.xml
-- SSHL_asisdsame_only sshl_advsimd.xml
-- SUB_asisdsame_only  sub_advsimd.xml
-- UQADD_asisdsame_onlyuqadd_advsimd.xml
-- UQRSHL_asisdsame_onlyuqrshl_advsimd.xml
-- UQSHL_asisdsame_onlyuqshl_advsimd_reg.xml
-- UQSUB_asisdsame_onlyuqsub_advsimd.xml
-- URSHL_asisdsame_onlyurshl_advsimd.xml
-- USHL_asisdsame_only ushl_advsimd.xml

type Logical_102 = '[]
type Binary_102  = '[]

decode_102 :: Fn Logical_102 a -> FnW Binary_102 (Decode a)
decode_102 f = return f

encode_102 :: FnW Binary_102 a -> Fn Logical_102 (Encode a)
encode_102 f = return f

parse_102 :: Fn Logical_102 a -> Parser a
parse_102 f = do
    return $ f

show_102 :: Fn Logical_102 ShowS
show_102 = id


-- '  <Vd>.<T>, <Vn>.<T>, #0'
-- CMEQ_asimdmisc_Z    cmeq_advsimd_zero.xml
-- CMGE_asimdmisc_Z    cmge_advsimd_zero.xml
-- CMGT_asimdmisc_Z    cmgt_advsimd_zero.xml
-- CMLE_asimdmisc_Z    cmle_advsimd.xml
-- CMLT_asimdmisc_Z    cmlt_advsimd.xml

type Logical_103 = '[]
type Binary_103  = '[]

decode_103 :: Fn Logical_103 a -> FnW Binary_103 (Decode a)
decode_103 f = return f

encode_103 :: FnW Binary_103 a -> Fn Logical_103 (Encode a)
encode_103 f = return f

parse_103 :: Fn Logical_103 a -> Parser a
parse_103 f = do
    return $ f

show_103 :: Fn Logical_103 ShowS
show_103 = id


-- '  <Wd>, <Wn>, <Wm>, <Wa>'
-- MADD_32A_dp_3src    madd.xml
-- MSUB_32A_dp_3src    msub.xml

type Logical_104 = '[]
type Binary_104  = '[]

decode_104 :: Fn Logical_104 a -> FnW Binary_104 (Decode a)
decode_104 f = return f

encode_104 :: FnW Binary_104 a -> Fn Logical_104 (Encode a)
encode_104 f = return f

parse_104 :: Fn Logical_104 a -> Parser a
parse_104 f = do
    return $ f

show_104 :: Fn Logical_104 ShowS
show_104 = id


-- '  <Wd|WSP>, <Wn>, #<imm>'
-- AND_32_log_imm      and_log_imm.xml
-- EOR_32_log_imm      eor_log_imm.xml
-- ORR_32_log_imm      orr_log_imm.xml

type Logical_105 = '[]
type Binary_105  = '[]

decode_105 :: Fn Logical_105 a -> FnW Binary_105 (Decode a)
decode_105 f = return f

encode_105 :: FnW Binary_105 a -> Fn Logical_105 (Encode a)
encode_105 f = return f

parse_105 :: Fn Logical_105 a -> Parser a
parse_105 f = do
    return $ f

show_105 :: Fn Logical_105 ShowS
show_105 = id


-- '  <Xd>, <Wn>, <Wm>, <Xa>'
-- SMADDL_64WA_dp_3src smaddl.xml
-- SMSUBL_64WA_dp_3src smsubl.xml
-- UMADDL_64WA_dp_3src umaddl.xml
-- UMSUBL_64WA_dp_3src umsubl.xml

type Logical_106 = '[]
type Binary_106  = '[]

decode_106 :: Fn Logical_106 a -> FnW Binary_106 (Decode a)
decode_106 f = return f

encode_106 :: FnW Binary_106 a -> Fn Logical_106 (Encode a)
encode_106 f = return f

parse_106 :: Fn Logical_106 a -> Parser a
parse_106 f = do
    return $ f

show_106 :: Fn Logical_106 ShowS
show_106 = id


-- '  <Xd>, <Xn>, <Xm>, <Xa>'
-- MADD_64A_dp_3src    madd.xml
-- MSUB_64A_dp_3src    msub.xml

type Logical_107 = '[]
type Binary_107  = '[]

decode_107 :: Fn Logical_107 a -> FnW Binary_107 (Decode a)
decode_107 f = return f

encode_107 :: FnW Binary_107 a -> Fn Logical_107 (Encode a)
encode_107 f = return f

parse_107 :: Fn Logical_107 a -> Parser a
parse_107 f = do
    return $ f

show_107 :: Fn Logical_107 ShowS
show_107 = id


-- '  <R><t>, #<imm>, <label>'
-- TBNZ_only_testbranchtbnz.xml
-- TBZ_only_testbranch tbz.xml

type Logical_108 = '[]
type Binary_108  = '[]

decode_108 :: Fn Logical_108 a -> FnW Binary_108 (Decode a)
decode_108 f = return f

encode_108 :: FnW Binary_108 a -> Fn Logical_108 (Encode a)
encode_108 f = return f

parse_108 :: Fn Logical_108 a -> Parser a
parse_108 f = do
    return $ f

show_108 :: Fn Logical_108 ShowS
show_108 = id


-- '  { <Vt>.<T> }, [<Xn|SP>]'
-- LD1_asisdlse_R1_1v  ld1_advsimd_mult.xml
-- LD1R_asisdlso_R1    ld1r_advsimd.xml
-- ST1_asisdlse_R1_1v  st1_advsimd_mult.xml

type Logical_109 = '[]
type Binary_109  = '[]

decode_109 :: Fn Logical_109 a -> FnW Binary_109 (Decode a)
decode_109 f = return f

encode_109 :: FnW Binary_109 a -> Fn Logical_109 (Encode a)
encode_109 f = return f

parse_109 :: Fn Logical_109 a -> Parser a
parse_109 f = do
    return $ f

show_109 :: Fn Logical_109 ShowS
show_109 = id


-- '{2}  <Vd>.<Ta>, <Vn>.<Tb>'
-- FCVTL_asimdmisc_L   fcvtl_advsimd.xml

type Logical_110 = '[]
type Binary_110  = '[]

decode_110 :: Fn Logical_110 a -> FnW Binary_110 (Decode a)
decode_110 f = return f

encode_110 :: FnW Binary_110 a -> Fn Logical_110 (Encode a)
encode_110 f = return f

parse_110 :: Fn Logical_110 a -> Parser a
parse_110 f = do
    return $ f

show_110 :: Fn Logical_110 ShowS
show_110 = id


-- '{2}  <Vd>.<Tb>, <Vn>.<Ta>'
-- FCVTN_asimdmisc_N   fcvtn_advsimd.xml
-- FCVTXN_asimdmisc_N  fcvtxn_advsimd.xml
-- SQXTN_asimdmisc_N   sqxtn_advsimd.xml
-- SQXTUN_asimdmisc_N  sqxtun_advsimd.xml
-- UQXTN_asimdmisc_N   uqxtn_advsimd.xml
-- XTN_asimdmisc_N     xtn_advsimd.xml

type Logical_111 = '[]
type Binary_111  = '[]

decode_111 :: Fn Logical_111 a -> FnW Binary_111 (Decode a)
decode_111 f = return f

encode_111 :: FnW Binary_111 a -> Fn Logical_111 (Encode a)
encode_111 f = return f

parse_111 :: Fn Logical_111 a -> Parser a
parse_111 f = do
    return $ f

show_111 :: Fn Logical_111 ShowS
show_111 = id


-- '  <Bt>, [<Xn|SP>], #<simm>'
-- LDR_B_ldst_immpost  ldr_imm_fpsimd.xml
-- STR_B_ldst_immpost  str_imm_fpsimd.xml

type Logical_112 = '[]
type Binary_112  = '[]

decode_112 :: Fn Logical_112 a -> FnW Binary_112 (Decode a)
decode_112 f = return f

encode_112 :: FnW Binary_112 a -> Fn Logical_112 (Encode a)
encode_112 f = return f

parse_112 :: Fn Logical_112 a -> Parser a
parse_112 f = do
    return $ f

show_112 :: Fn Logical_112 ShowS
show_112 = id


-- '  <Dd>, <Dn>, <Dm>, <cond>'
-- FCSEL_D_floatsel    fcsel_float.xml

type Logical_113 = '[]
type Binary_113  = '[]

decode_113 :: Fn Logical_113 a -> FnW Binary_113 (Decode a)
decode_113 f = return f

encode_113 :: FnW Binary_113 a -> Fn Logical_113 (Encode a)
encode_113 f = return f

parse_113 :: Fn Logical_113 a -> Parser a
parse_113 f = do
    return $ f

show_113 :: Fn Logical_113 ShowS
show_113 = id


-- '  <Dt>, [<Xn|SP>], #<simm>'
-- LDR_D_ldst_immpost  ldr_imm_fpsimd.xml
-- STR_D_ldst_immpost  str_imm_fpsimd.xml

type Logical_114 = '[]
type Binary_114  = '[]

decode_114 :: Fn Logical_114 a -> FnW Binary_114 (Decode a)
decode_114 f = return f

encode_114 :: FnW Binary_114 a -> Fn Logical_114 (Encode a)
encode_114 f = return f

parse_114 :: Fn Logical_114 a -> Parser a
parse_114 f = do
    return $ f

show_114 :: Fn Logical_114 ShowS
show_114 = id


-- '  <Hd>, <Hn>, <Hm>, <cond>'
-- FCSEL_H_floatsel    fcsel_float.xml

type Logical_115 = '[]
type Binary_115  = '[]

decode_115 :: Fn Logical_115 a -> FnW Binary_115 (Decode a)
decode_115 f = return f

encode_115 :: FnW Binary_115 a -> Fn Logical_115 (Encode a)
encode_115 f = return f

parse_115 :: Fn Logical_115 a -> Parser a
parse_115 f = do
    return $ f

show_115 :: Fn Logical_115 ShowS
show_115 = id


-- '  <Ht>, [<Xn|SP>], #<simm>'
-- LDR_H_ldst_immpost  ldr_imm_fpsimd.xml
-- STR_H_ldst_immpost  str_imm_fpsimd.xml

type Logical_116 = '[]
type Binary_116  = '[]

decode_116 :: Fn Logical_116 a -> FnW Binary_116 (Decode a)
decode_116 f = return f

encode_116 :: FnW Binary_116 a -> Fn Logical_116 (Encode a)
encode_116 f = return f

parse_116 :: Fn Logical_116 a -> Parser a
parse_116 f = do
    return $ f

show_116 :: Fn Logical_116 ShowS
show_116 = id


-- '  <Qt>, [<Xn|SP>], #<simm>'
-- LDR_Q_ldst_immpost  ldr_imm_fpsimd.xml
-- STR_Q_ldst_immpost  str_imm_fpsimd.xml

type Logical_117 = '[]
type Binary_117  = '[]

decode_117 :: Fn Logical_117 a -> FnW Binary_117 (Decode a)
decode_117 f = return f

encode_117 :: FnW Binary_117 a -> Fn Logical_117 (Encode a)
encode_117 f = return f

parse_117 :: Fn Logical_117 a -> Parser a
parse_117 f = do
    return $ f

show_117 :: Fn Logical_117 ShowS
show_117 = id


-- '  <Sd>, <Sn>, <Sm>, <cond>'
-- FCSEL_S_floatsel    fcsel_float.xml

type Logical_118 = '[]
type Binary_118  = '[]

decode_118 :: Fn Logical_118 a -> FnW Binary_118 (Decode a)
decode_118 f = return f

encode_118 :: FnW Binary_118 a -> Fn Logical_118 (Encode a)
encode_118 f = return f

parse_118 :: Fn Logical_118 a -> Parser a
parse_118 f = do
    return $ f

show_118 :: Fn Logical_118 ShowS
show_118 = id


-- '  <St>, [<Xn|SP>], #<simm>'
-- LDR_S_ldst_immpost  ldr_imm_fpsimd.xml
-- STR_S_ldst_immpost  str_imm_fpsimd.xml

type Logical_119 = '[]
type Binary_119  = '[]

decode_119 :: Fn Logical_119 a -> FnW Binary_119 (Decode a)
decode_119 f = return f

encode_119 :: FnW Binary_119 a -> Fn Logical_119 (Encode a)
encode_119 f = return f

parse_119 :: Fn Logical_119 a -> Parser a
parse_119 f = do
    return $ f

show_119 :: Fn Logical_119 ShowS
show_119 = id


-- '  <V><d>, <V><n>, #<fbits>'
-- FCVTZS_asisdshf_C   fcvtzs_advsimd_fix.xml
-- FCVTZU_asisdshf_C   fcvtzu_advsimd_fix.xml
-- SCVTF_asisdshf_C    scvtf_advsimd_fix.xml
-- UCVTF_asisdshf_C    ucvtf_advsimd_fix.xml

type Logical_120 = '[]
type Binary_120  = '[]

decode_120 :: Fn Logical_120 a -> FnW Binary_120 (Decode a)
decode_120 f = return f

encode_120 :: FnW Binary_120 a -> Fn Logical_120 (Encode a)
encode_120 f = return f

parse_120 :: Fn Logical_120 a -> Parser a
parse_120 f = do
    return $ f

show_120 :: Fn Logical_120 ShowS
show_120 = id


-- '  <V><d>, <V><n>, #<shift>'
-- SHL_asisdshf_R      shl_advsimd.xml
-- SLI_asisdshf_R      sli_advsimd.xml
-- SQSHL_asisdshf_R    sqshl_advsimd_imm.xml
-- SQSHLU_asisdshf_R   sqshlu_advsimd.xml
-- SRI_asisdshf_R      sri_advsimd.xml
-- SRSHR_asisdshf_R    srshr_advsimd.xml
-- SRSRA_asisdshf_R    srsra_advsimd.xml
-- SSHR_asisdshf_R     sshr_advsimd.xml
-- SSRA_asisdshf_R     ssra_advsimd.xml
-- UQSHL_asisdshf_R    uqshl_advsimd_imm.xml
-- URSHR_asisdshf_R    urshr_advsimd.xml
-- URSRA_asisdshf_R    ursra_advsimd.xml
-- USHR_asisdshf_R     ushr_advsimd.xml
-- USRA_asisdshf_R     usra_advsimd.xml

type Logical_121 = '[]
type Binary_121  = '[]

decode_121 :: Fn Logical_121 a -> FnW Binary_121 (Decode a)
decode_121 f = return f

encode_121 :: FnW Binary_121 a -> Fn Logical_121 (Encode a)
encode_121 f = return f

parse_121 :: Fn Logical_121 a -> Parser a
parse_121 f = do
    return $ f

show_121 :: Fn Logical_121 ShowS
show_121 = id


-- '  <Vd>.<T>, <Vn>.<T>, #0.0'
-- FCMEQ_asimdmiscfp16_FZfcmeq_advsimd_zero.xml
-- FCMEQ_asimdmisc_FZ  fcmeq_advsimd_zero.xml
-- FCMGE_asimdmiscfp16_FZfcmge_advsimd_zero.xml
-- FCMGE_asimdmisc_FZ  fcmge_advsimd_zero.xml
-- FCMGT_asimdmiscfp16_FZfcmgt_advsimd_zero.xml
-- FCMGT_asimdmisc_FZ  fcmgt_advsimd_zero.xml
-- FCMLE_asimdmiscfp16_FZfcmle_advsimd.xml
-- FCMLE_asimdmisc_FZ  fcmle_advsimd.xml
-- FCMLT_asimdmiscfp16_FZfcmlt_advsimd.xml
-- FCMLT_asimdmisc_FZ  fcmlt_advsimd.xml

type Logical_122 = '[]
type Binary_122  = '[]

decode_122 :: Fn Logical_122 a -> FnW Binary_122 (Decode a)
decode_122 f = return f

encode_122 :: FnW Binary_122 a -> Fn Logical_122 (Encode a)
encode_122 f = return f

parse_122 :: Fn Logical_122 a -> Parser a
parse_122 f = do
    return $ f

show_122 :: Fn Logical_122 ShowS
show_122 = id


-- '  <Wd>, <Vn>.<Ts>[<index>]'
-- SMOV_asimdins_W_w   smov_advsimd.xml
-- UMOV_asimdins_W_w   umov_advsimd.xml

type Logical_123 = '[]
type Binary_123  = '[]

decode_123 :: Fn Logical_123 a -> FnW Binary_123 (Decode a)
decode_123 f = return f

encode_123 :: FnW Binary_123 a -> Fn Logical_123 (Encode a)
encode_123 f = return f

parse_123 :: Fn Logical_123 a -> Parser a
parse_123 f = do
    return $ f

show_123 :: Fn Logical_123 ShowS
show_123 = id


-- '  <Wd>, <Wn>, <Wm>, #<lsb>'
-- EXTR_32_extract     extr.xml

type Logical_124 = '[]
type Binary_124  = '[]

decode_124 :: Fn Logical_124 a -> FnW Binary_124 (Decode a)
decode_124 f = return f

encode_124 :: FnW Binary_124 a -> Fn Logical_124 (Encode a)
encode_124 f = return f

parse_124 :: Fn Logical_124 a -> Parser a
parse_124 f = do
    return $ f

show_124 :: Fn Logical_124 ShowS
show_124 = id


-- '  <Wd>, <Wn>, <Wm>, <cond>'
-- CSEL_32_condsel     csel.xml
-- CSINC_32_condsel    csinc.xml
-- CSINV_32_condsel    csinv.xml
-- CSNEG_32_condsel    csneg.xml

type Logical_125 = '[]
type Binary_125  = '[]

decode_125 :: Fn Logical_125 a -> FnW Binary_125 (Decode a)
decode_125 f = return f

encode_125 :: FnW Binary_125 a -> Fn Logical_125 (Encode a)
encode_125 f = return f

parse_125 :: Fn Logical_125 a -> Parser a
parse_125 f = do
    return $ f

show_125 :: Fn Logical_125 ShowS
show_125 = id


-- '  <Wt>, [<Xn|SP>], #<simm>'
-- LDR_32_ldst_immpost ldr_imm_gen.xml
-- LDRB_32_ldst_immpostldrb_imm.xml
-- LDRH_32_ldst_immpostldrh_imm.xml
-- LDRSB_32_ldst_immpostldrsb_imm.xml
-- LDRSH_32_ldst_immpostldrsh_imm.xml
-- STR_32_ldst_immpost str_imm_gen.xml
-- STRB_32_ldst_immpoststrb_imm.xml
-- STRH_32_ldst_immpoststrh_imm.xml

type Logical_126 = '[]
type Binary_126  = '[]

decode_126 :: Fn Logical_126 a -> FnW Binary_126 (Decode a)
decode_126 f = return f

encode_126 :: FnW Binary_126 a -> Fn Logical_126 (Encode a)
encode_126 f = return f

parse_126 :: Fn Logical_126 a -> Parser a
parse_126 f = do
    return $ f

show_126 :: Fn Logical_126 ShowS
show_126 = id


-- '  <Xd>, <Vn>.<Ts>[<index>]'
-- SMOV_asimdins_X_x   smov_advsimd.xml
-- UMOV_asimdins_X_x   umov_advsimd.xml

type Logical_127 = '[]
type Binary_127  = '[]

decode_127 :: Fn Logical_127 a -> FnW Binary_127 (Decode a)
decode_127 f = return f

encode_127 :: FnW Binary_127 a -> Fn Logical_127 (Encode a)
encode_127 f = return f

parse_127 :: Fn Logical_127 a -> Parser a
parse_127 f = do
    return $ f

show_127 :: Fn Logical_127 ShowS
show_127 = id


-- '  <Xd>, <Xn>, <Xm>, #<lsb>'
-- EXTR_64_extract     extr.xml

type Logical_128 = '[]
type Binary_128  = '[]

decode_128 :: Fn Logical_128 a -> FnW Binary_128 (Decode a)
decode_128 f = return f

encode_128 :: FnW Binary_128 a -> Fn Logical_128 (Encode a)
encode_128 f = return f

parse_128 :: Fn Logical_128 a -> Parser a
parse_128 f = do
    return $ f

show_128 :: Fn Logical_128 ShowS
show_128 = id


-- '  <Xd>, <Xn>, <Xm>, <cond>'
-- CSEL_64_condsel     csel.xml
-- CSINC_64_condsel    csinc.xml
-- CSINV_64_condsel    csinv.xml
-- CSNEG_64_condsel    csneg.xml

type Logical_129 = '[]
type Binary_129  = '[]

decode_129 :: Fn Logical_129 a -> FnW Binary_129 (Decode a)
decode_129 f = return f

encode_129 :: FnW Binary_129 a -> Fn Logical_129 (Encode a)
encode_129 f = return f

parse_129 :: Fn Logical_129 a -> Parser a
parse_129 f = do
    return $ f

show_129 :: Fn Logical_129 ShowS
show_129 = id


-- '  <Xt>, [<Xn|SP>], #<simm>'
-- LDR_64_ldst_immpost ldr_imm_gen.xml
-- LDRSB_64_ldst_immpostldrsb_imm.xml
-- LDRSH_64_ldst_immpostldrsh_imm.xml
-- LDRSW_64_ldst_immpostldrsw_imm.xml
-- STR_64_ldst_immpost str_imm_gen.xml

type Logical_130 = '[]
type Binary_130  = '[]

decode_130 :: Fn Logical_130 a -> FnW Binary_130 (Decode a)
decode_130 f = return f

encode_130 :: FnW Binary_130 a -> Fn Logical_130 (Encode a)
encode_130 f = return f

parse_130 :: Fn Logical_130 a -> Parser a
parse_130 f = do
    return $ f

show_130 :: Fn Logical_130 ShowS
show_130 = id


-- '  <Bt>, [<Xn|SP>, #<simm>]!'
-- LDR_B_ldst_immpre   ldr_imm_fpsimd.xml
-- STR_B_ldst_immpre   str_imm_fpsimd.xml

type Logical_131 = '[]
type Binary_131  = '[]

decode_131 :: Fn Logical_131 a -> FnW Binary_131 (Decode a)
decode_131 f = return f

encode_131 :: FnW Binary_131 a -> Fn Logical_131 (Encode a)
encode_131 f = return f

parse_131 :: Fn Logical_131 a -> Parser a
parse_131 f = do
    return $ f

show_131 :: Fn Logical_131 ShowS
show_131 = id


-- '  <Dt>, [<Xn|SP>, #<simm>]!'
-- LDR_D_ldst_immpre   ldr_imm_fpsimd.xml
-- STR_D_ldst_immpre   str_imm_fpsimd.xml

type Logical_132 = '[]
type Binary_132  = '[]

decode_132 :: Fn Logical_132 a -> FnW Binary_132 (Decode a)
decode_132 f = return f

encode_132 :: FnW Binary_132 a -> Fn Logical_132 (Encode a)
encode_132 f = return f

parse_132 :: Fn Logical_132 a -> Parser a
parse_132 f = do
    return $ f

show_132 :: Fn Logical_132 ShowS
show_132 = id


-- '  <Ht>, [<Xn|SP>, #<simm>]!'
-- LDR_H_ldst_immpre   ldr_imm_fpsimd.xml
-- STR_H_ldst_immpre   str_imm_fpsimd.xml

type Logical_133 = '[]
type Binary_133  = '[]

decode_133 :: Fn Logical_133 a -> FnW Binary_133 (Decode a)
decode_133 f = return f

encode_133 :: FnW Binary_133 a -> Fn Logical_133 (Encode a)
encode_133 f = return f

parse_133 :: Fn Logical_133 a -> Parser a
parse_133 f = do
    return $ f

show_133 :: Fn Logical_133 ShowS
show_133 = id


-- '  <Qt>, [<Xn|SP>, #<simm>]!'
-- LDR_Q_ldst_immpre   ldr_imm_fpsimd.xml
-- STR_Q_ldst_immpre   str_imm_fpsimd.xml

type Logical_134 = '[]
type Binary_134  = '[]

decode_134 :: Fn Logical_134 a -> FnW Binary_134 (Decode a)
decode_134 f = return f

encode_134 :: FnW Binary_134 a -> Fn Logical_134 (Encode a)
encode_134 f = return f

parse_134 :: Fn Logical_134 a -> Parser a
parse_134 f = do
    return $ f

show_134 :: Fn Logical_134 ShowS
show_134 = id


-- '  <St>, [<Xn|SP>, #<simm>]!'
-- LDR_S_ldst_immpre   ldr_imm_fpsimd.xml
-- STR_S_ldst_immpre   str_imm_fpsimd.xml

type Logical_135 = '[]
type Binary_135  = '[]

decode_135 :: Fn Logical_135 a -> FnW Binary_135 (Decode a)
decode_135 f = return f

encode_135 :: FnW Binary_135 a -> Fn Logical_135 (Encode a)
encode_135 f = return f

parse_135 :: Fn Logical_135 a -> Parser a
parse_135 f = do
    return $ f

show_135 :: Fn Logical_135 ShowS
show_135 = id


-- '  <V><d>, <Vn>.<T>[<index>]'
-- DUP_asisdone_only   dup_advsimd_elt.xml

type Logical_136 = '[]
type Binary_136  = '[]

decode_136 :: Fn Logical_136 a -> FnW Binary_136 (Decode a)
decode_136 f = return f

encode_136 :: FnW Binary_136 a -> Fn Logical_136 (Encode a)
encode_136 f = return f

parse_136 :: Fn Logical_136 a -> Parser a
parse_136 f = do
    return $ f

show_136 :: Fn Logical_136 ShowS
show_136 = id


-- '  <Va><d>, <Vb><n>, <Vb><m>'
-- SQDMLAL_asisddiff_onlysqdmlal_advsimd_vec.xml
-- SQDMLSL_asisddiff_onlysqdmlsl_advsimd_vec.xml
-- SQDMULL_asisddiff_onlysqdmull_advsimd_vec.xml

type Logical_137 = '[]
type Binary_137  = '[]

decode_137 :: Fn Logical_137 a -> FnW Binary_137 (Decode a)
decode_137 f = return f

encode_137 :: FnW Binary_137 a -> Fn Logical_137 (Encode a)
encode_137 f = return f

parse_137 :: Fn Logical_137 a -> Parser a
parse_137 f = do
    return $ f

show_137 :: Fn Logical_137 ShowS
show_137 = id


-- '  <Vd>.2D, <Vn>.2D, <Vm>.2D'
-- RAX1_VVV2_cryptosha512_3rax1_advsimd.xml
-- SHA512SU1_VVV2_cryptosha512_3sha512su1_advsimd.xml

type Logical_138 = '[]
type Binary_138  = '[]

decode_138 :: Fn Logical_138 a -> FnW Binary_138 (Decode a)
decode_138 f = return f

encode_138 :: FnW Binary_138 a -> Fn Logical_138 (Encode a)
encode_138 f = return f

parse_138 :: Fn Logical_138 a -> Parser a
parse_138 f = do
    return $ f

show_138 :: Fn Logical_138 ShowS
show_138 = id


-- '  <Vd>.4S, <Vn>.4S, <Vm>.4S'
-- SHA1SU0_VVV_cryptosha3sha1su0_advsimd.xml
-- SHA256SU1_VVV_cryptosha3sha256su1_advsimd.xml
-- SM3PARTW1_VVV4_cryptosha512_3sm3partw1_advsimd.xml
-- SM3PARTW2_VVV4_cryptosha512_3sm3partw2_advsimd.xml
-- SM4EKEY_VVV4_cryptosha512_3sm4ekey_advsimd.xml

type Logical_139 = '[]
type Binary_139  = '[]

decode_139 :: Fn Logical_139 a -> FnW Binary_139 (Decode a)
decode_139 f = return f

encode_139 :: FnW Binary_139 a -> Fn Logical_139 (Encode a)
encode_139 f = return f

parse_139 :: Fn Logical_139 a -> Parser a
parse_139 f = do
    return $ f

show_139 :: Fn Logical_139 ShowS
show_139 = id


-- '  <Wt>, [<Xn|SP>, #<simm>]!'
-- LDR_32_ldst_immpre  ldr_imm_gen.xml
-- LDRB_32_ldst_immpre ldrb_imm.xml
-- LDRH_32_ldst_immpre ldrh_imm.xml
-- LDRSB_32_ldst_immpreldrsb_imm.xml
-- LDRSH_32_ldst_immpreldrsh_imm.xml
-- STR_32_ldst_immpre  str_imm_gen.xml
-- STRB_32_ldst_immpre strb_imm.xml
-- STRH_32_ldst_immpre strh_imm.xml

type Logical_140 = '[]
type Binary_140  = '[]

decode_140 :: Fn Logical_140 a -> FnW Binary_140 (Decode a)
decode_140 f = return f

encode_140 :: FnW Binary_140 a -> Fn Logical_140 (Encode a)
encode_140 f = return f

parse_140 :: Fn Logical_140 a -> Parser a
parse_140 f = do
    return $ f

show_140 :: Fn Logical_140 ShowS
show_140 = id


-- '  <Xt>, [<Xn|SP>, #<simm>]!'
-- LDR_64_ldst_immpre  ldr_imm_gen.xml
-- LDRSB_64_ldst_immpreldrsb_imm.xml
-- LDRSH_64_ldst_immpreldrsh_imm.xml
-- LDRSW_64_ldst_immpreldrsw_imm.xml
-- STR_64_ldst_immpre  str_imm_gen.xml

type Logical_141 = '[]
type Binary_141  = '[]

decode_141 :: Fn Logical_141 a -> FnW Binary_141 (Decode a)
decode_141 f = return f

encode_141 :: FnW Binary_141 a -> Fn Logical_141 (Encode a)
encode_141 f = return f

parse_141 :: Fn Logical_141 a -> Parser a
parse_141 f = do
    return $ f

show_141 :: Fn Logical_141 ShowS
show_141 = id


-- '  (<prfop>|#<imm5>), <label>'
-- PRFM_P_loadlit      prfm_lit.xml

type Logical_142 = '[]
type Binary_142  = '[]

decode_142 :: Fn Logical_142 a -> FnW Binary_142 (Decode a)
decode_142 f = return f

encode_142 :: FnW Binary_142 a -> Fn Logical_142 (Encode a)
encode_142 f = return f

parse_142 :: Fn Logical_142 a -> Parser a
parse_142 f = do
    return $ f

show_142 :: Fn Logical_142 ShowS
show_142 = id


-- '  <Bt>, [<Xn|SP>{, #<pimm>}]'
-- LDR_B_ldst_pos      ldr_imm_fpsimd.xml
-- STR_B_ldst_pos      str_imm_fpsimd.xml

type Logical_143 = '[]
type Binary_143  = '[]

decode_143 :: Fn Logical_143 a -> FnW Binary_143 (Decode a)
decode_143 f = return f

encode_143 :: FnW Binary_143 a -> Fn Logical_143 (Encode a)
encode_143 f = return f

parse_143 :: Fn Logical_143 a -> Parser a
parse_143 f = do
    return $ f

show_143 :: Fn Logical_143 ShowS
show_143 = id


-- '  <Bt>, [<Xn|SP>{, #<simm>}]'
-- LDUR_B_ldst_unscaledldur_fpsimd.xml
-- STUR_B_ldst_unscaledstur_fpsimd.xml

type Logical_144 = '[]
type Binary_144  = '[]

decode_144 :: Fn Logical_144 a -> FnW Binary_144 (Decode a)
decode_144 f = return f

encode_144 :: FnW Binary_144 a -> Fn Logical_144 (Encode a)
encode_144 f = return f

parse_144 :: Fn Logical_144 a -> Parser a
parse_144 f = do
    return $ f

show_144 :: Fn Logical_144 ShowS
show_144 = id


-- '  <Dt>, [<Xn|SP>{, #<pimm>}]'
-- LDR_D_ldst_pos      ldr_imm_fpsimd.xml
-- STR_D_ldst_pos      str_imm_fpsimd.xml

type Logical_145 = '[]
type Binary_145  = '[]

decode_145 :: Fn Logical_145 a -> FnW Binary_145 (Decode a)
decode_145 f = return f

encode_145 :: FnW Binary_145 a -> Fn Logical_145 (Encode a)
encode_145 f = return f

parse_145 :: Fn Logical_145 a -> Parser a
parse_145 f = do
    return $ f

show_145 :: Fn Logical_145 ShowS
show_145 = id


-- '  <Dt>, [<Xn|SP>{, #<simm>}]'
-- LDUR_D_ldst_unscaledldur_fpsimd.xml
-- STUR_D_ldst_unscaledstur_fpsimd.xml

type Logical_146 = '[]
type Binary_146  = '[]

decode_146 :: Fn Logical_146 a -> FnW Binary_146 (Decode a)
decode_146 f = return f

encode_146 :: FnW Binary_146 a -> Fn Logical_146 (Encode a)
encode_146 f = return f

parse_146 :: Fn Logical_146 a -> Parser a
parse_146 f = do
    return $ f

show_146 :: Fn Logical_146 ShowS
show_146 = id


-- '  <Ht>, [<Xn|SP>{, #<pimm>}]'
-- LDR_H_ldst_pos      ldr_imm_fpsimd.xml
-- STR_H_ldst_pos      str_imm_fpsimd.xml

type Logical_147 = '[]
type Binary_147  = '[]

decode_147 :: Fn Logical_147 a -> FnW Binary_147 (Decode a)
decode_147 f = return f

encode_147 :: FnW Binary_147 a -> Fn Logical_147 (Encode a)
encode_147 f = return f

parse_147 :: Fn Logical_147 a -> Parser a
parse_147 f = do
    return $ f

show_147 :: Fn Logical_147 ShowS
show_147 = id


-- '  <Ht>, [<Xn|SP>{, #<simm>}]'
-- LDUR_H_ldst_unscaledldur_fpsimd.xml
-- STUR_H_ldst_unscaledstur_fpsimd.xml

type Logical_148 = '[]
type Binary_148  = '[]

decode_148 :: Fn Logical_148 a -> FnW Binary_148 (Decode a)
decode_148 f = return f

encode_148 :: FnW Binary_148 a -> Fn Logical_148 (Encode a)
encode_148 f = return f

parse_148 :: Fn Logical_148 a -> Parser a
parse_148 f = do
    return $ f

show_148 :: Fn Logical_148 ShowS
show_148 = id


-- '  <Qt>, [<Xn|SP>{, #<pimm>}]'
-- LDR_Q_ldst_pos      ldr_imm_fpsimd.xml
-- STR_Q_ldst_pos      str_imm_fpsimd.xml

type Logical_149 = '[]
type Binary_149  = '[]

decode_149 :: Fn Logical_149 a -> FnW Binary_149 (Decode a)
decode_149 f = return f

encode_149 :: FnW Binary_149 a -> Fn Logical_149 (Encode a)
encode_149 f = return f

parse_149 :: Fn Logical_149 a -> Parser a
parse_149 f = do
    return $ f

show_149 :: Fn Logical_149 ShowS
show_149 = id


-- '  <Qt>, [<Xn|SP>{, #<simm>}]'
-- LDUR_Q_ldst_unscaledldur_fpsimd.xml
-- STUR_Q_ldst_unscaledstur_fpsimd.xml

type Logical_150 = '[]
type Binary_150  = '[]

decode_150 :: Fn Logical_150 a -> FnW Binary_150 (Decode a)
decode_150 f = return f

encode_150 :: FnW Binary_150 a -> Fn Logical_150 (Encode a)
encode_150 f = return f

parse_150 :: Fn Logical_150 a -> Parser a
parse_150 f = do
    return $ f

show_150 :: Fn Logical_150 ShowS
show_150 = id


-- '  <St>, [<Xn|SP>{, #<pimm>}]'
-- LDR_S_ldst_pos      ldr_imm_fpsimd.xml
-- STR_S_ldst_pos      str_imm_fpsimd.xml

type Logical_151 = '[]
type Binary_151  = '[]

decode_151 :: Fn Logical_151 a -> FnW Binary_151 (Decode a)
decode_151 f = return f

encode_151 :: FnW Binary_151 a -> Fn Logical_151 (Encode a)
encode_151 f = return f

parse_151 :: Fn Logical_151 a -> Parser a
parse_151 f = do
    return $ f

show_151 :: Fn Logical_151 ShowS
show_151 = id


-- '  <St>, [<Xn|SP>{, #<simm>}]'
-- LDUR_S_ldst_unscaledldur_fpsimd.xml
-- STUR_S_ldst_unscaledstur_fpsimd.xml

type Logical_152 = '[]
type Binary_152  = '[]

decode_152 :: Fn Logical_152 a -> FnW Binary_152 (Decode a)
decode_152 f = return f

encode_152 :: FnW Binary_152 a -> Fn Logical_152 (Encode a)
encode_152 f = return f

parse_152 :: Fn Logical_152 a -> Parser a
parse_152 f = do
    return $ f

show_152 :: Fn Logical_152 ShowS
show_152 = id


-- '  <Vb><d>, <Va><n>, #<shift>'
-- SQRSHRN_asisdshf_N  sqrshrn_advsimd.xml
-- SQRSHRUN_asisdshf_N sqrshrun_advsimd.xml
-- SQSHRN_asisdshf_N   sqshrn_advsimd.xml
-- SQSHRUN_asisdshf_N  sqshrun_advsimd.xml
-- UQRSHRN_asisdshf_N  uqrshrn_advsimd.xml
-- UQSHRN_asisdshf_N   uqshrn_advsimd.xml

type Logical_153 = '[]
type Binary_153  = '[]

decode_153 :: Fn Logical_153 a -> FnW Binary_153 (Decode a)
decode_153 f = return f

encode_153 :: FnW Binary_153 a -> Fn Logical_153 (Encode a)
encode_153 f = return f

parse_153 :: Fn Logical_153 a -> Parser a
parse_153 f = do
    return $ f

show_153 :: Fn Logical_153 ShowS
show_153 = id


-- '  <Vd>.<Ts>[<index>], <R><n>'
-- INS_asimdins_IR_r   ins_advsimd_gen.xml

type Logical_154 = '[]
type Binary_154  = '[]

decode_154 :: Fn Logical_154 a -> FnW Binary_154 (Decode a)
decode_154 f = return f

encode_154 :: FnW Binary_154 a -> Fn Logical_154 (Encode a)
encode_154 f = return f

parse_154 :: Fn Logical_154 a -> Parser a
parse_154 f = do
    return $ f

show_154 :: Fn Logical_154 ShowS
show_154 = id


-- '  <Ws>, <Wt>, [<Xn|SP>{,#0}]'
-- CAS_C32_ldstexcl    cas.xml
-- CASA_C32_ldstexcl   cas.xml
-- CASAL_C32_ldstexcl  cas.xml
-- CASL_C32_ldstexcl   cas.xml
-- CASAB_C32_ldstexcl  casb.xml
-- CASALB_C32_ldstexcl casb.xml
-- CASB_C32_ldstexcl   casb.xml
-- CASLB_C32_ldstexcl  casb.xml
-- CASAH_C32_ldstexcl  cash.xml
-- CASALH_C32_ldstexcl cash.xml
-- CASH_C32_ldstexcl   cash.xml
-- CASLH_C32_ldstexcl  cash.xml
-- STLXR_SR32_ldstexcl stlxr.xml
-- STLXRB_SR32_ldstexclstlxrb.xml
-- STLXRH_SR32_ldstexclstlxrh.xml
-- STXR_SR32_ldstexcl  stxr.xml
-- STXRB_SR32_ldstexcl stxrb.xml
-- STXRH_SR32_ldstexcl stxrh.xml

type Logical_155 = '[]
type Binary_155  = '[]

decode_155 :: Fn Logical_155 a -> FnW Binary_155 (Decode a)
decode_155 f = return f

encode_155 :: FnW Binary_155 a -> Fn Logical_155 (Encode a)
encode_155 f = return f

parse_155 :: Fn Logical_155 a -> Parser a
parse_155 f = do
    return $ f

show_155 :: Fn Logical_155 ShowS
show_155 = id


-- '  <Ws>, <Xt>, [<Xn|SP>{,#0}]'
-- STLXR_SR64_ldstexcl stlxr.xml
-- STXR_SR64_ldstexcl  stxr.xml

type Logical_156 = '[]
type Binary_156  = '[]

decode_156 :: Fn Logical_156 a -> FnW Binary_156 (Decode a)
decode_156 f = return f

encode_156 :: FnW Binary_156 a -> Fn Logical_156 (Encode a)
encode_156 f = return f

parse_156 :: Fn Logical_156 a -> Parser a
parse_156 f = do
    return $ f

show_156 :: Fn Logical_156 ShowS
show_156 = id


-- '  <Wt>, [<Xn|SP>{, #<pimm>}]'
-- LDR_32_ldst_pos     ldr_imm_gen.xml
-- LDRB_32_ldst_pos    ldrb_imm.xml
-- LDRH_32_ldst_pos    ldrh_imm.xml
-- LDRSB_32_ldst_pos   ldrsb_imm.xml
-- LDRSH_32_ldst_pos   ldrsh_imm.xml
-- STR_32_ldst_pos     str_imm_gen.xml
-- STRB_32_ldst_pos    strb_imm.xml
-- STRH_32_ldst_pos    strh_imm.xml

type Logical_157 = '[]
type Binary_157  = '[]

decode_157 :: Fn Logical_157 a -> FnW Binary_157 (Decode a)
decode_157 f = return f

encode_157 :: FnW Binary_157 a -> Fn Logical_157 (Encode a)
encode_157 f = return f

parse_157 :: Fn Logical_157 a -> Parser a
parse_157 f = do
    return $ f

show_157 :: Fn Logical_157 ShowS
show_157 = id


-- '  <Wt>, [<Xn|SP>{, #<simm>}]'
-- LDTR_32_ldst_unpriv ldtr.xml
-- LDTRB_32_ldst_unprivldtrb.xml
-- LDTRH_32_ldst_unprivldtrh.xml
-- LDTRSB_32_ldst_unprivldtrsb.xml
-- LDTRSH_32_ldst_unprivldtrsh.xml
-- LDUR_32_ldst_unscaledldur_gen.xml
-- LDURB_32_ldst_unscaledldurb.xml
-- LDURH_32_ldst_unscaledldurh.xml
-- LDURSB_32_ldst_unscaledldursb.xml
-- LDURSH_32_ldst_unscaledldursh.xml
-- STTR_32_ldst_unpriv sttr.xml
-- STTRB_32_ldst_unprivsttrb.xml
-- STTRH_32_ldst_unprivsttrh.xml
-- STUR_32_ldst_unscaledstur_gen.xml
-- STURB_32_ldst_unscaledsturb.xml
-- STURH_32_ldst_unscaledsturh.xml

type Logical_158 = '[]
type Binary_158  = '[]

decode_158 :: Fn Logical_158 a -> FnW Binary_158 (Decode a)
decode_158 f = return f

encode_158 :: FnW Binary_158 a -> Fn Logical_158 (Encode a)
encode_158 f = return f

parse_158 :: Fn Logical_158 a -> Parser a
parse_158 f = do
    return $ f

show_158 :: Fn Logical_158 ShowS
show_158 = id


-- '  <Xs>, <Xt>, [<Xn|SP>{,#0}]'
-- CAS_C64_ldstexcl    cas.xml
-- CASA_C64_ldstexcl   cas.xml
-- CASAL_C64_ldstexcl  cas.xml
-- CASL_C64_ldstexcl   cas.xml

type Logical_159 = '[]
type Binary_159  = '[]

decode_159 :: Fn Logical_159 a -> FnW Binary_159 (Decode a)
decode_159 f = return f

encode_159 :: FnW Binary_159 a -> Fn Logical_159 (Encode a)
encode_159 f = return f

parse_159 :: Fn Logical_159 a -> Parser a
parse_159 f = do
    return $ f

show_159 :: Fn Logical_159 ShowS
show_159 = id


-- '  <Xt>, [<Xn|SP>{, #<pimm>}]'
-- LDR_64_ldst_pos     ldr_imm_gen.xml
-- LDRSB_64_ldst_pos   ldrsb_imm.xml
-- LDRSH_64_ldst_pos   ldrsh_imm.xml
-- LDRSW_64_ldst_pos   ldrsw_imm.xml
-- STR_64_ldst_pos     str_imm_gen.xml

type Logical_160 = '[]
type Binary_160  = '[]

decode_160 :: Fn Logical_160 a -> FnW Binary_160 (Decode a)
decode_160 f = return f

encode_160 :: FnW Binary_160 a -> Fn Logical_160 (Encode a)
encode_160 f = return f

parse_160 :: Fn Logical_160 a -> Parser a
parse_160 f = do
    return $ f

show_160 :: Fn Logical_160 ShowS
show_160 = id


-- '  <Xt>, [<Xn|SP>{, #<simm>}]'
-- LDRAA_64_ldst_pac   ldra.xml
-- LDRAB_64_ldst_pac   ldra.xml
-- LDTR_64_ldst_unpriv ldtr.xml
-- LDTRSB_64_ldst_unprivldtrsb.xml
-- LDTRSH_64_ldst_unprivldtrsh.xml
-- LDTRSW_64_ldst_unprivldtrsw.xml
-- LDUR_64_ldst_unscaledldur_gen.xml
-- LDURSB_64_ldst_unscaledldursb.xml
-- LDURSH_64_ldst_unscaledldursh.xml
-- LDURSW_64_ldst_unscaledldursw.xml
-- STTR_64_ldst_unpriv sttr.xml
-- STUR_64_ldst_unscaledstur_gen.xml

type Logical_161 = '[]
type Binary_161  = '[]

decode_161 :: Fn Logical_161 a -> FnW Binary_161 (Decode a)
decode_161 f = return f

encode_161 :: FnW Binary_161 a -> Fn Logical_161 (Encode a)
encode_161 f = return f

parse_161 :: Fn Logical_161 a -> Parser a
parse_161 f = do
    return $ f

show_161 :: Fn Logical_161 ShowS
show_161 = id


-- '  <Dn>, <Dm>, #<nzcv>, <cond>'
-- FCCMP_D_floatccmp   fccmp_float.xml
-- FCCMPE_D_floatccmp  fccmpe_float.xml

type Logical_162 = '[]
type Binary_162  = '[]

decode_162 :: Fn Logical_162 a -> FnW Binary_162 (Decode a)
decode_162 f = return f

encode_162 :: FnW Binary_162 a -> Fn Logical_162 (Encode a)
encode_162 f = return f

parse_162 :: Fn Logical_162 a -> Parser a
parse_162 f = do
    return $ f

show_162 :: Fn Logical_162 ShowS
show_162 = id


-- '  <Hd>, <Hn>, <Vm>.H[<index>]'
-- FMLA_asisdelem_RH_H fmla_advsimd_elt.xml
-- FMLS_asisdelem_RH_H fmls_advsimd_elt.xml
-- FMUL_asisdelem_RH_H fmul_advsimd_elt.xml
-- FMULX_asisdelem_RH_Hfmulx_advsimd_elt.xml

type Logical_163 = '[]
type Binary_163  = '[]

decode_163 :: Fn Logical_163 a -> FnW Binary_163 (Decode a)
decode_163 f = return f

encode_163 :: FnW Binary_163 a -> Fn Logical_163 (Encode a)
encode_163 f = return f

parse_163 :: Fn Logical_163 a -> Parser a
parse_163 f = do
    return $ f

show_163 :: Fn Logical_163 ShowS
show_163 = id


-- '  <Hn>, <Hm>, #<nzcv>, <cond>'
-- FCCMP_H_floatccmp   fccmp_float.xml
-- FCCMPE_H_floatccmp  fccmpe_float.xml

type Logical_164 = '[]
type Binary_164  = '[]

decode_164 :: Fn Logical_164 a -> FnW Binary_164 (Decode a)
decode_164 f = return f

encode_164 :: FnW Binary_164 a -> Fn Logical_164 (Encode a)
encode_164 f = return f

parse_164 :: Fn Logical_164 a -> Parser a
parse_164 f = do
    return $ f

show_164 :: Fn Logical_164 ShowS
show_164 = id


-- '  <Sn>, <Sm>, #<nzcv>, <cond>'
-- FCCMP_S_floatccmp   fccmp_float.xml
-- FCCMPE_S_floatccmp  fccmpe_float.xml

type Logical_165 = '[]
type Binary_165  = '[]

decode_165 :: Fn Logical_165 a -> FnW Binary_165 (Decode a)
decode_165 f = return f

encode_165 :: FnW Binary_165 a -> Fn Logical_165 (Encode a)
encode_165 f = return f

parse_165 :: Fn Logical_165 a -> Parser a
parse_165 f = do
    return $ f

show_165 :: Fn Logical_165 ShowS
show_165 = id


-- '  <Vd>.<T>, #<imm8>{, LSL #0}'
-- MOVI_asimdimm_N_b   movi_advsimd.xml

type Logical_166 = '[]
type Binary_166  = '[]

decode_166 :: Fn Logical_166 a -> FnW Binary_166 (Decode a)
decode_166 f = return f

encode_166 :: FnW Binary_166 a -> Fn Logical_166 (Encode a)
encode_166 f = return f

parse_166 :: Fn Logical_166 a -> Parser a
parse_166 f = do
    return $ f

show_166 :: Fn Logical_166 ShowS
show_166 = id


-- '  <Wn>, <Wm>, #<nzcv>, <cond>'
-- CCMN_32_condcmp_reg ccmn_reg.xml
-- CCMP_32_condcmp_reg ccmp_reg.xml

type Logical_167 = '[]
type Binary_167  = '[]

decode_167 :: Fn Logical_167 a -> FnW Binary_167 (Decode a)
decode_167 f = return f

encode_167 :: FnW Binary_167 a -> Fn Logical_167 (Encode a)
encode_167 f = return f

parse_167 :: Fn Logical_167 a -> Parser a
parse_167 f = do
    return $ f

show_167 :: Fn Logical_167 ShowS
show_167 = id


-- '  <Xn>, <Xm>, #<nzcv>, <cond>'
-- CCMN_64_condcmp_reg ccmn_reg.xml
-- CCMP_64_condcmp_reg ccmp_reg.xml

type Logical_168 = '[]
type Binary_168  = '[]

decode_168 :: Fn Logical_168 a -> FnW Binary_168 (Decode a)
decode_168 f = return f

encode_168 :: FnW Binary_168 a -> Fn Logical_168 (Encode a)
encode_168 f = return f

parse_168 :: Fn Logical_168 a -> Parser a
parse_168 f = do
    return $ f

show_168 :: Fn Logical_168 ShowS
show_168 = id


-- '  <Xt>, [<Xn|SP>{, #<simm>}]!'
-- LDRAA_64W_ldst_pac  ldra.xml
-- LDRAB_64W_ldst_pac  ldra.xml

type Logical_169 = '[]
type Binary_169  = '[]

decode_169 :: Fn Logical_169 a -> FnW Binary_169 (Decode a)
decode_169 f = return f

encode_169 :: FnW Binary_169 a -> Fn Logical_169 (Encode a)
encode_169 f = return f

parse_169 :: Fn Logical_169 a -> Parser a
parse_169 f = do
    return $ f

show_169 :: Fn Logical_169 ShowS
show_169 = id


-- '  <Vd>.<T>, <Vn>.<T>, #<fbits>'
-- FCVTZS_asimdshf_C   fcvtzs_advsimd_fix.xml
-- FCVTZU_asimdshf_C   fcvtzu_advsimd_fix.xml
-- SCVTF_asimdshf_C    scvtf_advsimd_fix.xml
-- UCVTF_asimdshf_C    ucvtf_advsimd_fix.xml

type Logical_170 = '[]
type Binary_170  = '[]

decode_170 :: Fn Logical_170 a -> FnW Binary_170 (Decode a)
decode_170 f = return f

encode_170 :: FnW Binary_170 a -> Fn Logical_170 (Encode a)
encode_170 f = return f

parse_170 :: Fn Logical_170 a -> Parser a
parse_170 f = do
    return $ f

show_170 :: Fn Logical_170 ShowS
show_170 = id


-- '  <Vd>.<T>, <Vn>.<T>, #<shift>'
-- SHL_asimdshf_R      shl_advsimd.xml
-- SLI_asimdshf_R      sli_advsimd.xml
-- SQSHL_asimdshf_R    sqshl_advsimd_imm.xml
-- SQSHLU_asimdshf_R   sqshlu_advsimd.xml
-- SRI_asimdshf_R      sri_advsimd.xml
-- SRSHR_asimdshf_R    srshr_advsimd.xml
-- SRSRA_asimdshf_R    srsra_advsimd.xml
-- SSHR_asimdshf_R     sshr_advsimd.xml
-- SSRA_asimdshf_R     ssra_advsimd.xml
-- UQSHL_asimdshf_R    uqshl_advsimd_imm.xml
-- URSHR_asimdshf_R    urshr_advsimd.xml
-- URSRA_asimdshf_R    ursra_advsimd.xml
-- USHR_asimdshf_R     ushr_advsimd.xml
-- USRA_asimdshf_R     usra_advsimd.xml

type Logical_171 = '[]
type Binary_171  = '[]

decode_171 :: Fn Logical_171 a -> FnW Binary_171 (Decode a)
decode_171 f = return f

encode_171 :: FnW Binary_171 a -> Fn Logical_171 (Encode a)
encode_171 f = return f

parse_171 :: Fn Logical_171 a -> Parser a
parse_171 f = do
    return $ f

show_171 :: Fn Logical_171 ShowS
show_171 = id


-- '  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>'
-- ADD_asimdsame_only  add_advsimd.xml
-- ADDP_asimdsame_only addp_advsimd_vec.xml
-- AND_asimdsame_only  and_advsimd.xml
-- BIC_asimdsame_only  bic_advsimd_reg.xml
-- BIF_asimdsame_only  bif_advsimd.xml
-- BIT_asimdsame_only  bit_advsimd.xml
-- BSL_asimdsame_only  bsl_advsimd.xml
-- CMEQ_asimdsame_only cmeq_advsimd_reg.xml
-- CMGE_asimdsame_only cmge_advsimd_reg.xml
-- CMGT_asimdsame_only cmgt_advsimd_reg.xml
-- CMHI_asimdsame_only cmhi_advsimd.xml
-- CMHS_asimdsame_only cmhs_advsimd.xml
-- CMTST_asimdsame_onlycmtst_advsimd.xml
-- EOR_asimdsame_only  eor_advsimd.xml
-- FABD_asimdsamefp16_onlyfabd_advsimd.xml
-- FABD_asimdsame_only fabd_advsimd.xml
-- FACGE_asimdsamefp16_onlyfacge_advsimd.xml
-- FACGE_asimdsame_onlyfacge_advsimd.xml
-- FACGT_asimdsamefp16_onlyfacgt_advsimd.xml
-- FACGT_asimdsame_onlyfacgt_advsimd.xml
-- FADD_asimdsamefp16_onlyfadd_advsimd.xml
-- FADD_asimdsame_only fadd_advsimd.xml
-- FADDP_asimdsamefp16_onlyfaddp_advsimd_vec.xml
-- FADDP_asimdsame_onlyfaddp_advsimd_vec.xml
-- FCMEQ_asimdsamefp16_onlyfcmeq_advsimd_reg.xml
-- FCMEQ_asimdsame_onlyfcmeq_advsimd_reg.xml
-- FCMGE_asimdsamefp16_onlyfcmge_advsimd_reg.xml
-- FCMGE_asimdsame_onlyfcmge_advsimd_reg.xml
-- FCMGT_asimdsamefp16_onlyfcmgt_advsimd_reg.xml
-- FCMGT_asimdsame_onlyfcmgt_advsimd_reg.xml
-- FDIV_asimdsamefp16_onlyfdiv_advsimd.xml
-- FDIV_asimdsame_only fdiv_advsimd.xml
-- FMAX_asimdsamefp16_onlyfmax_advsimd.xml
-- FMAX_asimdsame_only fmax_advsimd.xml
-- FMAXNM_asimdsamefp16_onlyfmaxnm_advsimd.xml
-- FMAXNM_asimdsame_onlyfmaxnm_advsimd.xml
-- FMAXNMP_asimdsamefp16_onlyfmaxnmp_advsimd_vec.xml
-- FMAXNMP_asimdsame_onlyfmaxnmp_advsimd_vec.xml
-- FMAXP_asimdsamefp16_onlyfmaxp_advsimd_vec.xml
-- FMAXP_asimdsame_onlyfmaxp_advsimd_vec.xml
-- FMIN_asimdsamefp16_onlyfmin_advsimd.xml
-- FMIN_asimdsame_only fmin_advsimd.xml
-- FMINNM_asimdsamefp16_onlyfminnm_advsimd.xml
-- FMINNM_asimdsame_onlyfminnm_advsimd.xml
-- FMINNMP_asimdsamefp16_onlyfminnmp_advsimd_vec.xml
-- FMINNMP_asimdsame_onlyfminnmp_advsimd_vec.xml
-- FMINP_asimdsamefp16_onlyfminp_advsimd_vec.xml
-- FMINP_asimdsame_onlyfminp_advsimd_vec.xml
-- FMLA_asimdsamefp16_onlyfmla_advsimd_vec.xml
-- FMLA_asimdsame_only fmla_advsimd_vec.xml
-- FMLS_asimdsamefp16_onlyfmls_advsimd_vec.xml
-- FMLS_asimdsame_only fmls_advsimd_vec.xml
-- FMUL_asimdsamefp16_onlyfmul_advsimd_vec.xml
-- FMUL_asimdsame_only fmul_advsimd_vec.xml
-- FMULX_asimdsamefp16_onlyfmulx_advsimd_vec.xml
-- FMULX_asimdsame_onlyfmulx_advsimd_vec.xml
-- FRECPS_asimdsamefp16_onlyfrecps_advsimd.xml
-- FRECPS_asimdsame_onlyfrecps_advsimd.xml
-- FRSQRTS_asimdsamefp16_onlyfrsqrts_advsimd.xml
-- FRSQRTS_asimdsame_onlyfrsqrts_advsimd.xml
-- FSUB_asimdsamefp16_onlyfsub_advsimd.xml
-- FSUB_asimdsame_only fsub_advsimd.xml
-- MLA_asimdsame_only  mla_advsimd_vec.xml
-- MLS_asimdsame_only  mls_advsimd_vec.xml
-- MUL_asimdsame_only  mul_advsimd_vec.xml
-- ORN_asimdsame_only  orn_advsimd.xml
-- ORR_asimdsame_only  orr_advsimd_reg.xml
-- PMUL_asimdsame_only pmul_advsimd.xml
-- SABA_asimdsame_only saba_advsimd.xml
-- SABD_asimdsame_only sabd_advsimd.xml
-- SHADD_asimdsame_onlyshadd_advsimd.xml
-- SHSUB_asimdsame_onlyshsub_advsimd.xml
-- SMAX_asimdsame_only smax_advsimd.xml
-- SMAXP_asimdsame_onlysmaxp_advsimd.xml
-- SMIN_asimdsame_only smin_advsimd.xml
-- SMINP_asimdsame_onlysminp_advsimd.xml
-- SQADD_asimdsame_onlysqadd_advsimd.xml
-- SQDMULH_asimdsame_onlysqdmulh_advsimd_vec.xml
-- SQRDMLAH_asimdsame2_onlysqrdmlah_advsimd_vec.xml
-- SQRDMLSH_asimdsame2_onlysqrdmlsh_advsimd_vec.xml
-- SQRDMULH_asimdsame_onlysqrdmulh_advsimd_vec.xml
-- SQRSHL_asimdsame_onlysqrshl_advsimd.xml
-- SQSHL_asimdsame_onlysqshl_advsimd_reg.xml
-- SQSUB_asimdsame_onlysqsub_advsimd.xml
-- SRHADD_asimdsame_onlysrhadd_advsimd.xml
-- SRSHL_asimdsame_onlysrshl_advsimd.xml
-- SSHL_asimdsame_only sshl_advsimd.xml
-- SUB_asimdsame_only  sub_advsimd.xml
-- TRN1_asimdperm_only trn1_advsimd.xml
-- TRN2_asimdperm_only trn2_advsimd.xml
-- UABA_asimdsame_only uaba_advsimd.xml
-- UABD_asimdsame_only uabd_advsimd.xml
-- UHADD_asimdsame_onlyuhadd_advsimd.xml
-- UHSUB_asimdsame_onlyuhsub_advsimd.xml
-- UMAX_asimdsame_only umax_advsimd.xml
-- UMAXP_asimdsame_onlyumaxp_advsimd.xml
-- UMIN_asimdsame_only umin_advsimd.xml
-- UMINP_asimdsame_onlyuminp_advsimd.xml
-- UQADD_asimdsame_onlyuqadd_advsimd.xml
-- UQRSHL_asimdsame_onlyuqrshl_advsimd.xml
-- UQSHL_asimdsame_onlyuqshl_advsimd_reg.xml
-- UQSUB_asimdsame_onlyuqsub_advsimd.xml
-- URHADD_asimdsame_onlyurhadd_advsimd.xml
-- URSHL_asimdsame_onlyurshl_advsimd.xml
-- USHL_asimdsame_only ushl_advsimd.xml
-- UZP1_asimdperm_only uzp1_advsimd.xml
-- UZP2_asimdperm_only uzp2_advsimd.xml
-- ZIP1_asimdperm_only zip1_advsimd.xml
-- ZIP2_asimdperm_only zip2_advsimd.xml

type Logical_172 = '[]
type Binary_172  = '[]

decode_172 :: Fn Logical_172 a -> FnW Binary_172 (Decode a)
decode_172 f = return f

encode_172 :: FnW Binary_172 a -> Fn Logical_172 (Encode a)
encode_172 f = return f

parse_172 :: Fn Logical_172 a -> Parser a
parse_172 f = do
    return $ f

show_172 :: Fn Logical_172 ShowS
show_172 = id


-- '  <Vd>.<T>, <Vn>.<Ts>[<index>]'
-- DUP_asimdins_DV_v   dup_advsimd_elt.xml

type Logical_173 = '[]
type Binary_173  = '[]

decode_173 :: Fn Logical_173 a -> FnW Binary_173 (Decode a)
decode_173 f = return f

encode_173 :: FnW Binary_173 a -> Fn Logical_173 (Encode a)
encode_173 f = return f

parse_173 :: Fn Logical_173 a -> Parser a
parse_173 f = do
    return $ f

show_173 :: Fn Logical_173 ShowS
show_173 = id


-- '  <Wd>, #<imm>{, LSL #<shift>}'
-- MOVK_32_movewide    movk.xml
-- MOVN_32_movewide    movn.xml
-- MOVZ_32_movewide    movz.xml

type Logical_174 = '[]
type Binary_174  = '[]

decode_174 :: Fn Logical_174 a -> FnW Binary_174 (Decode a)
decode_174 f = return f

encode_174 :: FnW Binary_174 a -> Fn Logical_174 (Encode a)
encode_174 f = return f

parse_174 :: Fn Logical_174 a -> Parser a
parse_174 f = do
    return $ f

show_174 :: Fn Logical_174 ShowS
show_174 = id


-- '  <Wd>, <Wn>, #<immr>, #<imms>'
-- BFM_32M_bitfield    bfm.xml
-- SBFM_32M_bitfield   sbfm.xml
-- UBFM_32M_bitfield   ubfm.xml

type Logical_175 = '[]
type Binary_175  = '[]

decode_175 :: Fn Logical_175 a -> FnW Binary_175 (Decode a)
decode_175 f = return f

encode_175 :: FnW Binary_175 a -> Fn Logical_175 (Encode a)
encode_175 f = return f

parse_175 :: Fn Logical_175 a -> Parser a
parse_175 f = do
    return $ f

show_175 :: Fn Logical_175 ShowS
show_175 = id


-- '  <Wt1>, <Wt2>, [<Xn|SP>{,#0}]'
-- LDAXP_LP32_ldstexcl ldaxp.xml
-- LDXP_LP32_ldstexcl  ldxp.xml

type Logical_176 = '[]
type Binary_176  = '[]

decode_176 :: Fn Logical_176 a -> FnW Binary_176 (Decode a)
decode_176 f = return f

encode_176 :: FnW Binary_176 a -> Fn Logical_176 (Encode a)
encode_176 f = return f

parse_176 :: Fn Logical_176 a -> Parser a
parse_176 f = do
    return $ f

show_176 :: Fn Logical_176 ShowS
show_176 = id


-- '  <Xd>, #<imm>{, LSL #<shift>}'
-- MOVK_64_movewide    movk.xml
-- MOVN_64_movewide    movn.xml
-- MOVZ_64_movewide    movz.xml

type Logical_177 = '[]
type Binary_177  = '[]

decode_177 :: Fn Logical_177 a -> FnW Binary_177 (Decode a)
decode_177 f = return f

encode_177 :: FnW Binary_177 a -> Fn Logical_177 (Encode a)
encode_177 f = return f

parse_177 :: Fn Logical_177 a -> Parser a
parse_177 f = do
    return $ f

show_177 :: Fn Logical_177 ShowS
show_177 = id


-- '  <Xd>, <Xn>, #<immr>, #<imms>'
-- BFM_64M_bitfield    bfm.xml
-- SBFM_64M_bitfield   sbfm.xml
-- UBFM_64M_bitfield   ubfm.xml

type Logical_178 = '[]
type Binary_178  = '[]

decode_178 :: Fn Logical_178 a -> FnW Binary_178 (Decode a)
decode_178 f = return f

encode_178 :: FnW Binary_178 a -> Fn Logical_178 (Encode a)
encode_178 f = return f

parse_178 :: Fn Logical_178 a -> Parser a
parse_178 f = do
    return $ f

show_178 :: Fn Logical_178 ShowS
show_178 = id


-- '  <Xt1>, <Xt2>, [<Xn|SP>{,#0}]'
-- LDAXP_LP64_ldstexcl ldaxp.xml
-- LDXP_LP64_ldstexcl  ldxp.xml

type Logical_179 = '[]
type Binary_179  = '[]

decode_179 :: Fn Logical_179 a -> FnW Binary_179 (Decode a)
decode_179 f = return f

encode_179 :: FnW Binary_179 a -> Fn Logical_179 (Encode a)
encode_179 f = return f

parse_179 :: Fn Logical_179 a -> Parser a
parse_179 f = do
    return $ f

show_179 :: Fn Logical_179 ShowS
show_179 = id


-- '  <Wn>, #<imm>, #<nzcv>, <cond>'
-- CCMN_32_condcmp_imm ccmn_imm.xml
-- CCMP_32_condcmp_imm ccmp_imm.xml

type Logical_180 = '[]
type Binary_180  = '[]

decode_180 :: Fn Logical_180 a -> FnW Binary_180 (Decode a)
decode_180 f = return f

encode_180 :: FnW Binary_180 a -> Fn Logical_180 (Encode a)
encode_180 f = return f

parse_180 :: Fn Logical_180 a -> Parser a
parse_180 f = do
    return $ f

show_180 :: Fn Logical_180 ShowS
show_180 = id


-- '  <Xn>, #<imm>, #<nzcv>, <cond>'
-- CCMN_64_condcmp_imm ccmn_imm.xml
-- CCMP_64_condcmp_imm ccmp_imm.xml

type Logical_181 = '[]
type Binary_181  = '[]

decode_181 :: Fn Logical_181 a -> FnW Binary_181 (Decode a)
decode_181 f = return f

encode_181 :: FnW Binary_181 a -> Fn Logical_181 (Encode a)
encode_181 f = return f

parse_181 :: Fn Logical_181 a -> Parser a
parse_181 f = do
    return $ f

show_181 :: Fn Logical_181 ShowS
show_181 = id


-- '  { <Vt>.<T> }, [<Xn|SP>], <Xm>'
-- LD1_asisdlsep_R1_r1 ld1_advsimd_mult.xml
-- LD1R_asisdlsop_RX1_rld1r_advsimd.xml
-- ST1_asisdlsep_R1_r1 st1_advsimd_mult.xml

type Logical_182 = '[]
type Binary_182  = '[]

decode_182 :: Fn Logical_182 a -> FnW Binary_182 (Decode a)
decode_182 f = return f

encode_182 :: FnW Binary_182 a -> Fn Logical_182 (Encode a)
encode_182 f = return f

parse_182 :: Fn Logical_182 a -> Parser a
parse_182 f = do
    return $ f

show_182 :: Fn Logical_182 ShowS
show_182 = id


-- '  <Vd>.S, <Vn>.S, <Vm>.S[<imm2>]'
-- SM3TT2B_VVV_crypto3_imm2sm3tt2b_advsimd.xml

type Logical_183 = '[]
type Binary_183  = '[]

decode_183 :: Fn Logical_183 a -> FnW Binary_183 (Decode a)
decode_183 f = return f

encode_183 :: FnW Binary_183 a -> Fn Logical_183 (Encode a)
encode_183 f = return f

parse_183 :: Fn Logical_183 a -> Parser a
parse_183 f = do
    return $ f

show_183 :: Fn Logical_183 ShowS
show_183 = id


-- '  { <Vt>.<T> }, [<Xn|SP>], <imm>'
-- LD1_asisdlsep_I1_i1 ld1_advsimd_mult.xml
-- LD1R_asisdlsop_R1_i ld1r_advsimd.xml
-- ST1_asisdlsep_I1_i1 st1_advsimd_mult.xml

type Logical_184 = '[]
type Binary_184  = '[]

decode_184 :: Fn Logical_184 a -> FnW Binary_184 (Decode a)
decode_184 f = return f

encode_184 :: FnW Binary_184 a -> Fn Logical_184 (Encode a)
encode_184 f = return f

parse_184 :: Fn Logical_184 a -> Parser a
parse_184 f = do
    return $ f

show_184 :: Fn Logical_184 ShowS
show_184 = id


-- '  { <Vt>.B }[<index>], [<Xn|SP>]'
-- LD1_asisdlso_B1_1b  ld1_advsimd_sngl.xml
-- ST1_asisdlso_B1_1b  st1_advsimd_sngl.xml

type Logical_185 = '[]
type Binary_185  = '[]

decode_185 :: Fn Logical_185 a -> FnW Binary_185 (Decode a)
decode_185 f = return f

encode_185 :: FnW Binary_185 a -> Fn Logical_185 (Encode a)
encode_185 f = return f

parse_185 :: Fn Logical_185 a -> Parser a
parse_185 f = do
    return $ f

show_185 :: Fn Logical_185 ShowS
show_185 = id


-- '  { <Vt>.D }[<index>], [<Xn|SP>]'
-- LD1_asisdlso_D1_1d  ld1_advsimd_sngl.xml
-- ST1_asisdlso_D1_1d  st1_advsimd_sngl.xml

type Logical_186 = '[]
type Binary_186  = '[]

decode_186 :: Fn Logical_186 a -> FnW Binary_186 (Decode a)
decode_186 f = return f

encode_186 :: FnW Binary_186 a -> Fn Logical_186 (Encode a)
encode_186 f = return f

parse_186 :: Fn Logical_186 a -> Parser a
parse_186 f = do
    return $ f

show_186 :: Fn Logical_186 ShowS
show_186 = id


-- '  { <Vt>.H }[<index>], [<Xn|SP>]'
-- LD1_asisdlso_H1_1h  ld1_advsimd_sngl.xml
-- ST1_asisdlso_H1_1h  st1_advsimd_sngl.xml

type Logical_187 = '[]
type Binary_187  = '[]

decode_187 :: Fn Logical_187 a -> FnW Binary_187 (Decode a)
decode_187 f = return f

encode_187 :: FnW Binary_187 a -> Fn Logical_187 (Encode a)
encode_187 f = return f

parse_187 :: Fn Logical_187 a -> Parser a
parse_187 f = do
    return $ f

show_187 :: Fn Logical_187 ShowS
show_187 = id


-- '  { <Vt>.S }[<index>], [<Xn|SP>]'
-- LD1_asisdlso_S1_1s  ld1_advsimd_sngl.xml
-- ST1_asisdlso_S1_1s  st1_advsimd_sngl.xml

type Logical_188 = '[]
type Binary_188  = '[]

decode_188 :: Fn Logical_188 a -> FnW Binary_188 (Decode a)
decode_188 f = return f

encode_188 :: FnW Binary_188 a -> Fn Logical_188 (Encode a)
encode_188 f = return f

parse_188 :: Fn Logical_188 a -> Parser a
parse_188 f = do
    return $ f

show_188 :: Fn Logical_188 ShowS
show_188 = id


-- '  <Dt1>, <Dt2>, [<Xn|SP>], #<imm>'
-- LDP_D_ldstpair_post ldp_fpsimd.xml
-- STP_D_ldstpair_post stp_fpsimd.xml

type Logical_189 = '[]
type Binary_189  = '[]

decode_189 :: Fn Logical_189 a -> FnW Binary_189 (Decode a)
decode_189 f = return f

encode_189 :: FnW Binary_189 a -> Fn Logical_189 (Encode a)
encode_189 f = return f

parse_189 :: Fn Logical_189 a -> Parser a
parse_189 f = do
    return $ f

show_189 :: Fn Logical_189 ShowS
show_189 = id


-- '  <Qt1>, <Qt2>, [<Xn|SP>], #<imm>'
-- LDP_Q_ldstpair_post ldp_fpsimd.xml
-- STP_Q_ldstpair_post stp_fpsimd.xml

type Logical_190 = '[]
type Binary_190  = '[]

decode_190 :: Fn Logical_190 a -> FnW Binary_190 (Decode a)
decode_190 f = return f

encode_190 :: FnW Binary_190 a -> Fn Logical_190 (Encode a)
encode_190 f = return f

parse_190 :: Fn Logical_190 a -> Parser a
parse_190 f = do
    return $ f

show_190 :: Fn Logical_190 ShowS
show_190 = id


-- '  <St1>, <St2>, [<Xn|SP>], #<imm>'
-- LDP_S_ldstpair_post ldp_fpsimd.xml
-- STP_S_ldstpair_post stp_fpsimd.xml

type Logical_191 = '[]
type Binary_191  = '[]

decode_191 :: Fn Logical_191 a -> FnW Binary_191 (Decode a)
decode_191 f = return f

encode_191 :: FnW Binary_191 a -> Fn Logical_191 (Encode a)
encode_191 f = return f

parse_191 :: Fn Logical_191 a -> Parser a
parse_191 f = do
    return $ f

show_191 :: Fn Logical_191 ShowS
show_191 = id


-- '  <Vd>.<Ta>, <Vn>.<Tb>, <Vm>.<Tb>'
-- SDOT_asimdsame2_D   sdot_advsimd_vec.xml
-- UDOT_asimdsame2_D   udot_advsimd_vec.xml

type Logical_192 = '[]
type Binary_192  = '[]

decode_192 :: Fn Logical_192 a -> FnW Binary_192 (Decode a)
decode_192 f = return f

encode_192 :: FnW Binary_192 a -> Fn Logical_192 (Encode a)
encode_192 f = return f

parse_192 :: Fn Logical_192 a -> Parser a
parse_192 f = do
    return $ f

show_192 :: Fn Logical_192 ShowS
show_192 = id


-- '  <Wt1>, <Wt2>, [<Xn|SP>], #<imm>'
-- LDP_32_ldstpair_postldp_gen.xml
-- STP_32_ldstpair_poststp_gen.xml

type Logical_193 = '[]
type Binary_193  = '[]

decode_193 :: Fn Logical_193 a -> FnW Binary_193 (Decode a)
decode_193 f = return f

encode_193 :: FnW Binary_193 a -> Fn Logical_193 (Encode a)
encode_193 f = return f

parse_193 :: Fn Logical_193 a -> Parser a
parse_193 f = do
    return $ f

show_193 :: Fn Logical_193 ShowS
show_193 = id


-- '  <Xt1>, <Xt2>, [<Xn|SP>], #<imm>'
-- LDP_64_ldstpair_postldp_gen.xml
-- LDPSW_64_ldstpair_postldpsw.xml
-- STP_64_ldstpair_poststp_gen.xml

type Logical_194 = '[]
type Binary_194  = '[]

decode_194 :: Fn Logical_194 a -> FnW Binary_194 (Decode a)
decode_194 f = return f

encode_194 :: FnW Binary_194 a -> Fn Logical_194 (Encode a)
encode_194 f = return f

parse_194 :: Fn Logical_194 a -> Parser a
parse_194 f = do
    return $ f

show_194 :: Fn Logical_194 ShowS
show_194 = id


-- '  <Dt1>, <Dt2>, [<Xn|SP>, #<imm>]!'
-- LDP_D_ldstpair_pre  ldp_fpsimd.xml
-- STP_D_ldstpair_pre  stp_fpsimd.xml

type Logical_195 = '[]
type Binary_195  = '[]

decode_195 :: Fn Logical_195 a -> FnW Binary_195 (Decode a)
decode_195 f = return f

encode_195 :: FnW Binary_195 a -> Fn Logical_195 (Encode a)
encode_195 f = return f

parse_195 :: Fn Logical_195 a -> Parser a
parse_195 f = do
    return $ f

show_195 :: Fn Logical_195 ShowS
show_195 = id


-- '  <Qt1>, <Qt2>, [<Xn|SP>, #<imm>]!'
-- LDP_Q_ldstpair_pre  ldp_fpsimd.xml
-- STP_Q_ldstpair_pre  stp_fpsimd.xml

type Logical_196 = '[]
type Binary_196  = '[]

decode_196 :: Fn Logical_196 a -> FnW Binary_196 (Decode a)
decode_196 f = return f

encode_196 :: FnW Binary_196 a -> Fn Logical_196 (Encode a)
encode_196 f = return f

parse_196 :: Fn Logical_196 a -> Parser a
parse_196 f = do
    return $ f

show_196 :: Fn Logical_196 ShowS
show_196 = id


-- '  <St1>, <St2>, [<Xn|SP>, #<imm>]!'
-- LDP_S_ldstpair_pre  ldp_fpsimd.xml
-- STP_S_ldstpair_pre  stp_fpsimd.xml

type Logical_197 = '[]
type Binary_197  = '[]

decode_197 :: Fn Logical_197 a -> FnW Binary_197 (Decode a)
decode_197 f = return f

encode_197 :: FnW Binary_197 a -> Fn Logical_197 (Encode a)
encode_197 f = return f

parse_197 :: Fn Logical_197 a -> Parser a
parse_197 f = do
    return $ f

show_197 :: Fn Logical_197 ShowS
show_197 = id


-- '  <Vd>.4S, <Vn>.4S, <Vm>.S[<imm2>]'
-- SM3TT1A_VVV4_crypto3_imm2sm3tt1a_advsimd.xml
-- SM3TT1B_VVV4_crypto3_imm2sm3tt1b_advsimd.xml
-- SM3TT2A_VVV4_crypto3_imm2sm3tt2a_advsimd.xml

type Logical_198 = '[]
type Binary_198  = '[]

decode_198 :: Fn Logical_198 a -> FnW Binary_198 (Decode a)
decode_198 f = return f

encode_198 :: FnW Binary_198 a -> Fn Logical_198 (Encode a)
encode_198 f = return f

parse_198 :: Fn Logical_198 a -> Parser a
parse_198 f = do
    return $ f

show_198 :: Fn Logical_198 ShowS
show_198 = id


-- '  <Vd>.<T>, #<imm8>, MSL #<amount>'
-- MOVI_asimdimm_M_sm  movi_advsimd.xml
-- MVNI_asimdimm_M_sm  mvni_advsimd.xml

type Logical_199 = '[]
type Binary_199  = '[]

decode_199 :: Fn Logical_199 a -> FnW Binary_199 (Decode a)
decode_199 f = return f

encode_199 :: FnW Binary_199 a -> Fn Logical_199 (Encode a)
encode_199 f = return f

parse_199 :: Fn Logical_199 a -> Parser a
parse_199 f = do
    return $ f

show_199 :: Fn Logical_199 ShowS
show_199 = id


-- '  <Wt1>, <Wt2>, [<Xn|SP>, #<imm>]!'
-- LDP_32_ldstpair_pre ldp_gen.xml
-- STP_32_ldstpair_pre stp_gen.xml

type Logical_200 = '[]
type Binary_200  = '[]

decode_200 :: Fn Logical_200 a -> FnW Binary_200 (Decode a)
decode_200 f = return f

encode_200 :: FnW Binary_200 a -> Fn Logical_200 (Encode a)
encode_200 f = return f

parse_200 :: Fn Logical_200 a -> Parser a
parse_200 f = do
    return $ f

show_200 :: Fn Logical_200 ShowS
show_200 = id


-- '  <Xd>, <Xn|SP>, #<imm>{, <shift>}'
-- ADDS_64S_addsub_imm adds_addsub_imm.xml
-- SUBS_64S_addsub_imm subs_addsub_imm.xml

type Logical_201 = '[]
type Binary_201  = '[]

decode_201 :: Fn Logical_201 a -> FnW Binary_201 (Decode a)
decode_201 f = return f

encode_201 :: FnW Binary_201 a -> Fn Logical_201 (Encode a)
encode_201 f = return f

parse_201 :: Fn Logical_201 a -> Parser a
parse_201 f = do
    return $ f

show_201 :: Fn Logical_201 ShowS
show_201 = id


-- '  <Xt1>, <Xt2>, [<Xn|SP>, #<imm>]!'
-- LDP_64_ldstpair_pre ldp_gen.xml
-- LDPSW_64_ldstpair_preldpsw.xml
-- STP_64_ldstpair_pre stp_gen.xml

type Logical_202 = '[]
type Binary_202  = '[]

decode_202 :: Fn Logical_202 a -> FnW Binary_202 (Decode a)
decode_202 f = return f

encode_202 :: FnW Binary_202 a -> Fn Logical_202 (Encode a)
encode_202 f = return f

parse_202 :: Fn Logical_202 a -> Parser a
parse_202 f = do
    return $ f

show_202 :: Fn Logical_202 ShowS
show_202 = id


-- '  <Xt>, #<op1>, <Cn>, <Cm>, #<op2>'
-- SYSL_RC_system      sysl.xml

type Logical_203 = '[]
type Binary_203  = '[]

decode_203 :: Fn Logical_203 a -> FnW Binary_203 (Decode a)
decode_203 f = return f

encode_203 :: FnW Binary_203 a -> Fn Logical_203 (Encode a)
encode_203 f = return f

parse_203 :: Fn Logical_203 a -> Parser a
parse_203 f = do
    return $ f

show_203 :: Fn Logical_203 ShowS
show_203 = id


-- '  <Dt1>, <Dt2>, [<Xn|SP>{, #<imm>}]'
-- LDNP_D_ldstnapair_offsldnp_fpsimd.xml
-- LDP_D_ldstpair_off  ldp_fpsimd.xml
-- STNP_D_ldstnapair_offsstnp_fpsimd.xml
-- STP_D_ldstpair_off  stp_fpsimd.xml

type Logical_204 = '[]
type Binary_204  = '[]

decode_204 :: Fn Logical_204 a -> FnW Binary_204 (Decode a)
decode_204 f = return f

encode_204 :: FnW Binary_204 a -> Fn Logical_204 (Encode a)
encode_204 f = return f

parse_204 :: Fn Logical_204 a -> Parser a
parse_204 f = do
    return $ f

show_204 :: Fn Logical_204 ShowS
show_204 = id


-- '  <Qt1>, <Qt2>, [<Xn|SP>{, #<imm>}]'
-- LDNP_Q_ldstnapair_offsldnp_fpsimd.xml
-- LDP_Q_ldstpair_off  ldp_fpsimd.xml
-- STNP_Q_ldstnapair_offsstnp_fpsimd.xml
-- STP_Q_ldstpair_off  stp_fpsimd.xml

type Logical_205 = '[]
type Binary_205  = '[]

decode_205 :: Fn Logical_205 a -> FnW Binary_205 (Decode a)
decode_205 f = return f

encode_205 :: FnW Binary_205 a -> Fn Logical_205 (Encode a)
encode_205 f = return f

parse_205 :: Fn Logical_205 a -> Parser a
parse_205 f = do
    return $ f

show_205 :: Fn Logical_205 ShowS
show_205 = id


-- '  <St1>, <St2>, [<Xn|SP>{, #<imm>}]'
-- LDNP_S_ldstnapair_offsldnp_fpsimd.xml
-- LDP_S_ldstpair_off  ldp_fpsimd.xml
-- STNP_S_ldstnapair_offsstnp_fpsimd.xml
-- STP_S_ldstpair_off  stp_fpsimd.xml

type Logical_206 = '[]
type Binary_206  = '[]

decode_206 :: Fn Logical_206 a -> FnW Binary_206 (Decode a)
decode_206 f = return f

encode_206 :: FnW Binary_206 a -> Fn Logical_206 (Encode a)
encode_206 f = return f

parse_206 :: Fn Logical_206 a -> Parser a
parse_206 f = do
    return $ f

show_206 :: Fn Logical_206 ShowS
show_206 = id


-- '  <Wd>, <Wn|WSP>, #<imm>{, <shift>}'
-- ADDS_32S_addsub_imm adds_addsub_imm.xml
-- SUBS_32S_addsub_imm subs_addsub_imm.xml

type Logical_207 = '[]
type Binary_207  = '[]

decode_207 :: Fn Logical_207 a -> FnW Binary_207 (Decode a)
decode_207 f = return f

encode_207 :: FnW Binary_207 a -> Fn Logical_207 (Encode a)
encode_207 f = return f

parse_207 :: Fn Logical_207 a -> Parser a
parse_207 f = do
    return $ f

show_207 :: Fn Logical_207 ShowS
show_207 = id


-- '  <Wt1>, <Wt2>, [<Xn|SP>{, #<imm>}]'
-- LDNP_32_ldstnapair_offsldnp_gen.xml
-- LDP_32_ldstpair_off ldp_gen.xml
-- STNP_32_ldstnapair_offsstnp_gen.xml
-- STP_32_ldstpair_off stp_gen.xml

type Logical_208 = '[]
type Binary_208  = '[]

decode_208 :: Fn Logical_208 a -> FnW Binary_208 (Decode a)
decode_208 f = return f

encode_208 :: FnW Binary_208 a -> Fn Logical_208 (Encode a)
encode_208 f = return f

parse_208 :: Fn Logical_208 a -> Parser a
parse_208 f = do
    return $ f

show_208 :: Fn Logical_208 ShowS
show_208 = id


-- '  <Xt1>, <Xt2>, [<Xn|SP>{, #<imm>}]'
-- LDNP_64_ldstnapair_offsldnp_gen.xml
-- LDP_64_ldstpair_off ldp_gen.xml
-- LDPSW_64_ldstpair_offldpsw.xml
-- STNP_64_ldstnapair_offsstnp_gen.xml
-- STP_64_ldstpair_off stp_gen.xml

type Logical_209 = '[]
type Binary_209  = '[]

decode_209 :: Fn Logical_209 a -> FnW Binary_209 (Decode a)
decode_209 f = return f

encode_209 :: FnW Binary_209 a -> Fn Logical_209 (Encode a)
encode_209 f = return f

parse_209 :: Fn Logical_209 a -> Parser a
parse_209 f = do
    return $ f

show_209 :: Fn Logical_209 ShowS
show_209 = id


-- '{2}  <Vd>.<Ta>, <Vn>.<Tb>, #<shift>'
-- SHLL_asimdmisc_S    shll_advsimd.xml
-- SSHLL_asimdshf_L    sshll_advsimd.xml
-- USHLL_asimdshf_L    ushll_advsimd.xml

type Logical_210 = '[]
type Binary_210  = '[]

decode_210 :: Fn Logical_210 a -> FnW Binary_210 (Decode a)
decode_210 f = return f

encode_210 :: FnW Binary_210 a -> Fn Logical_210 (Encode a)
encode_210 f = return f

parse_210 :: Fn Logical_210 a -> Parser a
parse_210 f = do
    return $ f

show_210 :: Fn Logical_210 ShowS
show_210 = id


-- '{2}  <Vd>.<Tb>, <Vn>.<Ta>, #<shift>'
-- RSHRN_asimdshf_N    rshrn_advsimd.xml
-- SHRN_asimdshf_N     shrn_advsimd.xml
-- SQRSHRN_asimdshf_N  sqrshrn_advsimd.xml
-- SQRSHRUN_asimdshf_N sqrshrun_advsimd.xml
-- SQSHRN_asimdshf_N   sqshrn_advsimd.xml
-- SQSHRUN_asimdshf_N  sqshrun_advsimd.xml
-- UQRSHRN_asimdshf_N  uqrshrn_advsimd.xml
-- UQSHRN_asimdshf_N   uqshrn_advsimd.xml

type Logical_211 = '[]
type Binary_211  = '[]

decode_211 :: Fn Logical_211 a -> FnW Binary_211 (Decode a)
decode_211 f = return f

encode_211 :: FnW Binary_211 a -> Fn Logical_211 (Encode a)
encode_211 f = return f

parse_211 :: Fn Logical_211 a -> Parser a
parse_211 f = do
    return $ f

show_211 :: Fn Logical_211 ShowS
show_211 = id


-- '  #<op1>, <Cn>, <Cm>, #<op2>{, <Xt>}'
-- SYS_CR_system       sys.xml

type Logical_212 = '[]
type Binary_212  = '[]

decode_212 :: Fn Logical_212 a -> FnW Binary_212 (Decode a)
decode_212 f = return f

encode_212 :: FnW Binary_212 a -> Fn Logical_212 (Encode a)
encode_212 f = return f

parse_212 :: Fn Logical_212 a -> Parser a
parse_212 f = do
    return $ f

show_212 :: Fn Logical_212 ShowS
show_212 = id


-- '  <V><d>, <V><n>, <Vm>.<Ts>[<index>]'
-- FMLA_asisdelem_R_SD fmla_advsimd_elt.xml
-- FMLS_asisdelem_R_SD fmls_advsimd_elt.xml
-- FMUL_asisdelem_R_SD fmul_advsimd_elt.xml
-- FMULX_asisdelem_R_SDfmulx_advsimd_elt.xml
-- SQDMULH_asisdelem_R sqdmulh_advsimd_elt.xml
-- SQRDMLAH_asisdelem_Rsqrdmlah_advsimd_elt.xml
-- SQRDMLSH_asisdelem_Rsqrdmlsh_advsimd_elt.xml
-- SQRDMULH_asisdelem_Rsqrdmulh_advsimd_elt.xml

type Logical_213 = '[]
type Binary_213  = '[]

decode_213 :: Fn Logical_213 a -> FnW Binary_213 (Decode a)
decode_213 f = return f

encode_213 :: FnW Binary_213 a -> Fn Logical_213 (Encode a)
encode_213 f = return f

parse_213 :: Fn Logical_213 a -> Parser a
parse_213 f = do
    return $ f

show_213 :: Fn Logical_213 ShowS
show_213 = id


-- '  <Vd>.2D, <Vn>.2D, <Vm>.2D, #<imm6>'
-- XAR_VVV2_crypto3_imm6xar_advsimd.xml

type Logical_214 = '[]
type Binary_214  = '[]

decode_214 :: Fn Logical_214 a -> FnW Binary_214 (Decode a)
decode_214 f = return f

encode_214 :: FnW Binary_214 a -> Fn Logical_214 (Encode a)
encode_214 f = return f

parse_214 :: Fn Logical_214 a -> Parser a
parse_214 f = do
    return $ f

show_214 :: Fn Logical_214 ShowS
show_214 = id


-- '  <Vd>.4S, <Vn>.4S, <Vm>.4S, <Va>.4S'
-- SM3SS1_VVV4_crypto4 sm3ss1_advsimd.xml

type Logical_215 = '[]
type Binary_215  = '[]

decode_215 :: Fn Logical_215 a -> FnW Binary_215 (Decode a)
decode_215 f = return f

encode_215 :: FnW Binary_215 a -> Fn Logical_215 (Encode a)
encode_215 f = return f

parse_215 :: Fn Logical_215 a -> Parser a
parse_215 f = do
    return $ f

show_215 :: Fn Logical_215 ShowS
show_215 = id


-- '  <Vd>.<T>, #<imm8>{, LSL #<amount>}'
-- BIC_asimdimm_L_hl   bic_advsimd_imm.xml
-- BIC_asimdimm_L_sl   bic_advsimd_imm.xml
-- MOVI_asimdimm_L_hl  movi_advsimd.xml
-- MOVI_asimdimm_L_sl  movi_advsimd.xml
-- MVNI_asimdimm_L_hl  mvni_advsimd.xml
-- MVNI_asimdimm_L_sl  mvni_advsimd.xml
-- ORR_asimdimm_L_hl   orr_advsimd_imm.xml
-- ORR_asimdimm_L_sl   orr_advsimd_imm.xml

type Logical_216 = '[]
type Binary_216  = '[]

decode_216 :: Fn Logical_216 a -> FnW Binary_216 (Decode a)
decode_216 f = return f

encode_216 :: FnW Binary_216 a -> Fn Logical_216 (Encode a)
encode_216 f = return f

parse_216 :: Fn Logical_216 a -> Parser a
parse_216 f = do
    return $ f

show_216 :: Fn Logical_216 ShowS
show_216 = id


-- '  <Vd>.<Ta>, { <Vn>.16B }, <Vm>.<Ta>'
-- TBL_asimdtbl_L1_1   tbl_advsimd.xml
-- TBX_asimdtbl_L1_1   tbx_advsimd.xml

type Logical_217 = '[]
type Binary_217  = '[]

decode_217 :: Fn Logical_217 a -> FnW Binary_217 (Decode a)
decode_217 f = return f

encode_217 :: FnW Binary_217 a -> Fn Logical_217 (Encode a)
encode_217 f = return f

parse_217 :: Fn Logical_217 a -> Parser a
parse_217 f = do
    return $ f

show_217 :: Fn Logical_217 ShowS
show_217 = id


-- '  <Ws>, <Wt1>, <Wt2>, [<Xn|SP>{,#0}]'
-- STLXP_SP32_ldstexcl stlxp.xml
-- STXP_SP32_ldstexcl  stxp.xml

type Logical_218 = '[]
type Binary_218  = '[]

decode_218 :: Fn Logical_218 a -> FnW Binary_218 (Decode a)
decode_218 f = return f

encode_218 :: FnW Binary_218 a -> Fn Logical_218 (Encode a)
encode_218 f = return f

parse_218 :: Fn Logical_218 a -> Parser a
parse_218 f = do
    return $ f

show_218 :: Fn Logical_218 ShowS
show_218 = id


-- '  <Ws>, <Xt1>, <Xt2>, [<Xn|SP>{,#0}]'
-- STLXP_SP64_ldstexcl stlxp.xml
-- STXP_SP64_ldstexcl  stxp.xml

type Logical_219 = '[]
type Binary_219  = '[]

decode_219 :: Fn Logical_219 a -> FnW Binary_219 (Decode a)
decode_219 f = return f

encode_219 :: FnW Binary_219 a -> Fn Logical_219 (Encode a)
encode_219 f = return f

parse_219 :: Fn Logical_219 a -> Parser a
parse_219 f = do
    return $ f

show_219 :: Fn Logical_219 ShowS
show_219 = id


-- '  { <Vt>.<T>, <Vt2>.<T> }, [<Xn|SP>]'
-- LD1_asisdlse_R2_2v  ld1_advsimd_mult.xml
-- LD2_asisdlse_R2     ld2_advsimd_mult.xml
-- LD2R_asisdlso_R2    ld2r_advsimd.xml
-- ST1_asisdlse_R2_2v  st1_advsimd_mult.xml
-- ST2_asisdlse_R2     st2_advsimd_mult.xml

type Logical_220 = '[]
type Binary_220  = '[]

decode_220 :: Fn Logical_220 a -> FnW Binary_220 (Decode a)
decode_220 f = return f

encode_220 :: FnW Binary_220 a -> Fn Logical_220 (Encode a)
encode_220 f = return f

parse_220 :: Fn Logical_220 a -> Parser a
parse_220 f = do
    return $ f

show_220 :: Fn Logical_220 ShowS
show_220 = id


-- '  { <Vt>.B }[<index>], [<Xn|SP>], #1'
-- LD1_asisdlsop_B1_i1bld1_advsimd_sngl.xml
-- ST1_asisdlsop_B1_i1bst1_advsimd_sngl.xml

type Logical_221 = '[]
type Binary_221  = '[]

decode_221 :: Fn Logical_221 a -> FnW Binary_221 (Decode a)
decode_221 f = return f

encode_221 :: FnW Binary_221 a -> Fn Logical_221 (Encode a)
encode_221 f = return f

parse_221 :: Fn Logical_221 a -> Parser a
parse_221 f = do
    return $ f

show_221 :: Fn Logical_221 ShowS
show_221 = id


-- '  { <Vt>.D }[<index>], [<Xn|SP>], #8'
-- LD1_asisdlsop_D1_i1dld1_advsimd_sngl.xml
-- ST1_asisdlsop_D1_i1dst1_advsimd_sngl.xml

type Logical_222 = '[]
type Binary_222  = '[]

decode_222 :: Fn Logical_222 a -> FnW Binary_222 (Decode a)
decode_222 f = return f

encode_222 :: FnW Binary_222 a -> Fn Logical_222 (Encode a)
encode_222 f = return f

parse_222 :: Fn Logical_222 a -> Parser a
parse_222 f = do
    return $ f

show_222 :: Fn Logical_222 ShowS
show_222 = id


-- '  { <Vt>.H }[<index>], [<Xn|SP>], #2'
-- LD1_asisdlsop_H1_i1hld1_advsimd_sngl.xml
-- ST1_asisdlsop_H1_i1hst1_advsimd_sngl.xml

type Logical_223 = '[]
type Binary_223  = '[]

decode_223 :: Fn Logical_223 a -> FnW Binary_223 (Decode a)
decode_223 f = return f

encode_223 :: FnW Binary_223 a -> Fn Logical_223 (Encode a)
encode_223 f = return f

parse_223 :: Fn Logical_223 a -> Parser a
parse_223 f = do
    return $ f

show_223 :: Fn Logical_223 ShowS
show_223 = id


-- '  { <Vt>.S }[<index>], [<Xn|SP>], #4'
-- LD1_asisdlsop_S1_i1sld1_advsimd_sngl.xml
-- ST1_asisdlsop_S1_i1sst1_advsimd_sngl.xml

type Logical_224 = '[]
type Binary_224  = '[]

decode_224 :: Fn Logical_224 a -> FnW Binary_224 (Decode a)
decode_224 f = return f

encode_224 :: FnW Binary_224 a -> Fn Logical_224 (Encode a)
encode_224 f = return f

parse_224 :: Fn Logical_224 a -> Parser a
parse_224 f = do
    return $ f

show_224 :: Fn Logical_224 ShowS
show_224 = id


-- '{2}  <Vd>.<Ta>, <Vn>.<Ta>, <Vm>.<Tb>'
-- SADDW_asimddiff_W   saddw_advsimd.xml
-- SSUBW_asimddiff_W   ssubw_advsimd.xml
-- UADDW_asimddiff_W   uaddw_advsimd.xml
-- USUBW_asimddiff_W   usubw_advsimd.xml

type Logical_225 = '[]
type Binary_225  = '[]

decode_225 :: Fn Logical_225 a -> FnW Binary_225 (Decode a)
decode_225 f = return f

encode_225 :: FnW Binary_225 a -> Fn Logical_225 (Encode a)
encode_225 f = return f

parse_225 :: Fn Logical_225 a -> Parser a
parse_225 f = do
    return $ f

show_225 :: Fn Logical_225 ShowS
show_225 = id


-- '{2}  <Vd>.<Ta>, <Vn>.<Tb>, <Vm>.<Tb>'
-- PMULL_asimddiff_L   pmull_advsimd.xml
-- SABAL_asimddiff_L   sabal_advsimd.xml
-- SABDL_asimddiff_L   sabdl_advsimd.xml
-- SADDL_asimddiff_L   saddl_advsimd.xml
-- SMLAL_asimddiff_L   smlal_advsimd_vec.xml
-- SMLSL_asimddiff_L   smlsl_advsimd_vec.xml
-- SMULL_asimddiff_L   smull_advsimd_vec.xml
-- SQDMLAL_asimddiff_L sqdmlal_advsimd_vec.xml
-- SQDMLSL_asimddiff_L sqdmlsl_advsimd_vec.xml
-- SQDMULL_asimddiff_L sqdmull_advsimd_vec.xml
-- SSUBL_asimddiff_L   ssubl_advsimd.xml
-- UABAL_asimddiff_L   uabal_advsimd.xml
-- UABDL_asimddiff_L   uabdl_advsimd.xml
-- UADDL_asimddiff_L   uaddl_advsimd.xml
-- UMLAL_asimddiff_L   umlal_advsimd_vec.xml
-- UMLSL_asimddiff_L   umlsl_advsimd_vec.xml
-- UMULL_asimddiff_L   umull_advsimd_vec.xml
-- USUBL_asimddiff_L   usubl_advsimd.xml

type Logical_226 = '[]
type Binary_226  = '[]

decode_226 :: Fn Logical_226 a -> FnW Binary_226 (Decode a)
decode_226 f = return f

encode_226 :: FnW Binary_226 a -> Fn Logical_226 (Encode a)
encode_226 f = return f

parse_226 :: Fn Logical_226 a -> Parser a
parse_226 f = do
    return $ f

show_226 :: Fn Logical_226 ShowS
show_226 = id


-- '{2}  <Vd>.<Tb>, <Vn>.<Ta>, <Vm>.<Ta>'
-- ADDHN_asimddiff_N   addhn_advsimd.xml
-- RADDHN_asimddiff_N  raddhn_advsimd.xml
-- RSUBHN_asimddiff_N  rsubhn_advsimd.xml
-- SUBHN_asimddiff_N   subhn_advsimd.xml

type Logical_227 = '[]
type Binary_227  = '[]

decode_227 :: Fn Logical_227 a -> FnW Binary_227 (Decode a)
decode_227 f = return f

encode_227 :: FnW Binary_227 a -> Fn Logical_227 (Encode a)
encode_227 f = return f

parse_227 :: Fn Logical_227 a -> Parser a
parse_227 f = do
    return $ f

show_227 :: Fn Logical_227 ShowS
show_227 = id


-- '  <Vd>.<T>, <Vn>.<T>, <Vm>.H[<index>]'
-- FMLA_asimdelem_RH_H fmla_advsimd_elt.xml
-- FMLS_asimdelem_RH_H fmls_advsimd_elt.xml
-- FMUL_asimdelem_RH_H fmul_advsimd_elt.xml
-- FMULX_asimdelem_RH_Hfmulx_advsimd_elt.xml

type Logical_228 = '[]
type Binary_228  = '[]

decode_228 :: Fn Logical_228 a -> FnW Binary_228 (Decode a)
decode_228 f = return f

encode_228 :: FnW Binary_228 a -> Fn Logical_228 (Encode a)
encode_228 f = return f

parse_228 :: Fn Logical_228 a -> Parser a
parse_228 f = do
    return $ f

show_228 :: Fn Logical_228 ShowS
show_228 = id


-- '  <Xd|SP>, <Xn|SP>, #<imm>{, <shift>}'
-- ADD_64_addsub_imm   add_addsub_imm.xml
-- SUB_64_addsub_imm   sub_addsub_imm.xml

type Logical_229 = '[]
type Binary_229  = '[]

decode_229 :: Fn Logical_229 a -> FnW Binary_229 (Decode a)
decode_229 f = return f

encode_229 :: FnW Binary_229 a -> Fn Logical_229 (Encode a)
encode_229 f = return f

parse_229 :: Fn Logical_229 a -> Parser a
parse_229 f = do
    return $ f

show_229 :: Fn Logical_229 ShowS
show_229 = id


-- '  <Va><d>, <Vb><n>, <Vm>.<Ts>[<index>]'
-- SQDMLAL_asisdelem_L sqdmlal_advsimd_elt.xml
-- SQDMLSL_asisdelem_L sqdmlsl_advsimd_elt.xml
-- SQDMULL_asisdelem_L sqdmull_advsimd_elt.xml

type Logical_230 = '[]
type Binary_230  = '[]

decode_230 :: Fn Logical_230 a -> FnW Binary_230 (Decode a)
decode_230 f = return f

encode_230 :: FnW Binary_230 a -> Fn Logical_230 (Encode a)
encode_230 f = return f

parse_230 :: Fn Logical_230 a -> Parser a
parse_230 f = do
    return $ f

show_230 :: Fn Logical_230 ShowS
show_230 = id


-- '  { <Vt>.B }[<index>], [<Xn|SP>], <Xm>'
-- LD1_asisdlsop_BX1_r1bld1_advsimd_sngl.xml
-- ST1_asisdlsop_BX1_r1bst1_advsimd_sngl.xml

type Logical_231 = '[]
type Binary_231  = '[]

decode_231 :: Fn Logical_231 a -> FnW Binary_231 (Decode a)
decode_231 f = return f

encode_231 :: FnW Binary_231 a -> Fn Logical_231 (Encode a)
encode_231 f = return f

parse_231 :: Fn Logical_231 a -> Parser a
parse_231 f = do
    return $ f

show_231 :: Fn Logical_231 ShowS
show_231 = id


-- '  { <Vt>.D }[<index>], [<Xn|SP>], <Xm>'
-- LD1_asisdlsop_DX1_r1dld1_advsimd_sngl.xml
-- ST1_asisdlsop_DX1_r1dst1_advsimd_sngl.xml

type Logical_232 = '[]
type Binary_232  = '[]

decode_232 :: Fn Logical_232 a -> FnW Binary_232 (Decode a)
decode_232 f = return f

encode_232 :: FnW Binary_232 a -> Fn Logical_232 (Encode a)
encode_232 f = return f

parse_232 :: Fn Logical_232 a -> Parser a
parse_232 f = do
    return $ f

show_232 :: Fn Logical_232 ShowS
show_232 = id


-- '  { <Vt>.H }[<index>], [<Xn|SP>], <Xm>'
-- LD1_asisdlsop_HX1_r1hld1_advsimd_sngl.xml
-- ST1_asisdlsop_HX1_r1hst1_advsimd_sngl.xml

type Logical_233 = '[]
type Binary_233  = '[]

decode_233 :: Fn Logical_233 a -> FnW Binary_233 (Decode a)
decode_233 f = return f

encode_233 :: FnW Binary_233 a -> Fn Logical_233 (Encode a)
encode_233 f = return f

parse_233 :: Fn Logical_233 a -> Parser a
parse_233 f = do
    return $ f

show_233 :: Fn Logical_233 ShowS
show_233 = id


-- '  { <Vt>.S }[<index>], [<Xn|SP>], <Xm>'
-- LD1_asisdlsop_SX1_r1sld1_advsimd_sngl.xml
-- ST1_asisdlsop_SX1_r1sst1_advsimd_sngl.xml

type Logical_234 = '[]
type Binary_234  = '[]

decode_234 :: Fn Logical_234 a -> FnW Binary_234 (Decode a)
decode_234 f = return f

encode_234 :: FnW Binary_234 a -> Fn Logical_234 (Encode a)
encode_234 f = return f

parse_234 :: Fn Logical_234 a -> Parser a
parse_234 f = do
    return $ f

show_234 :: Fn Logical_234 ShowS
show_234 = id


-- '  <Bt>, [<Xn|SP>, <Xm>{, LSL <amount>}]'
-- LDR_BL_ldst_regoff  ldr_reg_fpsimd.xml
-- STR_BL_ldst_regoff  str_reg_fpsimd.xml

type Logical_235 = '[]
type Binary_235  = '[]

decode_235 :: Fn Logical_235 a -> FnW Binary_235 (Decode a)
decode_235 f = return f

encode_235 :: FnW Binary_235 a -> Fn Logical_235 (Encode a)
encode_235 f = return f

parse_235 :: Fn Logical_235 a -> Parser a
parse_235 f = do
    return $ f

show_235 :: Fn Logical_235 ShowS
show_235 = id


-- '  <Wd>, <Wn>, <Wm>{, <shift> #<amount>}'
-- ADD_32_addsub_shift add_addsub_shift.xml
-- ADDS_32_addsub_shiftadds_addsub_shift.xml
-- AND_32_log_shift    and_log_shift.xml
-- ANDS_32_log_shift   ands_log_shift.xml
-- BIC_32_log_shift    bic_log_shift.xml
-- BICS_32_log_shift   bics.xml
-- EON_32_log_shift    eon.xml
-- EOR_32_log_shift    eor_log_shift.xml
-- ORN_32_log_shift    orn_log_shift.xml
-- ORR_32_log_shift    orr_log_shift.xml
-- SUB_32_addsub_shift sub_addsub_shift.xml
-- SUBS_32_addsub_shiftsubs_addsub_shift.xml

type Logical_236 = '[]
type Binary_236  = '[]

decode_236 :: Fn Logical_236 a -> FnW Binary_236 (Decode a)
decode_236 f = return f

encode_236 :: FnW Binary_236 a -> Fn Logical_236 (Encode a)
encode_236 f = return f

parse_236 :: Fn Logical_236 a -> Parser a
parse_236 f = do
    return $ f

show_236 :: Fn Logical_236 ShowS
show_236 = id


-- '  <Wd|WSP>, <Wn|WSP>, #<imm>{, <shift>}'
-- ADD_32_addsub_imm   add_addsub_imm.xml
-- SUB_32_addsub_imm   sub_addsub_imm.xml

type Logical_237 = '[]
type Binary_237  = '[]

decode_237 :: Fn Logical_237 a -> FnW Binary_237 (Decode a)
decode_237 f = return f

encode_237 :: FnW Binary_237 a -> Fn Logical_237 (Encode a)
encode_237 f = return f

parse_237 :: Fn Logical_237 a -> Parser a
parse_237 f = do
    return $ f

show_237 :: Fn Logical_237 ShowS
show_237 = id


-- '  <Wt>, [<Xn|SP>, <Xm>{, LSL <amount>}]'
-- LDRB_32BL_ldst_regoffldrb_reg.xml
-- LDRSB_32BL_ldst_regoffldrsb_reg.xml
-- STRB_32BL_ldst_regoffstrb_reg.xml

type Logical_238 = '[]
type Binary_238  = '[]

decode_238 :: Fn Logical_238 a -> FnW Binary_238 (Decode a)
decode_238 f = return f

encode_238 :: FnW Binary_238 a -> Fn Logical_238 (Encode a)
encode_238 f = return f

parse_238 :: Fn Logical_238 a -> Parser a
parse_238 f = do
    return $ f

show_238 :: Fn Logical_238 ShowS
show_238 = id


-- '  <Xd>, <Xn>, <Xm>{, <shift> #<amount>}'
-- ADD_64_addsub_shift add_addsub_shift.xml
-- ADDS_64_addsub_shiftadds_addsub_shift.xml
-- AND_64_log_shift    and_log_shift.xml
-- ANDS_64_log_shift   ands_log_shift.xml
-- BIC_64_log_shift    bic_log_shift.xml
-- BICS_64_log_shift   bics.xml
-- EON_64_log_shift    eon.xml
-- EOR_64_log_shift    eor_log_shift.xml
-- ORN_64_log_shift    orn_log_shift.xml
-- ORR_64_log_shift    orr_log_shift.xml
-- SUB_64_addsub_shift sub_addsub_shift.xml
-- SUBS_64_addsub_shiftsubs_addsub_shift.xml

type Logical_239 = '[]
type Binary_239  = '[]

decode_239 :: Fn Logical_239 a -> FnW Binary_239 (Decode a)
decode_239 f = return f

encode_239 :: FnW Binary_239 a -> Fn Logical_239 (Encode a)
encode_239 f = return f

parse_239 :: Fn Logical_239 a -> Parser a
parse_239 f = do
    return $ f

show_239 :: Fn Logical_239 ShowS
show_239 = id


-- '  <Xt>, [<Xn|SP>, <Xm>{, LSL <amount>}]'
-- LDRSB_64BL_ldst_regoffldrsb_reg.xml

type Logical_240 = '[]
type Binary_240  = '[]

decode_240 :: Fn Logical_240 a -> FnW Binary_240 (Decode a)
decode_240 f = return f

encode_240 :: FnW Binary_240 a -> Fn Logical_240 (Encode a)
encode_240 f = return f

parse_240 :: Fn Logical_240 a -> Parser a
parse_240 f = do
    return $ f

show_240 :: Fn Logical_240 ShowS
show_240 = id


-- '  <Vd>.16B, <Vn>.16B, <Vm>.16B, <Va>.16B'
-- BCAX_VVV16_crypto4  bcax_advsimd.xml
-- EOR3_VVV16_crypto4  eor3_advsimd.xml

type Logical_241 = '[]
type Binary_241  = '[]

decode_241 :: Fn Logical_241 a -> FnW Binary_241 (Decode a)
decode_241 f = return f

encode_241 :: FnW Binary_241 a -> Fn Logical_241 (Encode a)
encode_241 f = return f

parse_241 :: Fn Logical_241 a -> Parser a
parse_241 f = do
    return $ f

show_241 :: Fn Logical_241 ShowS
show_241 = id


-- '  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>, #<index>'
-- EXT_asimdext_only   ext_advsimd.xml

type Logical_242 = '[]
type Binary_242  = '[]

decode_242 :: Fn Logical_242 a -> FnW Binary_242 (Decode a)
decode_242 f = return f

encode_242 :: FnW Binary_242 a -> Fn Logical_242 (Encode a)
encode_242 f = return f

parse_242 :: Fn Logical_242 a -> Parser a
parse_242 f = do
    return $ f

show_242 :: Fn Logical_242 ShowS
show_242 = id


-- '  <Vd>.<T>, <Vn>.<T>, <Vm>.<Ts>[<index>]'
-- FMLA_asimdelem_R_SD fmla_advsimd_elt.xml
-- FMLS_asimdelem_R_SD fmls_advsimd_elt.xml
-- FMUL_asimdelem_R_SD fmul_advsimd_elt.xml
-- FMULX_asimdelem_R_SDfmulx_advsimd_elt.xml
-- MLA_asimdelem_R     mla_advsimd_elt.xml
-- MLS_asimdelem_R     mls_advsimd_elt.xml
-- MUL_asimdelem_R     mul_advsimd_elt.xml
-- SQDMULH_asimdelem_R sqdmulh_advsimd_elt.xml
-- SQRDMLAH_asimdelem_Rsqrdmlah_advsimd_elt.xml
-- SQRDMLSH_asimdelem_Rsqrdmlsh_advsimd_elt.xml
-- SQRDMULH_asimdelem_Rsqrdmulh_advsimd_elt.xml

type Logical_243 = '[]
type Binary_243  = '[]

decode_243 :: Fn Logical_243 a -> FnW Binary_243 (Decode a)
decode_243 f = return f

encode_243 :: FnW Binary_243 a -> Fn Logical_243 (Encode a)
encode_243 f = return f

parse_243 :: Fn Logical_243 a -> Parser a
parse_243 f = do
    return $ f

show_243 :: Fn Logical_243 ShowS
show_243 = id


-- '  <Vd>.<Ta>, <Vn>.<Tb>, <Vm>.4B[<index>]'
-- SDOT_asimdelem_D    sdot_advsimd_elt.xml
-- UDOT_asimdelem_D    udot_advsimd_elt.xml

type Logical_244 = '[]
type Binary_244  = '[]

decode_244 :: Fn Logical_244 a -> FnW Binary_244 (Decode a)
decode_244 f = return f

encode_244 :: FnW Binary_244 a -> Fn Logical_244 (Encode a)
encode_244 f = return f

parse_244 :: Fn Logical_244 a -> Parser a
parse_244 f = do
    return $ f

show_244 :: Fn Logical_244 ShowS
show_244 = id


-- ' (<prfop>|#<imm5>), [<Xn|SP>{, #<simm>}]'
-- PRFUM_P_ldst_unscaledprfum.xml

type Logical_245 = '[]
type Binary_245  = '[]

decode_245 :: Fn Logical_245 a -> FnW Binary_245 (Decode a)
decode_245 f = return f

encode_245 :: FnW Binary_245 a -> Fn Logical_245 (Encode a)
encode_245 f = return f

parse_245 :: Fn Logical_245 a -> Parser a
parse_245 f = do
    return $ f

show_245 :: Fn Logical_245 ShowS
show_245 = id


-- '  (<prfop>|#<imm5>), [<Xn|SP>{, #<pimm>}]'
-- PRFM_P_ldst_pos     prfm_imm.xml

type Logical_246 = '[]
type Binary_246  = '[]

decode_246 :: Fn Logical_246 a -> FnW Binary_246 (Decode a)
decode_246 f = return f

encode_246 :: FnW Binary_246 a -> Fn Logical_246 (Encode a)
encode_246 f = return f

parse_246 :: Fn Logical_246 a -> Parser a
parse_246 f = do
    return $ f

show_246 :: Fn Logical_246 ShowS
show_246 = id


-- '  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>, #<rotate>'
-- FCADD_asimdsame2_C  fcadd_advsimd_vec.xml
-- FCMLA_asimdsame2_C  fcmla_advsimd_vec.xml

type Logical_247 = '[]
type Binary_247  = '[]

decode_247 :: Fn Logical_247 a -> FnW Binary_247 (Decode a)
decode_247 f = return f

encode_247 :: FnW Binary_247 a -> Fn Logical_247 (Encode a)
encode_247 f = return f

parse_247 :: Fn Logical_247 a -> Parser a
parse_247 f = do
    return $ f

show_247 :: Fn Logical_247 ShowS
show_247 = id


-- '  { <Vt>.B, <Vt2>.B }[<index>], [<Xn|SP>]'
-- LD2_asisdlso_B2_2b  ld2_advsimd_sngl.xml
-- ST2_asisdlso_B2_2b  st2_advsimd_sngl.xml

type Logical_248 = '[]
type Binary_248  = '[]

decode_248 :: Fn Logical_248 a -> FnW Binary_248 (Decode a)
decode_248 f = return f

encode_248 :: FnW Binary_248 a -> Fn Logical_248 (Encode a)
encode_248 f = return f

parse_248 :: Fn Logical_248 a -> Parser a
parse_248 f = do
    return $ f

show_248 :: Fn Logical_248 ShowS
show_248 = id


-- '  { <Vt>.D, <Vt2>.D }[<index>], [<Xn|SP>]'
-- LD2_asisdlso_D2_2d  ld2_advsimd_sngl.xml
-- ST2_asisdlso_D2_2d  st2_advsimd_sngl.xml

type Logical_249 = '[]
type Binary_249  = '[]

decode_249 :: Fn Logical_249 a -> FnW Binary_249 (Decode a)
decode_249 f = return f

encode_249 :: FnW Binary_249 a -> Fn Logical_249 (Encode a)
encode_249 f = return f

parse_249 :: Fn Logical_249 a -> Parser a
parse_249 f = do
    return $ f

show_249 :: Fn Logical_249 ShowS
show_249 = id


-- '  { <Vt>.H, <Vt2>.H }[<index>], [<Xn|SP>]'
-- LD2_asisdlso_H2_2h  ld2_advsimd_sngl.xml
-- ST2_asisdlso_H2_2h  st2_advsimd_sngl.xml

type Logical_250 = '[]
type Binary_250  = '[]

decode_250 :: Fn Logical_250 a -> FnW Binary_250 (Decode a)
decode_250 f = return f

encode_250 :: FnW Binary_250 a -> Fn Logical_250 (Encode a)
encode_250 f = return f

parse_250 :: Fn Logical_250 a -> Parser a
parse_250 f = do
    return $ f

show_250 :: Fn Logical_250 ShowS
show_250 = id


-- '  { <Vt>.S, <Vt2>.S }[<index>], [<Xn|SP>]'
-- LD2_asisdlso_S2_2s  ld2_advsimd_sngl.xml
-- ST2_asisdlso_S2_2s  st2_advsimd_sngl.xml

type Logical_251 = '[]
type Binary_251  = '[]

decode_251 :: Fn Logical_251 a -> FnW Binary_251 (Decode a)
decode_251 f = return f

encode_251 :: FnW Binary_251 a -> Fn Logical_251 (Encode a)
encode_251 f = return f

parse_251 :: Fn Logical_251 a -> Parser a
parse_251 f = do
    return $ f

show_251 :: Fn Logical_251 ShowS
show_251 = id


-- '  <Vd>.<Ts>[<index1>], <Vn>.<Ts>[<index2>]'
-- INS_asimdins_IV_v   ins_advsimd_elt.xml

type Logical_252 = '[]
type Binary_252  = '[]

decode_252 :: Fn Logical_252 a -> FnW Binary_252 (Decode a)
decode_252 f = return f

encode_252 :: FnW Binary_252 a -> Fn Logical_252 (Encode a)
encode_252 f = return f

parse_252 :: Fn Logical_252 a -> Parser a
parse_252 f = do
    return $ f

show_252 :: Fn Logical_252 ShowS
show_252 = id


-- '  { <Vt>.<T>, <Vt2>.<T> }, [<Xn|SP>], <Xm>'
-- LD1_asisdlsep_R2_r2 ld1_advsimd_mult.xml
-- LD2_asisdlsep_R2_r  ld2_advsimd_mult.xml
-- LD2R_asisdlsop_RX2_rld2r_advsimd.xml
-- ST1_asisdlsep_R2_r2 st1_advsimd_mult.xml
-- ST2_asisdlsep_R2_r  st2_advsimd_mult.xml

type Logical_253 = '[]
type Binary_253  = '[]

decode_253 :: Fn Logical_253 a -> FnW Binary_253 (Decode a)
decode_253 f = return f

encode_253 :: FnW Binary_253 a -> Fn Logical_253 (Encode a)
encode_253 f = return f

parse_253 :: Fn Logical_253 a -> Parser a
parse_253 f = do
    return $ f

show_253 :: Fn Logical_253 ShowS
show_253 = id


-- '  { <Vt>.<T>, <Vt2>.<T> }, [<Xn|SP>], <imm>'
-- LD1_asisdlsep_I2_i2 ld1_advsimd_mult.xml
-- LD2_asisdlsep_I2_i  ld2_advsimd_mult.xml
-- LD2R_asisdlsop_R2_i ld2r_advsimd.xml
-- ST1_asisdlsep_I2_i2 st1_advsimd_mult.xml
-- ST2_asisdlsep_I2_i  st2_advsimd_mult.xml

type Logical_254 = '[]
type Binary_254  = '[]

decode_254 :: Fn Logical_254 a -> FnW Binary_254 (Decode a)
decode_254 f = return f

encode_254 :: FnW Binary_254 a -> Fn Logical_254 (Encode a)
encode_254 f = return f

parse_254 :: Fn Logical_254 a -> Parser a
parse_254 f = do
    return $ f

show_254 :: Fn Logical_254 ShowS
show_254 = id


-- '  { <Vt>.B, <Vt2>.B }[<index>], [<Xn|SP>], #2'
-- LD2_asisdlsop_B2_i2bld2_advsimd_sngl.xml
-- ST2_asisdlsop_B2_i2bst2_advsimd_sngl.xml

type Logical_255 = '[]
type Binary_255  = '[]

decode_255 :: Fn Logical_255 a -> FnW Binary_255 (Decode a)
decode_255 f = return f

encode_255 :: FnW Binary_255 a -> Fn Logical_255 (Encode a)
encode_255 f = return f

parse_255 :: Fn Logical_255 a -> Parser a
parse_255 f = do
    return $ f

show_255 :: Fn Logical_255 ShowS
show_255 = id


-- '  { <Vt>.H, <Vt2>.H }[<index>], [<Xn|SP>], #4'
-- LD2_asisdlsop_H2_i2hld2_advsimd_sngl.xml
-- ST2_asisdlsop_H2_i2hst2_advsimd_sngl.xml

type Logical_256 = '[]
type Binary_256  = '[]

decode_256 :: Fn Logical_256 a -> FnW Binary_256 (Decode a)
decode_256 f = return f

encode_256 :: FnW Binary_256 a -> Fn Logical_256 (Encode a)
encode_256 f = return f

parse_256 :: Fn Logical_256 a -> Parser a
parse_256 f = do
    return $ f

show_256 :: Fn Logical_256 ShowS
show_256 = id


-- '  { <Vt>.S, <Vt2>.S }[<index>], [<Xn|SP>], #8'
-- LD2_asisdlsop_S2_i2sld2_advsimd_sngl.xml
-- ST2_asisdlsop_S2_i2sst2_advsimd_sngl.xml

type Logical_257 = '[]
type Binary_257  = '[]

decode_257 :: Fn Logical_257 a -> FnW Binary_257 (Decode a)
decode_257 f = return f

encode_257 :: FnW Binary_257 a -> Fn Logical_257 (Encode a)
encode_257 f = return f

parse_257 :: Fn Logical_257 a -> Parser a
parse_257 f = do
    return $ f

show_257 :: Fn Logical_257 ShowS
show_257 = id


-- '{2}  <Vd>.<Ta>, <Vn>.<Tb>, <Vm>.<Ts>[<index>]'
-- SMLAL_asimdelem_L   smlal_advsimd_elt.xml
-- SMLSL_asimdelem_L   smlsl_advsimd_elt.xml
-- SMULL_asimdelem_L   smull_advsimd_elt.xml
-- SQDMLAL_asimdelem_L sqdmlal_advsimd_elt.xml
-- SQDMLSL_asimdelem_L sqdmlsl_advsimd_elt.xml
-- SQDMULL_asimdelem_L sqdmull_advsimd_elt.xml
-- UMLAL_asimdelem_L   umlal_advsimd_elt.xml
-- UMLSL_asimdelem_L   umlsl_advsimd_elt.xml
-- UMULL_asimdelem_L   umull_advsimd_elt.xml

type Logical_258 = '[]
type Binary_258  = '[]

decode_258 :: Fn Logical_258 a -> FnW Binary_258 (Decode a)
decode_258 f = return f

encode_258 :: FnW Binary_258 a -> Fn Logical_258 (Encode a)
encode_258 f = return f

parse_258 :: Fn Logical_258 a -> Parser a
parse_258 f = do
    return $ f

show_258 :: Fn Logical_258 ShowS
show_258 = id


-- '  <Wd>, <Wn|WSP>, <Wm>{, <extend> {#<amount>}}'
-- ADDS_32S_addsub_ext adds_addsub_ext.xml
-- SUBS_32S_addsub_ext subs_addsub_ext.xml

type Logical_259 = '[]
type Binary_259  = '[]

decode_259 :: Fn Logical_259 a -> FnW Binary_259 (Decode a)
decode_259 f = return f

encode_259 :: FnW Binary_259 a -> Fn Logical_259 (Encode a)
encode_259 f = return f

parse_259 :: Fn Logical_259 a -> Parser a
parse_259 f = do
    return $ f

show_259 :: Fn Logical_259 ShowS
show_259 = id


-- '  { <Vt>.D, <Vt2>.D }[<index>], [<Xn|SP>], #16'
-- LD2_asisdlsop_D2_i2dld2_advsimd_sngl.xml
-- ST2_asisdlsop_D2_i2dst2_advsimd_sngl.xml

type Logical_260 = '[]
type Binary_260  = '[]

decode_260 :: Fn Logical_260 a -> FnW Binary_260 (Decode a)
decode_260 f = return f

encode_260 :: FnW Binary_260 a -> Fn Logical_260 (Encode a)
encode_260 f = return f

parse_260 :: Fn Logical_260 a -> Parser a
parse_260 f = do
    return $ f

show_260 :: Fn Logical_260 ShowS
show_260 = id


-- '  <Xd>, <Xn|SP>, <R><m>{, <extend> {#<amount>}}'
-- ADDS_64S_addsub_ext adds_addsub_ext.xml
-- SUBS_64S_addsub_ext subs_addsub_ext.xml

type Logical_261 = '[]
type Binary_261  = '[]

decode_261 :: Fn Logical_261 a -> FnW Binary_261 (Decode a)
decode_261 f = return f

encode_261 :: FnW Binary_261 a -> Fn Logical_261 (Encode a)
encode_261 f = return f

parse_261 :: Fn Logical_261 a -> Parser a
parse_261 f = do
    return $ f

show_261 :: Fn Logical_261 ShowS
show_261 = id


-- '  { <Vt>.<T>, <Vt2>.<T>, <Vt3>.<T> }, [<Xn|SP>]'
-- LD1_asisdlse_R3_3v  ld1_advsimd_mult.xml
-- LD3_asisdlse_R3     ld3_advsimd_mult.xml
-- LD3R_asisdlso_R3    ld3r_advsimd.xml
-- ST1_asisdlse_R3_3v  st1_advsimd_mult.xml
-- ST3_asisdlse_R3     st3_advsimd_mult.xml

type Logical_262 = '[]
type Binary_262  = '[]

decode_262 :: Fn Logical_262 a -> FnW Binary_262 (Decode a)
decode_262 f = return f

encode_262 :: FnW Binary_262 a -> Fn Logical_262 (Encode a)
encode_262 f = return f

parse_262 :: Fn Logical_262 a -> Parser a
parse_262 f = do
    return $ f

show_262 :: Fn Logical_262 ShowS
show_262 = id


-- '  { <Vt>.B, <Vt2>.B }[<index>], [<Xn|SP>], <Xm>'
-- LD2_asisdlsop_BX2_r2bld2_advsimd_sngl.xml
-- ST2_asisdlsop_BX2_r2bst2_advsimd_sngl.xml

type Logical_263 = '[]
type Binary_263  = '[]

decode_263 :: Fn Logical_263 a -> FnW Binary_263 (Decode a)
decode_263 f = return f

encode_263 :: FnW Binary_263 a -> Fn Logical_263 (Encode a)
encode_263 f = return f

parse_263 :: Fn Logical_263 a -> Parser a
parse_263 f = do
    return $ f

show_263 :: Fn Logical_263 ShowS
show_263 = id


-- '  { <Vt>.D, <Vt2>.D }[<index>], [<Xn|SP>], <Xm>'
-- LD2_asisdlsop_DX2_r2dld2_advsimd_sngl.xml
-- ST2_asisdlsop_DX2_r2dst2_advsimd_sngl.xml

type Logical_264 = '[]
type Binary_264  = '[]

decode_264 :: Fn Logical_264 a -> FnW Binary_264 (Decode a)
decode_264 f = return f

encode_264 :: FnW Binary_264 a -> Fn Logical_264 (Encode a)
encode_264 f = return f

parse_264 :: Fn Logical_264 a -> Parser a
parse_264 f = do
    return $ f

show_264 :: Fn Logical_264 ShowS
show_264 = id


-- '  { <Vt>.H, <Vt2>.H }[<index>], [<Xn|SP>], <Xm>'
-- LD2_asisdlsop_HX2_r2hld2_advsimd_sngl.xml
-- ST2_asisdlsop_HX2_r2hst2_advsimd_sngl.xml

type Logical_265 = '[]
type Binary_265  = '[]

decode_265 :: Fn Logical_265 a -> FnW Binary_265 (Decode a)
decode_265 f = return f

encode_265 :: FnW Binary_265 a -> Fn Logical_265 (Encode a)
encode_265 f = return f

parse_265 :: Fn Logical_265 a -> Parser a
parse_265 f = do
    return $ f

show_265 :: Fn Logical_265 ShowS
show_265 = id


-- '  { <Vt>.S, <Vt2>.S }[<index>], [<Xn|SP>], <Xm>'
-- LD2_asisdlsop_SX2_r2sld2_advsimd_sngl.xml
-- ST2_asisdlsop_SX2_r2sst2_advsimd_sngl.xml

type Logical_266 = '[]
type Binary_266  = '[]

decode_266 :: Fn Logical_266 a -> FnW Binary_266 (Decode a)
decode_266 f = return f

encode_266 :: FnW Binary_266 a -> Fn Logical_266 (Encode a)
encode_266 f = return f

parse_266 :: Fn Logical_266 a -> Parser a
parse_266 f = do
    return $ f

show_266 :: Fn Logical_266 ShowS
show_266 = id


-- '  <Vd>.<Ta>, { <Vn>.16B, <Vn+1>.16B }, <Vm>.<Ta>'
-- TBL_asimdtbl_L2_2   tbl_advsimd.xml
-- TBX_asimdtbl_L2_2   tbx_advsimd.xml

type Logical_267 = '[]
type Binary_267  = '[]

decode_267 :: Fn Logical_267 a -> FnW Binary_267 (Decode a)
decode_267 f = return f

encode_267 :: FnW Binary_267 a -> Fn Logical_267 (Encode a)
encode_267 f = return f

parse_267 :: Fn Logical_267 a -> Parser a
parse_267 f = do
    return $ f

show_267 :: Fn Logical_267 ShowS
show_267 = id


-- '  <Ws>, <W(s+1)>, <Wt>, <W(t+1)>, [<Xn|SP>{,#0}]'
-- CASP_CP32_ldstexcl  casp.xml
-- CASPA_CP32_ldstexcl casp.xml
-- CASPAL_CP32_ldstexclcasp.xml
-- CASPL_CP32_ldstexcl casp.xml

type Logical_268 = '[]
type Binary_268  = '[]

decode_268 :: Fn Logical_268 a -> FnW Binary_268 (Decode a)
decode_268 f = return f

encode_268 :: FnW Binary_268 a -> Fn Logical_268 (Encode a)
encode_268 f = return f

parse_268 :: Fn Logical_268 a -> Parser a
parse_268 f = do
    return $ f

show_268 :: Fn Logical_268 ShowS
show_268 = id


-- '  <Xs>, <X(s+1)>, <Xt>, <X(t+1)>, [<Xn|SP>{,#0}]'
-- CASP_CP64_ldstexcl  casp.xml
-- CASPA_CP64_ldstexcl casp.xml
-- CASPAL_CP64_ldstexclcasp.xml
-- CASPL_CP64_ldstexcl casp.xml

type Logical_269 = '[]
type Binary_269  = '[]

decode_269 :: Fn Logical_269 a -> FnW Binary_269 (Decode a)
decode_269 f = return f

encode_269 :: FnW Binary_269 a -> Fn Logical_269 (Encode a)
encode_269 f = return f

parse_269 :: Fn Logical_269 a -> Parser a
parse_269 f = do
    return $ f

show_269 :: Fn Logical_269 ShowS
show_269 = id


-- '  (<systemreg>|S<op0>_<op1>_<Cn>_<Cm>_<op2>), <Xt>'
-- MSR_SR_system       msr_reg.xml

type Logical_270 = '[]
type Binary_270  = '[]

decode_270 :: Fn Logical_270 a -> FnW Binary_270 (Decode a)
decode_270 f = return f

encode_270 :: FnW Binary_270 a -> Fn Logical_270 (Encode a)
encode_270 f = return f

parse_270 :: Fn Logical_270 a -> Parser a
parse_270 f = do
    return $ f

show_270 :: Fn Logical_270 ShowS
show_270 = id


-- '  <Wd|WSP>, <Wn|WSP>, <Wm>{, <extend> {#<amount>}}'
-- ADD_32_addsub_ext   add_addsub_ext.xml
-- SUB_32_addsub_ext   sub_addsub_ext.xml

type Logical_271 = '[]
type Binary_271  = '[]

decode_271 :: Fn Logical_271 a -> FnW Binary_271 (Decode a)
decode_271 f = return f

encode_271 :: FnW Binary_271 a -> Fn Logical_271 (Encode a)
encode_271 f = return f

parse_271 :: Fn Logical_271 a -> Parser a
parse_271 f = do
    return $ f

show_271 :: Fn Logical_271 ShowS
show_271 = id


-- '  <Xd|SP>, <Xn|SP>, <R><m>{, <extend> {#<amount>}}'
-- ADD_64_addsub_ext   add_addsub_ext.xml
-- SUB_64_addsub_ext   sub_addsub_ext.xml

type Logical_272 = '[]
type Binary_272  = '[]

decode_272 :: Fn Logical_272 a -> FnW Binary_272 (Decode a)
decode_272 f = return f

encode_272 :: FnW Binary_272 a -> Fn Logical_272 (Encode a)
encode_272 f = return f

parse_272 :: Fn Logical_272 a -> Parser a
parse_272 f = do
    return $ f

show_272 :: Fn Logical_272 ShowS
show_272 = id


-- '  <Xt>, (<systemreg>|S<op0>_<op1>_<Cn>_<Cm>_<op2>)'
-- MRS_RS_system       mrs.xml

type Logical_273 = '[]
type Binary_273  = '[]

decode_273 :: Fn Logical_273 a -> FnW Binary_273 (Decode a)
decode_273 f = return f

encode_273 :: FnW Binary_273 a -> Fn Logical_273 (Encode a)
encode_273 f = return f

parse_273 :: Fn Logical_273 a -> Parser a
parse_273 f = do
    return $ f

show_273 :: Fn Logical_273 ShowS
show_273 = id


-- '  { <Vt>.B, <Vt2>.B, <Vt3>.B }[<index>], [<Xn|SP>]'
-- LD3_asisdlso_B3_3b  ld3_advsimd_sngl.xml
-- ST3_asisdlso_B3_3b  st3_advsimd_sngl.xml

type Logical_274 = '[]
type Binary_274  = '[]

decode_274 :: Fn Logical_274 a -> FnW Binary_274 (Decode a)
decode_274 f = return f

encode_274 :: FnW Binary_274 a -> Fn Logical_274 (Encode a)
encode_274 f = return f

parse_274 :: Fn Logical_274 a -> Parser a
parse_274 f = do
    return $ f

show_274 :: Fn Logical_274 ShowS
show_274 = id


-- '  { <Vt>.D, <Vt2>.D, <Vt3>.D }[<index>], [<Xn|SP>]'
-- LD3_asisdlso_D3_3d  ld3_advsimd_sngl.xml
-- ST3_asisdlso_D3_3d  st3_advsimd_sngl.xml

type Logical_275 = '[]
type Binary_275  = '[]

decode_275 :: Fn Logical_275 a -> FnW Binary_275 (Decode a)
decode_275 f = return f

encode_275 :: FnW Binary_275 a -> Fn Logical_275 (Encode a)
encode_275 f = return f

parse_275 :: Fn Logical_275 a -> Parser a
parse_275 f = do
    return $ f

show_275 :: Fn Logical_275 ShowS
show_275 = id


-- '  { <Vt>.H, <Vt2>.H, <Vt3>.H }[<index>], [<Xn|SP>]'
-- LD3_asisdlso_H3_3h  ld3_advsimd_sngl.xml
-- ST3_asisdlso_H3_3h  st3_advsimd_sngl.xml

type Logical_276 = '[]
type Binary_276  = '[]

decode_276 :: Fn Logical_276 a -> FnW Binary_276 (Decode a)
decode_276 f = return f

encode_276 :: FnW Binary_276 a -> Fn Logical_276 (Encode a)
encode_276 f = return f

parse_276 :: Fn Logical_276 a -> Parser a
parse_276 f = do
    return $ f

show_276 :: Fn Logical_276 ShowS
show_276 = id


-- '  { <Vt>.S, <Vt2>.S, <Vt3>.S }[<index>], [<Xn|SP>]'
-- LD3_asisdlso_S3_3s  ld3_advsimd_sngl.xml
-- ST3_asisdlso_S3_3s  st3_advsimd_sngl.xml

type Logical_277 = '[]
type Binary_277  = '[]

decode_277 :: Fn Logical_277 a -> FnW Binary_277 (Decode a)
decode_277 f = return f

encode_277 :: FnW Binary_277 a -> Fn Logical_277 (Encode a)
encode_277 f = return f

parse_277 :: Fn Logical_277 a -> Parser a
parse_277 f = do
    return $ f

show_277 :: Fn Logical_277 ShowS
show_277 = id


-- '  <Bt>, [<Xn|SP>, (<Wm>|<Xm>), <extend> {<amount>}]'
-- LDR_B_ldst_regoff   ldr_reg_fpsimd.xml
-- STR_B_ldst_regoff   str_reg_fpsimd.xml

type Logical_278 = '[]
type Binary_278  = '[]

decode_278 :: Fn Logical_278 a -> FnW Binary_278 (Decode a)
decode_278 f = return f

encode_278 :: FnW Binary_278 a -> Fn Logical_278 (Encode a)
encode_278 f = return f

parse_278 :: Fn Logical_278 a -> Parser a
parse_278 f = do
    return $ f

show_278 :: Fn Logical_278 ShowS
show_278 = id


-- '  <Vd>.<T>, <Vn>.<T>, <Vm>.<Ts>[<index>], #<rotate>'
-- FCMLA_asimdelem_C_H fcmla_advsimd_elt.xml
-- FCMLA_asimdelem_C_S fcmla_advsimd_elt.xml

type Logical_279 = '[]
type Binary_279  = '[]

decode_279 :: Fn Logical_279 a -> FnW Binary_279 (Decode a)
decode_279 f = return f

encode_279 :: FnW Binary_279 a -> Fn Logical_279 (Encode a)
encode_279 f = return f

parse_279 :: Fn Logical_279 a -> Parser a
parse_279 f = do
    return $ f

show_279 :: Fn Logical_279 ShowS
show_279 = id


-- '  <Wt>, [<Xn|SP>, (<Wm>|<Xm>), <extend> {<amount>}]'
-- LDRB_32B_ldst_regoffldrb_reg.xml
-- LDRSB_32B_ldst_regoffldrsb_reg.xml
-- STRB_32B_ldst_regoffstrb_reg.xml

type Logical_280 = '[]
type Binary_280  = '[]

decode_280 :: Fn Logical_280 a -> FnW Binary_280 (Decode a)
decode_280 f = return f

encode_280 :: FnW Binary_280 a -> Fn Logical_280 (Encode a)
encode_280 f = return f

parse_280 :: Fn Logical_280 a -> Parser a
parse_280 f = do
    return $ f

show_280 :: Fn Logical_280 ShowS
show_280 = id


-- '  <Xt>, [<Xn|SP>, (<Wm>|<Xm>), <extend> {<amount>}]'
-- LDRSB_64B_ldst_regoffldrsb_reg.xml

type Logical_281 = '[]
type Binary_281  = '[]

decode_281 :: Fn Logical_281 a -> FnW Binary_281 (Decode a)
decode_281 f = return f

encode_281 :: FnW Binary_281 a -> Fn Logical_281 (Encode a)
encode_281 f = return f

parse_281 :: Fn Logical_281 a -> Parser a
parse_281 f = do
    return $ f

show_281 :: Fn Logical_281 ShowS
show_281 = id


-- '  <Dt>, [<Xn|SP>, (<Wm>|<Xm>){, <extend> {<amount>}}]'
-- LDR_D_ldst_regoff   ldr_reg_fpsimd.xml
-- STR_D_ldst_regoff   str_reg_fpsimd.xml

type Logical_282 = '[]
type Binary_282  = '[]

decode_282 :: Fn Logical_282 a -> FnW Binary_282 (Decode a)
decode_282 f = return f

encode_282 :: FnW Binary_282 a -> Fn Logical_282 (Encode a)
encode_282 f = return f

parse_282 :: Fn Logical_282 a -> Parser a
parse_282 f = do
    return $ f

show_282 :: Fn Logical_282 ShowS
show_282 = id


-- '  <Ht>, [<Xn|SP>, (<Wm>|<Xm>){, <extend> {<amount>}}]'
-- LDR_H_ldst_regoff   ldr_reg_fpsimd.xml
-- STR_H_ldst_regoff   str_reg_fpsimd.xml

type Logical_283 = '[]
type Binary_283  = '[]

decode_283 :: Fn Logical_283 a -> FnW Binary_283 (Decode a)
decode_283 f = return f

encode_283 :: FnW Binary_283 a -> Fn Logical_283 (Encode a)
encode_283 f = return f

parse_283 :: Fn Logical_283 a -> Parser a
parse_283 f = do
    return $ f

show_283 :: Fn Logical_283 ShowS
show_283 = id


-- '  <Qt>, [<Xn|SP>, (<Wm>|<Xm>){, <extend> {<amount>}}]'
-- LDR_Q_ldst_regoff   ldr_reg_fpsimd.xml
-- STR_Q_ldst_regoff   str_reg_fpsimd.xml

type Logical_284 = '[]
type Binary_284  = '[]

decode_284 :: Fn Logical_284 a -> FnW Binary_284 (Decode a)
decode_284 f = return f

encode_284 :: FnW Binary_284 a -> Fn Logical_284 (Encode a)
encode_284 f = return f

parse_284 :: Fn Logical_284 a -> Parser a
parse_284 f = do
    return $ f

show_284 :: Fn Logical_284 ShowS
show_284 = id


-- '  <St>, [<Xn|SP>, (<Wm>|<Xm>){, <extend> {<amount>}}]'
-- LDR_S_ldst_regoff   ldr_reg_fpsimd.xml
-- STR_S_ldst_regoff   str_reg_fpsimd.xml

type Logical_285 = '[]
type Binary_285  = '[]

decode_285 :: Fn Logical_285 a -> FnW Binary_285 (Decode a)
decode_285 f = return f

encode_285 :: FnW Binary_285 a -> Fn Logical_285 (Encode a)
encode_285 f = return f

parse_285 :: Fn Logical_285 a -> Parser a
parse_285 f = do
    return $ f

show_285 :: Fn Logical_285 ShowS
show_285 = id


-- '  <Wt>, [<Xn|SP>, (<Wm>|<Xm>){, <extend> {<amount>}}]'
-- LDR_32_ldst_regoff  ldr_reg_gen.xml
-- LDRH_32_ldst_regoff ldrh_reg.xml
-- LDRSH_32_ldst_regoffldrsh_reg.xml
-- STR_32_ldst_regoff  str_reg_gen.xml
-- STRH_32_ldst_regoff strh_reg.xml

type Logical_286 = '[]
type Binary_286  = '[]

decode_286 :: Fn Logical_286 a -> FnW Binary_286 (Decode a)
decode_286 f = return f

encode_286 :: FnW Binary_286 a -> Fn Logical_286 (Encode a)
encode_286 f = return f

parse_286 :: Fn Logical_286 a -> Parser a
parse_286 f = do
    return $ f

show_286 :: Fn Logical_286 ShowS
show_286 = id


-- '  <Xt>, [<Xn|SP>, (<Wm>|<Xm>){, <extend> {<amount>}}]'
-- LDR_64_ldst_regoff  ldr_reg_gen.xml
-- LDRSH_64_ldst_regoffldrsh_reg.xml
-- LDRSW_64_ldst_regoffldrsw_reg.xml
-- STR_64_ldst_regoff  str_reg_gen.xml

type Logical_287 = '[]
type Binary_287  = '[]

decode_287 :: Fn Logical_287 a -> FnW Binary_287 (Decode a)
decode_287 f = return f

encode_287 :: FnW Binary_287 a -> Fn Logical_287 (Encode a)
encode_287 f = return f

parse_287 :: Fn Logical_287 a -> Parser a
parse_287 f = do
    return $ f

show_287 :: Fn Logical_287 ShowS
show_287 = id


-- '  { <Vt>.<T>, <Vt2>.<T>, <Vt3>.<T> }, [<Xn|SP>], <Xm>'
-- LD1_asisdlsep_R3_r3 ld1_advsimd_mult.xml
-- LD3_asisdlsep_R3_r  ld3_advsimd_mult.xml
-- LD3R_asisdlsop_RX3_rld3r_advsimd.xml
-- ST1_asisdlsep_R3_r3 st1_advsimd_mult.xml
-- ST3_asisdlsep_R3_r  st3_advsimd_mult.xml

type Logical_288 = '[]
type Binary_288  = '[]

decode_288 :: Fn Logical_288 a -> FnW Binary_288 (Decode a)
decode_288 f = return f

encode_288 :: FnW Binary_288 a -> Fn Logical_288 (Encode a)
encode_288 f = return f

parse_288 :: Fn Logical_288 a -> Parser a
parse_288 f = do
    return $ f

show_288 :: Fn Logical_288 ShowS
show_288 = id


-- '  { <Vt>.<T>, <Vt2>.<T>, <Vt3>.<T> }, [<Xn|SP>], <imm>'
-- LD1_asisdlsep_I3_i3 ld1_advsimd_mult.xml
-- LD3_asisdlsep_I3_i  ld3_advsimd_mult.xml
-- LD3R_asisdlsop_R3_i ld3r_advsimd.xml
-- ST1_asisdlsep_I3_i3 st1_advsimd_mult.xml
-- ST3_asisdlsep_I3_i  st3_advsimd_mult.xml

type Logical_289 = '[]
type Binary_289  = '[]

decode_289 :: Fn Logical_289 a -> FnW Binary_289 (Decode a)
decode_289 f = return f

encode_289 :: FnW Binary_289 a -> Fn Logical_289 (Encode a)
encode_289 f = return f

parse_289 :: Fn Logical_289 a -> Parser a
parse_289 f = do
    return $ f

show_289 :: Fn Logical_289 ShowS
show_289 = id


-- '  { <Vt>.B, <Vt2>.B, <Vt3>.B }[<index>], [<Xn|SP>], #3'
-- LD3_asisdlsop_B3_i3bld3_advsimd_sngl.xml
-- ST3_asisdlsop_B3_i3bst3_advsimd_sngl.xml

type Logical_290 = '[]
type Binary_290  = '[]

decode_290 :: Fn Logical_290 a -> FnW Binary_290 (Decode a)
decode_290 f = return f

encode_290 :: FnW Binary_290 a -> Fn Logical_290 (Encode a)
encode_290 f = return f

parse_290 :: Fn Logical_290 a -> Parser a
parse_290 f = do
    return $ f

show_290 :: Fn Logical_290 ShowS
show_290 = id


-- '  { <Vt>.H, <Vt2>.H, <Vt3>.H }[<index>], [<Xn|SP>], #6'
-- LD3_asisdlsop_H3_i3hld3_advsimd_sngl.xml
-- ST3_asisdlsop_H3_i3hst3_advsimd_sngl.xml

type Logical_291 = '[]
type Binary_291  = '[]

decode_291 :: Fn Logical_291 a -> FnW Binary_291 (Decode a)
decode_291 f = return f

encode_291 :: FnW Binary_291 a -> Fn Logical_291 (Encode a)
encode_291 f = return f

parse_291 :: Fn Logical_291 a -> Parser a
parse_291 f = do
    return $ f

show_291 :: Fn Logical_291 ShowS
show_291 = id


-- '  { <Vt>.D, <Vt2>.D, <Vt3>.D }[<index>], [<Xn|SP>], #24'
-- LD3_asisdlsop_D3_i3dld3_advsimd_sngl.xml
-- ST3_asisdlsop_D3_i3dst3_advsimd_sngl.xml

type Logical_292 = '[]
type Binary_292  = '[]

decode_292 :: Fn Logical_292 a -> FnW Binary_292 (Decode a)
decode_292 f = return f

encode_292 :: FnW Binary_292 a -> Fn Logical_292 (Encode a)
encode_292 f = return f

parse_292 :: Fn Logical_292 a -> Parser a
parse_292 f = do
    return $ f

show_292 :: Fn Logical_292 ShowS
show_292 = id


-- '  { <Vt>.S, <Vt2>.S, <Vt3>.S }[<index>], [<Xn|SP>], #12'
-- LD3_asisdlsop_S3_i3sld3_advsimd_sngl.xml
-- ST3_asisdlsop_S3_i3sst3_advsimd_sngl.xml

type Logical_293 = '[]
type Binary_293  = '[]

decode_293 :: Fn Logical_293 a -> FnW Binary_293 (Decode a)
decode_293 f = return f

encode_293 :: FnW Binary_293 a -> Fn Logical_293 (Encode a)
encode_293 f = return f

parse_293 :: Fn Logical_293 a -> Parser a
parse_293 f = do
    return $ f

show_293 :: Fn Logical_293 ShowS
show_293 = id


-- '  { <Vt>.B, <Vt2>.B, <Vt3>.B }[<index>], [<Xn|SP>], <Xm>'
-- LD3_asisdlsop_BX3_r3bld3_advsimd_sngl.xml
-- ST3_asisdlsop_BX3_r3bst3_advsimd_sngl.xml

type Logical_294 = '[]
type Binary_294  = '[]

decode_294 :: Fn Logical_294 a -> FnW Binary_294 (Decode a)
decode_294 f = return f

encode_294 :: FnW Binary_294 a -> Fn Logical_294 (Encode a)
encode_294 f = return f

parse_294 :: Fn Logical_294 a -> Parser a
parse_294 f = do
    return $ f

show_294 :: Fn Logical_294 ShowS
show_294 = id


-- '  { <Vt>.D, <Vt2>.D, <Vt3>.D }[<index>], [<Xn|SP>], <Xm>'
-- LD3_asisdlsop_DX3_r3dld3_advsimd_sngl.xml
-- ST3_asisdlsop_DX3_r3dst3_advsimd_sngl.xml

type Logical_295 = '[]
type Binary_295  = '[]

decode_295 :: Fn Logical_295 a -> FnW Binary_295 (Decode a)
decode_295 f = return f

encode_295 :: FnW Binary_295 a -> Fn Logical_295 (Encode a)
encode_295 f = return f

parse_295 :: Fn Logical_295 a -> Parser a
parse_295 f = do
    return $ f

show_295 :: Fn Logical_295 ShowS
show_295 = id


-- '  { <Vt>.H, <Vt2>.H, <Vt3>.H }[<index>], [<Xn|SP>], <Xm>'
-- LD3_asisdlsop_HX3_r3hld3_advsimd_sngl.xml
-- ST3_asisdlsop_HX3_r3hst3_advsimd_sngl.xml

type Logical_296 = '[]
type Binary_296  = '[]

decode_296 :: Fn Logical_296 a -> FnW Binary_296 (Decode a)
decode_296 f = return f

encode_296 :: FnW Binary_296 a -> Fn Logical_296 (Encode a)
encode_296 f = return f

parse_296 :: Fn Logical_296 a -> Parser a
parse_296 f = do
    return $ f

show_296 :: Fn Logical_296 ShowS
show_296 = id


-- '  { <Vt>.S, <Vt2>.S, <Vt3>.S }[<index>], [<Xn|SP>], <Xm>'
-- LD3_asisdlsop_SX3_r3sld3_advsimd_sngl.xml
-- ST3_asisdlsop_SX3_r3sst3_advsimd_sngl.xml

type Logical_297 = '[]
type Binary_297  = '[]

decode_297 :: Fn Logical_297 a -> FnW Binary_297 (Decode a)
decode_297 f = return f

encode_297 :: FnW Binary_297 a -> Fn Logical_297 (Encode a)
encode_297 f = return f

parse_297 :: Fn Logical_297 a -> Parser a
parse_297 f = do
    return $ f

show_297 :: Fn Logical_297 ShowS
show_297 = id


-- '  { <Vt>.<T>, <Vt2>.<T>, <Vt3>.<T>, <Vt4>.<T> }, [<Xn|SP>]'
-- LD1_asisdlse_R4_4v  ld1_advsimd_mult.xml
-- LD4_asisdlse_R4     ld4_advsimd_mult.xml
-- LD4R_asisdlso_R4    ld4r_advsimd.xml
-- ST1_asisdlse_R4_4v  st1_advsimd_mult.xml
-- ST4_asisdlse_R4     st4_advsimd_mult.xml

type Logical_298 = '[]
type Binary_298  = '[]

decode_298 :: Fn Logical_298 a -> FnW Binary_298 (Decode a)
decode_298 f = return f

encode_298 :: FnW Binary_298 a -> Fn Logical_298 (Encode a)
encode_298 f = return f

parse_298 :: Fn Logical_298 a -> Parser a
parse_298 f = do
    return $ f

show_298 :: Fn Logical_298 ShowS
show_298 = id


-- '  { <Vt>.B, <Vt2>.B, <Vt3>.B, <Vt4>.B }[<index>], [<Xn|SP>]'
-- LD4_asisdlso_B4_4b  ld4_advsimd_sngl.xml
-- ST4_asisdlso_B4_4b  st4_advsimd_sngl.xml

type Logical_299 = '[]
type Binary_299  = '[]

decode_299 :: Fn Logical_299 a -> FnW Binary_299 (Decode a)
decode_299 f = return f

encode_299 :: FnW Binary_299 a -> Fn Logical_299 (Encode a)
encode_299 f = return f

parse_299 :: Fn Logical_299 a -> Parser a
parse_299 f = do
    return $ f

show_299 :: Fn Logical_299 ShowS
show_299 = id


-- '  { <Vt>.D, <Vt2>.D, <Vt3>.D, <Vt4>.D }[<index>], [<Xn|SP>]'
-- LD4_asisdlso_D4_4d  ld4_advsimd_sngl.xml
-- ST4_asisdlso_D4_4d  st4_advsimd_sngl.xml

type Logical_300 = '[]
type Binary_300  = '[]

decode_300 :: Fn Logical_300 a -> FnW Binary_300 (Decode a)
decode_300 f = return f

encode_300 :: FnW Binary_300 a -> Fn Logical_300 (Encode a)
encode_300 f = return f

parse_300 :: Fn Logical_300 a -> Parser a
parse_300 f = do
    return $ f

show_300 :: Fn Logical_300 ShowS
show_300 = id


-- '  { <Vt>.H, <Vt2>.H, <Vt3>.H, <Vt4>.H }[<index>], [<Xn|SP>]'
-- LD4_asisdlso_H4_4h  ld4_advsimd_sngl.xml
-- ST4_asisdlso_H4_4h  st4_advsimd_sngl.xml

type Logical_301 = '[]
type Binary_301  = '[]

decode_301 :: Fn Logical_301 a -> FnW Binary_301 (Decode a)
decode_301 f = return f

encode_301 :: FnW Binary_301 a -> Fn Logical_301 (Encode a)
encode_301 f = return f

parse_301 :: Fn Logical_301 a -> Parser a
parse_301 f = do
    return $ f

show_301 :: Fn Logical_301 ShowS
show_301 = id


-- '  { <Vt>.S, <Vt2>.S, <Vt3>.S, <Vt4>.S }[<index>], [<Xn|SP>]'
-- LD4_asisdlso_S4_4s  ld4_advsimd_sngl.xml
-- ST4_asisdlso_S4_4s  st4_advsimd_sngl.xml

type Logical_302 = '[]
type Binary_302  = '[]

decode_302 :: Fn Logical_302 a -> FnW Binary_302 (Decode a)
decode_302 f = return f

encode_302 :: FnW Binary_302 a -> Fn Logical_302 (Encode a)
encode_302 f = return f

parse_302 :: Fn Logical_302 a -> Parser a
parse_302 f = do
    return $ f

show_302 :: Fn Logical_302 ShowS
show_302 = id


-- '  <Vd>.<Ta>, { <Vn>.16B, <Vn+1>.16B, <Vn+2>.16B }, <Vm>.<Ta>'
-- TBL_asimdtbl_L3_3   tbl_advsimd.xml
-- TBX_asimdtbl_L3_3   tbx_advsimd.xml

type Logical_303 = '[]
type Binary_303  = '[]

decode_303 :: Fn Logical_303 a -> FnW Binary_303 (Decode a)
decode_303 f = return f

encode_303 :: FnW Binary_303 a -> Fn Logical_303 (Encode a)
encode_303 f = return f

parse_303 :: Fn Logical_303 a -> Parser a
parse_303 f = do
    return $ f

show_303 :: Fn Logical_303 ShowS
show_303 = id


-- '  { <Vt>.B, <Vt2>.B, <Vt3>.B, <Vt4>.B }[<index>], [<Xn|SP>], #4'
-- LD4_asisdlsop_B4_i4bld4_advsimd_sngl.xml
-- ST4_asisdlsop_B4_i4bst4_advsimd_sngl.xml

type Logical_304 = '[]
type Binary_304  = '[]

decode_304 :: Fn Logical_304 a -> FnW Binary_304 (Decode a)
decode_304 f = return f

encode_304 :: FnW Binary_304 a -> Fn Logical_304 (Encode a)
encode_304 f = return f

parse_304 :: Fn Logical_304 a -> Parser a
parse_304 f = do
    return $ f

show_304 :: Fn Logical_304 ShowS
show_304 = id


-- '  { <Vt>.H, <Vt2>.H, <Vt3>.H, <Vt4>.H }[<index>], [<Xn|SP>], #8'
-- LD4_asisdlsop_H4_i4hld4_advsimd_sngl.xml
-- ST4_asisdlsop_H4_i4hst4_advsimd_sngl.xml

type Logical_305 = '[]
type Binary_305  = '[]

decode_305 :: Fn Logical_305 a -> FnW Binary_305 (Decode a)
decode_305 f = return f

encode_305 :: FnW Binary_305 a -> Fn Logical_305 (Encode a)
encode_305 f = return f

parse_305 :: Fn Logical_305 a -> Parser a
parse_305 f = do
    return $ f

show_305 :: Fn Logical_305 ShowS
show_305 = id


-- '  { <Vt>.<T>, <Vt2>.<T>, <Vt3>.<T>, <Vt4>.<T> }, [<Xn|SP>], <Xm>'
-- LD1_asisdlsep_R4_r4 ld1_advsimd_mult.xml
-- LD4_asisdlsep_R4_r  ld4_advsimd_mult.xml
-- LD4R_asisdlsop_RX4_rld4r_advsimd.xml
-- ST1_asisdlsep_R4_r4 st1_advsimd_mult.xml
-- ST4_asisdlsep_R4_r  st4_advsimd_mult.xml

type Logical_306 = '[]
type Binary_306  = '[]

decode_306 :: Fn Logical_306 a -> FnW Binary_306 (Decode a)
decode_306 f = return f

encode_306 :: FnW Binary_306 a -> Fn Logical_306 (Encode a)
encode_306 f = return f

parse_306 :: Fn Logical_306 a -> Parser a
parse_306 f = do
    return $ f

show_306 :: Fn Logical_306 ShowS
show_306 = id


-- '  { <Vt>.D, <Vt2>.D, <Vt3>.D, <Vt4>.D }[<index>], [<Xn|SP>], #32'
-- LD4_asisdlsop_D4_i4dld4_advsimd_sngl.xml
-- ST4_asisdlsop_D4_i4dst4_advsimd_sngl.xml

type Logical_307 = '[]
type Binary_307  = '[]

decode_307 :: Fn Logical_307 a -> FnW Binary_307 (Decode a)
decode_307 f = return f

encode_307 :: FnW Binary_307 a -> Fn Logical_307 (Encode a)
encode_307 f = return f

parse_307 :: Fn Logical_307 a -> Parser a
parse_307 f = do
    return $ f

show_307 :: Fn Logical_307 ShowS
show_307 = id


-- '  { <Vt>.S, <Vt2>.S, <Vt3>.S, <Vt4>.S }[<index>], [<Xn|SP>], #16'
-- LD4_asisdlsop_S4_i4sld4_advsimd_sngl.xml
-- ST4_asisdlsop_S4_i4sst4_advsimd_sngl.xml

type Logical_308 = '[]
type Binary_308  = '[]

decode_308 :: Fn Logical_308 a -> FnW Binary_308 (Decode a)
decode_308 f = return f

encode_308 :: FnW Binary_308 a -> Fn Logical_308 (Encode a)
encode_308 f = return f

parse_308 :: Fn Logical_308 a -> Parser a
parse_308 f = do
    return $ f

show_308 :: Fn Logical_308 ShowS
show_308 = id


-- '  { <Vt>.<T>, <Vt2>.<T>, <Vt3>.<T>, <Vt4>.<T> }, [<Xn|SP>], <imm>'
-- LD1_asisdlsep_I4_i4 ld1_advsimd_mult.xml
-- LD4_asisdlsep_I4_i  ld4_advsimd_mult.xml
-- LD4R_asisdlsop_R4_i ld4r_advsimd.xml
-- ST1_asisdlsep_I4_i4 st1_advsimd_mult.xml
-- ST4_asisdlsep_I4_i  st4_advsimd_mult.xml

type Logical_309 = '[]
type Binary_309  = '[]

decode_309 :: Fn Logical_309 a -> FnW Binary_309 (Decode a)
decode_309 f = return f

encode_309 :: FnW Binary_309 a -> Fn Logical_309 (Encode a)
encode_309 f = return f

parse_309 :: Fn Logical_309 a -> Parser a
parse_309 f = do
    return $ f

show_309 :: Fn Logical_309 ShowS
show_309 = id


-- '  { <Vt>.B, <Vt2>.B, <Vt3>.B, <Vt4>.B }[<index>], [<Xn|SP>], <Xm>'
-- LD4_asisdlsop_BX4_r4bld4_advsimd_sngl.xml
-- ST4_asisdlsop_BX4_r4bst4_advsimd_sngl.xml

type Logical_310 = '[]
type Binary_310  = '[]

decode_310 :: Fn Logical_310 a -> FnW Binary_310 (Decode a)
decode_310 f = return f

encode_310 :: FnW Binary_310 a -> Fn Logical_310 (Encode a)
encode_310 f = return f

parse_310 :: Fn Logical_310 a -> Parser a
parse_310 f = do
    return $ f

show_310 :: Fn Logical_310 ShowS
show_310 = id


-- '  { <Vt>.D, <Vt2>.D, <Vt3>.D, <Vt4>.D }[<index>], [<Xn|SP>], <Xm>'
-- LD4_asisdlsop_DX4_r4dld4_advsimd_sngl.xml
-- ST4_asisdlsop_DX4_r4dst4_advsimd_sngl.xml

type Logical_311 = '[]
type Binary_311  = '[]

decode_311 :: Fn Logical_311 a -> FnW Binary_311 (Decode a)
decode_311 f = return f

encode_311 :: FnW Binary_311 a -> Fn Logical_311 (Encode a)
encode_311 f = return f

parse_311 :: Fn Logical_311 a -> Parser a
parse_311 f = do
    return $ f

show_311 :: Fn Logical_311 ShowS
show_311 = id


-- '  { <Vt>.H, <Vt2>.H, <Vt3>.H, <Vt4>.H }[<index>], [<Xn|SP>], <Xm>'
-- LD4_asisdlsop_HX4_r4hld4_advsimd_sngl.xml
-- ST4_asisdlsop_HX4_r4hst4_advsimd_sngl.xml

type Logical_312 = '[]
type Binary_312  = '[]

decode_312 :: Fn Logical_312 a -> FnW Binary_312 (Decode a)
decode_312 f = return f

encode_312 :: FnW Binary_312 a -> Fn Logical_312 (Encode a)
encode_312 f = return f

parse_312 :: Fn Logical_312 a -> Parser a
parse_312 f = do
    return $ f

show_312 :: Fn Logical_312 ShowS
show_312 = id


-- '  { <Vt>.S, <Vt2>.S, <Vt3>.S, <Vt4>.S }[<index>], [<Xn|SP>], <Xm>'
-- LD4_asisdlsop_SX4_r4sld4_advsimd_sngl.xml
-- ST4_asisdlsop_SX4_r4sst4_advsimd_sngl.xml

type Logical_313 = '[]
type Binary_313  = '[]

decode_313 :: Fn Logical_313 a -> FnW Binary_313 (Decode a)
decode_313 f = return f

encode_313 :: FnW Binary_313 a -> Fn Logical_313 (Encode a)
encode_313 f = return f

parse_313 :: Fn Logical_313 a -> Parser a
parse_313 f = do
    return $ f

show_313 :: Fn Logical_313 ShowS
show_313 = id


-- '  (<prfop>|#<imm5>), [<Xn|SP>, (<Wm>|<Xm>){, <extend> {<amount>}}]'
-- PRFM_P_ldst_regoff  prfm_reg.xml

type Logical_314 = '[]
type Binary_314  = '[]

decode_314 :: Fn Logical_314 a -> FnW Binary_314 (Decode a)
decode_314 f = return f

encode_314 :: FnW Binary_314 a -> Fn Logical_314 (Encode a)
encode_314 f = return f

parse_314 :: Fn Logical_314 a -> Parser a
parse_314 f = do
    return $ f

show_314 :: Fn Logical_314 ShowS
show_314 = id


-- '  <Vd>.<Ta>, { <Vn>.16B, <Vn+1>.16B, <Vn+2>.16B, <Vn+3>.16B }, <Vm>.<Ta>'
-- TBL_asimdtbl_L4_4   tbl_advsimd.xml
-- TBX_asimdtbl_L4_4   tbx_advsimd.xml

type Logical_315 = '[]
type Binary_315  = '[]

decode_315 :: Fn Logical_315 a -> FnW Binary_315 (Decode a)
decode_315 f = return f

encode_315 :: FnW Binary_315 a -> Fn Logical_315 (Encode a)
encode_315 f = return f

parse_315 :: Fn Logical_315 a -> Parser a
parse_315 f = do
    return $ f

show_315 :: Fn Logical_315 ShowS
show_315 = id



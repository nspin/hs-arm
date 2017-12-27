{-# LANGUAGE DataKinds #-}
{-# LANGUAGE KindSignatures #-}
{-# LANGUAGE PolyKinds #-}

module Harm.Tables.Logic.Base where

import Harm.Types
import Harm.Tables.Types
import Harm.Tables.Binary
import Harm.Tables.Assembly

import Data.Attoparsec.ByteString.Char8





{-# LANGUAGE DataKinds #-}
{-# LANGUAGE KindSignatures #-}
{-# LANGUAGE PolyKinds #-}

module Harm.Tables.Logic where

import Harm.Types
import Harm.Tables.Logic.Asm
import Harm.Tables.Logic.Binary
import Harm.Tables.Logic.Types

import Data.Attoparsec.ByteString.Char8

--- 0: ''
--- AUTIA1716_HI_system           autia.xml
--- AUTIASP_HI_system             autia.xml
--- AUTIAZ_HI_system              autia.xml
--- AUTIB1716_HI_system           autib.xml
--- AUTIBSP_HI_system             autib.xml
--- AUTIBZ_HI_system              autib.xml
--- DRPS_64E_branch_reg           drps.xml
--- ERET_64E_branch_reg           eret.xml
--- ERETAA_64E_branch_reg         ereta.xml
--- ERETAB_64E_branch_reg         ereta.xml
--- ESB_HI_system                 esb.xml
--- NOP_HI_system                 nop.xml
--- PACIA1716_HI_system           pacia.xml
--- PACIASP_HI_system             pacia.xml
--- PACIAZ_HI_system              pacia.xml
--- PACIB1716_HI_system           pacib.xml
--- PACIBSP_HI_system             pacib.xml
--- PACIBZ_HI_system              pacib.xml
--- RETAA_64E_branch_reg          reta.xml
--- RETAB_64E_branch_reg          reta.xml
--- SEV_HI_system                 sev.xml
--- SEVL_HI_system                sevl.xml
--- WFE_HI_system                 wfe.xml
--- WFI_HI_system                 wfi.xml
--- XPACLRI_HI_system             xpac.xml
--- YIELD_HI_system               yield.xml

type Logical_0 = '[]
type Binary_0  = '[]

decode_0 :: Fn Logical_0 a -> FnW Binary_0 (Decode a)
decode_0 f = return f

encode_0 :: FnW Binary_0 a -> Fn Logical_0 (Encode a)
encode_0 f = return f

parse_0 :: Fn Logical_0 a -> Parser a
parse_0 f = ws >> return f

show_0 :: Fn Logical_0 (String, ShowS)
show_0 = simple $ id


--- 1: '  <Xd>'
--- AUTDZA_64Z_dp_1src            autda.xml
--- AUTDZB_64Z_dp_1src            autdb.xml
--- AUTIZA_64Z_dp_1src            autia.xml
--- AUTIZB_64Z_dp_1src            autib.xml
--- PACDZA_64Z_dp_1src            pacda.xml
--- PACDZB_64Z_dp_1src            pacdb.xml
--- PACIZA_64Z_dp_1src            pacia.xml
--- PACIZB_64Z_dp_1src            pacib.xml
--- XPACD_64Z_dp_1src             xpac.xml
--- XPACI_64Z_dp_1src             xpac.xml

type Logical_1 = '[]
type Binary_1  = '[]

decode_1 :: Fn Logical_1 a -> FnW Binary_1 (Decode a)
decode_1 f = return f

encode_1 :: FnW Binary_1 a -> Fn Logical_1 (Encode a)
encode_1 f = return f

parse_1 :: Fn Logical_1 a -> Parser a
parse_1 f = ws >> return f

show_1 :: Fn Logical_1 (String, ShowS)
show_1 = simple $ id


--- 2: '  <Xn>'
--- BLR_64_branch_reg             blr.xml
--- BLRAAZ_64_branch_reg          blra.xml
--- BLRABZ_64_branch_reg          blra.xml
--- BR_64_branch_reg              br.xml
--- BRAAZ_64_branch_reg           bra.xml
--- BRABZ_64_branch_reg           bra.xml

type Logical_2 = '[]
type Binary_2  = '[]

decode_2 :: Fn Logical_2 a -> FnW Binary_2 (Decode a)
decode_2 f = return f

encode_2 :: FnW Binary_2 a -> Fn Logical_2 (Encode a)
encode_2 f = return f

parse_2 :: Fn Logical_2 a -> Parser a
parse_2 f = ws >> return f

show_2 :: Fn Logical_2 (String, ShowS)
show_2 = simple $ id


--- 3: ' CSYNC'
--- PSB_HC_system                 psb.xml

type Logical_3 = '[]
type Binary_3  = '[]

decode_3 :: Fn Logical_3 a -> FnW Binary_3 (Decode a)
decode_3 f = return f

encode_3 :: FnW Binary_3 a -> Fn Logical_3 (Encode a)
encode_3 f = return f

parse_3 :: Fn Logical_3 a -> Parser a
parse_3 f = ws >> return f

show_3 :: Fn Logical_3 (String, ShowS)
show_3 = simple $ id


--- 4: '  #<imm>'
--- BRK_EX_exception              brk.xml
--- HINT_1                        hint.xml
--- HINT_2                        hint.xml
--- HINT_3                        hint.xml
--- HLT_EX_exception              hlt.xml
--- HVC_EX_exception              hvc.xml
--- SMC_EX_exception              smc.xml
--- SVC_EX_exception              svc.xml

type Logical_4 = '[]
type Binary_4  = '[]

decode_4 :: Fn Logical_4 a -> FnW Binary_4 (Decode a)
decode_4 f = return f

encode_4 :: FnW Binary_4 a -> Fn Logical_4 (Encode a)
encode_4 f = return f

parse_4 :: Fn Logical_4 a -> Parser a
parse_4 f = ws >> return f

show_4 :: Fn Logical_4 (String, ShowS)
show_4 = simple $ id


--- 5: '  {<Xn>}'
--- RET_64R_branch_reg            ret.xml

type Logical_5 = '[]
type Binary_5  = '[]

decode_5 :: Fn Logical_5 a -> FnW Binary_5 (Decode a)
decode_5 f = return f

encode_5 :: FnW Binary_5 a -> Fn Logical_5 (Encode a)
encode_5 f = return f

parse_5 :: Fn Logical_5 a -> Parser a
parse_5 f = ws >> return f

show_5 :: Fn Logical_5 (String, ShowS)
show_5 = simple $ id


--- 6: '  <label>'
--- B_only_branch_imm             b_uncond.xml
--- BL_only_branch_imm            bl.xml

type Logical_6 = '[]
type Binary_6  = '[]

decode_6 :: Fn Logical_6 a -> FnW Binary_6 (Decode a)
decode_6 f = return f

encode_6 :: FnW Binary_6 a -> Fn Logical_6 (Encode a)
encode_6 f = return f

parse_6 :: Fn Logical_6 a -> Parser a
parse_6 f = ws >> return f

show_6 :: Fn Logical_6 (String, ShowS)
show_6 = simple $ id


--- 7: '  {#<imm>}'
--- CLREX_BN_system               clrex.xml
--- DCPS1_DC_exception            dcps1.xml
--- DCPS2_DC_exception            dcps2.xml
--- DCPS3_DC_exception            dcps3.xml

type Logical_7 = '[]
type Binary_7  = '[]

decode_7 :: Fn Logical_7 a -> FnW Binary_7 (Decode a)
decode_7 f = return f

encode_7 :: FnW Binary_7 a -> Fn Logical_7 (Encode a)
encode_7 f = return f

parse_7 :: Fn Logical_7 a -> Parser a
parse_7 f = ws >> return f

show_7 :: Fn Logical_7 (String, ShowS)
show_7 = simple $ id


--- 8: '  <Dd>, <Dn>'
--- FABS_D_floatdp1               fabs_float.xml
--- FMOV_D_floatdp1               fmov_float.xml
--- FNEG_D_floatdp1               fneg_float.xml
--- FRINTA_D_floatdp1             frinta_float.xml
--- FRINTI_D_floatdp1             frinti_float.xml
--- FRINTM_D_floatdp1             frintm_float.xml
--- FRINTN_D_floatdp1             frintn_float.xml
--- FRINTP_D_floatdp1             frintp_float.xml
--- FRINTX_D_floatdp1             frintx_float.xml
--- FRINTZ_D_floatdp1             frintz_float.xml
--- FSQRT_D_floatdp1              fsqrt_float.xml

type Logical_8 = '[]
type Binary_8  = '[]

decode_8 :: Fn Logical_8 a -> FnW Binary_8 (Decode a)
decode_8 f = return f

encode_8 :: FnW Binary_8 a -> Fn Logical_8 (Encode a)
encode_8 f = return f

parse_8 :: Fn Logical_8 a -> Parser a
parse_8 f = ws >> return f

show_8 :: Fn Logical_8 (String, ShowS)
show_8 = simple $ id


--- 9: '  <Dd>, <Hn>'
--- FCVT_DH_floatdp1              fcvt_float.xml

type Logical_9 = '[]
type Binary_9  = '[]

decode_9 :: Fn Logical_9 a -> FnW Binary_9 (Decode a)
decode_9 f = return f

encode_9 :: FnW Binary_9 a -> Fn Logical_9 (Encode a)
encode_9 f = return f

parse_9 :: Fn Logical_9 a -> Parser a
parse_9 f = ws >> return f

show_9 :: Fn Logical_9 (String, ShowS)
show_9 = simple $ id


--- 10: '  <Dd>, <Sn>'
--- FCVT_DS_floatdp1              fcvt_float.xml

type Logical_10 = '[]
type Binary_10  = '[]

decode_10 :: Fn Logical_10 a -> FnW Binary_10 (Decode a)
decode_10 f = return f

encode_10 :: FnW Binary_10 a -> Fn Logical_10 (Encode a)
encode_10 f = return f

parse_10 :: Fn Logical_10 a -> Parser a
parse_10 f = ws >> return f

show_10 :: Fn Logical_10 (String, ShowS)
show_10 = simple $ id


--- 11: '  <Dd>, <Wn>'
--- SCVTF_D32_float2int           scvtf_float_int.xml
--- UCVTF_D32_float2int           ucvtf_float_int.xml

type Logical_11 = '[]
type Binary_11  = '[]

decode_11 :: Fn Logical_11 a -> FnW Binary_11 (Decode a)
decode_11 f = return f

encode_11 :: FnW Binary_11 a -> Fn Logical_11 (Encode a)
encode_11 f = return f

parse_11 :: Fn Logical_11 a -> Parser a
parse_11 f = ws >> return f

show_11 :: Fn Logical_11 (String, ShowS)
show_11 = simple $ id


--- 12: '  <Dd>, <Xn>'
--- FMOV_D64_float2int            fmov_float_gen.xml
--- SCVTF_D64_float2int           scvtf_float_int.xml
--- UCVTF_D64_float2int           ucvtf_float_int.xml

type Logical_12 = '[]
type Binary_12  = '[]

decode_12 :: Fn Logical_12 a -> FnW Binary_12 (Decode a)
decode_12 f = return f

encode_12 :: FnW Binary_12 a -> Fn Logical_12 (Encode a)
encode_12 f = return f

parse_12 :: Fn Logical_12 a -> Parser a
parse_12 f = ws >> return f

show_12 :: Fn Logical_12 (String, ShowS)
show_12 = simple $ id


--- 13: '  <Dn>, #0.0'
--- FCMP_DZ_floatcmp              fcmp_float.xml
--- FCMPE_DZ_floatcmp             fcmpe_float.xml

type Logical_13 = '[]
type Binary_13  = '[]

decode_13 :: Fn Logical_13 a -> FnW Binary_13 (Decode a)
decode_13 f = return f

encode_13 :: FnW Binary_13 a -> Fn Logical_13 (Encode a)
encode_13 f = return f

parse_13 :: Fn Logical_13 a -> Parser a
parse_13 f = ws >> return f

show_13 :: Fn Logical_13 (String, ShowS)
show_13 = simple $ id


--- 14: '  <Dn>, <Dm>'
--- FCMP_D_floatcmp               fcmp_float.xml
--- FCMPE_D_floatcmp              fcmpe_float.xml

type Logical_14 = '[]
type Binary_14  = '[]

decode_14 :: Fn Logical_14 a -> FnW Binary_14 (Decode a)
decode_14 f = return f

encode_14 :: FnW Binary_14 a -> Fn Logical_14 (Encode a)
encode_14 f = return f

parse_14 :: Fn Logical_14 a -> Parser a
parse_14 f = ws >> return f

show_14 :: Fn Logical_14 (String, ShowS)
show_14 = simple $ id


--- 15: '  <Hd>, <Dn>'
--- FCVT_HD_floatdp1              fcvt_float.xml

type Logical_15 = '[]
type Binary_15  = '[]

decode_15 :: Fn Logical_15 a -> FnW Binary_15 (Decode a)
decode_15 f = return f

encode_15 :: FnW Binary_15 a -> Fn Logical_15 (Encode a)
encode_15 f = return f

parse_15 :: Fn Logical_15 a -> Parser a
parse_15 f = ws >> return f

show_15 :: Fn Logical_15 (String, ShowS)
show_15 = simple $ id


--- 16: '  <Hd>, <Hn>'
--- FABS_H_floatdp1               fabs_float.xml
--- FCVTAS_asisdmiscfp16_R        fcvtas_advsimd.xml
--- FCVTAU_asisdmiscfp16_R        fcvtau_advsimd.xml
--- FCVTMS_asisdmiscfp16_R        fcvtms_advsimd.xml
--- FCVTMU_asisdmiscfp16_R        fcvtmu_advsimd.xml
--- FCVTNS_asisdmiscfp16_R        fcvtns_advsimd.xml
--- FCVTNU_asisdmiscfp16_R        fcvtnu_advsimd.xml
--- FCVTPS_asisdmiscfp16_R        fcvtps_advsimd.xml
--- FCVTPU_asisdmiscfp16_R        fcvtpu_advsimd.xml
--- FCVTZS_asisdmiscfp16_R        fcvtzs_advsimd_int.xml
--- FCVTZU_asisdmiscfp16_R        fcvtzu_advsimd_int.xml
--- FMOV_H_floatdp1               fmov_float.xml
--- FNEG_H_floatdp1               fneg_float.xml
--- FRECPE_asisdmiscfp16_R        frecpe_advsimd.xml
--- FRECPX_asisdmiscfp16_R        frecpx_advsimd.xml
--- FRINTA_H_floatdp1             frinta_float.xml
--- FRINTI_H_floatdp1             frinti_float.xml
--- FRINTM_H_floatdp1             frintm_float.xml
--- FRINTN_H_floatdp1             frintn_float.xml
--- FRINTP_H_floatdp1             frintp_float.xml
--- FRINTX_H_floatdp1             frintx_float.xml
--- FRINTZ_H_floatdp1             frintz_float.xml
--- FRSQRTE_asisdmiscfp16_R       frsqrte_advsimd.xml
--- FSQRT_H_floatdp1              fsqrt_float.xml
--- SCVTF_asisdmiscfp16_R         scvtf_advsimd_int.xml
--- UCVTF_asisdmiscfp16_R         ucvtf_advsimd_int.xml

type Logical_16 = '[]
type Binary_16  = '[]

decode_16 :: Fn Logical_16 a -> FnW Binary_16 (Decode a)
decode_16 f = return f

encode_16 :: FnW Binary_16 a -> Fn Logical_16 (Encode a)
encode_16 f = return f

parse_16 :: Fn Logical_16 a -> Parser a
parse_16 f = ws >> return f

show_16 :: Fn Logical_16 (String, ShowS)
show_16 = simple $ id


--- 17: '  <Hd>, <Sn>'
--- FCVT_HS_floatdp1              fcvt_float.xml

type Logical_17 = '[]
type Binary_17  = '[]

decode_17 :: Fn Logical_17 a -> FnW Binary_17 (Decode a)
decode_17 f = return f

encode_17 :: FnW Binary_17 a -> Fn Logical_17 (Encode a)
encode_17 f = return f

parse_17 :: Fn Logical_17 a -> Parser a
parse_17 f = ws >> return f

show_17 :: Fn Logical_17 (String, ShowS)
show_17 = simple $ id


--- 18: '  <Hd>, <Wn>'
--- FMOV_H32_float2int            fmov_float_gen.xml
--- SCVTF_H32_float2int           scvtf_float_int.xml
--- UCVTF_H32_float2int           ucvtf_float_int.xml

type Logical_18 = '[]
type Binary_18  = '[]

decode_18 :: Fn Logical_18 a -> FnW Binary_18 (Decode a)
decode_18 f = return f

encode_18 :: FnW Binary_18 a -> Fn Logical_18 (Encode a)
encode_18 f = return f

parse_18 :: Fn Logical_18 a -> Parser a
parse_18 f = ws >> return f

show_18 :: Fn Logical_18 (String, ShowS)
show_18 = simple $ id


--- 19: '  <Hd>, <Xn>'
--- FMOV_H64_float2int            fmov_float_gen.xml
--- SCVTF_H64_float2int           scvtf_float_int.xml
--- UCVTF_H64_float2int           ucvtf_float_int.xml

type Logical_19 = '[]
type Binary_19  = '[]

decode_19 :: Fn Logical_19 a -> FnW Binary_19 (Decode a)
decode_19 f = return f

encode_19 :: FnW Binary_19 a -> Fn Logical_19 (Encode a)
encode_19 f = return f

parse_19 :: Fn Logical_19 a -> Parser a
parse_19 f = ws >> return f

show_19 :: Fn Logical_19 (String, ShowS)
show_19 = simple $ id


--- 20: '  <Hn>, #0.0'
--- FCMP_HZ_floatcmp              fcmp_float.xml
--- FCMPE_HZ_floatcmp             fcmpe_float.xml

type Logical_20 = '[]
type Binary_20  = '[]

decode_20 :: Fn Logical_20 a -> FnW Binary_20 (Decode a)
decode_20 f = return f

encode_20 :: FnW Binary_20 a -> Fn Logical_20 (Encode a)
encode_20 f = return f

parse_20 :: Fn Logical_20 a -> Parser a
parse_20 f = ws >> return f

show_20 :: Fn Logical_20 (String, ShowS)
show_20 = simple $ id


--- 21: '  <Hn>, <Hm>'
--- FCMP_H_floatcmp               fcmp_float.xml
--- FCMPE_H_floatcmp              fcmpe_float.xml

type Logical_21 = '[]
type Binary_21  = '[]

decode_21 :: Fn Logical_21 a -> FnW Binary_21 (Decode a)
decode_21 f = return f

encode_21 :: FnW Binary_21 a -> Fn Logical_21 (Encode a)
encode_21 f = return f

parse_21 :: Fn Logical_21 a -> Parser a
parse_21 f = ws >> return f

show_21 :: Fn Logical_21 (String, ShowS)
show_21 = simple $ id


--- 22: '  <Sd>, <Dn>'
--- FCVT_SD_floatdp1              fcvt_float.xml

type Logical_22 = '[]
type Binary_22  = '[]

decode_22 :: Fn Logical_22 a -> FnW Binary_22 (Decode a)
decode_22 f = return f

encode_22 :: FnW Binary_22 a -> Fn Logical_22 (Encode a)
encode_22 f = return f

parse_22 :: Fn Logical_22 a -> Parser a
parse_22 f = ws >> return f

show_22 :: Fn Logical_22 (String, ShowS)
show_22 = simple $ id


--- 23: '  <Sd>, <Hn>'
--- FCVT_SH_floatdp1              fcvt_float.xml

type Logical_23 = '[]
type Binary_23  = '[]

decode_23 :: Fn Logical_23 a -> FnW Binary_23 (Decode a)
decode_23 f = return f

encode_23 :: FnW Binary_23 a -> Fn Logical_23 (Encode a)
encode_23 f = return f

parse_23 :: Fn Logical_23 a -> Parser a
parse_23 f = ws >> return f

show_23 :: Fn Logical_23 (String, ShowS)
show_23 = simple $ id


--- 24: '  <Sd>, <Sn>'
--- FABS_S_floatdp1               fabs_float.xml
--- FMOV_S_floatdp1               fmov_float.xml
--- FNEG_S_floatdp1               fneg_float.xml
--- FRINTA_S_floatdp1             frinta_float.xml
--- FRINTI_S_floatdp1             frinti_float.xml
--- FRINTM_S_floatdp1             frintm_float.xml
--- FRINTN_S_floatdp1             frintn_float.xml
--- FRINTP_S_floatdp1             frintp_float.xml
--- FRINTX_S_floatdp1             frintx_float.xml
--- FRINTZ_S_floatdp1             frintz_float.xml
--- FSQRT_S_floatdp1              fsqrt_float.xml
--- SHA1H_SS_cryptosha2           sha1h_advsimd.xml

type Logical_24 = '[]
type Binary_24  = '[]

decode_24 :: Fn Logical_24 a -> FnW Binary_24 (Decode a)
decode_24 f = return f

encode_24 :: FnW Binary_24 a -> Fn Logical_24 (Encode a)
encode_24 f = return f

parse_24 :: Fn Logical_24 a -> Parser a
parse_24 f = ws >> return f

show_24 :: Fn Logical_24 (String, ShowS)
show_24 = simple $ id


--- 25: '  <Sd>, <Wn>'
--- FMOV_S32_float2int            fmov_float_gen.xml
--- SCVTF_S32_float2int           scvtf_float_int.xml
--- UCVTF_S32_float2int           ucvtf_float_int.xml

type Logical_25 = '[]
type Binary_25  = '[]

decode_25 :: Fn Logical_25 a -> FnW Binary_25 (Decode a)
decode_25 f = return f

encode_25 :: FnW Binary_25 a -> Fn Logical_25 (Encode a)
encode_25 f = return f

parse_25 :: Fn Logical_25 a -> Parser a
parse_25 f = ws >> return f

show_25 :: Fn Logical_25 (String, ShowS)
show_25 = simple $ id


--- 26: '  <Sd>, <Xn>'
--- SCVTF_S64_float2int           scvtf_float_int.xml
--- UCVTF_S64_float2int           ucvtf_float_int.xml

type Logical_26 = '[]
type Binary_26  = '[]

decode_26 :: Fn Logical_26 a -> FnW Binary_26 (Decode a)
decode_26 f = return f

encode_26 :: FnW Binary_26 a -> Fn Logical_26 (Encode a)
encode_26 f = return f

parse_26 :: Fn Logical_26 a -> Parser a
parse_26 f = ws >> return f

show_26 :: Fn Logical_26 (String, ShowS)
show_26 = simple $ id


--- 27: '  <Sn>, #0.0'
--- FCMP_SZ_floatcmp              fcmp_float.xml
--- FCMPE_SZ_floatcmp             fcmpe_float.xml

type Logical_27 = '[]
type Binary_27  = '[]

decode_27 :: Fn Logical_27 a -> FnW Binary_27 (Decode a)
decode_27 f = return f

encode_27 :: FnW Binary_27 a -> Fn Logical_27 (Encode a)
encode_27 f = return f

parse_27 :: Fn Logical_27 a -> Parser a
parse_27 f = ws >> return f

show_27 :: Fn Logical_27 (String, ShowS)
show_27 = simple $ id


--- 28: '  <Sn>, <Sm>'
--- FCMP_S_floatcmp               fcmp_float.xml
--- FCMPE_S_floatcmp              fcmpe_float.xml

type Logical_28 = '[]
type Binary_28  = '[]

decode_28 :: Fn Logical_28 a -> FnW Binary_28 (Decode a)
decode_28 f = return f

encode_28 :: FnW Binary_28 a -> Fn Logical_28 (Encode a)
encode_28 f = return f

parse_28 :: Fn Logical_28 a -> Parser a
parse_28 f = ws >> return f

show_28 :: Fn Logical_28 (String, ShowS)
show_28 = simple $ id


--- 29: '  <Wd>, <Dn>'
--- FCVTAS_32D_float2int          fcvtas_float.xml
--- FCVTAU_32D_float2int          fcvtau_float.xml
--- FCVTMS_32D_float2int          fcvtms_float.xml
--- FCVTMU_32D_float2int          fcvtmu_float.xml
--- FCVTNS_32D_float2int          fcvtns_float.xml
--- FCVTNU_32D_float2int          fcvtnu_float.xml
--- FCVTPS_32D_float2int          fcvtps_float.xml
--- FCVTPU_32D_float2int          fcvtpu_float.xml
--- FCVTZS_32D_float2int          fcvtzs_float_int.xml
--- FCVTZU_32D_float2int          fcvtzu_float_int.xml
--- FJCVTZS_32D_float2int         fjcvtzs.xml

type Logical_29 = '[]
type Binary_29  = '[]

decode_29 :: Fn Logical_29 a -> FnW Binary_29 (Decode a)
decode_29 f = return f

encode_29 :: FnW Binary_29 a -> Fn Logical_29 (Encode a)
encode_29 f = return f

parse_29 :: Fn Logical_29 a -> Parser a
parse_29 f = ws >> return f

show_29 :: Fn Logical_29 (String, ShowS)
show_29 = simple $ id


--- 30: '  <Wd>, <Hn>'
--- FCVTAS_32H_float2int          fcvtas_float.xml
--- FCVTAU_32H_float2int          fcvtau_float.xml
--- FCVTMS_32H_float2int          fcvtms_float.xml
--- FCVTMU_32H_float2int          fcvtmu_float.xml
--- FCVTNS_32H_float2int          fcvtns_float.xml
--- FCVTNU_32H_float2int          fcvtnu_float.xml
--- FCVTPS_32H_float2int          fcvtps_float.xml
--- FCVTPU_32H_float2int          fcvtpu_float.xml
--- FCVTZS_32H_float2int          fcvtzs_float_int.xml
--- FCVTZU_32H_float2int          fcvtzu_float_int.xml
--- FMOV_32H_float2int            fmov_float_gen.xml

type Logical_30 = '[]
type Binary_30  = '[]

decode_30 :: Fn Logical_30 a -> FnW Binary_30 (Decode a)
decode_30 f = return f

encode_30 :: FnW Binary_30 a -> Fn Logical_30 (Encode a)
encode_30 f = return f

parse_30 :: Fn Logical_30 a -> Parser a
parse_30 f = ws >> return f

show_30 :: Fn Logical_30 (String, ShowS)
show_30 = simple $ id


--- 31: '  <Wd>, <Sn>'
--- FCVTAS_32S_float2int          fcvtas_float.xml
--- FCVTAU_32S_float2int          fcvtau_float.xml
--- FCVTMS_32S_float2int          fcvtms_float.xml
--- FCVTMU_32S_float2int          fcvtmu_float.xml
--- FCVTNS_32S_float2int          fcvtns_float.xml
--- FCVTNU_32S_float2int          fcvtnu_float.xml
--- FCVTPS_32S_float2int          fcvtps_float.xml
--- FCVTPU_32S_float2int          fcvtpu_float.xml
--- FCVTZS_32S_float2int          fcvtzs_float_int.xml
--- FCVTZU_32S_float2int          fcvtzu_float_int.xml
--- FMOV_32S_float2int            fmov_float_gen.xml

type Logical_31 = '[]
type Binary_31  = '[]

decode_31 :: Fn Logical_31 a -> FnW Binary_31 (Decode a)
decode_31 f = return f

encode_31 :: FnW Binary_31 a -> Fn Logical_31 (Encode a)
encode_31 f = return f

parse_31 :: Fn Logical_31 a -> Parser a
parse_31 f = ws >> return f

show_31 :: Fn Logical_31 (String, ShowS)
show_31 = simple $ id


--- 32: '  <Wd>, <Wn>'
--- CLS_32_dp_1src                cls_int.xml
--- CLZ_32_dp_1src                clz_int.xml
--- RBIT_32_dp_1src               rbit_int.xml
--- REV_32_dp_1src                rev.xml
--- REV16_32_dp_1src              rev16_int.xml

type Logical_32 = '[]
type Binary_32  = '[]

decode_32 :: Fn Logical_32 a -> FnW Binary_32 (Decode a)
decode_32 f = return f

encode_32 :: FnW Binary_32 a -> Fn Logical_32 (Encode a)
encode_32 f = return f

parse_32 :: Fn Logical_32 a -> Parser a
parse_32 f = ws >> return f

show_32 :: Fn Logical_32 (String, ShowS)
show_32 = simple $ id


--- 33: '  <Xd>, <Dn>'
--- FCVTAS_64D_float2int          fcvtas_float.xml
--- FCVTAU_64D_float2int          fcvtau_float.xml
--- FCVTMS_64D_float2int          fcvtms_float.xml
--- FCVTMU_64D_float2int          fcvtmu_float.xml
--- FCVTNS_64D_float2int          fcvtns_float.xml
--- FCVTNU_64D_float2int          fcvtnu_float.xml
--- FCVTPS_64D_float2int          fcvtps_float.xml
--- FCVTPU_64D_float2int          fcvtpu_float.xml
--- FCVTZS_64D_float2int          fcvtzs_float_int.xml
--- FCVTZU_64D_float2int          fcvtzu_float_int.xml
--- FMOV_64D_float2int            fmov_float_gen.xml

type Logical_33 = '[]
type Binary_33  = '[]

decode_33 :: Fn Logical_33 a -> FnW Binary_33 (Decode a)
decode_33 f = return f

encode_33 :: FnW Binary_33 a -> Fn Logical_33 (Encode a)
encode_33 f = return f

parse_33 :: Fn Logical_33 a -> Parser a
parse_33 f = ws >> return f

show_33 :: Fn Logical_33 (String, ShowS)
show_33 = simple $ id


--- 34: '  <Xd>, <Hn>'
--- FCVTAS_64H_float2int          fcvtas_float.xml
--- FCVTAU_64H_float2int          fcvtau_float.xml
--- FCVTMS_64H_float2int          fcvtms_float.xml
--- FCVTMU_64H_float2int          fcvtmu_float.xml
--- FCVTNS_64H_float2int          fcvtns_float.xml
--- FCVTNU_64H_float2int          fcvtnu_float.xml
--- FCVTPS_64H_float2int          fcvtps_float.xml
--- FCVTPU_64H_float2int          fcvtpu_float.xml
--- FCVTZS_64H_float2int          fcvtzs_float_int.xml
--- FCVTZU_64H_float2int          fcvtzu_float_int.xml
--- FMOV_64H_float2int            fmov_float_gen.xml

type Logical_34 = '[]
type Binary_34  = '[]

decode_34 :: Fn Logical_34 a -> FnW Binary_34 (Decode a)
decode_34 f = return f

encode_34 :: FnW Binary_34 a -> Fn Logical_34 (Encode a)
encode_34 f = return f

parse_34 :: Fn Logical_34 a -> Parser a
parse_34 f = ws >> return f

show_34 :: Fn Logical_34 (String, ShowS)
show_34 = simple $ id


--- 35: '  <Xd>, <Sn>'
--- FCVTAS_64S_float2int          fcvtas_float.xml
--- FCVTAU_64S_float2int          fcvtau_float.xml
--- FCVTMS_64S_float2int          fcvtms_float.xml
--- FCVTMU_64S_float2int          fcvtmu_float.xml
--- FCVTNS_64S_float2int          fcvtns_float.xml
--- FCVTNU_64S_float2int          fcvtnu_float.xml
--- FCVTPS_64S_float2int          fcvtps_float.xml
--- FCVTPU_64S_float2int          fcvtpu_float.xml
--- FCVTZS_64S_float2int          fcvtzs_float_int.xml
--- FCVTZU_64S_float2int          fcvtzu_float_int.xml

type Logical_35 = '[]
type Binary_35  = '[]

decode_35 :: Fn Logical_35 a -> FnW Binary_35 (Decode a)
decode_35 f = return f

encode_35 :: FnW Binary_35 a -> Fn Logical_35 (Encode a)
encode_35 f = return f

parse_35 :: Fn Logical_35 a -> Parser a
parse_35 f = ws >> return f

show_35 :: Fn Logical_35 (String, ShowS)
show_35 = simple $ id


--- 36: '  <Xd>, <Xn>'
--- CLS_64_dp_1src                cls_int.xml
--- CLZ_64_dp_1src                clz_int.xml
--- RBIT_64_dp_1src               rbit_int.xml
--- REV_64_dp_1src                rev.xml
--- REV16_64_dp_1src              rev16_int.xml
--- REV32_64_dp_1src              rev32_int.xml

type Logical_36 = '[]
type Binary_36  = '[]

decode_36 :: Fn Logical_36 a -> FnW Binary_36 (Decode a)
decode_36 f = return f

encode_36 :: FnW Binary_36 a -> Fn Logical_36 (Encode a)
encode_36 f = return f

parse_36 :: Fn Logical_36 a -> Parser a
parse_36 f = ws >> return f

show_36 :: Fn Logical_36 (String, ShowS)
show_36 = simple $ id


--- 37: '  <Dd>, #<imm>'
--- FMOV_D_floatimm               fmov_float_imm.xml
--- MOVI_asimdimm_D_ds            movi_advsimd.xml

type Logical_37 = '[]
type Binary_37  = '[]

decode_37 :: Fn Logical_37 a -> FnW Binary_37 (Decode a)
decode_37 f = return f

encode_37 :: FnW Binary_37 a -> Fn Logical_37 (Encode a)
encode_37 f = return f

parse_37 :: Fn Logical_37 a -> Parser a
parse_37 f = ws >> return f

show_37 :: Fn Logical_37 (String, ShowS)
show_37 = simple $ id


--- 38: '  <Hd>, #<imm>'
--- FMOV_H_floatimm               fmov_float_imm.xml

type Logical_38 = '[]
type Binary_38  = '[]

decode_38 :: Fn Logical_38 a -> FnW Binary_38 (Decode a)
decode_38 f = return f

encode_38 :: FnW Binary_38 a -> Fn Logical_38 (Encode a)
encode_38 f = return f

parse_38 :: Fn Logical_38 a -> Parser a
parse_38 f = ws >> return f

show_38 :: Fn Logical_38 (String, ShowS)
show_38 = simple $ id


--- 39: '  <Sd>, #<imm>'
--- FMOV_S_floatimm               fmov_float_imm.xml

type Logical_39 = '[]
type Binary_39  = '[]

decode_39 :: Fn Logical_39 a -> FnW Binary_39 (Decode a)
decode_39 f = return f

encode_39 :: FnW Binary_39 a -> Fn Logical_39 (Encode a)
encode_39 f = return f

parse_39 :: Fn Logical_39 a -> Parser a
parse_39 f = ws >> return f

show_39 :: Fn Logical_39 (String, ShowS)
show_39 = simple $ id


--- 40: '  <Dt>, <label>'
--- LDR_D_loadlit                 ldr_lit_fpsimd.xml

type Logical_40 = '[]
type Binary_40  = '[]

decode_40 :: Fn Logical_40 a -> FnW Binary_40 (Decode a)
decode_40 f = return f

encode_40 :: FnW Binary_40 a -> Fn Logical_40 (Encode a)
encode_40 f = return f

parse_40 :: Fn Logical_40 a -> Parser a
parse_40 f = ws >> return f

show_40 :: Fn Logical_40 (String, ShowS)
show_40 = simple $ id


--- 41: '  <Qt>, <label>'
--- LDR_Q_loadlit                 ldr_lit_fpsimd.xml

type Logical_41 = '[]
type Binary_41  = '[]

decode_41 :: Fn Logical_41 a -> FnW Binary_41 (Decode a)
decode_41 f = return f

encode_41 :: FnW Binary_41 a -> Fn Logical_41 (Encode a)
encode_41 f = return f

parse_41 :: Fn Logical_41 a -> Parser a
parse_41 f = ws >> return f

show_41 :: Fn Logical_41 (String, ShowS)
show_41 = simple $ id


--- 42: '  <St>, <label>'
--- LDR_S_loadlit                 ldr_lit_fpsimd.xml

type Logical_42 = '[]
type Binary_42  = '[]

decode_42 :: Fn Logical_42 a -> FnW Binary_42 (Decode a)
decode_42 f = return f

encode_42 :: FnW Binary_42 a -> Fn Logical_42 (Encode a)
encode_42 f = return f

parse_42 :: Fn Logical_42 a -> Parser a
parse_42 f = ws >> return f

show_42 :: Fn Logical_42 (String, ShowS)
show_42 = simple $ id


--- 43: '  <Wt>, <label>'
--- CBNZ_32_compbranch            cbnz.xml
--- CBZ_32_compbranch             cbz.xml
--- LDR_32_loadlit                ldr_lit_gen.xml

type Logical_43 = '[]
type Binary_43  = '[]

decode_43 :: Fn Logical_43 a -> FnW Binary_43 (Decode a)
decode_43 f = return f

encode_43 :: FnW Binary_43 a -> Fn Logical_43 (Encode a)
encode_43 f = return f

parse_43 :: Fn Logical_43 a -> Parser a
parse_43 f = ws >> return f

show_43 :: Fn Logical_43 (String, ShowS)
show_43 = simple $ id


--- 44: '  <Xd>, <Xn|SP>'
--- AUTDA_64P_dp_1src             autda.xml
--- AUTDB_64P_dp_1src             autdb.xml
--- AUTIA_64P_dp_1src             autia.xml
--- AUTIB_64P_dp_1src             autib.xml
--- PACDA_64P_dp_1src             pacda.xml
--- PACDB_64P_dp_1src             pacdb.xml
--- PACIA_64P_dp_1src             pacia.xml
--- PACIB_64P_dp_1src             pacib.xml

type Logical_44 = '[]
type Binary_44  = '[]

decode_44 :: Fn Logical_44 a -> FnW Binary_44 (Decode a)
decode_44 f = return f

encode_44 :: FnW Binary_44 a -> Fn Logical_44 (Encode a)
encode_44 f = return f

parse_44 :: Fn Logical_44 a -> Parser a
parse_44 f = ws >> return f

show_44 :: Fn Logical_44 (String, ShowS)
show_44 = simple $ id


--- 45: '  <Xd>, <label>'
--- ADR_only_pcreladdr            adr.xml
--- ADRP_only_pcreladdr           adrp.xml

type Logical_45 = '[Xn, I 21]
type Binary_45  = '[5, 19, 2]

decode_45 :: Fn Logical_45 a -> FnW Binary_45 (Decode a)
decode_45 f rd immhi immlo = f <$> dec rd <*> dec (immhi .: immlo)

encode_45 :: FnW Binary_45 a -> Fn Logical_45 (Encode a)
encode_45 f xn label = split (viewW label) $ \immhi immlo ->
    f <$> enc xn <*> enc immhi <*> enc immlo

parse_45 :: Fn Logical_45 a -> Parser a
parse_45 f = ws >> f <$> prs <+> (viewI <$> prshex)

show_45 :: Fn Logical_45 (String, ShowS)
show_45 xn label = simple $ asm xn +> asmhex (viewW label)


--- 46: '  <Xn>, <Xm|SP>'
--- BLRAA_64P_branch_reg          blra.xml
--- BLRAB_64P_branch_reg          blra.xml
--- BRAA_64P_branch_reg           bra.xml
--- BRAB_64P_branch_reg           bra.xml

type Logical_46 = '[]
type Binary_46  = '[]

decode_46 :: Fn Logical_46 a -> FnW Binary_46 (Decode a)
decode_46 f = return f

encode_46 :: FnW Binary_46 a -> Fn Logical_46 (Encode a)
encode_46 f = return f

parse_46 :: Fn Logical_46 a -> Parser a
parse_46 f = ws >> return f

show_46 :: Fn Logical_46 (String, ShowS)
show_46 = simple $ id


--- 47: '  <Xt>, <label>'
--- CBNZ_64_compbranch            cbnz.xml
--- CBZ_64_compbranch             cbz.xml
--- LDR_64_loadlit                ldr_lit_gen.xml
--- LDRSW_64_loadlit              ldrsw_lit.xml

type Logical_47 = '[]
type Binary_47  = '[]

decode_47 :: Fn Logical_47 a -> FnW Binary_47 (Decode a)
decode_47 f = return f

encode_47 :: FnW Binary_47 a -> Fn Logical_47 (Encode a)
encode_47 f = return f

parse_47 :: Fn Logical_47 a -> Parser a
parse_47 f = ws >> return f

show_47 :: Fn Logical_47 (String, ShowS)
show_47 = simple $ id


--- 48: '  <V><d>, <V><n>'
--- ABS_asisdmisc_R               abs_advsimd.xml
--- FCVTAS_asisdmisc_R            fcvtas_advsimd.xml
--- FCVTAU_asisdmisc_R            fcvtau_advsimd.xml
--- FCVTMS_asisdmisc_R            fcvtms_advsimd.xml
--- FCVTMU_asisdmisc_R            fcvtmu_advsimd.xml
--- FCVTNS_asisdmisc_R            fcvtns_advsimd.xml
--- FCVTNU_asisdmisc_R            fcvtnu_advsimd.xml
--- FCVTPS_asisdmisc_R            fcvtps_advsimd.xml
--- FCVTPU_asisdmisc_R            fcvtpu_advsimd.xml
--- FCVTZS_asisdmisc_R            fcvtzs_advsimd_int.xml
--- FCVTZU_asisdmisc_R            fcvtzu_advsimd_int.xml
--- FRECPE_asisdmisc_R            frecpe_advsimd.xml
--- FRECPX_asisdmisc_R            frecpx_advsimd.xml
--- FRSQRTE_asisdmisc_R           frsqrte_advsimd.xml
--- NEG_asisdmisc_R               neg_advsimd.xml
--- SCVTF_asisdmisc_R             scvtf_advsimd_int.xml
--- SQABS_asisdmisc_R             sqabs_advsimd.xml
--- SQNEG_asisdmisc_R             sqneg_advsimd.xml
--- SUQADD_asisdmisc_R            suqadd_advsimd.xml
--- UCVTF_asisdmisc_R             ucvtf_advsimd_int.xml
--- USQADD_asisdmisc_R            usqadd_advsimd.xml

type Logical_48 = '[]
type Binary_48  = '[]

decode_48 :: Fn Logical_48 a -> FnW Binary_48 (Decode a)
decode_48 f = return f

encode_48 :: FnW Binary_48 a -> Fn Logical_48 (Encode a)
encode_48 f = return f

parse_48 :: Fn Logical_48 a -> Parser a
parse_48 f = ws >> return f

show_48 :: Fn Logical_48 (String, ShowS)
show_48 = simple $ id


--- 49: '.<cond>  <label>'
--- B_only_condbranch             b_cond.xml

type Logical_49 = '[]
type Binary_49  = '[]

decode_49 :: Fn Logical_49 a -> FnW Binary_49 (Decode a)
decode_49 f = return f

encode_49 :: FnW Binary_49 a -> Fn Logical_49 (Encode a)
encode_49 f = return f

parse_49 :: Fn Logical_49 a -> Parser a
parse_49 f = ws >> return f

show_49 :: Fn Logical_49 (String, ShowS)
show_49 = simple $ id


--- 50: '  <Vd>.2D, #<imm>'
--- FMOV_asimdimm_D2_d            fmov_advsimd.xml
--- MOVI_asimdimm_D2_d            movi_advsimd.xml

type Logical_50 = '[]
type Binary_50  = '[]

decode_50 :: Fn Logical_50 a -> FnW Binary_50 (Decode a)
decode_50 f = return f

encode_50 :: FnW Binary_50 a -> Fn Logical_50 (Encode a)
encode_50 f = return f

parse_50 :: Fn Logical_50 a -> Parser a
parse_50 f = ws >> return f

show_50 :: Fn Logical_50 (String, ShowS)
show_50 = simple $ id


--- 51: '  <Vd>.D[1], <Xn>'
--- FMOV_V64I_float2int           fmov_float_gen.xml

type Logical_51 = '[]
type Binary_51  = '[]

decode_51 :: Fn Logical_51 a -> FnW Binary_51 (Decode a)
decode_51 f = return f

encode_51 :: FnW Binary_51 a -> Fn Logical_51 (Encode a)
encode_51 f = return f

parse_51 :: Fn Logical_51 a -> Parser a
parse_51 f = ws >> return f

show_51 :: Fn Logical_51 (String, ShowS)
show_51 = simple $ id


--- 52: '  <Xd>, <Vn>.D[1]'
--- FMOV_64VX_float2int           fmov_float_gen.xml

type Logical_52 = '[]
type Binary_52  = '[]

decode_52 :: Fn Logical_52 a -> FnW Binary_52 (Decode a)
decode_52 f = return f

encode_52 :: FnW Binary_52 a -> Fn Logical_52 (Encode a)
encode_52 f = return f

parse_52 :: Fn Logical_52 a -> Parser a
parse_52 f = ws >> return f

show_52 :: Fn Logical_52 (String, ShowS)
show_52 = simple $ id


--- 53: '  <option>|#<imm>'
--- DMB_BO_system                 dmb.xml
--- DSB_BO_system                 dsb.xml

type Logical_53 = '[]
type Binary_53  = '[]

decode_53 :: Fn Logical_53 a -> FnW Binary_53 (Decode a)
decode_53 f = return f

encode_53 :: FnW Binary_53 a -> Fn Logical_53 (Encode a)
encode_53 f = return f

parse_53 :: Fn Logical_53 a -> Parser a
parse_53 f = ws >> return f

show_53 :: Fn Logical_53 (String, ShowS)
show_53 = simple $ id


--- 54: '  <Dd>, <Dn>, <Dm>'
--- FADD_D_floatdp2               fadd_float.xml
--- FDIV_D_floatdp2               fdiv_float.xml
--- FMAX_D_floatdp2               fmax_float.xml
--- FMAXNM_D_floatdp2             fmaxnm_float.xml
--- FMIN_D_floatdp2               fmin_float.xml
--- FMINNM_D_floatdp2             fminnm_float.xml
--- FMUL_D_floatdp2               fmul_float.xml
--- FNMUL_D_floatdp2              fnmul_float.xml
--- FSUB_D_floatdp2               fsub_float.xml

type Logical_54 = '[]
type Binary_54  = '[]

decode_54 :: Fn Logical_54 a -> FnW Binary_54 (Decode a)
decode_54 f = return f

encode_54 :: FnW Binary_54 a -> Fn Logical_54 (Encode a)
encode_54 f = return f

parse_54 :: Fn Logical_54 a -> Parser a
parse_54 f = ws >> return f

show_54 :: Fn Logical_54 (String, ShowS)
show_54 = simple $ id


--- 55: '  <Hd>, <Hn>, #0.0'
--- FCMEQ_asisdmiscfp16_FZ        fcmeq_advsimd_zero.xml
--- FCMGE_asisdmiscfp16_FZ        fcmge_advsimd_zero.xml
--- FCMGT_asisdmiscfp16_FZ        fcmgt_advsimd_zero.xml
--- FCMLE_asisdmiscfp16_FZ        fcmle_advsimd.xml
--- FCMLT_asisdmiscfp16_FZ        fcmlt_advsimd.xml

type Logical_55 = '[]
type Binary_55  = '[]

decode_55 :: Fn Logical_55 a -> FnW Binary_55 (Decode a)
decode_55 f = return f

encode_55 :: FnW Binary_55 a -> Fn Logical_55 (Encode a)
encode_55 f = return f

parse_55 :: Fn Logical_55 a -> Parser a
parse_55 f = ws >> return f

show_55 :: Fn Logical_55 (String, ShowS)
show_55 = simple $ id


--- 56: '  <Hd>, <Hn>, <Hm>'
--- FABD_asisdsamefp16_only       fabd_advsimd.xml
--- FACGE_asisdsamefp16_only      facge_advsimd.xml
--- FACGT_asisdsamefp16_only      facgt_advsimd.xml
--- FADD_H_floatdp2               fadd_float.xml
--- FCMEQ_asisdsamefp16_only      fcmeq_advsimd_reg.xml
--- FCMGE_asisdsamefp16_only      fcmge_advsimd_reg.xml
--- FCMGT_asisdsamefp16_only      fcmgt_advsimd_reg.xml
--- FDIV_H_floatdp2               fdiv_float.xml
--- FMAX_H_floatdp2               fmax_float.xml
--- FMAXNM_H_floatdp2             fmaxnm_float.xml
--- FMIN_H_floatdp2               fmin_float.xml
--- FMINNM_H_floatdp2             fminnm_float.xml
--- FMUL_H_floatdp2               fmul_float.xml
--- FMULX_asisdsamefp16_only      fmulx_advsimd_vec.xml
--- FNMUL_H_floatdp2              fnmul_float.xml
--- FRECPS_asisdsamefp16_only     frecps_advsimd.xml
--- FRSQRTS_asisdsamefp16_only    frsqrts_advsimd.xml
--- FSUB_H_floatdp2               fsub_float.xml

type Logical_56 = '[]
type Binary_56  = '[]

decode_56 :: Fn Logical_56 a -> FnW Binary_56 (Decode a)
decode_56 f = return f

encode_56 :: FnW Binary_56 a -> Fn Logical_56 (Encode a)
encode_56 f = return f

parse_56 :: Fn Logical_56 a -> Parser a
parse_56 f = ws >> return f

show_56 :: Fn Logical_56 (String, ShowS)
show_56 = simple $ id


--- 57: '  <Sd>, <Sn>, <Sm>'
--- FADD_S_floatdp2               fadd_float.xml
--- FDIV_S_floatdp2               fdiv_float.xml
--- FMAX_S_floatdp2               fmax_float.xml
--- FMAXNM_S_floatdp2             fmaxnm_float.xml
--- FMIN_S_floatdp2               fmin_float.xml
--- FMINNM_S_floatdp2             fminnm_float.xml
--- FMUL_S_floatdp2               fmul_float.xml
--- FNMUL_S_floatdp2              fnmul_float.xml
--- FSUB_S_floatdp2               fsub_float.xml

type Logical_57 = '[]
type Binary_57  = '[]

decode_57 :: Fn Logical_57 a -> FnW Binary_57 (Decode a)
decode_57 f = return f

encode_57 :: FnW Binary_57 a -> Fn Logical_57 (Encode a)
encode_57 f = return f

parse_57 :: Fn Logical_57 a -> Parser a
parse_57 f = ws >> return f

show_57 :: Fn Logical_57 (String, ShowS)
show_57 = simple $ id


--- 58: '  <V><d>, <Vn>.<T>'
--- ADDP_asisdpair_only           addp_advsimd_pair.xml
--- ADDV_asimdall_only            addv_advsimd.xml
--- FADDP_asisdpair_only_H        faddp_advsimd_pair.xml
--- FADDP_asisdpair_only_SD       faddp_advsimd_pair.xml
--- FMAXNMP_asisdpair_only_H      fmaxnmp_advsimd_pair.xml
--- FMAXNMP_asisdpair_only_SD     fmaxnmp_advsimd_pair.xml
--- FMAXNMV_asimdall_only_H       fmaxnmv_advsimd.xml
--- FMAXNMV_asimdall_only_SD      fmaxnmv_advsimd.xml
--- FMAXP_asisdpair_only_H        fmaxp_advsimd_pair.xml
--- FMAXP_asisdpair_only_SD       fmaxp_advsimd_pair.xml
--- FMAXV_asimdall_only_H         fmaxv_advsimd.xml
--- FMAXV_asimdall_only_SD        fmaxv_advsimd.xml
--- FMINNMP_asisdpair_only_H      fminnmp_advsimd_pair.xml
--- FMINNMP_asisdpair_only_SD     fminnmp_advsimd_pair.xml
--- FMINNMV_asimdall_only_H       fminnmv_advsimd.xml
--- FMINNMV_asimdall_only_SD      fminnmv_advsimd.xml
--- FMINP_asisdpair_only_H        fminp_advsimd_pair.xml
--- FMINP_asisdpair_only_SD       fminp_advsimd_pair.xml
--- FMINV_asimdall_only_H         fminv_advsimd.xml
--- FMINV_asimdall_only_SD        fminv_advsimd.xml
--- SADDLV_asimdall_only          saddlv_advsimd.xml
--- SMAXV_asimdall_only           smaxv_advsimd.xml
--- SMINV_asimdall_only           sminv_advsimd.xml
--- UADDLV_asimdall_only          uaddlv_advsimd.xml
--- UMAXV_asimdall_only           umaxv_advsimd.xml
--- UMINV_asimdall_only           uminv_advsimd.xml

type Logical_58 = '[]
type Binary_58  = '[]

decode_58 :: Fn Logical_58 a -> FnW Binary_58 (Decode a)
decode_58 f = return f

encode_58 :: FnW Binary_58 a -> Fn Logical_58 (Encode a)
encode_58 f = return f

parse_58 :: Fn Logical_58 a -> Parser a
parse_58 f = ws >> return f

show_58 :: Fn Logical_58 (String, ShowS)
show_58 = simple $ id


--- 59: '  <Vb><d>, <Va><n>'
--- FCVTXN_asisdmisc_N            fcvtxn_advsimd.xml
--- SQXTN_asisdmisc_N             sqxtn_advsimd.xml
--- SQXTUN_asisdmisc_N            sqxtun_advsimd.xml
--- UQXTN_asisdmisc_N             uqxtn_advsimd.xml

type Logical_59 = '[]
type Binary_59  = '[]

decode_59 :: Fn Logical_59 a -> FnW Binary_59 (Decode a)
decode_59 f = return f

encode_59 :: FnW Binary_59 a -> Fn Logical_59 (Encode a)
encode_59 f = return f

parse_59 :: Fn Logical_59 a -> Parser a
parse_59 f = ws >> return f

show_59 :: Fn Logical_59 (String, ShowS)
show_59 = simple $ id


--- 60: '  <Vd>.2D, <Vn>.2D'
--- SHA512SU0_VV2_cryptosha512_2  sha512su0_advsimd.xml

type Logical_60 = '[]
type Binary_60  = '[]

decode_60 :: Fn Logical_60 a -> FnW Binary_60 (Decode a)
decode_60 f = return f

encode_60 :: FnW Binary_60 a -> Fn Logical_60 (Encode a)
encode_60 f = return f

parse_60 :: Fn Logical_60 a -> Parser a
parse_60 f = ws >> return f

show_60 :: Fn Logical_60 (String, ShowS)
show_60 = simple $ id


--- 61: '  <Vd>.4S, <Vn>.4S'
--- SHA1SU1_VV_cryptosha2         sha1su1_advsimd.xml
--- SHA256SU0_VV_cryptosha2       sha256su0_advsimd.xml
--- SM4E_VV4_cryptosha512_2       sm4e_advsimd.xml

type Logical_61 = '[]
type Binary_61  = '[]

decode_61 :: Fn Logical_61 a -> FnW Binary_61 (Decode a)
decode_61 f = return f

encode_61 :: FnW Binary_61 a -> Fn Logical_61 (Encode a)
encode_61 f = return f

parse_61 :: Fn Logical_61 a -> Parser a
parse_61 f = ws >> return f

show_61 :: Fn Logical_61 (String, ShowS)
show_61 = simple $ id


--- 62: '  <Vd>.<T>, #<imm>'
--- FMOV_asimdimm_H_h             fmov_advsimd.xml
--- FMOV_asimdimm_S_s             fmov_advsimd.xml

type Logical_62 = '[]
type Binary_62  = '[]

decode_62 :: Fn Logical_62 a -> FnW Binary_62 (Decode a)
decode_62 f = return f

encode_62 :: FnW Binary_62 a -> Fn Logical_62 (Encode a)
encode_62 f = return f

parse_62 :: Fn Logical_62 a -> Parser a
parse_62 f = ws >> return f

show_62 :: Fn Logical_62 (String, ShowS)
show_62 = simple $ id


--- 63: '  <Vd>.<T>, <R><n>'
--- DUP_asimdins_DR_r             dup_advsimd_gen.xml

type Logical_63 = '[]
type Binary_63  = '[]

decode_63 :: Fn Logical_63 a -> FnW Binary_63 (Decode a)
decode_63 f = return f

encode_63 :: FnW Binary_63 a -> Fn Logical_63 (Encode a)
encode_63 f = return f

parse_63 :: Fn Logical_63 a -> Parser a
parse_63 f = ws >> return f

show_63 :: Fn Logical_63 (String, ShowS)
show_63 = simple $ id


--- 64: '  <Wd>, <Wn>, <Wm>'
--- ADC_32_addsub_carry           adc.xml
--- ADCS_32_addsub_carry          adcs.xml
--- ASRV_32_dp_2src               asrv.xml
--- CRC32B_32C_dp_2src            crc32.xml
--- CRC32H_32C_dp_2src            crc32.xml
--- CRC32W_32C_dp_2src            crc32.xml
--- CRC32CB_32C_dp_2src           crc32c.xml
--- CRC32CH_32C_dp_2src           crc32c.xml
--- CRC32CW_32C_dp_2src           crc32c.xml
--- LSLV_32_dp_2src               lslv.xml
--- LSRV_32_dp_2src               lsrv.xml
--- RORV_32_dp_2src               rorv.xml
--- SBC_32_addsub_carry           sbc.xml
--- SBCS_32_addsub_carry          sbcs.xml
--- SDIV_32_dp_2src               sdiv.xml
--- UDIV_32_dp_2src               udiv.xml

type Logical_64 = '[]
type Binary_64  = '[]

decode_64 :: Fn Logical_64 a -> FnW Binary_64 (Decode a)
decode_64 f = return f

encode_64 :: FnW Binary_64 a -> Fn Logical_64 (Encode a)
encode_64 f = return f

parse_64 :: Fn Logical_64 a -> Parser a
parse_64 f = ws >> return f

show_64 :: Fn Logical_64 (String, ShowS)
show_64 = simple $ id


--- 65: '  <Wd>, <Wn>, <Xm>'
--- CRC32X_64C_dp_2src            crc32.xml
--- CRC32CX_64C_dp_2src           crc32c.xml

type Logical_65 = '[]
type Binary_65  = '[]

decode_65 :: Fn Logical_65 a -> FnW Binary_65 (Decode a)
decode_65 f = return f

encode_65 :: FnW Binary_65 a -> Fn Logical_65 (Encode a)
encode_65 f = return f

parse_65 :: Fn Logical_65 a -> Parser a
parse_65 f = ws >> return f

show_65 :: Fn Logical_65 (String, ShowS)
show_65 = simple $ id


--- 66: '  <Xd>, <Xn>, <Xm>'
--- ADC_64_addsub_carry           adc.xml
--- ADCS_64_addsub_carry          adcs.xml
--- ASRV_64_dp_2src               asrv.xml
--- LSLV_64_dp_2src               lslv.xml
--- LSRV_64_dp_2src               lsrv.xml
--- RORV_64_dp_2src               rorv.xml
--- SBC_64_addsub_carry           sbc.xml
--- SBCS_64_addsub_carry          sbcs.xml
--- SDIV_64_dp_2src               sdiv.xml
--- SMULH_64_dp_3src              smulh.xml
--- UDIV_64_dp_2src               udiv.xml
--- UMULH_64_dp_3src              umulh.xml

type Logical_66 = '[]
type Binary_66  = '[]

decode_66 :: Fn Logical_66 a -> FnW Binary_66 (Decode a)
decode_66 f = return f

encode_66 :: FnW Binary_66 a -> Fn Logical_66 (Encode a)
encode_66 f = return f

parse_66 :: Fn Logical_66 a -> Parser a
parse_66 f = ws >> return f

show_66 :: Fn Logical_66 (String, ShowS)
show_66 = simple $ id


--- 67: '  {<option>|#<imm>}'
--- ISB_BI_system                 isb.xml

type Logical_67 = '[]
type Binary_67  = '[]

decode_67 :: Fn Logical_67 a -> FnW Binary_67 (Decode a)
decode_67 f = return f

encode_67 :: FnW Binary_67 a -> Fn Logical_67 (Encode a)
encode_67 f = return f

parse_67 :: Fn Logical_67 a -> Parser a
parse_67 f = ws >> return f

show_67 :: Fn Logical_67 (String, ShowS)
show_67 = simple $ id


--- 68: '  <V><d>, <V><n>, #0'
--- CMEQ_asisdmisc_Z              cmeq_advsimd_zero.xml
--- CMGE_asisdmisc_Z              cmge_advsimd_zero.xml
--- CMGT_asisdmisc_Z              cmgt_advsimd_zero.xml
--- CMLE_asisdmisc_Z              cmle_advsimd.xml
--- CMLT_asisdmisc_Z              cmlt_advsimd.xml

type Logical_68 = '[]
type Binary_68  = '[]

decode_68 :: Fn Logical_68 a -> FnW Binary_68 (Decode a)
decode_68 f = return f

encode_68 :: FnW Binary_68 a -> Fn Logical_68 (Encode a)
encode_68 f = return f

parse_68 :: Fn Logical_68 a -> Parser a
parse_68 f = ws >> return f

show_68 :: Fn Logical_68 (String, ShowS)
show_68 = simple $ id


--- 69: '  <Vd>.16B, <Vn>.16B'
--- AESD_B_cryptoaes              aesd_advsimd.xml
--- AESE_B_cryptoaes              aese_advsimd.xml
--- AESIMC_B_cryptoaes            aesimc_advsimd.xml
--- AESMC_B_cryptoaes             aesmc_advsimd.xml

type Logical_69 = '[]
type Binary_69  = '[]

decode_69 :: Fn Logical_69 a -> FnW Binary_69 (Decode a)
decode_69 f = return f

encode_69 :: FnW Binary_69 a -> Fn Logical_69 (Encode a)
encode_69 f = return f

parse_69 :: Fn Logical_69 a -> Parser a
parse_69 f = ws >> return f

show_69 :: Fn Logical_69 (String, ShowS)
show_69 = simple $ id


--- 70: '  <Vd>.<T>, <Vn>.<T>'
--- ABS_asimdmisc_R               abs_advsimd.xml
--- CLS_asimdmisc_R               cls_advsimd.xml
--- CLZ_asimdmisc_R               clz_advsimd.xml
--- CNT_asimdmisc_R               cnt_advsimd.xml
--- FABS_asimdmiscfp16_R          fabs_advsimd.xml
--- FABS_asimdmisc_R              fabs_advsimd.xml
--- FCVTAS_asimdmiscfp16_R        fcvtas_advsimd.xml
--- FCVTAS_asimdmisc_R            fcvtas_advsimd.xml
--- FCVTAU_asimdmiscfp16_R        fcvtau_advsimd.xml
--- FCVTAU_asimdmisc_R            fcvtau_advsimd.xml
--- FCVTMS_asimdmiscfp16_R        fcvtms_advsimd.xml
--- FCVTMS_asimdmisc_R            fcvtms_advsimd.xml
--- FCVTMU_asimdmiscfp16_R        fcvtmu_advsimd.xml
--- FCVTMU_asimdmisc_R            fcvtmu_advsimd.xml
--- FCVTNS_asimdmiscfp16_R        fcvtns_advsimd.xml
--- FCVTNS_asimdmisc_R            fcvtns_advsimd.xml
--- FCVTNU_asimdmiscfp16_R        fcvtnu_advsimd.xml
--- FCVTNU_asimdmisc_R            fcvtnu_advsimd.xml
--- FCVTPS_asimdmiscfp16_R        fcvtps_advsimd.xml
--- FCVTPS_asimdmisc_R            fcvtps_advsimd.xml
--- FCVTPU_asimdmiscfp16_R        fcvtpu_advsimd.xml
--- FCVTPU_asimdmisc_R            fcvtpu_advsimd.xml
--- FCVTZS_asimdmiscfp16_R        fcvtzs_advsimd_int.xml
--- FCVTZS_asimdmisc_R            fcvtzs_advsimd_int.xml
--- FCVTZU_asimdmiscfp16_R        fcvtzu_advsimd_int.xml
--- FCVTZU_asimdmisc_R            fcvtzu_advsimd_int.xml
--- FNEG_asimdmiscfp16_R          fneg_advsimd.xml
--- FNEG_asimdmisc_R              fneg_advsimd.xml
--- FRECPE_asimdmiscfp16_R        frecpe_advsimd.xml
--- FRECPE_asimdmisc_R            frecpe_advsimd.xml
--- FRINTA_asimdmiscfp16_R        frinta_advsimd.xml
--- FRINTA_asimdmisc_R            frinta_advsimd.xml
--- FRINTI_asimdmiscfp16_R        frinti_advsimd.xml
--- FRINTI_asimdmisc_R            frinti_advsimd.xml
--- FRINTM_asimdmiscfp16_R        frintm_advsimd.xml
--- FRINTM_asimdmisc_R            frintm_advsimd.xml
--- FRINTN_asimdmiscfp16_R        frintn_advsimd.xml
--- FRINTN_asimdmisc_R            frintn_advsimd.xml
--- FRINTP_asimdmiscfp16_R        frintp_advsimd.xml
--- FRINTP_asimdmisc_R            frintp_advsimd.xml
--- FRINTX_asimdmiscfp16_R        frintx_advsimd.xml
--- FRINTX_asimdmisc_R            frintx_advsimd.xml
--- FRINTZ_asimdmiscfp16_R        frintz_advsimd.xml
--- FRINTZ_asimdmisc_R            frintz_advsimd.xml
--- FRSQRTE_asimdmiscfp16_R       frsqrte_advsimd.xml
--- FRSQRTE_asimdmisc_R           frsqrte_advsimd.xml
--- FSQRT_asimdmiscfp16_R         fsqrt_advsimd.xml
--- FSQRT_asimdmisc_R             fsqrt_advsimd.xml
--- NEG_asimdmisc_R               neg_advsimd.xml
--- NOT_asimdmisc_R               not_advsimd.xml
--- RBIT_asimdmisc_R              rbit_advsimd.xml
--- REV16_asimdmisc_R             rev16_advsimd.xml
--- REV32_asimdmisc_R             rev32_advsimd.xml
--- REV64_asimdmisc_R             rev64_advsimd.xml
--- SCVTF_asimdmiscfp16_R         scvtf_advsimd_int.xml
--- SCVTF_asimdmisc_R             scvtf_advsimd_int.xml
--- SQABS_asimdmisc_R             sqabs_advsimd.xml
--- SQNEG_asimdmisc_R             sqneg_advsimd.xml
--- SUQADD_asimdmisc_R            suqadd_advsimd.xml
--- UCVTF_asimdmiscfp16_R         ucvtf_advsimd_int.xml
--- UCVTF_asimdmisc_R             ucvtf_advsimd_int.xml
--- URECPE_asimdmisc_R            urecpe_advsimd.xml
--- URSQRTE_asimdmisc_R           ursqrte_advsimd.xml
--- USQADD_asimdmisc_R            usqadd_advsimd.xml

type Logical_70 = '[]
type Binary_70  = '[]

decode_70 :: Fn Logical_70 a -> FnW Binary_70 (Decode a)
decode_70 f = return f

encode_70 :: FnW Binary_70 a -> Fn Logical_70 (Encode a)
encode_70 f = return f

parse_70 :: Fn Logical_70 a -> Parser a
parse_70 f = ws >> return f

show_70 :: Fn Logical_70 (String, ShowS)
show_70 = simple $ id


--- 71: '  <Wd>, <Wn>, #<imm>'
--- ANDS_32S_log_imm              ands_log_imm.xml

type Logical_71 = '[]
type Binary_71  = '[]

decode_71 :: Fn Logical_71 a -> FnW Binary_71 (Decode a)
decode_71 f = return f

encode_71 :: FnW Binary_71 a -> Fn Logical_71 (Encode a)
encode_71 f = return f

parse_71 :: Fn Logical_71 a -> Parser a
parse_71 f = ws >> return f

show_71 :: Fn Logical_71 (String, ShowS)
show_71 = simple $ id


--- 72: '  <Xd>, <Xn>, #<imm>'
--- ANDS_64S_log_imm              ands_log_imm.xml

type Logical_72 = '[]
type Binary_72  = '[]

decode_72 :: Fn Logical_72 a -> FnW Binary_72 (Decode a)
decode_72 f = return f

encode_72 :: FnW Binary_72 a -> Fn Logical_72 (Encode a)
encode_72 f = return f

parse_72 :: Fn Logical_72 a -> Parser a
parse_72 f = ws >> return f

show_72 :: Fn Logical_72 (String, ShowS)
show_72 = simple $ id


--- 73: '  <Qd>, <Qn>, <Vm>.2D'
--- SHA512H_QQV_cryptosha512_3    sha512h_advsimd.xml
--- SHA512H2_QQV_cryptosha512_3   sha512h2_advsimd.xml

type Logical_73 = '[]
type Binary_73  = '[]

decode_73 :: Fn Logical_73 a -> FnW Binary_73 (Decode a)
decode_73 f = return f

encode_73 :: FnW Binary_73 a -> Fn Logical_73 (Encode a)
encode_73 f = return f

parse_73 :: Fn Logical_73 a -> Parser a
parse_73 f = ws >> return f

show_73 :: Fn Logical_73 (String, ShowS)
show_73 = simple $ id


--- 74: '  <Qd>, <Qn>, <Vm>.4S'
--- SHA256H_QQV_cryptosha3        sha256h_advsimd.xml
--- SHA256H2_QQV_cryptosha3       sha256h2_advsimd.xml

type Logical_74 = '[]
type Binary_74  = '[]

decode_74 :: Fn Logical_74 a -> FnW Binary_74 (Decode a)
decode_74 f = return f

encode_74 :: FnW Binary_74 a -> Fn Logical_74 (Encode a)
encode_74 f = return f

parse_74 :: Fn Logical_74 a -> Parser a
parse_74 f = ws >> return f

show_74 :: Fn Logical_74 (String, ShowS)
show_74 = simple $ id


--- 75: '  <Qd>, <Sn>, <Vm>.4S'
--- SHA1C_QSV_cryptosha3          sha1c_advsimd.xml
--- SHA1M_QSV_cryptosha3          sha1m_advsimd.xml
--- SHA1P_QSV_cryptosha3          sha1p_advsimd.xml

type Logical_75 = '[]
type Binary_75  = '[]

decode_75 :: Fn Logical_75 a -> FnW Binary_75 (Decode a)
decode_75 f = return f

encode_75 :: FnW Binary_75 a -> Fn Logical_75 (Encode a)
encode_75 f = return f

parse_75 :: Fn Logical_75 a -> Parser a
parse_75 f = ws >> return f

show_75 :: Fn Logical_75 (String, ShowS)
show_75 = simple $ id


--- 76: '  <Xd>, <Xn>, <Xm|SP>'
--- PACGA_64P_dp_2src             pacga.xml

type Logical_76 = '[]
type Binary_76  = '[]

decode_76 :: Fn Logical_76 a -> FnW Binary_76 (Decode a)
decode_76 f = return f

encode_76 :: FnW Binary_76 a -> Fn Logical_76 (Encode a)
encode_76 f = return f

parse_76 :: Fn Logical_76 a -> Parser a
parse_76 f = ws >> return f

show_76 :: Fn Logical_76 (String, ShowS)
show_76 = simple $ id


--- 77: '  <Dd>, <Wn>, #<fbits>'
--- SCVTF_D32_float2fix           scvtf_float_fix.xml
--- UCVTF_D32_float2fix           ucvtf_float_fix.xml

type Logical_77 = '[]
type Binary_77  = '[]

decode_77 :: Fn Logical_77 a -> FnW Binary_77 (Decode a)
decode_77 f = return f

encode_77 :: FnW Binary_77 a -> Fn Logical_77 (Encode a)
encode_77 f = return f

parse_77 :: Fn Logical_77 a -> Parser a
parse_77 f = ws >> return f

show_77 :: Fn Logical_77 (String, ShowS)
show_77 = simple $ id


--- 78: '  <Dd>, <Xn>, #<fbits>'
--- SCVTF_D64_float2fix           scvtf_float_fix.xml
--- UCVTF_D64_float2fix           ucvtf_float_fix.xml

type Logical_78 = '[]
type Binary_78  = '[]

decode_78 :: Fn Logical_78 a -> FnW Binary_78 (Decode a)
decode_78 f = return f

encode_78 :: FnW Binary_78 a -> Fn Logical_78 (Encode a)
encode_78 f = return f

parse_78 :: Fn Logical_78 a -> Parser a
parse_78 f = ws >> return f

show_78 :: Fn Logical_78 (String, ShowS)
show_78 = simple $ id


--- 79: '  <Hd>, <Wn>, #<fbits>'
--- SCVTF_H32_float2fix           scvtf_float_fix.xml
--- UCVTF_H32_float2fix           ucvtf_float_fix.xml

type Logical_79 = '[]
type Binary_79  = '[]

decode_79 :: Fn Logical_79 a -> FnW Binary_79 (Decode a)
decode_79 f = return f

encode_79 :: FnW Binary_79 a -> Fn Logical_79 (Encode a)
encode_79 f = return f

parse_79 :: Fn Logical_79 a -> Parser a
parse_79 f = ws >> return f

show_79 :: Fn Logical_79 (String, ShowS)
show_79 = simple $ id


--- 80: '  <Hd>, <Xn>, #<fbits>'
--- SCVTF_H64_float2fix           scvtf_float_fix.xml
--- UCVTF_H64_float2fix           ucvtf_float_fix.xml

type Logical_80 = '[]
type Binary_80  = '[]

decode_80 :: Fn Logical_80 a -> FnW Binary_80 (Decode a)
decode_80 f = return f

encode_80 :: FnW Binary_80 a -> Fn Logical_80 (Encode a)
encode_80 f = return f

parse_80 :: Fn Logical_80 a -> Parser a
parse_80 f = ws >> return f

show_80 :: Fn Logical_80 (String, ShowS)
show_80 = simple $ id


--- 81: '  <Sd>, <Wn>, #<fbits>'
--- SCVTF_S32_float2fix           scvtf_float_fix.xml
--- UCVTF_S32_float2fix           ucvtf_float_fix.xml

type Logical_81 = '[]
type Binary_81  = '[]

decode_81 :: Fn Logical_81 a -> FnW Binary_81 (Decode a)
decode_81 f = return f

encode_81 :: FnW Binary_81 a -> Fn Logical_81 (Encode a)
encode_81 f = return f

parse_81 :: Fn Logical_81 a -> Parser a
parse_81 f = ws >> return f

show_81 :: Fn Logical_81 (String, ShowS)
show_81 = simple $ id


--- 82: '  <Sd>, <Xn>, #<fbits>'
--- SCVTF_S64_float2fix           scvtf_float_fix.xml
--- UCVTF_S64_float2fix           ucvtf_float_fix.xml

type Logical_82 = '[]
type Binary_82  = '[]

decode_82 :: Fn Logical_82 a -> FnW Binary_82 (Decode a)
decode_82 f = return f

encode_82 :: FnW Binary_82 a -> Fn Logical_82 (Encode a)
encode_82 f = return f

parse_82 :: Fn Logical_82 a -> Parser a
parse_82 f = ws >> return f

show_82 :: Fn Logical_82 (String, ShowS)
show_82 = simple $ id


--- 83: '  <V><d>, <V><n>, #0.0'
--- FCMEQ_asisdmisc_FZ            fcmeq_advsimd_zero.xml
--- FCMGE_asisdmisc_FZ            fcmge_advsimd_zero.xml
--- FCMGT_asisdmisc_FZ            fcmgt_advsimd_zero.xml
--- FCMLE_asisdmisc_FZ            fcmle_advsimd.xml
--- FCMLT_asisdmisc_FZ            fcmlt_advsimd.xml

type Logical_83 = '[]
type Binary_83  = '[]

decode_83 :: Fn Logical_83 a -> FnW Binary_83 (Decode a)
decode_83 f = return f

encode_83 :: FnW Binary_83 a -> Fn Logical_83 (Encode a)
encode_83 f = return f

parse_83 :: Fn Logical_83 a -> Parser a
parse_83 f = ws >> return f

show_83 :: Fn Logical_83 (String, ShowS)
show_83 = simple $ id


--- 84: '  <Vd>.<Ta>, <Vn>.<Tb>'
--- SADALP_asimdmisc_P            sadalp_advsimd.xml
--- SADDLP_asimdmisc_P            saddlp_advsimd.xml
--- UADALP_asimdmisc_P            uadalp_advsimd.xml
--- UADDLP_asimdmisc_P            uaddlp_advsimd.xml

type Logical_84 = '[]
type Binary_84  = '[]

decode_84 :: Fn Logical_84 a -> FnW Binary_84 (Decode a)
decode_84 f = return f

encode_84 :: FnW Binary_84 a -> Fn Logical_84 (Encode a)
encode_84 f = return f

parse_84 :: Fn Logical_84 a -> Parser a
parse_84 f = ws >> return f

show_84 :: Fn Logical_84 (String, ShowS)
show_84 = simple $ id


--- 85: '  <Wd>, <Dn>, #<fbits>'
--- FCVTZS_32D_float2fix          fcvtzs_float_fix.xml
--- FCVTZU_32D_float2fix          fcvtzu_float_fix.xml

type Logical_85 = '[]
type Binary_85  = '[]

decode_85 :: Fn Logical_85 a -> FnW Binary_85 (Decode a)
decode_85 f = return f

encode_85 :: FnW Binary_85 a -> Fn Logical_85 (Encode a)
encode_85 f = return f

parse_85 :: Fn Logical_85 a -> Parser a
parse_85 f = ws >> return f

show_85 :: Fn Logical_85 (String, ShowS)
show_85 = simple $ id


--- 86: '  <Wd>, <Hn>, #<fbits>'
--- FCVTZS_32H_float2fix          fcvtzs_float_fix.xml
--- FCVTZU_32H_float2fix          fcvtzu_float_fix.xml

type Logical_86 = '[]
type Binary_86  = '[]

decode_86 :: Fn Logical_86 a -> FnW Binary_86 (Decode a)
decode_86 f = return f

encode_86 :: FnW Binary_86 a -> Fn Logical_86 (Encode a)
encode_86 f = return f

parse_86 :: Fn Logical_86 a -> Parser a
parse_86 f = ws >> return f

show_86 :: Fn Logical_86 (String, ShowS)
show_86 = simple $ id


--- 87: '  <Wd>, <Sn>, #<fbits>'
--- FCVTZS_32S_float2fix          fcvtzs_float_fix.xml
--- FCVTZU_32S_float2fix          fcvtzu_float_fix.xml

type Logical_87 = '[]
type Binary_87  = '[]

decode_87 :: Fn Logical_87 a -> FnW Binary_87 (Decode a)
decode_87 f = return f

encode_87 :: FnW Binary_87 a -> Fn Logical_87 (Encode a)
encode_87 f = return f

parse_87 :: Fn Logical_87 a -> Parser a
parse_87 f = ws >> return f

show_87 :: Fn Logical_87 (String, ShowS)
show_87 = simple $ id


--- 88: '  <Wt>, [<Xn|SP>{,#0}]'
--- LDAR_LR32_ldstexcl            ldar.xml
--- LDARB_LR32_ldstexcl           ldarb.xml
--- LDARH_LR32_ldstexcl           ldarh.xml
--- LDAXR_LR32_ldstexcl           ldaxr.xml
--- LDAXRB_LR32_ldstexcl          ldaxrb.xml
--- LDAXRH_LR32_ldstexcl          ldaxrh.xml
--- LDLAR_LR32_ldstexcl           ldlar.xml
--- LDLARB_LR32_ldstexcl          ldlarb.xml
--- LDLARH_LR32_ldstexcl          ldlarh.xml
--- LDXR_LR32_ldstexcl            ldxr.xml
--- LDXRB_LR32_ldstexcl           ldxrb.xml
--- LDXRH_LR32_ldstexcl           ldxrh.xml
--- STLLR_SL32_ldstexcl           stllr.xml
--- STLLRB_SL32_ldstexcl          stllrb.xml
--- STLLRH_SL32_ldstexcl          stllrh.xml
--- STLR_SL32_ldstexcl            stlr.xml
--- STLRB_SL32_ldstexcl           stlrb.xml
--- STLRH_SL32_ldstexcl           stlrh.xml

type Logical_88 = '[]
type Binary_88  = '[]

decode_88 :: Fn Logical_88 a -> FnW Binary_88 (Decode a)
decode_88 f = return f

encode_88 :: FnW Binary_88 a -> Fn Logical_88 (Encode a)
encode_88 f = return f

parse_88 :: Fn Logical_88 a -> Parser a
parse_88 f = ws >> return f

show_88 :: Fn Logical_88 (String, ShowS)
show_88 = simple $ id


--- 89: '  <Xd>, <Dn>, #<fbits>'
--- FCVTZS_64D_float2fix          fcvtzs_float_fix.xml
--- FCVTZU_64D_float2fix          fcvtzu_float_fix.xml

type Logical_89 = '[]
type Binary_89  = '[]

decode_89 :: Fn Logical_89 a -> FnW Binary_89 (Decode a)
decode_89 f = return f

encode_89 :: FnW Binary_89 a -> Fn Logical_89 (Encode a)
encode_89 f = return f

parse_89 :: Fn Logical_89 a -> Parser a
parse_89 f = ws >> return f

show_89 :: Fn Logical_89 (String, ShowS)
show_89 = simple $ id


--- 90: '  <Xd>, <Hn>, #<fbits>'
--- FCVTZS_64H_float2fix          fcvtzs_float_fix.xml
--- FCVTZU_64H_float2fix          fcvtzu_float_fix.xml

type Logical_90 = '[]
type Binary_90  = '[]

decode_90 :: Fn Logical_90 a -> FnW Binary_90 (Decode a)
decode_90 f = return f

encode_90 :: FnW Binary_90 a -> Fn Logical_90 (Encode a)
encode_90 f = return f

parse_90 :: Fn Logical_90 a -> Parser a
parse_90 f = ws >> return f

show_90 :: Fn Logical_90 (String, ShowS)
show_90 = simple $ id


--- 91: '  <Xd>, <Sn>, #<fbits>'
--- FCVTZS_64S_float2fix          fcvtzs_float_fix.xml
--- FCVTZU_64S_float2fix          fcvtzu_float_fix.xml

type Logical_91 = '[]
type Binary_91  = '[]

decode_91 :: Fn Logical_91 a -> FnW Binary_91 (Decode a)
decode_91 f = return f

encode_91 :: FnW Binary_91 a -> Fn Logical_91 (Encode a)
encode_91 f = return f

parse_91 :: Fn Logical_91 a -> Parser a
parse_91 f = ws >> return f

show_91 :: Fn Logical_91 (String, ShowS)
show_91 = simple $ id


--- 92: '  <Xt>, [<Xn|SP>{,#0}]'
--- LDAR_LR64_ldstexcl            ldar.xml
--- LDAXR_LR64_ldstexcl           ldaxr.xml
--- LDLAR_LR64_ldstexcl           ldlar.xml
--- LDXR_LR64_ldstexcl            ldxr.xml
--- STLLR_SL64_ldstexcl           stllr.xml
--- STLR_SL64_ldstexcl            stlr.xml

type Logical_92 = '[]
type Binary_92  = '[]

decode_92 :: Fn Logical_92 a -> FnW Binary_92 (Decode a)
decode_92 f = return f

encode_92 :: FnW Binary_92 a -> Fn Logical_92 (Encode a)
encode_92 f = return f

parse_92 :: Fn Logical_92 a -> Parser a
parse_92 f = ws >> return f

show_92 :: Fn Logical_92 (String, ShowS)
show_92 = simple $ id


--- 93: '  <Ws>, <Wt>, [<Xn|SP>]'
--- LDADD_32_memop                ldadd.xml
--- LDADDA_32_memop               ldadd.xml
--- LDADDAL_32_memop              ldadd.xml
--- LDADDL_32_memop               ldadd.xml
--- LDADDAB_32_memop              ldaddb.xml
--- LDADDALB_32_memop             ldaddb.xml
--- LDADDB_32_memop               ldaddb.xml
--- LDADDLB_32_memop              ldaddb.xml
--- LDADDAH_32_memop              ldaddh.xml
--- LDADDALH_32_memop             ldaddh.xml
--- LDADDH_32_memop               ldaddh.xml
--- LDADDLH_32_memop              ldaddh.xml
--- LDCLR_32_memop                ldclr.xml
--- LDCLRA_32_memop               ldclr.xml
--- LDCLRAL_32_memop              ldclr.xml
--- LDCLRL_32_memop               ldclr.xml
--- LDCLRAB_32_memop              ldclrb.xml
--- LDCLRALB_32_memop             ldclrb.xml
--- LDCLRB_32_memop               ldclrb.xml
--- LDCLRLB_32_memop              ldclrb.xml
--- LDCLRAH_32_memop              ldclrh.xml
--- LDCLRALH_32_memop             ldclrh.xml
--- LDCLRH_32_memop               ldclrh.xml
--- LDCLRLH_32_memop              ldclrh.xml
--- LDEOR_32_memop                ldeor.xml
--- LDEORA_32_memop               ldeor.xml
--- LDEORAL_32_memop              ldeor.xml
--- LDEORL_32_memop               ldeor.xml
--- LDEORAB_32_memop              ldeorb.xml
--- LDEORALB_32_memop             ldeorb.xml
--- LDEORB_32_memop               ldeorb.xml
--- LDEORLB_32_memop              ldeorb.xml
--- LDEORAH_32_memop              ldeorh.xml
--- LDEORALH_32_memop             ldeorh.xml
--- LDEORH_32_memop               ldeorh.xml
--- LDEORLH_32_memop              ldeorh.xml
--- LDSET_32_memop                ldset.xml
--- LDSETA_32_memop               ldset.xml
--- LDSETAL_32_memop              ldset.xml
--- LDSETL_32_memop               ldset.xml
--- LDSETAB_32_memop              ldsetb.xml
--- LDSETALB_32_memop             ldsetb.xml
--- LDSETB_32_memop               ldsetb.xml
--- LDSETLB_32_memop              ldsetb.xml
--- LDSETAH_32_memop              ldseth.xml
--- LDSETALH_32_memop             ldseth.xml
--- LDSETH_32_memop               ldseth.xml
--- LDSETLH_32_memop              ldseth.xml
--- LDSMAX_32_memop               ldsmax.xml
--- LDSMAXA_32_memop              ldsmax.xml
--- LDSMAXAL_32_memop             ldsmax.xml
--- LDSMAXL_32_memop              ldsmax.xml
--- LDSMAXAB_32_memop             ldsmaxb.xml
--- LDSMAXALB_32_memop            ldsmaxb.xml
--- LDSMAXB_32_memop              ldsmaxb.xml
--- LDSMAXLB_32_memop             ldsmaxb.xml
--- LDSMAXAH_32_memop             ldsmaxh.xml
--- LDSMAXALH_32_memop            ldsmaxh.xml
--- LDSMAXH_32_memop              ldsmaxh.xml
--- LDSMAXLH_32_memop             ldsmaxh.xml
--- LDSMIN_32_memop               ldsmin.xml
--- LDSMINA_32_memop              ldsmin.xml
--- LDSMINAL_32_memop             ldsmin.xml
--- LDSMINL_32_memop              ldsmin.xml
--- LDSMINAB_32_memop             ldsminb.xml
--- LDSMINALB_32_memop            ldsminb.xml
--- LDSMINB_32_memop              ldsminb.xml
--- LDSMINLB_32_memop             ldsminb.xml
--- LDSMINAH_32_memop             ldsminh.xml
--- LDSMINALH_32_memop            ldsminh.xml
--- LDSMINH_32_memop              ldsminh.xml
--- LDSMINLH_32_memop             ldsminh.xml
--- LDUMAX_32_memop               ldumax.xml
--- LDUMAXA_32_memop              ldumax.xml
--- LDUMAXAL_32_memop             ldumax.xml
--- LDUMAXL_32_memop              ldumax.xml
--- LDUMAXAB_32_memop             ldumaxb.xml
--- LDUMAXALB_32_memop            ldumaxb.xml
--- LDUMAXB_32_memop              ldumaxb.xml
--- LDUMAXLB_32_memop             ldumaxb.xml
--- LDUMAXAH_32_memop             ldumaxh.xml
--- LDUMAXALH_32_memop            ldumaxh.xml
--- LDUMAXH_32_memop              ldumaxh.xml
--- LDUMAXLH_32_memop             ldumaxh.xml
--- LDUMIN_32_memop               ldumin.xml
--- LDUMINA_32_memop              ldumin.xml
--- LDUMINAL_32_memop             ldumin.xml
--- LDUMINL_32_memop              ldumin.xml
--- LDUMINAB_32_memop             lduminb.xml
--- LDUMINALB_32_memop            lduminb.xml
--- LDUMINB_32_memop              lduminb.xml
--- LDUMINLB_32_memop             lduminb.xml
--- LDUMINAH_32_memop             lduminh.xml
--- LDUMINALH_32_memop            lduminh.xml
--- LDUMINH_32_memop              lduminh.xml
--- LDUMINLH_32_memop             lduminh.xml
--- SWP_32_memop                  swp.xml
--- SWPA_32_memop                 swp.xml
--- SWPAL_32_memop                swp.xml
--- SWPL_32_memop                 swp.xml
--- SWPAB_32_memop                swpb.xml
--- SWPALB_32_memop               swpb.xml
--- SWPB_32_memop                 swpb.xml
--- SWPLB_32_memop                swpb.xml
--- SWPAH_32_memop                swph.xml
--- SWPALH_32_memop               swph.xml
--- SWPH_32_memop                 swph.xml
--- SWPLH_32_memop                swph.xml

type Logical_93 = '[]
type Binary_93  = '[]

decode_93 :: Fn Logical_93 a -> FnW Binary_93 (Decode a)
decode_93 f = return f

encode_93 :: FnW Binary_93 a -> Fn Logical_93 (Encode a)
encode_93 f = return f

parse_93 :: Fn Logical_93 a -> Parser a
parse_93 f = ws >> return f

show_93 :: Fn Logical_93 (String, ShowS)
show_93 = simple $ id


--- 94: '  <Wt>, [<Xn|SP> {,#0}]'
--- LDAPR_32L_memop               ldapr.xml
--- LDAPRB_32L_memop              ldaprb.xml
--- LDAPRH_32L_memop              ldaprh.xml

type Logical_94 = '[]
type Binary_94  = '[]

decode_94 :: Fn Logical_94 a -> FnW Binary_94 (Decode a)
decode_94 f = return f

encode_94 :: FnW Binary_94 a -> Fn Logical_94 (Encode a)
encode_94 f = return f

parse_94 :: Fn Logical_94 a -> Parser a
parse_94 f = ws >> return f

show_94 :: Fn Logical_94 (String, ShowS)
show_94 = simple $ id


--- 95: '  <Xd|SP>, <Xn>, #<imm>'
--- AND_64_log_imm                and_log_imm.xml
--- EOR_64_log_imm                eor_log_imm.xml
--- ORR_64_log_imm                orr_log_imm.xml

type Logical_95 = '[]
type Binary_95  = '[]

decode_95 :: Fn Logical_95 a -> FnW Binary_95 (Decode a)
decode_95 f = return f

encode_95 :: FnW Binary_95 a -> Fn Logical_95 (Encode a)
encode_95 f = return f

parse_95 :: Fn Logical_95 a -> Parser a
parse_95 f = ws >> return f

show_95 :: Fn Logical_95 (String, ShowS)
show_95 = simple $ id


--- 96: '  <Xs>, <Xt>, [<Xn|SP>]'
--- LDADD_64_memop                ldadd.xml
--- LDADDA_64_memop               ldadd.xml
--- LDADDAL_64_memop              ldadd.xml
--- LDADDL_64_memop               ldadd.xml
--- LDCLR_64_memop                ldclr.xml
--- LDCLRA_64_memop               ldclr.xml
--- LDCLRAL_64_memop              ldclr.xml
--- LDCLRL_64_memop               ldclr.xml
--- LDEOR_64_memop                ldeor.xml
--- LDEORA_64_memop               ldeor.xml
--- LDEORAL_64_memop              ldeor.xml
--- LDEORL_64_memop               ldeor.xml
--- LDSET_64_memop                ldset.xml
--- LDSETA_64_memop               ldset.xml
--- LDSETAL_64_memop              ldset.xml
--- LDSETL_64_memop               ldset.xml
--- LDSMAX_64_memop               ldsmax.xml
--- LDSMAXA_64_memop              ldsmax.xml
--- LDSMAXAL_64_memop             ldsmax.xml
--- LDSMAXL_64_memop              ldsmax.xml
--- LDSMIN_64_memop               ldsmin.xml
--- LDSMINA_64_memop              ldsmin.xml
--- LDSMINAL_64_memop             ldsmin.xml
--- LDSMINL_64_memop              ldsmin.xml
--- LDUMAX_64_memop               ldumax.xml
--- LDUMAXA_64_memop              ldumax.xml
--- LDUMAXAL_64_memop             ldumax.xml
--- LDUMAXL_64_memop              ldumax.xml
--- LDUMIN_64_memop               ldumin.xml
--- LDUMINA_64_memop              ldumin.xml
--- LDUMINAL_64_memop             ldumin.xml
--- LDUMINL_64_memop              ldumin.xml
--- SWP_64_memop                  swp.xml
--- SWPA_64_memop                 swp.xml
--- SWPAL_64_memop                swp.xml
--- SWPL_64_memop                 swp.xml

type Logical_96 = '[]
type Binary_96  = '[]

decode_96 :: Fn Logical_96 a -> FnW Binary_96 (Decode a)
decode_96 f = return f

encode_96 :: FnW Binary_96 a -> Fn Logical_96 (Encode a)
encode_96 f = return f

parse_96 :: Fn Logical_96 a -> Parser a
parse_96 f = ws >> return f

show_96 :: Fn Logical_96 (String, ShowS)
show_96 = simple $ id


--- 97: '  <Xt>, [<Xn|SP> {,#0}]'
--- LDAPR_64L_memop               ldapr.xml

type Logical_97 = '[]
type Binary_97  = '[]

decode_97 :: Fn Logical_97 a -> FnW Binary_97 (Decode a)
decode_97 f = return f

encode_97 :: FnW Binary_97 a -> Fn Logical_97 (Encode a)
encode_97 f = return f

parse_97 :: Fn Logical_97 a -> Parser a
parse_97 f = ws >> return f

show_97 :: Fn Logical_97 (String, ShowS)
show_97 = simple $ id


--- 98: '  <pstatefield>, #<imm>'
--- MSR_SI_system                 msr_imm.xml

type Logical_98 = '[]
type Binary_98  = '[]

decode_98 :: Fn Logical_98 a -> FnW Binary_98 (Decode a)
decode_98 f = return f

encode_98 :: FnW Binary_98 a -> Fn Logical_98 (Encode a)
encode_98 f = return f

parse_98 :: Fn Logical_98 a -> Parser a
parse_98 f = ws >> return f

show_98 :: Fn Logical_98 (String, ShowS)
show_98 = simple $ id


--- 99: '  <Dd>, <Dn>, <Dm>, <Da>'
--- FMADD_D_floatdp3              fmadd_float.xml
--- FMSUB_D_floatdp3              fmsub_float.xml
--- FNMADD_D_floatdp3             fnmadd_float.xml
--- FNMSUB_D_floatdp3             fnmsub_float.xml

type Logical_99 = '[]
type Binary_99  = '[]

decode_99 :: Fn Logical_99 a -> FnW Binary_99 (Decode a)
decode_99 f = return f

encode_99 :: FnW Binary_99 a -> Fn Logical_99 (Encode a)
encode_99 f = return f

parse_99 :: Fn Logical_99 a -> Parser a
parse_99 f = ws >> return f

show_99 :: Fn Logical_99 (String, ShowS)
show_99 = simple $ id


--- 100: '  <Hd>, <Hn>, <Hm>, <Ha>'
--- FMADD_H_floatdp3              fmadd_float.xml
--- FMSUB_H_floatdp3              fmsub_float.xml
--- FNMADD_H_floatdp3             fnmadd_float.xml
--- FNMSUB_H_floatdp3             fnmsub_float.xml

type Logical_100 = '[]
type Binary_100  = '[]

decode_100 :: Fn Logical_100 a -> FnW Binary_100 (Decode a)
decode_100 f = return f

encode_100 :: FnW Binary_100 a -> Fn Logical_100 (Encode a)
encode_100 f = return f

parse_100 :: Fn Logical_100 a -> Parser a
parse_100 f = ws >> return f

show_100 :: Fn Logical_100 (String, ShowS)
show_100 = simple $ id


--- 101: '  <Sd>, <Sn>, <Sm>, <Sa>'
--- FMADD_S_floatdp3              fmadd_float.xml
--- FMSUB_S_floatdp3              fmsub_float.xml
--- FNMADD_S_floatdp3             fnmadd_float.xml
--- FNMSUB_S_floatdp3             fnmsub_float.xml

type Logical_101 = '[]
type Binary_101  = '[]

decode_101 :: Fn Logical_101 a -> FnW Binary_101 (Decode a)
decode_101 f = return f

encode_101 :: FnW Binary_101 a -> Fn Logical_101 (Encode a)
encode_101 f = return f

parse_101 :: Fn Logical_101 a -> Parser a
parse_101 f = ws >> return f

show_101 :: Fn Logical_101 (String, ShowS)
show_101 = simple $ id


--- 102: '  <V><d>, <V><n>, <V><m>'
--- ADD_asisdsame_only            add_advsimd.xml
--- CMEQ_asisdsame_only           cmeq_advsimd_reg.xml
--- CMGE_asisdsame_only           cmge_advsimd_reg.xml
--- CMGT_asisdsame_only           cmgt_advsimd_reg.xml
--- CMHI_asisdsame_only           cmhi_advsimd.xml
--- CMHS_asisdsame_only           cmhs_advsimd.xml
--- CMTST_asisdsame_only          cmtst_advsimd.xml
--- FABD_asisdsame_only           fabd_advsimd.xml
--- FACGE_asisdsame_only          facge_advsimd.xml
--- FACGT_asisdsame_only          facgt_advsimd.xml
--- FCMEQ_asisdsame_only          fcmeq_advsimd_reg.xml
--- FCMGE_asisdsame_only          fcmge_advsimd_reg.xml
--- FCMGT_asisdsame_only          fcmgt_advsimd_reg.xml
--- FMULX_asisdsame_only          fmulx_advsimd_vec.xml
--- FRECPS_asisdsame_only         frecps_advsimd.xml
--- FRSQRTS_asisdsame_only        frsqrts_advsimd.xml
--- SQADD_asisdsame_only          sqadd_advsimd.xml
--- SQDMULH_asisdsame_only        sqdmulh_advsimd_vec.xml
--- SQRDMLAH_asisdsame2_only      sqrdmlah_advsimd_vec.xml
--- SQRDMLSH_asisdsame2_only      sqrdmlsh_advsimd_vec.xml
--- SQRDMULH_asisdsame_only       sqrdmulh_advsimd_vec.xml
--- SQRSHL_asisdsame_only         sqrshl_advsimd.xml
--- SQSHL_asisdsame_only          sqshl_advsimd_reg.xml
--- SQSUB_asisdsame_only          sqsub_advsimd.xml
--- SRSHL_asisdsame_only          srshl_advsimd.xml
--- SSHL_asisdsame_only           sshl_advsimd.xml
--- SUB_asisdsame_only            sub_advsimd.xml
--- UQADD_asisdsame_only          uqadd_advsimd.xml
--- UQRSHL_asisdsame_only         uqrshl_advsimd.xml
--- UQSHL_asisdsame_only          uqshl_advsimd_reg.xml
--- UQSUB_asisdsame_only          uqsub_advsimd.xml
--- URSHL_asisdsame_only          urshl_advsimd.xml
--- USHL_asisdsame_only           ushl_advsimd.xml

type Logical_102 = '[]
type Binary_102  = '[]

decode_102 :: Fn Logical_102 a -> FnW Binary_102 (Decode a)
decode_102 f = return f

encode_102 :: FnW Binary_102 a -> Fn Logical_102 (Encode a)
encode_102 f = return f

parse_102 :: Fn Logical_102 a -> Parser a
parse_102 f = ws >> return f

show_102 :: Fn Logical_102 (String, ShowS)
show_102 = simple $ id


--- 103: '  <Vd>.<T>, <Vn>.<T>, #0'
--- CMEQ_asimdmisc_Z              cmeq_advsimd_zero.xml
--- CMGE_asimdmisc_Z              cmge_advsimd_zero.xml
--- CMGT_asimdmisc_Z              cmgt_advsimd_zero.xml
--- CMLE_asimdmisc_Z              cmle_advsimd.xml
--- CMLT_asimdmisc_Z              cmlt_advsimd.xml

type Logical_103 = '[]
type Binary_103  = '[]

decode_103 :: Fn Logical_103 a -> FnW Binary_103 (Decode a)
decode_103 f = return f

encode_103 :: FnW Binary_103 a -> Fn Logical_103 (Encode a)
encode_103 f = return f

parse_103 :: Fn Logical_103 a -> Parser a
parse_103 f = ws >> return f

show_103 :: Fn Logical_103 (String, ShowS)
show_103 = simple $ id


--- 104: '  <Wd>, <Wn>, <Wm>, <Wa>'
--- MADD_32A_dp_3src              madd.xml
--- MSUB_32A_dp_3src              msub.xml

type Logical_104 = '[]
type Binary_104  = '[]

decode_104 :: Fn Logical_104 a -> FnW Binary_104 (Decode a)
decode_104 f = return f

encode_104 :: FnW Binary_104 a -> Fn Logical_104 (Encode a)
encode_104 f = return f

parse_104 :: Fn Logical_104 a -> Parser a
parse_104 f = ws >> return f

show_104 :: Fn Logical_104 (String, ShowS)
show_104 = simple $ id


--- 105: '  <Wd|WSP>, <Wn>, #<imm>'
--- AND_32_log_imm                and_log_imm.xml
--- EOR_32_log_imm                eor_log_imm.xml
--- ORR_32_log_imm                orr_log_imm.xml

type Logical_105 = '[]
type Binary_105  = '[]

decode_105 :: Fn Logical_105 a -> FnW Binary_105 (Decode a)
decode_105 f = return f

encode_105 :: FnW Binary_105 a -> Fn Logical_105 (Encode a)
encode_105 f = return f

parse_105 :: Fn Logical_105 a -> Parser a
parse_105 f = ws >> return f

show_105 :: Fn Logical_105 (String, ShowS)
show_105 = simple $ id


--- 106: '  <Xd>, <Wn>, <Wm>, <Xa>'
--- SMADDL_64WA_dp_3src           smaddl.xml
--- SMSUBL_64WA_dp_3src           smsubl.xml
--- UMADDL_64WA_dp_3src           umaddl.xml
--- UMSUBL_64WA_dp_3src           umsubl.xml

type Logical_106 = '[]
type Binary_106  = '[]

decode_106 :: Fn Logical_106 a -> FnW Binary_106 (Decode a)
decode_106 f = return f

encode_106 :: FnW Binary_106 a -> Fn Logical_106 (Encode a)
encode_106 f = return f

parse_106 :: Fn Logical_106 a -> Parser a
parse_106 f = ws >> return f

show_106 :: Fn Logical_106 (String, ShowS)
show_106 = simple $ id


--- 107: '  <Xd>, <Xn>, <Xm>, <Xa>'
--- MADD_64A_dp_3src              madd.xml
--- MSUB_64A_dp_3src              msub.xml

type Logical_107 = '[]
type Binary_107  = '[]

decode_107 :: Fn Logical_107 a -> FnW Binary_107 (Decode a)
decode_107 f = return f

encode_107 :: FnW Binary_107 a -> Fn Logical_107 (Encode a)
encode_107 f = return f

parse_107 :: Fn Logical_107 a -> Parser a
parse_107 f = ws >> return f

show_107 :: Fn Logical_107 (String, ShowS)
show_107 = simple $ id


--- 108: '  <R><t>, #<imm>, <label>'
--- TBNZ_only_testbranch          tbnz.xml
--- TBZ_only_testbranch           tbz.xml

type Logical_108 = '[]
type Binary_108  = '[]

decode_108 :: Fn Logical_108 a -> FnW Binary_108 (Decode a)
decode_108 f = return f

encode_108 :: FnW Binary_108 a -> Fn Logical_108 (Encode a)
encode_108 f = return f

parse_108 :: Fn Logical_108 a -> Parser a
parse_108 f = ws >> return f

show_108 :: Fn Logical_108 (String, ShowS)
show_108 = simple $ id


--- 109: '  { <Vt>.<T> }, [<Xn|SP>]'
--- LD1_asisdlse_R1_1v            ld1_advsimd_mult.xml
--- LD1R_asisdlso_R1              ld1r_advsimd.xml
--- ST1_asisdlse_R1_1v            st1_advsimd_mult.xml

type Logical_109 = '[]
type Binary_109  = '[]

decode_109 :: Fn Logical_109 a -> FnW Binary_109 (Decode a)
decode_109 f = return f

encode_109 :: FnW Binary_109 a -> Fn Logical_109 (Encode a)
encode_109 f = return f

parse_109 :: Fn Logical_109 a -> Parser a
parse_109 f = ws >> return f

show_109 :: Fn Logical_109 (String, ShowS)
show_109 = simple $ id


--- 110: '{2}  <Vd>.<Ta>, <Vn>.<Tb>'
--- FCVTL_asimdmisc_L             fcvtl_advsimd.xml

type Logical_110 = '[]
type Binary_110  = '[]

decode_110 :: Fn Logical_110 a -> FnW Binary_110 (Decode a)
decode_110 f = return f

encode_110 :: FnW Binary_110 a -> Fn Logical_110 (Encode a)
encode_110 f = return f

parse_110 :: Fn Logical_110 a -> Parser a
parse_110 f = ws >> return f

show_110 :: Fn Logical_110 (String, ShowS)
show_110 = simple $ id


--- 111: '{2}  <Vd>.<Tb>, <Vn>.<Ta>'
--- FCVTN_asimdmisc_N             fcvtn_advsimd.xml
--- FCVTXN_asimdmisc_N            fcvtxn_advsimd.xml
--- SQXTN_asimdmisc_N             sqxtn_advsimd.xml
--- SQXTUN_asimdmisc_N            sqxtun_advsimd.xml
--- UQXTN_asimdmisc_N             uqxtn_advsimd.xml
--- XTN_asimdmisc_N               xtn_advsimd.xml

type Logical_111 = '[]
type Binary_111  = '[]

decode_111 :: Fn Logical_111 a -> FnW Binary_111 (Decode a)
decode_111 f = return f

encode_111 :: FnW Binary_111 a -> Fn Logical_111 (Encode a)
encode_111 f = return f

parse_111 :: Fn Logical_111 a -> Parser a
parse_111 f = ws >> return f

show_111 :: Fn Logical_111 (String, ShowS)
show_111 = simple $ id


--- 112: '  <Bt>, [<Xn|SP>], #<simm>'
--- LDR_B_ldst_immpost            ldr_imm_fpsimd.xml
--- STR_B_ldst_immpost            str_imm_fpsimd.xml

type Logical_112 = '[]
type Binary_112  = '[]

decode_112 :: Fn Logical_112 a -> FnW Binary_112 (Decode a)
decode_112 f = return f

encode_112 :: FnW Binary_112 a -> Fn Logical_112 (Encode a)
encode_112 f = return f

parse_112 :: Fn Logical_112 a -> Parser a
parse_112 f = ws >> return f

show_112 :: Fn Logical_112 (String, ShowS)
show_112 = simple $ id


--- 113: '  <Dd>, <Dn>, <Dm>, <cond>'
--- FCSEL_D_floatsel              fcsel_float.xml

type Logical_113 = '[]
type Binary_113  = '[]

decode_113 :: Fn Logical_113 a -> FnW Binary_113 (Decode a)
decode_113 f = return f

encode_113 :: FnW Binary_113 a -> Fn Logical_113 (Encode a)
encode_113 f = return f

parse_113 :: Fn Logical_113 a -> Parser a
parse_113 f = ws >> return f

show_113 :: Fn Logical_113 (String, ShowS)
show_113 = simple $ id


--- 114: '  <Dt>, [<Xn|SP>], #<simm>'
--- LDR_D_ldst_immpost            ldr_imm_fpsimd.xml
--- STR_D_ldst_immpost            str_imm_fpsimd.xml

type Logical_114 = '[]
type Binary_114  = '[]

decode_114 :: Fn Logical_114 a -> FnW Binary_114 (Decode a)
decode_114 f = return f

encode_114 :: FnW Binary_114 a -> Fn Logical_114 (Encode a)
encode_114 f = return f

parse_114 :: Fn Logical_114 a -> Parser a
parse_114 f = ws >> return f

show_114 :: Fn Logical_114 (String, ShowS)
show_114 = simple $ id


--- 115: '  <Hd>, <Hn>, <Hm>, <cond>'
--- FCSEL_H_floatsel              fcsel_float.xml

type Logical_115 = '[]
type Binary_115  = '[]

decode_115 :: Fn Logical_115 a -> FnW Binary_115 (Decode a)
decode_115 f = return f

encode_115 :: FnW Binary_115 a -> Fn Logical_115 (Encode a)
encode_115 f = return f

parse_115 :: Fn Logical_115 a -> Parser a
parse_115 f = ws >> return f

show_115 :: Fn Logical_115 (String, ShowS)
show_115 = simple $ id


--- 116: '  <Ht>, [<Xn|SP>], #<simm>'
--- LDR_H_ldst_immpost            ldr_imm_fpsimd.xml
--- STR_H_ldst_immpost            str_imm_fpsimd.xml

type Logical_116 = '[]
type Binary_116  = '[]

decode_116 :: Fn Logical_116 a -> FnW Binary_116 (Decode a)
decode_116 f = return f

encode_116 :: FnW Binary_116 a -> Fn Logical_116 (Encode a)
encode_116 f = return f

parse_116 :: Fn Logical_116 a -> Parser a
parse_116 f = ws >> return f

show_116 :: Fn Logical_116 (String, ShowS)
show_116 = simple $ id


--- 117: '  <Qt>, [<Xn|SP>], #<simm>'
--- LDR_Q_ldst_immpost            ldr_imm_fpsimd.xml
--- STR_Q_ldst_immpost            str_imm_fpsimd.xml

type Logical_117 = '[]
type Binary_117  = '[]

decode_117 :: Fn Logical_117 a -> FnW Binary_117 (Decode a)
decode_117 f = return f

encode_117 :: FnW Binary_117 a -> Fn Logical_117 (Encode a)
encode_117 f = return f

parse_117 :: Fn Logical_117 a -> Parser a
parse_117 f = ws >> return f

show_117 :: Fn Logical_117 (String, ShowS)
show_117 = simple $ id


--- 118: '  <Sd>, <Sn>, <Sm>, <cond>'
--- FCSEL_S_floatsel              fcsel_float.xml

type Logical_118 = '[]
type Binary_118  = '[]

decode_118 :: Fn Logical_118 a -> FnW Binary_118 (Decode a)
decode_118 f = return f

encode_118 :: FnW Binary_118 a -> Fn Logical_118 (Encode a)
encode_118 f = return f

parse_118 :: Fn Logical_118 a -> Parser a
parse_118 f = ws >> return f

show_118 :: Fn Logical_118 (String, ShowS)
show_118 = simple $ id


--- 119: '  <St>, [<Xn|SP>], #<simm>'
--- LDR_S_ldst_immpost            ldr_imm_fpsimd.xml
--- STR_S_ldst_immpost            str_imm_fpsimd.xml

type Logical_119 = '[]
type Binary_119  = '[]

decode_119 :: Fn Logical_119 a -> FnW Binary_119 (Decode a)
decode_119 f = return f

encode_119 :: FnW Binary_119 a -> Fn Logical_119 (Encode a)
encode_119 f = return f

parse_119 :: Fn Logical_119 a -> Parser a
parse_119 f = ws >> return f

show_119 :: Fn Logical_119 (String, ShowS)
show_119 = simple $ id


--- 120: '  <V><d>, <V><n>, #<fbits>'
--- FCVTZS_asisdshf_C             fcvtzs_advsimd_fix.xml
--- FCVTZU_asisdshf_C             fcvtzu_advsimd_fix.xml
--- SCVTF_asisdshf_C              scvtf_advsimd_fix.xml
--- UCVTF_asisdshf_C              ucvtf_advsimd_fix.xml

type Logical_120 = '[]
type Binary_120  = '[]

decode_120 :: Fn Logical_120 a -> FnW Binary_120 (Decode a)
decode_120 f = return f

encode_120 :: FnW Binary_120 a -> Fn Logical_120 (Encode a)
encode_120 f = return f

parse_120 :: Fn Logical_120 a -> Parser a
parse_120 f = ws >> return f

show_120 :: Fn Logical_120 (String, ShowS)
show_120 = simple $ id


--- 121: '  <V><d>, <V><n>, #<shift>'
--- SHL_asisdshf_R                shl_advsimd.xml
--- SLI_asisdshf_R                sli_advsimd.xml
--- SQSHL_asisdshf_R              sqshl_advsimd_imm.xml
--- SQSHLU_asisdshf_R             sqshlu_advsimd.xml
--- SRI_asisdshf_R                sri_advsimd.xml
--- SRSHR_asisdshf_R              srshr_advsimd.xml
--- SRSRA_asisdshf_R              srsra_advsimd.xml
--- SSHR_asisdshf_R               sshr_advsimd.xml
--- SSRA_asisdshf_R               ssra_advsimd.xml
--- UQSHL_asisdshf_R              uqshl_advsimd_imm.xml
--- URSHR_asisdshf_R              urshr_advsimd.xml
--- URSRA_asisdshf_R              ursra_advsimd.xml
--- USHR_asisdshf_R               ushr_advsimd.xml
--- USRA_asisdshf_R               usra_advsimd.xml

type Logical_121 = '[]
type Binary_121  = '[]

decode_121 :: Fn Logical_121 a -> FnW Binary_121 (Decode a)
decode_121 f = return f

encode_121 :: FnW Binary_121 a -> Fn Logical_121 (Encode a)
encode_121 f = return f

parse_121 :: Fn Logical_121 a -> Parser a
parse_121 f = ws >> return f

show_121 :: Fn Logical_121 (String, ShowS)
show_121 = simple $ id


--- 122: '  <Vd>.<T>, <Vn>.<T>, #0.0'
--- FCMEQ_asimdmiscfp16_FZ        fcmeq_advsimd_zero.xml
--- FCMEQ_asimdmisc_FZ            fcmeq_advsimd_zero.xml
--- FCMGE_asimdmiscfp16_FZ        fcmge_advsimd_zero.xml
--- FCMGE_asimdmisc_FZ            fcmge_advsimd_zero.xml
--- FCMGT_asimdmiscfp16_FZ        fcmgt_advsimd_zero.xml
--- FCMGT_asimdmisc_FZ            fcmgt_advsimd_zero.xml
--- FCMLE_asimdmiscfp16_FZ        fcmle_advsimd.xml
--- FCMLE_asimdmisc_FZ            fcmle_advsimd.xml
--- FCMLT_asimdmiscfp16_FZ        fcmlt_advsimd.xml
--- FCMLT_asimdmisc_FZ            fcmlt_advsimd.xml

type Logical_122 = '[]
type Binary_122  = '[]

decode_122 :: Fn Logical_122 a -> FnW Binary_122 (Decode a)
decode_122 f = return f

encode_122 :: FnW Binary_122 a -> Fn Logical_122 (Encode a)
encode_122 f = return f

parse_122 :: Fn Logical_122 a -> Parser a
parse_122 f = ws >> return f

show_122 :: Fn Logical_122 (String, ShowS)
show_122 = simple $ id


--- 123: '  <Wd>, <Vn>.<Ts>[<index>]'
--- SMOV_asimdins_W_w             smov_advsimd.xml
--- UMOV_asimdins_W_w             umov_advsimd.xml

type Logical_123 = '[]
type Binary_123  = '[]

decode_123 :: Fn Logical_123 a -> FnW Binary_123 (Decode a)
decode_123 f = return f

encode_123 :: FnW Binary_123 a -> Fn Logical_123 (Encode a)
encode_123 f = return f

parse_123 :: Fn Logical_123 a -> Parser a
parse_123 f = ws >> return f

show_123 :: Fn Logical_123 (String, ShowS)
show_123 = simple $ id


--- 124: '  <Wd>, <Wn>, <Wm>, #<lsb>'
--- EXTR_32_extract               extr.xml

type Logical_124 = '[]
type Binary_124  = '[]

decode_124 :: Fn Logical_124 a -> FnW Binary_124 (Decode a)
decode_124 f = return f

encode_124 :: FnW Binary_124 a -> Fn Logical_124 (Encode a)
encode_124 f = return f

parse_124 :: Fn Logical_124 a -> Parser a
parse_124 f = ws >> return f

show_124 :: Fn Logical_124 (String, ShowS)
show_124 = simple $ id


--- 125: '  <Wd>, <Wn>, <Wm>, <cond>'
--- CSEL_32_condsel               csel.xml
--- CSINC_32_condsel              csinc.xml
--- CSINV_32_condsel              csinv.xml
--- CSNEG_32_condsel              csneg.xml

type Logical_125 = '[Wn, Wn, Wn, Cond]
type Binary_125  = '[5, 5, 5, 4]

decode_125 :: Fn Logical_125 a -> FnW Binary_125 (Decode a)
decode_125 f rd rn rm cond = f <$> dec rd <*> dec rn <*> dec rm <*> dec cond

encode_125 :: FnW Binary_125 a -> Fn Logical_125 (Encode a)
encode_125 f wd wn wm cond = f <$> enc wd <*> enc wn <*> enc wm <*> enc cond

parse_125 :: Fn Logical_125 a -> Parser a
parse_125 f = ws >> f <$> prs <*> prs <*> prs <*> prs

show_125 :: Fn Logical_125 (String, ShowS)
show_125 wd wn wm cond = simple $ asm wd +> asm wn +> asm wm +> asm cond


--- 126: '  <Wt>, [<Xn|SP>], #<simm>'
--- LDR_32_ldst_immpost           ldr_imm_gen.xml
--- LDRB_32_ldst_immpost          ldrb_imm.xml
--- LDRH_32_ldst_immpost          ldrh_imm.xml
--- LDRSB_32_ldst_immpost         ldrsb_imm.xml
--- LDRSH_32_ldst_immpost         ldrsh_imm.xml
--- STR_32_ldst_immpost           str_imm_gen.xml
--- STRB_32_ldst_immpost          strb_imm.xml
--- STRH_32_ldst_immpost          strh_imm.xml

type Logical_126 = '[]
type Binary_126  = '[]

decode_126 :: Fn Logical_126 a -> FnW Binary_126 (Decode a)
decode_126 f = return f

encode_126 :: FnW Binary_126 a -> Fn Logical_126 (Encode a)
encode_126 f = return f

parse_126 :: Fn Logical_126 a -> Parser a
parse_126 f = ws >> return f

show_126 :: Fn Logical_126 (String, ShowS)
show_126 = simple $ id


--- 127: '  <Xd>, <Vn>.<Ts>[<index>]'
--- SMOV_asimdins_X_x             smov_advsimd.xml
--- UMOV_asimdins_X_x             umov_advsimd.xml

type Logical_127 = '[]
type Binary_127  = '[]

decode_127 :: Fn Logical_127 a -> FnW Binary_127 (Decode a)
decode_127 f = return f

encode_127 :: FnW Binary_127 a -> Fn Logical_127 (Encode a)
encode_127 f = return f

parse_127 :: Fn Logical_127 a -> Parser a
parse_127 f = ws >> return f

show_127 :: Fn Logical_127 (String, ShowS)
show_127 = simple $ id


--- 128: '  <Xd>, <Xn>, <Xm>, #<lsb>'
--- EXTR_64_extract               extr.xml

type Logical_128 = '[]
type Binary_128  = '[]

decode_128 :: Fn Logical_128 a -> FnW Binary_128 (Decode a)
decode_128 f = return f

encode_128 :: FnW Binary_128 a -> Fn Logical_128 (Encode a)
encode_128 f = return f

parse_128 :: Fn Logical_128 a -> Parser a
parse_128 f = ws >> return f

show_128 :: Fn Logical_128 (String, ShowS)
show_128 = simple $ id


--- 129: '  <Xd>, <Xn>, <Xm>, <cond>'
--- CSEL_64_condsel               csel.xml
--- CSINC_64_condsel              csinc.xml
--- CSINV_64_condsel              csinv.xml
--- CSNEG_64_condsel              csneg.xml

type Logical_129 = '[]
type Binary_129  = '[]

decode_129 :: Fn Logical_129 a -> FnW Binary_129 (Decode a)
decode_129 f = return f

encode_129 :: FnW Binary_129 a -> Fn Logical_129 (Encode a)
encode_129 f = return f

parse_129 :: Fn Logical_129 a -> Parser a
parse_129 f = ws >> return f

show_129 :: Fn Logical_129 (String, ShowS)
show_129 = simple $ id


--- 130: '  <Xt>, [<Xn|SP>], #<simm>'
--- LDR_64_ldst_immpost           ldr_imm_gen.xml
--- LDRSB_64_ldst_immpost         ldrsb_imm.xml
--- LDRSH_64_ldst_immpost         ldrsh_imm.xml
--- LDRSW_64_ldst_immpost         ldrsw_imm.xml
--- STR_64_ldst_immpost           str_imm_gen.xml

type Logical_130 = '[]
type Binary_130  = '[]

decode_130 :: Fn Logical_130 a -> FnW Binary_130 (Decode a)
decode_130 f = return f

encode_130 :: FnW Binary_130 a -> Fn Logical_130 (Encode a)
encode_130 f = return f

parse_130 :: Fn Logical_130 a -> Parser a
parse_130 f = ws >> return f

show_130 :: Fn Logical_130 (String, ShowS)
show_130 = simple $ id


--- 131: '  <Bt>, [<Xn|SP>, #<simm>]!'
--- LDR_B_ldst_immpre             ldr_imm_fpsimd.xml
--- STR_B_ldst_immpre             str_imm_fpsimd.xml

type Logical_131 = '[]
type Binary_131  = '[]

decode_131 :: Fn Logical_131 a -> FnW Binary_131 (Decode a)
decode_131 f = return f

encode_131 :: FnW Binary_131 a -> Fn Logical_131 (Encode a)
encode_131 f = return f

parse_131 :: Fn Logical_131 a -> Parser a
parse_131 f = ws >> return f

show_131 :: Fn Logical_131 (String, ShowS)
show_131 = simple $ id


--- 132: '  <Dt>, [<Xn|SP>, #<simm>]!'
--- LDR_D_ldst_immpre             ldr_imm_fpsimd.xml
--- STR_D_ldst_immpre             str_imm_fpsimd.xml

type Logical_132 = '[]
type Binary_132  = '[]

decode_132 :: Fn Logical_132 a -> FnW Binary_132 (Decode a)
decode_132 f = return f

encode_132 :: FnW Binary_132 a -> Fn Logical_132 (Encode a)
encode_132 f = return f

parse_132 :: Fn Logical_132 a -> Parser a
parse_132 f = ws >> return f

show_132 :: Fn Logical_132 (String, ShowS)
show_132 = simple $ id


--- 133: '  <Ht>, [<Xn|SP>, #<simm>]!'
--- LDR_H_ldst_immpre             ldr_imm_fpsimd.xml
--- STR_H_ldst_immpre             str_imm_fpsimd.xml

type Logical_133 = '[]
type Binary_133  = '[]

decode_133 :: Fn Logical_133 a -> FnW Binary_133 (Decode a)
decode_133 f = return f

encode_133 :: FnW Binary_133 a -> Fn Logical_133 (Encode a)
encode_133 f = return f

parse_133 :: Fn Logical_133 a -> Parser a
parse_133 f = ws >> return f

show_133 :: Fn Logical_133 (String, ShowS)
show_133 = simple $ id


--- 134: '  <Qt>, [<Xn|SP>, #<simm>]!'
--- LDR_Q_ldst_immpre             ldr_imm_fpsimd.xml
--- STR_Q_ldst_immpre             str_imm_fpsimd.xml

type Logical_134 = '[]
type Binary_134  = '[]

decode_134 :: Fn Logical_134 a -> FnW Binary_134 (Decode a)
decode_134 f = return f

encode_134 :: FnW Binary_134 a -> Fn Logical_134 (Encode a)
encode_134 f = return f

parse_134 :: Fn Logical_134 a -> Parser a
parse_134 f = ws >> return f

show_134 :: Fn Logical_134 (String, ShowS)
show_134 = simple $ id


--- 135: '  <St>, [<Xn|SP>, #<simm>]!'
--- LDR_S_ldst_immpre             ldr_imm_fpsimd.xml
--- STR_S_ldst_immpre             str_imm_fpsimd.xml

type Logical_135 = '[]
type Binary_135  = '[]

decode_135 :: Fn Logical_135 a -> FnW Binary_135 (Decode a)
decode_135 f = return f

encode_135 :: FnW Binary_135 a -> Fn Logical_135 (Encode a)
encode_135 f = return f

parse_135 :: Fn Logical_135 a -> Parser a
parse_135 f = ws >> return f

show_135 :: Fn Logical_135 (String, ShowS)
show_135 = simple $ id


--- 136: '  <V><d>, <Vn>.<T>[<index>]'
--- DUP_asisdone_only             dup_advsimd_elt.xml

type Logical_136 = '[]
type Binary_136  = '[]

decode_136 :: Fn Logical_136 a -> FnW Binary_136 (Decode a)
decode_136 f = return f

encode_136 :: FnW Binary_136 a -> Fn Logical_136 (Encode a)
encode_136 f = return f

parse_136 :: Fn Logical_136 a -> Parser a
parse_136 f = ws >> return f

show_136 :: Fn Logical_136 (String, ShowS)
show_136 = simple $ id


--- 137: '  <Va><d>, <Vb><n>, <Vb><m>'
--- SQDMLAL_asisddiff_only        sqdmlal_advsimd_vec.xml
--- SQDMLSL_asisddiff_only        sqdmlsl_advsimd_vec.xml
--- SQDMULL_asisddiff_only        sqdmull_advsimd_vec.xml

type Logical_137 = '[]
type Binary_137  = '[]

decode_137 :: Fn Logical_137 a -> FnW Binary_137 (Decode a)
decode_137 f = return f

encode_137 :: FnW Binary_137 a -> Fn Logical_137 (Encode a)
encode_137 f = return f

parse_137 :: Fn Logical_137 a -> Parser a
parse_137 f = ws >> return f

show_137 :: Fn Logical_137 (String, ShowS)
show_137 = simple $ id


--- 138: '  <Vd>.2D, <Vn>.2D, <Vm>.2D'
--- RAX1_VVV2_cryptosha512_3      rax1_advsimd.xml
--- SHA512SU1_VVV2_cryptosha512_3 sha512su1_advsimd.xml

type Logical_138 = '[]
type Binary_138  = '[]

decode_138 :: Fn Logical_138 a -> FnW Binary_138 (Decode a)
decode_138 f = return f

encode_138 :: FnW Binary_138 a -> Fn Logical_138 (Encode a)
encode_138 f = return f

parse_138 :: Fn Logical_138 a -> Parser a
parse_138 f = ws >> return f

show_138 :: Fn Logical_138 (String, ShowS)
show_138 = simple $ id


--- 139: '  <Vd>.4S, <Vn>.4S, <Vm>.4S'
--- SHA1SU0_VVV_cryptosha3        sha1su0_advsimd.xml
--- SHA256SU1_VVV_cryptosha3      sha256su1_advsimd.xml
--- SM3PARTW1_VVV4_cryptosha512_3 sm3partw1_advsimd.xml
--- SM3PARTW2_VVV4_cryptosha512_3 sm3partw2_advsimd.xml
--- SM4EKEY_VVV4_cryptosha512_3   sm4ekey_advsimd.xml

type Logical_139 = '[]
type Binary_139  = '[]

decode_139 :: Fn Logical_139 a -> FnW Binary_139 (Decode a)
decode_139 f = return f

encode_139 :: FnW Binary_139 a -> Fn Logical_139 (Encode a)
encode_139 f = return f

parse_139 :: Fn Logical_139 a -> Parser a
parse_139 f = ws >> return f

show_139 :: Fn Logical_139 (String, ShowS)
show_139 = simple $ id


--- 140: '  <Wt>, [<Xn|SP>, #<simm>]!'
--- LDR_32_ldst_immpre            ldr_imm_gen.xml
--- LDRB_32_ldst_immpre           ldrb_imm.xml
--- LDRH_32_ldst_immpre           ldrh_imm.xml
--- LDRSB_32_ldst_immpre          ldrsb_imm.xml
--- LDRSH_32_ldst_immpre          ldrsh_imm.xml
--- STR_32_ldst_immpre            str_imm_gen.xml
--- STRB_32_ldst_immpre           strb_imm.xml
--- STRH_32_ldst_immpre           strh_imm.xml

type Logical_140 = '[]
type Binary_140  = '[]

decode_140 :: Fn Logical_140 a -> FnW Binary_140 (Decode a)
decode_140 f = return f

encode_140 :: FnW Binary_140 a -> Fn Logical_140 (Encode a)
encode_140 f = return f

parse_140 :: Fn Logical_140 a -> Parser a
parse_140 f = ws >> return f

show_140 :: Fn Logical_140 (String, ShowS)
show_140 = simple $ id


--- 141: '  <Xt>, [<Xn|SP>, #<simm>]!'
--- LDR_64_ldst_immpre            ldr_imm_gen.xml
--- LDRSB_64_ldst_immpre          ldrsb_imm.xml
--- LDRSH_64_ldst_immpre          ldrsh_imm.xml
--- LDRSW_64_ldst_immpre          ldrsw_imm.xml
--- STR_64_ldst_immpre            str_imm_gen.xml

type Logical_141 = '[]
type Binary_141  = '[]

decode_141 :: Fn Logical_141 a -> FnW Binary_141 (Decode a)
decode_141 f = return f

encode_141 :: FnW Binary_141 a -> Fn Logical_141 (Encode a)
encode_141 f = return f

parse_141 :: Fn Logical_141 a -> Parser a
parse_141 f = ws >> return f

show_141 :: Fn Logical_141 (String, ShowS)
show_141 = simple $ id


--- 142: '  (<prfop>|#<imm5>), <label>'
--- PRFM_P_loadlit                prfm_lit.xml

type Logical_142 = '[]
type Binary_142  = '[]

decode_142 :: Fn Logical_142 a -> FnW Binary_142 (Decode a)
decode_142 f = return f

encode_142 :: FnW Binary_142 a -> Fn Logical_142 (Encode a)
encode_142 f = return f

parse_142 :: Fn Logical_142 a -> Parser a
parse_142 f = ws >> return f

show_142 :: Fn Logical_142 (String, ShowS)
show_142 = simple $ id


--- 143: '  <Bt>, [<Xn|SP>{, #<pimm>}]'
--- LDR_B_ldst_pos                ldr_imm_fpsimd.xml
--- STR_B_ldst_pos                str_imm_fpsimd.xml

type Logical_143 = '[]
type Binary_143  = '[]

decode_143 :: Fn Logical_143 a -> FnW Binary_143 (Decode a)
decode_143 f = return f

encode_143 :: FnW Binary_143 a -> Fn Logical_143 (Encode a)
encode_143 f = return f

parse_143 :: Fn Logical_143 a -> Parser a
parse_143 f = ws >> return f

show_143 :: Fn Logical_143 (String, ShowS)
show_143 = simple $ id


--- 144: '  <Bt>, [<Xn|SP>{, #<simm>}]'
--- LDUR_B_ldst_unscaled          ldur_fpsimd.xml
--- STUR_B_ldst_unscaled          stur_fpsimd.xml

type Logical_144 = '[]
type Binary_144  = '[]

decode_144 :: Fn Logical_144 a -> FnW Binary_144 (Decode a)
decode_144 f = return f

encode_144 :: FnW Binary_144 a -> Fn Logical_144 (Encode a)
encode_144 f = return f

parse_144 :: Fn Logical_144 a -> Parser a
parse_144 f = ws >> return f

show_144 :: Fn Logical_144 (String, ShowS)
show_144 = simple $ id


--- 145: '  <Dt>, [<Xn|SP>{, #<pimm>}]'
--- LDR_D_ldst_pos                ldr_imm_fpsimd.xml
--- STR_D_ldst_pos                str_imm_fpsimd.xml

type Logical_145 = '[]
type Binary_145  = '[]

decode_145 :: Fn Logical_145 a -> FnW Binary_145 (Decode a)
decode_145 f = return f

encode_145 :: FnW Binary_145 a -> Fn Logical_145 (Encode a)
encode_145 f = return f

parse_145 :: Fn Logical_145 a -> Parser a
parse_145 f = ws >> return f

show_145 :: Fn Logical_145 (String, ShowS)
show_145 = simple $ id


--- 146: '  <Dt>, [<Xn|SP>{, #<simm>}]'
--- LDUR_D_ldst_unscaled          ldur_fpsimd.xml
--- STUR_D_ldst_unscaled          stur_fpsimd.xml

type Logical_146 = '[]
type Binary_146  = '[]

decode_146 :: Fn Logical_146 a -> FnW Binary_146 (Decode a)
decode_146 f = return f

encode_146 :: FnW Binary_146 a -> Fn Logical_146 (Encode a)
encode_146 f = return f

parse_146 :: Fn Logical_146 a -> Parser a
parse_146 f = ws >> return f

show_146 :: Fn Logical_146 (String, ShowS)
show_146 = simple $ id


--- 147: '  <Ht>, [<Xn|SP>{, #<pimm>}]'
--- LDR_H_ldst_pos                ldr_imm_fpsimd.xml
--- STR_H_ldst_pos                str_imm_fpsimd.xml

type Logical_147 = '[]
type Binary_147  = '[]

decode_147 :: Fn Logical_147 a -> FnW Binary_147 (Decode a)
decode_147 f = return f

encode_147 :: FnW Binary_147 a -> Fn Logical_147 (Encode a)
encode_147 f = return f

parse_147 :: Fn Logical_147 a -> Parser a
parse_147 f = ws >> return f

show_147 :: Fn Logical_147 (String, ShowS)
show_147 = simple $ id


--- 148: '  <Ht>, [<Xn|SP>{, #<simm>}]'
--- LDUR_H_ldst_unscaled          ldur_fpsimd.xml
--- STUR_H_ldst_unscaled          stur_fpsimd.xml

type Logical_148 = '[]
type Binary_148  = '[]

decode_148 :: Fn Logical_148 a -> FnW Binary_148 (Decode a)
decode_148 f = return f

encode_148 :: FnW Binary_148 a -> Fn Logical_148 (Encode a)
encode_148 f = return f

parse_148 :: Fn Logical_148 a -> Parser a
parse_148 f = ws >> return f

show_148 :: Fn Logical_148 (String, ShowS)
show_148 = simple $ id


--- 149: '  <Qt>, [<Xn|SP>{, #<pimm>}]'
--- LDR_Q_ldst_pos                ldr_imm_fpsimd.xml
--- STR_Q_ldst_pos                str_imm_fpsimd.xml

type Logical_149 = '[]
type Binary_149  = '[]

decode_149 :: Fn Logical_149 a -> FnW Binary_149 (Decode a)
decode_149 f = return f

encode_149 :: FnW Binary_149 a -> Fn Logical_149 (Encode a)
encode_149 f = return f

parse_149 :: Fn Logical_149 a -> Parser a
parse_149 f = ws >> return f

show_149 :: Fn Logical_149 (String, ShowS)
show_149 = simple $ id


--- 150: '  <Qt>, [<Xn|SP>{, #<simm>}]'
--- LDUR_Q_ldst_unscaled          ldur_fpsimd.xml
--- STUR_Q_ldst_unscaled          stur_fpsimd.xml

type Logical_150 = '[]
type Binary_150  = '[]

decode_150 :: Fn Logical_150 a -> FnW Binary_150 (Decode a)
decode_150 f = return f

encode_150 :: FnW Binary_150 a -> Fn Logical_150 (Encode a)
encode_150 f = return f

parse_150 :: Fn Logical_150 a -> Parser a
parse_150 f = ws >> return f

show_150 :: Fn Logical_150 (String, ShowS)
show_150 = simple $ id


--- 151: '  <St>, [<Xn|SP>{, #<pimm>}]'
--- LDR_S_ldst_pos                ldr_imm_fpsimd.xml
--- STR_S_ldst_pos                str_imm_fpsimd.xml

type Logical_151 = '[]
type Binary_151  = '[]

decode_151 :: Fn Logical_151 a -> FnW Binary_151 (Decode a)
decode_151 f = return f

encode_151 :: FnW Binary_151 a -> Fn Logical_151 (Encode a)
encode_151 f = return f

parse_151 :: Fn Logical_151 a -> Parser a
parse_151 f = ws >> return f

show_151 :: Fn Logical_151 (String, ShowS)
show_151 = simple $ id


--- 152: '  <St>, [<Xn|SP>{, #<simm>}]'
--- LDUR_S_ldst_unscaled          ldur_fpsimd.xml
--- STUR_S_ldst_unscaled          stur_fpsimd.xml

type Logical_152 = '[]
type Binary_152  = '[]

decode_152 :: Fn Logical_152 a -> FnW Binary_152 (Decode a)
decode_152 f = return f

encode_152 :: FnW Binary_152 a -> Fn Logical_152 (Encode a)
encode_152 f = return f

parse_152 :: Fn Logical_152 a -> Parser a
parse_152 f = ws >> return f

show_152 :: Fn Logical_152 (String, ShowS)
show_152 = simple $ id


--- 153: '  <Vb><d>, <Va><n>, #<shift>'
--- SQRSHRN_asisdshf_N            sqrshrn_advsimd.xml
--- SQRSHRUN_asisdshf_N           sqrshrun_advsimd.xml
--- SQSHRN_asisdshf_N             sqshrn_advsimd.xml
--- SQSHRUN_asisdshf_N            sqshrun_advsimd.xml
--- UQRSHRN_asisdshf_N            uqrshrn_advsimd.xml
--- UQSHRN_asisdshf_N             uqshrn_advsimd.xml

type Logical_153 = '[]
type Binary_153  = '[]

decode_153 :: Fn Logical_153 a -> FnW Binary_153 (Decode a)
decode_153 f = return f

encode_153 :: FnW Binary_153 a -> Fn Logical_153 (Encode a)
encode_153 f = return f

parse_153 :: Fn Logical_153 a -> Parser a
parse_153 f = ws >> return f

show_153 :: Fn Logical_153 (String, ShowS)
show_153 = simple $ id


--- 154: '  <Vd>.<Ts>[<index>], <R><n>'
--- INS_asimdins_IR_r             ins_advsimd_gen.xml

type Logical_154 = '[]
type Binary_154  = '[]

decode_154 :: Fn Logical_154 a -> FnW Binary_154 (Decode a)
decode_154 f = return f

encode_154 :: FnW Binary_154 a -> Fn Logical_154 (Encode a)
encode_154 f = return f

parse_154 :: Fn Logical_154 a -> Parser a
parse_154 f = ws >> return f

show_154 :: Fn Logical_154 (String, ShowS)
show_154 = simple $ id


--- 155: '  <Ws>, <Wt>, [<Xn|SP>{,#0}]'
--- CAS_C32_ldstexcl              cas.xml
--- CASA_C32_ldstexcl             cas.xml
--- CASAL_C32_ldstexcl            cas.xml
--- CASL_C32_ldstexcl             cas.xml
--- CASAB_C32_ldstexcl            casb.xml
--- CASALB_C32_ldstexcl           casb.xml
--- CASB_C32_ldstexcl             casb.xml
--- CASLB_C32_ldstexcl            casb.xml
--- CASAH_C32_ldstexcl            cash.xml
--- CASALH_C32_ldstexcl           cash.xml
--- CASH_C32_ldstexcl             cash.xml
--- CASLH_C32_ldstexcl            cash.xml
--- STLXR_SR32_ldstexcl           stlxr.xml
--- STLXRB_SR32_ldstexcl          stlxrb.xml
--- STLXRH_SR32_ldstexcl          stlxrh.xml
--- STXR_SR32_ldstexcl            stxr.xml
--- STXRB_SR32_ldstexcl           stxrb.xml
--- STXRH_SR32_ldstexcl           stxrh.xml

type Logical_155 = '[]
type Binary_155  = '[]

decode_155 :: Fn Logical_155 a -> FnW Binary_155 (Decode a)
decode_155 f = return f

encode_155 :: FnW Binary_155 a -> Fn Logical_155 (Encode a)
encode_155 f = return f

parse_155 :: Fn Logical_155 a -> Parser a
parse_155 f = ws >> return f

show_155 :: Fn Logical_155 (String, ShowS)
show_155 = simple $ id


--- 156: '  <Ws>, <Xt>, [<Xn|SP>{,#0}]'
--- STLXR_SR64_ldstexcl           stlxr.xml
--- STXR_SR64_ldstexcl            stxr.xml

type Logical_156 = '[]
type Binary_156  = '[]

decode_156 :: Fn Logical_156 a -> FnW Binary_156 (Decode a)
decode_156 f = return f

encode_156 :: FnW Binary_156 a -> Fn Logical_156 (Encode a)
encode_156 f = return f

parse_156 :: Fn Logical_156 a -> Parser a
parse_156 f = ws >> return f

show_156 :: Fn Logical_156 (String, ShowS)
show_156 = simple $ id


--- 157: '  <Wt>, [<Xn|SP>{, #<pimm>}]'
--- LDR_32_ldst_pos               ldr_imm_gen.xml
--- LDRB_32_ldst_pos              ldrb_imm.xml
--- LDRH_32_ldst_pos              ldrh_imm.xml
--- LDRSB_32_ldst_pos             ldrsb_imm.xml
--- LDRSH_32_ldst_pos             ldrsh_imm.xml
--- STR_32_ldst_pos               str_imm_gen.xml
--- STRB_32_ldst_pos              strb_imm.xml
--- STRH_32_ldst_pos              strh_imm.xml

type Logical_157 = '[]
type Binary_157  = '[]

decode_157 :: Fn Logical_157 a -> FnW Binary_157 (Decode a)
decode_157 f = return f

encode_157 :: FnW Binary_157 a -> Fn Logical_157 (Encode a)
encode_157 f = return f

parse_157 :: Fn Logical_157 a -> Parser a
parse_157 f = ws >> return f

show_157 :: Fn Logical_157 (String, ShowS)
show_157 = simple $ id


--- 158: '  <Wt>, [<Xn|SP>{, #<simm>}]'
--- LDTR_32_ldst_unpriv           ldtr.xml
--- LDTRB_32_ldst_unpriv          ldtrb.xml
--- LDTRH_32_ldst_unpriv          ldtrh.xml
--- LDTRSB_32_ldst_unpriv         ldtrsb.xml
--- LDTRSH_32_ldst_unpriv         ldtrsh.xml
--- LDUR_32_ldst_unscaled         ldur_gen.xml
--- LDURB_32_ldst_unscaled        ldurb.xml
--- LDURH_32_ldst_unscaled        ldurh.xml
--- LDURSB_32_ldst_unscaled       ldursb.xml
--- LDURSH_32_ldst_unscaled       ldursh.xml
--- STTR_32_ldst_unpriv           sttr.xml
--- STTRB_32_ldst_unpriv          sttrb.xml
--- STTRH_32_ldst_unpriv          sttrh.xml
--- STUR_32_ldst_unscaled         stur_gen.xml
--- STURB_32_ldst_unscaled        sturb.xml
--- STURH_32_ldst_unscaled        sturh.xml

type Logical_158 = '[]
type Binary_158  = '[]

decode_158 :: Fn Logical_158 a -> FnW Binary_158 (Decode a)
decode_158 f = return f

encode_158 :: FnW Binary_158 a -> Fn Logical_158 (Encode a)
encode_158 f = return f

parse_158 :: Fn Logical_158 a -> Parser a
parse_158 f = ws >> return f

show_158 :: Fn Logical_158 (String, ShowS)
show_158 = simple $ id


--- 159: '  <Xs>, <Xt>, [<Xn|SP>{,#0}]'
--- CAS_C64_ldstexcl              cas.xml
--- CASA_C64_ldstexcl             cas.xml
--- CASAL_C64_ldstexcl            cas.xml
--- CASL_C64_ldstexcl             cas.xml

type Logical_159 = '[]
type Binary_159  = '[]

decode_159 :: Fn Logical_159 a -> FnW Binary_159 (Decode a)
decode_159 f = return f

encode_159 :: FnW Binary_159 a -> Fn Logical_159 (Encode a)
encode_159 f = return f

parse_159 :: Fn Logical_159 a -> Parser a
parse_159 f = ws >> return f

show_159 :: Fn Logical_159 (String, ShowS)
show_159 = simple $ id


--- 160: '  <Xt>, [<Xn|SP>{, #<pimm>}]'
--- LDR_64_ldst_pos               ldr_imm_gen.xml
--- LDRSB_64_ldst_pos             ldrsb_imm.xml
--- LDRSH_64_ldst_pos             ldrsh_imm.xml
--- LDRSW_64_ldst_pos             ldrsw_imm.xml
--- STR_64_ldst_pos               str_imm_gen.xml

type Logical_160 = '[Xn, XnSP, W 12]
type Binary_160  = '[5, 5, 12]

decode_160 :: Fn Logical_160 a -> FnW Binary_160 (Decode a)
decode_160 f rt rn imm12 = f <$> dec rt <*> dec rn <*> dec imm12

encode_160 :: FnW Binary_160 a -> Fn Logical_160 (Encode a)
encode_160 f xt xn imm = f <$> enc xt <*> enc xn <*> enc imm

parse_160 :: Fn Logical_160 a -> Parser a
parse_160 f = ws >> uncurry <$> (f <$> prs) <+> prsOffset64p

show_160 :: Fn Logical_160 (String, ShowS)
show_160 xt xn imm = simple $ asm xt +> asmOffset64p xn imm


--- 161: '  <Xt>, [<Xn|SP>{, #<simm>}]'
--- LDRAA_64_ldst_pac             ldra.xml
--- LDRAB_64_ldst_pac             ldra.xml
--- LDTR_64_ldst_unpriv           ldtr.xml
--- LDTRSB_64_ldst_unpriv         ldtrsb.xml
--- LDTRSH_64_ldst_unpriv         ldtrsh.xml
--- LDTRSW_64_ldst_unpriv         ldtrsw.xml
--- LDUR_64_ldst_unscaled         ldur_gen.xml
--- LDURSB_64_ldst_unscaled       ldursb.xml
--- LDURSH_64_ldst_unscaled       ldursh.xml
--- LDURSW_64_ldst_unscaled       ldursw.xml
--- STTR_64_ldst_unpriv           sttr.xml
--- STUR_64_ldst_unscaled         stur_gen.xml

type Logical_161 = '[]
type Binary_161  = '[]

decode_161 :: Fn Logical_161 a -> FnW Binary_161 (Decode a)
decode_161 f = return f

encode_161 :: FnW Binary_161 a -> Fn Logical_161 (Encode a)
encode_161 f = return f

parse_161 :: Fn Logical_161 a -> Parser a
parse_161 f = ws >> return f

show_161 :: Fn Logical_161 (String, ShowS)
show_161 = simple $ id


--- 162: '  <Dn>, <Dm>, #<nzcv>, <cond>'
--- FCCMP_D_floatccmp             fccmp_float.xml
--- FCCMPE_D_floatccmp            fccmpe_float.xml

type Logical_162 = '[]
type Binary_162  = '[]

decode_162 :: Fn Logical_162 a -> FnW Binary_162 (Decode a)
decode_162 f = return f

encode_162 :: FnW Binary_162 a -> Fn Logical_162 (Encode a)
encode_162 f = return f

parse_162 :: Fn Logical_162 a -> Parser a
parse_162 f = ws >> return f

show_162 :: Fn Logical_162 (String, ShowS)
show_162 = simple $ id


--- 163: '  <Hd>, <Hn>, <Vm>.H[<index>]'
--- FMLA_asisdelem_RH_H           fmla_advsimd_elt.xml
--- FMLS_asisdelem_RH_H           fmls_advsimd_elt.xml
--- FMUL_asisdelem_RH_H           fmul_advsimd_elt.xml
--- FMULX_asisdelem_RH_H          fmulx_advsimd_elt.xml

type Logical_163 = '[]
type Binary_163  = '[]

decode_163 :: Fn Logical_163 a -> FnW Binary_163 (Decode a)
decode_163 f = return f

encode_163 :: FnW Binary_163 a -> Fn Logical_163 (Encode a)
encode_163 f = return f

parse_163 :: Fn Logical_163 a -> Parser a
parse_163 f = ws >> return f

show_163 :: Fn Logical_163 (String, ShowS)
show_163 = simple $ id


--- 164: '  <Hn>, <Hm>, #<nzcv>, <cond>'
--- FCCMP_H_floatccmp             fccmp_float.xml
--- FCCMPE_H_floatccmp            fccmpe_float.xml

type Logical_164 = '[]
type Binary_164  = '[]

decode_164 :: Fn Logical_164 a -> FnW Binary_164 (Decode a)
decode_164 f = return f

encode_164 :: FnW Binary_164 a -> Fn Logical_164 (Encode a)
encode_164 f = return f

parse_164 :: Fn Logical_164 a -> Parser a
parse_164 f = ws >> return f

show_164 :: Fn Logical_164 (String, ShowS)
show_164 = simple $ id


--- 165: '  <Sn>, <Sm>, #<nzcv>, <cond>'
--- FCCMP_S_floatccmp             fccmp_float.xml
--- FCCMPE_S_floatccmp            fccmpe_float.xml

type Logical_165 = '[]
type Binary_165  = '[]

decode_165 :: Fn Logical_165 a -> FnW Binary_165 (Decode a)
decode_165 f = return f

encode_165 :: FnW Binary_165 a -> Fn Logical_165 (Encode a)
encode_165 f = return f

parse_165 :: Fn Logical_165 a -> Parser a
parse_165 f = ws >> return f

show_165 :: Fn Logical_165 (String, ShowS)
show_165 = simple $ id


--- 166: '  <Vd>.<T>, #<imm8>{, LSL #0}'
--- MOVI_asimdimm_N_b             movi_advsimd.xml

type Logical_166 = '[]
type Binary_166  = '[]

decode_166 :: Fn Logical_166 a -> FnW Binary_166 (Decode a)
decode_166 f = return f

encode_166 :: FnW Binary_166 a -> Fn Logical_166 (Encode a)
encode_166 f = return f

parse_166 :: Fn Logical_166 a -> Parser a
parse_166 f = ws >> return f

show_166 :: Fn Logical_166 (String, ShowS)
show_166 = simple $ id


--- 167: '  <Wn>, <Wm>, #<nzcv>, <cond>'
--- CCMN_32_condcmp_reg           ccmn_reg.xml
--- CCMP_32_condcmp_reg           ccmp_reg.xml

type Logical_167 = '[]
type Binary_167  = '[]

decode_167 :: Fn Logical_167 a -> FnW Binary_167 (Decode a)
decode_167 f = return f

encode_167 :: FnW Binary_167 a -> Fn Logical_167 (Encode a)
encode_167 f = return f

parse_167 :: Fn Logical_167 a -> Parser a
parse_167 f = ws >> return f

show_167 :: Fn Logical_167 (String, ShowS)
show_167 = simple $ id


--- 168: '  <Xn>, <Xm>, #<nzcv>, <cond>'
--- CCMN_64_condcmp_reg           ccmn_reg.xml
--- CCMP_64_condcmp_reg           ccmp_reg.xml

type Logical_168 = '[]
type Binary_168  = '[]

decode_168 :: Fn Logical_168 a -> FnW Binary_168 (Decode a)
decode_168 f = return f

encode_168 :: FnW Binary_168 a -> Fn Logical_168 (Encode a)
encode_168 f = return f

parse_168 :: Fn Logical_168 a -> Parser a
parse_168 f = ws >> return f

show_168 :: Fn Logical_168 (String, ShowS)
show_168 = simple $ id


--- 169: '  <Xt>, [<Xn|SP>{, #<simm>}]!'
--- LDRAA_64W_ldst_pac            ldra.xml
--- LDRAB_64W_ldst_pac            ldra.xml

type Logical_169 = '[]
type Binary_169  = '[]

decode_169 :: Fn Logical_169 a -> FnW Binary_169 (Decode a)
decode_169 f = return f

encode_169 :: FnW Binary_169 a -> Fn Logical_169 (Encode a)
encode_169 f = return f

parse_169 :: Fn Logical_169 a -> Parser a
parse_169 f = ws >> return f

show_169 :: Fn Logical_169 (String, ShowS)
show_169 = simple $ id


--- 170: '  <Vd>.<T>, <Vn>.<T>, #<fbits>'
--- FCVTZS_asimdshf_C             fcvtzs_advsimd_fix.xml
--- FCVTZU_asimdshf_C             fcvtzu_advsimd_fix.xml
--- SCVTF_asimdshf_C              scvtf_advsimd_fix.xml
--- UCVTF_asimdshf_C              ucvtf_advsimd_fix.xml

type Logical_170 = '[]
type Binary_170  = '[]

decode_170 :: Fn Logical_170 a -> FnW Binary_170 (Decode a)
decode_170 f = return f

encode_170 :: FnW Binary_170 a -> Fn Logical_170 (Encode a)
encode_170 f = return f

parse_170 :: Fn Logical_170 a -> Parser a
parse_170 f = ws >> return f

show_170 :: Fn Logical_170 (String, ShowS)
show_170 = simple $ id


--- 171: '  <Vd>.<T>, <Vn>.<T>, #<shift>'
--- SHL_asimdshf_R                shl_advsimd.xml
--- SLI_asimdshf_R                sli_advsimd.xml
--- SQSHL_asimdshf_R              sqshl_advsimd_imm.xml
--- SQSHLU_asimdshf_R             sqshlu_advsimd.xml
--- SRI_asimdshf_R                sri_advsimd.xml
--- SRSHR_asimdshf_R              srshr_advsimd.xml
--- SRSRA_asimdshf_R              srsra_advsimd.xml
--- SSHR_asimdshf_R               sshr_advsimd.xml
--- SSRA_asimdshf_R               ssra_advsimd.xml
--- UQSHL_asimdshf_R              uqshl_advsimd_imm.xml
--- URSHR_asimdshf_R              urshr_advsimd.xml
--- URSRA_asimdshf_R              ursra_advsimd.xml
--- USHR_asimdshf_R               ushr_advsimd.xml
--- USRA_asimdshf_R               usra_advsimd.xml

type Logical_171 = '[]
type Binary_171  = '[]

decode_171 :: Fn Logical_171 a -> FnW Binary_171 (Decode a)
decode_171 f = return f

encode_171 :: FnW Binary_171 a -> Fn Logical_171 (Encode a)
encode_171 f = return f

parse_171 :: Fn Logical_171 a -> Parser a
parse_171 f = ws >> return f

show_171 :: Fn Logical_171 (String, ShowS)
show_171 = simple $ id


--- 172: '  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>'
--- ADD_asimdsame_only            add_advsimd.xml
--- ADDP_asimdsame_only           addp_advsimd_vec.xml
--- AND_asimdsame_only            and_advsimd.xml
--- BIC_asimdsame_only            bic_advsimd_reg.xml
--- BIF_asimdsame_only            bif_advsimd.xml
--- BIT_asimdsame_only            bit_advsimd.xml
--- BSL_asimdsame_only            bsl_advsimd.xml
--- CMEQ_asimdsame_only           cmeq_advsimd_reg.xml
--- CMGE_asimdsame_only           cmge_advsimd_reg.xml
--- CMGT_asimdsame_only           cmgt_advsimd_reg.xml
--- CMHI_asimdsame_only           cmhi_advsimd.xml
--- CMHS_asimdsame_only           cmhs_advsimd.xml
--- CMTST_asimdsame_only          cmtst_advsimd.xml
--- EOR_asimdsame_only            eor_advsimd.xml
--- FABD_asimdsamefp16_only       fabd_advsimd.xml
--- FABD_asimdsame_only           fabd_advsimd.xml
--- FACGE_asimdsamefp16_only      facge_advsimd.xml
--- FACGE_asimdsame_only          facge_advsimd.xml
--- FACGT_asimdsamefp16_only      facgt_advsimd.xml
--- FACGT_asimdsame_only          facgt_advsimd.xml
--- FADD_asimdsamefp16_only       fadd_advsimd.xml
--- FADD_asimdsame_only           fadd_advsimd.xml
--- FADDP_asimdsamefp16_only      faddp_advsimd_vec.xml
--- FADDP_asimdsame_only          faddp_advsimd_vec.xml
--- FCMEQ_asimdsamefp16_only      fcmeq_advsimd_reg.xml
--- FCMEQ_asimdsame_only          fcmeq_advsimd_reg.xml
--- FCMGE_asimdsamefp16_only      fcmge_advsimd_reg.xml
--- FCMGE_asimdsame_only          fcmge_advsimd_reg.xml
--- FCMGT_asimdsamefp16_only      fcmgt_advsimd_reg.xml
--- FCMGT_asimdsame_only          fcmgt_advsimd_reg.xml
--- FDIV_asimdsamefp16_only       fdiv_advsimd.xml
--- FDIV_asimdsame_only           fdiv_advsimd.xml
--- FMAX_asimdsamefp16_only       fmax_advsimd.xml
--- FMAX_asimdsame_only           fmax_advsimd.xml
--- FMAXNM_asimdsamefp16_only     fmaxnm_advsimd.xml
--- FMAXNM_asimdsame_only         fmaxnm_advsimd.xml
--- FMAXNMP_asimdsamefp16_only    fmaxnmp_advsimd_vec.xml
--- FMAXNMP_asimdsame_only        fmaxnmp_advsimd_vec.xml
--- FMAXP_asimdsamefp16_only      fmaxp_advsimd_vec.xml
--- FMAXP_asimdsame_only          fmaxp_advsimd_vec.xml
--- FMIN_asimdsamefp16_only       fmin_advsimd.xml
--- FMIN_asimdsame_only           fmin_advsimd.xml
--- FMINNM_asimdsamefp16_only     fminnm_advsimd.xml
--- FMINNM_asimdsame_only         fminnm_advsimd.xml
--- FMINNMP_asimdsamefp16_only    fminnmp_advsimd_vec.xml
--- FMINNMP_asimdsame_only        fminnmp_advsimd_vec.xml
--- FMINP_asimdsamefp16_only      fminp_advsimd_vec.xml
--- FMINP_asimdsame_only          fminp_advsimd_vec.xml
--- FMLA_asimdsamefp16_only       fmla_advsimd_vec.xml
--- FMLA_asimdsame_only           fmla_advsimd_vec.xml
--- FMLS_asimdsamefp16_only       fmls_advsimd_vec.xml
--- FMLS_asimdsame_only           fmls_advsimd_vec.xml
--- FMUL_asimdsamefp16_only       fmul_advsimd_vec.xml
--- FMUL_asimdsame_only           fmul_advsimd_vec.xml
--- FMULX_asimdsamefp16_only      fmulx_advsimd_vec.xml
--- FMULX_asimdsame_only          fmulx_advsimd_vec.xml
--- FRECPS_asimdsamefp16_only     frecps_advsimd.xml
--- FRECPS_asimdsame_only         frecps_advsimd.xml
--- FRSQRTS_asimdsamefp16_only    frsqrts_advsimd.xml
--- FRSQRTS_asimdsame_only        frsqrts_advsimd.xml
--- FSUB_asimdsamefp16_only       fsub_advsimd.xml
--- FSUB_asimdsame_only           fsub_advsimd.xml
--- MLA_asimdsame_only            mla_advsimd_vec.xml
--- MLS_asimdsame_only            mls_advsimd_vec.xml
--- MUL_asimdsame_only            mul_advsimd_vec.xml
--- ORN_asimdsame_only            orn_advsimd.xml
--- ORR_asimdsame_only            orr_advsimd_reg.xml
--- PMUL_asimdsame_only           pmul_advsimd.xml
--- SABA_asimdsame_only           saba_advsimd.xml
--- SABD_asimdsame_only           sabd_advsimd.xml
--- SHADD_asimdsame_only          shadd_advsimd.xml
--- SHSUB_asimdsame_only          shsub_advsimd.xml
--- SMAX_asimdsame_only           smax_advsimd.xml
--- SMAXP_asimdsame_only          smaxp_advsimd.xml
--- SMIN_asimdsame_only           smin_advsimd.xml
--- SMINP_asimdsame_only          sminp_advsimd.xml
--- SQADD_asimdsame_only          sqadd_advsimd.xml
--- SQDMULH_asimdsame_only        sqdmulh_advsimd_vec.xml
--- SQRDMLAH_asimdsame2_only      sqrdmlah_advsimd_vec.xml
--- SQRDMLSH_asimdsame2_only      sqrdmlsh_advsimd_vec.xml
--- SQRDMULH_asimdsame_only       sqrdmulh_advsimd_vec.xml
--- SQRSHL_asimdsame_only         sqrshl_advsimd.xml
--- SQSHL_asimdsame_only          sqshl_advsimd_reg.xml
--- SQSUB_asimdsame_only          sqsub_advsimd.xml
--- SRHADD_asimdsame_only         srhadd_advsimd.xml
--- SRSHL_asimdsame_only          srshl_advsimd.xml
--- SSHL_asimdsame_only           sshl_advsimd.xml
--- SUB_asimdsame_only            sub_advsimd.xml
--- TRN1_asimdperm_only           trn1_advsimd.xml
--- TRN2_asimdperm_only           trn2_advsimd.xml
--- UABA_asimdsame_only           uaba_advsimd.xml
--- UABD_asimdsame_only           uabd_advsimd.xml
--- UHADD_asimdsame_only          uhadd_advsimd.xml
--- UHSUB_asimdsame_only          uhsub_advsimd.xml
--- UMAX_asimdsame_only           umax_advsimd.xml
--- UMAXP_asimdsame_only          umaxp_advsimd.xml
--- UMIN_asimdsame_only           umin_advsimd.xml
--- UMINP_asimdsame_only          uminp_advsimd.xml
--- UQADD_asimdsame_only          uqadd_advsimd.xml
--- UQRSHL_asimdsame_only         uqrshl_advsimd.xml
--- UQSHL_asimdsame_only          uqshl_advsimd_reg.xml
--- UQSUB_asimdsame_only          uqsub_advsimd.xml
--- URHADD_asimdsame_only         urhadd_advsimd.xml
--- URSHL_asimdsame_only          urshl_advsimd.xml
--- USHL_asimdsame_only           ushl_advsimd.xml
--- UZP1_asimdperm_only           uzp1_advsimd.xml
--- UZP2_asimdperm_only           uzp2_advsimd.xml
--- ZIP1_asimdperm_only           zip1_advsimd.xml
--- ZIP2_asimdperm_only           zip2_advsimd.xml

type Logical_172 = '[]
type Binary_172  = '[]

decode_172 :: Fn Logical_172 a -> FnW Binary_172 (Decode a)
decode_172 f = return f

encode_172 :: FnW Binary_172 a -> Fn Logical_172 (Encode a)
encode_172 f = return f

parse_172 :: Fn Logical_172 a -> Parser a
parse_172 f = ws >> return f

show_172 :: Fn Logical_172 (String, ShowS)
show_172 = simple $ id


--- 173: '  <Vd>.<T>, <Vn>.<Ts>[<index>]'
--- DUP_asimdins_DV_v             dup_advsimd_elt.xml

type Logical_173 = '[]
type Binary_173  = '[]

decode_173 :: Fn Logical_173 a -> FnW Binary_173 (Decode a)
decode_173 f = return f

encode_173 :: FnW Binary_173 a -> Fn Logical_173 (Encode a)
encode_173 f = return f

parse_173 :: Fn Logical_173 a -> Parser a
parse_173 f = ws >> return f

show_173 :: Fn Logical_173 (String, ShowS)
show_173 = simple $ id


--- 174: '  <Wd>, #<imm>{, LSL #<shift>}'
--- MOVK_32_movewide              movk.xml
--- MOVN_32_movewide              movn.xml
--- MOVZ_32_movewide              movz.xml

type Logical_174 = '[]
type Binary_174  = '[]

decode_174 :: Fn Logical_174 a -> FnW Binary_174 (Decode a)
decode_174 f = return f

encode_174 :: FnW Binary_174 a -> Fn Logical_174 (Encode a)
encode_174 f = return f

parse_174 :: Fn Logical_174 a -> Parser a
parse_174 f = ws >> return f

show_174 :: Fn Logical_174 (String, ShowS)
show_174 = simple $ id


--- 175: '  <Wd>, <Wn>, #<immr>, #<imms>'
--- BFM_32M_bitfield              bfm.xml
--- SBFM_32M_bitfield             sbfm.xml
--- UBFM_32M_bitfield             ubfm.xml

type Logical_175 = '[]
type Binary_175  = '[]

decode_175 :: Fn Logical_175 a -> FnW Binary_175 (Decode a)
decode_175 f = return f

encode_175 :: FnW Binary_175 a -> Fn Logical_175 (Encode a)
encode_175 f = return f

parse_175 :: Fn Logical_175 a -> Parser a
parse_175 f = ws >> return f

show_175 :: Fn Logical_175 (String, ShowS)
show_175 = simple $ id


--- 176: '  <Wt1>, <Wt2>, [<Xn|SP>{,#0}]'
--- LDAXP_LP32_ldstexcl           ldaxp.xml
--- LDXP_LP32_ldstexcl            ldxp.xml

type Logical_176 = '[]
type Binary_176  = '[]

decode_176 :: Fn Logical_176 a -> FnW Binary_176 (Decode a)
decode_176 f = return f

encode_176 :: FnW Binary_176 a -> Fn Logical_176 (Encode a)
encode_176 f = return f

parse_176 :: Fn Logical_176 a -> Parser a
parse_176 f = ws >> return f

show_176 :: Fn Logical_176 (String, ShowS)
show_176 = simple $ id


--- 177: '  <Xd>, #<imm>{, LSL #<shift>}'
--- MOVK_64_movewide              movk.xml
--- MOVN_64_movewide              movn.xml
--- MOVZ_64_movewide              movz.xml

type Logical_177 = '[]
type Binary_177  = '[]

decode_177 :: Fn Logical_177 a -> FnW Binary_177 (Decode a)
decode_177 f = return f

encode_177 :: FnW Binary_177 a -> Fn Logical_177 (Encode a)
encode_177 f = return f

parse_177 :: Fn Logical_177 a -> Parser a
parse_177 f = ws >> return f

show_177 :: Fn Logical_177 (String, ShowS)
show_177 = simple $ id


--- 178: '  <Xd>, <Xn>, #<immr>, #<imms>'
--- BFM_64M_bitfield              bfm.xml
--- SBFM_64M_bitfield             sbfm.xml
--- UBFM_64M_bitfield             ubfm.xml

type Logical_178 = '[]
type Binary_178  = '[]

decode_178 :: Fn Logical_178 a -> FnW Binary_178 (Decode a)
decode_178 f = return f

encode_178 :: FnW Binary_178 a -> Fn Logical_178 (Encode a)
encode_178 f = return f

parse_178 :: Fn Logical_178 a -> Parser a
parse_178 f = ws >> return f

show_178 :: Fn Logical_178 (String, ShowS)
show_178 = simple $ id


--- 179: '  <Xt1>, <Xt2>, [<Xn|SP>{,#0}]'
--- LDAXP_LP64_ldstexcl           ldaxp.xml
--- LDXP_LP64_ldstexcl            ldxp.xml

type Logical_179 = '[]
type Binary_179  = '[]

decode_179 :: Fn Logical_179 a -> FnW Binary_179 (Decode a)
decode_179 f = return f

encode_179 :: FnW Binary_179 a -> Fn Logical_179 (Encode a)
encode_179 f = return f

parse_179 :: Fn Logical_179 a -> Parser a
parse_179 f = ws >> return f

show_179 :: Fn Logical_179 (String, ShowS)
show_179 = simple $ id


--- 180: '  <Wn>, #<imm>, #<nzcv>, <cond>'
--- CCMN_32_condcmp_imm           ccmn_imm.xml
--- CCMP_32_condcmp_imm           ccmp_imm.xml

type Logical_180 = '[]
type Binary_180  = '[]

decode_180 :: Fn Logical_180 a -> FnW Binary_180 (Decode a)
decode_180 f = return f

encode_180 :: FnW Binary_180 a -> Fn Logical_180 (Encode a)
encode_180 f = return f

parse_180 :: Fn Logical_180 a -> Parser a
parse_180 f = ws >> return f

show_180 :: Fn Logical_180 (String, ShowS)
show_180 = simple $ id


--- 181: '  <Xn>, #<imm>, #<nzcv>, <cond>'
--- CCMN_64_condcmp_imm           ccmn_imm.xml
--- CCMP_64_condcmp_imm           ccmp_imm.xml

type Logical_181 = '[]
type Binary_181  = '[]

decode_181 :: Fn Logical_181 a -> FnW Binary_181 (Decode a)
decode_181 f = return f

encode_181 :: FnW Binary_181 a -> Fn Logical_181 (Encode a)
encode_181 f = return f

parse_181 :: Fn Logical_181 a -> Parser a
parse_181 f = ws >> return f

show_181 :: Fn Logical_181 (String, ShowS)
show_181 = simple $ id


--- 182: '  { <Vt>.<T> }, [<Xn|SP>], <Xm>'
--- LD1_asisdlsep_R1_r1           ld1_advsimd_mult.xml
--- LD1R_asisdlsop_RX1_r          ld1r_advsimd.xml
--- ST1_asisdlsep_R1_r1           st1_advsimd_mult.xml

type Logical_182 = '[]
type Binary_182  = '[]

decode_182 :: Fn Logical_182 a -> FnW Binary_182 (Decode a)
decode_182 f = return f

encode_182 :: FnW Binary_182 a -> Fn Logical_182 (Encode a)
encode_182 f = return f

parse_182 :: Fn Logical_182 a -> Parser a
parse_182 f = ws >> return f

show_182 :: Fn Logical_182 (String, ShowS)
show_182 = simple $ id


--- 183: '  <Vd>.S, <Vn>.S, <Vm>.S[<imm2>]'
--- SM3TT2B_VVV_crypto3_imm2      sm3tt2b_advsimd.xml

type Logical_183 = '[]
type Binary_183  = '[]

decode_183 :: Fn Logical_183 a -> FnW Binary_183 (Decode a)
decode_183 f = return f

encode_183 :: FnW Binary_183 a -> Fn Logical_183 (Encode a)
encode_183 f = return f

parse_183 :: Fn Logical_183 a -> Parser a
parse_183 f = ws >> return f

show_183 :: Fn Logical_183 (String, ShowS)
show_183 = simple $ id


--- 184: '  { <Vt>.<T> }, [<Xn|SP>], <imm>'
--- LD1_asisdlsep_I1_i1           ld1_advsimd_mult.xml
--- LD1R_asisdlsop_R1_i           ld1r_advsimd.xml
--- ST1_asisdlsep_I1_i1           st1_advsimd_mult.xml

type Logical_184 = '[]
type Binary_184  = '[]

decode_184 :: Fn Logical_184 a -> FnW Binary_184 (Decode a)
decode_184 f = return f

encode_184 :: FnW Binary_184 a -> Fn Logical_184 (Encode a)
encode_184 f = return f

parse_184 :: Fn Logical_184 a -> Parser a
parse_184 f = ws >> return f

show_184 :: Fn Logical_184 (String, ShowS)
show_184 = simple $ id


--- 185: '  { <Vt>.B }[<index>], [<Xn|SP>]'
--- LD1_asisdlso_B1_1b            ld1_advsimd_sngl.xml
--- ST1_asisdlso_B1_1b            st1_advsimd_sngl.xml

type Logical_185 = '[]
type Binary_185  = '[]

decode_185 :: Fn Logical_185 a -> FnW Binary_185 (Decode a)
decode_185 f = return f

encode_185 :: FnW Binary_185 a -> Fn Logical_185 (Encode a)
encode_185 f = return f

parse_185 :: Fn Logical_185 a -> Parser a
parse_185 f = ws >> return f

show_185 :: Fn Logical_185 (String, ShowS)
show_185 = simple $ id


--- 186: '  { <Vt>.D }[<index>], [<Xn|SP>]'
--- LD1_asisdlso_D1_1d            ld1_advsimd_sngl.xml
--- ST1_asisdlso_D1_1d            st1_advsimd_sngl.xml

type Logical_186 = '[]
type Binary_186  = '[]

decode_186 :: Fn Logical_186 a -> FnW Binary_186 (Decode a)
decode_186 f = return f

encode_186 :: FnW Binary_186 a -> Fn Logical_186 (Encode a)
encode_186 f = return f

parse_186 :: Fn Logical_186 a -> Parser a
parse_186 f = ws >> return f

show_186 :: Fn Logical_186 (String, ShowS)
show_186 = simple $ id


--- 187: '  { <Vt>.H }[<index>], [<Xn|SP>]'
--- LD1_asisdlso_H1_1h            ld1_advsimd_sngl.xml
--- ST1_asisdlso_H1_1h            st1_advsimd_sngl.xml

type Logical_187 = '[]
type Binary_187  = '[]

decode_187 :: Fn Logical_187 a -> FnW Binary_187 (Decode a)
decode_187 f = return f

encode_187 :: FnW Binary_187 a -> Fn Logical_187 (Encode a)
encode_187 f = return f

parse_187 :: Fn Logical_187 a -> Parser a
parse_187 f = ws >> return f

show_187 :: Fn Logical_187 (String, ShowS)
show_187 = simple $ id


--- 188: '  { <Vt>.S }[<index>], [<Xn|SP>]'
--- LD1_asisdlso_S1_1s            ld1_advsimd_sngl.xml
--- ST1_asisdlso_S1_1s            st1_advsimd_sngl.xml

type Logical_188 = '[]
type Binary_188  = '[]

decode_188 :: Fn Logical_188 a -> FnW Binary_188 (Decode a)
decode_188 f = return f

encode_188 :: FnW Binary_188 a -> Fn Logical_188 (Encode a)
encode_188 f = return f

parse_188 :: Fn Logical_188 a -> Parser a
parse_188 f = ws >> return f

show_188 :: Fn Logical_188 (String, ShowS)
show_188 = simple $ id


--- 189: '  <Dt1>, <Dt2>, [<Xn|SP>], #<imm>'
--- LDP_D_ldstpair_post           ldp_fpsimd.xml
--- STP_D_ldstpair_post           stp_fpsimd.xml

type Logical_189 = '[]
type Binary_189  = '[]

decode_189 :: Fn Logical_189 a -> FnW Binary_189 (Decode a)
decode_189 f = return f

encode_189 :: FnW Binary_189 a -> Fn Logical_189 (Encode a)
encode_189 f = return f

parse_189 :: Fn Logical_189 a -> Parser a
parse_189 f = ws >> return f

show_189 :: Fn Logical_189 (String, ShowS)
show_189 = simple $ id


--- 190: '  <Qt1>, <Qt2>, [<Xn|SP>], #<imm>'
--- LDP_Q_ldstpair_post           ldp_fpsimd.xml
--- STP_Q_ldstpair_post           stp_fpsimd.xml

type Logical_190 = '[]
type Binary_190  = '[]

decode_190 :: Fn Logical_190 a -> FnW Binary_190 (Decode a)
decode_190 f = return f

encode_190 :: FnW Binary_190 a -> Fn Logical_190 (Encode a)
encode_190 f = return f

parse_190 :: Fn Logical_190 a -> Parser a
parse_190 f = ws >> return f

show_190 :: Fn Logical_190 (String, ShowS)
show_190 = simple $ id


--- 191: '  <St1>, <St2>, [<Xn|SP>], #<imm>'
--- LDP_S_ldstpair_post           ldp_fpsimd.xml
--- STP_S_ldstpair_post           stp_fpsimd.xml

type Logical_191 = '[]
type Binary_191  = '[]

decode_191 :: Fn Logical_191 a -> FnW Binary_191 (Decode a)
decode_191 f = return f

encode_191 :: FnW Binary_191 a -> Fn Logical_191 (Encode a)
encode_191 f = return f

parse_191 :: Fn Logical_191 a -> Parser a
parse_191 f = ws >> return f

show_191 :: Fn Logical_191 (String, ShowS)
show_191 = simple $ id


--- 192: '  <Vd>.<Ta>, <Vn>.<Tb>, <Vm>.<Tb>'
--- SDOT_asimdsame2_D             sdot_advsimd_vec.xml
--- UDOT_asimdsame2_D             udot_advsimd_vec.xml

type Logical_192 = '[]
type Binary_192  = '[]

decode_192 :: Fn Logical_192 a -> FnW Binary_192 (Decode a)
decode_192 f = return f

encode_192 :: FnW Binary_192 a -> Fn Logical_192 (Encode a)
encode_192 f = return f

parse_192 :: Fn Logical_192 a -> Parser a
parse_192 f = ws >> return f

show_192 :: Fn Logical_192 (String, ShowS)
show_192 = simple $ id


--- 193: '  <Wt1>, <Wt2>, [<Xn|SP>], #<imm>'
--- LDP_32_ldstpair_post          ldp_gen.xml
--- STP_32_ldstpair_post          stp_gen.xml

type Logical_193 = '[]
type Binary_193  = '[]

decode_193 :: Fn Logical_193 a -> FnW Binary_193 (Decode a)
decode_193 f = return f

encode_193 :: FnW Binary_193 a -> Fn Logical_193 (Encode a)
encode_193 f = return f

parse_193 :: Fn Logical_193 a -> Parser a
parse_193 f = ws >> return f

show_193 :: Fn Logical_193 (String, ShowS)
show_193 = simple $ id


--- 194: '  <Xt1>, <Xt2>, [<Xn|SP>], #<imm>'
--- LDP_64_ldstpair_post          ldp_gen.xml
--- LDPSW_64_ldstpair_post        ldpsw.xml
--- STP_64_ldstpair_post          stp_gen.xml

type Logical_194 = '[]
type Binary_194  = '[]

decode_194 :: Fn Logical_194 a -> FnW Binary_194 (Decode a)
decode_194 f = return f

encode_194 :: FnW Binary_194 a -> Fn Logical_194 (Encode a)
encode_194 f = return f

parse_194 :: Fn Logical_194 a -> Parser a
parse_194 f = ws >> return f

show_194 :: Fn Logical_194 (String, ShowS)
show_194 = simple $ id


--- 195: '  <Dt1>, <Dt2>, [<Xn|SP>, #<imm>]!'
--- LDP_D_ldstpair_pre            ldp_fpsimd.xml
--- STP_D_ldstpair_pre            stp_fpsimd.xml

type Logical_195 = '[]
type Binary_195  = '[]

decode_195 :: Fn Logical_195 a -> FnW Binary_195 (Decode a)
decode_195 f = return f

encode_195 :: FnW Binary_195 a -> Fn Logical_195 (Encode a)
encode_195 f = return f

parse_195 :: Fn Logical_195 a -> Parser a
parse_195 f = ws >> return f

show_195 :: Fn Logical_195 (String, ShowS)
show_195 = simple $ id


--- 196: '  <Qt1>, <Qt2>, [<Xn|SP>, #<imm>]!'
--- LDP_Q_ldstpair_pre            ldp_fpsimd.xml
--- STP_Q_ldstpair_pre            stp_fpsimd.xml

type Logical_196 = '[]
type Binary_196  = '[]

decode_196 :: Fn Logical_196 a -> FnW Binary_196 (Decode a)
decode_196 f = return f

encode_196 :: FnW Binary_196 a -> Fn Logical_196 (Encode a)
encode_196 f = return f

parse_196 :: Fn Logical_196 a -> Parser a
parse_196 f = ws >> return f

show_196 :: Fn Logical_196 (String, ShowS)
show_196 = simple $ id


--- 197: '  <St1>, <St2>, [<Xn|SP>, #<imm>]!'
--- LDP_S_ldstpair_pre            ldp_fpsimd.xml
--- STP_S_ldstpair_pre            stp_fpsimd.xml

type Logical_197 = '[]
type Binary_197  = '[]

decode_197 :: Fn Logical_197 a -> FnW Binary_197 (Decode a)
decode_197 f = return f

encode_197 :: FnW Binary_197 a -> Fn Logical_197 (Encode a)
encode_197 f = return f

parse_197 :: Fn Logical_197 a -> Parser a
parse_197 f = ws >> return f

show_197 :: Fn Logical_197 (String, ShowS)
show_197 = simple $ id


--- 198: '  <Vd>.4S, <Vn>.4S, <Vm>.S[<imm2>]'
--- SM3TT1A_VVV4_crypto3_imm2     sm3tt1a_advsimd.xml
--- SM3TT1B_VVV4_crypto3_imm2     sm3tt1b_advsimd.xml
--- SM3TT2A_VVV4_crypto3_imm2     sm3tt2a_advsimd.xml

type Logical_198 = '[]
type Binary_198  = '[]

decode_198 :: Fn Logical_198 a -> FnW Binary_198 (Decode a)
decode_198 f = return f

encode_198 :: FnW Binary_198 a -> Fn Logical_198 (Encode a)
encode_198 f = return f

parse_198 :: Fn Logical_198 a -> Parser a
parse_198 f = ws >> return f

show_198 :: Fn Logical_198 (String, ShowS)
show_198 = simple $ id


--- 199: '  <Vd>.<T>, #<imm8>, MSL #<amount>'
--- MOVI_asimdimm_M_sm            movi_advsimd.xml
--- MVNI_asimdimm_M_sm            mvni_advsimd.xml

type Logical_199 = '[]
type Binary_199  = '[]

decode_199 :: Fn Logical_199 a -> FnW Binary_199 (Decode a)
decode_199 f = return f

encode_199 :: FnW Binary_199 a -> Fn Logical_199 (Encode a)
encode_199 f = return f

parse_199 :: Fn Logical_199 a -> Parser a
parse_199 f = ws >> return f

show_199 :: Fn Logical_199 (String, ShowS)
show_199 = simple $ id


--- 200: '  <Wt1>, <Wt2>, [<Xn|SP>, #<imm>]!'
--- LDP_32_ldstpair_pre           ldp_gen.xml
--- STP_32_ldstpair_pre           stp_gen.xml

type Logical_200 = '[]
type Binary_200  = '[]

decode_200 :: Fn Logical_200 a -> FnW Binary_200 (Decode a)
decode_200 f = return f

encode_200 :: FnW Binary_200 a -> Fn Logical_200 (Encode a)
encode_200 f = return f

parse_200 :: Fn Logical_200 a -> Parser a
parse_200 f = ws >> return f

show_200 :: Fn Logical_200 (String, ShowS)
show_200 = simple $ id


--- 201: '  <Xd>, <Xn|SP>, #<imm>{, <shift>}'
--- ADDS_64S_addsub_imm           adds_addsub_imm.xml
--- SUBS_64S_addsub_imm           subs_addsub_imm.xml

type Logical_201 = '[Xn, XnSP, W 12, LSL_12]
type Binary_201  = '[5, 5, 12, 2]

decode_201 :: Fn Logical_201 a -> FnW Binary_201 (Decode a)
decode_201 f rd rn imm12 shift = f
    <$> dec rd
    <*> dec rn
    <*> dec imm12
    <*> dec shift

encode_201 :: FnW Binary_201 a -> Fn Logical_201 (Encode a)
encode_201 f xd xn imm shift = f
    <$> enc xd
    <*> enc xn
    <*> enc imm
    <*> enc shift

parse_201 :: Fn Logical_201 a -> Parser a
parse_201 f = ws >> f <$> prs <+> prs <+> prs <*> prs

show_201 :: Fn Logical_201 (String, ShowS)
show_201 xd xn imm shift = simple $ asm xd +> asm xn +> asm imm . asm shift


--- 202: '  <Xt1>, <Xt2>, [<Xn|SP>, #<imm>]!'
--- LDP_64_ldstpair_pre           ldp_gen.xml
--- LDPSW_64_ldstpair_pre         ldpsw.xml
--- STP_64_ldstpair_pre           stp_gen.xml

type Logical_202 = '[Xn, Xn, XnSP, I 7]
type Binary_202  = '[5, 5, 5, 7]

decode_202 :: Fn Logical_202 a -> FnW Binary_202 (Decode a)
decode_202 f rt rt2 rn imm7 = f <$> dec rt <*> dec rt2 <*> dec rn <*> dec imm7

encode_202 :: FnW Binary_202 a -> Fn Logical_202 (Encode a)
encode_202 f xt1 xt2 xn imm = f <$> enc xt1 <*> enc xt2 <*> enc xn <*> enc imm

parse_202 :: Fn Logical_202 a -> Parser a
parse_202 f = ws >> uncurry <$> (f <$> prs <+> prs) <+> prsPreIndex64

show_202 :: Fn Logical_202 (String, ShowS)
show_202 xt1 xt2 xn imm = simple $ asm xt1 +> asm xt2 +> asmPreIndex64 xn imm


--- 203: '  <Xt>, #<op1>, <Cn>, <Cm>, #<op2>'
--- SYSL_RC_system                sysl.xml

type Logical_203 = '[]
type Binary_203  = '[]

decode_203 :: Fn Logical_203 a -> FnW Binary_203 (Decode a)
decode_203 f = return f

encode_203 :: FnW Binary_203 a -> Fn Logical_203 (Encode a)
encode_203 f = return f

parse_203 :: Fn Logical_203 a -> Parser a
parse_203 f = ws >> return f

show_203 :: Fn Logical_203 (String, ShowS)
show_203 = simple $ id


--- 204: '  <Dt1>, <Dt2>, [<Xn|SP>{, #<imm>}]'
--- LDNP_D_ldstnapair_offs        ldnp_fpsimd.xml
--- LDP_D_ldstpair_off            ldp_fpsimd.xml
--- STNP_D_ldstnapair_offs        stnp_fpsimd.xml
--- STP_D_ldstpair_off            stp_fpsimd.xml

type Logical_204 = '[]
type Binary_204  = '[]

decode_204 :: Fn Logical_204 a -> FnW Binary_204 (Decode a)
decode_204 f = return f

encode_204 :: FnW Binary_204 a -> Fn Logical_204 (Encode a)
encode_204 f = return f

parse_204 :: Fn Logical_204 a -> Parser a
parse_204 f = ws >> return f

show_204 :: Fn Logical_204 (String, ShowS)
show_204 = simple $ id


--- 205: '  <Qt1>, <Qt2>, [<Xn|SP>{, #<imm>}]'
--- LDNP_Q_ldstnapair_offs        ldnp_fpsimd.xml
--- LDP_Q_ldstpair_off            ldp_fpsimd.xml
--- STNP_Q_ldstnapair_offs        stnp_fpsimd.xml
--- STP_Q_ldstpair_off            stp_fpsimd.xml

type Logical_205 = '[]
type Binary_205  = '[]

decode_205 :: Fn Logical_205 a -> FnW Binary_205 (Decode a)
decode_205 f = return f

encode_205 :: FnW Binary_205 a -> Fn Logical_205 (Encode a)
encode_205 f = return f

parse_205 :: Fn Logical_205 a -> Parser a
parse_205 f = ws >> return f

show_205 :: Fn Logical_205 (String, ShowS)
show_205 = simple $ id


--- 206: '  <St1>, <St2>, [<Xn|SP>{, #<imm>}]'
--- LDNP_S_ldstnapair_offs        ldnp_fpsimd.xml
--- LDP_S_ldstpair_off            ldp_fpsimd.xml
--- STNP_S_ldstnapair_offs        stnp_fpsimd.xml
--- STP_S_ldstpair_off            stp_fpsimd.xml

type Logical_206 = '[]
type Binary_206  = '[]

decode_206 :: Fn Logical_206 a -> FnW Binary_206 (Decode a)
decode_206 f = return f

encode_206 :: FnW Binary_206 a -> Fn Logical_206 (Encode a)
encode_206 f = return f

parse_206 :: Fn Logical_206 a -> Parser a
parse_206 f = ws >> return f

show_206 :: Fn Logical_206 (String, ShowS)
show_206 = simple $ id


--- 207: '  <Wd>, <Wn|WSP>, #<imm>{, <shift>}'
--- ADDS_32S_addsub_imm           adds_addsub_imm.xml
--- SUBS_32S_addsub_imm           subs_addsub_imm.xml

type Logical_207 = '[Wn, WnSP, W 12, LSL_12]
type Binary_207  = '[5, 5, 12, 2]

decode_207 :: Fn Logical_207 a -> FnW Binary_207 (Decode a)
decode_207 f rd rn imm12 shift = f
    <$> dec rd
    <*> dec rn
    <*> dec imm12
    <*> dec shift

encode_207 :: FnW Binary_207 a -> Fn Logical_207 (Encode a)
encode_207 f wd wn imm shift = f
    <$> enc wd
    <*> enc wn
    <*> enc imm
    <*> enc shift

parse_207 :: Fn Logical_207 a -> Parser a
parse_207 f = ws >> f <$> prs <+> prs <+> prs <*> prs

show_207 :: Fn Logical_207 (String, ShowS)
show_207 wd wn imm shift = simple $ asm wd +> asm wn +> asm imm . asm shift


--- 208: '  <Wt1>, <Wt2>, [<Xn|SP>{, #<imm>}]'
--- LDNP_32_ldstnapair_offs       ldnp_gen.xml
--- LDP_32_ldstpair_off           ldp_gen.xml
--- STNP_32_ldstnapair_offs       stnp_gen.xml
--- STP_32_ldstpair_off           stp_gen.xml

type Logical_208 = '[]
type Binary_208  = '[]

decode_208 :: Fn Logical_208 a -> FnW Binary_208 (Decode a)
decode_208 f = return f

encode_208 :: FnW Binary_208 a -> Fn Logical_208 (Encode a)
encode_208 f = return f

parse_208 :: Fn Logical_208 a -> Parser a
parse_208 f = ws >> return f

show_208 :: Fn Logical_208 (String, ShowS)
show_208 = simple $ id


--- 209: '  <Xt1>, <Xt2>, [<Xn|SP>{, #<imm>}]'
--- LDNP_64_ldstnapair_offs       ldnp_gen.xml
--- LDP_64_ldstpair_off           ldp_gen.xml
--- LDPSW_64_ldstpair_off         ldpsw.xml
--- STNP_64_ldstnapair_offs       stnp_gen.xml
--- STP_64_ldstpair_off           stp_gen.xml

type Logical_209 = '[Xn, Xn, XnSP, I 7]
type Binary_209  = '[5, 5, 5, 7]

decode_209 :: Fn Logical_209 a -> FnW Binary_209 (Decode a)
decode_209 f rt rt2 rn imm7 = f <$> dec rt <*> dec rt2 <*> dec rn <*> dec imm7

encode_209 :: FnW Binary_209 a -> Fn Logical_209 (Encode a)
encode_209 f xt1 xt2 xn imm = f <$> enc xt1 <*> enc xt2 <*> enc xn <*> enc imm

parse_209 :: Fn Logical_209 a -> Parser a
parse_209 f = ws >> uncurry <$> (f <$> prs <+> prs) <+> prsOffset64

show_209 :: Fn Logical_209 (String, ShowS)
show_209 xt1 xt2 xn imm = simple $ asm xt1 +> asm xt2 +> asmOffset64 xn imm


--- 210: '{2}  <Vd>.<Ta>, <Vn>.<Tb>, #<shift>'
--- SHLL_asimdmisc_S              shll_advsimd.xml
--- SSHLL_asimdshf_L              sshll_advsimd.xml
--- USHLL_asimdshf_L              ushll_advsimd.xml

type Logical_210 = '[]
type Binary_210  = '[]

decode_210 :: Fn Logical_210 a -> FnW Binary_210 (Decode a)
decode_210 f = return f

encode_210 :: FnW Binary_210 a -> Fn Logical_210 (Encode a)
encode_210 f = return f

parse_210 :: Fn Logical_210 a -> Parser a
parse_210 f = ws >> return f

show_210 :: Fn Logical_210 (String, ShowS)
show_210 = simple $ id


--- 211: '{2}  <Vd>.<Tb>, <Vn>.<Ta>, #<shift>'
--- RSHRN_asimdshf_N              rshrn_advsimd.xml
--- SHRN_asimdshf_N               shrn_advsimd.xml
--- SQRSHRN_asimdshf_N            sqrshrn_advsimd.xml
--- SQRSHRUN_asimdshf_N           sqrshrun_advsimd.xml
--- SQSHRN_asimdshf_N             sqshrn_advsimd.xml
--- SQSHRUN_asimdshf_N            sqshrun_advsimd.xml
--- UQRSHRN_asimdshf_N            uqrshrn_advsimd.xml
--- UQSHRN_asimdshf_N             uqshrn_advsimd.xml

type Logical_211 = '[]
type Binary_211  = '[]

decode_211 :: Fn Logical_211 a -> FnW Binary_211 (Decode a)
decode_211 f = return f

encode_211 :: FnW Binary_211 a -> Fn Logical_211 (Encode a)
encode_211 f = return f

parse_211 :: Fn Logical_211 a -> Parser a
parse_211 f = ws >> return f

show_211 :: Fn Logical_211 (String, ShowS)
show_211 = simple $ id


--- 212: '  #<op1>, <Cn>, <Cm>, #<op2>{, <Xt>}'
--- SYS_CR_system                 sys.xml

type Logical_212 = '[]
type Binary_212  = '[]

decode_212 :: Fn Logical_212 a -> FnW Binary_212 (Decode a)
decode_212 f = return f

encode_212 :: FnW Binary_212 a -> Fn Logical_212 (Encode a)
encode_212 f = return f

parse_212 :: Fn Logical_212 a -> Parser a
parse_212 f = ws >> return f

show_212 :: Fn Logical_212 (String, ShowS)
show_212 = simple $ id


--- 213: '  <V><d>, <V><n>, <Vm>.<Ts>[<index>]'
--- FMLA_asisdelem_R_SD           fmla_advsimd_elt.xml
--- FMLS_asisdelem_R_SD           fmls_advsimd_elt.xml
--- FMUL_asisdelem_R_SD           fmul_advsimd_elt.xml
--- FMULX_asisdelem_R_SD          fmulx_advsimd_elt.xml
--- SQDMULH_asisdelem_R           sqdmulh_advsimd_elt.xml
--- SQRDMLAH_asisdelem_R          sqrdmlah_advsimd_elt.xml
--- SQRDMLSH_asisdelem_R          sqrdmlsh_advsimd_elt.xml
--- SQRDMULH_asisdelem_R          sqrdmulh_advsimd_elt.xml

type Logical_213 = '[]
type Binary_213  = '[]

decode_213 :: Fn Logical_213 a -> FnW Binary_213 (Decode a)
decode_213 f = return f

encode_213 :: FnW Binary_213 a -> Fn Logical_213 (Encode a)
encode_213 f = return f

parse_213 :: Fn Logical_213 a -> Parser a
parse_213 f = ws >> return f

show_213 :: Fn Logical_213 (String, ShowS)
show_213 = simple $ id


--- 214: '  <Vd>.2D, <Vn>.2D, <Vm>.2D, #<imm6>'
--- XAR_VVV2_crypto3_imm6         xar_advsimd.xml

type Logical_214 = '[]
type Binary_214  = '[]

decode_214 :: Fn Logical_214 a -> FnW Binary_214 (Decode a)
decode_214 f = return f

encode_214 :: FnW Binary_214 a -> Fn Logical_214 (Encode a)
encode_214 f = return f

parse_214 :: Fn Logical_214 a -> Parser a
parse_214 f = ws >> return f

show_214 :: Fn Logical_214 (String, ShowS)
show_214 = simple $ id


--- 215: '  <Vd>.4S, <Vn>.4S, <Vm>.4S, <Va>.4S'
--- SM3SS1_VVV4_crypto4           sm3ss1_advsimd.xml

type Logical_215 = '[]
type Binary_215  = '[]

decode_215 :: Fn Logical_215 a -> FnW Binary_215 (Decode a)
decode_215 f = return f

encode_215 :: FnW Binary_215 a -> Fn Logical_215 (Encode a)
encode_215 f = return f

parse_215 :: Fn Logical_215 a -> Parser a
parse_215 f = ws >> return f

show_215 :: Fn Logical_215 (String, ShowS)
show_215 = simple $ id


--- 216: '  <Vd>.<T>, #<imm8>{, LSL #<amount>}'
--- BIC_asimdimm_L_hl             bic_advsimd_imm.xml
--- BIC_asimdimm_L_sl             bic_advsimd_imm.xml
--- MOVI_asimdimm_L_hl            movi_advsimd.xml
--- MOVI_asimdimm_L_sl            movi_advsimd.xml
--- MVNI_asimdimm_L_hl            mvni_advsimd.xml
--- MVNI_asimdimm_L_sl            mvni_advsimd.xml
--- ORR_asimdimm_L_hl             orr_advsimd_imm.xml
--- ORR_asimdimm_L_sl             orr_advsimd_imm.xml

type Logical_216 = '[]
type Binary_216  = '[]

decode_216 :: Fn Logical_216 a -> FnW Binary_216 (Decode a)
decode_216 f = return f

encode_216 :: FnW Binary_216 a -> Fn Logical_216 (Encode a)
encode_216 f = return f

parse_216 :: Fn Logical_216 a -> Parser a
parse_216 f = ws >> return f

show_216 :: Fn Logical_216 (String, ShowS)
show_216 = simple $ id


--- 217: '  <Vd>.<Ta>, { <Vn>.16B }, <Vm>.<Ta>'
--- TBL_asimdtbl_L1_1             tbl_advsimd.xml
--- TBX_asimdtbl_L1_1             tbx_advsimd.xml

type Logical_217 = '[]
type Binary_217  = '[]

decode_217 :: Fn Logical_217 a -> FnW Binary_217 (Decode a)
decode_217 f = return f

encode_217 :: FnW Binary_217 a -> Fn Logical_217 (Encode a)
encode_217 f = return f

parse_217 :: Fn Logical_217 a -> Parser a
parse_217 f = ws >> return f

show_217 :: Fn Logical_217 (String, ShowS)
show_217 = simple $ id


--- 218: '  <Ws>, <Wt1>, <Wt2>, [<Xn|SP>{,#0}]'
--- STLXP_SP32_ldstexcl           stlxp.xml
--- STXP_SP32_ldstexcl            stxp.xml

type Logical_218 = '[]
type Binary_218  = '[]

decode_218 :: Fn Logical_218 a -> FnW Binary_218 (Decode a)
decode_218 f = return f

encode_218 :: FnW Binary_218 a -> Fn Logical_218 (Encode a)
encode_218 f = return f

parse_218 :: Fn Logical_218 a -> Parser a
parse_218 f = ws >> return f

show_218 :: Fn Logical_218 (String, ShowS)
show_218 = simple $ id


--- 219: '  <Ws>, <Xt1>, <Xt2>, [<Xn|SP>{,#0}]'
--- STLXP_SP64_ldstexcl           stlxp.xml
--- STXP_SP64_ldstexcl            stxp.xml

type Logical_219 = '[]
type Binary_219  = '[]

decode_219 :: Fn Logical_219 a -> FnW Binary_219 (Decode a)
decode_219 f = return f

encode_219 :: FnW Binary_219 a -> Fn Logical_219 (Encode a)
encode_219 f = return f

parse_219 :: Fn Logical_219 a -> Parser a
parse_219 f = ws >> return f

show_219 :: Fn Logical_219 (String, ShowS)
show_219 = simple $ id


--- 220: '  { <Vt>.<T>, <Vt2>.<T> }, [<Xn|SP>]'
--- LD1_asisdlse_R2_2v            ld1_advsimd_mult.xml
--- LD2_asisdlse_R2               ld2_advsimd_mult.xml
--- LD2R_asisdlso_R2              ld2r_advsimd.xml
--- ST1_asisdlse_R2_2v            st1_advsimd_mult.xml
--- ST2_asisdlse_R2               st2_advsimd_mult.xml

type Logical_220 = '[]
type Binary_220  = '[]

decode_220 :: Fn Logical_220 a -> FnW Binary_220 (Decode a)
decode_220 f = return f

encode_220 :: FnW Binary_220 a -> Fn Logical_220 (Encode a)
encode_220 f = return f

parse_220 :: Fn Logical_220 a -> Parser a
parse_220 f = ws >> return f

show_220 :: Fn Logical_220 (String, ShowS)
show_220 = simple $ id


--- 221: '  { <Vt>.B }[<index>], [<Xn|SP>], #1'
--- LD1_asisdlsop_B1_i1b          ld1_advsimd_sngl.xml
--- ST1_asisdlsop_B1_i1b          st1_advsimd_sngl.xml

type Logical_221 = '[]
type Binary_221  = '[]

decode_221 :: Fn Logical_221 a -> FnW Binary_221 (Decode a)
decode_221 f = return f

encode_221 :: FnW Binary_221 a -> Fn Logical_221 (Encode a)
encode_221 f = return f

parse_221 :: Fn Logical_221 a -> Parser a
parse_221 f = ws >> return f

show_221 :: Fn Logical_221 (String, ShowS)
show_221 = simple $ id


--- 222: '  { <Vt>.D }[<index>], [<Xn|SP>], #8'
--- LD1_asisdlsop_D1_i1d          ld1_advsimd_sngl.xml
--- ST1_asisdlsop_D1_i1d          st1_advsimd_sngl.xml

type Logical_222 = '[]
type Binary_222  = '[]

decode_222 :: Fn Logical_222 a -> FnW Binary_222 (Decode a)
decode_222 f = return f

encode_222 :: FnW Binary_222 a -> Fn Logical_222 (Encode a)
encode_222 f = return f

parse_222 :: Fn Logical_222 a -> Parser a
parse_222 f = ws >> return f

show_222 :: Fn Logical_222 (String, ShowS)
show_222 = simple $ id


--- 223: '  { <Vt>.H }[<index>], [<Xn|SP>], #2'
--- LD1_asisdlsop_H1_i1h          ld1_advsimd_sngl.xml
--- ST1_asisdlsop_H1_i1h          st1_advsimd_sngl.xml

type Logical_223 = '[]
type Binary_223  = '[]

decode_223 :: Fn Logical_223 a -> FnW Binary_223 (Decode a)
decode_223 f = return f

encode_223 :: FnW Binary_223 a -> Fn Logical_223 (Encode a)
encode_223 f = return f

parse_223 :: Fn Logical_223 a -> Parser a
parse_223 f = ws >> return f

show_223 :: Fn Logical_223 (String, ShowS)
show_223 = simple $ id


--- 224: '  { <Vt>.S }[<index>], [<Xn|SP>], #4'
--- LD1_asisdlsop_S1_i1s          ld1_advsimd_sngl.xml
--- ST1_asisdlsop_S1_i1s          st1_advsimd_sngl.xml

type Logical_224 = '[]
type Binary_224  = '[]

decode_224 :: Fn Logical_224 a -> FnW Binary_224 (Decode a)
decode_224 f = return f

encode_224 :: FnW Binary_224 a -> Fn Logical_224 (Encode a)
encode_224 f = return f

parse_224 :: Fn Logical_224 a -> Parser a
parse_224 f = ws >> return f

show_224 :: Fn Logical_224 (String, ShowS)
show_224 = simple $ id


--- 225: '{2}  <Vd>.<Ta>, <Vn>.<Ta>, <Vm>.<Tb>'
--- SADDW_asimddiff_W             saddw_advsimd.xml
--- SSUBW_asimddiff_W             ssubw_advsimd.xml
--- UADDW_asimddiff_W             uaddw_advsimd.xml
--- USUBW_asimddiff_W             usubw_advsimd.xml

type Logical_225 = '[]
type Binary_225  = '[]

decode_225 :: Fn Logical_225 a -> FnW Binary_225 (Decode a)
decode_225 f = return f

encode_225 :: FnW Binary_225 a -> Fn Logical_225 (Encode a)
encode_225 f = return f

parse_225 :: Fn Logical_225 a -> Parser a
parse_225 f = ws >> return f

show_225 :: Fn Logical_225 (String, ShowS)
show_225 = simple $ id


--- 226: '{2}  <Vd>.<Ta>, <Vn>.<Tb>, <Vm>.<Tb>'
--- PMULL_asimddiff_L             pmull_advsimd.xml
--- SABAL_asimddiff_L             sabal_advsimd.xml
--- SABDL_asimddiff_L             sabdl_advsimd.xml
--- SADDL_asimddiff_L             saddl_advsimd.xml
--- SMLAL_asimddiff_L             smlal_advsimd_vec.xml
--- SMLSL_asimddiff_L             smlsl_advsimd_vec.xml
--- SMULL_asimddiff_L             smull_advsimd_vec.xml
--- SQDMLAL_asimddiff_L           sqdmlal_advsimd_vec.xml
--- SQDMLSL_asimddiff_L           sqdmlsl_advsimd_vec.xml
--- SQDMULL_asimddiff_L           sqdmull_advsimd_vec.xml
--- SSUBL_asimddiff_L             ssubl_advsimd.xml
--- UABAL_asimddiff_L             uabal_advsimd.xml
--- UABDL_asimddiff_L             uabdl_advsimd.xml
--- UADDL_asimddiff_L             uaddl_advsimd.xml
--- UMLAL_asimddiff_L             umlal_advsimd_vec.xml
--- UMLSL_asimddiff_L             umlsl_advsimd_vec.xml
--- UMULL_asimddiff_L             umull_advsimd_vec.xml
--- USUBL_asimddiff_L             usubl_advsimd.xml

type Logical_226 = '[]
type Binary_226  = '[]

decode_226 :: Fn Logical_226 a -> FnW Binary_226 (Decode a)
decode_226 f = return f

encode_226 :: FnW Binary_226 a -> Fn Logical_226 (Encode a)
encode_226 f = return f

parse_226 :: Fn Logical_226 a -> Parser a
parse_226 f = ws >> return f

show_226 :: Fn Logical_226 (String, ShowS)
show_226 = simple $ id


--- 227: '{2}  <Vd>.<Tb>, <Vn>.<Ta>, <Vm>.<Ta>'
--- ADDHN_asimddiff_N             addhn_advsimd.xml
--- RADDHN_asimddiff_N            raddhn_advsimd.xml
--- RSUBHN_asimddiff_N            rsubhn_advsimd.xml
--- SUBHN_asimddiff_N             subhn_advsimd.xml

type Logical_227 = '[]
type Binary_227  = '[]

decode_227 :: Fn Logical_227 a -> FnW Binary_227 (Decode a)
decode_227 f = return f

encode_227 :: FnW Binary_227 a -> Fn Logical_227 (Encode a)
encode_227 f = return f

parse_227 :: Fn Logical_227 a -> Parser a
parse_227 f = ws >> return f

show_227 :: Fn Logical_227 (String, ShowS)
show_227 = simple $ id


--- 228: '  <Vd>.<T>, <Vn>.<T>, <Vm>.H[<index>]'
--- FMLA_asimdelem_RH_H           fmla_advsimd_elt.xml
--- FMLS_asimdelem_RH_H           fmls_advsimd_elt.xml
--- FMUL_asimdelem_RH_H           fmul_advsimd_elt.xml
--- FMULX_asimdelem_RH_H          fmulx_advsimd_elt.xml

type Logical_228 = '[]
type Binary_228  = '[]

decode_228 :: Fn Logical_228 a -> FnW Binary_228 (Decode a)
decode_228 f = return f

encode_228 :: FnW Binary_228 a -> Fn Logical_228 (Encode a)
encode_228 f = return f

parse_228 :: Fn Logical_228 a -> Parser a
parse_228 f = ws >> return f

show_228 :: Fn Logical_228 (String, ShowS)
show_228 = simple $ id


--- 229: '  <Xd|SP>, <Xn|SP>, #<imm>{, <shift>}'
--- ADD_64_addsub_imm             add_addsub_imm.xml
--- SUB_64_addsub_imm             sub_addsub_imm.xml

type Logical_229 = '[XnSP, XnSP, W 12, LSL_12]
type Binary_229  = '[5, 5, 12, 2]

decode_229 :: Fn Logical_229 a -> FnW Binary_229 (Decode a)
decode_229 f rd rn imm12 shift = f
    <$> dec rd
    <*> dec rn
    <*> dec imm12
    <*> dec shift

encode_229 :: FnW Binary_229 a -> Fn Logical_229 (Encode a)
encode_229 f xd xn imm shift = f
    <$> enc xd
    <*> enc xn
    <*> enc imm
    <*> enc shift

parse_229 :: Fn Logical_229 a -> Parser a
parse_229 f = ws >> f <$> prs <+> prs <+> prs <*> prs

show_229 :: Fn Logical_229 (String, ShowS)
show_229 xd xn imm shift = simple $ asm xd +> asm xn +> asm imm . asm shift


--- 230: '  <Va><d>, <Vb><n>, <Vm>.<Ts>[<index>]'
--- SQDMLAL_asisdelem_L           sqdmlal_advsimd_elt.xml
--- SQDMLSL_asisdelem_L           sqdmlsl_advsimd_elt.xml
--- SQDMULL_asisdelem_L           sqdmull_advsimd_elt.xml

type Logical_230 = '[]
type Binary_230  = '[]

decode_230 :: Fn Logical_230 a -> FnW Binary_230 (Decode a)
decode_230 f = return f

encode_230 :: FnW Binary_230 a -> Fn Logical_230 (Encode a)
encode_230 f = return f

parse_230 :: Fn Logical_230 a -> Parser a
parse_230 f = ws >> return f

show_230 :: Fn Logical_230 (String, ShowS)
show_230 = simple $ id


--- 231: '  { <Vt>.B }[<index>], [<Xn|SP>], <Xm>'
--- LD1_asisdlsop_BX1_r1b         ld1_advsimd_sngl.xml
--- ST1_asisdlsop_BX1_r1b         st1_advsimd_sngl.xml

type Logical_231 = '[]
type Binary_231  = '[]

decode_231 :: Fn Logical_231 a -> FnW Binary_231 (Decode a)
decode_231 f = return f

encode_231 :: FnW Binary_231 a -> Fn Logical_231 (Encode a)
encode_231 f = return f

parse_231 :: Fn Logical_231 a -> Parser a
parse_231 f = ws >> return f

show_231 :: Fn Logical_231 (String, ShowS)
show_231 = simple $ id


--- 232: '  { <Vt>.D }[<index>], [<Xn|SP>], <Xm>'
--- LD1_asisdlsop_DX1_r1d         ld1_advsimd_sngl.xml
--- ST1_asisdlsop_DX1_r1d         st1_advsimd_sngl.xml

type Logical_232 = '[]
type Binary_232  = '[]

decode_232 :: Fn Logical_232 a -> FnW Binary_232 (Decode a)
decode_232 f = return f

encode_232 :: FnW Binary_232 a -> Fn Logical_232 (Encode a)
encode_232 f = return f

parse_232 :: Fn Logical_232 a -> Parser a
parse_232 f = ws >> return f

show_232 :: Fn Logical_232 (String, ShowS)
show_232 = simple $ id


--- 233: '  { <Vt>.H }[<index>], [<Xn|SP>], <Xm>'
--- LD1_asisdlsop_HX1_r1h         ld1_advsimd_sngl.xml
--- ST1_asisdlsop_HX1_r1h         st1_advsimd_sngl.xml

type Logical_233 = '[]
type Binary_233  = '[]

decode_233 :: Fn Logical_233 a -> FnW Binary_233 (Decode a)
decode_233 f = return f

encode_233 :: FnW Binary_233 a -> Fn Logical_233 (Encode a)
encode_233 f = return f

parse_233 :: Fn Logical_233 a -> Parser a
parse_233 f = ws >> return f

show_233 :: Fn Logical_233 (String, ShowS)
show_233 = simple $ id


--- 234: '  { <Vt>.S }[<index>], [<Xn|SP>], <Xm>'
--- LD1_asisdlsop_SX1_r1s         ld1_advsimd_sngl.xml
--- ST1_asisdlsop_SX1_r1s         st1_advsimd_sngl.xml

type Logical_234 = '[]
type Binary_234  = '[]

decode_234 :: Fn Logical_234 a -> FnW Binary_234 (Decode a)
decode_234 f = return f

encode_234 :: FnW Binary_234 a -> Fn Logical_234 (Encode a)
encode_234 f = return f

parse_234 :: Fn Logical_234 a -> Parser a
parse_234 f = ws >> return f

show_234 :: Fn Logical_234 (String, ShowS)
show_234 = simple $ id


--- 235: '  <Bt>, [<Xn|SP>, <Xm>{, LSL <amount>}]'
--- LDR_BL_ldst_regoff            ldr_reg_fpsimd.xml
--- STR_BL_ldst_regoff            str_reg_fpsimd.xml

type Logical_235 = '[]
type Binary_235  = '[]

decode_235 :: Fn Logical_235 a -> FnW Binary_235 (Decode a)
decode_235 f = return f

encode_235 :: FnW Binary_235 a -> Fn Logical_235 (Encode a)
encode_235 f = return f

parse_235 :: Fn Logical_235 a -> Parser a
parse_235 f = ws >> return f

show_235 :: Fn Logical_235 (String, ShowS)
show_235 = simple $ id


--- 236: '  <Wd>, <Wn>, <Wm>{, <shift> #<amount>}'
--- ADD_32_addsub_shift           add_addsub_shift.xml
--- ADDS_32_addsub_shift          adds_addsub_shift.xml
--- AND_32_log_shift              and_log_shift.xml
--- ANDS_32_log_shift             ands_log_shift.xml
--- BIC_32_log_shift              bic_log_shift.xml
--- BICS_32_log_shift             bics.xml
--- EON_32_log_shift              eon.xml
--- EOR_32_log_shift              eor_log_shift.xml
--- ORN_32_log_shift              orn_log_shift.xml
--- ORR_32_log_shift              orr_log_shift.xml
--- SUB_32_addsub_shift           sub_addsub_shift.xml
--- SUBS_32_addsub_shift          subs_addsub_shift.xml

type Logical_236 = '[Wn, Wn, Wn, Shift32]
type Binary_236  = '[5, 5, 5, 2, 6]

decode_236 :: Fn Logical_236 a -> FnW Binary_236 (Decode a)
decode_236 f rd rn rm shift imm6 = f
    <$> dec rd <*> dec rn <*> dec rm
    <*> decShift32 shift imm6

encode_236 :: FnW Binary_236 a -> Fn Logical_236 (Encode a)
encode_236 f wd wn wm (Shift32 ty amnt) = f
    <$> enc wd <*> enc wn <*> enc wm
    <*> enc ty <*> enc (slide amnt)

parse_236 :: Fn Logical_236 a -> Parser a
parse_236 f = ws >> f <$> prs <+> prs <+> prs <*> prs

show_236 :: Fn Logical_236 (String, ShowS)
show_236 wd wn wm sh = simple $ asm wd +> asm wn +> asm wm . asm sh


--- 237: '  <Wd|WSP>, <Wn|WSP>, #<imm>{, <shift>}'
--- ADD_32_addsub_imm             add_addsub_imm.xml
--- SUB_32_addsub_imm             sub_addsub_imm.xml

type Logical_237 = '[]
type Binary_237  = '[]

decode_237 :: Fn Logical_237 a -> FnW Binary_237 (Decode a)
decode_237 f = return f

encode_237 :: FnW Binary_237 a -> Fn Logical_237 (Encode a)
encode_237 f = return f

parse_237 :: Fn Logical_237 a -> Parser a
parse_237 f = ws >> return f

show_237 :: Fn Logical_237 (String, ShowS)
show_237 = simple $ id


--- 238: '  <Wt>, [<Xn|SP>, <Xm>{, LSL <amount>}]'
--- LDRB_32BL_ldst_regoff         ldrb_reg.xml
--- LDRSB_32BL_ldst_regoff        ldrsb_reg.xml
--- STRB_32BL_ldst_regoff         strb_reg.xml

type Logical_238 = '[]
type Binary_238  = '[]

decode_238 :: Fn Logical_238 a -> FnW Binary_238 (Decode a)
decode_238 f = return f

encode_238 :: FnW Binary_238 a -> Fn Logical_238 (Encode a)
encode_238 f = return f

parse_238 :: Fn Logical_238 a -> Parser a
parse_238 f = ws >> return f

show_238 :: Fn Logical_238 (String, ShowS)
show_238 = simple $ id


--- 239: '  <Xd>, <Xn>, <Xm>{, <shift> #<amount>}'
--- ADD_64_addsub_shift           add_addsub_shift.xml
--- ADDS_64_addsub_shift          adds_addsub_shift.xml
--- AND_64_log_shift              and_log_shift.xml
--- ANDS_64_log_shift             ands_log_shift.xml
--- BIC_64_log_shift              bic_log_shift.xml
--- BICS_64_log_shift             bics.xml
--- EON_64_log_shift              eon.xml
--- EOR_64_log_shift              eor_log_shift.xml
--- ORN_64_log_shift              orn_log_shift.xml
--- ORR_64_log_shift              orr_log_shift.xml
--- SUB_64_addsub_shift           sub_addsub_shift.xml
--- SUBS_64_addsub_shift          subs_addsub_shift.xml

type Logical_239 = '[]
type Binary_239  = '[]

decode_239 :: Fn Logical_239 a -> FnW Binary_239 (Decode a)
decode_239 f = return f

encode_239 :: FnW Binary_239 a -> Fn Logical_239 (Encode a)
encode_239 f = return f

parse_239 :: Fn Logical_239 a -> Parser a
parse_239 f = ws >> return f

show_239 :: Fn Logical_239 (String, ShowS)
show_239 = simple $ id


--- 240: '  <Xt>, [<Xn|SP>, <Xm>{, LSL <amount>}]'
--- LDRSB_64BL_ldst_regoff        ldrsb_reg.xml

type Logical_240 = '[]
type Binary_240  = '[]

decode_240 :: Fn Logical_240 a -> FnW Binary_240 (Decode a)
decode_240 f = return f

encode_240 :: FnW Binary_240 a -> Fn Logical_240 (Encode a)
encode_240 f = return f

parse_240 :: Fn Logical_240 a -> Parser a
parse_240 f = ws >> return f

show_240 :: Fn Logical_240 (String, ShowS)
show_240 = simple $ id


--- 241: '  <Vd>.16B, <Vn>.16B, <Vm>.16B, <Va>.16B'
--- BCAX_VVV16_crypto4            bcax_advsimd.xml
--- EOR3_VVV16_crypto4            eor3_advsimd.xml

type Logical_241 = '[]
type Binary_241  = '[]

decode_241 :: Fn Logical_241 a -> FnW Binary_241 (Decode a)
decode_241 f = return f

encode_241 :: FnW Binary_241 a -> Fn Logical_241 (Encode a)
encode_241 f = return f

parse_241 :: Fn Logical_241 a -> Parser a
parse_241 f = ws >> return f

show_241 :: Fn Logical_241 (String, ShowS)
show_241 = simple $ id


--- 242: '  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>, #<index>'
--- EXT_asimdext_only             ext_advsimd.xml

type Logical_242 = '[]
type Binary_242  = '[]

decode_242 :: Fn Logical_242 a -> FnW Binary_242 (Decode a)
decode_242 f = return f

encode_242 :: FnW Binary_242 a -> Fn Logical_242 (Encode a)
encode_242 f = return f

parse_242 :: Fn Logical_242 a -> Parser a
parse_242 f = ws >> return f

show_242 :: Fn Logical_242 (String, ShowS)
show_242 = simple $ id


--- 243: '  <Vd>.<T>, <Vn>.<T>, <Vm>.<Ts>[<index>]'
--- FMLA_asimdelem_R_SD           fmla_advsimd_elt.xml
--- FMLS_asimdelem_R_SD           fmls_advsimd_elt.xml
--- FMUL_asimdelem_R_SD           fmul_advsimd_elt.xml
--- FMULX_asimdelem_R_SD          fmulx_advsimd_elt.xml
--- MLA_asimdelem_R               mla_advsimd_elt.xml
--- MLS_asimdelem_R               mls_advsimd_elt.xml
--- MUL_asimdelem_R               mul_advsimd_elt.xml
--- SQDMULH_asimdelem_R           sqdmulh_advsimd_elt.xml
--- SQRDMLAH_asimdelem_R          sqrdmlah_advsimd_elt.xml
--- SQRDMLSH_asimdelem_R          sqrdmlsh_advsimd_elt.xml
--- SQRDMULH_asimdelem_R          sqrdmulh_advsimd_elt.xml

type Logical_243 = '[]
type Binary_243  = '[]

decode_243 :: Fn Logical_243 a -> FnW Binary_243 (Decode a)
decode_243 f = return f

encode_243 :: FnW Binary_243 a -> Fn Logical_243 (Encode a)
encode_243 f = return f

parse_243 :: Fn Logical_243 a -> Parser a
parse_243 f = ws >> return f

show_243 :: Fn Logical_243 (String, ShowS)
show_243 = simple $ id


--- 244: '  <Vd>.<Ta>, <Vn>.<Tb>, <Vm>.4B[<index>]'
--- SDOT_asimdelem_D              sdot_advsimd_elt.xml
--- UDOT_asimdelem_D              udot_advsimd_elt.xml

type Logical_244 = '[]
type Binary_244  = '[]

decode_244 :: Fn Logical_244 a -> FnW Binary_244 (Decode a)
decode_244 f = return f

encode_244 :: FnW Binary_244 a -> Fn Logical_244 (Encode a)
encode_244 f = return f

parse_244 :: Fn Logical_244 a -> Parser a
parse_244 f = ws >> return f

show_244 :: Fn Logical_244 (String, ShowS)
show_244 = simple $ id


--- 245: ' (<prfop>|#<imm5>), [<Xn|SP>{, #<simm>}]'
--- PRFUM_P_ldst_unscaled         prfum.xml

type Logical_245 = '[]
type Binary_245  = '[]

decode_245 :: Fn Logical_245 a -> FnW Binary_245 (Decode a)
decode_245 f = return f

encode_245 :: FnW Binary_245 a -> Fn Logical_245 (Encode a)
encode_245 f = return f

parse_245 :: Fn Logical_245 a -> Parser a
parse_245 f = ws >> return f

show_245 :: Fn Logical_245 (String, ShowS)
show_245 = simple $ id


--- 246: '  (<prfop>|#<imm5>), [<Xn|SP>{, #<pimm>}]'
--- PRFM_P_ldst_pos               prfm_imm.xml

type Logical_246 = '[]
type Binary_246  = '[]

decode_246 :: Fn Logical_246 a -> FnW Binary_246 (Decode a)
decode_246 f = return f

encode_246 :: FnW Binary_246 a -> Fn Logical_246 (Encode a)
encode_246 f = return f

parse_246 :: Fn Logical_246 a -> Parser a
parse_246 f = ws >> return f

show_246 :: Fn Logical_246 (String, ShowS)
show_246 = simple $ id


--- 247: '  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>, #<rotate>'
--- FCADD_asimdsame2_C            fcadd_advsimd_vec.xml
--- FCMLA_asimdsame2_C            fcmla_advsimd_vec.xml

type Logical_247 = '[]
type Binary_247  = '[]

decode_247 :: Fn Logical_247 a -> FnW Binary_247 (Decode a)
decode_247 f = return f

encode_247 :: FnW Binary_247 a -> Fn Logical_247 (Encode a)
encode_247 f = return f

parse_247 :: Fn Logical_247 a -> Parser a
parse_247 f = ws >> return f

show_247 :: Fn Logical_247 (String, ShowS)
show_247 = simple $ id


--- 248: '  { <Vt>.B, <Vt2>.B }[<index>], [<Xn|SP>]'
--- LD2_asisdlso_B2_2b            ld2_advsimd_sngl.xml
--- ST2_asisdlso_B2_2b            st2_advsimd_sngl.xml

type Logical_248 = '[]
type Binary_248  = '[]

decode_248 :: Fn Logical_248 a -> FnW Binary_248 (Decode a)
decode_248 f = return f

encode_248 :: FnW Binary_248 a -> Fn Logical_248 (Encode a)
encode_248 f = return f

parse_248 :: Fn Logical_248 a -> Parser a
parse_248 f = ws >> return f

show_248 :: Fn Logical_248 (String, ShowS)
show_248 = simple $ id


--- 249: '  { <Vt>.D, <Vt2>.D }[<index>], [<Xn|SP>]'
--- LD2_asisdlso_D2_2d            ld2_advsimd_sngl.xml
--- ST2_asisdlso_D2_2d            st2_advsimd_sngl.xml

type Logical_249 = '[]
type Binary_249  = '[]

decode_249 :: Fn Logical_249 a -> FnW Binary_249 (Decode a)
decode_249 f = return f

encode_249 :: FnW Binary_249 a -> Fn Logical_249 (Encode a)
encode_249 f = return f

parse_249 :: Fn Logical_249 a -> Parser a
parse_249 f = ws >> return f

show_249 :: Fn Logical_249 (String, ShowS)
show_249 = simple $ id


--- 250: '  { <Vt>.H, <Vt2>.H }[<index>], [<Xn|SP>]'
--- LD2_asisdlso_H2_2h            ld2_advsimd_sngl.xml
--- ST2_asisdlso_H2_2h            st2_advsimd_sngl.xml

type Logical_250 = '[]
type Binary_250  = '[]

decode_250 :: Fn Logical_250 a -> FnW Binary_250 (Decode a)
decode_250 f = return f

encode_250 :: FnW Binary_250 a -> Fn Logical_250 (Encode a)
encode_250 f = return f

parse_250 :: Fn Logical_250 a -> Parser a
parse_250 f = ws >> return f

show_250 :: Fn Logical_250 (String, ShowS)
show_250 = simple $ id


--- 251: '  { <Vt>.S, <Vt2>.S }[<index>], [<Xn|SP>]'
--- LD2_asisdlso_S2_2s            ld2_advsimd_sngl.xml
--- ST2_asisdlso_S2_2s            st2_advsimd_sngl.xml

type Logical_251 = '[]
type Binary_251  = '[]

decode_251 :: Fn Logical_251 a -> FnW Binary_251 (Decode a)
decode_251 f = return f

encode_251 :: FnW Binary_251 a -> Fn Logical_251 (Encode a)
encode_251 f = return f

parse_251 :: Fn Logical_251 a -> Parser a
parse_251 f = ws >> return f

show_251 :: Fn Logical_251 (String, ShowS)
show_251 = simple $ id


--- 252: '  <Vd>.<Ts>[<index1>], <Vn>.<Ts>[<index2>]'
--- INS_asimdins_IV_v             ins_advsimd_elt.xml

type Logical_252 = '[]
type Binary_252  = '[]

decode_252 :: Fn Logical_252 a -> FnW Binary_252 (Decode a)
decode_252 f = return f

encode_252 :: FnW Binary_252 a -> Fn Logical_252 (Encode a)
encode_252 f = return f

parse_252 :: Fn Logical_252 a -> Parser a
parse_252 f = ws >> return f

show_252 :: Fn Logical_252 (String, ShowS)
show_252 = simple $ id


--- 253: '  { <Vt>.<T>, <Vt2>.<T> }, [<Xn|SP>], <Xm>'
--- LD1_asisdlsep_R2_r2           ld1_advsimd_mult.xml
--- LD2_asisdlsep_R2_r            ld2_advsimd_mult.xml
--- LD2R_asisdlsop_RX2_r          ld2r_advsimd.xml
--- ST1_asisdlsep_R2_r2           st1_advsimd_mult.xml
--- ST2_asisdlsep_R2_r            st2_advsimd_mult.xml

type Logical_253 = '[]
type Binary_253  = '[]

decode_253 :: Fn Logical_253 a -> FnW Binary_253 (Decode a)
decode_253 f = return f

encode_253 :: FnW Binary_253 a -> Fn Logical_253 (Encode a)
encode_253 f = return f

parse_253 :: Fn Logical_253 a -> Parser a
parse_253 f = ws >> return f

show_253 :: Fn Logical_253 (String, ShowS)
show_253 = simple $ id


--- 254: '  { <Vt>.<T>, <Vt2>.<T> }, [<Xn|SP>], <imm>'
--- LD1_asisdlsep_I2_i2           ld1_advsimd_mult.xml
--- LD2_asisdlsep_I2_i            ld2_advsimd_mult.xml
--- LD2R_asisdlsop_R2_i           ld2r_advsimd.xml
--- ST1_asisdlsep_I2_i2           st1_advsimd_mult.xml
--- ST2_asisdlsep_I2_i            st2_advsimd_mult.xml

type Logical_254 = '[]
type Binary_254  = '[]

decode_254 :: Fn Logical_254 a -> FnW Binary_254 (Decode a)
decode_254 f = return f

encode_254 :: FnW Binary_254 a -> Fn Logical_254 (Encode a)
encode_254 f = return f

parse_254 :: Fn Logical_254 a -> Parser a
parse_254 f = ws >> return f

show_254 :: Fn Logical_254 (String, ShowS)
show_254 = simple $ id


--- 255: '  { <Vt>.B, <Vt2>.B }[<index>], [<Xn|SP>], #2'
--- LD2_asisdlsop_B2_i2b          ld2_advsimd_sngl.xml
--- ST2_asisdlsop_B2_i2b          st2_advsimd_sngl.xml

type Logical_255 = '[]
type Binary_255  = '[]

decode_255 :: Fn Logical_255 a -> FnW Binary_255 (Decode a)
decode_255 f = return f

encode_255 :: FnW Binary_255 a -> Fn Logical_255 (Encode a)
encode_255 f = return f

parse_255 :: Fn Logical_255 a -> Parser a
parse_255 f = ws >> return f

show_255 :: Fn Logical_255 (String, ShowS)
show_255 = simple $ id


--- 256: '  { <Vt>.H, <Vt2>.H }[<index>], [<Xn|SP>], #4'
--- LD2_asisdlsop_H2_i2h          ld2_advsimd_sngl.xml
--- ST2_asisdlsop_H2_i2h          st2_advsimd_sngl.xml

type Logical_256 = '[]
type Binary_256  = '[]

decode_256 :: Fn Logical_256 a -> FnW Binary_256 (Decode a)
decode_256 f = return f

encode_256 :: FnW Binary_256 a -> Fn Logical_256 (Encode a)
encode_256 f = return f

parse_256 :: Fn Logical_256 a -> Parser a
parse_256 f = ws >> return f

show_256 :: Fn Logical_256 (String, ShowS)
show_256 = simple $ id


--- 257: '  { <Vt>.S, <Vt2>.S }[<index>], [<Xn|SP>], #8'
--- LD2_asisdlsop_S2_i2s          ld2_advsimd_sngl.xml
--- ST2_asisdlsop_S2_i2s          st2_advsimd_sngl.xml

type Logical_257 = '[]
type Binary_257  = '[]

decode_257 :: Fn Logical_257 a -> FnW Binary_257 (Decode a)
decode_257 f = return f

encode_257 :: FnW Binary_257 a -> Fn Logical_257 (Encode a)
encode_257 f = return f

parse_257 :: Fn Logical_257 a -> Parser a
parse_257 f = ws >> return f

show_257 :: Fn Logical_257 (String, ShowS)
show_257 = simple $ id


--- 258: '{2}  <Vd>.<Ta>, <Vn>.<Tb>, <Vm>.<Ts>[<index>]'
--- SMLAL_asimdelem_L             smlal_advsimd_elt.xml
--- SMLSL_asimdelem_L             smlsl_advsimd_elt.xml
--- SMULL_asimdelem_L             smull_advsimd_elt.xml
--- SQDMLAL_asimdelem_L           sqdmlal_advsimd_elt.xml
--- SQDMLSL_asimdelem_L           sqdmlsl_advsimd_elt.xml
--- SQDMULL_asimdelem_L           sqdmull_advsimd_elt.xml
--- UMLAL_asimdelem_L             umlal_advsimd_elt.xml
--- UMLSL_asimdelem_L             umlsl_advsimd_elt.xml
--- UMULL_asimdelem_L             umull_advsimd_elt.xml

type Logical_258 = '[]
type Binary_258  = '[]

decode_258 :: Fn Logical_258 a -> FnW Binary_258 (Decode a)
decode_258 f = return f

encode_258 :: FnW Binary_258 a -> Fn Logical_258 (Encode a)
encode_258 f = return f

parse_258 :: Fn Logical_258 a -> Parser a
parse_258 f = ws >> return f

show_258 :: Fn Logical_258 (String, ShowS)
show_258 = simple $ id


--- 259: '  <Wd>, <Wn|WSP>, <Wm>{, <extend> {#<amount>}}'
--- ADDS_32S_addsub_ext           adds_addsub_ext.xml
--- SUBS_32S_addsub_ext           subs_addsub_ext.xml

type Logical_259 = '[]
type Binary_259  = '[]

decode_259 :: Fn Logical_259 a -> FnW Binary_259 (Decode a)
decode_259 f = return f

encode_259 :: FnW Binary_259 a -> Fn Logical_259 (Encode a)
encode_259 f = return f

parse_259 :: Fn Logical_259 a -> Parser a
parse_259 f = ws >> return f

show_259 :: Fn Logical_259 (String, ShowS)
show_259 = simple $ id


--- 260: '  { <Vt>.D, <Vt2>.D }[<index>], [<Xn|SP>], #16'
--- LD2_asisdlsop_D2_i2d          ld2_advsimd_sngl.xml
--- ST2_asisdlsop_D2_i2d          st2_advsimd_sngl.xml

type Logical_260 = '[]
type Binary_260  = '[]

decode_260 :: Fn Logical_260 a -> FnW Binary_260 (Decode a)
decode_260 f = return f

encode_260 :: FnW Binary_260 a -> Fn Logical_260 (Encode a)
encode_260 f = return f

parse_260 :: Fn Logical_260 a -> Parser a
parse_260 f = ws >> return f

show_260 :: Fn Logical_260 (String, ShowS)
show_260 = simple $ id


--- 261: '  <Xd>, <Xn|SP>, <R><m>{, <extend> {#<amount>}}'
--- ADDS_64S_addsub_ext           adds_addsub_ext.xml
--- SUBS_64S_addsub_ext           subs_addsub_ext.xml

type Logical_261 = '[]
type Binary_261  = '[]

decode_261 :: Fn Logical_261 a -> FnW Binary_261 (Decode a)
decode_261 f = return f

encode_261 :: FnW Binary_261 a -> Fn Logical_261 (Encode a)
encode_261 f = return f

parse_261 :: Fn Logical_261 a -> Parser a
parse_261 f = ws >> return f

show_261 :: Fn Logical_261 (String, ShowS)
show_261 = simple $ id


--- 262: '  { <Vt>.<T>, <Vt2>.<T>, <Vt3>.<T> }, [<Xn|SP>]'
--- LD1_asisdlse_R3_3v            ld1_advsimd_mult.xml
--- LD3_asisdlse_R3               ld3_advsimd_mult.xml
--- LD3R_asisdlso_R3              ld3r_advsimd.xml
--- ST1_asisdlse_R3_3v            st1_advsimd_mult.xml
--- ST3_asisdlse_R3               st3_advsimd_mult.xml

type Logical_262 = '[]
type Binary_262  = '[]

decode_262 :: Fn Logical_262 a -> FnW Binary_262 (Decode a)
decode_262 f = return f

encode_262 :: FnW Binary_262 a -> Fn Logical_262 (Encode a)
encode_262 f = return f

parse_262 :: Fn Logical_262 a -> Parser a
parse_262 f = ws >> return f

show_262 :: Fn Logical_262 (String, ShowS)
show_262 = simple $ id


--- 263: '  { <Vt>.B, <Vt2>.B }[<index>], [<Xn|SP>], <Xm>'
--- LD2_asisdlsop_BX2_r2b         ld2_advsimd_sngl.xml
--- ST2_asisdlsop_BX2_r2b         st2_advsimd_sngl.xml

type Logical_263 = '[]
type Binary_263  = '[]

decode_263 :: Fn Logical_263 a -> FnW Binary_263 (Decode a)
decode_263 f = return f

encode_263 :: FnW Binary_263 a -> Fn Logical_263 (Encode a)
encode_263 f = return f

parse_263 :: Fn Logical_263 a -> Parser a
parse_263 f = ws >> return f

show_263 :: Fn Logical_263 (String, ShowS)
show_263 = simple $ id


--- 264: '  { <Vt>.D, <Vt2>.D }[<index>], [<Xn|SP>], <Xm>'
--- LD2_asisdlsop_DX2_r2d         ld2_advsimd_sngl.xml
--- ST2_asisdlsop_DX2_r2d         st2_advsimd_sngl.xml

type Logical_264 = '[]
type Binary_264  = '[]

decode_264 :: Fn Logical_264 a -> FnW Binary_264 (Decode a)
decode_264 f = return f

encode_264 :: FnW Binary_264 a -> Fn Logical_264 (Encode a)
encode_264 f = return f

parse_264 :: Fn Logical_264 a -> Parser a
parse_264 f = ws >> return f

show_264 :: Fn Logical_264 (String, ShowS)
show_264 = simple $ id


--- 265: '  { <Vt>.H, <Vt2>.H }[<index>], [<Xn|SP>], <Xm>'
--- LD2_asisdlsop_HX2_r2h         ld2_advsimd_sngl.xml
--- ST2_asisdlsop_HX2_r2h         st2_advsimd_sngl.xml

type Logical_265 = '[]
type Binary_265  = '[]

decode_265 :: Fn Logical_265 a -> FnW Binary_265 (Decode a)
decode_265 f = return f

encode_265 :: FnW Binary_265 a -> Fn Logical_265 (Encode a)
encode_265 f = return f

parse_265 :: Fn Logical_265 a -> Parser a
parse_265 f = ws >> return f

show_265 :: Fn Logical_265 (String, ShowS)
show_265 = simple $ id


--- 266: '  { <Vt>.S, <Vt2>.S }[<index>], [<Xn|SP>], <Xm>'
--- LD2_asisdlsop_SX2_r2s         ld2_advsimd_sngl.xml
--- ST2_asisdlsop_SX2_r2s         st2_advsimd_sngl.xml

type Logical_266 = '[]
type Binary_266  = '[]

decode_266 :: Fn Logical_266 a -> FnW Binary_266 (Decode a)
decode_266 f = return f

encode_266 :: FnW Binary_266 a -> Fn Logical_266 (Encode a)
encode_266 f = return f

parse_266 :: Fn Logical_266 a -> Parser a
parse_266 f = ws >> return f

show_266 :: Fn Logical_266 (String, ShowS)
show_266 = simple $ id


--- 267: '  <Vd>.<Ta>, { <Vn>.16B, <Vn+1>.16B }, <Vm>.<Ta>'
--- TBL_asimdtbl_L2_2             tbl_advsimd.xml
--- TBX_asimdtbl_L2_2             tbx_advsimd.xml

type Logical_267 = '[]
type Binary_267  = '[]

decode_267 :: Fn Logical_267 a -> FnW Binary_267 (Decode a)
decode_267 f = return f

encode_267 :: FnW Binary_267 a -> Fn Logical_267 (Encode a)
encode_267 f = return f

parse_267 :: Fn Logical_267 a -> Parser a
parse_267 f = ws >> return f

show_267 :: Fn Logical_267 (String, ShowS)
show_267 = simple $ id


--- 268: '  <Ws>, <W(s+1)>, <Wt>, <W(t+1)>, [<Xn|SP>{,#0}]'
--- CASP_CP32_ldstexcl            casp.xml
--- CASPA_CP32_ldstexcl           casp.xml
--- CASPAL_CP32_ldstexcl          casp.xml
--- CASPL_CP32_ldstexcl           casp.xml

type Logical_268 = '[]
type Binary_268  = '[]

decode_268 :: Fn Logical_268 a -> FnW Binary_268 (Decode a)
decode_268 f = return f

encode_268 :: FnW Binary_268 a -> Fn Logical_268 (Encode a)
encode_268 f = return f

parse_268 :: Fn Logical_268 a -> Parser a
parse_268 f = ws >> return f

show_268 :: Fn Logical_268 (String, ShowS)
show_268 = simple $ id


--- 269: '  <Xs>, <X(s+1)>, <Xt>, <X(t+1)>, [<Xn|SP>{,#0}]'
--- CASP_CP64_ldstexcl            casp.xml
--- CASPA_CP64_ldstexcl           casp.xml
--- CASPAL_CP64_ldstexcl          casp.xml
--- CASPL_CP64_ldstexcl           casp.xml

type Logical_269 = '[]
type Binary_269  = '[]

decode_269 :: Fn Logical_269 a -> FnW Binary_269 (Decode a)
decode_269 f = return f

encode_269 :: FnW Binary_269 a -> Fn Logical_269 (Encode a)
encode_269 f = return f

parse_269 :: Fn Logical_269 a -> Parser a
parse_269 f = ws >> return f

show_269 :: Fn Logical_269 (String, ShowS)
show_269 = simple $ id


--- 270: '  (<systemreg>|S<op0>_<op1>_<Cn>_<Cm>_<op2>), <Xt>'
--- MSR_SR_system                 msr_reg.xml

type Logical_270 = '[]
type Binary_270  = '[]

decode_270 :: Fn Logical_270 a -> FnW Binary_270 (Decode a)
decode_270 f = return f

encode_270 :: FnW Binary_270 a -> Fn Logical_270 (Encode a)
encode_270 f = return f

parse_270 :: Fn Logical_270 a -> Parser a
parse_270 f = ws >> return f

show_270 :: Fn Logical_270 (String, ShowS)
show_270 = simple $ id


--- 271: '  <Wd|WSP>, <Wn|WSP>, <Wm>{, <extend> {#<amount>}}'
--- ADD_32_addsub_ext             add_addsub_ext.xml
--- SUB_32_addsub_ext             sub_addsub_ext.xml

type Logical_271 = '[]
type Binary_271  = '[]

decode_271 :: Fn Logical_271 a -> FnW Binary_271 (Decode a)
decode_271 f = return f

encode_271 :: FnW Binary_271 a -> Fn Logical_271 (Encode a)
encode_271 f = return f

parse_271 :: Fn Logical_271 a -> Parser a
parse_271 f = ws >> return f

show_271 :: Fn Logical_271 (String, ShowS)
show_271 = simple $ id


--- 272: '  <Xd|SP>, <Xn|SP>, <R><m>{, <extend> {#<amount>}}'
--- ADD_64_addsub_ext             add_addsub_ext.xml
--- SUB_64_addsub_ext             sub_addsub_ext.xml

type Logical_272 = '[]
type Binary_272  = '[]

decode_272 :: Fn Logical_272 a -> FnW Binary_272 (Decode a)
decode_272 f = return f

encode_272 :: FnW Binary_272 a -> Fn Logical_272 (Encode a)
encode_272 f = return f

parse_272 :: Fn Logical_272 a -> Parser a
parse_272 f = ws >> return f

show_272 :: Fn Logical_272 (String, ShowS)
show_272 = simple $ id


--- 273: '  <Xt>, (<systemreg>|S<op0>_<op1>_<Cn>_<Cm>_<op2>)'
--- MRS_RS_system                 mrs.xml

type Logical_273 = '[]
type Binary_273  = '[]

decode_273 :: Fn Logical_273 a -> FnW Binary_273 (Decode a)
decode_273 f = return f

encode_273 :: FnW Binary_273 a -> Fn Logical_273 (Encode a)
encode_273 f = return f

parse_273 :: Fn Logical_273 a -> Parser a
parse_273 f = ws >> return f

show_273 :: Fn Logical_273 (String, ShowS)
show_273 = simple $ id


--- 274: '  { <Vt>.B, <Vt2>.B, <Vt3>.B }[<index>], [<Xn|SP>]'
--- LD3_asisdlso_B3_3b            ld3_advsimd_sngl.xml
--- ST3_asisdlso_B3_3b            st3_advsimd_sngl.xml

type Logical_274 = '[]
type Binary_274  = '[]

decode_274 :: Fn Logical_274 a -> FnW Binary_274 (Decode a)
decode_274 f = return f

encode_274 :: FnW Binary_274 a -> Fn Logical_274 (Encode a)
encode_274 f = return f

parse_274 :: Fn Logical_274 a -> Parser a
parse_274 f = ws >> return f

show_274 :: Fn Logical_274 (String, ShowS)
show_274 = simple $ id


--- 275: '  { <Vt>.D, <Vt2>.D, <Vt3>.D }[<index>], [<Xn|SP>]'
--- LD3_asisdlso_D3_3d            ld3_advsimd_sngl.xml
--- ST3_asisdlso_D3_3d            st3_advsimd_sngl.xml

type Logical_275 = '[]
type Binary_275  = '[]

decode_275 :: Fn Logical_275 a -> FnW Binary_275 (Decode a)
decode_275 f = return f

encode_275 :: FnW Binary_275 a -> Fn Logical_275 (Encode a)
encode_275 f = return f

parse_275 :: Fn Logical_275 a -> Parser a
parse_275 f = ws >> return f

show_275 :: Fn Logical_275 (String, ShowS)
show_275 = simple $ id


--- 276: '  { <Vt>.H, <Vt2>.H, <Vt3>.H }[<index>], [<Xn|SP>]'
--- LD3_asisdlso_H3_3h            ld3_advsimd_sngl.xml
--- ST3_asisdlso_H3_3h            st3_advsimd_sngl.xml

type Logical_276 = '[]
type Binary_276  = '[]

decode_276 :: Fn Logical_276 a -> FnW Binary_276 (Decode a)
decode_276 f = return f

encode_276 :: FnW Binary_276 a -> Fn Logical_276 (Encode a)
encode_276 f = return f

parse_276 :: Fn Logical_276 a -> Parser a
parse_276 f = ws >> return f

show_276 :: Fn Logical_276 (String, ShowS)
show_276 = simple $ id


--- 277: '  { <Vt>.S, <Vt2>.S, <Vt3>.S }[<index>], [<Xn|SP>]'
--- LD3_asisdlso_S3_3s            ld3_advsimd_sngl.xml
--- ST3_asisdlso_S3_3s            st3_advsimd_sngl.xml

type Logical_277 = '[]
type Binary_277  = '[]

decode_277 :: Fn Logical_277 a -> FnW Binary_277 (Decode a)
decode_277 f = return f

encode_277 :: FnW Binary_277 a -> Fn Logical_277 (Encode a)
encode_277 f = return f

parse_277 :: Fn Logical_277 a -> Parser a
parse_277 f = ws >> return f

show_277 :: Fn Logical_277 (String, ShowS)
show_277 = simple $ id


--- 278: '  <Bt>, [<Xn|SP>, (<Wm>|<Xm>), <extend> {<amount>}]'
--- LDR_B_ldst_regoff             ldr_reg_fpsimd.xml
--- STR_B_ldst_regoff             str_reg_fpsimd.xml

type Logical_278 = '[]
type Binary_278  = '[]

decode_278 :: Fn Logical_278 a -> FnW Binary_278 (Decode a)
decode_278 f = return f

encode_278 :: FnW Binary_278 a -> Fn Logical_278 (Encode a)
encode_278 f = return f

parse_278 :: Fn Logical_278 a -> Parser a
parse_278 f = ws >> return f

show_278 :: Fn Logical_278 (String, ShowS)
show_278 = simple $ id


--- 279: '  <Vd>.<T>, <Vn>.<T>, <Vm>.<Ts>[<index>], #<rotate>'
--- FCMLA_asimdelem_C_H           fcmla_advsimd_elt.xml
--- FCMLA_asimdelem_C_S           fcmla_advsimd_elt.xml

type Logical_279 = '[]
type Binary_279  = '[]

decode_279 :: Fn Logical_279 a -> FnW Binary_279 (Decode a)
decode_279 f = return f

encode_279 :: FnW Binary_279 a -> Fn Logical_279 (Encode a)
encode_279 f = return f

parse_279 :: Fn Logical_279 a -> Parser a
parse_279 f = ws >> return f

show_279 :: Fn Logical_279 (String, ShowS)
show_279 = simple $ id


--- 280: '  <Wt>, [<Xn|SP>, (<Wm>|<Xm>), <extend> {<amount>}]'
--- LDRB_32B_ldst_regoff          ldrb_reg.xml
--- LDRSB_32B_ldst_regoff         ldrsb_reg.xml
--- STRB_32B_ldst_regoff          strb_reg.xml

type Logical_280 = '[]
type Binary_280  = '[]

decode_280 :: Fn Logical_280 a -> FnW Binary_280 (Decode a)
decode_280 f = return f

encode_280 :: FnW Binary_280 a -> Fn Logical_280 (Encode a)
encode_280 f = return f

parse_280 :: Fn Logical_280 a -> Parser a
parse_280 f = ws >> return f

show_280 :: Fn Logical_280 (String, ShowS)
show_280 = simple $ id


--- 281: '  <Xt>, [<Xn|SP>, (<Wm>|<Xm>), <extend> {<amount>}]'
--- LDRSB_64B_ldst_regoff         ldrsb_reg.xml

type Logical_281 = '[]
type Binary_281  = '[]

decode_281 :: Fn Logical_281 a -> FnW Binary_281 (Decode a)
decode_281 f = return f

encode_281 :: FnW Binary_281 a -> Fn Logical_281 (Encode a)
encode_281 f = return f

parse_281 :: Fn Logical_281 a -> Parser a
parse_281 f = ws >> return f

show_281 :: Fn Logical_281 (String, ShowS)
show_281 = simple $ id


--- 282: '  <Dt>, [<Xn|SP>, (<Wm>|<Xm>){, <extend> {<amount>}}]'
--- LDR_D_ldst_regoff             ldr_reg_fpsimd.xml
--- STR_D_ldst_regoff             str_reg_fpsimd.xml

type Logical_282 = '[]
type Binary_282  = '[]

decode_282 :: Fn Logical_282 a -> FnW Binary_282 (Decode a)
decode_282 f = return f

encode_282 :: FnW Binary_282 a -> Fn Logical_282 (Encode a)
encode_282 f = return f

parse_282 :: Fn Logical_282 a -> Parser a
parse_282 f = ws >> return f

show_282 :: Fn Logical_282 (String, ShowS)
show_282 = simple $ id


--- 283: '  <Ht>, [<Xn|SP>, (<Wm>|<Xm>){, <extend> {<amount>}}]'
--- LDR_H_ldst_regoff             ldr_reg_fpsimd.xml
--- STR_H_ldst_regoff             str_reg_fpsimd.xml

type Logical_283 = '[]
type Binary_283  = '[]

decode_283 :: Fn Logical_283 a -> FnW Binary_283 (Decode a)
decode_283 f = return f

encode_283 :: FnW Binary_283 a -> Fn Logical_283 (Encode a)
encode_283 f = return f

parse_283 :: Fn Logical_283 a -> Parser a
parse_283 f = ws >> return f

show_283 :: Fn Logical_283 (String, ShowS)
show_283 = simple $ id


--- 284: '  <Qt>, [<Xn|SP>, (<Wm>|<Xm>){, <extend> {<amount>}}]'
--- LDR_Q_ldst_regoff             ldr_reg_fpsimd.xml
--- STR_Q_ldst_regoff             str_reg_fpsimd.xml

type Logical_284 = '[]
type Binary_284  = '[]

decode_284 :: Fn Logical_284 a -> FnW Binary_284 (Decode a)
decode_284 f = return f

encode_284 :: FnW Binary_284 a -> Fn Logical_284 (Encode a)
encode_284 f = return f

parse_284 :: Fn Logical_284 a -> Parser a
parse_284 f = ws >> return f

show_284 :: Fn Logical_284 (String, ShowS)
show_284 = simple $ id


--- 285: '  <St>, [<Xn|SP>, (<Wm>|<Xm>){, <extend> {<amount>}}]'
--- LDR_S_ldst_regoff             ldr_reg_fpsimd.xml
--- STR_S_ldst_regoff             str_reg_fpsimd.xml

type Logical_285 = '[]
type Binary_285  = '[]

decode_285 :: Fn Logical_285 a -> FnW Binary_285 (Decode a)
decode_285 f = return f

encode_285 :: FnW Binary_285 a -> Fn Logical_285 (Encode a)
encode_285 f = return f

parse_285 :: Fn Logical_285 a -> Parser a
parse_285 f = ws >> return f

show_285 :: Fn Logical_285 (String, ShowS)
show_285 = simple $ id


--- 286: '  <Wt>, [<Xn|SP>, (<Wm>|<Xm>){, <extend> {<amount>}}]'
--- LDR_32_ldst_regoff            ldr_reg_gen.xml
--- LDRH_32_ldst_regoff           ldrh_reg.xml
--- LDRSH_32_ldst_regoff          ldrsh_reg.xml
--- STR_32_ldst_regoff            str_reg_gen.xml
--- STRH_32_ldst_regoff           strh_reg.xml

type Logical_286 = '[]
type Binary_286  = '[]

decode_286 :: Fn Logical_286 a -> FnW Binary_286 (Decode a)
decode_286 f = return f

encode_286 :: FnW Binary_286 a -> Fn Logical_286 (Encode a)
encode_286 f = return f

parse_286 :: Fn Logical_286 a -> Parser a
parse_286 f = ws >> return f

show_286 :: Fn Logical_286 (String, ShowS)
show_286 = simple $ id


--- 287: '  <Xt>, [<Xn|SP>, (<Wm>|<Xm>){, <extend> {<amount>}}]'
--- LDR_64_ldst_regoff            ldr_reg_gen.xml
--- LDRSH_64_ldst_regoff          ldrsh_reg.xml
--- LDRSW_64_ldst_regoff          ldrsw_reg.xml
--- STR_64_ldst_regoff            str_reg_gen.xml

type Logical_287 = '[]
type Binary_287  = '[]

decode_287 :: Fn Logical_287 a -> FnW Binary_287 (Decode a)
decode_287 f = return f

encode_287 :: FnW Binary_287 a -> Fn Logical_287 (Encode a)
encode_287 f = return f

parse_287 :: Fn Logical_287 a -> Parser a
parse_287 f = ws >> return f

show_287 :: Fn Logical_287 (String, ShowS)
show_287 = simple $ id


--- 288: '  { <Vt>.<T>, <Vt2>.<T>, <Vt3>.<T> }, [<Xn|SP>], <Xm>'
--- LD1_asisdlsep_R3_r3           ld1_advsimd_mult.xml
--- LD3_asisdlsep_R3_r            ld3_advsimd_mult.xml
--- LD3R_asisdlsop_RX3_r          ld3r_advsimd.xml
--- ST1_asisdlsep_R3_r3           st1_advsimd_mult.xml
--- ST3_asisdlsep_R3_r            st3_advsimd_mult.xml

type Logical_288 = '[]
type Binary_288  = '[]

decode_288 :: Fn Logical_288 a -> FnW Binary_288 (Decode a)
decode_288 f = return f

encode_288 :: FnW Binary_288 a -> Fn Logical_288 (Encode a)
encode_288 f = return f

parse_288 :: Fn Logical_288 a -> Parser a
parse_288 f = ws >> return f

show_288 :: Fn Logical_288 (String, ShowS)
show_288 = simple $ id


--- 289: '  { <Vt>.<T>, <Vt2>.<T>, <Vt3>.<T> }, [<Xn|SP>], <imm>'
--- LD1_asisdlsep_I3_i3           ld1_advsimd_mult.xml
--- LD3_asisdlsep_I3_i            ld3_advsimd_mult.xml
--- LD3R_asisdlsop_R3_i           ld3r_advsimd.xml
--- ST1_asisdlsep_I3_i3           st1_advsimd_mult.xml
--- ST3_asisdlsep_I3_i            st3_advsimd_mult.xml

type Logical_289 = '[]
type Binary_289  = '[]

decode_289 :: Fn Logical_289 a -> FnW Binary_289 (Decode a)
decode_289 f = return f

encode_289 :: FnW Binary_289 a -> Fn Logical_289 (Encode a)
encode_289 f = return f

parse_289 :: Fn Logical_289 a -> Parser a
parse_289 f = ws >> return f

show_289 :: Fn Logical_289 (String, ShowS)
show_289 = simple $ id


--- 290: '  { <Vt>.B, <Vt2>.B, <Vt3>.B }[<index>], [<Xn|SP>], #3'
--- LD3_asisdlsop_B3_i3b          ld3_advsimd_sngl.xml
--- ST3_asisdlsop_B3_i3b          st3_advsimd_sngl.xml

type Logical_290 = '[]
type Binary_290  = '[]

decode_290 :: Fn Logical_290 a -> FnW Binary_290 (Decode a)
decode_290 f = return f

encode_290 :: FnW Binary_290 a -> Fn Logical_290 (Encode a)
encode_290 f = return f

parse_290 :: Fn Logical_290 a -> Parser a
parse_290 f = ws >> return f

show_290 :: Fn Logical_290 (String, ShowS)
show_290 = simple $ id


--- 291: '  { <Vt>.H, <Vt2>.H, <Vt3>.H }[<index>], [<Xn|SP>], #6'
--- LD3_asisdlsop_H3_i3h          ld3_advsimd_sngl.xml
--- ST3_asisdlsop_H3_i3h          st3_advsimd_sngl.xml

type Logical_291 = '[]
type Binary_291  = '[]

decode_291 :: Fn Logical_291 a -> FnW Binary_291 (Decode a)
decode_291 f = return f

encode_291 :: FnW Binary_291 a -> Fn Logical_291 (Encode a)
encode_291 f = return f

parse_291 :: Fn Logical_291 a -> Parser a
parse_291 f = ws >> return f

show_291 :: Fn Logical_291 (String, ShowS)
show_291 = simple $ id


--- 292: '  { <Vt>.D, <Vt2>.D, <Vt3>.D }[<index>], [<Xn|SP>], #24'
--- LD3_asisdlsop_D3_i3d          ld3_advsimd_sngl.xml
--- ST3_asisdlsop_D3_i3d          st3_advsimd_sngl.xml

type Logical_292 = '[]
type Binary_292  = '[]

decode_292 :: Fn Logical_292 a -> FnW Binary_292 (Decode a)
decode_292 f = return f

encode_292 :: FnW Binary_292 a -> Fn Logical_292 (Encode a)
encode_292 f = return f

parse_292 :: Fn Logical_292 a -> Parser a
parse_292 f = ws >> return f

show_292 :: Fn Logical_292 (String, ShowS)
show_292 = simple $ id


--- 293: '  { <Vt>.S, <Vt2>.S, <Vt3>.S }[<index>], [<Xn|SP>], #12'
--- LD3_asisdlsop_S3_i3s          ld3_advsimd_sngl.xml
--- ST3_asisdlsop_S3_i3s          st3_advsimd_sngl.xml

type Logical_293 = '[]
type Binary_293  = '[]

decode_293 :: Fn Logical_293 a -> FnW Binary_293 (Decode a)
decode_293 f = return f

encode_293 :: FnW Binary_293 a -> Fn Logical_293 (Encode a)
encode_293 f = return f

parse_293 :: Fn Logical_293 a -> Parser a
parse_293 f = ws >> return f

show_293 :: Fn Logical_293 (String, ShowS)
show_293 = simple $ id


--- 294: '  { <Vt>.B, <Vt2>.B, <Vt3>.B }[<index>], [<Xn|SP>], <Xm>'
--- LD3_asisdlsop_BX3_r3b         ld3_advsimd_sngl.xml
--- ST3_asisdlsop_BX3_r3b         st3_advsimd_sngl.xml

type Logical_294 = '[]
type Binary_294  = '[]

decode_294 :: Fn Logical_294 a -> FnW Binary_294 (Decode a)
decode_294 f = return f

encode_294 :: FnW Binary_294 a -> Fn Logical_294 (Encode a)
encode_294 f = return f

parse_294 :: Fn Logical_294 a -> Parser a
parse_294 f = ws >> return f

show_294 :: Fn Logical_294 (String, ShowS)
show_294 = simple $ id


--- 295: '  { <Vt>.D, <Vt2>.D, <Vt3>.D }[<index>], [<Xn|SP>], <Xm>'
--- LD3_asisdlsop_DX3_r3d         ld3_advsimd_sngl.xml
--- ST3_asisdlsop_DX3_r3d         st3_advsimd_sngl.xml

type Logical_295 = '[]
type Binary_295  = '[]

decode_295 :: Fn Logical_295 a -> FnW Binary_295 (Decode a)
decode_295 f = return f

encode_295 :: FnW Binary_295 a -> Fn Logical_295 (Encode a)
encode_295 f = return f

parse_295 :: Fn Logical_295 a -> Parser a
parse_295 f = ws >> return f

show_295 :: Fn Logical_295 (String, ShowS)
show_295 = simple $ id


--- 296: '  { <Vt>.H, <Vt2>.H, <Vt3>.H }[<index>], [<Xn|SP>], <Xm>'
--- LD3_asisdlsop_HX3_r3h         ld3_advsimd_sngl.xml
--- ST3_asisdlsop_HX3_r3h         st3_advsimd_sngl.xml

type Logical_296 = '[]
type Binary_296  = '[]

decode_296 :: Fn Logical_296 a -> FnW Binary_296 (Decode a)
decode_296 f = return f

encode_296 :: FnW Binary_296 a -> Fn Logical_296 (Encode a)
encode_296 f = return f

parse_296 :: Fn Logical_296 a -> Parser a
parse_296 f = ws >> return f

show_296 :: Fn Logical_296 (String, ShowS)
show_296 = simple $ id


--- 297: '  { <Vt>.S, <Vt2>.S, <Vt3>.S }[<index>], [<Xn|SP>], <Xm>'
--- LD3_asisdlsop_SX3_r3s         ld3_advsimd_sngl.xml
--- ST3_asisdlsop_SX3_r3s         st3_advsimd_sngl.xml

type Logical_297 = '[]
type Binary_297  = '[]

decode_297 :: Fn Logical_297 a -> FnW Binary_297 (Decode a)
decode_297 f = return f

encode_297 :: FnW Binary_297 a -> Fn Logical_297 (Encode a)
encode_297 f = return f

parse_297 :: Fn Logical_297 a -> Parser a
parse_297 f = ws >> return f

show_297 :: Fn Logical_297 (String, ShowS)
show_297 = simple $ id


--- 298: '  { <Vt>.<T>, <Vt2>.<T>, <Vt3>.<T>, <Vt4>.<T> }, [<Xn|SP>]'
--- LD1_asisdlse_R4_4v            ld1_advsimd_mult.xml
--- LD4_asisdlse_R4               ld4_advsimd_mult.xml
--- LD4R_asisdlso_R4              ld4r_advsimd.xml
--- ST1_asisdlse_R4_4v            st1_advsimd_mult.xml
--- ST4_asisdlse_R4               st4_advsimd_mult.xml

type Logical_298 = '[]
type Binary_298  = '[]

decode_298 :: Fn Logical_298 a -> FnW Binary_298 (Decode a)
decode_298 f = return f

encode_298 :: FnW Binary_298 a -> Fn Logical_298 (Encode a)
encode_298 f = return f

parse_298 :: Fn Logical_298 a -> Parser a
parse_298 f = ws >> return f

show_298 :: Fn Logical_298 (String, ShowS)
show_298 = simple $ id


--- 299: '  { <Vt>.B, <Vt2>.B, <Vt3>.B, <Vt4>.B }[<index>], [<Xn|SP>]'
--- LD4_asisdlso_B4_4b            ld4_advsimd_sngl.xml
--- ST4_asisdlso_B4_4b            st4_advsimd_sngl.xml

type Logical_299 = '[]
type Binary_299  = '[]

decode_299 :: Fn Logical_299 a -> FnW Binary_299 (Decode a)
decode_299 f = return f

encode_299 :: FnW Binary_299 a -> Fn Logical_299 (Encode a)
encode_299 f = return f

parse_299 :: Fn Logical_299 a -> Parser a
parse_299 f = ws >> return f

show_299 :: Fn Logical_299 (String, ShowS)
show_299 = simple $ id


--- 300: '  { <Vt>.D, <Vt2>.D, <Vt3>.D, <Vt4>.D }[<index>], [<Xn|SP>]'
--- LD4_asisdlso_D4_4d            ld4_advsimd_sngl.xml
--- ST4_asisdlso_D4_4d            st4_advsimd_sngl.xml

type Logical_300 = '[]
type Binary_300  = '[]

decode_300 :: Fn Logical_300 a -> FnW Binary_300 (Decode a)
decode_300 f = return f

encode_300 :: FnW Binary_300 a -> Fn Logical_300 (Encode a)
encode_300 f = return f

parse_300 :: Fn Logical_300 a -> Parser a
parse_300 f = ws >> return f

show_300 :: Fn Logical_300 (String, ShowS)
show_300 = simple $ id


--- 301: '  { <Vt>.H, <Vt2>.H, <Vt3>.H, <Vt4>.H }[<index>], [<Xn|SP>]'
--- LD4_asisdlso_H4_4h            ld4_advsimd_sngl.xml
--- ST4_asisdlso_H4_4h            st4_advsimd_sngl.xml

type Logical_301 = '[]
type Binary_301  = '[]

decode_301 :: Fn Logical_301 a -> FnW Binary_301 (Decode a)
decode_301 f = return f

encode_301 :: FnW Binary_301 a -> Fn Logical_301 (Encode a)
encode_301 f = return f

parse_301 :: Fn Logical_301 a -> Parser a
parse_301 f = ws >> return f

show_301 :: Fn Logical_301 (String, ShowS)
show_301 = simple $ id


--- 302: '  { <Vt>.S, <Vt2>.S, <Vt3>.S, <Vt4>.S }[<index>], [<Xn|SP>]'
--- LD4_asisdlso_S4_4s            ld4_advsimd_sngl.xml
--- ST4_asisdlso_S4_4s            st4_advsimd_sngl.xml

type Logical_302 = '[]
type Binary_302  = '[]

decode_302 :: Fn Logical_302 a -> FnW Binary_302 (Decode a)
decode_302 f = return f

encode_302 :: FnW Binary_302 a -> Fn Logical_302 (Encode a)
encode_302 f = return f

parse_302 :: Fn Logical_302 a -> Parser a
parse_302 f = ws >> return f

show_302 :: Fn Logical_302 (String, ShowS)
show_302 = simple $ id


--- 303: '  <Vd>.<Ta>, { <Vn>.16B, <Vn+1>.16B, <Vn+2>.16B }, <Vm>.<Ta>'
--- TBL_asimdtbl_L3_3             tbl_advsimd.xml
--- TBX_asimdtbl_L3_3             tbx_advsimd.xml

type Logical_303 = '[]
type Binary_303  = '[]

decode_303 :: Fn Logical_303 a -> FnW Binary_303 (Decode a)
decode_303 f = return f

encode_303 :: FnW Binary_303 a -> Fn Logical_303 (Encode a)
encode_303 f = return f

parse_303 :: Fn Logical_303 a -> Parser a
parse_303 f = ws >> return f

show_303 :: Fn Logical_303 (String, ShowS)
show_303 = simple $ id


--- 304: '  { <Vt>.B, <Vt2>.B, <Vt3>.B, <Vt4>.B }[<index>], [<Xn|SP>], #4'
--- LD4_asisdlsop_B4_i4b          ld4_advsimd_sngl.xml
--- ST4_asisdlsop_B4_i4b          st4_advsimd_sngl.xml

type Logical_304 = '[]
type Binary_304  = '[]

decode_304 :: Fn Logical_304 a -> FnW Binary_304 (Decode a)
decode_304 f = return f

encode_304 :: FnW Binary_304 a -> Fn Logical_304 (Encode a)
encode_304 f = return f

parse_304 :: Fn Logical_304 a -> Parser a
parse_304 f = ws >> return f

show_304 :: Fn Logical_304 (String, ShowS)
show_304 = simple $ id


--- 305: '  { <Vt>.H, <Vt2>.H, <Vt3>.H, <Vt4>.H }[<index>], [<Xn|SP>], #8'
--- LD4_asisdlsop_H4_i4h          ld4_advsimd_sngl.xml
--- ST4_asisdlsop_H4_i4h          st4_advsimd_sngl.xml

type Logical_305 = '[]
type Binary_305  = '[]

decode_305 :: Fn Logical_305 a -> FnW Binary_305 (Decode a)
decode_305 f = return f

encode_305 :: FnW Binary_305 a -> Fn Logical_305 (Encode a)
encode_305 f = return f

parse_305 :: Fn Logical_305 a -> Parser a
parse_305 f = ws >> return f

show_305 :: Fn Logical_305 (String, ShowS)
show_305 = simple $ id


--- 306: '  { <Vt>.<T>, <Vt2>.<T>, <Vt3>.<T>, <Vt4>.<T> }, [<Xn|SP>], <Xm>'
--- LD1_asisdlsep_R4_r4           ld1_advsimd_mult.xml
--- LD4_asisdlsep_R4_r            ld4_advsimd_mult.xml
--- LD4R_asisdlsop_RX4_r          ld4r_advsimd.xml
--- ST1_asisdlsep_R4_r4           st1_advsimd_mult.xml
--- ST4_asisdlsep_R4_r            st4_advsimd_mult.xml

type Logical_306 = '[]
type Binary_306  = '[]

decode_306 :: Fn Logical_306 a -> FnW Binary_306 (Decode a)
decode_306 f = return f

encode_306 :: FnW Binary_306 a -> Fn Logical_306 (Encode a)
encode_306 f = return f

parse_306 :: Fn Logical_306 a -> Parser a
parse_306 f = ws >> return f

show_306 :: Fn Logical_306 (String, ShowS)
show_306 = simple $ id


--- 307: '  { <Vt>.D, <Vt2>.D, <Vt3>.D, <Vt4>.D }[<index>], [<Xn|SP>], #32'
--- LD4_asisdlsop_D4_i4d          ld4_advsimd_sngl.xml
--- ST4_asisdlsop_D4_i4d          st4_advsimd_sngl.xml

type Logical_307 = '[]
type Binary_307  = '[]

decode_307 :: Fn Logical_307 a -> FnW Binary_307 (Decode a)
decode_307 f = return f

encode_307 :: FnW Binary_307 a -> Fn Logical_307 (Encode a)
encode_307 f = return f

parse_307 :: Fn Logical_307 a -> Parser a
parse_307 f = ws >> return f

show_307 :: Fn Logical_307 (String, ShowS)
show_307 = simple $ id


--- 308: '  { <Vt>.S, <Vt2>.S, <Vt3>.S, <Vt4>.S }[<index>], [<Xn|SP>], #16'
--- LD4_asisdlsop_S4_i4s          ld4_advsimd_sngl.xml
--- ST4_asisdlsop_S4_i4s          st4_advsimd_sngl.xml

type Logical_308 = '[]
type Binary_308  = '[]

decode_308 :: Fn Logical_308 a -> FnW Binary_308 (Decode a)
decode_308 f = return f

encode_308 :: FnW Binary_308 a -> Fn Logical_308 (Encode a)
encode_308 f = return f

parse_308 :: Fn Logical_308 a -> Parser a
parse_308 f = ws >> return f

show_308 :: Fn Logical_308 (String, ShowS)
show_308 = simple $ id


--- 309: '  { <Vt>.<T>, <Vt2>.<T>, <Vt3>.<T>, <Vt4>.<T> }, [<Xn|SP>], <imm>'
--- LD1_asisdlsep_I4_i4           ld1_advsimd_mult.xml
--- LD4_asisdlsep_I4_i            ld4_advsimd_mult.xml
--- LD4R_asisdlsop_R4_i           ld4r_advsimd.xml
--- ST1_asisdlsep_I4_i4           st1_advsimd_mult.xml
--- ST4_asisdlsep_I4_i            st4_advsimd_mult.xml

type Logical_309 = '[]
type Binary_309  = '[]

decode_309 :: Fn Logical_309 a -> FnW Binary_309 (Decode a)
decode_309 f = return f

encode_309 :: FnW Binary_309 a -> Fn Logical_309 (Encode a)
encode_309 f = return f

parse_309 :: Fn Logical_309 a -> Parser a
parse_309 f = ws >> return f

show_309 :: Fn Logical_309 (String, ShowS)
show_309 = simple $ id


--- 310: '  { <Vt>.B, <Vt2>.B, <Vt3>.B, <Vt4>.B }[<index>], [<Xn|SP>], <Xm>'
--- LD4_asisdlsop_BX4_r4b         ld4_advsimd_sngl.xml
--- ST4_asisdlsop_BX4_r4b         st4_advsimd_sngl.xml

type Logical_310 = '[]
type Binary_310  = '[]

decode_310 :: Fn Logical_310 a -> FnW Binary_310 (Decode a)
decode_310 f = return f

encode_310 :: FnW Binary_310 a -> Fn Logical_310 (Encode a)
encode_310 f = return f

parse_310 :: Fn Logical_310 a -> Parser a
parse_310 f = ws >> return f

show_310 :: Fn Logical_310 (String, ShowS)
show_310 = simple $ id


--- 311: '  { <Vt>.D, <Vt2>.D, <Vt3>.D, <Vt4>.D }[<index>], [<Xn|SP>], <Xm>'
--- LD4_asisdlsop_DX4_r4d         ld4_advsimd_sngl.xml
--- ST4_asisdlsop_DX4_r4d         st4_advsimd_sngl.xml

type Logical_311 = '[]
type Binary_311  = '[]

decode_311 :: Fn Logical_311 a -> FnW Binary_311 (Decode a)
decode_311 f = return f

encode_311 :: FnW Binary_311 a -> Fn Logical_311 (Encode a)
encode_311 f = return f

parse_311 :: Fn Logical_311 a -> Parser a
parse_311 f = ws >> return f

show_311 :: Fn Logical_311 (String, ShowS)
show_311 = simple $ id


--- 312: '  { <Vt>.H, <Vt2>.H, <Vt3>.H, <Vt4>.H }[<index>], [<Xn|SP>], <Xm>'
--- LD4_asisdlsop_HX4_r4h         ld4_advsimd_sngl.xml
--- ST4_asisdlsop_HX4_r4h         st4_advsimd_sngl.xml

type Logical_312 = '[]
type Binary_312  = '[]

decode_312 :: Fn Logical_312 a -> FnW Binary_312 (Decode a)
decode_312 f = return f

encode_312 :: FnW Binary_312 a -> Fn Logical_312 (Encode a)
encode_312 f = return f

parse_312 :: Fn Logical_312 a -> Parser a
parse_312 f = ws >> return f

show_312 :: Fn Logical_312 (String, ShowS)
show_312 = simple $ id


--- 313: '  { <Vt>.S, <Vt2>.S, <Vt3>.S, <Vt4>.S }[<index>], [<Xn|SP>], <Xm>'
--- LD4_asisdlsop_SX4_r4s         ld4_advsimd_sngl.xml
--- ST4_asisdlsop_SX4_r4s         st4_advsimd_sngl.xml

type Logical_313 = '[]
type Binary_313  = '[]

decode_313 :: Fn Logical_313 a -> FnW Binary_313 (Decode a)
decode_313 f = return f

encode_313 :: FnW Binary_313 a -> Fn Logical_313 (Encode a)
encode_313 f = return f

parse_313 :: Fn Logical_313 a -> Parser a
parse_313 f = ws >> return f

show_313 :: Fn Logical_313 (String, ShowS)
show_313 = simple $ id


--- 314: '  (<prfop>|#<imm5>), [<Xn|SP>, (<Wm>|<Xm>){, <extend> {<amount>}}]'
--- PRFM_P_ldst_regoff            prfm_reg.xml

type Logical_314 = '[]
type Binary_314  = '[]

decode_314 :: Fn Logical_314 a -> FnW Binary_314 (Decode a)
decode_314 f = return f

encode_314 :: FnW Binary_314 a -> Fn Logical_314 (Encode a)
encode_314 f = return f

parse_314 :: Fn Logical_314 a -> Parser a
parse_314 f = ws >> return f

show_314 :: Fn Logical_314 (String, ShowS)
show_314 = simple $ id


--- 315: '  <Vd>.<Ta>, { <Vn>.16B, <Vn+1>.16B, <Vn+2>.16B, <Vn+3>.16B }, <Vm>.<Ta>'
--- TBL_asimdtbl_L4_4             tbl_advsimd.xml
--- TBX_asimdtbl_L4_4             tbx_advsimd.xml

type Logical_315 = '[]
type Binary_315  = '[]

decode_315 :: Fn Logical_315 a -> FnW Binary_315 (Decode a)
decode_315 f = return f

encode_315 :: FnW Binary_315 a -> Fn Logical_315 (Encode a)
encode_315 f = return f

parse_315 :: Fn Logical_315 a -> Parser a
parse_315 f = ws >> return f

show_315 :: Fn Logical_315 (String, ShowS)
show_315 = simple $ id

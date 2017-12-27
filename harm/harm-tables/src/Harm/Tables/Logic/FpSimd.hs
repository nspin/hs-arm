{-# LANGUAGE DataKinds #-}
{-# LANGUAGE KindSignatures #-}
{-# LANGUAGE PolyKinds #-}

module Harm.Tables.Logic.FpSimd where

import Harm.Types
import Harm.Tables.Types
import Harm.Tables.Binary
import Harm.Tables.Assembly

import Data.Attoparsec.ByteString.Char8


--- F0: '  <Dd>, <Dn>'
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

type Logical_F0 = '[]
type Binary_F0  = '[]

decode_F0 :: Fn Logical_F0 a -> FnW Binary_F0 (Decode a)
decode_F0 f = return f

encode_F0 :: FnW Binary_F0 a -> Fn Logical_F0 (Encode a)
encode_F0 f = return f

parse_F0 :: Fn Logical_F0 a -> Parser a
parse_F0 f = ws >> return f

show_F0 :: Fn Logical_F0 (String, String)
show_F0 = simple $ ""


--- F1: '  <Dd>, <Hn>'
--- FCVT_DH_floatdp1              fcvt_float.xml

type Logical_F1 = '[]
type Binary_F1  = '[]

decode_F1 :: Fn Logical_F1 a -> FnW Binary_F1 (Decode a)
decode_F1 f = return f

encode_F1 :: FnW Binary_F1 a -> Fn Logical_F1 (Encode a)
encode_F1 f = return f

parse_F1 :: Fn Logical_F1 a -> Parser a
parse_F1 f = ws >> return f

show_F1 :: Fn Logical_F1 (String, String)
show_F1 = simple $ ""


--- F2: '  <Dd>, <Sn>'
--- FCVT_DS_floatdp1              fcvt_float.xml

type Logical_F2 = '[]
type Binary_F2  = '[]

decode_F2 :: Fn Logical_F2 a -> FnW Binary_F2 (Decode a)
decode_F2 f = return f

encode_F2 :: FnW Binary_F2 a -> Fn Logical_F2 (Encode a)
encode_F2 f = return f

parse_F2 :: Fn Logical_F2 a -> Parser a
parse_F2 f = ws >> return f

show_F2 :: Fn Logical_F2 (String, String)
show_F2 = simple $ ""


--- F3: '  <Dd>, <Wn>'
--- SCVTF_D32_float2int           scvtf_float_int.xml
--- UCVTF_D32_float2int           ucvtf_float_int.xml

type Logical_F3 = '[]
type Binary_F3  = '[]

decode_F3 :: Fn Logical_F3 a -> FnW Binary_F3 (Decode a)
decode_F3 f = return f

encode_F3 :: FnW Binary_F3 a -> Fn Logical_F3 (Encode a)
encode_F3 f = return f

parse_F3 :: Fn Logical_F3 a -> Parser a
parse_F3 f = ws >> return f

show_F3 :: Fn Logical_F3 (String, String)
show_F3 = simple $ ""


--- F4: '  <Dd>, <Xn>'
--- FMOV_D64_float2int            fmov_float_gen.xml
--- SCVTF_D64_float2int           scvtf_float_int.xml
--- UCVTF_D64_float2int           ucvtf_float_int.xml

type Logical_F4 = '[]
type Binary_F4  = '[]

decode_F4 :: Fn Logical_F4 a -> FnW Binary_F4 (Decode a)
decode_F4 f = return f

encode_F4 :: FnW Binary_F4 a -> Fn Logical_F4 (Encode a)
encode_F4 f = return f

parse_F4 :: Fn Logical_F4 a -> Parser a
parse_F4 f = ws >> return f

show_F4 :: Fn Logical_F4 (String, String)
show_F4 = simple $ ""


--- F5: '  <Dn>, #0.0'
--- FCMP_DZ_floatcmp              fcmp_float.xml
--- FCMPE_DZ_floatcmp             fcmpe_float.xml

type Logical_F5 = '[]
type Binary_F5  = '[]

decode_F5 :: Fn Logical_F5 a -> FnW Binary_F5 (Decode a)
decode_F5 f = return f

encode_F5 :: FnW Binary_F5 a -> Fn Logical_F5 (Encode a)
encode_F5 f = return f

parse_F5 :: Fn Logical_F5 a -> Parser a
parse_F5 f = ws >> return f

show_F5 :: Fn Logical_F5 (String, String)
show_F5 = simple $ ""


--- F6: '  <Dn>, <Dm>'
--- FCMP_D_floatcmp               fcmp_float.xml
--- FCMPE_D_floatcmp              fcmpe_float.xml

type Logical_F6 = '[]
type Binary_F6  = '[]

decode_F6 :: Fn Logical_F6 a -> FnW Binary_F6 (Decode a)
decode_F6 f = return f

encode_F6 :: FnW Binary_F6 a -> Fn Logical_F6 (Encode a)
encode_F6 f = return f

parse_F6 :: Fn Logical_F6 a -> Parser a
parse_F6 f = ws >> return f

show_F6 :: Fn Logical_F6 (String, String)
show_F6 = simple $ ""


--- F7: '  <Hd>, <Dn>'
--- FCVT_HD_floatdp1              fcvt_float.xml

type Logical_F7 = '[]
type Binary_F7  = '[]

decode_F7 :: Fn Logical_F7 a -> FnW Binary_F7 (Decode a)
decode_F7 f = return f

encode_F7 :: FnW Binary_F7 a -> Fn Logical_F7 (Encode a)
encode_F7 f = return f

parse_F7 :: Fn Logical_F7 a -> Parser a
parse_F7 f = ws >> return f

show_F7 :: Fn Logical_F7 (String, String)
show_F7 = simple $ ""


--- F8: '  <Hd>, <Hn>'
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

type Logical_F8 = '[]
type Binary_F8  = '[]

decode_F8 :: Fn Logical_F8 a -> FnW Binary_F8 (Decode a)
decode_F8 f = return f

encode_F8 :: FnW Binary_F8 a -> Fn Logical_F8 (Encode a)
encode_F8 f = return f

parse_F8 :: Fn Logical_F8 a -> Parser a
parse_F8 f = ws >> return f

show_F8 :: Fn Logical_F8 (String, String)
show_F8 = simple $ ""


--- F9: '  <Hd>, <Sn>'
--- FCVT_HS_floatdp1              fcvt_float.xml

type Logical_F9 = '[]
type Binary_F9  = '[]

decode_F9 :: Fn Logical_F9 a -> FnW Binary_F9 (Decode a)
decode_F9 f = return f

encode_F9 :: FnW Binary_F9 a -> Fn Logical_F9 (Encode a)
encode_F9 f = return f

parse_F9 :: Fn Logical_F9 a -> Parser a
parse_F9 f = ws >> return f

show_F9 :: Fn Logical_F9 (String, String)
show_F9 = simple $ ""


--- F10: '  <Hd>, <Wn>'
--- FMOV_H32_float2int            fmov_float_gen.xml
--- SCVTF_H32_float2int           scvtf_float_int.xml
--- UCVTF_H32_float2int           ucvtf_float_int.xml

type Logical_F10 = '[]
type Binary_F10  = '[]

decode_F10 :: Fn Logical_F10 a -> FnW Binary_F10 (Decode a)
decode_F10 f = return f

encode_F10 :: FnW Binary_F10 a -> Fn Logical_F10 (Encode a)
encode_F10 f = return f

parse_F10 :: Fn Logical_F10 a -> Parser a
parse_F10 f = ws >> return f

show_F10 :: Fn Logical_F10 (String, String)
show_F10 = simple $ ""


--- F11: '  <Hd>, <Xn>'
--- FMOV_H64_float2int            fmov_float_gen.xml
--- SCVTF_H64_float2int           scvtf_float_int.xml
--- UCVTF_H64_float2int           ucvtf_float_int.xml

type Logical_F11 = '[]
type Binary_F11  = '[]

decode_F11 :: Fn Logical_F11 a -> FnW Binary_F11 (Decode a)
decode_F11 f = return f

encode_F11 :: FnW Binary_F11 a -> Fn Logical_F11 (Encode a)
encode_F11 f = return f

parse_F11 :: Fn Logical_F11 a -> Parser a
parse_F11 f = ws >> return f

show_F11 :: Fn Logical_F11 (String, String)
show_F11 = simple $ ""


--- F12: '  <Hn>, #0.0'
--- FCMP_HZ_floatcmp              fcmp_float.xml
--- FCMPE_HZ_floatcmp             fcmpe_float.xml

type Logical_F12 = '[]
type Binary_F12  = '[]

decode_F12 :: Fn Logical_F12 a -> FnW Binary_F12 (Decode a)
decode_F12 f = return f

encode_F12 :: FnW Binary_F12 a -> Fn Logical_F12 (Encode a)
encode_F12 f = return f

parse_F12 :: Fn Logical_F12 a -> Parser a
parse_F12 f = ws >> return f

show_F12 :: Fn Logical_F12 (String, String)
show_F12 = simple $ ""


--- F13: '  <Hn>, <Hm>'
--- FCMP_H_floatcmp               fcmp_float.xml
--- FCMPE_H_floatcmp              fcmpe_float.xml

type Logical_F13 = '[]
type Binary_F13  = '[]

decode_F13 :: Fn Logical_F13 a -> FnW Binary_F13 (Decode a)
decode_F13 f = return f

encode_F13 :: FnW Binary_F13 a -> Fn Logical_F13 (Encode a)
encode_F13 f = return f

parse_F13 :: Fn Logical_F13 a -> Parser a
parse_F13 f = ws >> return f

show_F13 :: Fn Logical_F13 (String, String)
show_F13 = simple $ ""


--- F14: '  <Sd>, <Dn>'
--- FCVT_SD_floatdp1              fcvt_float.xml

type Logical_F14 = '[]
type Binary_F14  = '[]

decode_F14 :: Fn Logical_F14 a -> FnW Binary_F14 (Decode a)
decode_F14 f = return f

encode_F14 :: FnW Binary_F14 a -> Fn Logical_F14 (Encode a)
encode_F14 f = return f

parse_F14 :: Fn Logical_F14 a -> Parser a
parse_F14 f = ws >> return f

show_F14 :: Fn Logical_F14 (String, String)
show_F14 = simple $ ""


--- F15: '  <Sd>, <Hn>'
--- FCVT_SH_floatdp1              fcvt_float.xml

type Logical_F15 = '[]
type Binary_F15  = '[]

decode_F15 :: Fn Logical_F15 a -> FnW Binary_F15 (Decode a)
decode_F15 f = return f

encode_F15 :: FnW Binary_F15 a -> Fn Logical_F15 (Encode a)
encode_F15 f = return f

parse_F15 :: Fn Logical_F15 a -> Parser a
parse_F15 f = ws >> return f

show_F15 :: Fn Logical_F15 (String, String)
show_F15 = simple $ ""


--- F16: '  <Sd>, <Sn>'
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

type Logical_F16 = '[]
type Binary_F16  = '[]

decode_F16 :: Fn Logical_F16 a -> FnW Binary_F16 (Decode a)
decode_F16 f = return f

encode_F16 :: FnW Binary_F16 a -> Fn Logical_F16 (Encode a)
encode_F16 f = return f

parse_F16 :: Fn Logical_F16 a -> Parser a
parse_F16 f = ws >> return f

show_F16 :: Fn Logical_F16 (String, String)
show_F16 = simple $ ""


--- F17: '  <Sd>, <Wn>'
--- FMOV_S32_float2int            fmov_float_gen.xml
--- SCVTF_S32_float2int           scvtf_float_int.xml
--- UCVTF_S32_float2int           ucvtf_float_int.xml

type Logical_F17 = '[]
type Binary_F17  = '[]

decode_F17 :: Fn Logical_F17 a -> FnW Binary_F17 (Decode a)
decode_F17 f = return f

encode_F17 :: FnW Binary_F17 a -> Fn Logical_F17 (Encode a)
encode_F17 f = return f

parse_F17 :: Fn Logical_F17 a -> Parser a
parse_F17 f = ws >> return f

show_F17 :: Fn Logical_F17 (String, String)
show_F17 = simple $ ""


--- F18: '  <Sd>, <Xn>'
--- SCVTF_S64_float2int           scvtf_float_int.xml
--- UCVTF_S64_float2int           ucvtf_float_int.xml

type Logical_F18 = '[]
type Binary_F18  = '[]

decode_F18 :: Fn Logical_F18 a -> FnW Binary_F18 (Decode a)
decode_F18 f = return f

encode_F18 :: FnW Binary_F18 a -> Fn Logical_F18 (Encode a)
encode_F18 f = return f

parse_F18 :: Fn Logical_F18 a -> Parser a
parse_F18 f = ws >> return f

show_F18 :: Fn Logical_F18 (String, String)
show_F18 = simple $ ""


--- F19: '  <Sn>, #0.0'
--- FCMP_SZ_floatcmp              fcmp_float.xml
--- FCMPE_SZ_floatcmp             fcmpe_float.xml

type Logical_F19 = '[]
type Binary_F19  = '[]

decode_F19 :: Fn Logical_F19 a -> FnW Binary_F19 (Decode a)
decode_F19 f = return f

encode_F19 :: FnW Binary_F19 a -> Fn Logical_F19 (Encode a)
encode_F19 f = return f

parse_F19 :: Fn Logical_F19 a -> Parser a
parse_F19 f = ws >> return f

show_F19 :: Fn Logical_F19 (String, String)
show_F19 = simple $ ""


--- F20: '  <Sn>, <Sm>'
--- FCMP_S_floatcmp               fcmp_float.xml
--- FCMPE_S_floatcmp              fcmpe_float.xml

type Logical_F20 = '[]
type Binary_F20  = '[]

decode_F20 :: Fn Logical_F20 a -> FnW Binary_F20 (Decode a)
decode_F20 f = return f

encode_F20 :: FnW Binary_F20 a -> Fn Logical_F20 (Encode a)
encode_F20 f = return f

parse_F20 :: Fn Logical_F20 a -> Parser a
parse_F20 f = ws >> return f

show_F20 :: Fn Logical_F20 (String, String)
show_F20 = simple $ ""


--- F21: '  <Wd>, <Dn>'
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

type Logical_F21 = '[]
type Binary_F21  = '[]

decode_F21 :: Fn Logical_F21 a -> FnW Binary_F21 (Decode a)
decode_F21 f = return f

encode_F21 :: FnW Binary_F21 a -> Fn Logical_F21 (Encode a)
encode_F21 f = return f

parse_F21 :: Fn Logical_F21 a -> Parser a
parse_F21 f = ws >> return f

show_F21 :: Fn Logical_F21 (String, String)
show_F21 = simple $ ""


--- F22: '  <Wd>, <Hn>'
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

type Logical_F22 = '[]
type Binary_F22  = '[]

decode_F22 :: Fn Logical_F22 a -> FnW Binary_F22 (Decode a)
decode_F22 f = return f

encode_F22 :: FnW Binary_F22 a -> Fn Logical_F22 (Encode a)
encode_F22 f = return f

parse_F22 :: Fn Logical_F22 a -> Parser a
parse_F22 f = ws >> return f

show_F22 :: Fn Logical_F22 (String, String)
show_F22 = simple $ ""


--- F23: '  <Wd>, <Sn>'
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

type Logical_F23 = '[]
type Binary_F23  = '[]

decode_F23 :: Fn Logical_F23 a -> FnW Binary_F23 (Decode a)
decode_F23 f = return f

encode_F23 :: FnW Binary_F23 a -> Fn Logical_F23 (Encode a)
encode_F23 f = return f

parse_F23 :: Fn Logical_F23 a -> Parser a
parse_F23 f = ws >> return f

show_F23 :: Fn Logical_F23 (String, String)
show_F23 = simple $ ""


--- F24: '  <Xd>, <Dn>'
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

type Logical_F24 = '[]
type Binary_F24  = '[]

decode_F24 :: Fn Logical_F24 a -> FnW Binary_F24 (Decode a)
decode_F24 f = return f

encode_F24 :: FnW Binary_F24 a -> Fn Logical_F24 (Encode a)
encode_F24 f = return f

parse_F24 :: Fn Logical_F24 a -> Parser a
parse_F24 f = ws >> return f

show_F24 :: Fn Logical_F24 (String, String)
show_F24 = simple $ ""


--- F25: '  <Xd>, <Hn>'
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

type Logical_F25 = '[]
type Binary_F25  = '[]

decode_F25 :: Fn Logical_F25 a -> FnW Binary_F25 (Decode a)
decode_F25 f = return f

encode_F25 :: FnW Binary_F25 a -> Fn Logical_F25 (Encode a)
encode_F25 f = return f

parse_F25 :: Fn Logical_F25 a -> Parser a
parse_F25 f = ws >> return f

show_F25 :: Fn Logical_F25 (String, String)
show_F25 = simple $ ""


--- F26: '  <Xd>, <Sn>'
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

type Logical_F26 = '[]
type Binary_F26  = '[]

decode_F26 :: Fn Logical_F26 a -> FnW Binary_F26 (Decode a)
decode_F26 f = return f

encode_F26 :: FnW Binary_F26 a -> Fn Logical_F26 (Encode a)
encode_F26 f = return f

parse_F26 :: Fn Logical_F26 a -> Parser a
parse_F26 f = ws >> return f

show_F26 :: Fn Logical_F26 (String, String)
show_F26 = simple $ ""


--- F27: '  <Dd>, #<imm>'
--- FMOV_D_floatimm               fmov_float_imm.xml
--- MOVI_asimdimm_D_ds            movi_advsimd.xml

type Logical_F27 = '[]
type Binary_F27  = '[]

decode_F27 :: Fn Logical_F27 a -> FnW Binary_F27 (Decode a)
decode_F27 f = return f

encode_F27 :: FnW Binary_F27 a -> Fn Logical_F27 (Encode a)
encode_F27 f = return f

parse_F27 :: Fn Logical_F27 a -> Parser a
parse_F27 f = ws >> return f

show_F27 :: Fn Logical_F27 (String, String)
show_F27 = simple $ ""


--- F28: '  <Hd>, #<imm>'
--- FMOV_H_floatimm               fmov_float_imm.xml

type Logical_F28 = '[]
type Binary_F28  = '[]

decode_F28 :: Fn Logical_F28 a -> FnW Binary_F28 (Decode a)
decode_F28 f = return f

encode_F28 :: FnW Binary_F28 a -> Fn Logical_F28 (Encode a)
encode_F28 f = return f

parse_F28 :: Fn Logical_F28 a -> Parser a
parse_F28 f = ws >> return f

show_F28 :: Fn Logical_F28 (String, String)
show_F28 = simple $ ""


--- F29: '  <Sd>, #<imm>'
--- FMOV_S_floatimm               fmov_float_imm.xml

type Logical_F29 = '[]
type Binary_F29  = '[]

decode_F29 :: Fn Logical_F29 a -> FnW Binary_F29 (Decode a)
decode_F29 f = return f

encode_F29 :: FnW Binary_F29 a -> Fn Logical_F29 (Encode a)
encode_F29 f = return f

parse_F29 :: Fn Logical_F29 a -> Parser a
parse_F29 f = ws >> return f

show_F29 :: Fn Logical_F29 (String, String)
show_F29 = simple $ ""


--- F30: '  <Dt>, <label>'
--- LDR_D_loadlit                 ldr_lit_fpsimd.xml

type Logical_F30 = '[]
type Binary_F30  = '[]

decode_F30 :: Fn Logical_F30 a -> FnW Binary_F30 (Decode a)
decode_F30 f = return f

encode_F30 :: FnW Binary_F30 a -> Fn Logical_F30 (Encode a)
encode_F30 f = return f

parse_F30 :: Fn Logical_F30 a -> Parser a
parse_F30 f = ws >> return f

show_F30 :: Fn Logical_F30 (String, String)
show_F30 = simple $ ""


--- F31: '  <Qt>, <label>'
--- LDR_Q_loadlit                 ldr_lit_fpsimd.xml

type Logical_F31 = '[]
type Binary_F31  = '[]

decode_F31 :: Fn Logical_F31 a -> FnW Binary_F31 (Decode a)
decode_F31 f = return f

encode_F31 :: FnW Binary_F31 a -> Fn Logical_F31 (Encode a)
encode_F31 f = return f

parse_F31 :: Fn Logical_F31 a -> Parser a
parse_F31 f = ws >> return f

show_F31 :: Fn Logical_F31 (String, String)
show_F31 = simple $ ""


--- F32: '  <St>, <label>'
--- LDR_S_loadlit                 ldr_lit_fpsimd.xml

type Logical_F32 = '[]
type Binary_F32  = '[]

decode_F32 :: Fn Logical_F32 a -> FnW Binary_F32 (Decode a)
decode_F32 f = return f

encode_F32 :: FnW Binary_F32 a -> Fn Logical_F32 (Encode a)
encode_F32 f = return f

parse_F32 :: Fn Logical_F32 a -> Parser a
parse_F32 f = ws >> return f

show_F32 :: Fn Logical_F32 (String, String)
show_F32 = simple $ ""


--- F33: '  <V><d>, <V><n>'
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

type Logical_F33 = '[]
type Binary_F33  = '[]

decode_F33 :: Fn Logical_F33 a -> FnW Binary_F33 (Decode a)
decode_F33 f = return f

encode_F33 :: FnW Binary_F33 a -> Fn Logical_F33 (Encode a)
encode_F33 f = return f

parse_F33 :: Fn Logical_F33 a -> Parser a
parse_F33 f = ws >> return f

show_F33 :: Fn Logical_F33 (String, String)
show_F33 = simple $ ""


--- F34: '  <Vd>.2D, #<imm>'
--- FMOV_asimdimm_D2_d            fmov_advsimd.xml
--- MOVI_asimdimm_D2_d            movi_advsimd.xml

type Logical_F34 = '[]
type Binary_F34  = '[]

decode_F34 :: Fn Logical_F34 a -> FnW Binary_F34 (Decode a)
decode_F34 f = return f

encode_F34 :: FnW Binary_F34 a -> Fn Logical_F34 (Encode a)
encode_F34 f = return f

parse_F34 :: Fn Logical_F34 a -> Parser a
parse_F34 f = ws >> return f

show_F34 :: Fn Logical_F34 (String, String)
show_F34 = simple $ ""


--- F35: '  <Vd>.D[1], <Xn>'
--- FMOV_V64I_float2int           fmov_float_gen.xml

type Logical_F35 = '[]
type Binary_F35  = '[]

decode_F35 :: Fn Logical_F35 a -> FnW Binary_F35 (Decode a)
decode_F35 f = return f

encode_F35 :: FnW Binary_F35 a -> Fn Logical_F35 (Encode a)
encode_F35 f = return f

parse_F35 :: Fn Logical_F35 a -> Parser a
parse_F35 f = ws >> return f

show_F35 :: Fn Logical_F35 (String, String)
show_F35 = simple $ ""


--- F36: '  <Xd>, <Vn>.D[1]'
--- FMOV_64VX_float2int           fmov_float_gen.xml

type Logical_F36 = '[]
type Binary_F36  = '[]

decode_F36 :: Fn Logical_F36 a -> FnW Binary_F36 (Decode a)
decode_F36 f = return f

encode_F36 :: FnW Binary_F36 a -> Fn Logical_F36 (Encode a)
encode_F36 f = return f

parse_F36 :: Fn Logical_F36 a -> Parser a
parse_F36 f = ws >> return f

show_F36 :: Fn Logical_F36 (String, String)
show_F36 = simple $ ""


--- F37: '  <Dd>, <Dn>, <Dm>'
--- FADD_D_floatdp2               fadd_float.xml
--- FDIV_D_floatdp2               fdiv_float.xml
--- FMAX_D_floatdp2               fmax_float.xml
--- FMAXNM_D_floatdp2             fmaxnm_float.xml
--- FMIN_D_floatdp2               fmin_float.xml
--- FMINNM_D_floatdp2             fminnm_float.xml
--- FMUL_D_floatdp2               fmul_float.xml
--- FNMUL_D_floatdp2              fnmul_float.xml
--- FSUB_D_floatdp2               fsub_float.xml

type Logical_F37 = '[]
type Binary_F37  = '[]

decode_F37 :: Fn Logical_F37 a -> FnW Binary_F37 (Decode a)
decode_F37 f = return f

encode_F37 :: FnW Binary_F37 a -> Fn Logical_F37 (Encode a)
encode_F37 f = return f

parse_F37 :: Fn Logical_F37 a -> Parser a
parse_F37 f = ws >> return f

show_F37 :: Fn Logical_F37 (String, String)
show_F37 = simple $ ""


--- F38: '  <Hd>, <Hn>, #0.0'
--- FCMEQ_asisdmiscfp16_FZ        fcmeq_advsimd_zero.xml
--- FCMGE_asisdmiscfp16_FZ        fcmge_advsimd_zero.xml
--- FCMGT_asisdmiscfp16_FZ        fcmgt_advsimd_zero.xml
--- FCMLE_asisdmiscfp16_FZ        fcmle_advsimd.xml
--- FCMLT_asisdmiscfp16_FZ        fcmlt_advsimd.xml

type Logical_F38 = '[]
type Binary_F38  = '[]

decode_F38 :: Fn Logical_F38 a -> FnW Binary_F38 (Decode a)
decode_F38 f = return f

encode_F38 :: FnW Binary_F38 a -> Fn Logical_F38 (Encode a)
encode_F38 f = return f

parse_F38 :: Fn Logical_F38 a -> Parser a
parse_F38 f = ws >> return f

show_F38 :: Fn Logical_F38 (String, String)
show_F38 = simple $ ""


--- F39: '  <Hd>, <Hn>, <Hm>'
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

type Logical_F39 = '[]
type Binary_F39  = '[]

decode_F39 :: Fn Logical_F39 a -> FnW Binary_F39 (Decode a)
decode_F39 f = return f

encode_F39 :: FnW Binary_F39 a -> Fn Logical_F39 (Encode a)
encode_F39 f = return f

parse_F39 :: Fn Logical_F39 a -> Parser a
parse_F39 f = ws >> return f

show_F39 :: Fn Logical_F39 (String, String)
show_F39 = simple $ ""


--- F40: '  <Sd>, <Sn>, <Sm>'
--- FADD_S_floatdp2               fadd_float.xml
--- FDIV_S_floatdp2               fdiv_float.xml
--- FMAX_S_floatdp2               fmax_float.xml
--- FMAXNM_S_floatdp2             fmaxnm_float.xml
--- FMIN_S_floatdp2               fmin_float.xml
--- FMINNM_S_floatdp2             fminnm_float.xml
--- FMUL_S_floatdp2               fmul_float.xml
--- FNMUL_S_floatdp2              fnmul_float.xml
--- FSUB_S_floatdp2               fsub_float.xml

type Logical_F40 = '[]
type Binary_F40  = '[]

decode_F40 :: Fn Logical_F40 a -> FnW Binary_F40 (Decode a)
decode_F40 f = return f

encode_F40 :: FnW Binary_F40 a -> Fn Logical_F40 (Encode a)
encode_F40 f = return f

parse_F40 :: Fn Logical_F40 a -> Parser a
parse_F40 f = ws >> return f

show_F40 :: Fn Logical_F40 (String, String)
show_F40 = simple $ ""


--- F41: '  <V><d>, <Vn>.<T>'
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

type Logical_F41 = '[]
type Binary_F41  = '[]

decode_F41 :: Fn Logical_F41 a -> FnW Binary_F41 (Decode a)
decode_F41 f = return f

encode_F41 :: FnW Binary_F41 a -> Fn Logical_F41 (Encode a)
encode_F41 f = return f

parse_F41 :: Fn Logical_F41 a -> Parser a
parse_F41 f = ws >> return f

show_F41 :: Fn Logical_F41 (String, String)
show_F41 = simple $ ""


--- F42: '  <Vb><d>, <Va><n>'
--- FCVTXN_asisdmisc_N            fcvtxn_advsimd.xml
--- SQXTN_asisdmisc_N             sqxtn_advsimd.xml
--- SQXTUN_asisdmisc_N            sqxtun_advsimd.xml
--- UQXTN_asisdmisc_N             uqxtn_advsimd.xml

type Logical_F42 = '[]
type Binary_F42  = '[]

decode_F42 :: Fn Logical_F42 a -> FnW Binary_F42 (Decode a)
decode_F42 f = return f

encode_F42 :: FnW Binary_F42 a -> Fn Logical_F42 (Encode a)
encode_F42 f = return f

parse_F42 :: Fn Logical_F42 a -> Parser a
parse_F42 f = ws >> return f

show_F42 :: Fn Logical_F42 (String, String)
show_F42 = simple $ ""


--- F43: '  <Vd>.2D, <Vn>.2D'
--- SHA512SU0_VV2_cryptosha512_2  sha512su0_advsimd.xml

type Logical_F43 = '[]
type Binary_F43  = '[]

decode_F43 :: Fn Logical_F43 a -> FnW Binary_F43 (Decode a)
decode_F43 f = return f

encode_F43 :: FnW Binary_F43 a -> Fn Logical_F43 (Encode a)
encode_F43 f = return f

parse_F43 :: Fn Logical_F43 a -> Parser a
parse_F43 f = ws >> return f

show_F43 :: Fn Logical_F43 (String, String)
show_F43 = simple $ ""


--- F44: '  <Vd>.4S, <Vn>.4S'
--- SHA1SU1_VV_cryptosha2         sha1su1_advsimd.xml
--- SHA256SU0_VV_cryptosha2       sha256su0_advsimd.xml
--- SM4E_VV4_cryptosha512_2       sm4e_advsimd.xml

type Logical_F44 = '[]
type Binary_F44  = '[]

decode_F44 :: Fn Logical_F44 a -> FnW Binary_F44 (Decode a)
decode_F44 f = return f

encode_F44 :: FnW Binary_F44 a -> Fn Logical_F44 (Encode a)
encode_F44 f = return f

parse_F44 :: Fn Logical_F44 a -> Parser a
parse_F44 f = ws >> return f

show_F44 :: Fn Logical_F44 (String, String)
show_F44 = simple $ ""


--- F45: '  <Vd>.<T>, #<imm>'
--- FMOV_asimdimm_H_h             fmov_advsimd.xml
--- FMOV_asimdimm_S_s             fmov_advsimd.xml

type Logical_F45 = '[]
type Binary_F45  = '[]

decode_F45 :: Fn Logical_F45 a -> FnW Binary_F45 (Decode a)
decode_F45 f = return f

encode_F45 :: FnW Binary_F45 a -> Fn Logical_F45 (Encode a)
encode_F45 f = return f

parse_F45 :: Fn Logical_F45 a -> Parser a
parse_F45 f = ws >> return f

show_F45 :: Fn Logical_F45 (String, String)
show_F45 = simple $ ""


--- F46: '  <Vd>.<T>, <R><n>'
--- DUP_asimdins_DR_r             dup_advsimd_gen.xml

type Logical_F46 = '[]
type Binary_F46  = '[]

decode_F46 :: Fn Logical_F46 a -> FnW Binary_F46 (Decode a)
decode_F46 f = return f

encode_F46 :: FnW Binary_F46 a -> Fn Logical_F46 (Encode a)
encode_F46 f = return f

parse_F46 :: Fn Logical_F46 a -> Parser a
parse_F46 f = ws >> return f

show_F46 :: Fn Logical_F46 (String, String)
show_F46 = simple $ ""


--- F47: '  <V><d>, <V><n>, #0'
--- CMEQ_asisdmisc_Z              cmeq_advsimd_zero.xml
--- CMGE_asisdmisc_Z              cmge_advsimd_zero.xml
--- CMGT_asisdmisc_Z              cmgt_advsimd_zero.xml
--- CMLE_asisdmisc_Z              cmle_advsimd.xml
--- CMLT_asisdmisc_Z              cmlt_advsimd.xml

type Logical_F47 = '[]
type Binary_F47  = '[]

decode_F47 :: Fn Logical_F47 a -> FnW Binary_F47 (Decode a)
decode_F47 f = return f

encode_F47 :: FnW Binary_F47 a -> Fn Logical_F47 (Encode a)
encode_F47 f = return f

parse_F47 :: Fn Logical_F47 a -> Parser a
parse_F47 f = ws >> return f

show_F47 :: Fn Logical_F47 (String, String)
show_F47 = simple $ ""


--- F48: '  <Vd>.16B, <Vn>.16B'
--- AESD_B_cryptoaes              aesd_advsimd.xml
--- AESE_B_cryptoaes              aese_advsimd.xml
--- AESIMC_B_cryptoaes            aesimc_advsimd.xml
--- AESMC_B_cryptoaes             aesmc_advsimd.xml

type Logical_F48 = '[]
type Binary_F48  = '[]

decode_F48 :: Fn Logical_F48 a -> FnW Binary_F48 (Decode a)
decode_F48 f = return f

encode_F48 :: FnW Binary_F48 a -> Fn Logical_F48 (Encode a)
encode_F48 f = return f

parse_F48 :: Fn Logical_F48 a -> Parser a
parse_F48 f = ws >> return f

show_F48 :: Fn Logical_F48 (String, String)
show_F48 = simple $ ""


--- F49: '  <Vd>.<T>, <Vn>.<T>'
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

type Logical_F49 = '[]
type Binary_F49  = '[]

decode_F49 :: Fn Logical_F49 a -> FnW Binary_F49 (Decode a)
decode_F49 f = return f

encode_F49 :: FnW Binary_F49 a -> Fn Logical_F49 (Encode a)
encode_F49 f = return f

parse_F49 :: Fn Logical_F49 a -> Parser a
parse_F49 f = ws >> return f

show_F49 :: Fn Logical_F49 (String, String)
show_F49 = simple $ ""


--- F50: '  <Qd>, <Qn>, <Vm>.2D'
--- SHA512H_QQV_cryptosha512_3    sha512h_advsimd.xml
--- SHA512H2_QQV_cryptosha512_3   sha512h2_advsimd.xml

type Logical_F50 = '[]
type Binary_F50  = '[]

decode_F50 :: Fn Logical_F50 a -> FnW Binary_F50 (Decode a)
decode_F50 f = return f

encode_F50 :: FnW Binary_F50 a -> Fn Logical_F50 (Encode a)
encode_F50 f = return f

parse_F50 :: Fn Logical_F50 a -> Parser a
parse_F50 f = ws >> return f

show_F50 :: Fn Logical_F50 (String, String)
show_F50 = simple $ ""


--- F51: '  <Qd>, <Qn>, <Vm>.4S'
--- SHA256H_QQV_cryptosha3        sha256h_advsimd.xml
--- SHA256H2_QQV_cryptosha3       sha256h2_advsimd.xml

type Logical_F51 = '[]
type Binary_F51  = '[]

decode_F51 :: Fn Logical_F51 a -> FnW Binary_F51 (Decode a)
decode_F51 f = return f

encode_F51 :: FnW Binary_F51 a -> Fn Logical_F51 (Encode a)
encode_F51 f = return f

parse_F51 :: Fn Logical_F51 a -> Parser a
parse_F51 f = ws >> return f

show_F51 :: Fn Logical_F51 (String, String)
show_F51 = simple $ ""


--- F52: '  <Qd>, <Sn>, <Vm>.4S'
--- SHA1C_QSV_cryptosha3          sha1c_advsimd.xml
--- SHA1M_QSV_cryptosha3          sha1m_advsimd.xml
--- SHA1P_QSV_cryptosha3          sha1p_advsimd.xml

type Logical_F52 = '[]
type Binary_F52  = '[]

decode_F52 :: Fn Logical_F52 a -> FnW Binary_F52 (Decode a)
decode_F52 f = return f

encode_F52 :: FnW Binary_F52 a -> Fn Logical_F52 (Encode a)
encode_F52 f = return f

parse_F52 :: Fn Logical_F52 a -> Parser a
parse_F52 f = ws >> return f

show_F52 :: Fn Logical_F52 (String, String)
show_F52 = simple $ ""


--- F53: '  <Dd>, <Wn>, #<fbits>'
--- SCVTF_D32_float2fix           scvtf_float_fix.xml
--- UCVTF_D32_float2fix           ucvtf_float_fix.xml

type Logical_F53 = '[]
type Binary_F53  = '[]

decode_F53 :: Fn Logical_F53 a -> FnW Binary_F53 (Decode a)
decode_F53 f = return f

encode_F53 :: FnW Binary_F53 a -> Fn Logical_F53 (Encode a)
encode_F53 f = return f

parse_F53 :: Fn Logical_F53 a -> Parser a
parse_F53 f = ws >> return f

show_F53 :: Fn Logical_F53 (String, String)
show_F53 = simple $ ""


--- F54: '  <Dd>, <Xn>, #<fbits>'
--- SCVTF_D64_float2fix           scvtf_float_fix.xml
--- UCVTF_D64_float2fix           ucvtf_float_fix.xml

type Logical_F54 = '[]
type Binary_F54  = '[]

decode_F54 :: Fn Logical_F54 a -> FnW Binary_F54 (Decode a)
decode_F54 f = return f

encode_F54 :: FnW Binary_F54 a -> Fn Logical_F54 (Encode a)
encode_F54 f = return f

parse_F54 :: Fn Logical_F54 a -> Parser a
parse_F54 f = ws >> return f

show_F54 :: Fn Logical_F54 (String, String)
show_F54 = simple $ ""


--- F55: '  <Hd>, <Wn>, #<fbits>'
--- SCVTF_H32_float2fix           scvtf_float_fix.xml
--- UCVTF_H32_float2fix           ucvtf_float_fix.xml

type Logical_F55 = '[]
type Binary_F55  = '[]

decode_F55 :: Fn Logical_F55 a -> FnW Binary_F55 (Decode a)
decode_F55 f = return f

encode_F55 :: FnW Binary_F55 a -> Fn Logical_F55 (Encode a)
encode_F55 f = return f

parse_F55 :: Fn Logical_F55 a -> Parser a
parse_F55 f = ws >> return f

show_F55 :: Fn Logical_F55 (String, String)
show_F55 = simple $ ""


--- F56: '  <Hd>, <Xn>, #<fbits>'
--- SCVTF_H64_float2fix           scvtf_float_fix.xml
--- UCVTF_H64_float2fix           ucvtf_float_fix.xml

type Logical_F56 = '[]
type Binary_F56  = '[]

decode_F56 :: Fn Logical_F56 a -> FnW Binary_F56 (Decode a)
decode_F56 f = return f

encode_F56 :: FnW Binary_F56 a -> Fn Logical_F56 (Encode a)
encode_F56 f = return f

parse_F56 :: Fn Logical_F56 a -> Parser a
parse_F56 f = ws >> return f

show_F56 :: Fn Logical_F56 (String, String)
show_F56 = simple $ ""


--- F57: '  <Sd>, <Wn>, #<fbits>'
--- SCVTF_S32_float2fix           scvtf_float_fix.xml
--- UCVTF_S32_float2fix           ucvtf_float_fix.xml

type Logical_F57 = '[]
type Binary_F57  = '[]

decode_F57 :: Fn Logical_F57 a -> FnW Binary_F57 (Decode a)
decode_F57 f = return f

encode_F57 :: FnW Binary_F57 a -> Fn Logical_F57 (Encode a)
encode_F57 f = return f

parse_F57 :: Fn Logical_F57 a -> Parser a
parse_F57 f = ws >> return f

show_F57 :: Fn Logical_F57 (String, String)
show_F57 = simple $ ""


--- F58: '  <Sd>, <Xn>, #<fbits>'
--- SCVTF_S64_float2fix           scvtf_float_fix.xml
--- UCVTF_S64_float2fix           ucvtf_float_fix.xml

type Logical_F58 = '[]
type Binary_F58  = '[]

decode_F58 :: Fn Logical_F58 a -> FnW Binary_F58 (Decode a)
decode_F58 f = return f

encode_F58 :: FnW Binary_F58 a -> Fn Logical_F58 (Encode a)
encode_F58 f = return f

parse_F58 :: Fn Logical_F58 a -> Parser a
parse_F58 f = ws >> return f

show_F58 :: Fn Logical_F58 (String, String)
show_F58 = simple $ ""


--- F59: '  <V><d>, <V><n>, #0.0'
--- FCMEQ_asisdmisc_FZ            fcmeq_advsimd_zero.xml
--- FCMGE_asisdmisc_FZ            fcmge_advsimd_zero.xml
--- FCMGT_asisdmisc_FZ            fcmgt_advsimd_zero.xml
--- FCMLE_asisdmisc_FZ            fcmle_advsimd.xml
--- FCMLT_asisdmisc_FZ            fcmlt_advsimd.xml

type Logical_F59 = '[]
type Binary_F59  = '[]

decode_F59 :: Fn Logical_F59 a -> FnW Binary_F59 (Decode a)
decode_F59 f = return f

encode_F59 :: FnW Binary_F59 a -> Fn Logical_F59 (Encode a)
encode_F59 f = return f

parse_F59 :: Fn Logical_F59 a -> Parser a
parse_F59 f = ws >> return f

show_F59 :: Fn Logical_F59 (String, String)
show_F59 = simple $ ""


--- F60: '  <Vd>.<Ta>, <Vn>.<Tb>'
--- SADALP_asimdmisc_P            sadalp_advsimd.xml
--- SADDLP_asimdmisc_P            saddlp_advsimd.xml
--- UADALP_asimdmisc_P            uadalp_advsimd.xml
--- UADDLP_asimdmisc_P            uaddlp_advsimd.xml

type Logical_F60 = '[]
type Binary_F60  = '[]

decode_F60 :: Fn Logical_F60 a -> FnW Binary_F60 (Decode a)
decode_F60 f = return f

encode_F60 :: FnW Binary_F60 a -> Fn Logical_F60 (Encode a)
encode_F60 f = return f

parse_F60 :: Fn Logical_F60 a -> Parser a
parse_F60 f = ws >> return f

show_F60 :: Fn Logical_F60 (String, String)
show_F60 = simple $ ""


--- F61: '  <Wd>, <Dn>, #<fbits>'
--- FCVTZS_32D_float2fix          fcvtzs_float_fix.xml
--- FCVTZU_32D_float2fix          fcvtzu_float_fix.xml

type Logical_F61 = '[]
type Binary_F61  = '[]

decode_F61 :: Fn Logical_F61 a -> FnW Binary_F61 (Decode a)
decode_F61 f = return f

encode_F61 :: FnW Binary_F61 a -> Fn Logical_F61 (Encode a)
encode_F61 f = return f

parse_F61 :: Fn Logical_F61 a -> Parser a
parse_F61 f = ws >> return f

show_F61 :: Fn Logical_F61 (String, String)
show_F61 = simple $ ""


--- F62: '  <Wd>, <Hn>, #<fbits>'
--- FCVTZS_32H_float2fix          fcvtzs_float_fix.xml
--- FCVTZU_32H_float2fix          fcvtzu_float_fix.xml

type Logical_F62 = '[]
type Binary_F62  = '[]

decode_F62 :: Fn Logical_F62 a -> FnW Binary_F62 (Decode a)
decode_F62 f = return f

encode_F62 :: FnW Binary_F62 a -> Fn Logical_F62 (Encode a)
encode_F62 f = return f

parse_F62 :: Fn Logical_F62 a -> Parser a
parse_F62 f = ws >> return f

show_F62 :: Fn Logical_F62 (String, String)
show_F62 = simple $ ""


--- F63: '  <Wd>, <Sn>, #<fbits>'
--- FCVTZS_32S_float2fix          fcvtzs_float_fix.xml
--- FCVTZU_32S_float2fix          fcvtzu_float_fix.xml

type Logical_F63 = '[]
type Binary_F63  = '[]

decode_F63 :: Fn Logical_F63 a -> FnW Binary_F63 (Decode a)
decode_F63 f = return f

encode_F63 :: FnW Binary_F63 a -> Fn Logical_F63 (Encode a)
encode_F63 f = return f

parse_F63 :: Fn Logical_F63 a -> Parser a
parse_F63 f = ws >> return f

show_F63 :: Fn Logical_F63 (String, String)
show_F63 = simple $ ""


--- F64: '  <Xd>, <Dn>, #<fbits>'
--- FCVTZS_64D_float2fix          fcvtzs_float_fix.xml
--- FCVTZU_64D_float2fix          fcvtzu_float_fix.xml

type Logical_F64 = '[]
type Binary_F64  = '[]

decode_F64 :: Fn Logical_F64 a -> FnW Binary_F64 (Decode a)
decode_F64 f = return f

encode_F64 :: FnW Binary_F64 a -> Fn Logical_F64 (Encode a)
encode_F64 f = return f

parse_F64 :: Fn Logical_F64 a -> Parser a
parse_F64 f = ws >> return f

show_F64 :: Fn Logical_F64 (String, String)
show_F64 = simple $ ""


--- F65: '  <Xd>, <Hn>, #<fbits>'
--- FCVTZS_64H_float2fix          fcvtzs_float_fix.xml
--- FCVTZU_64H_float2fix          fcvtzu_float_fix.xml

type Logical_F65 = '[]
type Binary_F65  = '[]

decode_F65 :: Fn Logical_F65 a -> FnW Binary_F65 (Decode a)
decode_F65 f = return f

encode_F65 :: FnW Binary_F65 a -> Fn Logical_F65 (Encode a)
encode_F65 f = return f

parse_F65 :: Fn Logical_F65 a -> Parser a
parse_F65 f = ws >> return f

show_F65 :: Fn Logical_F65 (String, String)
show_F65 = simple $ ""


--- F66: '  <Xd>, <Sn>, #<fbits>'
--- FCVTZS_64S_float2fix          fcvtzs_float_fix.xml
--- FCVTZU_64S_float2fix          fcvtzu_float_fix.xml

type Logical_F66 = '[]
type Binary_F66  = '[]

decode_F66 :: Fn Logical_F66 a -> FnW Binary_F66 (Decode a)
decode_F66 f = return f

encode_F66 :: FnW Binary_F66 a -> Fn Logical_F66 (Encode a)
encode_F66 f = return f

parse_F66 :: Fn Logical_F66 a -> Parser a
parse_F66 f = ws >> return f

show_F66 :: Fn Logical_F66 (String, String)
show_F66 = simple $ ""


--- F67: '  <Dd>, <Dn>, <Dm>, <Da>'
--- FMADD_D_floatdp3              fmadd_float.xml
--- FMSUB_D_floatdp3              fmsub_float.xml
--- FNMADD_D_floatdp3             fnmadd_float.xml
--- FNMSUB_D_floatdp3             fnmsub_float.xml

type Logical_F67 = '[]
type Binary_F67  = '[]

decode_F67 :: Fn Logical_F67 a -> FnW Binary_F67 (Decode a)
decode_F67 f = return f

encode_F67 :: FnW Binary_F67 a -> Fn Logical_F67 (Encode a)
encode_F67 f = return f

parse_F67 :: Fn Logical_F67 a -> Parser a
parse_F67 f = ws >> return f

show_F67 :: Fn Logical_F67 (String, String)
show_F67 = simple $ ""


--- F68: '  <Hd>, <Hn>, <Hm>, <Ha>'
--- FMADD_H_floatdp3              fmadd_float.xml
--- FMSUB_H_floatdp3              fmsub_float.xml
--- FNMADD_H_floatdp3             fnmadd_float.xml
--- FNMSUB_H_floatdp3             fnmsub_float.xml

type Logical_F68 = '[]
type Binary_F68  = '[]

decode_F68 :: Fn Logical_F68 a -> FnW Binary_F68 (Decode a)
decode_F68 f = return f

encode_F68 :: FnW Binary_F68 a -> Fn Logical_F68 (Encode a)
encode_F68 f = return f

parse_F68 :: Fn Logical_F68 a -> Parser a
parse_F68 f = ws >> return f

show_F68 :: Fn Logical_F68 (String, String)
show_F68 = simple $ ""


--- F69: '  <Sd>, <Sn>, <Sm>, <Sa>'
--- FMADD_S_floatdp3              fmadd_float.xml
--- FMSUB_S_floatdp3              fmsub_float.xml
--- FNMADD_S_floatdp3             fnmadd_float.xml
--- FNMSUB_S_floatdp3             fnmsub_float.xml

type Logical_F69 = '[]
type Binary_F69  = '[]

decode_F69 :: Fn Logical_F69 a -> FnW Binary_F69 (Decode a)
decode_F69 f = return f

encode_F69 :: FnW Binary_F69 a -> Fn Logical_F69 (Encode a)
encode_F69 f = return f

parse_F69 :: Fn Logical_F69 a -> Parser a
parse_F69 f = ws >> return f

show_F69 :: Fn Logical_F69 (String, String)
show_F69 = simple $ ""


--- F70: '  <V><d>, <V><n>, <V><m>'
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

type Logical_F70 = '[]
type Binary_F70  = '[]

decode_F70 :: Fn Logical_F70 a -> FnW Binary_F70 (Decode a)
decode_F70 f = return f

encode_F70 :: FnW Binary_F70 a -> Fn Logical_F70 (Encode a)
encode_F70 f = return f

parse_F70 :: Fn Logical_F70 a -> Parser a
parse_F70 f = ws >> return f

show_F70 :: Fn Logical_F70 (String, String)
show_F70 = simple $ ""


--- F71: '  <Vd>.<T>, <Vn>.<T>, #0'
--- CMEQ_asimdmisc_Z              cmeq_advsimd_zero.xml
--- CMGE_asimdmisc_Z              cmge_advsimd_zero.xml
--- CMGT_asimdmisc_Z              cmgt_advsimd_zero.xml
--- CMLE_asimdmisc_Z              cmle_advsimd.xml
--- CMLT_asimdmisc_Z              cmlt_advsimd.xml

type Logical_F71 = '[]
type Binary_F71  = '[]

decode_F71 :: Fn Logical_F71 a -> FnW Binary_F71 (Decode a)
decode_F71 f = return f

encode_F71 :: FnW Binary_F71 a -> Fn Logical_F71 (Encode a)
encode_F71 f = return f

parse_F71 :: Fn Logical_F71 a -> Parser a
parse_F71 f = ws >> return f

show_F71 :: Fn Logical_F71 (String, String)
show_F71 = simple $ ""


--- F72: '  { <Vt>.<T> }, [<Xn|SP>]'
--- LD1_asisdlse_R1_1v            ld1_advsimd_mult.xml
--- LD1R_asisdlso_R1              ld1r_advsimd.xml
--- ST1_asisdlse_R1_1v            st1_advsimd_mult.xml

type Logical_F72 = '[]
type Binary_F72  = '[]

decode_F72 :: Fn Logical_F72 a -> FnW Binary_F72 (Decode a)
decode_F72 f = return f

encode_F72 :: FnW Binary_F72 a -> Fn Logical_F72 (Encode a)
encode_F72 f = return f

parse_F72 :: Fn Logical_F72 a -> Parser a
parse_F72 f = ws >> return f

show_F72 :: Fn Logical_F72 (String, String)
show_F72 = simple $ ""


--- F73: '{2}  <Vd>.<Ta>, <Vn>.<Tb>'
--- FCVTL_asimdmisc_L             fcvtl_advsimd.xml

type Logical_F73 = '[]
type Binary_F73  = '[]

decode_F73 :: Fn Logical_F73 a -> FnW Binary_F73 (Decode a)
decode_F73 f = return f

encode_F73 :: FnW Binary_F73 a -> Fn Logical_F73 (Encode a)
encode_F73 f = return f

parse_F73 :: Fn Logical_F73 a -> Parser a
parse_F73 f = ws >> return f

show_F73 :: Fn Logical_F73 (String, String)
show_F73 = simple $ ""


--- F74: '{2}  <Vd>.<Tb>, <Vn>.<Ta>'
--- FCVTN_asimdmisc_N             fcvtn_advsimd.xml
--- FCVTXN_asimdmisc_N            fcvtxn_advsimd.xml
--- SQXTN_asimdmisc_N             sqxtn_advsimd.xml
--- SQXTUN_asimdmisc_N            sqxtun_advsimd.xml
--- UQXTN_asimdmisc_N             uqxtn_advsimd.xml
--- XTN_asimdmisc_N               xtn_advsimd.xml

type Logical_F74 = '[]
type Binary_F74  = '[]

decode_F74 :: Fn Logical_F74 a -> FnW Binary_F74 (Decode a)
decode_F74 f = return f

encode_F74 :: FnW Binary_F74 a -> Fn Logical_F74 (Encode a)
encode_F74 f = return f

parse_F74 :: Fn Logical_F74 a -> Parser a
parse_F74 f = ws >> return f

show_F74 :: Fn Logical_F74 (String, String)
show_F74 = simple $ ""


--- F75: '  <Bt>, [<Xn|SP>], #<simm>'
--- LDR_B_ldst_immpost            ldr_imm_fpsimd.xml
--- STR_B_ldst_immpost            str_imm_fpsimd.xml

type Logical_F75 = '[]
type Binary_F75  = '[]

decode_F75 :: Fn Logical_F75 a -> FnW Binary_F75 (Decode a)
decode_F75 f = return f

encode_F75 :: FnW Binary_F75 a -> Fn Logical_F75 (Encode a)
encode_F75 f = return f

parse_F75 :: Fn Logical_F75 a -> Parser a
parse_F75 f = ws >> return f

show_F75 :: Fn Logical_F75 (String, String)
show_F75 = simple $ ""


--- F76: '  <Dd>, <Dn>, <Dm>, <cond>'
--- FCSEL_D_floatsel              fcsel_float.xml

type Logical_F76 = '[]
type Binary_F76  = '[]

decode_F76 :: Fn Logical_F76 a -> FnW Binary_F76 (Decode a)
decode_F76 f = return f

encode_F76 :: FnW Binary_F76 a -> Fn Logical_F76 (Encode a)
encode_F76 f = return f

parse_F76 :: Fn Logical_F76 a -> Parser a
parse_F76 f = ws >> return f

show_F76 :: Fn Logical_F76 (String, String)
show_F76 = simple $ ""


--- F77: '  <Dt>, [<Xn|SP>], #<simm>'
--- LDR_D_ldst_immpost            ldr_imm_fpsimd.xml
--- STR_D_ldst_immpost            str_imm_fpsimd.xml

type Logical_F77 = '[]
type Binary_F77  = '[]

decode_F77 :: Fn Logical_F77 a -> FnW Binary_F77 (Decode a)
decode_F77 f = return f

encode_F77 :: FnW Binary_F77 a -> Fn Logical_F77 (Encode a)
encode_F77 f = return f

parse_F77 :: Fn Logical_F77 a -> Parser a
parse_F77 f = ws >> return f

show_F77 :: Fn Logical_F77 (String, String)
show_F77 = simple $ ""


--- F78: '  <Hd>, <Hn>, <Hm>, <cond>'
--- FCSEL_H_floatsel              fcsel_float.xml

type Logical_F78 = '[]
type Binary_F78  = '[]

decode_F78 :: Fn Logical_F78 a -> FnW Binary_F78 (Decode a)
decode_F78 f = return f

encode_F78 :: FnW Binary_F78 a -> Fn Logical_F78 (Encode a)
encode_F78 f = return f

parse_F78 :: Fn Logical_F78 a -> Parser a
parse_F78 f = ws >> return f

show_F78 :: Fn Logical_F78 (String, String)
show_F78 = simple $ ""


--- F79: '  <Ht>, [<Xn|SP>], #<simm>'
--- LDR_H_ldst_immpost            ldr_imm_fpsimd.xml
--- STR_H_ldst_immpost            str_imm_fpsimd.xml

type Logical_F79 = '[]
type Binary_F79  = '[]

decode_F79 :: Fn Logical_F79 a -> FnW Binary_F79 (Decode a)
decode_F79 f = return f

encode_F79 :: FnW Binary_F79 a -> Fn Logical_F79 (Encode a)
encode_F79 f = return f

parse_F79 :: Fn Logical_F79 a -> Parser a
parse_F79 f = ws >> return f

show_F79 :: Fn Logical_F79 (String, String)
show_F79 = simple $ ""


--- F80: '  <Qt>, [<Xn|SP>], #<simm>'
--- LDR_Q_ldst_immpost            ldr_imm_fpsimd.xml
--- STR_Q_ldst_immpost            str_imm_fpsimd.xml

type Logical_F80 = '[]
type Binary_F80  = '[]

decode_F80 :: Fn Logical_F80 a -> FnW Binary_F80 (Decode a)
decode_F80 f = return f

encode_F80 :: FnW Binary_F80 a -> Fn Logical_F80 (Encode a)
encode_F80 f = return f

parse_F80 :: Fn Logical_F80 a -> Parser a
parse_F80 f = ws >> return f

show_F80 :: Fn Logical_F80 (String, String)
show_F80 = simple $ ""


--- F81: '  <Sd>, <Sn>, <Sm>, <cond>'
--- FCSEL_S_floatsel              fcsel_float.xml

type Logical_F81 = '[]
type Binary_F81  = '[]

decode_F81 :: Fn Logical_F81 a -> FnW Binary_F81 (Decode a)
decode_F81 f = return f

encode_F81 :: FnW Binary_F81 a -> Fn Logical_F81 (Encode a)
encode_F81 f = return f

parse_F81 :: Fn Logical_F81 a -> Parser a
parse_F81 f = ws >> return f

show_F81 :: Fn Logical_F81 (String, String)
show_F81 = simple $ ""


--- F82: '  <St>, [<Xn|SP>], #<simm>'
--- LDR_S_ldst_immpost            ldr_imm_fpsimd.xml
--- STR_S_ldst_immpost            str_imm_fpsimd.xml

type Logical_F82 = '[]
type Binary_F82  = '[]

decode_F82 :: Fn Logical_F82 a -> FnW Binary_F82 (Decode a)
decode_F82 f = return f

encode_F82 :: FnW Binary_F82 a -> Fn Logical_F82 (Encode a)
encode_F82 f = return f

parse_F82 :: Fn Logical_F82 a -> Parser a
parse_F82 f = ws >> return f

show_F82 :: Fn Logical_F82 (String, String)
show_F82 = simple $ ""


--- F83: '  <V><d>, <V><n>, #<fbits>'
--- FCVTZS_asisdshf_C             fcvtzs_advsimd_fix.xml
--- FCVTZU_asisdshf_C             fcvtzu_advsimd_fix.xml
--- SCVTF_asisdshf_C              scvtf_advsimd_fix.xml
--- UCVTF_asisdshf_C              ucvtf_advsimd_fix.xml

type Logical_F83 = '[]
type Binary_F83  = '[]

decode_F83 :: Fn Logical_F83 a -> FnW Binary_F83 (Decode a)
decode_F83 f = return f

encode_F83 :: FnW Binary_F83 a -> Fn Logical_F83 (Encode a)
encode_F83 f = return f

parse_F83 :: Fn Logical_F83 a -> Parser a
parse_F83 f = ws >> return f

show_F83 :: Fn Logical_F83 (String, String)
show_F83 = simple $ ""


--- F84: '  <V><d>, <V><n>, #<shift>'
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

type Logical_F84 = '[]
type Binary_F84  = '[]

decode_F84 :: Fn Logical_F84 a -> FnW Binary_F84 (Decode a)
decode_F84 f = return f

encode_F84 :: FnW Binary_F84 a -> Fn Logical_F84 (Encode a)
encode_F84 f = return f

parse_F84 :: Fn Logical_F84 a -> Parser a
parse_F84 f = ws >> return f

show_F84 :: Fn Logical_F84 (String, String)
show_F84 = simple $ ""


--- F85: '  <Vd>.<T>, <Vn>.<T>, #0.0'
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

type Logical_F85 = '[]
type Binary_F85  = '[]

decode_F85 :: Fn Logical_F85 a -> FnW Binary_F85 (Decode a)
decode_F85 f = return f

encode_F85 :: FnW Binary_F85 a -> Fn Logical_F85 (Encode a)
encode_F85 f = return f

parse_F85 :: Fn Logical_F85 a -> Parser a
parse_F85 f = ws >> return f

show_F85 :: Fn Logical_F85 (String, String)
show_F85 = simple $ ""


--- F86: '  <Wd>, <Vn>.<Ts>[<index>]'
--- SMOV_asimdins_W_w             smov_advsimd.xml
--- UMOV_asimdins_W_w             umov_advsimd.xml

type Logical_F86 = '[]
type Binary_F86  = '[]

decode_F86 :: Fn Logical_F86 a -> FnW Binary_F86 (Decode a)
decode_F86 f = return f

encode_F86 :: FnW Binary_F86 a -> Fn Logical_F86 (Encode a)
encode_F86 f = return f

parse_F86 :: Fn Logical_F86 a -> Parser a
parse_F86 f = ws >> return f

show_F86 :: Fn Logical_F86 (String, String)
show_F86 = simple $ ""


--- F87: '  <Xd>, <Vn>.<Ts>[<index>]'
--- SMOV_asimdins_X_x             smov_advsimd.xml
--- UMOV_asimdins_X_x             umov_advsimd.xml

type Logical_F87 = '[]
type Binary_F87  = '[]

decode_F87 :: Fn Logical_F87 a -> FnW Binary_F87 (Decode a)
decode_F87 f = return f

encode_F87 :: FnW Binary_F87 a -> Fn Logical_F87 (Encode a)
encode_F87 f = return f

parse_F87 :: Fn Logical_F87 a -> Parser a
parse_F87 f = ws >> return f

show_F87 :: Fn Logical_F87 (String, String)
show_F87 = simple $ ""


--- F88: '  <Bt>, [<Xn|SP>, #<simm>]!'
--- LDR_B_ldst_immpre             ldr_imm_fpsimd.xml
--- STR_B_ldst_immpre             str_imm_fpsimd.xml

type Logical_F88 = '[]
type Binary_F88  = '[]

decode_F88 :: Fn Logical_F88 a -> FnW Binary_F88 (Decode a)
decode_F88 f = return f

encode_F88 :: FnW Binary_F88 a -> Fn Logical_F88 (Encode a)
encode_F88 f = return f

parse_F88 :: Fn Logical_F88 a -> Parser a
parse_F88 f = ws >> return f

show_F88 :: Fn Logical_F88 (String, String)
show_F88 = simple $ ""


--- F89: '  <Dt>, [<Xn|SP>, #<simm>]!'
--- LDR_D_ldst_immpre             ldr_imm_fpsimd.xml
--- STR_D_ldst_immpre             str_imm_fpsimd.xml

type Logical_F89 = '[]
type Binary_F89  = '[]

decode_F89 :: Fn Logical_F89 a -> FnW Binary_F89 (Decode a)
decode_F89 f = return f

encode_F89 :: FnW Binary_F89 a -> Fn Logical_F89 (Encode a)
encode_F89 f = return f

parse_F89 :: Fn Logical_F89 a -> Parser a
parse_F89 f = ws >> return f

show_F89 :: Fn Logical_F89 (String, String)
show_F89 = simple $ ""


--- F90: '  <Ht>, [<Xn|SP>, #<simm>]!'
--- LDR_H_ldst_immpre             ldr_imm_fpsimd.xml
--- STR_H_ldst_immpre             str_imm_fpsimd.xml

type Logical_F90 = '[]
type Binary_F90  = '[]

decode_F90 :: Fn Logical_F90 a -> FnW Binary_F90 (Decode a)
decode_F90 f = return f

encode_F90 :: FnW Binary_F90 a -> Fn Logical_F90 (Encode a)
encode_F90 f = return f

parse_F90 :: Fn Logical_F90 a -> Parser a
parse_F90 f = ws >> return f

show_F90 :: Fn Logical_F90 (String, String)
show_F90 = simple $ ""


--- F91: '  <Qt>, [<Xn|SP>, #<simm>]!'
--- LDR_Q_ldst_immpre             ldr_imm_fpsimd.xml
--- STR_Q_ldst_immpre             str_imm_fpsimd.xml

type Logical_F91 = '[]
type Binary_F91  = '[]

decode_F91 :: Fn Logical_F91 a -> FnW Binary_F91 (Decode a)
decode_F91 f = return f

encode_F91 :: FnW Binary_F91 a -> Fn Logical_F91 (Encode a)
encode_F91 f = return f

parse_F91 :: Fn Logical_F91 a -> Parser a
parse_F91 f = ws >> return f

show_F91 :: Fn Logical_F91 (String, String)
show_F91 = simple $ ""


--- F92: '  <St>, [<Xn|SP>, #<simm>]!'
--- LDR_S_ldst_immpre             ldr_imm_fpsimd.xml
--- STR_S_ldst_immpre             str_imm_fpsimd.xml

type Logical_F92 = '[]
type Binary_F92  = '[]

decode_F92 :: Fn Logical_F92 a -> FnW Binary_F92 (Decode a)
decode_F92 f = return f

encode_F92 :: FnW Binary_F92 a -> Fn Logical_F92 (Encode a)
encode_F92 f = return f

parse_F92 :: Fn Logical_F92 a -> Parser a
parse_F92 f = ws >> return f

show_F92 :: Fn Logical_F92 (String, String)
show_F92 = simple $ ""


--- F93: '  <V><d>, <Vn>.<T>[<index>]'
--- DUP_asisdone_only             dup_advsimd_elt.xml

type Logical_F93 = '[]
type Binary_F93  = '[]

decode_F93 :: Fn Logical_F93 a -> FnW Binary_F93 (Decode a)
decode_F93 f = return f

encode_F93 :: FnW Binary_F93 a -> Fn Logical_F93 (Encode a)
encode_F93 f = return f

parse_F93 :: Fn Logical_F93 a -> Parser a
parse_F93 f = ws >> return f

show_F93 :: Fn Logical_F93 (String, String)
show_F93 = simple $ ""


--- F94: '  <Va><d>, <Vb><n>, <Vb><m>'
--- SQDMLAL_asisddiff_only        sqdmlal_advsimd_vec.xml
--- SQDMLSL_asisddiff_only        sqdmlsl_advsimd_vec.xml
--- SQDMULL_asisddiff_only        sqdmull_advsimd_vec.xml

type Logical_F94 = '[]
type Binary_F94  = '[]

decode_F94 :: Fn Logical_F94 a -> FnW Binary_F94 (Decode a)
decode_F94 f = return f

encode_F94 :: FnW Binary_F94 a -> Fn Logical_F94 (Encode a)
encode_F94 f = return f

parse_F94 :: Fn Logical_F94 a -> Parser a
parse_F94 f = ws >> return f

show_F94 :: Fn Logical_F94 (String, String)
show_F94 = simple $ ""


--- F95: '  <Vd>.2D, <Vn>.2D, <Vm>.2D'
--- RAX1_VVV2_cryptosha512_3      rax1_advsimd.xml
--- SHA512SU1_VVV2_cryptosha512_3 sha512su1_advsimd.xml

type Logical_F95 = '[]
type Binary_F95  = '[]

decode_F95 :: Fn Logical_F95 a -> FnW Binary_F95 (Decode a)
decode_F95 f = return f

encode_F95 :: FnW Binary_F95 a -> Fn Logical_F95 (Encode a)
encode_F95 f = return f

parse_F95 :: Fn Logical_F95 a -> Parser a
parse_F95 f = ws >> return f

show_F95 :: Fn Logical_F95 (String, String)
show_F95 = simple $ ""


--- F96: '  <Vd>.4S, <Vn>.4S, <Vm>.4S'
--- SHA1SU0_VVV_cryptosha3        sha1su0_advsimd.xml
--- SHA256SU1_VVV_cryptosha3      sha256su1_advsimd.xml
--- SM3PARTW1_VVV4_cryptosha512_3 sm3partw1_advsimd.xml
--- SM3PARTW2_VVV4_cryptosha512_3 sm3partw2_advsimd.xml
--- SM4EKEY_VVV4_cryptosha512_3   sm4ekey_advsimd.xml

type Logical_F96 = '[]
type Binary_F96  = '[]

decode_F96 :: Fn Logical_F96 a -> FnW Binary_F96 (Decode a)
decode_F96 f = return f

encode_F96 :: FnW Binary_F96 a -> Fn Logical_F96 (Encode a)
encode_F96 f = return f

parse_F96 :: Fn Logical_F96 a -> Parser a
parse_F96 f = ws >> return f

show_F96 :: Fn Logical_F96 (String, String)
show_F96 = simple $ ""


--- F97: '  <Bt>, [<Xn|SP>{, #<pimm>}]'
--- LDR_B_ldst_pos                ldr_imm_fpsimd.xml
--- STR_B_ldst_pos                str_imm_fpsimd.xml

type Logical_F97 = '[]
type Binary_F97  = '[]

decode_F97 :: Fn Logical_F97 a -> FnW Binary_F97 (Decode a)
decode_F97 f = return f

encode_F97 :: FnW Binary_F97 a -> Fn Logical_F97 (Encode a)
encode_F97 f = return f

parse_F97 :: Fn Logical_F97 a -> Parser a
parse_F97 f = ws >> return f

show_F97 :: Fn Logical_F97 (String, String)
show_F97 = simple $ ""


--- F98: '  <Bt>, [<Xn|SP>{, #<simm>}]'
--- LDUR_B_ldst_unscaled          ldur_fpsimd.xml
--- STUR_B_ldst_unscaled          stur_fpsimd.xml

type Logical_F98 = '[]
type Binary_F98  = '[]

decode_F98 :: Fn Logical_F98 a -> FnW Binary_F98 (Decode a)
decode_F98 f = return f

encode_F98 :: FnW Binary_F98 a -> Fn Logical_F98 (Encode a)
encode_F98 f = return f

parse_F98 :: Fn Logical_F98 a -> Parser a
parse_F98 f = ws >> return f

show_F98 :: Fn Logical_F98 (String, String)
show_F98 = simple $ ""


--- F99: '  <Dt>, [<Xn|SP>{, #<pimm>}]'
--- LDR_D_ldst_pos                ldr_imm_fpsimd.xml
--- STR_D_ldst_pos                str_imm_fpsimd.xml

type Logical_F99 = '[]
type Binary_F99  = '[]

decode_F99 :: Fn Logical_F99 a -> FnW Binary_F99 (Decode a)
decode_F99 f = return f

encode_F99 :: FnW Binary_F99 a -> Fn Logical_F99 (Encode a)
encode_F99 f = return f

parse_F99 :: Fn Logical_F99 a -> Parser a
parse_F99 f = ws >> return f

show_F99 :: Fn Logical_F99 (String, String)
show_F99 = simple $ ""


--- F100: '  <Dt>, [<Xn|SP>{, #<simm>}]'
--- LDUR_D_ldst_unscaled          ldur_fpsimd.xml
--- STUR_D_ldst_unscaled          stur_fpsimd.xml

type Logical_F100 = '[]
type Binary_F100  = '[]

decode_F100 :: Fn Logical_F100 a -> FnW Binary_F100 (Decode a)
decode_F100 f = return f

encode_F100 :: FnW Binary_F100 a -> Fn Logical_F100 (Encode a)
encode_F100 f = return f

parse_F100 :: Fn Logical_F100 a -> Parser a
parse_F100 f = ws >> return f

show_F100 :: Fn Logical_F100 (String, String)
show_F100 = simple $ ""


--- F101: '  <Ht>, [<Xn|SP>{, #<pimm>}]'
--- LDR_H_ldst_pos                ldr_imm_fpsimd.xml
--- STR_H_ldst_pos                str_imm_fpsimd.xml

type Logical_F101 = '[]
type Binary_F101  = '[]

decode_F101 :: Fn Logical_F101 a -> FnW Binary_F101 (Decode a)
decode_F101 f = return f

encode_F101 :: FnW Binary_F101 a -> Fn Logical_F101 (Encode a)
encode_F101 f = return f

parse_F101 :: Fn Logical_F101 a -> Parser a
parse_F101 f = ws >> return f

show_F101 :: Fn Logical_F101 (String, String)
show_F101 = simple $ ""


--- F102: '  <Ht>, [<Xn|SP>{, #<simm>}]'
--- LDUR_H_ldst_unscaled          ldur_fpsimd.xml
--- STUR_H_ldst_unscaled          stur_fpsimd.xml

type Logical_F102 = '[]
type Binary_F102  = '[]

decode_F102 :: Fn Logical_F102 a -> FnW Binary_F102 (Decode a)
decode_F102 f = return f

encode_F102 :: FnW Binary_F102 a -> Fn Logical_F102 (Encode a)
encode_F102 f = return f

parse_F102 :: Fn Logical_F102 a -> Parser a
parse_F102 f = ws >> return f

show_F102 :: Fn Logical_F102 (String, String)
show_F102 = simple $ ""


--- F103: '  <Qt>, [<Xn|SP>{, #<pimm>}]'
--- LDR_Q_ldst_pos                ldr_imm_fpsimd.xml
--- STR_Q_ldst_pos                str_imm_fpsimd.xml

type Logical_F103 = '[]
type Binary_F103  = '[]

decode_F103 :: Fn Logical_F103 a -> FnW Binary_F103 (Decode a)
decode_F103 f = return f

encode_F103 :: FnW Binary_F103 a -> Fn Logical_F103 (Encode a)
encode_F103 f = return f

parse_F103 :: Fn Logical_F103 a -> Parser a
parse_F103 f = ws >> return f

show_F103 :: Fn Logical_F103 (String, String)
show_F103 = simple $ ""


--- F104: '  <Qt>, [<Xn|SP>{, #<simm>}]'
--- LDUR_Q_ldst_unscaled          ldur_fpsimd.xml
--- STUR_Q_ldst_unscaled          stur_fpsimd.xml

type Logical_F104 = '[]
type Binary_F104  = '[]

decode_F104 :: Fn Logical_F104 a -> FnW Binary_F104 (Decode a)
decode_F104 f = return f

encode_F104 :: FnW Binary_F104 a -> Fn Logical_F104 (Encode a)
encode_F104 f = return f

parse_F104 :: Fn Logical_F104 a -> Parser a
parse_F104 f = ws >> return f

show_F104 :: Fn Logical_F104 (String, String)
show_F104 = simple $ ""


--- F105: '  <St>, [<Xn|SP>{, #<pimm>}]'
--- LDR_S_ldst_pos                ldr_imm_fpsimd.xml
--- STR_S_ldst_pos                str_imm_fpsimd.xml

type Logical_F105 = '[]
type Binary_F105  = '[]

decode_F105 :: Fn Logical_F105 a -> FnW Binary_F105 (Decode a)
decode_F105 f = return f

encode_F105 :: FnW Binary_F105 a -> Fn Logical_F105 (Encode a)
encode_F105 f = return f

parse_F105 :: Fn Logical_F105 a -> Parser a
parse_F105 f = ws >> return f

show_F105 :: Fn Logical_F105 (String, String)
show_F105 = simple $ ""


--- F106: '  <St>, [<Xn|SP>{, #<simm>}]'
--- LDUR_S_ldst_unscaled          ldur_fpsimd.xml
--- STUR_S_ldst_unscaled          stur_fpsimd.xml

type Logical_F106 = '[]
type Binary_F106  = '[]

decode_F106 :: Fn Logical_F106 a -> FnW Binary_F106 (Decode a)
decode_F106 f = return f

encode_F106 :: FnW Binary_F106 a -> Fn Logical_F106 (Encode a)
encode_F106 f = return f

parse_F106 :: Fn Logical_F106 a -> Parser a
parse_F106 f = ws >> return f

show_F106 :: Fn Logical_F106 (String, String)
show_F106 = simple $ ""


--- F107: '  <Vb><d>, <Va><n>, #<shift>'
--- SQRSHRN_asisdshf_N            sqrshrn_advsimd.xml
--- SQRSHRUN_asisdshf_N           sqrshrun_advsimd.xml
--- SQSHRN_asisdshf_N             sqshrn_advsimd.xml
--- SQSHRUN_asisdshf_N            sqshrun_advsimd.xml
--- UQRSHRN_asisdshf_N            uqrshrn_advsimd.xml
--- UQSHRN_asisdshf_N             uqshrn_advsimd.xml

type Logical_F107 = '[]
type Binary_F107  = '[]

decode_F107 :: Fn Logical_F107 a -> FnW Binary_F107 (Decode a)
decode_F107 f = return f

encode_F107 :: FnW Binary_F107 a -> Fn Logical_F107 (Encode a)
encode_F107 f = return f

parse_F107 :: Fn Logical_F107 a -> Parser a
parse_F107 f = ws >> return f

show_F107 :: Fn Logical_F107 (String, String)
show_F107 = simple $ ""


--- F108: '  <Vd>.<Ts>[<index>], <R><n>'
--- INS_asimdins_IR_r             ins_advsimd_gen.xml

type Logical_F108 = '[]
type Binary_F108  = '[]

decode_F108 :: Fn Logical_F108 a -> FnW Binary_F108 (Decode a)
decode_F108 f = return f

encode_F108 :: FnW Binary_F108 a -> Fn Logical_F108 (Encode a)
encode_F108 f = return f

parse_F108 :: Fn Logical_F108 a -> Parser a
parse_F108 f = ws >> return f

show_F108 :: Fn Logical_F108 (String, String)
show_F108 = simple $ ""


--- F109: '  <Dn>, <Dm>, #<nzcv>, <cond>'
--- FCCMP_D_floatccmp             fccmp_float.xml
--- FCCMPE_D_floatccmp            fccmpe_float.xml

type Logical_F109 = '[]
type Binary_F109  = '[]

decode_F109 :: Fn Logical_F109 a -> FnW Binary_F109 (Decode a)
decode_F109 f = return f

encode_F109 :: FnW Binary_F109 a -> Fn Logical_F109 (Encode a)
encode_F109 f = return f

parse_F109 :: Fn Logical_F109 a -> Parser a
parse_F109 f = ws >> return f

show_F109 :: Fn Logical_F109 (String, String)
show_F109 = simple $ ""


--- F110: '  <Hd>, <Hn>, <Vm>.H[<index>]'
--- FMLA_asisdelem_RH_H           fmla_advsimd_elt.xml
--- FMLS_asisdelem_RH_H           fmls_advsimd_elt.xml
--- FMUL_asisdelem_RH_H           fmul_advsimd_elt.xml
--- FMULX_asisdelem_RH_H          fmulx_advsimd_elt.xml

type Logical_F110 = '[]
type Binary_F110  = '[]

decode_F110 :: Fn Logical_F110 a -> FnW Binary_F110 (Decode a)
decode_F110 f = return f

encode_F110 :: FnW Binary_F110 a -> Fn Logical_F110 (Encode a)
encode_F110 f = return f

parse_F110 :: Fn Logical_F110 a -> Parser a
parse_F110 f = ws >> return f

show_F110 :: Fn Logical_F110 (String, String)
show_F110 = simple $ ""


--- F111: '  <Hn>, <Hm>, #<nzcv>, <cond>'
--- FCCMP_H_floatccmp             fccmp_float.xml
--- FCCMPE_H_floatccmp            fccmpe_float.xml

type Logical_F111 = '[]
type Binary_F111  = '[]

decode_F111 :: Fn Logical_F111 a -> FnW Binary_F111 (Decode a)
decode_F111 f = return f

encode_F111 :: FnW Binary_F111 a -> Fn Logical_F111 (Encode a)
encode_F111 f = return f

parse_F111 :: Fn Logical_F111 a -> Parser a
parse_F111 f = ws >> return f

show_F111 :: Fn Logical_F111 (String, String)
show_F111 = simple $ ""


--- F112: '  <Sn>, <Sm>, #<nzcv>, <cond>'
--- FCCMP_S_floatccmp             fccmp_float.xml
--- FCCMPE_S_floatccmp            fccmpe_float.xml

type Logical_F112 = '[]
type Binary_F112  = '[]

decode_F112 :: Fn Logical_F112 a -> FnW Binary_F112 (Decode a)
decode_F112 f = return f

encode_F112 :: FnW Binary_F112 a -> Fn Logical_F112 (Encode a)
encode_F112 f = return f

parse_F112 :: Fn Logical_F112 a -> Parser a
parse_F112 f = ws >> return f

show_F112 :: Fn Logical_F112 (String, String)
show_F112 = simple $ ""


--- F113: '  <Vd>.<T>, #<imm8>{, LSL #0}'
--- MOVI_asimdimm_N_b             movi_advsimd.xml

type Logical_F113 = '[]
type Binary_F113  = '[]

decode_F113 :: Fn Logical_F113 a -> FnW Binary_F113 (Decode a)
decode_F113 f = return f

encode_F113 :: FnW Binary_F113 a -> Fn Logical_F113 (Encode a)
encode_F113 f = return f

parse_F113 :: Fn Logical_F113 a -> Parser a
parse_F113 f = ws >> return f

show_F113 :: Fn Logical_F113 (String, String)
show_F113 = simple $ ""


--- F114: '  <Vd>.<T>, <Vn>.<T>, #<fbits>'
--- FCVTZS_asimdshf_C             fcvtzs_advsimd_fix.xml
--- FCVTZU_asimdshf_C             fcvtzu_advsimd_fix.xml
--- SCVTF_asimdshf_C              scvtf_advsimd_fix.xml
--- UCVTF_asimdshf_C              ucvtf_advsimd_fix.xml

type Logical_F114 = '[]
type Binary_F114  = '[]

decode_F114 :: Fn Logical_F114 a -> FnW Binary_F114 (Decode a)
decode_F114 f = return f

encode_F114 :: FnW Binary_F114 a -> Fn Logical_F114 (Encode a)
encode_F114 f = return f

parse_F114 :: Fn Logical_F114 a -> Parser a
parse_F114 f = ws >> return f

show_F114 :: Fn Logical_F114 (String, String)
show_F114 = simple $ ""


--- F115: '  <Vd>.<T>, <Vn>.<T>, #<shift>'
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

type Logical_F115 = '[]
type Binary_F115  = '[]

decode_F115 :: Fn Logical_F115 a -> FnW Binary_F115 (Decode a)
decode_F115 f = return f

encode_F115 :: FnW Binary_F115 a -> Fn Logical_F115 (Encode a)
encode_F115 f = return f

parse_F115 :: Fn Logical_F115 a -> Parser a
parse_F115 f = ws >> return f

show_F115 :: Fn Logical_F115 (String, String)
show_F115 = simple $ ""


--- F116: '  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>'
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

type Logical_F116 = '[]
type Binary_F116  = '[]

decode_F116 :: Fn Logical_F116 a -> FnW Binary_F116 (Decode a)
decode_F116 f = return f

encode_F116 :: FnW Binary_F116 a -> Fn Logical_F116 (Encode a)
encode_F116 f = return f

parse_F116 :: Fn Logical_F116 a -> Parser a
parse_F116 f = ws >> return f

show_F116 :: Fn Logical_F116 (String, String)
show_F116 = simple $ ""


--- F117: '  <Vd>.<T>, <Vn>.<Ts>[<index>]'
--- DUP_asimdins_DV_v             dup_advsimd_elt.xml

type Logical_F117 = '[]
type Binary_F117  = '[]

decode_F117 :: Fn Logical_F117 a -> FnW Binary_F117 (Decode a)
decode_F117 f = return f

encode_F117 :: FnW Binary_F117 a -> Fn Logical_F117 (Encode a)
encode_F117 f = return f

parse_F117 :: Fn Logical_F117 a -> Parser a
parse_F117 f = ws >> return f

show_F117 :: Fn Logical_F117 (String, String)
show_F117 = simple $ ""


--- F118: '  { <Vt>.<T> }, [<Xn|SP>], <Xm>'
--- LD1_asisdlsep_R1_r1           ld1_advsimd_mult.xml
--- LD1R_asisdlsop_RX1_r          ld1r_advsimd.xml
--- ST1_asisdlsep_R1_r1           st1_advsimd_mult.xml

type Logical_F118 = '[]
type Binary_F118  = '[]

decode_F118 :: Fn Logical_F118 a -> FnW Binary_F118 (Decode a)
decode_F118 f = return f

encode_F118 :: FnW Binary_F118 a -> Fn Logical_F118 (Encode a)
encode_F118 f = return f

parse_F118 :: Fn Logical_F118 a -> Parser a
parse_F118 f = ws >> return f

show_F118 :: Fn Logical_F118 (String, String)
show_F118 = simple $ ""


--- F119: '  <Vd>.S, <Vn>.S, <Vm>.S[<imm2>]'
--- SM3TT2B_VVV_crypto3_imm2      sm3tt2b_advsimd.xml

type Logical_F119 = '[]
type Binary_F119  = '[]

decode_F119 :: Fn Logical_F119 a -> FnW Binary_F119 (Decode a)
decode_F119 f = return f

encode_F119 :: FnW Binary_F119 a -> Fn Logical_F119 (Encode a)
encode_F119 f = return f

parse_F119 :: Fn Logical_F119 a -> Parser a
parse_F119 f = ws >> return f

show_F119 :: Fn Logical_F119 (String, String)
show_F119 = simple $ ""


--- F120: '  { <Vt>.<T> }, [<Xn|SP>], <imm>'
--- LD1_asisdlsep_I1_i1           ld1_advsimd_mult.xml
--- LD1R_asisdlsop_R1_i           ld1r_advsimd.xml
--- ST1_asisdlsep_I1_i1           st1_advsimd_mult.xml

type Logical_F120 = '[]
type Binary_F120  = '[]

decode_F120 :: Fn Logical_F120 a -> FnW Binary_F120 (Decode a)
decode_F120 f = return f

encode_F120 :: FnW Binary_F120 a -> Fn Logical_F120 (Encode a)
encode_F120 f = return f

parse_F120 :: Fn Logical_F120 a -> Parser a
parse_F120 f = ws >> return f

show_F120 :: Fn Logical_F120 (String, String)
show_F120 = simple $ ""


--- F121: '  { <Vt>.B }[<index>], [<Xn|SP>]'
--- LD1_asisdlso_B1_1b            ld1_advsimd_sngl.xml
--- ST1_asisdlso_B1_1b            st1_advsimd_sngl.xml

type Logical_F121 = '[]
type Binary_F121  = '[]

decode_F121 :: Fn Logical_F121 a -> FnW Binary_F121 (Decode a)
decode_F121 f = return f

encode_F121 :: FnW Binary_F121 a -> Fn Logical_F121 (Encode a)
encode_F121 f = return f

parse_F121 :: Fn Logical_F121 a -> Parser a
parse_F121 f = ws >> return f

show_F121 :: Fn Logical_F121 (String, String)
show_F121 = simple $ ""


--- F122: '  { <Vt>.D }[<index>], [<Xn|SP>]'
--- LD1_asisdlso_D1_1d            ld1_advsimd_sngl.xml
--- ST1_asisdlso_D1_1d            st1_advsimd_sngl.xml

type Logical_F122 = '[]
type Binary_F122  = '[]

decode_F122 :: Fn Logical_F122 a -> FnW Binary_F122 (Decode a)
decode_F122 f = return f

encode_F122 :: FnW Binary_F122 a -> Fn Logical_F122 (Encode a)
encode_F122 f = return f

parse_F122 :: Fn Logical_F122 a -> Parser a
parse_F122 f = ws >> return f

show_F122 :: Fn Logical_F122 (String, String)
show_F122 = simple $ ""


--- F123: '  { <Vt>.H }[<index>], [<Xn|SP>]'
--- LD1_asisdlso_H1_1h            ld1_advsimd_sngl.xml
--- ST1_asisdlso_H1_1h            st1_advsimd_sngl.xml

type Logical_F123 = '[]
type Binary_F123  = '[]

decode_F123 :: Fn Logical_F123 a -> FnW Binary_F123 (Decode a)
decode_F123 f = return f

encode_F123 :: FnW Binary_F123 a -> Fn Logical_F123 (Encode a)
encode_F123 f = return f

parse_F123 :: Fn Logical_F123 a -> Parser a
parse_F123 f = ws >> return f

show_F123 :: Fn Logical_F123 (String, String)
show_F123 = simple $ ""


--- F124: '  { <Vt>.S }[<index>], [<Xn|SP>]'
--- LD1_asisdlso_S1_1s            ld1_advsimd_sngl.xml
--- ST1_asisdlso_S1_1s            st1_advsimd_sngl.xml

type Logical_F124 = '[]
type Binary_F124  = '[]

decode_F124 :: Fn Logical_F124 a -> FnW Binary_F124 (Decode a)
decode_F124 f = return f

encode_F124 :: FnW Binary_F124 a -> Fn Logical_F124 (Encode a)
encode_F124 f = return f

parse_F124 :: Fn Logical_F124 a -> Parser a
parse_F124 f = ws >> return f

show_F124 :: Fn Logical_F124 (String, String)
show_F124 = simple $ ""


--- F125: '  <Dt1>, <Dt2>, [<Xn|SP>], #<imm>'
--- LDP_D_ldstpair_post           ldp_fpsimd.xml
--- STP_D_ldstpair_post           stp_fpsimd.xml

type Logical_F125 = '[]
type Binary_F125  = '[]

decode_F125 :: Fn Logical_F125 a -> FnW Binary_F125 (Decode a)
decode_F125 f = return f

encode_F125 :: FnW Binary_F125 a -> Fn Logical_F125 (Encode a)
encode_F125 f = return f

parse_F125 :: Fn Logical_F125 a -> Parser a
parse_F125 f = ws >> return f

show_F125 :: Fn Logical_F125 (String, String)
show_F125 = simple $ ""


--- F126: '  <Qt1>, <Qt2>, [<Xn|SP>], #<imm>'
--- LDP_Q_ldstpair_post           ldp_fpsimd.xml
--- STP_Q_ldstpair_post           stp_fpsimd.xml

type Logical_F126 = '[]
type Binary_F126  = '[]

decode_F126 :: Fn Logical_F126 a -> FnW Binary_F126 (Decode a)
decode_F126 f = return f

encode_F126 :: FnW Binary_F126 a -> Fn Logical_F126 (Encode a)
encode_F126 f = return f

parse_F126 :: Fn Logical_F126 a -> Parser a
parse_F126 f = ws >> return f

show_F126 :: Fn Logical_F126 (String, String)
show_F126 = simple $ ""


--- F127: '  <St1>, <St2>, [<Xn|SP>], #<imm>'
--- LDP_S_ldstpair_post           ldp_fpsimd.xml
--- STP_S_ldstpair_post           stp_fpsimd.xml

type Logical_F127 = '[]
type Binary_F127  = '[]

decode_F127 :: Fn Logical_F127 a -> FnW Binary_F127 (Decode a)
decode_F127 f = return f

encode_F127 :: FnW Binary_F127 a -> Fn Logical_F127 (Encode a)
encode_F127 f = return f

parse_F127 :: Fn Logical_F127 a -> Parser a
parse_F127 f = ws >> return f

show_F127 :: Fn Logical_F127 (String, String)
show_F127 = simple $ ""


--- F128: '  <Vd>.<Ta>, <Vn>.<Tb>, <Vm>.<Tb>'
--- SDOT_asimdsame2_D             sdot_advsimd_vec.xml
--- UDOT_asimdsame2_D             udot_advsimd_vec.xml

type Logical_F128 = '[]
type Binary_F128  = '[]

decode_F128 :: Fn Logical_F128 a -> FnW Binary_F128 (Decode a)
decode_F128 f = return f

encode_F128 :: FnW Binary_F128 a -> Fn Logical_F128 (Encode a)
encode_F128 f = return f

parse_F128 :: Fn Logical_F128 a -> Parser a
parse_F128 f = ws >> return f

show_F128 :: Fn Logical_F128 (String, String)
show_F128 = simple $ ""


--- F129: '  <Dt1>, <Dt2>, [<Xn|SP>, #<imm>]!'
--- LDP_D_ldstpair_pre            ldp_fpsimd.xml
--- STP_D_ldstpair_pre            stp_fpsimd.xml

type Logical_F129 = '[]
type Binary_F129  = '[]

decode_F129 :: Fn Logical_F129 a -> FnW Binary_F129 (Decode a)
decode_F129 f = return f

encode_F129 :: FnW Binary_F129 a -> Fn Logical_F129 (Encode a)
encode_F129 f = return f

parse_F129 :: Fn Logical_F129 a -> Parser a
parse_F129 f = ws >> return f

show_F129 :: Fn Logical_F129 (String, String)
show_F129 = simple $ ""


--- F130: '  <Qt1>, <Qt2>, [<Xn|SP>, #<imm>]!'
--- LDP_Q_ldstpair_pre            ldp_fpsimd.xml
--- STP_Q_ldstpair_pre            stp_fpsimd.xml

type Logical_F130 = '[]
type Binary_F130  = '[]

decode_F130 :: Fn Logical_F130 a -> FnW Binary_F130 (Decode a)
decode_F130 f = return f

encode_F130 :: FnW Binary_F130 a -> Fn Logical_F130 (Encode a)
encode_F130 f = return f

parse_F130 :: Fn Logical_F130 a -> Parser a
parse_F130 f = ws >> return f

show_F130 :: Fn Logical_F130 (String, String)
show_F130 = simple $ ""


--- F131: '  <St1>, <St2>, [<Xn|SP>, #<imm>]!'
--- LDP_S_ldstpair_pre            ldp_fpsimd.xml
--- STP_S_ldstpair_pre            stp_fpsimd.xml

type Logical_F131 = '[]
type Binary_F131  = '[]

decode_F131 :: Fn Logical_F131 a -> FnW Binary_F131 (Decode a)
decode_F131 f = return f

encode_F131 :: FnW Binary_F131 a -> Fn Logical_F131 (Encode a)
encode_F131 f = return f

parse_F131 :: Fn Logical_F131 a -> Parser a
parse_F131 f = ws >> return f

show_F131 :: Fn Logical_F131 (String, String)
show_F131 = simple $ ""


--- F132: '  <Vd>.4S, <Vn>.4S, <Vm>.S[<imm2>]'
--- SM3TT1A_VVV4_crypto3_imm2     sm3tt1a_advsimd.xml
--- SM3TT1B_VVV4_crypto3_imm2     sm3tt1b_advsimd.xml
--- SM3TT2A_VVV4_crypto3_imm2     sm3tt2a_advsimd.xml

type Logical_F132 = '[]
type Binary_F132  = '[]

decode_F132 :: Fn Logical_F132 a -> FnW Binary_F132 (Decode a)
decode_F132 f = return f

encode_F132 :: FnW Binary_F132 a -> Fn Logical_F132 (Encode a)
encode_F132 f = return f

parse_F132 :: Fn Logical_F132 a -> Parser a
parse_F132 f = ws >> return f

show_F132 :: Fn Logical_F132 (String, String)
show_F132 = simple $ ""


--- F133: '  <Vd>.<T>, #<imm8>, MSL #<amount>'
--- MOVI_asimdimm_M_sm            movi_advsimd.xml
--- MVNI_asimdimm_M_sm            mvni_advsimd.xml

type Logical_F133 = '[]
type Binary_F133  = '[]

decode_F133 :: Fn Logical_F133 a -> FnW Binary_F133 (Decode a)
decode_F133 f = return f

encode_F133 :: FnW Binary_F133 a -> Fn Logical_F133 (Encode a)
encode_F133 f = return f

parse_F133 :: Fn Logical_F133 a -> Parser a
parse_F133 f = ws >> return f

show_F133 :: Fn Logical_F133 (String, String)
show_F133 = simple $ ""


--- F134: '  <Dt1>, <Dt2>, [<Xn|SP>{, #<imm>}]'
--- LDNP_D_ldstnapair_offs        ldnp_fpsimd.xml
--- LDP_D_ldstpair_off            ldp_fpsimd.xml
--- STNP_D_ldstnapair_offs        stnp_fpsimd.xml
--- STP_D_ldstpair_off            stp_fpsimd.xml

type Logical_F134 = '[]
type Binary_F134  = '[]

decode_F134 :: Fn Logical_F134 a -> FnW Binary_F134 (Decode a)
decode_F134 f = return f

encode_F134 :: FnW Binary_F134 a -> Fn Logical_F134 (Encode a)
encode_F134 f = return f

parse_F134 :: Fn Logical_F134 a -> Parser a
parse_F134 f = ws >> return f

show_F134 :: Fn Logical_F134 (String, String)
show_F134 = simple $ ""


--- F135: '  <Qt1>, <Qt2>, [<Xn|SP>{, #<imm>}]'
--- LDNP_Q_ldstnapair_offs        ldnp_fpsimd.xml
--- LDP_Q_ldstpair_off            ldp_fpsimd.xml
--- STNP_Q_ldstnapair_offs        stnp_fpsimd.xml
--- STP_Q_ldstpair_off            stp_fpsimd.xml

type Logical_F135 = '[]
type Binary_F135  = '[]

decode_F135 :: Fn Logical_F135 a -> FnW Binary_F135 (Decode a)
decode_F135 f = return f

encode_F135 :: FnW Binary_F135 a -> Fn Logical_F135 (Encode a)
encode_F135 f = return f

parse_F135 :: Fn Logical_F135 a -> Parser a
parse_F135 f = ws >> return f

show_F135 :: Fn Logical_F135 (String, String)
show_F135 = simple $ ""


--- F136: '  <St1>, <St2>, [<Xn|SP>{, #<imm>}]'
--- LDNP_S_ldstnapair_offs        ldnp_fpsimd.xml
--- LDP_S_ldstpair_off            ldp_fpsimd.xml
--- STNP_S_ldstnapair_offs        stnp_fpsimd.xml
--- STP_S_ldstpair_off            stp_fpsimd.xml

type Logical_F136 = '[]
type Binary_F136  = '[]

decode_F136 :: Fn Logical_F136 a -> FnW Binary_F136 (Decode a)
decode_F136 f = return f

encode_F136 :: FnW Binary_F136 a -> Fn Logical_F136 (Encode a)
encode_F136 f = return f

parse_F136 :: Fn Logical_F136 a -> Parser a
parse_F136 f = ws >> return f

show_F136 :: Fn Logical_F136 (String, String)
show_F136 = simple $ ""


--- F137: '{2}  <Vd>.<Ta>, <Vn>.<Tb>, #<shift>'
--- SHLL_asimdmisc_S              shll_advsimd.xml
--- SSHLL_asimdshf_L              sshll_advsimd.xml
--- USHLL_asimdshf_L              ushll_advsimd.xml

type Logical_F137 = '[]
type Binary_F137  = '[]

decode_F137 :: Fn Logical_F137 a -> FnW Binary_F137 (Decode a)
decode_F137 f = return f

encode_F137 :: FnW Binary_F137 a -> Fn Logical_F137 (Encode a)
encode_F137 f = return f

parse_F137 :: Fn Logical_F137 a -> Parser a
parse_F137 f = ws >> return f

show_F137 :: Fn Logical_F137 (String, String)
show_F137 = simple $ ""


--- F138: '{2}  <Vd>.<Tb>, <Vn>.<Ta>, #<shift>'
--- RSHRN_asimdshf_N              rshrn_advsimd.xml
--- SHRN_asimdshf_N               shrn_advsimd.xml
--- SQRSHRN_asimdshf_N            sqrshrn_advsimd.xml
--- SQRSHRUN_asimdshf_N           sqrshrun_advsimd.xml
--- SQSHRN_asimdshf_N             sqshrn_advsimd.xml
--- SQSHRUN_asimdshf_N            sqshrun_advsimd.xml
--- UQRSHRN_asimdshf_N            uqrshrn_advsimd.xml
--- UQSHRN_asimdshf_N             uqshrn_advsimd.xml

type Logical_F138 = '[]
type Binary_F138  = '[]

decode_F138 :: Fn Logical_F138 a -> FnW Binary_F138 (Decode a)
decode_F138 f = return f

encode_F138 :: FnW Binary_F138 a -> Fn Logical_F138 (Encode a)
encode_F138 f = return f

parse_F138 :: Fn Logical_F138 a -> Parser a
parse_F138 f = ws >> return f

show_F138 :: Fn Logical_F138 (String, String)
show_F138 = simple $ ""


--- F139: '  <V><d>, <V><n>, <Vm>.<Ts>[<index>]'
--- FMLA_asisdelem_R_SD           fmla_advsimd_elt.xml
--- FMLS_asisdelem_R_SD           fmls_advsimd_elt.xml
--- FMUL_asisdelem_R_SD           fmul_advsimd_elt.xml
--- FMULX_asisdelem_R_SD          fmulx_advsimd_elt.xml
--- SQDMULH_asisdelem_R           sqdmulh_advsimd_elt.xml
--- SQRDMLAH_asisdelem_R          sqrdmlah_advsimd_elt.xml
--- SQRDMLSH_asisdelem_R          sqrdmlsh_advsimd_elt.xml
--- SQRDMULH_asisdelem_R          sqrdmulh_advsimd_elt.xml

type Logical_F139 = '[]
type Binary_F139  = '[]

decode_F139 :: Fn Logical_F139 a -> FnW Binary_F139 (Decode a)
decode_F139 f = return f

encode_F139 :: FnW Binary_F139 a -> Fn Logical_F139 (Encode a)
encode_F139 f = return f

parse_F139 :: Fn Logical_F139 a -> Parser a
parse_F139 f = ws >> return f

show_F139 :: Fn Logical_F139 (String, String)
show_F139 = simple $ ""


--- F140: '  <Vd>.2D, <Vn>.2D, <Vm>.2D, #<imm6>'
--- XAR_VVV2_crypto3_imm6         xar_advsimd.xml

type Logical_F140 = '[]
type Binary_F140  = '[]

decode_F140 :: Fn Logical_F140 a -> FnW Binary_F140 (Decode a)
decode_F140 f = return f

encode_F140 :: FnW Binary_F140 a -> Fn Logical_F140 (Encode a)
encode_F140 f = return f

parse_F140 :: Fn Logical_F140 a -> Parser a
parse_F140 f = ws >> return f

show_F140 :: Fn Logical_F140 (String, String)
show_F140 = simple $ ""


--- F141: '  <Vd>.4S, <Vn>.4S, <Vm>.4S, <Va>.4S'
--- SM3SS1_VVV4_crypto4           sm3ss1_advsimd.xml

type Logical_F141 = '[]
type Binary_F141  = '[]

decode_F141 :: Fn Logical_F141 a -> FnW Binary_F141 (Decode a)
decode_F141 f = return f

encode_F141 :: FnW Binary_F141 a -> Fn Logical_F141 (Encode a)
encode_F141 f = return f

parse_F141 :: Fn Logical_F141 a -> Parser a
parse_F141 f = ws >> return f

show_F141 :: Fn Logical_F141 (String, String)
show_F141 = simple $ ""


--- F142: '  <Vd>.<T>, #<imm8>{, LSL #<amount>}'
--- BIC_asimdimm_L_hl             bic_advsimd_imm.xml
--- BIC_asimdimm_L_sl             bic_advsimd_imm.xml
--- MOVI_asimdimm_L_hl            movi_advsimd.xml
--- MOVI_asimdimm_L_sl            movi_advsimd.xml
--- MVNI_asimdimm_L_hl            mvni_advsimd.xml
--- MVNI_asimdimm_L_sl            mvni_advsimd.xml
--- ORR_asimdimm_L_hl             orr_advsimd_imm.xml
--- ORR_asimdimm_L_sl             orr_advsimd_imm.xml

type Logical_F142 = '[]
type Binary_F142  = '[]

decode_F142 :: Fn Logical_F142 a -> FnW Binary_F142 (Decode a)
decode_F142 f = return f

encode_F142 :: FnW Binary_F142 a -> Fn Logical_F142 (Encode a)
encode_F142 f = return f

parse_F142 :: Fn Logical_F142 a -> Parser a
parse_F142 f = ws >> return f

show_F142 :: Fn Logical_F142 (String, String)
show_F142 = simple $ ""


--- F143: '  <Vd>.<Ta>, { <Vn>.16B }, <Vm>.<Ta>'
--- TBL_asimdtbl_L1_1             tbl_advsimd.xml
--- TBX_asimdtbl_L1_1             tbx_advsimd.xml

type Logical_F143 = '[]
type Binary_F143  = '[]

decode_F143 :: Fn Logical_F143 a -> FnW Binary_F143 (Decode a)
decode_F143 f = return f

encode_F143 :: FnW Binary_F143 a -> Fn Logical_F143 (Encode a)
encode_F143 f = return f

parse_F143 :: Fn Logical_F143 a -> Parser a
parse_F143 f = ws >> return f

show_F143 :: Fn Logical_F143 (String, String)
show_F143 = simple $ ""


--- F144: '  { <Vt>.<T>, <Vt2>.<T> }, [<Xn|SP>]'
--- LD1_asisdlse_R2_2v            ld1_advsimd_mult.xml
--- LD2_asisdlse_R2               ld2_advsimd_mult.xml
--- LD2R_asisdlso_R2              ld2r_advsimd.xml
--- ST1_asisdlse_R2_2v            st1_advsimd_mult.xml
--- ST2_asisdlse_R2               st2_advsimd_mult.xml

type Logical_F144 = '[]
type Binary_F144  = '[]

decode_F144 :: Fn Logical_F144 a -> FnW Binary_F144 (Decode a)
decode_F144 f = return f

encode_F144 :: FnW Binary_F144 a -> Fn Logical_F144 (Encode a)
encode_F144 f = return f

parse_F144 :: Fn Logical_F144 a -> Parser a
parse_F144 f = ws >> return f

show_F144 :: Fn Logical_F144 (String, String)
show_F144 = simple $ ""


--- F145: '  { <Vt>.B }[<index>], [<Xn|SP>], #1'
--- LD1_asisdlsop_B1_i1b          ld1_advsimd_sngl.xml
--- ST1_asisdlsop_B1_i1b          st1_advsimd_sngl.xml

type Logical_F145 = '[]
type Binary_F145  = '[]

decode_F145 :: Fn Logical_F145 a -> FnW Binary_F145 (Decode a)
decode_F145 f = return f

encode_F145 :: FnW Binary_F145 a -> Fn Logical_F145 (Encode a)
encode_F145 f = return f

parse_F145 :: Fn Logical_F145 a -> Parser a
parse_F145 f = ws >> return f

show_F145 :: Fn Logical_F145 (String, String)
show_F145 = simple $ ""


--- F146: '  { <Vt>.D }[<index>], [<Xn|SP>], #8'
--- LD1_asisdlsop_D1_i1d          ld1_advsimd_sngl.xml
--- ST1_asisdlsop_D1_i1d          st1_advsimd_sngl.xml

type Logical_F146 = '[]
type Binary_F146  = '[]

decode_F146 :: Fn Logical_F146 a -> FnW Binary_F146 (Decode a)
decode_F146 f = return f

encode_F146 :: FnW Binary_F146 a -> Fn Logical_F146 (Encode a)
encode_F146 f = return f

parse_F146 :: Fn Logical_F146 a -> Parser a
parse_F146 f = ws >> return f

show_F146 :: Fn Logical_F146 (String, String)
show_F146 = simple $ ""


--- F147: '  { <Vt>.H }[<index>], [<Xn|SP>], #2'
--- LD1_asisdlsop_H1_i1h          ld1_advsimd_sngl.xml
--- ST1_asisdlsop_H1_i1h          st1_advsimd_sngl.xml

type Logical_F147 = '[]
type Binary_F147  = '[]

decode_F147 :: Fn Logical_F147 a -> FnW Binary_F147 (Decode a)
decode_F147 f = return f

encode_F147 :: FnW Binary_F147 a -> Fn Logical_F147 (Encode a)
encode_F147 f = return f

parse_F147 :: Fn Logical_F147 a -> Parser a
parse_F147 f = ws >> return f

show_F147 :: Fn Logical_F147 (String, String)
show_F147 = simple $ ""


--- F148: '  { <Vt>.S }[<index>], [<Xn|SP>], #4'
--- LD1_asisdlsop_S1_i1s          ld1_advsimd_sngl.xml
--- ST1_asisdlsop_S1_i1s          st1_advsimd_sngl.xml

type Logical_F148 = '[]
type Binary_F148  = '[]

decode_F148 :: Fn Logical_F148 a -> FnW Binary_F148 (Decode a)
decode_F148 f = return f

encode_F148 :: FnW Binary_F148 a -> Fn Logical_F148 (Encode a)
encode_F148 f = return f

parse_F148 :: Fn Logical_F148 a -> Parser a
parse_F148 f = ws >> return f

show_F148 :: Fn Logical_F148 (String, String)
show_F148 = simple $ ""


--- F149: '{2}  <Vd>.<Ta>, <Vn>.<Ta>, <Vm>.<Tb>'
--- SADDW_asimddiff_W             saddw_advsimd.xml
--- SSUBW_asimddiff_W             ssubw_advsimd.xml
--- UADDW_asimddiff_W             uaddw_advsimd.xml
--- USUBW_asimddiff_W             usubw_advsimd.xml

type Logical_F149 = '[]
type Binary_F149  = '[]

decode_F149 :: Fn Logical_F149 a -> FnW Binary_F149 (Decode a)
decode_F149 f = return f

encode_F149 :: FnW Binary_F149 a -> Fn Logical_F149 (Encode a)
encode_F149 f = return f

parse_F149 :: Fn Logical_F149 a -> Parser a
parse_F149 f = ws >> return f

show_F149 :: Fn Logical_F149 (String, String)
show_F149 = simple $ ""


--- F150: '{2}  <Vd>.<Ta>, <Vn>.<Tb>, <Vm>.<Tb>'
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

type Logical_F150 = '[]
type Binary_F150  = '[]

decode_F150 :: Fn Logical_F150 a -> FnW Binary_F150 (Decode a)
decode_F150 f = return f

encode_F150 :: FnW Binary_F150 a -> Fn Logical_F150 (Encode a)
encode_F150 f = return f

parse_F150 :: Fn Logical_F150 a -> Parser a
parse_F150 f = ws >> return f

show_F150 :: Fn Logical_F150 (String, String)
show_F150 = simple $ ""


--- F151: '{2}  <Vd>.<Tb>, <Vn>.<Ta>, <Vm>.<Ta>'
--- ADDHN_asimddiff_N             addhn_advsimd.xml
--- RADDHN_asimddiff_N            raddhn_advsimd.xml
--- RSUBHN_asimddiff_N            rsubhn_advsimd.xml
--- SUBHN_asimddiff_N             subhn_advsimd.xml

type Logical_F151 = '[]
type Binary_F151  = '[]

decode_F151 :: Fn Logical_F151 a -> FnW Binary_F151 (Decode a)
decode_F151 f = return f

encode_F151 :: FnW Binary_F151 a -> Fn Logical_F151 (Encode a)
encode_F151 f = return f

parse_F151 :: Fn Logical_F151 a -> Parser a
parse_F151 f = ws >> return f

show_F151 :: Fn Logical_F151 (String, String)
show_F151 = simple $ ""


--- F152: '  <Vd>.<T>, <Vn>.<T>, <Vm>.H[<index>]'
--- FMLA_asimdelem_RH_H           fmla_advsimd_elt.xml
--- FMLS_asimdelem_RH_H           fmls_advsimd_elt.xml
--- FMUL_asimdelem_RH_H           fmul_advsimd_elt.xml
--- FMULX_asimdelem_RH_H          fmulx_advsimd_elt.xml

type Logical_F152 = '[]
type Binary_F152  = '[]

decode_F152 :: Fn Logical_F152 a -> FnW Binary_F152 (Decode a)
decode_F152 f = return f

encode_F152 :: FnW Binary_F152 a -> Fn Logical_F152 (Encode a)
encode_F152 f = return f

parse_F152 :: Fn Logical_F152 a -> Parser a
parse_F152 f = ws >> return f

show_F152 :: Fn Logical_F152 (String, String)
show_F152 = simple $ ""


--- F153: '  <Va><d>, <Vb><n>, <Vm>.<Ts>[<index>]'
--- SQDMLAL_asisdelem_L           sqdmlal_advsimd_elt.xml
--- SQDMLSL_asisdelem_L           sqdmlsl_advsimd_elt.xml
--- SQDMULL_asisdelem_L           sqdmull_advsimd_elt.xml

type Logical_F153 = '[]
type Binary_F153  = '[]

decode_F153 :: Fn Logical_F153 a -> FnW Binary_F153 (Decode a)
decode_F153 f = return f

encode_F153 :: FnW Binary_F153 a -> Fn Logical_F153 (Encode a)
encode_F153 f = return f

parse_F153 :: Fn Logical_F153 a -> Parser a
parse_F153 f = ws >> return f

show_F153 :: Fn Logical_F153 (String, String)
show_F153 = simple $ ""


--- F154: '  { <Vt>.B }[<index>], [<Xn|SP>], <Xm>'
--- LD1_asisdlsop_BX1_r1b         ld1_advsimd_sngl.xml
--- ST1_asisdlsop_BX1_r1b         st1_advsimd_sngl.xml

type Logical_F154 = '[]
type Binary_F154  = '[]

decode_F154 :: Fn Logical_F154 a -> FnW Binary_F154 (Decode a)
decode_F154 f = return f

encode_F154 :: FnW Binary_F154 a -> Fn Logical_F154 (Encode a)
encode_F154 f = return f

parse_F154 :: Fn Logical_F154 a -> Parser a
parse_F154 f = ws >> return f

show_F154 :: Fn Logical_F154 (String, String)
show_F154 = simple $ ""


--- F155: '  { <Vt>.D }[<index>], [<Xn|SP>], <Xm>'
--- LD1_asisdlsop_DX1_r1d         ld1_advsimd_sngl.xml
--- ST1_asisdlsop_DX1_r1d         st1_advsimd_sngl.xml

type Logical_F155 = '[]
type Binary_F155  = '[]

decode_F155 :: Fn Logical_F155 a -> FnW Binary_F155 (Decode a)
decode_F155 f = return f

encode_F155 :: FnW Binary_F155 a -> Fn Logical_F155 (Encode a)
encode_F155 f = return f

parse_F155 :: Fn Logical_F155 a -> Parser a
parse_F155 f = ws >> return f

show_F155 :: Fn Logical_F155 (String, String)
show_F155 = simple $ ""


--- F156: '  { <Vt>.H }[<index>], [<Xn|SP>], <Xm>'
--- LD1_asisdlsop_HX1_r1h         ld1_advsimd_sngl.xml
--- ST1_asisdlsop_HX1_r1h         st1_advsimd_sngl.xml

type Logical_F156 = '[]
type Binary_F156  = '[]

decode_F156 :: Fn Logical_F156 a -> FnW Binary_F156 (Decode a)
decode_F156 f = return f

encode_F156 :: FnW Binary_F156 a -> Fn Logical_F156 (Encode a)
encode_F156 f = return f

parse_F156 :: Fn Logical_F156 a -> Parser a
parse_F156 f = ws >> return f

show_F156 :: Fn Logical_F156 (String, String)
show_F156 = simple $ ""


--- F157: '  { <Vt>.S }[<index>], [<Xn|SP>], <Xm>'
--- LD1_asisdlsop_SX1_r1s         ld1_advsimd_sngl.xml
--- ST1_asisdlsop_SX1_r1s         st1_advsimd_sngl.xml

type Logical_F157 = '[]
type Binary_F157  = '[]

decode_F157 :: Fn Logical_F157 a -> FnW Binary_F157 (Decode a)
decode_F157 f = return f

encode_F157 :: FnW Binary_F157 a -> Fn Logical_F157 (Encode a)
encode_F157 f = return f

parse_F157 :: Fn Logical_F157 a -> Parser a
parse_F157 f = ws >> return f

show_F157 :: Fn Logical_F157 (String, String)
show_F157 = simple $ ""


--- F158: '  <Bt>, [<Xn|SP>, <Xm>{, LSL <amount>}]'
--- LDR_BL_ldst_regoff            ldr_reg_fpsimd.xml
--- STR_BL_ldst_regoff            str_reg_fpsimd.xml

type Logical_F158 = '[]
type Binary_F158  = '[]

decode_F158 :: Fn Logical_F158 a -> FnW Binary_F158 (Decode a)
decode_F158 f = return f

encode_F158 :: FnW Binary_F158 a -> Fn Logical_F158 (Encode a)
encode_F158 f = return f

parse_F158 :: Fn Logical_F158 a -> Parser a
parse_F158 f = ws >> return f

show_F158 :: Fn Logical_F158 (String, String)
show_F158 = simple $ ""


--- F159: '  <Vd>.16B, <Vn>.16B, <Vm>.16B, <Va>.16B'
--- BCAX_VVV16_crypto4            bcax_advsimd.xml
--- EOR3_VVV16_crypto4            eor3_advsimd.xml

type Logical_F159 = '[]
type Binary_F159  = '[]

decode_F159 :: Fn Logical_F159 a -> FnW Binary_F159 (Decode a)
decode_F159 f = return f

encode_F159 :: FnW Binary_F159 a -> Fn Logical_F159 (Encode a)
encode_F159 f = return f

parse_F159 :: Fn Logical_F159 a -> Parser a
parse_F159 f = ws >> return f

show_F159 :: Fn Logical_F159 (String, String)
show_F159 = simple $ ""


--- F160: '  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>, #<index>'
--- EXT_asimdext_only             ext_advsimd.xml

type Logical_F160 = '[]
type Binary_F160  = '[]

decode_F160 :: Fn Logical_F160 a -> FnW Binary_F160 (Decode a)
decode_F160 f = return f

encode_F160 :: FnW Binary_F160 a -> Fn Logical_F160 (Encode a)
encode_F160 f = return f

parse_F160 :: Fn Logical_F160 a -> Parser a
parse_F160 f = ws >> return f

show_F160 :: Fn Logical_F160 (String, String)
show_F160 = simple $ ""


--- F161: '  <Vd>.<T>, <Vn>.<T>, <Vm>.<Ts>[<index>]'
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

type Logical_F161 = '[]
type Binary_F161  = '[]

decode_F161 :: Fn Logical_F161 a -> FnW Binary_F161 (Decode a)
decode_F161 f = return f

encode_F161 :: FnW Binary_F161 a -> Fn Logical_F161 (Encode a)
encode_F161 f = return f

parse_F161 :: Fn Logical_F161 a -> Parser a
parse_F161 f = ws >> return f

show_F161 :: Fn Logical_F161 (String, String)
show_F161 = simple $ ""


--- F162: '  <Vd>.<Ta>, <Vn>.<Tb>, <Vm>.4B[<index>]'
--- SDOT_asimdelem_D              sdot_advsimd_elt.xml
--- UDOT_asimdelem_D              udot_advsimd_elt.xml

type Logical_F162 = '[]
type Binary_F162  = '[]

decode_F162 :: Fn Logical_F162 a -> FnW Binary_F162 (Decode a)
decode_F162 f = return f

encode_F162 :: FnW Binary_F162 a -> Fn Logical_F162 (Encode a)
encode_F162 f = return f

parse_F162 :: Fn Logical_F162 a -> Parser a
parse_F162 f = ws >> return f

show_F162 :: Fn Logical_F162 (String, String)
show_F162 = simple $ ""


--- F163: '  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>, #<rotate>'
--- FCADD_asimdsame2_C            fcadd_advsimd_vec.xml
--- FCMLA_asimdsame2_C            fcmla_advsimd_vec.xml

type Logical_F163 = '[]
type Binary_F163  = '[]

decode_F163 :: Fn Logical_F163 a -> FnW Binary_F163 (Decode a)
decode_F163 f = return f

encode_F163 :: FnW Binary_F163 a -> Fn Logical_F163 (Encode a)
encode_F163 f = return f

parse_F163 :: Fn Logical_F163 a -> Parser a
parse_F163 f = ws >> return f

show_F163 :: Fn Logical_F163 (String, String)
show_F163 = simple $ ""


--- F164: '  { <Vt>.B, <Vt2>.B }[<index>], [<Xn|SP>]'
--- LD2_asisdlso_B2_2b            ld2_advsimd_sngl.xml
--- ST2_asisdlso_B2_2b            st2_advsimd_sngl.xml

type Logical_F164 = '[]
type Binary_F164  = '[]

decode_F164 :: Fn Logical_F164 a -> FnW Binary_F164 (Decode a)
decode_F164 f = return f

encode_F164 :: FnW Binary_F164 a -> Fn Logical_F164 (Encode a)
encode_F164 f = return f

parse_F164 :: Fn Logical_F164 a -> Parser a
parse_F164 f = ws >> return f

show_F164 :: Fn Logical_F164 (String, String)
show_F164 = simple $ ""


--- F165: '  { <Vt>.D, <Vt2>.D }[<index>], [<Xn|SP>]'
--- LD2_asisdlso_D2_2d            ld2_advsimd_sngl.xml
--- ST2_asisdlso_D2_2d            st2_advsimd_sngl.xml

type Logical_F165 = '[]
type Binary_F165  = '[]

decode_F165 :: Fn Logical_F165 a -> FnW Binary_F165 (Decode a)
decode_F165 f = return f

encode_F165 :: FnW Binary_F165 a -> Fn Logical_F165 (Encode a)
encode_F165 f = return f

parse_F165 :: Fn Logical_F165 a -> Parser a
parse_F165 f = ws >> return f

show_F165 :: Fn Logical_F165 (String, String)
show_F165 = simple $ ""


--- F166: '  { <Vt>.H, <Vt2>.H }[<index>], [<Xn|SP>]'
--- LD2_asisdlso_H2_2h            ld2_advsimd_sngl.xml
--- ST2_asisdlso_H2_2h            st2_advsimd_sngl.xml

type Logical_F166 = '[]
type Binary_F166  = '[]

decode_F166 :: Fn Logical_F166 a -> FnW Binary_F166 (Decode a)
decode_F166 f = return f

encode_F166 :: FnW Binary_F166 a -> Fn Logical_F166 (Encode a)
encode_F166 f = return f

parse_F166 :: Fn Logical_F166 a -> Parser a
parse_F166 f = ws >> return f

show_F166 :: Fn Logical_F166 (String, String)
show_F166 = simple $ ""


--- F167: '  { <Vt>.S, <Vt2>.S }[<index>], [<Xn|SP>]'
--- LD2_asisdlso_S2_2s            ld2_advsimd_sngl.xml
--- ST2_asisdlso_S2_2s            st2_advsimd_sngl.xml

type Logical_F167 = '[]
type Binary_F167  = '[]

decode_F167 :: Fn Logical_F167 a -> FnW Binary_F167 (Decode a)
decode_F167 f = return f

encode_F167 :: FnW Binary_F167 a -> Fn Logical_F167 (Encode a)
encode_F167 f = return f

parse_F167 :: Fn Logical_F167 a -> Parser a
parse_F167 f = ws >> return f

show_F167 :: Fn Logical_F167 (String, String)
show_F167 = simple $ ""


--- F168: '  <Vd>.<Ts>[<index1>], <Vn>.<Ts>[<index2>]'
--- INS_asimdins_IV_v             ins_advsimd_elt.xml

type Logical_F168 = '[]
type Binary_F168  = '[]

decode_F168 :: Fn Logical_F168 a -> FnW Binary_F168 (Decode a)
decode_F168 f = return f

encode_F168 :: FnW Binary_F168 a -> Fn Logical_F168 (Encode a)
encode_F168 f = return f

parse_F168 :: Fn Logical_F168 a -> Parser a
parse_F168 f = ws >> return f

show_F168 :: Fn Logical_F168 (String, String)
show_F168 = simple $ ""


--- F169: '  { <Vt>.<T>, <Vt2>.<T> }, [<Xn|SP>], <Xm>'
--- LD1_asisdlsep_R2_r2           ld1_advsimd_mult.xml
--- LD2_asisdlsep_R2_r            ld2_advsimd_mult.xml
--- LD2R_asisdlsop_RX2_r          ld2r_advsimd.xml
--- ST1_asisdlsep_R2_r2           st1_advsimd_mult.xml
--- ST2_asisdlsep_R2_r            st2_advsimd_mult.xml

type Logical_F169 = '[]
type Binary_F169  = '[]

decode_F169 :: Fn Logical_F169 a -> FnW Binary_F169 (Decode a)
decode_F169 f = return f

encode_F169 :: FnW Binary_F169 a -> Fn Logical_F169 (Encode a)
encode_F169 f = return f

parse_F169 :: Fn Logical_F169 a -> Parser a
parse_F169 f = ws >> return f

show_F169 :: Fn Logical_F169 (String, String)
show_F169 = simple $ ""


--- F170: '  { <Vt>.<T>, <Vt2>.<T> }, [<Xn|SP>], <imm>'
--- LD1_asisdlsep_I2_i2           ld1_advsimd_mult.xml
--- LD2_asisdlsep_I2_i            ld2_advsimd_mult.xml
--- LD2R_asisdlsop_R2_i           ld2r_advsimd.xml
--- ST1_asisdlsep_I2_i2           st1_advsimd_mult.xml
--- ST2_asisdlsep_I2_i            st2_advsimd_mult.xml

type Logical_F170 = '[]
type Binary_F170  = '[]

decode_F170 :: Fn Logical_F170 a -> FnW Binary_F170 (Decode a)
decode_F170 f = return f

encode_F170 :: FnW Binary_F170 a -> Fn Logical_F170 (Encode a)
encode_F170 f = return f

parse_F170 :: Fn Logical_F170 a -> Parser a
parse_F170 f = ws >> return f

show_F170 :: Fn Logical_F170 (String, String)
show_F170 = simple $ ""


--- F171: '  { <Vt>.B, <Vt2>.B }[<index>], [<Xn|SP>], #2'
--- LD2_asisdlsop_B2_i2b          ld2_advsimd_sngl.xml
--- ST2_asisdlsop_B2_i2b          st2_advsimd_sngl.xml

type Logical_F171 = '[]
type Binary_F171  = '[]

decode_F171 :: Fn Logical_F171 a -> FnW Binary_F171 (Decode a)
decode_F171 f = return f

encode_F171 :: FnW Binary_F171 a -> Fn Logical_F171 (Encode a)
encode_F171 f = return f

parse_F171 :: Fn Logical_F171 a -> Parser a
parse_F171 f = ws >> return f

show_F171 :: Fn Logical_F171 (String, String)
show_F171 = simple $ ""


--- F172: '  { <Vt>.H, <Vt2>.H }[<index>], [<Xn|SP>], #4'
--- LD2_asisdlsop_H2_i2h          ld2_advsimd_sngl.xml
--- ST2_asisdlsop_H2_i2h          st2_advsimd_sngl.xml

type Logical_F172 = '[]
type Binary_F172  = '[]

decode_F172 :: Fn Logical_F172 a -> FnW Binary_F172 (Decode a)
decode_F172 f = return f

encode_F172 :: FnW Binary_F172 a -> Fn Logical_F172 (Encode a)
encode_F172 f = return f

parse_F172 :: Fn Logical_F172 a -> Parser a
parse_F172 f = ws >> return f

show_F172 :: Fn Logical_F172 (String, String)
show_F172 = simple $ ""


--- F173: '  { <Vt>.S, <Vt2>.S }[<index>], [<Xn|SP>], #8'
--- LD2_asisdlsop_S2_i2s          ld2_advsimd_sngl.xml
--- ST2_asisdlsop_S2_i2s          st2_advsimd_sngl.xml

type Logical_F173 = '[]
type Binary_F173  = '[]

decode_F173 :: Fn Logical_F173 a -> FnW Binary_F173 (Decode a)
decode_F173 f = return f

encode_F173 :: FnW Binary_F173 a -> Fn Logical_F173 (Encode a)
encode_F173 f = return f

parse_F173 :: Fn Logical_F173 a -> Parser a
parse_F173 f = ws >> return f

show_F173 :: Fn Logical_F173 (String, String)
show_F173 = simple $ ""


--- F174: '{2}  <Vd>.<Ta>, <Vn>.<Tb>, <Vm>.<Ts>[<index>]'
--- SMLAL_asimdelem_L             smlal_advsimd_elt.xml
--- SMLSL_asimdelem_L             smlsl_advsimd_elt.xml
--- SMULL_asimdelem_L             smull_advsimd_elt.xml
--- SQDMLAL_asimdelem_L           sqdmlal_advsimd_elt.xml
--- SQDMLSL_asimdelem_L           sqdmlsl_advsimd_elt.xml
--- SQDMULL_asimdelem_L           sqdmull_advsimd_elt.xml
--- UMLAL_asimdelem_L             umlal_advsimd_elt.xml
--- UMLSL_asimdelem_L             umlsl_advsimd_elt.xml
--- UMULL_asimdelem_L             umull_advsimd_elt.xml

type Logical_F174 = '[]
type Binary_F174  = '[]

decode_F174 :: Fn Logical_F174 a -> FnW Binary_F174 (Decode a)
decode_F174 f = return f

encode_F174 :: FnW Binary_F174 a -> Fn Logical_F174 (Encode a)
encode_F174 f = return f

parse_F174 :: Fn Logical_F174 a -> Parser a
parse_F174 f = ws >> return f

show_F174 :: Fn Logical_F174 (String, String)
show_F174 = simple $ ""


--- F175: '  { <Vt>.D, <Vt2>.D }[<index>], [<Xn|SP>], #16'
--- LD2_asisdlsop_D2_i2d          ld2_advsimd_sngl.xml
--- ST2_asisdlsop_D2_i2d          st2_advsimd_sngl.xml

type Logical_F175 = '[]
type Binary_F175  = '[]

decode_F175 :: Fn Logical_F175 a -> FnW Binary_F175 (Decode a)
decode_F175 f = return f

encode_F175 :: FnW Binary_F175 a -> Fn Logical_F175 (Encode a)
encode_F175 f = return f

parse_F175 :: Fn Logical_F175 a -> Parser a
parse_F175 f = ws >> return f

show_F175 :: Fn Logical_F175 (String, String)
show_F175 = simple $ ""


--- F176: '  { <Vt>.<T>, <Vt2>.<T>, <Vt3>.<T> }, [<Xn|SP>]'
--- LD1_asisdlse_R3_3v            ld1_advsimd_mult.xml
--- LD3_asisdlse_R3               ld3_advsimd_mult.xml
--- LD3R_asisdlso_R3              ld3r_advsimd.xml
--- ST1_asisdlse_R3_3v            st1_advsimd_mult.xml
--- ST3_asisdlse_R3               st3_advsimd_mult.xml

type Logical_F176 = '[]
type Binary_F176  = '[]

decode_F176 :: Fn Logical_F176 a -> FnW Binary_F176 (Decode a)
decode_F176 f = return f

encode_F176 :: FnW Binary_F176 a -> Fn Logical_F176 (Encode a)
encode_F176 f = return f

parse_F176 :: Fn Logical_F176 a -> Parser a
parse_F176 f = ws >> return f

show_F176 :: Fn Logical_F176 (String, String)
show_F176 = simple $ ""


--- F177: '  { <Vt>.B, <Vt2>.B }[<index>], [<Xn|SP>], <Xm>'
--- LD2_asisdlsop_BX2_r2b         ld2_advsimd_sngl.xml
--- ST2_asisdlsop_BX2_r2b         st2_advsimd_sngl.xml

type Logical_F177 = '[]
type Binary_F177  = '[]

decode_F177 :: Fn Logical_F177 a -> FnW Binary_F177 (Decode a)
decode_F177 f = return f

encode_F177 :: FnW Binary_F177 a -> Fn Logical_F177 (Encode a)
encode_F177 f = return f

parse_F177 :: Fn Logical_F177 a -> Parser a
parse_F177 f = ws >> return f

show_F177 :: Fn Logical_F177 (String, String)
show_F177 = simple $ ""


--- F178: '  { <Vt>.D, <Vt2>.D }[<index>], [<Xn|SP>], <Xm>'
--- LD2_asisdlsop_DX2_r2d         ld2_advsimd_sngl.xml
--- ST2_asisdlsop_DX2_r2d         st2_advsimd_sngl.xml

type Logical_F178 = '[]
type Binary_F178  = '[]

decode_F178 :: Fn Logical_F178 a -> FnW Binary_F178 (Decode a)
decode_F178 f = return f

encode_F178 :: FnW Binary_F178 a -> Fn Logical_F178 (Encode a)
encode_F178 f = return f

parse_F178 :: Fn Logical_F178 a -> Parser a
parse_F178 f = ws >> return f

show_F178 :: Fn Logical_F178 (String, String)
show_F178 = simple $ ""


--- F179: '  { <Vt>.H, <Vt2>.H }[<index>], [<Xn|SP>], <Xm>'
--- LD2_asisdlsop_HX2_r2h         ld2_advsimd_sngl.xml
--- ST2_asisdlsop_HX2_r2h         st2_advsimd_sngl.xml

type Logical_F179 = '[]
type Binary_F179  = '[]

decode_F179 :: Fn Logical_F179 a -> FnW Binary_F179 (Decode a)
decode_F179 f = return f

encode_F179 :: FnW Binary_F179 a -> Fn Logical_F179 (Encode a)
encode_F179 f = return f

parse_F179 :: Fn Logical_F179 a -> Parser a
parse_F179 f = ws >> return f

show_F179 :: Fn Logical_F179 (String, String)
show_F179 = simple $ ""


--- F180: '  { <Vt>.S, <Vt2>.S }[<index>], [<Xn|SP>], <Xm>'
--- LD2_asisdlsop_SX2_r2s         ld2_advsimd_sngl.xml
--- ST2_asisdlsop_SX2_r2s         st2_advsimd_sngl.xml

type Logical_F180 = '[]
type Binary_F180  = '[]

decode_F180 :: Fn Logical_F180 a -> FnW Binary_F180 (Decode a)
decode_F180 f = return f

encode_F180 :: FnW Binary_F180 a -> Fn Logical_F180 (Encode a)
encode_F180 f = return f

parse_F180 :: Fn Logical_F180 a -> Parser a
parse_F180 f = ws >> return f

show_F180 :: Fn Logical_F180 (String, String)
show_F180 = simple $ ""


--- F181: '  <Vd>.<Ta>, { <Vn>.16B, <Vn+1>.16B }, <Vm>.<Ta>'
--- TBL_asimdtbl_L2_2             tbl_advsimd.xml
--- TBX_asimdtbl_L2_2             tbx_advsimd.xml

type Logical_F181 = '[]
type Binary_F181  = '[]

decode_F181 :: Fn Logical_F181 a -> FnW Binary_F181 (Decode a)
decode_F181 f = return f

encode_F181 :: FnW Binary_F181 a -> Fn Logical_F181 (Encode a)
encode_F181 f = return f

parse_F181 :: Fn Logical_F181 a -> Parser a
parse_F181 f = ws >> return f

show_F181 :: Fn Logical_F181 (String, String)
show_F181 = simple $ ""


--- F182: '  { <Vt>.B, <Vt2>.B, <Vt3>.B }[<index>], [<Xn|SP>]'
--- LD3_asisdlso_B3_3b            ld3_advsimd_sngl.xml
--- ST3_asisdlso_B3_3b            st3_advsimd_sngl.xml

type Logical_F182 = '[]
type Binary_F182  = '[]

decode_F182 :: Fn Logical_F182 a -> FnW Binary_F182 (Decode a)
decode_F182 f = return f

encode_F182 :: FnW Binary_F182 a -> Fn Logical_F182 (Encode a)
encode_F182 f = return f

parse_F182 :: Fn Logical_F182 a -> Parser a
parse_F182 f = ws >> return f

show_F182 :: Fn Logical_F182 (String, String)
show_F182 = simple $ ""


--- F183: '  { <Vt>.D, <Vt2>.D, <Vt3>.D }[<index>], [<Xn|SP>]'
--- LD3_asisdlso_D3_3d            ld3_advsimd_sngl.xml
--- ST3_asisdlso_D3_3d            st3_advsimd_sngl.xml

type Logical_F183 = '[]
type Binary_F183  = '[]

decode_F183 :: Fn Logical_F183 a -> FnW Binary_F183 (Decode a)
decode_F183 f = return f

encode_F183 :: FnW Binary_F183 a -> Fn Logical_F183 (Encode a)
encode_F183 f = return f

parse_F183 :: Fn Logical_F183 a -> Parser a
parse_F183 f = ws >> return f

show_F183 :: Fn Logical_F183 (String, String)
show_F183 = simple $ ""


--- F184: '  { <Vt>.H, <Vt2>.H, <Vt3>.H }[<index>], [<Xn|SP>]'
--- LD3_asisdlso_H3_3h            ld3_advsimd_sngl.xml
--- ST3_asisdlso_H3_3h            st3_advsimd_sngl.xml

type Logical_F184 = '[]
type Binary_F184  = '[]

decode_F184 :: Fn Logical_F184 a -> FnW Binary_F184 (Decode a)
decode_F184 f = return f

encode_F184 :: FnW Binary_F184 a -> Fn Logical_F184 (Encode a)
encode_F184 f = return f

parse_F184 :: Fn Logical_F184 a -> Parser a
parse_F184 f = ws >> return f

show_F184 :: Fn Logical_F184 (String, String)
show_F184 = simple $ ""


--- F185: '  { <Vt>.S, <Vt2>.S, <Vt3>.S }[<index>], [<Xn|SP>]'
--- LD3_asisdlso_S3_3s            ld3_advsimd_sngl.xml
--- ST3_asisdlso_S3_3s            st3_advsimd_sngl.xml

type Logical_F185 = '[]
type Binary_F185  = '[]

decode_F185 :: Fn Logical_F185 a -> FnW Binary_F185 (Decode a)
decode_F185 f = return f

encode_F185 :: FnW Binary_F185 a -> Fn Logical_F185 (Encode a)
encode_F185 f = return f

parse_F185 :: Fn Logical_F185 a -> Parser a
parse_F185 f = ws >> return f

show_F185 :: Fn Logical_F185 (String, String)
show_F185 = simple $ ""


--- F186: '  <Bt>, [<Xn|SP>, (<Wm>|<Xm>), <extend> {<amount>}]'
--- LDR_B_ldst_regoff             ldr_reg_fpsimd.xml
--- STR_B_ldst_regoff             str_reg_fpsimd.xml

type Logical_F186 = '[]
type Binary_F186  = '[]

decode_F186 :: Fn Logical_F186 a -> FnW Binary_F186 (Decode a)
decode_F186 f = return f

encode_F186 :: FnW Binary_F186 a -> Fn Logical_F186 (Encode a)
encode_F186 f = return f

parse_F186 :: Fn Logical_F186 a -> Parser a
parse_F186 f = ws >> return f

show_F186 :: Fn Logical_F186 (String, String)
show_F186 = simple $ ""


--- F187: '  <Vd>.<T>, <Vn>.<T>, <Vm>.<Ts>[<index>], #<rotate>'
--- FCMLA_asimdelem_C_H           fcmla_advsimd_elt.xml
--- FCMLA_asimdelem_C_S           fcmla_advsimd_elt.xml

type Logical_F187 = '[]
type Binary_F187  = '[]

decode_F187 :: Fn Logical_F187 a -> FnW Binary_F187 (Decode a)
decode_F187 f = return f

encode_F187 :: FnW Binary_F187 a -> Fn Logical_F187 (Encode a)
encode_F187 f = return f

parse_F187 :: Fn Logical_F187 a -> Parser a
parse_F187 f = ws >> return f

show_F187 :: Fn Logical_F187 (String, String)
show_F187 = simple $ ""


--- F188: '  <Dt>, [<Xn|SP>, (<Wm>|<Xm>){, <extend> {<amount>}}]'
--- LDR_D_ldst_regoff             ldr_reg_fpsimd.xml
--- STR_D_ldst_regoff             str_reg_fpsimd.xml

type Logical_F188 = '[]
type Binary_F188  = '[]

decode_F188 :: Fn Logical_F188 a -> FnW Binary_F188 (Decode a)
decode_F188 f = return f

encode_F188 :: FnW Binary_F188 a -> Fn Logical_F188 (Encode a)
encode_F188 f = return f

parse_F188 :: Fn Logical_F188 a -> Parser a
parse_F188 f = ws >> return f

show_F188 :: Fn Logical_F188 (String, String)
show_F188 = simple $ ""


--- F189: '  <Ht>, [<Xn|SP>, (<Wm>|<Xm>){, <extend> {<amount>}}]'
--- LDR_H_ldst_regoff             ldr_reg_fpsimd.xml
--- STR_H_ldst_regoff             str_reg_fpsimd.xml

type Logical_F189 = '[]
type Binary_F189  = '[]

decode_F189 :: Fn Logical_F189 a -> FnW Binary_F189 (Decode a)
decode_F189 f = return f

encode_F189 :: FnW Binary_F189 a -> Fn Logical_F189 (Encode a)
encode_F189 f = return f

parse_F189 :: Fn Logical_F189 a -> Parser a
parse_F189 f = ws >> return f

show_F189 :: Fn Logical_F189 (String, String)
show_F189 = simple $ ""


--- F190: '  <Qt>, [<Xn|SP>, (<Wm>|<Xm>){, <extend> {<amount>}}]'
--- LDR_Q_ldst_regoff             ldr_reg_fpsimd.xml
--- STR_Q_ldst_regoff             str_reg_fpsimd.xml

type Logical_F190 = '[]
type Binary_F190  = '[]

decode_F190 :: Fn Logical_F190 a -> FnW Binary_F190 (Decode a)
decode_F190 f = return f

encode_F190 :: FnW Binary_F190 a -> Fn Logical_F190 (Encode a)
encode_F190 f = return f

parse_F190 :: Fn Logical_F190 a -> Parser a
parse_F190 f = ws >> return f

show_F190 :: Fn Logical_F190 (String, String)
show_F190 = simple $ ""


--- F191: '  <St>, [<Xn|SP>, (<Wm>|<Xm>){, <extend> {<amount>}}]'
--- LDR_S_ldst_regoff             ldr_reg_fpsimd.xml
--- STR_S_ldst_regoff             str_reg_fpsimd.xml

type Logical_F191 = '[]
type Binary_F191  = '[]

decode_F191 :: Fn Logical_F191 a -> FnW Binary_F191 (Decode a)
decode_F191 f = return f

encode_F191 :: FnW Binary_F191 a -> Fn Logical_F191 (Encode a)
encode_F191 f = return f

parse_F191 :: Fn Logical_F191 a -> Parser a
parse_F191 f = ws >> return f

show_F191 :: Fn Logical_F191 (String, String)
show_F191 = simple $ ""


--- F192: '  { <Vt>.<T>, <Vt2>.<T>, <Vt3>.<T> }, [<Xn|SP>], <Xm>'
--- LD1_asisdlsep_R3_r3           ld1_advsimd_mult.xml
--- LD3_asisdlsep_R3_r            ld3_advsimd_mult.xml
--- LD3R_asisdlsop_RX3_r          ld3r_advsimd.xml
--- ST1_asisdlsep_R3_r3           st1_advsimd_mult.xml
--- ST3_asisdlsep_R3_r            st3_advsimd_mult.xml

type Logical_F192 = '[]
type Binary_F192  = '[]

decode_F192 :: Fn Logical_F192 a -> FnW Binary_F192 (Decode a)
decode_F192 f = return f

encode_F192 :: FnW Binary_F192 a -> Fn Logical_F192 (Encode a)
encode_F192 f = return f

parse_F192 :: Fn Logical_F192 a -> Parser a
parse_F192 f = ws >> return f

show_F192 :: Fn Logical_F192 (String, String)
show_F192 = simple $ ""


--- F193: '  { <Vt>.<T>, <Vt2>.<T>, <Vt3>.<T> }, [<Xn|SP>], <imm>'
--- LD1_asisdlsep_I3_i3           ld1_advsimd_mult.xml
--- LD3_asisdlsep_I3_i            ld3_advsimd_mult.xml
--- LD3R_asisdlsop_R3_i           ld3r_advsimd.xml
--- ST1_asisdlsep_I3_i3           st1_advsimd_mult.xml
--- ST3_asisdlsep_I3_i            st3_advsimd_mult.xml

type Logical_F193 = '[]
type Binary_F193  = '[]

decode_F193 :: Fn Logical_F193 a -> FnW Binary_F193 (Decode a)
decode_F193 f = return f

encode_F193 :: FnW Binary_F193 a -> Fn Logical_F193 (Encode a)
encode_F193 f = return f

parse_F193 :: Fn Logical_F193 a -> Parser a
parse_F193 f = ws >> return f

show_F193 :: Fn Logical_F193 (String, String)
show_F193 = simple $ ""


--- F194: '  { <Vt>.B, <Vt2>.B, <Vt3>.B }[<index>], [<Xn|SP>], #3'
--- LD3_asisdlsop_B3_i3b          ld3_advsimd_sngl.xml
--- ST3_asisdlsop_B3_i3b          st3_advsimd_sngl.xml

type Logical_F194 = '[]
type Binary_F194  = '[]

decode_F194 :: Fn Logical_F194 a -> FnW Binary_F194 (Decode a)
decode_F194 f = return f

encode_F194 :: FnW Binary_F194 a -> Fn Logical_F194 (Encode a)
encode_F194 f = return f

parse_F194 :: Fn Logical_F194 a -> Parser a
parse_F194 f = ws >> return f

show_F194 :: Fn Logical_F194 (String, String)
show_F194 = simple $ ""


--- F195: '  { <Vt>.H, <Vt2>.H, <Vt3>.H }[<index>], [<Xn|SP>], #6'
--- LD3_asisdlsop_H3_i3h          ld3_advsimd_sngl.xml
--- ST3_asisdlsop_H3_i3h          st3_advsimd_sngl.xml

type Logical_F195 = '[]
type Binary_F195  = '[]

decode_F195 :: Fn Logical_F195 a -> FnW Binary_F195 (Decode a)
decode_F195 f = return f

encode_F195 :: FnW Binary_F195 a -> Fn Logical_F195 (Encode a)
encode_F195 f = return f

parse_F195 :: Fn Logical_F195 a -> Parser a
parse_F195 f = ws >> return f

show_F195 :: Fn Logical_F195 (String, String)
show_F195 = simple $ ""


--- F196: '  { <Vt>.D, <Vt2>.D, <Vt3>.D }[<index>], [<Xn|SP>], #24'
--- LD3_asisdlsop_D3_i3d          ld3_advsimd_sngl.xml
--- ST3_asisdlsop_D3_i3d          st3_advsimd_sngl.xml

type Logical_F196 = '[]
type Binary_F196  = '[]

decode_F196 :: Fn Logical_F196 a -> FnW Binary_F196 (Decode a)
decode_F196 f = return f

encode_F196 :: FnW Binary_F196 a -> Fn Logical_F196 (Encode a)
encode_F196 f = return f

parse_F196 :: Fn Logical_F196 a -> Parser a
parse_F196 f = ws >> return f

show_F196 :: Fn Logical_F196 (String, String)
show_F196 = simple $ ""


--- F197: '  { <Vt>.S, <Vt2>.S, <Vt3>.S }[<index>], [<Xn|SP>], #12'
--- LD3_asisdlsop_S3_i3s          ld3_advsimd_sngl.xml
--- ST3_asisdlsop_S3_i3s          st3_advsimd_sngl.xml

type Logical_F197 = '[]
type Binary_F197  = '[]

decode_F197 :: Fn Logical_F197 a -> FnW Binary_F197 (Decode a)
decode_F197 f = return f

encode_F197 :: FnW Binary_F197 a -> Fn Logical_F197 (Encode a)
encode_F197 f = return f

parse_F197 :: Fn Logical_F197 a -> Parser a
parse_F197 f = ws >> return f

show_F197 :: Fn Logical_F197 (String, String)
show_F197 = simple $ ""


--- F198: '  { <Vt>.B, <Vt2>.B, <Vt3>.B }[<index>], [<Xn|SP>], <Xm>'
--- LD3_asisdlsop_BX3_r3b         ld3_advsimd_sngl.xml
--- ST3_asisdlsop_BX3_r3b         st3_advsimd_sngl.xml

type Logical_F198 = '[]
type Binary_F198  = '[]

decode_F198 :: Fn Logical_F198 a -> FnW Binary_F198 (Decode a)
decode_F198 f = return f

encode_F198 :: FnW Binary_F198 a -> Fn Logical_F198 (Encode a)
encode_F198 f = return f

parse_F198 :: Fn Logical_F198 a -> Parser a
parse_F198 f = ws >> return f

show_F198 :: Fn Logical_F198 (String, String)
show_F198 = simple $ ""


--- F199: '  { <Vt>.D, <Vt2>.D, <Vt3>.D }[<index>], [<Xn|SP>], <Xm>'
--- LD3_asisdlsop_DX3_r3d         ld3_advsimd_sngl.xml
--- ST3_asisdlsop_DX3_r3d         st3_advsimd_sngl.xml

type Logical_F199 = '[]
type Binary_F199  = '[]

decode_F199 :: Fn Logical_F199 a -> FnW Binary_F199 (Decode a)
decode_F199 f = return f

encode_F199 :: FnW Binary_F199 a -> Fn Logical_F199 (Encode a)
encode_F199 f = return f

parse_F199 :: Fn Logical_F199 a -> Parser a
parse_F199 f = ws >> return f

show_F199 :: Fn Logical_F199 (String, String)
show_F199 = simple $ ""


--- F200: '  { <Vt>.H, <Vt2>.H, <Vt3>.H }[<index>], [<Xn|SP>], <Xm>'
--- LD3_asisdlsop_HX3_r3h         ld3_advsimd_sngl.xml
--- ST3_asisdlsop_HX3_r3h         st3_advsimd_sngl.xml

type Logical_F200 = '[]
type Binary_F200  = '[]

decode_F200 :: Fn Logical_F200 a -> FnW Binary_F200 (Decode a)
decode_F200 f = return f

encode_F200 :: FnW Binary_F200 a -> Fn Logical_F200 (Encode a)
encode_F200 f = return f

parse_F200 :: Fn Logical_F200 a -> Parser a
parse_F200 f = ws >> return f

show_F200 :: Fn Logical_F200 (String, String)
show_F200 = simple $ ""


--- F201: '  { <Vt>.S, <Vt2>.S, <Vt3>.S }[<index>], [<Xn|SP>], <Xm>'
--- LD3_asisdlsop_SX3_r3s         ld3_advsimd_sngl.xml
--- ST3_asisdlsop_SX3_r3s         st3_advsimd_sngl.xml

type Logical_F201 = '[]
type Binary_F201  = '[]

decode_F201 :: Fn Logical_F201 a -> FnW Binary_F201 (Decode a)
decode_F201 f = return f

encode_F201 :: FnW Binary_F201 a -> Fn Logical_F201 (Encode a)
encode_F201 f = return f

parse_F201 :: Fn Logical_F201 a -> Parser a
parse_F201 f = ws >> return f

show_F201 :: Fn Logical_F201 (String, String)
show_F201 = simple $ ""


--- F202: '  { <Vt>.<T>, <Vt2>.<T>, <Vt3>.<T>, <Vt4>.<T> }, [<Xn|SP>]'
--- LD1_asisdlse_R4_4v            ld1_advsimd_mult.xml
--- LD4_asisdlse_R4               ld4_advsimd_mult.xml
--- LD4R_asisdlso_R4              ld4r_advsimd.xml
--- ST1_asisdlse_R4_4v            st1_advsimd_mult.xml
--- ST4_asisdlse_R4               st4_advsimd_mult.xml

type Logical_F202 = '[]
type Binary_F202  = '[]

decode_F202 :: Fn Logical_F202 a -> FnW Binary_F202 (Decode a)
decode_F202 f = return f

encode_F202 :: FnW Binary_F202 a -> Fn Logical_F202 (Encode a)
encode_F202 f = return f

parse_F202 :: Fn Logical_F202 a -> Parser a
parse_F202 f = ws >> return f

show_F202 :: Fn Logical_F202 (String, String)
show_F202 = simple $ ""


--- F203: '  { <Vt>.B, <Vt2>.B, <Vt3>.B, <Vt4>.B }[<index>], [<Xn|SP>]'
--- LD4_asisdlso_B4_4b            ld4_advsimd_sngl.xml
--- ST4_asisdlso_B4_4b            st4_advsimd_sngl.xml

type Logical_F203 = '[]
type Binary_F203  = '[]

decode_F203 :: Fn Logical_F203 a -> FnW Binary_F203 (Decode a)
decode_F203 f = return f

encode_F203 :: FnW Binary_F203 a -> Fn Logical_F203 (Encode a)
encode_F203 f = return f

parse_F203 :: Fn Logical_F203 a -> Parser a
parse_F203 f = ws >> return f

show_F203 :: Fn Logical_F203 (String, String)
show_F203 = simple $ ""


--- F204: '  { <Vt>.D, <Vt2>.D, <Vt3>.D, <Vt4>.D }[<index>], [<Xn|SP>]'
--- LD4_asisdlso_D4_4d            ld4_advsimd_sngl.xml
--- ST4_asisdlso_D4_4d            st4_advsimd_sngl.xml

type Logical_F204 = '[]
type Binary_F204  = '[]

decode_F204 :: Fn Logical_F204 a -> FnW Binary_F204 (Decode a)
decode_F204 f = return f

encode_F204 :: FnW Binary_F204 a -> Fn Logical_F204 (Encode a)
encode_F204 f = return f

parse_F204 :: Fn Logical_F204 a -> Parser a
parse_F204 f = ws >> return f

show_F204 :: Fn Logical_F204 (String, String)
show_F204 = simple $ ""


--- F205: '  { <Vt>.H, <Vt2>.H, <Vt3>.H, <Vt4>.H }[<index>], [<Xn|SP>]'
--- LD4_asisdlso_H4_4h            ld4_advsimd_sngl.xml
--- ST4_asisdlso_H4_4h            st4_advsimd_sngl.xml

type Logical_F205 = '[]
type Binary_F205  = '[]

decode_F205 :: Fn Logical_F205 a -> FnW Binary_F205 (Decode a)
decode_F205 f = return f

encode_F205 :: FnW Binary_F205 a -> Fn Logical_F205 (Encode a)
encode_F205 f = return f

parse_F205 :: Fn Logical_F205 a -> Parser a
parse_F205 f = ws >> return f

show_F205 :: Fn Logical_F205 (String, String)
show_F205 = simple $ ""


--- F206: '  { <Vt>.S, <Vt2>.S, <Vt3>.S, <Vt4>.S }[<index>], [<Xn|SP>]'
--- LD4_asisdlso_S4_4s            ld4_advsimd_sngl.xml
--- ST4_asisdlso_S4_4s            st4_advsimd_sngl.xml

type Logical_F206 = '[]
type Binary_F206  = '[]

decode_F206 :: Fn Logical_F206 a -> FnW Binary_F206 (Decode a)
decode_F206 f = return f

encode_F206 :: FnW Binary_F206 a -> Fn Logical_F206 (Encode a)
encode_F206 f = return f

parse_F206 :: Fn Logical_F206 a -> Parser a
parse_F206 f = ws >> return f

show_F206 :: Fn Logical_F206 (String, String)
show_F206 = simple $ ""


--- F207: '  <Vd>.<Ta>, { <Vn>.16B, <Vn+1>.16B, <Vn+2>.16B }, <Vm>.<Ta>'
--- TBL_asimdtbl_L3_3             tbl_advsimd.xml
--- TBX_asimdtbl_L3_3             tbx_advsimd.xml

type Logical_F207 = '[]
type Binary_F207  = '[]

decode_F207 :: Fn Logical_F207 a -> FnW Binary_F207 (Decode a)
decode_F207 f = return f

encode_F207 :: FnW Binary_F207 a -> Fn Logical_F207 (Encode a)
encode_F207 f = return f

parse_F207 :: Fn Logical_F207 a -> Parser a
parse_F207 f = ws >> return f

show_F207 :: Fn Logical_F207 (String, String)
show_F207 = simple $ ""


--- F208: '  { <Vt>.B, <Vt2>.B, <Vt3>.B, <Vt4>.B }[<index>], [<Xn|SP>], #4'
--- LD4_asisdlsop_B4_i4b          ld4_advsimd_sngl.xml
--- ST4_asisdlsop_B4_i4b          st4_advsimd_sngl.xml

type Logical_F208 = '[]
type Binary_F208  = '[]

decode_F208 :: Fn Logical_F208 a -> FnW Binary_F208 (Decode a)
decode_F208 f = return f

encode_F208 :: FnW Binary_F208 a -> Fn Logical_F208 (Encode a)
encode_F208 f = return f

parse_F208 :: Fn Logical_F208 a -> Parser a
parse_F208 f = ws >> return f

show_F208 :: Fn Logical_F208 (String, String)
show_F208 = simple $ ""


--- F209: '  { <Vt>.H, <Vt2>.H, <Vt3>.H, <Vt4>.H }[<index>], [<Xn|SP>], #8'
--- LD4_asisdlsop_H4_i4h          ld4_advsimd_sngl.xml
--- ST4_asisdlsop_H4_i4h          st4_advsimd_sngl.xml

type Logical_F209 = '[]
type Binary_F209  = '[]

decode_F209 :: Fn Logical_F209 a -> FnW Binary_F209 (Decode a)
decode_F209 f = return f

encode_F209 :: FnW Binary_F209 a -> Fn Logical_F209 (Encode a)
encode_F209 f = return f

parse_F209 :: Fn Logical_F209 a -> Parser a
parse_F209 f = ws >> return f

show_F209 :: Fn Logical_F209 (String, String)
show_F209 = simple $ ""


--- F210: '  { <Vt>.<T>, <Vt2>.<T>, <Vt3>.<T>, <Vt4>.<T> }, [<Xn|SP>], <Xm>'
--- LD1_asisdlsep_R4_r4           ld1_advsimd_mult.xml
--- LD4_asisdlsep_R4_r            ld4_advsimd_mult.xml
--- LD4R_asisdlsop_RX4_r          ld4r_advsimd.xml
--- ST1_asisdlsep_R4_r4           st1_advsimd_mult.xml
--- ST4_asisdlsep_R4_r            st4_advsimd_mult.xml

type Logical_F210 = '[]
type Binary_F210  = '[]

decode_F210 :: Fn Logical_F210 a -> FnW Binary_F210 (Decode a)
decode_F210 f = return f

encode_F210 :: FnW Binary_F210 a -> Fn Logical_F210 (Encode a)
encode_F210 f = return f

parse_F210 :: Fn Logical_F210 a -> Parser a
parse_F210 f = ws >> return f

show_F210 :: Fn Logical_F210 (String, String)
show_F210 = simple $ ""


--- F211: '  { <Vt>.D, <Vt2>.D, <Vt3>.D, <Vt4>.D }[<index>], [<Xn|SP>], #32'
--- LD4_asisdlsop_D4_i4d          ld4_advsimd_sngl.xml
--- ST4_asisdlsop_D4_i4d          st4_advsimd_sngl.xml

type Logical_F211 = '[]
type Binary_F211  = '[]

decode_F211 :: Fn Logical_F211 a -> FnW Binary_F211 (Decode a)
decode_F211 f = return f

encode_F211 :: FnW Binary_F211 a -> Fn Logical_F211 (Encode a)
encode_F211 f = return f

parse_F211 :: Fn Logical_F211 a -> Parser a
parse_F211 f = ws >> return f

show_F211 :: Fn Logical_F211 (String, String)
show_F211 = simple $ ""


--- F212: '  { <Vt>.S, <Vt2>.S, <Vt3>.S, <Vt4>.S }[<index>], [<Xn|SP>], #16'
--- LD4_asisdlsop_S4_i4s          ld4_advsimd_sngl.xml
--- ST4_asisdlsop_S4_i4s          st4_advsimd_sngl.xml

type Logical_F212 = '[]
type Binary_F212  = '[]

decode_F212 :: Fn Logical_F212 a -> FnW Binary_F212 (Decode a)
decode_F212 f = return f

encode_F212 :: FnW Binary_F212 a -> Fn Logical_F212 (Encode a)
encode_F212 f = return f

parse_F212 :: Fn Logical_F212 a -> Parser a
parse_F212 f = ws >> return f

show_F212 :: Fn Logical_F212 (String, String)
show_F212 = simple $ ""


--- F213: '  { <Vt>.<T>, <Vt2>.<T>, <Vt3>.<T>, <Vt4>.<T> }, [<Xn|SP>], <imm>'
--- LD1_asisdlsep_I4_i4           ld1_advsimd_mult.xml
--- LD4_asisdlsep_I4_i            ld4_advsimd_mult.xml
--- LD4R_asisdlsop_R4_i           ld4r_advsimd.xml
--- ST1_asisdlsep_I4_i4           st1_advsimd_mult.xml
--- ST4_asisdlsep_I4_i            st4_advsimd_mult.xml

type Logical_F213 = '[]
type Binary_F213  = '[]

decode_F213 :: Fn Logical_F213 a -> FnW Binary_F213 (Decode a)
decode_F213 f = return f

encode_F213 :: FnW Binary_F213 a -> Fn Logical_F213 (Encode a)
encode_F213 f = return f

parse_F213 :: Fn Logical_F213 a -> Parser a
parse_F213 f = ws >> return f

show_F213 :: Fn Logical_F213 (String, String)
show_F213 = simple $ ""


--- F214: '  { <Vt>.B, <Vt2>.B, <Vt3>.B, <Vt4>.B }[<index>], [<Xn|SP>], <Xm>'
--- LD4_asisdlsop_BX4_r4b         ld4_advsimd_sngl.xml
--- ST4_asisdlsop_BX4_r4b         st4_advsimd_sngl.xml

type Logical_F214 = '[]
type Binary_F214  = '[]

decode_F214 :: Fn Logical_F214 a -> FnW Binary_F214 (Decode a)
decode_F214 f = return f

encode_F214 :: FnW Binary_F214 a -> Fn Logical_F214 (Encode a)
encode_F214 f = return f

parse_F214 :: Fn Logical_F214 a -> Parser a
parse_F214 f = ws >> return f

show_F214 :: Fn Logical_F214 (String, String)
show_F214 = simple $ ""


--- F215: '  { <Vt>.D, <Vt2>.D, <Vt3>.D, <Vt4>.D }[<index>], [<Xn|SP>], <Xm>'
--- LD4_asisdlsop_DX4_r4d         ld4_advsimd_sngl.xml
--- ST4_asisdlsop_DX4_r4d         st4_advsimd_sngl.xml

type Logical_F215 = '[]
type Binary_F215  = '[]

decode_F215 :: Fn Logical_F215 a -> FnW Binary_F215 (Decode a)
decode_F215 f = return f

encode_F215 :: FnW Binary_F215 a -> Fn Logical_F215 (Encode a)
encode_F215 f = return f

parse_F215 :: Fn Logical_F215 a -> Parser a
parse_F215 f = ws >> return f

show_F215 :: Fn Logical_F215 (String, String)
show_F215 = simple $ ""


--- F216: '  { <Vt>.H, <Vt2>.H, <Vt3>.H, <Vt4>.H }[<index>], [<Xn|SP>], <Xm>'
--- LD4_asisdlsop_HX4_r4h         ld4_advsimd_sngl.xml
--- ST4_asisdlsop_HX4_r4h         st4_advsimd_sngl.xml

type Logical_F216 = '[]
type Binary_F216  = '[]

decode_F216 :: Fn Logical_F216 a -> FnW Binary_F216 (Decode a)
decode_F216 f = return f

encode_F216 :: FnW Binary_F216 a -> Fn Logical_F216 (Encode a)
encode_F216 f = return f

parse_F216 :: Fn Logical_F216 a -> Parser a
parse_F216 f = ws >> return f

show_F216 :: Fn Logical_F216 (String, String)
show_F216 = simple $ ""


--- F217: '  { <Vt>.S, <Vt2>.S, <Vt3>.S, <Vt4>.S }[<index>], [<Xn|SP>], <Xm>'
--- LD4_asisdlsop_SX4_r4s         ld4_advsimd_sngl.xml
--- ST4_asisdlsop_SX4_r4s         st4_advsimd_sngl.xml

type Logical_F217 = '[]
type Binary_F217  = '[]

decode_F217 :: Fn Logical_F217 a -> FnW Binary_F217 (Decode a)
decode_F217 f = return f

encode_F217 :: FnW Binary_F217 a -> Fn Logical_F217 (Encode a)
encode_F217 f = return f

parse_F217 :: Fn Logical_F217 a -> Parser a
parse_F217 f = ws >> return f

show_F217 :: Fn Logical_F217 (String, String)
show_F217 = simple $ ""


--- F218: '  <Vd>.<Ta>, { <Vn>.16B, <Vn+1>.16B, <Vn+2>.16B, <Vn+3>.16B }, <Vm>.<Ta>'
--- TBL_asimdtbl_L4_4             tbl_advsimd.xml
--- TBX_asimdtbl_L4_4             tbx_advsimd.xml

type Logical_F218 = '[]
type Binary_F218  = '[]

decode_F218 :: Fn Logical_F218 a -> FnW Binary_F218 (Decode a)
decode_F218 f = return f

encode_F218 :: FnW Binary_F218 a -> Fn Logical_F218 (Encode a)
encode_F218 f = return f

parse_F218 :: Fn Logical_F218 a -> Parser a
parse_F218 f = ws >> return f

show_F218 :: Fn Logical_F218 (String, String)
show_F218 = simple $ ""

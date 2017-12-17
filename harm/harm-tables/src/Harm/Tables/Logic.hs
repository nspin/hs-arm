module Harm.Tables.Logic where

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
decode_000 :: (a) -> a
decode_000 f = f
encode_000 :: (a) -> a
encode_000 f = f
parse_000 :: (a) -> Parser a
parse_000 f = return f
show_000 :: ShowS
show_000 = id

-- '  #<imm>'
-- BRK_EX_exception    brk.xml
-- HINT_1              hint.xml
-- HINT_2              hint.xml
-- HINT_3              hint.xml
-- HLT_EX_exception    hlt.xml
-- HVC_EX_exception    hvc.xml
-- SMC_EX_exception    smc.xml
-- SVC_EX_exception    svc.xml
decode_001 :: (a) -> a
decode_001 f = f
encode_001 :: (a) -> a
encode_001 f = f
parse_001 :: (a) -> Parser a
parse_001 f = return f
show_001 :: ShowS
show_001 = id

-- '  #<op1>, <Cn>, <Cm>, #<op2>{, <Xt>}'
-- SYS_CR_system       sys.xml
decode_002 :: (a) -> a
decode_002 f = f
encode_002 :: (a) -> a
encode_002 f = f
parse_002 :: (a) -> Parser a
parse_002 f = return f
show_002 :: ShowS
show_002 = id

-- '  (<prfop>|#<imm5>), <label>'
-- PRFM_P_loadlit      prfm_lit.xml
decode_003 :: (a) -> a
decode_003 f = f
encode_003 :: (a) -> a
encode_003 f = f
parse_003 :: (a) -> Parser a
parse_003 f = return f
show_003 :: ShowS
show_003 = id

-- '  (<prfop>|#<imm5>), [<Xn|SP>, (<Wm>|<Xm>){, <extend> {<amount>}}]'
-- PRFM_P_ldst_regoff  prfm_reg.xml
decode_004 :: (a) -> a
decode_004 f = f
encode_004 :: (a) -> a
encode_004 f = f
parse_004 :: (a) -> Parser a
parse_004 f = return f
show_004 :: ShowS
show_004 = id

-- '  (<prfop>|#<imm5>), [<Xn|SP>{, #<pimm>}]'
-- PRFM_P_ldst_pos     prfm_imm.xml
decode_005 :: (a) -> a
decode_005 f = f
encode_005 :: (a) -> a
encode_005 f = f
parse_005 :: (a) -> Parser a
parse_005 f = return f
show_005 :: ShowS
show_005 = id

-- '  (<systemreg>|S<op0>_<op1>_<Cn>_<Cm>_<op2>), <Xt>'
-- MSR_SR_system       msr_reg.xml
decode_006 :: (a) -> a
decode_006 f = f
encode_006 :: (a) -> a
encode_006 f = f
parse_006 :: (a) -> Parser a
parse_006 f = return f
show_006 :: ShowS
show_006 = id

-- '  <Bt>, [<Xn|SP>, #<simm>]!'
-- LDR_B_ldst_immpre   ldr_imm_fpsimd.xml
-- STR_B_ldst_immpre   str_imm_fpsimd.xml
decode_007 :: (a) -> a
decode_007 f = f
encode_007 :: (a) -> a
encode_007 f = f
parse_007 :: (a) -> Parser a
parse_007 f = return f
show_007 :: ShowS
show_007 = id

-- '  <Bt>, [<Xn|SP>, (<Wm>|<Xm>), <extend> {<amount>}]'
-- LDR_B_ldst_regoff   ldr_reg_fpsimd.xml
-- STR_B_ldst_regoff   str_reg_fpsimd.xml
decode_008 :: (a) -> a
decode_008 f = f
encode_008 :: (a) -> a
encode_008 f = f
parse_008 :: (a) -> Parser a
parse_008 f = return f
show_008 :: ShowS
show_008 = id

-- '  <Bt>, [<Xn|SP>, <Xm>{, LSL <amount>}]'
-- LDR_BL_ldst_regoff  ldr_reg_fpsimd.xml
-- STR_BL_ldst_regoff  str_reg_fpsimd.xml
decode_009 :: (a) -> a
decode_009 f = f
encode_009 :: (a) -> a
encode_009 f = f
parse_009 :: (a) -> Parser a
parse_009 f = return f
show_009 :: ShowS
show_009 = id

-- '  <Bt>, [<Xn|SP>], #<simm>'
-- LDR_B_ldst_immpost  ldr_imm_fpsimd.xml
-- STR_B_ldst_immpost  str_imm_fpsimd.xml
decode_010 :: (a) -> a
decode_010 f = f
encode_010 :: (a) -> a
encode_010 f = f
parse_010 :: (a) -> Parser a
parse_010 f = return f
show_010 :: ShowS
show_010 = id

-- '  <Bt>, [<Xn|SP>{, #<pimm>}]'
-- LDR_B_ldst_pos      ldr_imm_fpsimd.xml
-- STR_B_ldst_pos      str_imm_fpsimd.xml
decode_011 :: (a) -> a
decode_011 f = f
encode_011 :: (a) -> a
encode_011 f = f
parse_011 :: (a) -> Parser a
parse_011 f = return f
show_011 :: ShowS
show_011 = id

-- '  <Bt>, [<Xn|SP>{, #<simm>}]'
-- LDUR_B_ldst_unscaledldur_fpsimd.xml
-- STUR_B_ldst_unscaledstur_fpsimd.xml
decode_012 :: (a) -> a
decode_012 f = f
encode_012 :: (a) -> a
encode_012 f = f
parse_012 :: (a) -> Parser a
parse_012 f = return f
show_012 :: ShowS
show_012 = id

-- '  <Dd>, #<imm>'
-- FMOV_D_floatimm     fmov_float_imm.xml
-- MOVI_asimdimm_D_ds  movi_advsimd.xml
decode_013 :: (a) -> a
decode_013 f = f
encode_013 :: (a) -> a
encode_013 f = f
parse_013 :: (a) -> Parser a
parse_013 f = return f
show_013 :: ShowS
show_013 = id

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
decode_014 :: (a) -> a
decode_014 f = f
encode_014 :: (a) -> a
encode_014 f = f
parse_014 :: (a) -> Parser a
parse_014 f = return f
show_014 :: ShowS
show_014 = id

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
decode_015 :: (a) -> a
decode_015 f = f
encode_015 :: (a) -> a
encode_015 f = f
parse_015 :: (a) -> Parser a
parse_015 f = return f
show_015 :: ShowS
show_015 = id

-- '  <Dd>, <Dn>, <Dm>, <Da>'
-- FMADD_D_floatdp3    fmadd_float.xml
-- FMSUB_D_floatdp3    fmsub_float.xml
-- FNMADD_D_floatdp3   fnmadd_float.xml
-- FNMSUB_D_floatdp3   fnmsub_float.xml
decode_016 :: (a) -> a
decode_016 f = f
encode_016 :: (a) -> a
encode_016 f = f
parse_016 :: (a) -> Parser a
parse_016 f = return f
show_016 :: ShowS
show_016 = id

-- '  <Dd>, <Dn>, <Dm>, <cond>'
-- FCSEL_D_floatsel    fcsel_float.xml
decode_017 :: (a) -> a
decode_017 f = f
encode_017 :: (a) -> a
encode_017 f = f
parse_017 :: (a) -> Parser a
parse_017 f = return f
show_017 :: ShowS
show_017 = id

-- '  <Dd>, <Hn>'
-- FCVT_DH_floatdp1    fcvt_float.xml
decode_018 :: (a) -> a
decode_018 f = f
encode_018 :: (a) -> a
encode_018 f = f
parse_018 :: (a) -> Parser a
parse_018 f = return f
show_018 :: ShowS
show_018 = id

-- '  <Dd>, <Sn>'
-- FCVT_DS_floatdp1    fcvt_float.xml
decode_019 :: (a) -> a
decode_019 f = f
encode_019 :: (a) -> a
encode_019 f = f
parse_019 :: (a) -> Parser a
parse_019 f = return f
show_019 :: ShowS
show_019 = id

-- '  <Dd>, <Wn>'
-- SCVTF_D32_float2int scvtf_float_int.xml
-- UCVTF_D32_float2int ucvtf_float_int.xml
decode_020 :: (a) -> a
decode_020 f = f
encode_020 :: (a) -> a
encode_020 f = f
parse_020 :: (a) -> Parser a
parse_020 f = return f
show_020 :: ShowS
show_020 = id

-- '  <Dd>, <Wn>, #<fbits>'
-- SCVTF_D32_float2fix scvtf_float_fix.xml
-- UCVTF_D32_float2fix ucvtf_float_fix.xml
decode_021 :: (a) -> a
decode_021 f = f
encode_021 :: (a) -> a
encode_021 f = f
parse_021 :: (a) -> Parser a
parse_021 f = return f
show_021 :: ShowS
show_021 = id

-- '  <Dd>, <Xn>'
-- FMOV_D64_float2int  fmov_float_gen.xml
-- SCVTF_D64_float2int scvtf_float_int.xml
-- UCVTF_D64_float2int ucvtf_float_int.xml
decode_022 :: (a) -> a
decode_022 f = f
encode_022 :: (a) -> a
encode_022 f = f
parse_022 :: (a) -> Parser a
parse_022 f = return f
show_022 :: ShowS
show_022 = id

-- '  <Dd>, <Xn>, #<fbits>'
-- SCVTF_D64_float2fix scvtf_float_fix.xml
-- UCVTF_D64_float2fix ucvtf_float_fix.xml
decode_023 :: (a) -> a
decode_023 f = f
encode_023 :: (a) -> a
encode_023 f = f
parse_023 :: (a) -> Parser a
parse_023 f = return f
show_023 :: ShowS
show_023 = id

-- '  <Dn>, #0.0'
-- FCMP_DZ_floatcmp    fcmp_float.xml
-- FCMPE_DZ_floatcmp   fcmpe_float.xml
decode_024 :: (a) -> a
decode_024 f = f
encode_024 :: (a) -> a
encode_024 f = f
parse_024 :: (a) -> Parser a
parse_024 f = return f
show_024 :: ShowS
show_024 = id

-- '  <Dn>, <Dm>'
-- FCMP_D_floatcmp     fcmp_float.xml
-- FCMPE_D_floatcmp    fcmpe_float.xml
decode_025 :: (a) -> a
decode_025 f = f
encode_025 :: (a) -> a
encode_025 f = f
parse_025 :: (a) -> Parser a
parse_025 f = return f
show_025 :: ShowS
show_025 = id

-- '  <Dn>, <Dm>, #<nzcv>, <cond>'
-- FCCMP_D_floatccmp   fccmp_float.xml
-- FCCMPE_D_floatccmp  fccmpe_float.xml
decode_026 :: (a) -> a
decode_026 f = f
encode_026 :: (a) -> a
encode_026 f = f
parse_026 :: (a) -> Parser a
parse_026 f = return f
show_026 :: ShowS
show_026 = id

-- '  <Dt1>, <Dt2>, [<Xn|SP>, #<imm>]!'
-- LDP_D_ldstpair_pre  ldp_fpsimd.xml
-- STP_D_ldstpair_pre  stp_fpsimd.xml
decode_027 :: (a) -> a
decode_027 f = f
encode_027 :: (a) -> a
encode_027 f = f
parse_027 :: (a) -> Parser a
parse_027 f = return f
show_027 :: ShowS
show_027 = id

-- '  <Dt1>, <Dt2>, [<Xn|SP>], #<imm>'
-- LDP_D_ldstpair_post ldp_fpsimd.xml
-- STP_D_ldstpair_post stp_fpsimd.xml
decode_028 :: (a) -> a
decode_028 f = f
encode_028 :: (a) -> a
encode_028 f = f
parse_028 :: (a) -> Parser a
parse_028 f = return f
show_028 :: ShowS
show_028 = id

-- '  <Dt1>, <Dt2>, [<Xn|SP>{, #<imm>}]'
-- LDNP_D_ldstnapair_offsldnp_fpsimd.xml
-- LDP_D_ldstpair_off  ldp_fpsimd.xml
-- STNP_D_ldstnapair_offsstnp_fpsimd.xml
-- STP_D_ldstpair_off  stp_fpsimd.xml
decode_029 :: (a) -> a
decode_029 f = f
encode_029 :: (a) -> a
encode_029 f = f
parse_029 :: (a) -> Parser a
parse_029 f = return f
show_029 :: ShowS
show_029 = id

-- '  <Dt>, <label>'
-- LDR_D_loadlit       ldr_lit_fpsimd.xml
decode_030 :: (a) -> a
decode_030 f = f
encode_030 :: (a) -> a
encode_030 f = f
parse_030 :: (a) -> Parser a
parse_030 f = return f
show_030 :: ShowS
show_030 = id

-- '  <Dt>, [<Xn|SP>, #<simm>]!'
-- LDR_D_ldst_immpre   ldr_imm_fpsimd.xml
-- STR_D_ldst_immpre   str_imm_fpsimd.xml
decode_031 :: (a) -> a
decode_031 f = f
encode_031 :: (a) -> a
encode_031 f = f
parse_031 :: (a) -> Parser a
parse_031 f = return f
show_031 :: ShowS
show_031 = id

-- '  <Dt>, [<Xn|SP>, (<Wm>|<Xm>){, <extend> {<amount>}}]'
-- LDR_D_ldst_regoff   ldr_reg_fpsimd.xml
-- STR_D_ldst_regoff   str_reg_fpsimd.xml
decode_032 :: (a) -> a
decode_032 f = f
encode_032 :: (a) -> a
encode_032 f = f
parse_032 :: (a) -> Parser a
parse_032 f = return f
show_032 :: ShowS
show_032 = id

-- '  <Dt>, [<Xn|SP>], #<simm>'
-- LDR_D_ldst_immpost  ldr_imm_fpsimd.xml
-- STR_D_ldst_immpost  str_imm_fpsimd.xml
decode_033 :: (a) -> a
decode_033 f = f
encode_033 :: (a) -> a
encode_033 f = f
parse_033 :: (a) -> Parser a
parse_033 f = return f
show_033 :: ShowS
show_033 = id

-- '  <Dt>, [<Xn|SP>{, #<pimm>}]'
-- LDR_D_ldst_pos      ldr_imm_fpsimd.xml
-- STR_D_ldst_pos      str_imm_fpsimd.xml
decode_034 :: (a) -> a
decode_034 f = f
encode_034 :: (a) -> a
encode_034 f = f
parse_034 :: (a) -> Parser a
parse_034 f = return f
show_034 :: ShowS
show_034 = id

-- '  <Dt>, [<Xn|SP>{, #<simm>}]'
-- LDUR_D_ldst_unscaledldur_fpsimd.xml
-- STUR_D_ldst_unscaledstur_fpsimd.xml
decode_035 :: (a) -> a
decode_035 f = f
encode_035 :: (a) -> a
encode_035 f = f
parse_035 :: (a) -> Parser a
parse_035 f = return f
show_035 :: ShowS
show_035 = id

-- '  <Hd>, #<imm>'
-- FMOV_H_floatimm     fmov_float_imm.xml
decode_036 :: (a) -> a
decode_036 f = f
encode_036 :: (a) -> a
encode_036 f = f
parse_036 :: (a) -> Parser a
parse_036 f = return f
show_036 :: ShowS
show_036 = id

-- '  <Hd>, <Dn>'
-- FCVT_HD_floatdp1    fcvt_float.xml
decode_037 :: (a) -> a
decode_037 f = f
encode_037 :: (a) -> a
encode_037 f = f
parse_037 :: (a) -> Parser a
parse_037 f = return f
show_037 :: ShowS
show_037 = id

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
decode_038 :: (a) -> a
decode_038 f = f
encode_038 :: (a) -> a
encode_038 f = f
parse_038 :: (a) -> Parser a
parse_038 f = return f
show_038 :: ShowS
show_038 = id

-- '  <Hd>, <Hn>, #0.0'
-- FCMEQ_asisdmiscfp16_FZfcmeq_advsimd_zero.xml
-- FCMGE_asisdmiscfp16_FZfcmge_advsimd_zero.xml
-- FCMGT_asisdmiscfp16_FZfcmgt_advsimd_zero.xml
-- FCMLE_asisdmiscfp16_FZfcmle_advsimd.xml
-- FCMLT_asisdmiscfp16_FZfcmlt_advsimd.xml
decode_039 :: (a) -> a
decode_039 f = f
encode_039 :: (a) -> a
encode_039 f = f
parse_039 :: (a) -> Parser a
parse_039 f = return f
show_039 :: ShowS
show_039 = id

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
decode_040 :: (a) -> a
decode_040 f = f
encode_040 :: (a) -> a
encode_040 f = f
parse_040 :: (a) -> Parser a
parse_040 f = return f
show_040 :: ShowS
show_040 = id

-- '  <Hd>, <Hn>, <Hm>, <Ha>'
-- FMADD_H_floatdp3    fmadd_float.xml
-- FMSUB_H_floatdp3    fmsub_float.xml
-- FNMADD_H_floatdp3   fnmadd_float.xml
-- FNMSUB_H_floatdp3   fnmsub_float.xml
decode_041 :: (a) -> a
decode_041 f = f
encode_041 :: (a) -> a
encode_041 f = f
parse_041 :: (a) -> Parser a
parse_041 f = return f
show_041 :: ShowS
show_041 = id

-- '  <Hd>, <Hn>, <Hm>, <cond>'
-- FCSEL_H_floatsel    fcsel_float.xml
decode_042 :: (a) -> a
decode_042 f = f
encode_042 :: (a) -> a
encode_042 f = f
parse_042 :: (a) -> Parser a
parse_042 f = return f
show_042 :: ShowS
show_042 = id

-- '  <Hd>, <Hn>, <Vm>.H[<index>]'
-- FMLA_asisdelem_RH_H fmla_advsimd_elt.xml
-- FMLS_asisdelem_RH_H fmls_advsimd_elt.xml
-- FMUL_asisdelem_RH_H fmul_advsimd_elt.xml
-- FMULX_asisdelem_RH_Hfmulx_advsimd_elt.xml
decode_043 :: (a) -> a
decode_043 f = f
encode_043 :: (a) -> a
encode_043 f = f
parse_043 :: (a) -> Parser a
parse_043 f = return f
show_043 :: ShowS
show_043 = id

-- '  <Hd>, <Sn>'
-- FCVT_HS_floatdp1    fcvt_float.xml
decode_044 :: (a) -> a
decode_044 f = f
encode_044 :: (a) -> a
encode_044 f = f
parse_044 :: (a) -> Parser a
parse_044 f = return f
show_044 :: ShowS
show_044 = id

-- '  <Hd>, <Wn>'
-- FMOV_H32_float2int  fmov_float_gen.xml
-- SCVTF_H32_float2int scvtf_float_int.xml
-- UCVTF_H32_float2int ucvtf_float_int.xml
decode_045 :: (a) -> a
decode_045 f = f
encode_045 :: (a) -> a
encode_045 f = f
parse_045 :: (a) -> Parser a
parse_045 f = return f
show_045 :: ShowS
show_045 = id

-- '  <Hd>, <Wn>, #<fbits>'
-- SCVTF_H32_float2fix scvtf_float_fix.xml
-- UCVTF_H32_float2fix ucvtf_float_fix.xml
decode_046 :: (a) -> a
decode_046 f = f
encode_046 :: (a) -> a
encode_046 f = f
parse_046 :: (a) -> Parser a
parse_046 f = return f
show_046 :: ShowS
show_046 = id

-- '  <Hd>, <Xn>'
-- FMOV_H64_float2int  fmov_float_gen.xml
-- SCVTF_H64_float2int scvtf_float_int.xml
-- UCVTF_H64_float2int ucvtf_float_int.xml
decode_047 :: (a) -> a
decode_047 f = f
encode_047 :: (a) -> a
encode_047 f = f
parse_047 :: (a) -> Parser a
parse_047 f = return f
show_047 :: ShowS
show_047 = id

-- '  <Hd>, <Xn>, #<fbits>'
-- SCVTF_H64_float2fix scvtf_float_fix.xml
-- UCVTF_H64_float2fix ucvtf_float_fix.xml
decode_048 :: (a) -> a
decode_048 f = f
encode_048 :: (a) -> a
encode_048 f = f
parse_048 :: (a) -> Parser a
parse_048 f = return f
show_048 :: ShowS
show_048 = id

-- '  <Hn>, #0.0'
-- FCMP_HZ_floatcmp    fcmp_float.xml
-- FCMPE_HZ_floatcmp   fcmpe_float.xml
decode_049 :: (a) -> a
decode_049 f = f
encode_049 :: (a) -> a
encode_049 f = f
parse_049 :: (a) -> Parser a
parse_049 f = return f
show_049 :: ShowS
show_049 = id

-- '  <Hn>, <Hm>'
-- FCMP_H_floatcmp     fcmp_float.xml
-- FCMPE_H_floatcmp    fcmpe_float.xml
decode_050 :: (a) -> a
decode_050 f = f
encode_050 :: (a) -> a
encode_050 f = f
parse_050 :: (a) -> Parser a
parse_050 f = return f
show_050 :: ShowS
show_050 = id

-- '  <Hn>, <Hm>, #<nzcv>, <cond>'
-- FCCMP_H_floatccmp   fccmp_float.xml
-- FCCMPE_H_floatccmp  fccmpe_float.xml
decode_051 :: (a) -> a
decode_051 f = f
encode_051 :: (a) -> a
encode_051 f = f
parse_051 :: (a) -> Parser a
parse_051 f = return f
show_051 :: ShowS
show_051 = id

-- '  <Ht>, [<Xn|SP>, #<simm>]!'
-- LDR_H_ldst_immpre   ldr_imm_fpsimd.xml
-- STR_H_ldst_immpre   str_imm_fpsimd.xml
decode_052 :: (a) -> a
decode_052 f = f
encode_052 :: (a) -> a
encode_052 f = f
parse_052 :: (a) -> Parser a
parse_052 f = return f
show_052 :: ShowS
show_052 = id

-- '  <Ht>, [<Xn|SP>, (<Wm>|<Xm>){, <extend> {<amount>}}]'
-- LDR_H_ldst_regoff   ldr_reg_fpsimd.xml
-- STR_H_ldst_regoff   str_reg_fpsimd.xml
decode_053 :: (a) -> a
decode_053 f = f
encode_053 :: (a) -> a
encode_053 f = f
parse_053 :: (a) -> Parser a
parse_053 f = return f
show_053 :: ShowS
show_053 = id

-- '  <Ht>, [<Xn|SP>], #<simm>'
-- LDR_H_ldst_immpost  ldr_imm_fpsimd.xml
-- STR_H_ldst_immpost  str_imm_fpsimd.xml
decode_054 :: (a) -> a
decode_054 f = f
encode_054 :: (a) -> a
encode_054 f = f
parse_054 :: (a) -> Parser a
parse_054 f = return f
show_054 :: ShowS
show_054 = id

-- '  <Ht>, [<Xn|SP>{, #<pimm>}]'
-- LDR_H_ldst_pos      ldr_imm_fpsimd.xml
-- STR_H_ldst_pos      str_imm_fpsimd.xml
decode_055 :: (a) -> a
decode_055 f = f
encode_055 :: (a) -> a
encode_055 f = f
parse_055 :: (a) -> Parser a
parse_055 f = return f
show_055 :: ShowS
show_055 = id

-- '  <Ht>, [<Xn|SP>{, #<simm>}]'
-- LDUR_H_ldst_unscaledldur_fpsimd.xml
-- STUR_H_ldst_unscaledstur_fpsimd.xml
decode_056 :: (a) -> a
decode_056 f = f
encode_056 :: (a) -> a
encode_056 f = f
parse_056 :: (a) -> Parser a
parse_056 f = return f
show_056 :: ShowS
show_056 = id

-- '  <Qd>, <Qn>, <Vm>.2D'
-- SHA512H_QQV_cryptosha512_3sha512h_advsimd.xml
-- SHA512H2_QQV_cryptosha512_3sha512h2_advsimd.xml
decode_057 :: (a) -> a
decode_057 f = f
encode_057 :: (a) -> a
encode_057 f = f
parse_057 :: (a) -> Parser a
parse_057 f = return f
show_057 :: ShowS
show_057 = id

-- '  <Qd>, <Qn>, <Vm>.4S'
-- SHA256H_QQV_cryptosha3sha256h_advsimd.xml
-- SHA256H2_QQV_cryptosha3sha256h2_advsimd.xml
decode_058 :: (a) -> a
decode_058 f = f
encode_058 :: (a) -> a
encode_058 f = f
parse_058 :: (a) -> Parser a
parse_058 f = return f
show_058 :: ShowS
show_058 = id

-- '  <Qd>, <Sn>, <Vm>.4S'
-- SHA1C_QSV_cryptosha3sha1c_advsimd.xml
-- SHA1M_QSV_cryptosha3sha1m_advsimd.xml
-- SHA1P_QSV_cryptosha3sha1p_advsimd.xml
decode_059 :: (a) -> a
decode_059 f = f
encode_059 :: (a) -> a
encode_059 f = f
parse_059 :: (a) -> Parser a
parse_059 f = return f
show_059 :: ShowS
show_059 = id

-- '  <Qt1>, <Qt2>, [<Xn|SP>, #<imm>]!'
-- LDP_Q_ldstpair_pre  ldp_fpsimd.xml
-- STP_Q_ldstpair_pre  stp_fpsimd.xml
decode_060 :: (a) -> a
decode_060 f = f
encode_060 :: (a) -> a
encode_060 f = f
parse_060 :: (a) -> Parser a
parse_060 f = return f
show_060 :: ShowS
show_060 = id

-- '  <Qt1>, <Qt2>, [<Xn|SP>], #<imm>'
-- LDP_Q_ldstpair_post ldp_fpsimd.xml
-- STP_Q_ldstpair_post stp_fpsimd.xml
decode_061 :: (a) -> a
decode_061 f = f
encode_061 :: (a) -> a
encode_061 f = f
parse_061 :: (a) -> Parser a
parse_061 f = return f
show_061 :: ShowS
show_061 = id

-- '  <Qt1>, <Qt2>, [<Xn|SP>{, #<imm>}]'
-- LDNP_Q_ldstnapair_offsldnp_fpsimd.xml
-- LDP_Q_ldstpair_off  ldp_fpsimd.xml
-- STNP_Q_ldstnapair_offsstnp_fpsimd.xml
-- STP_Q_ldstpair_off  stp_fpsimd.xml
decode_062 :: (a) -> a
decode_062 f = f
encode_062 :: (a) -> a
encode_062 f = f
parse_062 :: (a) -> Parser a
parse_062 f = return f
show_062 :: ShowS
show_062 = id

-- '  <Qt>, <label>'
-- LDR_Q_loadlit       ldr_lit_fpsimd.xml
decode_063 :: (a) -> a
decode_063 f = f
encode_063 :: (a) -> a
encode_063 f = f
parse_063 :: (a) -> Parser a
parse_063 f = return f
show_063 :: ShowS
show_063 = id

-- '  <Qt>, [<Xn|SP>, #<simm>]!'
-- LDR_Q_ldst_immpre   ldr_imm_fpsimd.xml
-- STR_Q_ldst_immpre   str_imm_fpsimd.xml
decode_064 :: (a) -> a
decode_064 f = f
encode_064 :: (a) -> a
encode_064 f = f
parse_064 :: (a) -> Parser a
parse_064 f = return f
show_064 :: ShowS
show_064 = id

-- '  <Qt>, [<Xn|SP>, (<Wm>|<Xm>){, <extend> {<amount>}}]'
-- LDR_Q_ldst_regoff   ldr_reg_fpsimd.xml
-- STR_Q_ldst_regoff   str_reg_fpsimd.xml
decode_065 :: (a) -> a
decode_065 f = f
encode_065 :: (a) -> a
encode_065 f = f
parse_065 :: (a) -> Parser a
parse_065 f = return f
show_065 :: ShowS
show_065 = id

-- '  <Qt>, [<Xn|SP>], #<simm>'
-- LDR_Q_ldst_immpost  ldr_imm_fpsimd.xml
-- STR_Q_ldst_immpost  str_imm_fpsimd.xml
decode_066 :: (a) -> a
decode_066 f = f
encode_066 :: (a) -> a
encode_066 f = f
parse_066 :: (a) -> Parser a
parse_066 f = return f
show_066 :: ShowS
show_066 = id

-- '  <Qt>, [<Xn|SP>{, #<pimm>}]'
-- LDR_Q_ldst_pos      ldr_imm_fpsimd.xml
-- STR_Q_ldst_pos      str_imm_fpsimd.xml
decode_067 :: (a) -> a
decode_067 f = f
encode_067 :: (a) -> a
encode_067 f = f
parse_067 :: (a) -> Parser a
parse_067 f = return f
show_067 :: ShowS
show_067 = id

-- '  <Qt>, [<Xn|SP>{, #<simm>}]'
-- LDUR_Q_ldst_unscaledldur_fpsimd.xml
-- STUR_Q_ldst_unscaledstur_fpsimd.xml
decode_068 :: (a) -> a
decode_068 f = f
encode_068 :: (a) -> a
encode_068 f = f
parse_068 :: (a) -> Parser a
parse_068 f = return f
show_068 :: ShowS
show_068 = id

-- '  <R><t>, #<imm>, <label>'
-- TBNZ_only_testbranchtbnz.xml
-- TBZ_only_testbranch tbz.xml
decode_069 :: (a) -> a
decode_069 f = f
encode_069 :: (a) -> a
encode_069 f = f
parse_069 :: (a) -> Parser a
parse_069 f = return f
show_069 :: ShowS
show_069 = id

-- '  <Sd>, #<imm>'
-- FMOV_S_floatimm     fmov_float_imm.xml
decode_070 :: (a) -> a
decode_070 f = f
encode_070 :: (a) -> a
encode_070 f = f
parse_070 :: (a) -> Parser a
parse_070 f = return f
show_070 :: ShowS
show_070 = id

-- '  <Sd>, <Dn>'
-- FCVT_SD_floatdp1    fcvt_float.xml
decode_071 :: (a) -> a
decode_071 f = f
encode_071 :: (a) -> a
encode_071 f = f
parse_071 :: (a) -> Parser a
parse_071 f = return f
show_071 :: ShowS
show_071 = id

-- '  <Sd>, <Hn>'
-- FCVT_SH_floatdp1    fcvt_float.xml
decode_072 :: (a) -> a
decode_072 f = f
encode_072 :: (a) -> a
encode_072 f = f
parse_072 :: (a) -> Parser a
parse_072 f = return f
show_072 :: ShowS
show_072 = id

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
decode_073 :: (a) -> a
decode_073 f = f
encode_073 :: (a) -> a
encode_073 f = f
parse_073 :: (a) -> Parser a
parse_073 f = return f
show_073 :: ShowS
show_073 = id

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
decode_074 :: (a) -> a
decode_074 f = f
encode_074 :: (a) -> a
encode_074 f = f
parse_074 :: (a) -> Parser a
parse_074 f = return f
show_074 :: ShowS
show_074 = id

-- '  <Sd>, <Sn>, <Sm>, <Sa>'
-- FMADD_S_floatdp3    fmadd_float.xml
-- FMSUB_S_floatdp3    fmsub_float.xml
-- FNMADD_S_floatdp3   fnmadd_float.xml
-- FNMSUB_S_floatdp3   fnmsub_float.xml
decode_075 :: (a) -> a
decode_075 f = f
encode_075 :: (a) -> a
encode_075 f = f
parse_075 :: (a) -> Parser a
parse_075 f = return f
show_075 :: ShowS
show_075 = id

-- '  <Sd>, <Sn>, <Sm>, <cond>'
-- FCSEL_S_floatsel    fcsel_float.xml
decode_076 :: (a) -> a
decode_076 f = f
encode_076 :: (a) -> a
encode_076 f = f
parse_076 :: (a) -> Parser a
parse_076 f = return f
show_076 :: ShowS
show_076 = id

-- '  <Sd>, <Wn>'
-- FMOV_S32_float2int  fmov_float_gen.xml
-- SCVTF_S32_float2int scvtf_float_int.xml
-- UCVTF_S32_float2int ucvtf_float_int.xml
decode_077 :: (a) -> a
decode_077 f = f
encode_077 :: (a) -> a
encode_077 f = f
parse_077 :: (a) -> Parser a
parse_077 f = return f
show_077 :: ShowS
show_077 = id

-- '  <Sd>, <Wn>, #<fbits>'
-- SCVTF_S32_float2fix scvtf_float_fix.xml
-- UCVTF_S32_float2fix ucvtf_float_fix.xml
decode_078 :: (a) -> a
decode_078 f = f
encode_078 :: (a) -> a
encode_078 f = f
parse_078 :: (a) -> Parser a
parse_078 f = return f
show_078 :: ShowS
show_078 = id

-- '  <Sd>, <Xn>'
-- SCVTF_S64_float2int scvtf_float_int.xml
-- UCVTF_S64_float2int ucvtf_float_int.xml
decode_079 :: (a) -> a
decode_079 f = f
encode_079 :: (a) -> a
encode_079 f = f
parse_079 :: (a) -> Parser a
parse_079 f = return f
show_079 :: ShowS
show_079 = id

-- '  <Sd>, <Xn>, #<fbits>'
-- SCVTF_S64_float2fix scvtf_float_fix.xml
-- UCVTF_S64_float2fix ucvtf_float_fix.xml
decode_080 :: (a) -> a
decode_080 f = f
encode_080 :: (a) -> a
encode_080 f = f
parse_080 :: (a) -> Parser a
parse_080 f = return f
show_080 :: ShowS
show_080 = id

-- '  <Sn>, #0.0'
-- FCMP_SZ_floatcmp    fcmp_float.xml
-- FCMPE_SZ_floatcmp   fcmpe_float.xml
decode_081 :: (a) -> a
decode_081 f = f
encode_081 :: (a) -> a
encode_081 f = f
parse_081 :: (a) -> Parser a
parse_081 f = return f
show_081 :: ShowS
show_081 = id

-- '  <Sn>, <Sm>'
-- FCMP_S_floatcmp     fcmp_float.xml
-- FCMPE_S_floatcmp    fcmpe_float.xml
decode_082 :: (a) -> a
decode_082 f = f
encode_082 :: (a) -> a
encode_082 f = f
parse_082 :: (a) -> Parser a
parse_082 f = return f
show_082 :: ShowS
show_082 = id

-- '  <Sn>, <Sm>, #<nzcv>, <cond>'
-- FCCMP_S_floatccmp   fccmp_float.xml
-- FCCMPE_S_floatccmp  fccmpe_float.xml
decode_083 :: (a) -> a
decode_083 f = f
encode_083 :: (a) -> a
encode_083 f = f
parse_083 :: (a) -> Parser a
parse_083 f = return f
show_083 :: ShowS
show_083 = id

-- '  <St1>, <St2>, [<Xn|SP>, #<imm>]!'
-- LDP_S_ldstpair_pre  ldp_fpsimd.xml
-- STP_S_ldstpair_pre  stp_fpsimd.xml
decode_084 :: (a) -> a
decode_084 f = f
encode_084 :: (a) -> a
encode_084 f = f
parse_084 :: (a) -> Parser a
parse_084 f = return f
show_084 :: ShowS
show_084 = id

-- '  <St1>, <St2>, [<Xn|SP>], #<imm>'
-- LDP_S_ldstpair_post ldp_fpsimd.xml
-- STP_S_ldstpair_post stp_fpsimd.xml
decode_085 :: (a) -> a
decode_085 f = f
encode_085 :: (a) -> a
encode_085 f = f
parse_085 :: (a) -> Parser a
parse_085 f = return f
show_085 :: ShowS
show_085 = id

-- '  <St1>, <St2>, [<Xn|SP>{, #<imm>}]'
-- LDNP_S_ldstnapair_offsldnp_fpsimd.xml
-- LDP_S_ldstpair_off  ldp_fpsimd.xml
-- STNP_S_ldstnapair_offsstnp_fpsimd.xml
-- STP_S_ldstpair_off  stp_fpsimd.xml
decode_086 :: (a) -> a
decode_086 f = f
encode_086 :: (a) -> a
encode_086 f = f
parse_086 :: (a) -> Parser a
parse_086 f = return f
show_086 :: ShowS
show_086 = id

-- '  <St>, <label>'
-- LDR_S_loadlit       ldr_lit_fpsimd.xml
decode_087 :: (a) -> a
decode_087 f = f
encode_087 :: (a) -> a
encode_087 f = f
parse_087 :: (a) -> Parser a
parse_087 f = return f
show_087 :: ShowS
show_087 = id

-- '  <St>, [<Xn|SP>, #<simm>]!'
-- LDR_S_ldst_immpre   ldr_imm_fpsimd.xml
-- STR_S_ldst_immpre   str_imm_fpsimd.xml
decode_088 :: (a) -> a
decode_088 f = f
encode_088 :: (a) -> a
encode_088 f = f
parse_088 :: (a) -> Parser a
parse_088 f = return f
show_088 :: ShowS
show_088 = id

-- '  <St>, [<Xn|SP>, (<Wm>|<Xm>){, <extend> {<amount>}}]'
-- LDR_S_ldst_regoff   ldr_reg_fpsimd.xml
-- STR_S_ldst_regoff   str_reg_fpsimd.xml
decode_089 :: (a) -> a
decode_089 f = f
encode_089 :: (a) -> a
encode_089 f = f
parse_089 :: (a) -> Parser a
parse_089 f = return f
show_089 :: ShowS
show_089 = id

-- '  <St>, [<Xn|SP>], #<simm>'
-- LDR_S_ldst_immpost  ldr_imm_fpsimd.xml
-- STR_S_ldst_immpost  str_imm_fpsimd.xml
decode_090 :: (a) -> a
decode_090 f = f
encode_090 :: (a) -> a
encode_090 f = f
parse_090 :: (a) -> Parser a
parse_090 f = return f
show_090 :: ShowS
show_090 = id

-- '  <St>, [<Xn|SP>{, #<pimm>}]'
-- LDR_S_ldst_pos      ldr_imm_fpsimd.xml
-- STR_S_ldst_pos      str_imm_fpsimd.xml
decode_091 :: (a) -> a
decode_091 f = f
encode_091 :: (a) -> a
encode_091 f = f
parse_091 :: (a) -> Parser a
parse_091 f = return f
show_091 :: ShowS
show_091 = id

-- '  <St>, [<Xn|SP>{, #<simm>}]'
-- LDUR_S_ldst_unscaledldur_fpsimd.xml
-- STUR_S_ldst_unscaledstur_fpsimd.xml
decode_092 :: (a) -> a
decode_092 f = f
encode_092 :: (a) -> a
encode_092 f = f
parse_092 :: (a) -> Parser a
parse_092 f = return f
show_092 :: ShowS
show_092 = id

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
decode_093 :: (a) -> a
decode_093 f = f
encode_093 :: (a) -> a
encode_093 f = f
parse_093 :: (a) -> Parser a
parse_093 f = return f
show_093 :: ShowS
show_093 = id

-- '  <V><d>, <V><n>, #0'
-- CMEQ_asisdmisc_Z    cmeq_advsimd_zero.xml
-- CMGE_asisdmisc_Z    cmge_advsimd_zero.xml
-- CMGT_asisdmisc_Z    cmgt_advsimd_zero.xml
-- CMLE_asisdmisc_Z    cmle_advsimd.xml
-- CMLT_asisdmisc_Z    cmlt_advsimd.xml
decode_094 :: (a) -> a
decode_094 f = f
encode_094 :: (a) -> a
encode_094 f = f
parse_094 :: (a) -> Parser a
parse_094 f = return f
show_094 :: ShowS
show_094 = id

-- '  <V><d>, <V><n>, #0.0'
-- FCMEQ_asisdmisc_FZ  fcmeq_advsimd_zero.xml
-- FCMGE_asisdmisc_FZ  fcmge_advsimd_zero.xml
-- FCMGT_asisdmisc_FZ  fcmgt_advsimd_zero.xml
-- FCMLE_asisdmisc_FZ  fcmle_advsimd.xml
-- FCMLT_asisdmisc_FZ  fcmlt_advsimd.xml
decode_095 :: (a) -> a
decode_095 f = f
encode_095 :: (a) -> a
encode_095 f = f
parse_095 :: (a) -> Parser a
parse_095 f = return f
show_095 :: ShowS
show_095 = id

-- '  <V><d>, <V><n>, #<fbits>'
-- FCVTZS_asisdshf_C   fcvtzs_advsimd_fix.xml
-- FCVTZU_asisdshf_C   fcvtzu_advsimd_fix.xml
-- SCVTF_asisdshf_C    scvtf_advsimd_fix.xml
-- UCVTF_asisdshf_C    ucvtf_advsimd_fix.xml
decode_096 :: (a) -> a
decode_096 f = f
encode_096 :: (a) -> a
encode_096 f = f
parse_096 :: (a) -> Parser a
parse_096 f = return f
show_096 :: ShowS
show_096 = id

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
decode_097 :: (a) -> a
decode_097 f = f
encode_097 :: (a) -> a
encode_097 f = f
parse_097 :: (a) -> Parser a
parse_097 f = return f
show_097 :: ShowS
show_097 = id

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
decode_098 :: (a) -> a
decode_098 f = f
encode_098 :: (a) -> a
encode_098 f = f
parse_098 :: (a) -> Parser a
parse_098 f = return f
show_098 :: ShowS
show_098 = id

-- '  <V><d>, <V><n>, <Vm>.<Ts>[<index>]'
-- FMLA_asisdelem_R_SD fmla_advsimd_elt.xml
-- FMLS_asisdelem_R_SD fmls_advsimd_elt.xml
-- FMUL_asisdelem_R_SD fmul_advsimd_elt.xml
-- FMULX_asisdelem_R_SDfmulx_advsimd_elt.xml
-- SQDMULH_asisdelem_R sqdmulh_advsimd_elt.xml
-- SQRDMLAH_asisdelem_Rsqrdmlah_advsimd_elt.xml
-- SQRDMLSH_asisdelem_Rsqrdmlsh_advsimd_elt.xml
-- SQRDMULH_asisdelem_Rsqrdmulh_advsimd_elt.xml
decode_099 :: (a) -> a
decode_099 f = f
encode_099 :: (a) -> a
encode_099 f = f
parse_099 :: (a) -> Parser a
parse_099 f = return f
show_099 :: ShowS
show_099 = id

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
decode_100 :: (a) -> a
decode_100 f = f
encode_100 :: (a) -> a
encode_100 f = f
parse_100 :: (a) -> Parser a
parse_100 f = return f
show_100 :: ShowS
show_100 = id

-- '  <V><d>, <Vn>.<T>[<index>]'
-- DUP_asisdone_only   dup_advsimd_elt.xml
decode_101 :: (a) -> a
decode_101 f = f
encode_101 :: (a) -> a
encode_101 f = f
parse_101 :: (a) -> Parser a
parse_101 f = return f
show_101 :: ShowS
show_101 = id

-- '  <Va><d>, <Vb><n>, <Vb><m>'
-- SQDMLAL_asisddiff_onlysqdmlal_advsimd_vec.xml
-- SQDMLSL_asisddiff_onlysqdmlsl_advsimd_vec.xml
-- SQDMULL_asisddiff_onlysqdmull_advsimd_vec.xml
decode_102 :: (a) -> a
decode_102 f = f
encode_102 :: (a) -> a
encode_102 f = f
parse_102 :: (a) -> Parser a
parse_102 f = return f
show_102 :: ShowS
show_102 = id

-- '  <Va><d>, <Vb><n>, <Vm>.<Ts>[<index>]'
-- SQDMLAL_asisdelem_L sqdmlal_advsimd_elt.xml
-- SQDMLSL_asisdelem_L sqdmlsl_advsimd_elt.xml
-- SQDMULL_asisdelem_L sqdmull_advsimd_elt.xml
decode_103 :: (a) -> a
decode_103 f = f
encode_103 :: (a) -> a
encode_103 f = f
parse_103 :: (a) -> Parser a
parse_103 f = return f
show_103 :: ShowS
show_103 = id

-- '  <Vb><d>, <Va><n>'
-- FCVTXN_asisdmisc_N  fcvtxn_advsimd.xml
-- SQXTN_asisdmisc_N   sqxtn_advsimd.xml
-- SQXTUN_asisdmisc_N  sqxtun_advsimd.xml
-- UQXTN_asisdmisc_N   uqxtn_advsimd.xml
decode_104 :: (a) -> a
decode_104 f = f
encode_104 :: (a) -> a
encode_104 f = f
parse_104 :: (a) -> Parser a
parse_104 f = return f
show_104 :: ShowS
show_104 = id

-- '  <Vb><d>, <Va><n>, #<shift>'
-- SQRSHRN_asisdshf_N  sqrshrn_advsimd.xml
-- SQRSHRUN_asisdshf_N sqrshrun_advsimd.xml
-- SQSHRN_asisdshf_N   sqshrn_advsimd.xml
-- SQSHRUN_asisdshf_N  sqshrun_advsimd.xml
-- UQRSHRN_asisdshf_N  uqrshrn_advsimd.xml
-- UQSHRN_asisdshf_N   uqshrn_advsimd.xml
decode_105 :: (a) -> a
decode_105 f = f
encode_105 :: (a) -> a
encode_105 f = f
parse_105 :: (a) -> Parser a
parse_105 f = return f
show_105 :: ShowS
show_105 = id

-- '  <Vd>.16B, <Vn>.16B'
-- AESD_B_cryptoaes    aesd_advsimd.xml
-- AESE_B_cryptoaes    aese_advsimd.xml
-- AESIMC_B_cryptoaes  aesimc_advsimd.xml
-- AESMC_B_cryptoaes   aesmc_advsimd.xml
decode_106 :: (a) -> a
decode_106 f = f
encode_106 :: (a) -> a
encode_106 f = f
parse_106 :: (a) -> Parser a
parse_106 f = return f
show_106 :: ShowS
show_106 = id

-- '  <Vd>.16B, <Vn>.16B, <Vm>.16B, <Va>.16B'
-- BCAX_VVV16_crypto4  bcax_advsimd.xml
-- EOR3_VVV16_crypto4  eor3_advsimd.xml
decode_107 :: (a) -> a
decode_107 f = f
encode_107 :: (a) -> a
encode_107 f = f
parse_107 :: (a) -> Parser a
parse_107 f = return f
show_107 :: ShowS
show_107 = id

-- '  <Vd>.2D, #<imm>'
-- FMOV_asimdimm_D2_d  fmov_advsimd.xml
-- MOVI_asimdimm_D2_d  movi_advsimd.xml
decode_108 :: (a) -> a
decode_108 f = f
encode_108 :: (a) -> a
encode_108 f = f
parse_108 :: (a) -> Parser a
parse_108 f = return f
show_108 :: ShowS
show_108 = id

-- '  <Vd>.2D, <Vn>.2D'
-- SHA512SU0_VV2_cryptosha512_2sha512su0_advsimd.xml
decode_109 :: (a) -> a
decode_109 f = f
encode_109 :: (a) -> a
encode_109 f = f
parse_109 :: (a) -> Parser a
parse_109 f = return f
show_109 :: ShowS
show_109 = id

-- '  <Vd>.2D, <Vn>.2D, <Vm>.2D'
-- RAX1_VVV2_cryptosha512_3rax1_advsimd.xml
-- SHA512SU1_VVV2_cryptosha512_3sha512su1_advsimd.xml
decode_110 :: (a) -> a
decode_110 f = f
encode_110 :: (a) -> a
encode_110 f = f
parse_110 :: (a) -> Parser a
parse_110 f = return f
show_110 :: ShowS
show_110 = id

-- '  <Vd>.2D, <Vn>.2D, <Vm>.2D, #<imm6>'
-- XAR_VVV2_crypto3_imm6xar_advsimd.xml
decode_111 :: (a) -> a
decode_111 f = f
encode_111 :: (a) -> a
encode_111 f = f
parse_111 :: (a) -> Parser a
parse_111 f = return f
show_111 :: ShowS
show_111 = id

-- '  <Vd>.4S, <Vn>.4S'
-- SHA1SU1_VV_cryptosha2sha1su1_advsimd.xml
-- SHA256SU0_VV_cryptosha2sha256su0_advsimd.xml
-- SM4E_VV4_cryptosha512_2sm4e_advsimd.xml
decode_112 :: (a) -> a
decode_112 f = f
encode_112 :: (a) -> a
encode_112 f = f
parse_112 :: (a) -> Parser a
parse_112 f = return f
show_112 :: ShowS
show_112 = id

-- '  <Vd>.4S, <Vn>.4S, <Vm>.4S'
-- SHA1SU0_VVV_cryptosha3sha1su0_advsimd.xml
-- SHA256SU1_VVV_cryptosha3sha256su1_advsimd.xml
-- SM3PARTW1_VVV4_cryptosha512_3sm3partw1_advsimd.xml
-- SM3PARTW2_VVV4_cryptosha512_3sm3partw2_advsimd.xml
-- SM4EKEY_VVV4_cryptosha512_3sm4ekey_advsimd.xml
decode_113 :: (a) -> a
decode_113 f = f
encode_113 :: (a) -> a
encode_113 f = f
parse_113 :: (a) -> Parser a
parse_113 f = return f
show_113 :: ShowS
show_113 = id

-- '  <Vd>.4S, <Vn>.4S, <Vm>.4S, <Va>.4S'
-- SM3SS1_VVV4_crypto4 sm3ss1_advsimd.xml
decode_114 :: (a) -> a
decode_114 f = f
encode_114 :: (a) -> a
encode_114 f = f
parse_114 :: (a) -> Parser a
parse_114 f = return f
show_114 :: ShowS
show_114 = id

-- '  <Vd>.4S, <Vn>.4S, <Vm>.S[<imm2>]'
-- SM3TT1A_VVV4_crypto3_imm2sm3tt1a_advsimd.xml
-- SM3TT1B_VVV4_crypto3_imm2sm3tt1b_advsimd.xml
-- SM3TT2A_VVV4_crypto3_imm2sm3tt2a_advsimd.xml
decode_115 :: (a) -> a
decode_115 f = f
encode_115 :: (a) -> a
encode_115 f = f
parse_115 :: (a) -> Parser a
parse_115 f = return f
show_115 :: ShowS
show_115 = id

-- '  <Vd>.<T>, #<imm8>, MSL #<amount>'
-- MOVI_asimdimm_M_sm  movi_advsimd.xml
-- MVNI_asimdimm_M_sm  mvni_advsimd.xml
decode_116 :: (a) -> a
decode_116 f = f
encode_116 :: (a) -> a
encode_116 f = f
parse_116 :: (a) -> Parser a
parse_116 f = return f
show_116 :: ShowS
show_116 = id

-- '  <Vd>.<T>, #<imm8>{, LSL #0}'
-- MOVI_asimdimm_N_b   movi_advsimd.xml
decode_117 :: (a) -> a
decode_117 f = f
encode_117 :: (a) -> a
encode_117 f = f
parse_117 :: (a) -> Parser a
parse_117 f = return f
show_117 :: ShowS
show_117 = id

-- '  <Vd>.<T>, #<imm8>{, LSL #<amount>}'
-- BIC_asimdimm_L_hl   bic_advsimd_imm.xml
-- BIC_asimdimm_L_sl   bic_advsimd_imm.xml
-- MOVI_asimdimm_L_hl  movi_advsimd.xml
-- MOVI_asimdimm_L_sl  movi_advsimd.xml
-- MVNI_asimdimm_L_hl  mvni_advsimd.xml
-- MVNI_asimdimm_L_sl  mvni_advsimd.xml
-- ORR_asimdimm_L_hl   orr_advsimd_imm.xml
-- ORR_asimdimm_L_sl   orr_advsimd_imm.xml
decode_118 :: (a) -> a
decode_118 f = f
encode_118 :: (a) -> a
encode_118 f = f
parse_118 :: (a) -> Parser a
parse_118 f = return f
show_118 :: ShowS
show_118 = id

-- '  <Vd>.<T>, #<imm>'
-- FMOV_asimdimm_H_h   fmov_advsimd.xml
-- FMOV_asimdimm_S_s   fmov_advsimd.xml
decode_119 :: (a) -> a
decode_119 f = f
encode_119 :: (a) -> a
encode_119 f = f
parse_119 :: (a) -> Parser a
parse_119 f = return f
show_119 :: ShowS
show_119 = id

-- '  <Vd>.<T>, <R><n>'
-- DUP_asimdins_DR_r   dup_advsimd_gen.xml
decode_120 :: (a) -> a
decode_120 f = f
encode_120 :: (a) -> a
encode_120 f = f
parse_120 :: (a) -> Parser a
parse_120 f = return f
show_120 :: ShowS
show_120 = id

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
decode_121 :: (a) -> a
decode_121 f = f
encode_121 :: (a) -> a
encode_121 f = f
parse_121 :: (a) -> Parser a
parse_121 f = return f
show_121 :: ShowS
show_121 = id

-- '  <Vd>.<T>, <Vn>.<T>, #0'
-- CMEQ_asimdmisc_Z    cmeq_advsimd_zero.xml
-- CMGE_asimdmisc_Z    cmge_advsimd_zero.xml
-- CMGT_asimdmisc_Z    cmgt_advsimd_zero.xml
-- CMLE_asimdmisc_Z    cmle_advsimd.xml
-- CMLT_asimdmisc_Z    cmlt_advsimd.xml
decode_122 :: (a) -> a
decode_122 f = f
encode_122 :: (a) -> a
encode_122 f = f
parse_122 :: (a) -> Parser a
parse_122 f = return f
show_122 :: ShowS
show_122 = id

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
decode_123 :: (a) -> a
decode_123 f = f
encode_123 :: (a) -> a
encode_123 f = f
parse_123 :: (a) -> Parser a
parse_123 f = return f
show_123 :: ShowS
show_123 = id

-- '  <Vd>.<T>, <Vn>.<T>, #<fbits>'
-- FCVTZS_asimdshf_C   fcvtzs_advsimd_fix.xml
-- FCVTZU_asimdshf_C   fcvtzu_advsimd_fix.xml
-- SCVTF_asimdshf_C    scvtf_advsimd_fix.xml
-- UCVTF_asimdshf_C    ucvtf_advsimd_fix.xml
decode_124 :: (a) -> a
decode_124 f = f
encode_124 :: (a) -> a
encode_124 f = f
parse_124 :: (a) -> Parser a
parse_124 f = return f
show_124 :: ShowS
show_124 = id

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
decode_125 :: (a) -> a
decode_125 f = f
encode_125 :: (a) -> a
encode_125 f = f
parse_125 :: (a) -> Parser a
parse_125 f = return f
show_125 :: ShowS
show_125 = id

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
decode_126 :: (a) -> a
decode_126 f = f
encode_126 :: (a) -> a
encode_126 f = f
parse_126 :: (a) -> Parser a
parse_126 f = return f
show_126 :: ShowS
show_126 = id

-- '  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>, #<index>'
-- EXT_asimdext_only   ext_advsimd.xml
decode_127 :: (a) -> a
decode_127 f = f
encode_127 :: (a) -> a
encode_127 f = f
parse_127 :: (a) -> Parser a
parse_127 f = return f
show_127 :: ShowS
show_127 = id

-- '  <Vd>.<T>, <Vn>.<T>, <Vm>.<T>, #<rotate>'
-- FCADD_asimdsame2_C  fcadd_advsimd_vec.xml
-- FCMLA_asimdsame2_C  fcmla_advsimd_vec.xml
decode_128 :: (a) -> a
decode_128 f = f
encode_128 :: (a) -> a
encode_128 f = f
parse_128 :: (a) -> Parser a
parse_128 f = return f
show_128 :: ShowS
show_128 = id

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
decode_129 :: (a) -> a
decode_129 f = f
encode_129 :: (a) -> a
encode_129 f = f
parse_129 :: (a) -> Parser a
parse_129 f = return f
show_129 :: ShowS
show_129 = id

-- '  <Vd>.<T>, <Vn>.<T>, <Vm>.<Ts>[<index>], #<rotate>'
-- FCMLA_asimdelem_C_H fcmla_advsimd_elt.xml
-- FCMLA_asimdelem_C_S fcmla_advsimd_elt.xml
decode_130 :: (a) -> a
decode_130 f = f
encode_130 :: (a) -> a
encode_130 f = f
parse_130 :: (a) -> Parser a
parse_130 f = return f
show_130 :: ShowS
show_130 = id

-- '  <Vd>.<T>, <Vn>.<T>, <Vm>.H[<index>]'
-- FMLA_asimdelem_RH_H fmla_advsimd_elt.xml
-- FMLS_asimdelem_RH_H fmls_advsimd_elt.xml
-- FMUL_asimdelem_RH_H fmul_advsimd_elt.xml
-- FMULX_asimdelem_RH_Hfmulx_advsimd_elt.xml
decode_131 :: (a) -> a
decode_131 f = f
encode_131 :: (a) -> a
encode_131 f = f
parse_131 :: (a) -> Parser a
parse_131 f = return f
show_131 :: ShowS
show_131 = id

-- '  <Vd>.<T>, <Vn>.<Ts>[<index>]'
-- DUP_asimdins_DV_v   dup_advsimd_elt.xml
decode_132 :: (a) -> a
decode_132 f = f
encode_132 :: (a) -> a
encode_132 f = f
parse_132 :: (a) -> Parser a
parse_132 f = return f
show_132 :: ShowS
show_132 = id

-- '  <Vd>.<Ta>, <Vn>.<Tb>'
-- SADALP_asimdmisc_P  sadalp_advsimd.xml
-- SADDLP_asimdmisc_P  saddlp_advsimd.xml
-- UADALP_asimdmisc_P  uadalp_advsimd.xml
-- UADDLP_asimdmisc_P  uaddlp_advsimd.xml
decode_133 :: (a) -> a
decode_133 f = f
encode_133 :: (a) -> a
encode_133 f = f
parse_133 :: (a) -> Parser a
parse_133 f = return f
show_133 :: ShowS
show_133 = id

-- '  <Vd>.<Ta>, <Vn>.<Tb>, <Vm>.4B[<index>]'
-- SDOT_asimdelem_D    sdot_advsimd_elt.xml
-- UDOT_asimdelem_D    udot_advsimd_elt.xml
decode_134 :: (a) -> a
decode_134 f = f
encode_134 :: (a) -> a
encode_134 f = f
parse_134 :: (a) -> Parser a
parse_134 f = return f
show_134 :: ShowS
show_134 = id

-- '  <Vd>.<Ta>, <Vn>.<Tb>, <Vm>.<Tb>'
-- SDOT_asimdsame2_D   sdot_advsimd_vec.xml
-- UDOT_asimdsame2_D   udot_advsimd_vec.xml
decode_135 :: (a) -> a
decode_135 f = f
encode_135 :: (a) -> a
encode_135 f = f
parse_135 :: (a) -> Parser a
parse_135 f = return f
show_135 :: ShowS
show_135 = id

-- '  <Vd>.<Ta>, { <Vn>.16B }, <Vm>.<Ta>'
-- TBL_asimdtbl_L1_1   tbl_advsimd.xml
-- TBX_asimdtbl_L1_1   tbx_advsimd.xml
decode_136 :: (a) -> a
decode_136 f = f
encode_136 :: (a) -> a
encode_136 f = f
parse_136 :: (a) -> Parser a
parse_136 f = return f
show_136 :: ShowS
show_136 = id

-- '  <Vd>.<Ta>, { <Vn>.16B, <Vn+1>.16B }, <Vm>.<Ta>'
-- TBL_asimdtbl_L2_2   tbl_advsimd.xml
-- TBX_asimdtbl_L2_2   tbx_advsimd.xml
decode_137 :: (a) -> a
decode_137 f = f
encode_137 :: (a) -> a
encode_137 f = f
parse_137 :: (a) -> Parser a
parse_137 f = return f
show_137 :: ShowS
show_137 = id

-- '  <Vd>.<Ta>, { <Vn>.16B, <Vn+1>.16B, <Vn+2>.16B }, <Vm>.<Ta>'
-- TBL_asimdtbl_L3_3   tbl_advsimd.xml
-- TBX_asimdtbl_L3_3   tbx_advsimd.xml
decode_138 :: (a) -> a
decode_138 f = f
encode_138 :: (a) -> a
encode_138 f = f
parse_138 :: (a) -> Parser a
parse_138 f = return f
show_138 :: ShowS
show_138 = id

-- '  <Vd>.<Ta>, { <Vn>.16B, <Vn+1>.16B, <Vn+2>.16B, <Vn+3>.16B }, <Vm>.<Ta>'
-- TBL_asimdtbl_L4_4   tbl_advsimd.xml
-- TBX_asimdtbl_L4_4   tbx_advsimd.xml
decode_139 :: (a) -> a
decode_139 f = f
encode_139 :: (a) -> a
encode_139 f = f
parse_139 :: (a) -> Parser a
parse_139 f = return f
show_139 :: ShowS
show_139 = id

-- '  <Vd>.<Ts>[<index1>], <Vn>.<Ts>[<index2>]'
-- INS_asimdins_IV_v   ins_advsimd_elt.xml
decode_140 :: (a) -> a
decode_140 f = f
encode_140 :: (a) -> a
encode_140 f = f
parse_140 :: (a) -> Parser a
parse_140 f = return f
show_140 :: ShowS
show_140 = id

-- '  <Vd>.<Ts>[<index>], <R><n>'
-- INS_asimdins_IR_r   ins_advsimd_gen.xml
decode_141 :: (a) -> a
decode_141 f = f
encode_141 :: (a) -> a
encode_141 f = f
parse_141 :: (a) -> Parser a
parse_141 f = return f
show_141 :: ShowS
show_141 = id

-- '  <Vd>.D[1], <Xn>'
-- FMOV_V64I_float2int fmov_float_gen.xml
decode_142 :: (a) -> a
decode_142 f = f
encode_142 :: (a) -> a
encode_142 f = f
parse_142 :: (a) -> Parser a
parse_142 f = return f
show_142 :: ShowS
show_142 = id

-- '  <Vd>.S, <Vn>.S, <Vm>.S[<imm2>]'
-- SM3TT2B_VVV_crypto3_imm2sm3tt2b_advsimd.xml
decode_143 :: (a) -> a
decode_143 f = f
encode_143 :: (a) -> a
encode_143 f = f
parse_143 :: (a) -> Parser a
parse_143 f = return f
show_143 :: ShowS
show_143 = id

-- '  <Wd>, #<imm>{, LSL #<shift>}'
-- MOVK_32_movewide    movk.xml
-- MOVN_32_movewide    movn.xml
-- MOVZ_32_movewide    movz.xml
decode_144 :: (a) -> a
decode_144 f = f
encode_144 :: (a) -> a
encode_144 f = f
parse_144 :: (a) -> Parser a
parse_144 f = return f
show_144 :: ShowS
show_144 = id

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
decode_145 :: (a) -> a
decode_145 f = f
encode_145 :: (a) -> a
encode_145 f = f
parse_145 :: (a) -> Parser a
parse_145 f = return f
show_145 :: ShowS
show_145 = id

-- '  <Wd>, <Dn>, #<fbits>'
-- FCVTZS_32D_float2fixfcvtzs_float_fix.xml
-- FCVTZU_32D_float2fixfcvtzu_float_fix.xml
decode_146 :: (a) -> a
decode_146 f = f
encode_146 :: (a) -> a
encode_146 f = f
parse_146 :: (a) -> Parser a
parse_146 f = return f
show_146 :: ShowS
show_146 = id

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
decode_147 :: (a) -> a
decode_147 f = f
encode_147 :: (a) -> a
encode_147 f = f
parse_147 :: (a) -> Parser a
parse_147 f = return f
show_147 :: ShowS
show_147 = id

-- '  <Wd>, <Hn>, #<fbits>'
-- FCVTZS_32H_float2fixfcvtzs_float_fix.xml
-- FCVTZU_32H_float2fixfcvtzu_float_fix.xml
decode_148 :: (a) -> a
decode_148 f = f
encode_148 :: (a) -> a
encode_148 f = f
parse_148 :: (a) -> Parser a
parse_148 f = return f
show_148 :: ShowS
show_148 = id

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
decode_149 :: (a) -> a
decode_149 f = f
encode_149 :: (a) -> a
encode_149 f = f
parse_149 :: (a) -> Parser a
parse_149 f = return f
show_149 :: ShowS
show_149 = id

-- '  <Wd>, <Sn>, #<fbits>'
-- FCVTZS_32S_float2fixfcvtzs_float_fix.xml
-- FCVTZU_32S_float2fixfcvtzu_float_fix.xml
decode_150 :: (a) -> a
decode_150 f = f
encode_150 :: (a) -> a
encode_150 f = f
parse_150 :: (a) -> Parser a
parse_150 f = return f
show_150 :: ShowS
show_150 = id

-- '  <Wd>, <Vn>.<Ts>[<index>]'
-- SMOV_asimdins_W_w   smov_advsimd.xml
-- UMOV_asimdins_W_w   umov_advsimd.xml
decode_151 :: (a) -> a
decode_151 f = f
encode_151 :: (a) -> a
encode_151 f = f
parse_151 :: (a) -> Parser a
parse_151 f = return f
show_151 :: ShowS
show_151 = id

-- '  <Wd>, <Wn>'
-- CLS_32_dp_1src      cls_int.xml
-- CLZ_32_dp_1src      clz_int.xml
-- RBIT_32_dp_1src     rbit_int.xml
-- REV_32_dp_1src      rev.xml
-- REV16_32_dp_1src    rev16_int.xml
decode_152 :: (a) -> a
decode_152 f = f
encode_152 :: (a) -> a
encode_152 f = f
parse_152 :: (a) -> Parser a
parse_152 f = return f
show_152 :: ShowS
show_152 = id

-- '  <Wd>, <Wn>, #<imm>'
-- ANDS_32S_log_imm    ands_log_imm.xml
decode_153 :: (a) -> a
decode_153 f = f
encode_153 :: (a) -> a
encode_153 f = f
parse_153 :: (a) -> Parser a
parse_153 f = return f
show_153 :: ShowS
show_153 = id

-- '  <Wd>, <Wn>, #<immr>, #<imms>'
-- BFM_32M_bitfield    bfm.xml
-- SBFM_32M_bitfield   sbfm.xml
-- UBFM_32M_bitfield   ubfm.xml
decode_154 :: (a) -> a
decode_154 f = f
encode_154 :: (a) -> a
encode_154 f = f
parse_154 :: (a) -> Parser a
parse_154 f = return f
show_154 :: ShowS
show_154 = id

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
decode_155 :: (a) -> a
decode_155 f = f
encode_155 :: (a) -> a
encode_155 f = f
parse_155 :: (a) -> Parser a
parse_155 f = return f
show_155 :: ShowS
show_155 = id

-- '  <Wd>, <Wn>, <Wm>, #<lsb>'
-- EXTR_32_extract     extr.xml
decode_156 :: (a) -> a
decode_156 f = f
encode_156 :: (a) -> a
encode_156 f = f
parse_156 :: (a) -> Parser a
parse_156 f = return f
show_156 :: ShowS
show_156 = id

-- '  <Wd>, <Wn>, <Wm>, <Wa>'
-- MADD_32A_dp_3src    madd.xml
-- MSUB_32A_dp_3src    msub.xml
decode_157 :: (a) -> a
decode_157 f = f
encode_157 :: (a) -> a
encode_157 f = f
parse_157 :: (a) -> Parser a
parse_157 f = return f
show_157 :: ShowS
show_157 = id

-- '  <Wd>, <Wn>, <Wm>, <cond>'
-- CSEL_32_condsel     csel.xml
-- CSINC_32_condsel    csinc.xml
-- CSINV_32_condsel    csinv.xml
-- CSNEG_32_condsel    csneg.xml
decode_158 :: (a) -> a
decode_158 f = f
encode_158 :: (a) -> a
encode_158 f = f
parse_158 :: (a) -> Parser a
parse_158 f = return f
show_158 :: ShowS
show_158 = id

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
decode_159 :: (a) -> a
decode_159 f = f
encode_159 :: (a) -> a
encode_159 f = f
parse_159 :: (a) -> Parser a
parse_159 f = return f
show_159 :: ShowS
show_159 = id

-- '  <Wd>, <Wn>, <Xm>'
-- CRC32X_64C_dp_2src  crc32.xml
-- CRC32CX_64C_dp_2src crc32c.xml
decode_160 :: (a) -> a
decode_160 f = f
encode_160 :: (a) -> a
encode_160 f = f
parse_160 :: (a) -> Parser a
parse_160 f = return f
show_160 :: ShowS
show_160 = id

-- '  <Wd>, <Wn|WSP>, #<imm>{, <shift>}'
-- ADDS_32S_addsub_imm adds_addsub_imm.xml
-- SUBS_32S_addsub_imm subs_addsub_imm.xml
decode_161 :: (a) -> a
decode_161 f = f
encode_161 :: (a) -> a
encode_161 f = f
parse_161 :: (a) -> Parser a
parse_161 f = return f
show_161 :: ShowS
show_161 = id

-- '  <Wd>, <Wn|WSP>, <Wm>{, <extend> {#<amount>}}'
-- ADDS_32S_addsub_ext adds_addsub_ext.xml
-- SUBS_32S_addsub_ext subs_addsub_ext.xml
decode_162 :: (a) -> a
decode_162 f = f
encode_162 :: (a) -> a
encode_162 f = f
parse_162 :: (a) -> Parser a
parse_162 f = return f
show_162 :: ShowS
show_162 = id

-- '  <Wd|WSP>, <Wn>, #<imm>'
-- AND_32_log_imm      and_log_imm.xml
-- EOR_32_log_imm      eor_log_imm.xml
-- ORR_32_log_imm      orr_log_imm.xml
decode_163 :: (a) -> a
decode_163 f = f
encode_163 :: (a) -> a
encode_163 f = f
parse_163 :: (a) -> Parser a
parse_163 f = return f
show_163 :: ShowS
show_163 = id

-- '  <Wd|WSP>, <Wn|WSP>, #<imm>{, <shift>}'
-- ADD_32_addsub_imm   add_addsub_imm.xml
-- SUB_32_addsub_imm   sub_addsub_imm.xml
decode_164 :: (a) -> a
decode_164 f = f
encode_164 :: (a) -> a
encode_164 f = f
parse_164 :: (a) -> Parser a
parse_164 f = return f
show_164 :: ShowS
show_164 = id

-- '  <Wd|WSP>, <Wn|WSP>, <Wm>{, <extend> {#<amount>}}'
-- ADD_32_addsub_ext   add_addsub_ext.xml
-- SUB_32_addsub_ext   sub_addsub_ext.xml
decode_165 :: (a) -> a
decode_165 f = f
encode_165 :: (a) -> a
encode_165 f = f
parse_165 :: (a) -> Parser a
parse_165 f = return f
show_165 :: ShowS
show_165 = id

-- '  <Wn>, #<imm>, #<nzcv>, <cond>'
-- CCMN_32_condcmp_imm ccmn_imm.xml
-- CCMP_32_condcmp_imm ccmp_imm.xml
decode_166 :: (a) -> a
decode_166 f = f
encode_166 :: (a) -> a
encode_166 f = f
parse_166 :: (a) -> Parser a
parse_166 f = return f
show_166 :: ShowS
show_166 = id

-- '  <Wn>, <Wm>, #<nzcv>, <cond>'
-- CCMN_32_condcmp_reg ccmn_reg.xml
-- CCMP_32_condcmp_reg ccmp_reg.xml
decode_167 :: (a) -> a
decode_167 f = f
encode_167 :: (a) -> a
encode_167 f = f
parse_167 :: (a) -> Parser a
parse_167 f = return f
show_167 :: ShowS
show_167 = id

-- '  <Ws>, <W(s+1)>, <Wt>, <W(t+1)>, [<Xn|SP>{,#0}]'
-- CASP_CP32_ldstexcl  casp.xml
-- CASPA_CP32_ldstexcl casp.xml
-- CASPAL_CP32_ldstexclcasp.xml
-- CASPL_CP32_ldstexcl casp.xml
decode_168 :: (a) -> a
decode_168 f = f
encode_168 :: (a) -> a
encode_168 f = f
parse_168 :: (a) -> Parser a
parse_168 f = return f
show_168 :: ShowS
show_168 = id

-- '  <Ws>, <Wt1>, <Wt2>, [<Xn|SP>{,#0}]'
-- STLXP_SP32_ldstexcl stlxp.xml
-- STXP_SP32_ldstexcl  stxp.xml
decode_169 :: (a) -> a
decode_169 f = f
encode_169 :: (a) -> a
encode_169 f = f
parse_169 :: (a) -> Parser a
parse_169 f = return f
show_169 :: ShowS
show_169 = id

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
decode_170 :: (a) -> a
decode_170 f = f
encode_170 :: (a) -> a
encode_170 f = f
parse_170 :: (a) -> Parser a
parse_170 f = return f
show_170 :: ShowS
show_170 = id

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
decode_171 :: (a) -> a
decode_171 f = f
encode_171 :: (a) -> a
encode_171 f = f
parse_171 :: (a) -> Parser a
parse_171 f = return f
show_171 :: ShowS
show_171 = id

-- '  <Ws>, <Xt1>, <Xt2>, [<Xn|SP>{,#0}]'
-- STLXP_SP64_ldstexcl stlxp.xml
-- STXP_SP64_ldstexcl  stxp.xml
decode_172 :: (a) -> a
decode_172 f = f
encode_172 :: (a) -> a
encode_172 f = f
parse_172 :: (a) -> Parser a
parse_172 f = return f
show_172 :: ShowS
show_172 = id

-- '  <Ws>, <Xt>, [<Xn|SP>{,#0}]'
-- STLXR_SR64_ldstexcl stlxr.xml
-- STXR_SR64_ldstexcl  stxr.xml
decode_173 :: (a) -> a
decode_173 f = f
encode_173 :: (a) -> a
encode_173 f = f
parse_173 :: (a) -> Parser a
parse_173 f = return f
show_173 :: ShowS
show_173 = id

-- '  <Wt1>, <Wt2>, [<Xn|SP>, #<imm>]!'
-- LDP_32_ldstpair_pre ldp_gen.xml
-- STP_32_ldstpair_pre stp_gen.xml
decode_174 :: (a) -> a
decode_174 f = f
encode_174 :: (a) -> a
encode_174 f = f
parse_174 :: (a) -> Parser a
parse_174 f = return f
show_174 :: ShowS
show_174 = id

-- '  <Wt1>, <Wt2>, [<Xn|SP>], #<imm>'
-- LDP_32_ldstpair_postldp_gen.xml
-- STP_32_ldstpair_poststp_gen.xml
decode_175 :: (a) -> a
decode_175 f = f
encode_175 :: (a) -> a
encode_175 f = f
parse_175 :: (a) -> Parser a
parse_175 f = return f
show_175 :: ShowS
show_175 = id

-- '  <Wt1>, <Wt2>, [<Xn|SP>{, #<imm>}]'
-- LDNP_32_ldstnapair_offsldnp_gen.xml
-- LDP_32_ldstpair_off ldp_gen.xml
-- STNP_32_ldstnapair_offsstnp_gen.xml
-- STP_32_ldstpair_off stp_gen.xml
decode_176 :: (a) -> a
decode_176 f = f
encode_176 :: (a) -> a
encode_176 f = f
parse_176 :: (a) -> Parser a
parse_176 f = return f
show_176 :: ShowS
show_176 = id

-- '  <Wt1>, <Wt2>, [<Xn|SP>{,#0}]'
-- LDAXP_LP32_ldstexcl ldaxp.xml
-- LDXP_LP32_ldstexcl  ldxp.xml
decode_177 :: (a) -> a
decode_177 f = f
encode_177 :: (a) -> a
encode_177 f = f
parse_177 :: (a) -> Parser a
parse_177 f = return f
show_177 :: ShowS
show_177 = id

-- '  <Wt>, <label>'
-- CBNZ_32_compbranch  cbnz.xml
-- CBZ_32_compbranch   cbz.xml
-- LDR_32_loadlit      ldr_lit_gen.xml
decode_178 :: (a) -> a
decode_178 f = f
encode_178 :: (a) -> a
encode_178 f = f
parse_178 :: (a) -> Parser a
parse_178 f = return f
show_178 :: ShowS
show_178 = id

-- '  <Wt>, [<Xn|SP> {,#0}]'
-- LDAPR_32L_memop     ldapr.xml
-- LDAPRB_32L_memop    ldaprb.xml
-- LDAPRH_32L_memop    ldaprh.xml
decode_179 :: (a) -> a
decode_179 f = f
encode_179 :: (a) -> a
encode_179 f = f
parse_179 :: (a) -> Parser a
parse_179 f = return f
show_179 :: ShowS
show_179 = id

-- '  <Wt>, [<Xn|SP>, #<simm>]!'
-- LDR_32_ldst_immpre  ldr_imm_gen.xml
-- LDRB_32_ldst_immpre ldrb_imm.xml
-- LDRH_32_ldst_immpre ldrh_imm.xml
-- LDRSB_32_ldst_immpreldrsb_imm.xml
-- LDRSH_32_ldst_immpreldrsh_imm.xml
-- STR_32_ldst_immpre  str_imm_gen.xml
-- STRB_32_ldst_immpre strb_imm.xml
-- STRH_32_ldst_immpre strh_imm.xml
decode_180 :: (a) -> a
decode_180 f = f
encode_180 :: (a) -> a
encode_180 f = f
parse_180 :: (a) -> Parser a
parse_180 f = return f
show_180 :: ShowS
show_180 = id

-- '  <Wt>, [<Xn|SP>, (<Wm>|<Xm>), <extend> {<amount>}]'
-- LDRB_32B_ldst_regoffldrb_reg.xml
-- LDRSB_32B_ldst_regoffldrsb_reg.xml
-- STRB_32B_ldst_regoffstrb_reg.xml
decode_181 :: (a) -> a
decode_181 f = f
encode_181 :: (a) -> a
encode_181 f = f
parse_181 :: (a) -> Parser a
parse_181 f = return f
show_181 :: ShowS
show_181 = id

-- '  <Wt>, [<Xn|SP>, (<Wm>|<Xm>){, <extend> {<amount>}}]'
-- LDR_32_ldst_regoff  ldr_reg_gen.xml
-- LDRH_32_ldst_regoff ldrh_reg.xml
-- LDRSH_32_ldst_regoffldrsh_reg.xml
-- STR_32_ldst_regoff  str_reg_gen.xml
-- STRH_32_ldst_regoff strh_reg.xml
decode_182 :: (a) -> a
decode_182 f = f
encode_182 :: (a) -> a
encode_182 f = f
parse_182 :: (a) -> Parser a
parse_182 f = return f
show_182 :: ShowS
show_182 = id

-- '  <Wt>, [<Xn|SP>, <Xm>{, LSL <amount>}]'
-- LDRB_32BL_ldst_regoffldrb_reg.xml
-- LDRSB_32BL_ldst_regoffldrsb_reg.xml
-- STRB_32BL_ldst_regoffstrb_reg.xml
decode_183 :: (a) -> a
decode_183 f = f
encode_183 :: (a) -> a
encode_183 f = f
parse_183 :: (a) -> Parser a
parse_183 f = return f
show_183 :: ShowS
show_183 = id

-- '  <Wt>, [<Xn|SP>], #<simm>'
-- LDR_32_ldst_immpost ldr_imm_gen.xml
-- LDRB_32_ldst_immpostldrb_imm.xml
-- LDRH_32_ldst_immpostldrh_imm.xml
-- LDRSB_32_ldst_immpostldrsb_imm.xml
-- LDRSH_32_ldst_immpostldrsh_imm.xml
-- STR_32_ldst_immpost str_imm_gen.xml
-- STRB_32_ldst_immpoststrb_imm.xml
-- STRH_32_ldst_immpoststrh_imm.xml
decode_184 :: (a) -> a
decode_184 f = f
encode_184 :: (a) -> a
encode_184 f = f
parse_184 :: (a) -> Parser a
parse_184 f = return f
show_184 :: ShowS
show_184 = id

-- '  <Wt>, [<Xn|SP>{, #<pimm>}]'
-- LDR_32_ldst_pos     ldr_imm_gen.xml
-- LDRB_32_ldst_pos    ldrb_imm.xml
-- LDRH_32_ldst_pos    ldrh_imm.xml
-- LDRSB_32_ldst_pos   ldrsb_imm.xml
-- LDRSH_32_ldst_pos   ldrsh_imm.xml
-- STR_32_ldst_pos     str_imm_gen.xml
-- STRB_32_ldst_pos    strb_imm.xml
-- STRH_32_ldst_pos    strh_imm.xml
decode_185 :: (a) -> a
decode_185 f = f
encode_185 :: (a) -> a
encode_185 f = f
parse_185 :: (a) -> Parser a
parse_185 f = return f
show_185 :: ShowS
show_185 = id

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
decode_186 :: (a) -> a
decode_186 f = f
encode_186 :: (a) -> a
encode_186 f = f
parse_186 :: (a) -> Parser a
parse_186 f = return f
show_186 :: ShowS
show_186 = id

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
decode_187 :: (a) -> a
decode_187 f = f
encode_187 :: (a) -> a
encode_187 f = f
parse_187 :: (a) -> Parser a
parse_187 f = return f
show_187 :: ShowS
show_187 = id

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
decode_188 :: (a) -> a
decode_188 f = f
encode_188 :: (a) -> a
encode_188 f = f
parse_188 :: (a) -> Parser a
parse_188 f = return f
show_188 :: ShowS
show_188 = id

-- '  <Xd>, #<imm>{, LSL #<shift>}'
-- MOVK_64_movewide    movk.xml
-- MOVN_64_movewide    movn.xml
-- MOVZ_64_movewide    movz.xml
decode_189 :: (a) -> a
decode_189 f = f
encode_189 :: (a) -> a
encode_189 f = f
parse_189 :: (a) -> Parser a
parse_189 f = return f
show_189 :: ShowS
show_189 = id

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
decode_190 :: (a) -> a
decode_190 f = f
encode_190 :: (a) -> a
encode_190 f = f
parse_190 :: (a) -> Parser a
parse_190 f = return f
show_190 :: ShowS
show_190 = id

-- '  <Xd>, <Dn>, #<fbits>'
-- FCVTZS_64D_float2fixfcvtzs_float_fix.xml
-- FCVTZU_64D_float2fixfcvtzu_float_fix.xml
decode_191 :: (a) -> a
decode_191 f = f
encode_191 :: (a) -> a
encode_191 f = f
parse_191 :: (a) -> Parser a
parse_191 f = return f
show_191 :: ShowS
show_191 = id

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
decode_192 :: (a) -> a
decode_192 f = f
encode_192 :: (a) -> a
encode_192 f = f
parse_192 :: (a) -> Parser a
parse_192 f = return f
show_192 :: ShowS
show_192 = id

-- '  <Xd>, <Hn>, #<fbits>'
-- FCVTZS_64H_float2fixfcvtzs_float_fix.xml
-- FCVTZU_64H_float2fixfcvtzu_float_fix.xml
decode_193 :: (a) -> a
decode_193 f = f
encode_193 :: (a) -> a
encode_193 f = f
parse_193 :: (a) -> Parser a
parse_193 f = return f
show_193 :: ShowS
show_193 = id

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
decode_194 :: (a) -> a
decode_194 f = f
encode_194 :: (a) -> a
encode_194 f = f
parse_194 :: (a) -> Parser a
parse_194 f = return f
show_194 :: ShowS
show_194 = id

-- '  <Xd>, <Sn>, #<fbits>'
-- FCVTZS_64S_float2fixfcvtzs_float_fix.xml
-- FCVTZU_64S_float2fixfcvtzu_float_fix.xml
decode_195 :: (a) -> a
decode_195 f = f
encode_195 :: (a) -> a
encode_195 f = f
parse_195 :: (a) -> Parser a
parse_195 f = return f
show_195 :: ShowS
show_195 = id

-- '  <Xd>, <Vn>.<Ts>[<index>]'
-- SMOV_asimdins_X_x   smov_advsimd.xml
-- UMOV_asimdins_X_x   umov_advsimd.xml
decode_196 :: (a) -> a
decode_196 f = f
encode_196 :: (a) -> a
encode_196 f = f
parse_196 :: (a) -> Parser a
parse_196 f = return f
show_196 :: ShowS
show_196 = id

-- '  <Xd>, <Vn>.D[1]'
-- FMOV_64VX_float2int fmov_float_gen.xml
decode_197 :: (a) -> a
decode_197 f = f
encode_197 :: (a) -> a
encode_197 f = f
parse_197 :: (a) -> Parser a
parse_197 f = return f
show_197 :: ShowS
show_197 = id

-- '  <Xd>, <Wn>, <Wm>, <Xa>'
-- SMADDL_64WA_dp_3src smaddl.xml
-- SMSUBL_64WA_dp_3src smsubl.xml
-- UMADDL_64WA_dp_3src umaddl.xml
-- UMSUBL_64WA_dp_3src umsubl.xml
decode_198 :: (a) -> a
decode_198 f = f
encode_198 :: (a) -> a
encode_198 f = f
parse_198 :: (a) -> Parser a
parse_198 f = return f
show_198 :: ShowS
show_198 = id

-- '  <Xd>, <Xn>'
-- CLS_64_dp_1src      cls_int.xml
-- CLZ_64_dp_1src      clz_int.xml
-- RBIT_64_dp_1src     rbit_int.xml
-- REV_64_dp_1src      rev.xml
-- REV16_64_dp_1src    rev16_int.xml
-- REV32_64_dp_1src    rev32_int.xml
decode_199 :: (a) -> a
decode_199 f = f
encode_199 :: (a) -> a
encode_199 f = f
parse_199 :: (a) -> Parser a
parse_199 f = return f
show_199 :: ShowS
show_199 = id

-- '  <Xd>, <Xn>, #<imm>'
-- ANDS_64S_log_imm    ands_log_imm.xml
decode_200 :: (a) -> a
decode_200 f = f
encode_200 :: (a) -> a
encode_200 f = f
parse_200 :: (a) -> Parser a
parse_200 f = return f
show_200 :: ShowS
show_200 = id

-- '  <Xd>, <Xn>, #<immr>, #<imms>'
-- BFM_64M_bitfield    bfm.xml
-- SBFM_64M_bitfield   sbfm.xml
-- UBFM_64M_bitfield   ubfm.xml
decode_201 :: (a) -> a
decode_201 f = f
encode_201 :: (a) -> a
encode_201 f = f
parse_201 :: (a) -> Parser a
parse_201 f = return f
show_201 :: ShowS
show_201 = id

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
decode_202 :: (a) -> a
decode_202 f = f
encode_202 :: (a) -> a
encode_202 f = f
parse_202 :: (a) -> Parser a
parse_202 f = return f
show_202 :: ShowS
show_202 = id

-- '  <Xd>, <Xn>, <Xm>, #<lsb>'
-- EXTR_64_extract     extr.xml
decode_203 :: (a) -> a
decode_203 f = f
encode_203 :: (a) -> a
encode_203 f = f
parse_203 :: (a) -> Parser a
parse_203 f = return f
show_203 :: ShowS
show_203 = id

-- '  <Xd>, <Xn>, <Xm>, <Xa>'
-- MADD_64A_dp_3src    madd.xml
-- MSUB_64A_dp_3src    msub.xml
decode_204 :: (a) -> a
decode_204 f = f
encode_204 :: (a) -> a
encode_204 f = f
parse_204 :: (a) -> Parser a
parse_204 f = return f
show_204 :: ShowS
show_204 = id

-- '  <Xd>, <Xn>, <Xm>, <cond>'
-- CSEL_64_condsel     csel.xml
-- CSINC_64_condsel    csinc.xml
-- CSINV_64_condsel    csinv.xml
-- CSNEG_64_condsel    csneg.xml
decode_205 :: (a) -> a
decode_205 f = f
encode_205 :: (a) -> a
encode_205 f = f
parse_205 :: (a) -> Parser a
parse_205 f = return f
show_205 :: ShowS
show_205 = id

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
decode_206 :: (a) -> a
decode_206 f = f
encode_206 :: (a) -> a
encode_206 f = f
parse_206 :: (a) -> Parser a
parse_206 f = return f
show_206 :: ShowS
show_206 = id

-- '  <Xd>, <Xn>, <Xm|SP>'
-- PACGA_64P_dp_2src   pacga.xml
decode_207 :: (a) -> a
decode_207 f = f
encode_207 :: (a) -> a
encode_207 f = f
parse_207 :: (a) -> Parser a
parse_207 f = return f
show_207 :: ShowS
show_207 = id

-- '  <Xd>, <Xn|SP>'
-- AUTDA_64P_dp_1src   autda.xml
-- AUTDB_64P_dp_1src   autdb.xml
-- AUTIA_64P_dp_1src   autia.xml
-- AUTIB_64P_dp_1src   autib.xml
-- PACDA_64P_dp_1src   pacda.xml
-- PACDB_64P_dp_1src   pacdb.xml
-- PACIA_64P_dp_1src   pacia.xml
-- PACIB_64P_dp_1src   pacib.xml
decode_208 :: (a) -> a
decode_208 f = f
encode_208 :: (a) -> a
encode_208 f = f
parse_208 :: (a) -> Parser a
parse_208 f = return f
show_208 :: ShowS
show_208 = id

-- '  <Xd>, <Xn|SP>, #<imm>{, <shift>}'
-- ADDS_64S_addsub_imm adds_addsub_imm.xml
-- SUBS_64S_addsub_imm subs_addsub_imm.xml
decode_209 :: (a) -> a
decode_209 f = f
encode_209 :: (a) -> a
encode_209 f = f
parse_209 :: (a) -> Parser a
parse_209 f = return f
show_209 :: ShowS
show_209 = id

-- '  <Xd>, <Xn|SP>, <R><m>{, <extend> {#<amount>}}'
-- ADDS_64S_addsub_ext adds_addsub_ext.xml
-- SUBS_64S_addsub_ext subs_addsub_ext.xml
decode_210 :: (a) -> a
decode_210 f = f
encode_210 :: (a) -> a
encode_210 f = f
parse_210 :: (a) -> Parser a
parse_210 f = return f
show_210 :: ShowS
show_210 = id

-- '  <Xd>, <label>'
-- ADR_only_pcreladdr  adr.xml
-- ADRP_only_pcreladdr adrp.xml
decode_211 :: (a) -> a
decode_211 f = f
encode_211 :: (a) -> a
encode_211 f = f
parse_211 :: (a) -> Parser a
parse_211 f = return f
show_211 :: ShowS
show_211 = id

-- '  <Xd|SP>, <Xn>, #<imm>'
-- AND_64_log_imm      and_log_imm.xml
-- EOR_64_log_imm      eor_log_imm.xml
-- ORR_64_log_imm      orr_log_imm.xml
decode_212 :: (a) -> a
decode_212 f = f
encode_212 :: (a) -> a
encode_212 f = f
parse_212 :: (a) -> Parser a
parse_212 f = return f
show_212 :: ShowS
show_212 = id

-- '  <Xd|SP>, <Xn|SP>, #<imm>{, <shift>}'
-- ADD_64_addsub_imm   add_addsub_imm.xml
-- SUB_64_addsub_imm   sub_addsub_imm.xml
decode_213 :: (a) -> a
decode_213 f = f
encode_213 :: (a) -> a
encode_213 f = f
parse_213 :: (a) -> Parser a
parse_213 f = return f
show_213 :: ShowS
show_213 = id

-- '  <Xd|SP>, <Xn|SP>, <R><m>{, <extend> {#<amount>}}'
-- ADD_64_addsub_ext   add_addsub_ext.xml
-- SUB_64_addsub_ext   sub_addsub_ext.xml
decode_214 :: (a) -> a
decode_214 f = f
encode_214 :: (a) -> a
encode_214 f = f
parse_214 :: (a) -> Parser a
parse_214 f = return f
show_214 :: ShowS
show_214 = id

-- '  <Xn>'
-- BLR_64_branch_reg   blr.xml
-- BLRAAZ_64_branch_regblra.xml
-- BLRABZ_64_branch_regblra.xml
-- BR_64_branch_reg    br.xml
-- BRAAZ_64_branch_reg bra.xml
-- BRABZ_64_branch_reg bra.xml
decode_215 :: (a) -> a
decode_215 f = f
encode_215 :: (a) -> a
encode_215 f = f
parse_215 :: (a) -> Parser a
parse_215 f = return f
show_215 :: ShowS
show_215 = id

-- '  <Xn>, #<imm>, #<nzcv>, <cond>'
-- CCMN_64_condcmp_imm ccmn_imm.xml
-- CCMP_64_condcmp_imm ccmp_imm.xml
decode_216 :: (a) -> a
decode_216 f = f
encode_216 :: (a) -> a
encode_216 f = f
parse_216 :: (a) -> Parser a
parse_216 f = return f
show_216 :: ShowS
show_216 = id

-- '  <Xn>, <Xm>, #<nzcv>, <cond>'
-- CCMN_64_condcmp_reg ccmn_reg.xml
-- CCMP_64_condcmp_reg ccmp_reg.xml
decode_217 :: (a) -> a
decode_217 f = f
encode_217 :: (a) -> a
encode_217 f = f
parse_217 :: (a) -> Parser a
parse_217 f = return f
show_217 :: ShowS
show_217 = id

-- '  <Xn>, <Xm|SP>'
-- BLRAA_64P_branch_regblra.xml
-- BLRAB_64P_branch_regblra.xml
-- BRAA_64P_branch_reg bra.xml
-- BRAB_64P_branch_reg bra.xml
decode_218 :: (a) -> a
decode_218 f = f
encode_218 :: (a) -> a
encode_218 f = f
parse_218 :: (a) -> Parser a
parse_218 f = return f
show_218 :: ShowS
show_218 = id

-- '  <Xs>, <X(s+1)>, <Xt>, <X(t+1)>, [<Xn|SP>{,#0}]'
-- CASP_CP64_ldstexcl  casp.xml
-- CASPA_CP64_ldstexcl casp.xml
-- CASPAL_CP64_ldstexclcasp.xml
-- CASPL_CP64_ldstexcl casp.xml
decode_219 :: (a) -> a
decode_219 f = f
encode_219 :: (a) -> a
encode_219 f = f
parse_219 :: (a) -> Parser a
parse_219 f = return f
show_219 :: ShowS
show_219 = id

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
decode_220 :: (a) -> a
decode_220 f = f
encode_220 :: (a) -> a
encode_220 f = f
parse_220 :: (a) -> Parser a
parse_220 f = return f
show_220 :: ShowS
show_220 = id

-- '  <Xs>, <Xt>, [<Xn|SP>{,#0}]'
-- CAS_C64_ldstexcl    cas.xml
-- CASA_C64_ldstexcl   cas.xml
-- CASAL_C64_ldstexcl  cas.xml
-- CASL_C64_ldstexcl   cas.xml
decode_221 :: (a) -> a
decode_221 f = f
encode_221 :: (a) -> a
encode_221 f = f
parse_221 :: (a) -> Parser a
parse_221 f = return f
show_221 :: ShowS
show_221 = id

-- '  <Xt1>, <Xt2>, [<Xn|SP>, #<imm>]!'
-- LDP_64_ldstpair_pre ldp_gen.xml
-- LDPSW_64_ldstpair_preldpsw.xml
-- STP_64_ldstpair_pre stp_gen.xml
decode_222 :: (a) -> a
decode_222 f = f
encode_222 :: (a) -> a
encode_222 f = f
parse_222 :: (a) -> Parser a
parse_222 f = return f
show_222 :: ShowS
show_222 = id

-- '  <Xt1>, <Xt2>, [<Xn|SP>], #<imm>'
-- LDP_64_ldstpair_postldp_gen.xml
-- LDPSW_64_ldstpair_postldpsw.xml
-- STP_64_ldstpair_poststp_gen.xml
decode_223 :: (a) -> a
decode_223 f = f
encode_223 :: (a) -> a
encode_223 f = f
parse_223 :: (a) -> Parser a
parse_223 f = return f
show_223 :: ShowS
show_223 = id

-- '  <Xt1>, <Xt2>, [<Xn|SP>{, #<imm>}]'
-- LDNP_64_ldstnapair_offsldnp_gen.xml
-- LDP_64_ldstpair_off ldp_gen.xml
-- LDPSW_64_ldstpair_offldpsw.xml
-- STNP_64_ldstnapair_offsstnp_gen.xml
-- STP_64_ldstpair_off stp_gen.xml
decode_224 :: (a) -> a
decode_224 f = f
encode_224 :: (a) -> a
encode_224 f = f
parse_224 :: (a) -> Parser a
parse_224 f = return f
show_224 :: ShowS
show_224 = id

-- '  <Xt1>, <Xt2>, [<Xn|SP>{,#0}]'
-- LDAXP_LP64_ldstexcl ldaxp.xml
-- LDXP_LP64_ldstexcl  ldxp.xml
decode_225 :: (a) -> a
decode_225 f = f
encode_225 :: (a) -> a
encode_225 f = f
parse_225 :: (a) -> Parser a
parse_225 f = return f
show_225 :: ShowS
show_225 = id

-- '  <Xt>, #<op1>, <Cn>, <Cm>, #<op2>'
-- SYSL_RC_system      sysl.xml
decode_226 :: (a) -> a
decode_226 f = f
encode_226 :: (a) -> a
encode_226 f = f
parse_226 :: (a) -> Parser a
parse_226 f = return f
show_226 :: ShowS
show_226 = id

-- '  <Xt>, (<systemreg>|S<op0>_<op1>_<Cn>_<Cm>_<op2>)'
-- MRS_RS_system       mrs.xml
decode_227 :: (a) -> a
decode_227 f = f
encode_227 :: (a) -> a
encode_227 f = f
parse_227 :: (a) -> Parser a
parse_227 f = return f
show_227 :: ShowS
show_227 = id

-- '  <Xt>, <label>'
-- CBNZ_64_compbranch  cbnz.xml
-- CBZ_64_compbranch   cbz.xml
-- LDR_64_loadlit      ldr_lit_gen.xml
-- LDRSW_64_loadlit    ldrsw_lit.xml
decode_228 :: (a) -> a
decode_228 f = f
encode_228 :: (a) -> a
encode_228 f = f
parse_228 :: (a) -> Parser a
parse_228 f = return f
show_228 :: ShowS
show_228 = id

-- '  <Xt>, [<Xn|SP> {,#0}]'
-- LDAPR_64L_memop     ldapr.xml
decode_229 :: (a) -> a
decode_229 f = f
encode_229 :: (a) -> a
encode_229 f = f
parse_229 :: (a) -> Parser a
parse_229 f = return f
show_229 :: ShowS
show_229 = id

-- '  <Xt>, [<Xn|SP>, #<simm>]!'
-- LDR_64_ldst_immpre  ldr_imm_gen.xml
-- LDRSB_64_ldst_immpreldrsb_imm.xml
-- LDRSH_64_ldst_immpreldrsh_imm.xml
-- LDRSW_64_ldst_immpreldrsw_imm.xml
-- STR_64_ldst_immpre  str_imm_gen.xml
decode_230 :: (a) -> a
decode_230 f = f
encode_230 :: (a) -> a
encode_230 f = f
parse_230 :: (a) -> Parser a
parse_230 f = return f
show_230 :: ShowS
show_230 = id

-- '  <Xt>, [<Xn|SP>, (<Wm>|<Xm>), <extend> {<amount>}]'
-- LDRSB_64B_ldst_regoffldrsb_reg.xml
decode_231 :: (a) -> a
decode_231 f = f
encode_231 :: (a) -> a
encode_231 f = f
parse_231 :: (a) -> Parser a
parse_231 f = return f
show_231 :: ShowS
show_231 = id

-- '  <Xt>, [<Xn|SP>, (<Wm>|<Xm>){, <extend> {<amount>}}]'
-- LDR_64_ldst_regoff  ldr_reg_gen.xml
-- LDRSH_64_ldst_regoffldrsh_reg.xml
-- LDRSW_64_ldst_regoffldrsw_reg.xml
-- STR_64_ldst_regoff  str_reg_gen.xml
decode_232 :: (a) -> a
decode_232 f = f
encode_232 :: (a) -> a
encode_232 f = f
parse_232 :: (a) -> Parser a
parse_232 f = return f
show_232 :: ShowS
show_232 = id

-- '  <Xt>, [<Xn|SP>, <Xm>{, LSL <amount>}]'
-- LDRSB_64BL_ldst_regoffldrsb_reg.xml
decode_233 :: (a) -> a
decode_233 f = f
encode_233 :: (a) -> a
encode_233 f = f
parse_233 :: (a) -> Parser a
parse_233 f = return f
show_233 :: ShowS
show_233 = id

-- '  <Xt>, [<Xn|SP>], #<simm>'
-- LDR_64_ldst_immpost ldr_imm_gen.xml
-- LDRSB_64_ldst_immpostldrsb_imm.xml
-- LDRSH_64_ldst_immpostldrsh_imm.xml
-- LDRSW_64_ldst_immpostldrsw_imm.xml
-- STR_64_ldst_immpost str_imm_gen.xml
decode_234 :: (a) -> a
decode_234 f = f
encode_234 :: (a) -> a
encode_234 f = f
parse_234 :: (a) -> Parser a
parse_234 f = return f
show_234 :: ShowS
show_234 = id

-- '  <Xt>, [<Xn|SP>{, #<pimm>}]'
-- LDR_64_ldst_pos     ldr_imm_gen.xml
-- LDRSB_64_ldst_pos   ldrsb_imm.xml
-- LDRSH_64_ldst_pos   ldrsh_imm.xml
-- LDRSW_64_ldst_pos   ldrsw_imm.xml
-- STR_64_ldst_pos     str_imm_gen.xml
decode_235 :: (a) -> a
decode_235 f = f
encode_235 :: (a) -> a
encode_235 f = f
parse_235 :: (a) -> Parser a
parse_235 f = return f
show_235 :: ShowS
show_235 = id

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
decode_236 :: (a) -> a
decode_236 f = f
encode_236 :: (a) -> a
encode_236 f = f
parse_236 :: (a) -> Parser a
parse_236 f = return f
show_236 :: ShowS
show_236 = id

-- '  <Xt>, [<Xn|SP>{, #<simm>}]!'
-- LDRAA_64W_ldst_pac  ldra.xml
-- LDRAB_64W_ldst_pac  ldra.xml
decode_237 :: (a) -> a
decode_237 f = f
encode_237 :: (a) -> a
encode_237 f = f
parse_237 :: (a) -> Parser a
parse_237 f = return f
show_237 :: ShowS
show_237 = id

-- '  <Xt>, [<Xn|SP>{,#0}]'
-- LDAR_LR64_ldstexcl  ldar.xml
-- LDAXR_LR64_ldstexcl ldaxr.xml
-- LDLAR_LR64_ldstexcl ldlar.xml
-- LDXR_LR64_ldstexcl  ldxr.xml
-- STLLR_SL64_ldstexcl stllr.xml
-- STLR_SL64_ldstexcl  stlr.xml
decode_238 :: (a) -> a
decode_238 f = f
encode_238 :: (a) -> a
encode_238 f = f
parse_238 :: (a) -> Parser a
parse_238 f = return f
show_238 :: ShowS
show_238 = id

-- '  <label>'
-- B_only_branch_imm   b_uncond.xml
-- BL_only_branch_imm  bl.xml
decode_239 :: (a) -> a
decode_239 f = f
encode_239 :: (a) -> a
encode_239 f = f
parse_239 :: (a) -> Parser a
parse_239 f = return f
show_239 :: ShowS
show_239 = id

-- '  <option>|#<imm>'
-- DMB_BO_system       dmb.xml
-- DSB_BO_system       dsb.xml
decode_240 :: (a) -> a
decode_240 f = f
encode_240 :: (a) -> a
encode_240 f = f
parse_240 :: (a) -> Parser a
parse_240 f = return f
show_240 :: ShowS
show_240 = id

-- '  <pstatefield>, #<imm>'
-- MSR_SI_system       msr_imm.xml
decode_241 :: (a) -> a
decode_241 f = f
encode_241 :: (a) -> a
encode_241 f = f
parse_241 :: (a) -> Parser a
parse_241 f = return f
show_241 :: ShowS
show_241 = id

-- '  { <Vt>.<T> }, [<Xn|SP>]'
-- LD1_asisdlse_R1_1v  ld1_advsimd_mult.xml
-- LD1R_asisdlso_R1    ld1r_advsimd.xml
-- ST1_asisdlse_R1_1v  st1_advsimd_mult.xml
decode_242 :: (a) -> a
decode_242 f = f
encode_242 :: (a) -> a
encode_242 f = f
parse_242 :: (a) -> Parser a
parse_242 f = return f
show_242 :: ShowS
show_242 = id

-- '  { <Vt>.<T> }, [<Xn|SP>], <Xm>'
-- LD1_asisdlsep_R1_r1 ld1_advsimd_mult.xml
-- LD1R_asisdlsop_RX1_rld1r_advsimd.xml
-- ST1_asisdlsep_R1_r1 st1_advsimd_mult.xml
decode_243 :: (a) -> a
decode_243 f = f
encode_243 :: (a) -> a
encode_243 f = f
parse_243 :: (a) -> Parser a
parse_243 f = return f
show_243 :: ShowS
show_243 = id

-- '  { <Vt>.<T> }, [<Xn|SP>], <imm>'
-- LD1_asisdlsep_I1_i1 ld1_advsimd_mult.xml
-- LD1R_asisdlsop_R1_i ld1r_advsimd.xml
-- ST1_asisdlsep_I1_i1 st1_advsimd_mult.xml
decode_244 :: (a) -> a
decode_244 f = f
encode_244 :: (a) -> a
encode_244 f = f
parse_244 :: (a) -> Parser a
parse_244 f = return f
show_244 :: ShowS
show_244 = id

-- '  { <Vt>.<T>, <Vt2>.<T> }, [<Xn|SP>]'
-- LD1_asisdlse_R2_2v  ld1_advsimd_mult.xml
-- LD2_asisdlse_R2     ld2_advsimd_mult.xml
-- LD2R_asisdlso_R2    ld2r_advsimd.xml
-- ST1_asisdlse_R2_2v  st1_advsimd_mult.xml
-- ST2_asisdlse_R2     st2_advsimd_mult.xml
decode_245 :: (a) -> a
decode_245 f = f
encode_245 :: (a) -> a
encode_245 f = f
parse_245 :: (a) -> Parser a
parse_245 f = return f
show_245 :: ShowS
show_245 = id

-- '  { <Vt>.<T>, <Vt2>.<T> }, [<Xn|SP>], <Xm>'
-- LD1_asisdlsep_R2_r2 ld1_advsimd_mult.xml
-- LD2_asisdlsep_R2_r  ld2_advsimd_mult.xml
-- LD2R_asisdlsop_RX2_rld2r_advsimd.xml
-- ST1_asisdlsep_R2_r2 st1_advsimd_mult.xml
-- ST2_asisdlsep_R2_r  st2_advsimd_mult.xml
decode_246 :: (a) -> a
decode_246 f = f
encode_246 :: (a) -> a
encode_246 f = f
parse_246 :: (a) -> Parser a
parse_246 f = return f
show_246 :: ShowS
show_246 = id

-- '  { <Vt>.<T>, <Vt2>.<T> }, [<Xn|SP>], <imm>'
-- LD1_asisdlsep_I2_i2 ld1_advsimd_mult.xml
-- LD2_asisdlsep_I2_i  ld2_advsimd_mult.xml
-- LD2R_asisdlsop_R2_i ld2r_advsimd.xml
-- ST1_asisdlsep_I2_i2 st1_advsimd_mult.xml
-- ST2_asisdlsep_I2_i  st2_advsimd_mult.xml
decode_247 :: (a) -> a
decode_247 f = f
encode_247 :: (a) -> a
encode_247 f = f
parse_247 :: (a) -> Parser a
parse_247 f = return f
show_247 :: ShowS
show_247 = id

-- '  { <Vt>.<T>, <Vt2>.<T>, <Vt3>.<T> }, [<Xn|SP>]'
-- LD1_asisdlse_R3_3v  ld1_advsimd_mult.xml
-- LD3_asisdlse_R3     ld3_advsimd_mult.xml
-- LD3R_asisdlso_R3    ld3r_advsimd.xml
-- ST1_asisdlse_R3_3v  st1_advsimd_mult.xml
-- ST3_asisdlse_R3     st3_advsimd_mult.xml
decode_248 :: (a) -> a
decode_248 f = f
encode_248 :: (a) -> a
encode_248 f = f
parse_248 :: (a) -> Parser a
parse_248 f = return f
show_248 :: ShowS
show_248 = id

-- '  { <Vt>.<T>, <Vt2>.<T>, <Vt3>.<T> }, [<Xn|SP>], <Xm>'
-- LD1_asisdlsep_R3_r3 ld1_advsimd_mult.xml
-- LD3_asisdlsep_R3_r  ld3_advsimd_mult.xml
-- LD3R_asisdlsop_RX3_rld3r_advsimd.xml
-- ST1_asisdlsep_R3_r3 st1_advsimd_mult.xml
-- ST3_asisdlsep_R3_r  st3_advsimd_mult.xml
decode_249 :: (a) -> a
decode_249 f = f
encode_249 :: (a) -> a
encode_249 f = f
parse_249 :: (a) -> Parser a
parse_249 f = return f
show_249 :: ShowS
show_249 = id

-- '  { <Vt>.<T>, <Vt2>.<T>, <Vt3>.<T> }, [<Xn|SP>], <imm>'
-- LD1_asisdlsep_I3_i3 ld1_advsimd_mult.xml
-- LD3_asisdlsep_I3_i  ld3_advsimd_mult.xml
-- LD3R_asisdlsop_R3_i ld3r_advsimd.xml
-- ST1_asisdlsep_I3_i3 st1_advsimd_mult.xml
-- ST3_asisdlsep_I3_i  st3_advsimd_mult.xml
decode_250 :: (a) -> a
decode_250 f = f
encode_250 :: (a) -> a
encode_250 f = f
parse_250 :: (a) -> Parser a
parse_250 f = return f
show_250 :: ShowS
show_250 = id

-- '  { <Vt>.<T>, <Vt2>.<T>, <Vt3>.<T>, <Vt4>.<T> }, [<Xn|SP>]'
-- LD1_asisdlse_R4_4v  ld1_advsimd_mult.xml
-- LD4_asisdlse_R4     ld4_advsimd_mult.xml
-- LD4R_asisdlso_R4    ld4r_advsimd.xml
-- ST1_asisdlse_R4_4v  st1_advsimd_mult.xml
-- ST4_asisdlse_R4     st4_advsimd_mult.xml
decode_251 :: (a) -> a
decode_251 f = f
encode_251 :: (a) -> a
encode_251 f = f
parse_251 :: (a) -> Parser a
parse_251 f = return f
show_251 :: ShowS
show_251 = id

-- '  { <Vt>.<T>, <Vt2>.<T>, <Vt3>.<T>, <Vt4>.<T> }, [<Xn|SP>], <Xm>'
-- LD1_asisdlsep_R4_r4 ld1_advsimd_mult.xml
-- LD4_asisdlsep_R4_r  ld4_advsimd_mult.xml
-- LD4R_asisdlsop_RX4_rld4r_advsimd.xml
-- ST1_asisdlsep_R4_r4 st1_advsimd_mult.xml
-- ST4_asisdlsep_R4_r  st4_advsimd_mult.xml
decode_252 :: (a) -> a
decode_252 f = f
encode_252 :: (a) -> a
encode_252 f = f
parse_252 :: (a) -> Parser a
parse_252 f = return f
show_252 :: ShowS
show_252 = id

-- '  { <Vt>.<T>, <Vt2>.<T>, <Vt3>.<T>, <Vt4>.<T> }, [<Xn|SP>], <imm>'
-- LD1_asisdlsep_I4_i4 ld1_advsimd_mult.xml
-- LD4_asisdlsep_I4_i  ld4_advsimd_mult.xml
-- LD4R_asisdlsop_R4_i ld4r_advsimd.xml
-- ST1_asisdlsep_I4_i4 st1_advsimd_mult.xml
-- ST4_asisdlsep_I4_i  st4_advsimd_mult.xml
decode_253 :: (a) -> a
decode_253 f = f
encode_253 :: (a) -> a
encode_253 f = f
parse_253 :: (a) -> Parser a
parse_253 f = return f
show_253 :: ShowS
show_253 = id

-- '  { <Vt>.B }[<index>], [<Xn|SP>]'
-- LD1_asisdlso_B1_1b  ld1_advsimd_sngl.xml
-- ST1_asisdlso_B1_1b  st1_advsimd_sngl.xml
decode_254 :: (a) -> a
decode_254 f = f
encode_254 :: (a) -> a
encode_254 f = f
parse_254 :: (a) -> Parser a
parse_254 f = return f
show_254 :: ShowS
show_254 = id

-- '  { <Vt>.B }[<index>], [<Xn|SP>], #1'
-- LD1_asisdlsop_B1_i1bld1_advsimd_sngl.xml
-- ST1_asisdlsop_B1_i1bst1_advsimd_sngl.xml
decode_255 :: (a) -> a
decode_255 f = f
encode_255 :: (a) -> a
encode_255 f = f
parse_255 :: (a) -> Parser a
parse_255 f = return f
show_255 :: ShowS
show_255 = id

-- '  { <Vt>.B }[<index>], [<Xn|SP>], <Xm>'
-- LD1_asisdlsop_BX1_r1bld1_advsimd_sngl.xml
-- ST1_asisdlsop_BX1_r1bst1_advsimd_sngl.xml
decode_256 :: (a) -> a
decode_256 f = f
encode_256 :: (a) -> a
encode_256 f = f
parse_256 :: (a) -> Parser a
parse_256 f = return f
show_256 :: ShowS
show_256 = id

-- '  { <Vt>.B, <Vt2>.B }[<index>], [<Xn|SP>]'
-- LD2_asisdlso_B2_2b  ld2_advsimd_sngl.xml
-- ST2_asisdlso_B2_2b  st2_advsimd_sngl.xml
decode_257 :: (a) -> a
decode_257 f = f
encode_257 :: (a) -> a
encode_257 f = f
parse_257 :: (a) -> Parser a
parse_257 f = return f
show_257 :: ShowS
show_257 = id

-- '  { <Vt>.B, <Vt2>.B }[<index>], [<Xn|SP>], #2'
-- LD2_asisdlsop_B2_i2bld2_advsimd_sngl.xml
-- ST2_asisdlsop_B2_i2bst2_advsimd_sngl.xml
decode_258 :: (a) -> a
decode_258 f = f
encode_258 :: (a) -> a
encode_258 f = f
parse_258 :: (a) -> Parser a
parse_258 f = return f
show_258 :: ShowS
show_258 = id

-- '  { <Vt>.B, <Vt2>.B }[<index>], [<Xn|SP>], <Xm>'
-- LD2_asisdlsop_BX2_r2bld2_advsimd_sngl.xml
-- ST2_asisdlsop_BX2_r2bst2_advsimd_sngl.xml
decode_259 :: (a) -> a
decode_259 f = f
encode_259 :: (a) -> a
encode_259 f = f
parse_259 :: (a) -> Parser a
parse_259 f = return f
show_259 :: ShowS
show_259 = id

-- '  { <Vt>.B, <Vt2>.B, <Vt3>.B }[<index>], [<Xn|SP>]'
-- LD3_asisdlso_B3_3b  ld3_advsimd_sngl.xml
-- ST3_asisdlso_B3_3b  st3_advsimd_sngl.xml
decode_260 :: (a) -> a
decode_260 f = f
encode_260 :: (a) -> a
encode_260 f = f
parse_260 :: (a) -> Parser a
parse_260 f = return f
show_260 :: ShowS
show_260 = id

-- '  { <Vt>.B, <Vt2>.B, <Vt3>.B }[<index>], [<Xn|SP>], #3'
-- LD3_asisdlsop_B3_i3bld3_advsimd_sngl.xml
-- ST3_asisdlsop_B3_i3bst3_advsimd_sngl.xml
decode_261 :: (a) -> a
decode_261 f = f
encode_261 :: (a) -> a
encode_261 f = f
parse_261 :: (a) -> Parser a
parse_261 f = return f
show_261 :: ShowS
show_261 = id

-- '  { <Vt>.B, <Vt2>.B, <Vt3>.B }[<index>], [<Xn|SP>], <Xm>'
-- LD3_asisdlsop_BX3_r3bld3_advsimd_sngl.xml
-- ST3_asisdlsop_BX3_r3bst3_advsimd_sngl.xml
decode_262 :: (a) -> a
decode_262 f = f
encode_262 :: (a) -> a
encode_262 f = f
parse_262 :: (a) -> Parser a
parse_262 f = return f
show_262 :: ShowS
show_262 = id

-- '  { <Vt>.B, <Vt2>.B, <Vt3>.B, <Vt4>.B }[<index>], [<Xn|SP>]'
-- LD4_asisdlso_B4_4b  ld4_advsimd_sngl.xml
-- ST4_asisdlso_B4_4b  st4_advsimd_sngl.xml
decode_263 :: (a) -> a
decode_263 f = f
encode_263 :: (a) -> a
encode_263 f = f
parse_263 :: (a) -> Parser a
parse_263 f = return f
show_263 :: ShowS
show_263 = id

-- '  { <Vt>.B, <Vt2>.B, <Vt3>.B, <Vt4>.B }[<index>], [<Xn|SP>], #4'
-- LD4_asisdlsop_B4_i4bld4_advsimd_sngl.xml
-- ST4_asisdlsop_B4_i4bst4_advsimd_sngl.xml
decode_264 :: (a) -> a
decode_264 f = f
encode_264 :: (a) -> a
encode_264 f = f
parse_264 :: (a) -> Parser a
parse_264 f = return f
show_264 :: ShowS
show_264 = id

-- '  { <Vt>.B, <Vt2>.B, <Vt3>.B, <Vt4>.B }[<index>], [<Xn|SP>], <Xm>'
-- LD4_asisdlsop_BX4_r4bld4_advsimd_sngl.xml
-- ST4_asisdlsop_BX4_r4bst4_advsimd_sngl.xml
decode_265 :: (a) -> a
decode_265 f = f
encode_265 :: (a) -> a
encode_265 f = f
parse_265 :: (a) -> Parser a
parse_265 f = return f
show_265 :: ShowS
show_265 = id

-- '  { <Vt>.D }[<index>], [<Xn|SP>]'
-- LD1_asisdlso_D1_1d  ld1_advsimd_sngl.xml
-- ST1_asisdlso_D1_1d  st1_advsimd_sngl.xml
decode_266 :: (a) -> a
decode_266 f = f
encode_266 :: (a) -> a
encode_266 f = f
parse_266 :: (a) -> Parser a
parse_266 f = return f
show_266 :: ShowS
show_266 = id

-- '  { <Vt>.D }[<index>], [<Xn|SP>], #8'
-- LD1_asisdlsop_D1_i1dld1_advsimd_sngl.xml
-- ST1_asisdlsop_D1_i1dst1_advsimd_sngl.xml
decode_267 :: (a) -> a
decode_267 f = f
encode_267 :: (a) -> a
encode_267 f = f
parse_267 :: (a) -> Parser a
parse_267 f = return f
show_267 :: ShowS
show_267 = id

-- '  { <Vt>.D }[<index>], [<Xn|SP>], <Xm>'
-- LD1_asisdlsop_DX1_r1dld1_advsimd_sngl.xml
-- ST1_asisdlsop_DX1_r1dst1_advsimd_sngl.xml
decode_268 :: (a) -> a
decode_268 f = f
encode_268 :: (a) -> a
encode_268 f = f
parse_268 :: (a) -> Parser a
parse_268 f = return f
show_268 :: ShowS
show_268 = id

-- '  { <Vt>.D, <Vt2>.D }[<index>], [<Xn|SP>]'
-- LD2_asisdlso_D2_2d  ld2_advsimd_sngl.xml
-- ST2_asisdlso_D2_2d  st2_advsimd_sngl.xml
decode_269 :: (a) -> a
decode_269 f = f
encode_269 :: (a) -> a
encode_269 f = f
parse_269 :: (a) -> Parser a
parse_269 f = return f
show_269 :: ShowS
show_269 = id

-- '  { <Vt>.D, <Vt2>.D }[<index>], [<Xn|SP>], #16'
-- LD2_asisdlsop_D2_i2dld2_advsimd_sngl.xml
-- ST2_asisdlsop_D2_i2dst2_advsimd_sngl.xml
decode_270 :: (a) -> a
decode_270 f = f
encode_270 :: (a) -> a
encode_270 f = f
parse_270 :: (a) -> Parser a
parse_270 f = return f
show_270 :: ShowS
show_270 = id

-- '  { <Vt>.D, <Vt2>.D }[<index>], [<Xn|SP>], <Xm>'
-- LD2_asisdlsop_DX2_r2dld2_advsimd_sngl.xml
-- ST2_asisdlsop_DX2_r2dst2_advsimd_sngl.xml
decode_271 :: (a) -> a
decode_271 f = f
encode_271 :: (a) -> a
encode_271 f = f
parse_271 :: (a) -> Parser a
parse_271 f = return f
show_271 :: ShowS
show_271 = id

-- '  { <Vt>.D, <Vt2>.D, <Vt3>.D }[<index>], [<Xn|SP>]'
-- LD3_asisdlso_D3_3d  ld3_advsimd_sngl.xml
-- ST3_asisdlso_D3_3d  st3_advsimd_sngl.xml
decode_272 :: (a) -> a
decode_272 f = f
encode_272 :: (a) -> a
encode_272 f = f
parse_272 :: (a) -> Parser a
parse_272 f = return f
show_272 :: ShowS
show_272 = id

-- '  { <Vt>.D, <Vt2>.D, <Vt3>.D }[<index>], [<Xn|SP>], #24'
-- LD3_asisdlsop_D3_i3dld3_advsimd_sngl.xml
-- ST3_asisdlsop_D3_i3dst3_advsimd_sngl.xml
decode_273 :: (a) -> a
decode_273 f = f
encode_273 :: (a) -> a
encode_273 f = f
parse_273 :: (a) -> Parser a
parse_273 f = return f
show_273 :: ShowS
show_273 = id

-- '  { <Vt>.D, <Vt2>.D, <Vt3>.D }[<index>], [<Xn|SP>], <Xm>'
-- LD3_asisdlsop_DX3_r3dld3_advsimd_sngl.xml
-- ST3_asisdlsop_DX3_r3dst3_advsimd_sngl.xml
decode_274 :: (a) -> a
decode_274 f = f
encode_274 :: (a) -> a
encode_274 f = f
parse_274 :: (a) -> Parser a
parse_274 f = return f
show_274 :: ShowS
show_274 = id

-- '  { <Vt>.D, <Vt2>.D, <Vt3>.D, <Vt4>.D }[<index>], [<Xn|SP>]'
-- LD4_asisdlso_D4_4d  ld4_advsimd_sngl.xml
-- ST4_asisdlso_D4_4d  st4_advsimd_sngl.xml
decode_275 :: (a) -> a
decode_275 f = f
encode_275 :: (a) -> a
encode_275 f = f
parse_275 :: (a) -> Parser a
parse_275 f = return f
show_275 :: ShowS
show_275 = id

-- '  { <Vt>.D, <Vt2>.D, <Vt3>.D, <Vt4>.D }[<index>], [<Xn|SP>], #32'
-- LD4_asisdlsop_D4_i4dld4_advsimd_sngl.xml
-- ST4_asisdlsop_D4_i4dst4_advsimd_sngl.xml
decode_276 :: (a) -> a
decode_276 f = f
encode_276 :: (a) -> a
encode_276 f = f
parse_276 :: (a) -> Parser a
parse_276 f = return f
show_276 :: ShowS
show_276 = id

-- '  { <Vt>.D, <Vt2>.D, <Vt3>.D, <Vt4>.D }[<index>], [<Xn|SP>], <Xm>'
-- LD4_asisdlsop_DX4_r4dld4_advsimd_sngl.xml
-- ST4_asisdlsop_DX4_r4dst4_advsimd_sngl.xml
decode_277 :: (a) -> a
decode_277 f = f
encode_277 :: (a) -> a
encode_277 f = f
parse_277 :: (a) -> Parser a
parse_277 f = return f
show_277 :: ShowS
show_277 = id

-- '  { <Vt>.H }[<index>], [<Xn|SP>]'
-- LD1_asisdlso_H1_1h  ld1_advsimd_sngl.xml
-- ST1_asisdlso_H1_1h  st1_advsimd_sngl.xml
decode_278 :: (a) -> a
decode_278 f = f
encode_278 :: (a) -> a
encode_278 f = f
parse_278 :: (a) -> Parser a
parse_278 f = return f
show_278 :: ShowS
show_278 = id

-- '  { <Vt>.H }[<index>], [<Xn|SP>], #2'
-- LD1_asisdlsop_H1_i1hld1_advsimd_sngl.xml
-- ST1_asisdlsop_H1_i1hst1_advsimd_sngl.xml
decode_279 :: (a) -> a
decode_279 f = f
encode_279 :: (a) -> a
encode_279 f = f
parse_279 :: (a) -> Parser a
parse_279 f = return f
show_279 :: ShowS
show_279 = id

-- '  { <Vt>.H }[<index>], [<Xn|SP>], <Xm>'
-- LD1_asisdlsop_HX1_r1hld1_advsimd_sngl.xml
-- ST1_asisdlsop_HX1_r1hst1_advsimd_sngl.xml
decode_280 :: (a) -> a
decode_280 f = f
encode_280 :: (a) -> a
encode_280 f = f
parse_280 :: (a) -> Parser a
parse_280 f = return f
show_280 :: ShowS
show_280 = id

-- '  { <Vt>.H, <Vt2>.H }[<index>], [<Xn|SP>]'
-- LD2_asisdlso_H2_2h  ld2_advsimd_sngl.xml
-- ST2_asisdlso_H2_2h  st2_advsimd_sngl.xml
decode_281 :: (a) -> a
decode_281 f = f
encode_281 :: (a) -> a
encode_281 f = f
parse_281 :: (a) -> Parser a
parse_281 f = return f
show_281 :: ShowS
show_281 = id

-- '  { <Vt>.H, <Vt2>.H }[<index>], [<Xn|SP>], #4'
-- LD2_asisdlsop_H2_i2hld2_advsimd_sngl.xml
-- ST2_asisdlsop_H2_i2hst2_advsimd_sngl.xml
decode_282 :: (a) -> a
decode_282 f = f
encode_282 :: (a) -> a
encode_282 f = f
parse_282 :: (a) -> Parser a
parse_282 f = return f
show_282 :: ShowS
show_282 = id

-- '  { <Vt>.H, <Vt2>.H }[<index>], [<Xn|SP>], <Xm>'
-- LD2_asisdlsop_HX2_r2hld2_advsimd_sngl.xml
-- ST2_asisdlsop_HX2_r2hst2_advsimd_sngl.xml
decode_283 :: (a) -> a
decode_283 f = f
encode_283 :: (a) -> a
encode_283 f = f
parse_283 :: (a) -> Parser a
parse_283 f = return f
show_283 :: ShowS
show_283 = id

-- '  { <Vt>.H, <Vt2>.H, <Vt3>.H }[<index>], [<Xn|SP>]'
-- LD3_asisdlso_H3_3h  ld3_advsimd_sngl.xml
-- ST3_asisdlso_H3_3h  st3_advsimd_sngl.xml
decode_284 :: (a) -> a
decode_284 f = f
encode_284 :: (a) -> a
encode_284 f = f
parse_284 :: (a) -> Parser a
parse_284 f = return f
show_284 :: ShowS
show_284 = id

-- '  { <Vt>.H, <Vt2>.H, <Vt3>.H }[<index>], [<Xn|SP>], #6'
-- LD3_asisdlsop_H3_i3hld3_advsimd_sngl.xml
-- ST3_asisdlsop_H3_i3hst3_advsimd_sngl.xml
decode_285 :: (a) -> a
decode_285 f = f
encode_285 :: (a) -> a
encode_285 f = f
parse_285 :: (a) -> Parser a
parse_285 f = return f
show_285 :: ShowS
show_285 = id

-- '  { <Vt>.H, <Vt2>.H, <Vt3>.H }[<index>], [<Xn|SP>], <Xm>'
-- LD3_asisdlsop_HX3_r3hld3_advsimd_sngl.xml
-- ST3_asisdlsop_HX3_r3hst3_advsimd_sngl.xml
decode_286 :: (a) -> a
decode_286 f = f
encode_286 :: (a) -> a
encode_286 f = f
parse_286 :: (a) -> Parser a
parse_286 f = return f
show_286 :: ShowS
show_286 = id

-- '  { <Vt>.H, <Vt2>.H, <Vt3>.H, <Vt4>.H }[<index>], [<Xn|SP>]'
-- LD4_asisdlso_H4_4h  ld4_advsimd_sngl.xml
-- ST4_asisdlso_H4_4h  st4_advsimd_sngl.xml
decode_287 :: (a) -> a
decode_287 f = f
encode_287 :: (a) -> a
encode_287 f = f
parse_287 :: (a) -> Parser a
parse_287 f = return f
show_287 :: ShowS
show_287 = id

-- '  { <Vt>.H, <Vt2>.H, <Vt3>.H, <Vt4>.H }[<index>], [<Xn|SP>], #8'
-- LD4_asisdlsop_H4_i4hld4_advsimd_sngl.xml
-- ST4_asisdlsop_H4_i4hst4_advsimd_sngl.xml
decode_288 :: (a) -> a
decode_288 f = f
encode_288 :: (a) -> a
encode_288 f = f
parse_288 :: (a) -> Parser a
parse_288 f = return f
show_288 :: ShowS
show_288 = id

-- '  { <Vt>.H, <Vt2>.H, <Vt3>.H, <Vt4>.H }[<index>], [<Xn|SP>], <Xm>'
-- LD4_asisdlsop_HX4_r4hld4_advsimd_sngl.xml
-- ST4_asisdlsop_HX4_r4hst4_advsimd_sngl.xml
decode_289 :: (a) -> a
decode_289 f = f
encode_289 :: (a) -> a
encode_289 f = f
parse_289 :: (a) -> Parser a
parse_289 f = return f
show_289 :: ShowS
show_289 = id

-- '  { <Vt>.S }[<index>], [<Xn|SP>]'
-- LD1_asisdlso_S1_1s  ld1_advsimd_sngl.xml
-- ST1_asisdlso_S1_1s  st1_advsimd_sngl.xml
decode_290 :: (a) -> a
decode_290 f = f
encode_290 :: (a) -> a
encode_290 f = f
parse_290 :: (a) -> Parser a
parse_290 f = return f
show_290 :: ShowS
show_290 = id

-- '  { <Vt>.S }[<index>], [<Xn|SP>], #4'
-- LD1_asisdlsop_S1_i1sld1_advsimd_sngl.xml
-- ST1_asisdlsop_S1_i1sst1_advsimd_sngl.xml
decode_291 :: (a) -> a
decode_291 f = f
encode_291 :: (a) -> a
encode_291 f = f
parse_291 :: (a) -> Parser a
parse_291 f = return f
show_291 :: ShowS
show_291 = id

-- '  { <Vt>.S }[<index>], [<Xn|SP>], <Xm>'
-- LD1_asisdlsop_SX1_r1sld1_advsimd_sngl.xml
-- ST1_asisdlsop_SX1_r1sst1_advsimd_sngl.xml
decode_292 :: (a) -> a
decode_292 f = f
encode_292 :: (a) -> a
encode_292 f = f
parse_292 :: (a) -> Parser a
parse_292 f = return f
show_292 :: ShowS
show_292 = id

-- '  { <Vt>.S, <Vt2>.S }[<index>], [<Xn|SP>]'
-- LD2_asisdlso_S2_2s  ld2_advsimd_sngl.xml
-- ST2_asisdlso_S2_2s  st2_advsimd_sngl.xml
decode_293 :: (a) -> a
decode_293 f = f
encode_293 :: (a) -> a
encode_293 f = f
parse_293 :: (a) -> Parser a
parse_293 f = return f
show_293 :: ShowS
show_293 = id

-- '  { <Vt>.S, <Vt2>.S }[<index>], [<Xn|SP>], #8'
-- LD2_asisdlsop_S2_i2sld2_advsimd_sngl.xml
-- ST2_asisdlsop_S2_i2sst2_advsimd_sngl.xml
decode_294 :: (a) -> a
decode_294 f = f
encode_294 :: (a) -> a
encode_294 f = f
parse_294 :: (a) -> Parser a
parse_294 f = return f
show_294 :: ShowS
show_294 = id

-- '  { <Vt>.S, <Vt2>.S }[<index>], [<Xn|SP>], <Xm>'
-- LD2_asisdlsop_SX2_r2sld2_advsimd_sngl.xml
-- ST2_asisdlsop_SX2_r2sst2_advsimd_sngl.xml
decode_295 :: (a) -> a
decode_295 f = f
encode_295 :: (a) -> a
encode_295 f = f
parse_295 :: (a) -> Parser a
parse_295 f = return f
show_295 :: ShowS
show_295 = id

-- '  { <Vt>.S, <Vt2>.S, <Vt3>.S }[<index>], [<Xn|SP>]'
-- LD3_asisdlso_S3_3s  ld3_advsimd_sngl.xml
-- ST3_asisdlso_S3_3s  st3_advsimd_sngl.xml
decode_296 :: (a) -> a
decode_296 f = f
encode_296 :: (a) -> a
encode_296 f = f
parse_296 :: (a) -> Parser a
parse_296 f = return f
show_296 :: ShowS
show_296 = id

-- '  { <Vt>.S, <Vt2>.S, <Vt3>.S }[<index>], [<Xn|SP>], #12'
-- LD3_asisdlsop_S3_i3sld3_advsimd_sngl.xml
-- ST3_asisdlsop_S3_i3sst3_advsimd_sngl.xml
decode_297 :: (a) -> a
decode_297 f = f
encode_297 :: (a) -> a
encode_297 f = f
parse_297 :: (a) -> Parser a
parse_297 f = return f
show_297 :: ShowS
show_297 = id

-- '  { <Vt>.S, <Vt2>.S, <Vt3>.S }[<index>], [<Xn|SP>], <Xm>'
-- LD3_asisdlsop_SX3_r3sld3_advsimd_sngl.xml
-- ST3_asisdlsop_SX3_r3sst3_advsimd_sngl.xml
decode_298 :: (a) -> a
decode_298 f = f
encode_298 :: (a) -> a
encode_298 f = f
parse_298 :: (a) -> Parser a
parse_298 f = return f
show_298 :: ShowS
show_298 = id

-- '  { <Vt>.S, <Vt2>.S, <Vt3>.S, <Vt4>.S }[<index>], [<Xn|SP>]'
-- LD4_asisdlso_S4_4s  ld4_advsimd_sngl.xml
-- ST4_asisdlso_S4_4s  st4_advsimd_sngl.xml
decode_299 :: (a) -> a
decode_299 f = f
encode_299 :: (a) -> a
encode_299 f = f
parse_299 :: (a) -> Parser a
parse_299 f = return f
show_299 :: ShowS
show_299 = id

-- '  { <Vt>.S, <Vt2>.S, <Vt3>.S, <Vt4>.S }[<index>], [<Xn|SP>], #16'
-- LD4_asisdlsop_S4_i4sld4_advsimd_sngl.xml
-- ST4_asisdlsop_S4_i4sst4_advsimd_sngl.xml
decode_300 :: (a) -> a
decode_300 f = f
encode_300 :: (a) -> a
encode_300 f = f
parse_300 :: (a) -> Parser a
parse_300 f = return f
show_300 :: ShowS
show_300 = id

-- '  { <Vt>.S, <Vt2>.S, <Vt3>.S, <Vt4>.S }[<index>], [<Xn|SP>], <Xm>'
-- LD4_asisdlsop_SX4_r4sld4_advsimd_sngl.xml
-- ST4_asisdlsop_SX4_r4sst4_advsimd_sngl.xml
decode_301 :: (a) -> a
decode_301 f = f
encode_301 :: (a) -> a
encode_301 f = f
parse_301 :: (a) -> Parser a
parse_301 f = return f
show_301 :: ShowS
show_301 = id

-- '  {#<imm>}'
-- CLREX_BN_system     clrex.xml
-- DCPS1_DC_exception  dcps1.xml
-- DCPS2_DC_exception  dcps2.xml
-- DCPS3_DC_exception  dcps3.xml
decode_302 :: (a) -> a
decode_302 f = f
encode_302 :: (a) -> a
encode_302 f = f
parse_302 :: (a) -> Parser a
parse_302 f = return f
show_302 :: ShowS
show_302 = id

-- '  {<Xn>}'
-- RET_64R_branch_reg  ret.xml
decode_303 :: (a) -> a
decode_303 f = f
encode_303 :: (a) -> a
encode_303 f = f
parse_303 :: (a) -> Parser a
parse_303 f = return f
show_303 :: ShowS
show_303 = id

-- '  {<option>|#<imm>}'
-- ISB_BI_system       isb.xml
decode_304 :: (a) -> a
decode_304 f = f
encode_304 :: (a) -> a
encode_304 f = f
parse_304 :: (a) -> Parser a
parse_304 f = return f
show_304 :: ShowS
show_304 = id

-- ' (<prfop>|#<imm5>), [<Xn|SP>{, #<simm>}]'
-- PRFUM_P_ldst_unscaledprfum.xml
decode_305 :: (a) -> a
decode_305 f = f
encode_305 :: (a) -> a
encode_305 f = f
parse_305 :: (a) -> Parser a
parse_305 f = return f
show_305 :: ShowS
show_305 = id

-- ' CSYNC'
-- PSB_HC_system       psb.xml
decode_306 :: (a) -> a
decode_306 f = f
encode_306 :: (a) -> a
encode_306 f = f
parse_306 :: (a) -> Parser a
parse_306 f = return f
show_306 :: ShowS
show_306 = id

-- '.<cond>  <label>'
-- B_only_condbranch   b_cond.xml
decode_307 :: (a) -> a
decode_307 f = f
encode_307 :: (a) -> a
encode_307 f = f
parse_307 :: (a) -> Parser a
parse_307 f = return f
show_307 :: ShowS
show_307 = id

-- '{2}  <Vd>.<Ta>, <Vn>.<Ta>, <Vm>.<Tb>'
-- SADDW_asimddiff_W   saddw_advsimd.xml
-- SSUBW_asimddiff_W   ssubw_advsimd.xml
-- UADDW_asimddiff_W   uaddw_advsimd.xml
-- USUBW_asimddiff_W   usubw_advsimd.xml
decode_308 :: (a) -> a
decode_308 f = f
encode_308 :: (a) -> a
encode_308 f = f
parse_308 :: (a) -> Parser a
parse_308 f = return f
show_308 :: ShowS
show_308 = id

-- '{2}  <Vd>.<Ta>, <Vn>.<Tb>'
-- FCVTL_asimdmisc_L   fcvtl_advsimd.xml
decode_309 :: (a) -> a
decode_309 f = f
encode_309 :: (a) -> a
encode_309 f = f
parse_309 :: (a) -> Parser a
parse_309 f = return f
show_309 :: ShowS
show_309 = id

-- '{2}  <Vd>.<Ta>, <Vn>.<Tb>, #<shift>'
-- SHLL_asimdmisc_S    shll_advsimd.xml
-- SSHLL_asimdshf_L    sshll_advsimd.xml
-- USHLL_asimdshf_L    ushll_advsimd.xml
decode_310 :: (a) -> a
decode_310 f = f
encode_310 :: (a) -> a
encode_310 f = f
parse_310 :: (a) -> Parser a
parse_310 f = return f
show_310 :: ShowS
show_310 = id

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
decode_311 :: (a) -> a
decode_311 f = f
encode_311 :: (a) -> a
encode_311 f = f
parse_311 :: (a) -> Parser a
parse_311 f = return f
show_311 :: ShowS
show_311 = id

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
decode_312 :: (a) -> a
decode_312 f = f
encode_312 :: (a) -> a
encode_312 f = f
parse_312 :: (a) -> Parser a
parse_312 f = return f
show_312 :: ShowS
show_312 = id

-- '{2}  <Vd>.<Tb>, <Vn>.<Ta>'
-- FCVTN_asimdmisc_N   fcvtn_advsimd.xml
-- FCVTXN_asimdmisc_N  fcvtxn_advsimd.xml
-- SQXTN_asimdmisc_N   sqxtn_advsimd.xml
-- SQXTUN_asimdmisc_N  sqxtun_advsimd.xml
-- UQXTN_asimdmisc_N   uqxtn_advsimd.xml
-- XTN_asimdmisc_N     xtn_advsimd.xml
decode_313 :: (a) -> a
decode_313 f = f
encode_313 :: (a) -> a
encode_313 f = f
parse_313 :: (a) -> Parser a
parse_313 f = return f
show_313 :: ShowS
show_313 = id

-- '{2}  <Vd>.<Tb>, <Vn>.<Ta>, #<shift>'
-- RSHRN_asimdshf_N    rshrn_advsimd.xml
-- SHRN_asimdshf_N     shrn_advsimd.xml
-- SQRSHRN_asimdshf_N  sqrshrn_advsimd.xml
-- SQRSHRUN_asimdshf_N sqrshrun_advsimd.xml
-- SQSHRN_asimdshf_N   sqshrn_advsimd.xml
-- SQSHRUN_asimdshf_N  sqshrun_advsimd.xml
-- UQRSHRN_asimdshf_N  uqrshrn_advsimd.xml
-- UQSHRN_asimdshf_N   uqshrn_advsimd.xml
decode_314 :: (a) -> a
decode_314 f = f
encode_314 :: (a) -> a
encode_314 f = f
parse_314 :: (a) -> Parser a
parse_314 f = return f
show_314 :: ShowS
show_314 = id

-- '{2}  <Vd>.<Tb>, <Vn>.<Ta>, <Vm>.<Ta>'
-- ADDHN_asimddiff_N   addhn_advsimd.xml
-- RADDHN_asimddiff_N  raddhn_advsimd.xml
-- RSUBHN_asimddiff_N  rsubhn_advsimd.xml
-- SUBHN_asimddiff_N   subhn_advsimd.xml
decode_315 :: (a) -> a
decode_315 f = f
encode_315 :: (a) -> a
encode_315 f = f
parse_315 :: (a) -> Parser a
parse_315 f = return f
show_315 :: ShowS
show_315 = id


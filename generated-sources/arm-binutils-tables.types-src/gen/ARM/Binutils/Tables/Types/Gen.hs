module ARM.Binutils.Tables.Types.Gen where

data OperandClass = AARCH64_OPND_CLASS_NIL
                  | AARCH64_OPND_CLASS_INT_REG
                  | AARCH64_OPND_CLASS_MODIFIED_REG
                  | AARCH64_OPND_CLASS_FP_REG
                  | AARCH64_OPND_CLASS_SIMD_REG
                  | AARCH64_OPND_CLASS_SIMD_ELEMENT
                  | AARCH64_OPND_CLASS_SISD_REG
                  | AARCH64_OPND_CLASS_SIMD_REGLIST
                  | AARCH64_OPND_CLASS_SVE_REG
                  | AARCH64_OPND_CLASS_PRED_REG
                  | AARCH64_OPND_CLASS_ADDRESS
                  | AARCH64_OPND_CLASS_IMMEDIATE
                  | AARCH64_OPND_CLASS_SYSTEM
                  | AARCH64_OPND_CLASS_COND
                  deriving (Eq, Read, Show, Enum)

data Opnd = AARCH64_OPND_NIL
          | AARCH64_OPND_Rd
          | AARCH64_OPND_Rn
          | AARCH64_OPND_Rm
          | AARCH64_OPND_Rt
          | AARCH64_OPND_Rt2
          | AARCH64_OPND_Rs
          | AARCH64_OPND_Ra
          | AARCH64_OPND_Rt_SYS
          | AARCH64_OPND_Rd_SP
          | AARCH64_OPND_Rn_SP
          | AARCH64_OPND_Rm_SP
          | AARCH64_OPND_PAIRREG
          | AARCH64_OPND_Rm_EXT
          | AARCH64_OPND_Rm_SFT
          | AARCH64_OPND_Fd
          | AARCH64_OPND_Fn
          | AARCH64_OPND_Fm
          | AARCH64_OPND_Fa
          | AARCH64_OPND_Ft
          | AARCH64_OPND_Ft2
          | AARCH64_OPND_Sd
          | AARCH64_OPND_Sn
          | AARCH64_OPND_Sm
          | AARCH64_OPND_Vd
          | AARCH64_OPND_Vn
          | AARCH64_OPND_Vm
          | AARCH64_OPND_VdD1
          | AARCH64_OPND_VnD1
          | AARCH64_OPND_Ed
          | AARCH64_OPND_En
          | AARCH64_OPND_Em
          | AARCH64_OPND_LVn
          | AARCH64_OPND_LVt
          | AARCH64_OPND_LVt_AL
          | AARCH64_OPND_LEt
          | AARCH64_OPND_CRn
          | AARCH64_OPND_CRm
          | AARCH64_OPND_IDX
          | AARCH64_OPND_IMM_VLSL
          | AARCH64_OPND_IMM_VLSR
          | AARCH64_OPND_SIMD_IMM
          | AARCH64_OPND_SIMD_IMM_SFT
          | AARCH64_OPND_SIMD_FPIMM
          | AARCH64_OPND_SHLL_IMM
          | AARCH64_OPND_IMM0
          | AARCH64_OPND_FPIMM0
          | AARCH64_OPND_FPIMM
          | AARCH64_OPND_IMMR
          | AARCH64_OPND_IMMS
          | AARCH64_OPND_WIDTH
          | AARCH64_OPND_IMM
          | AARCH64_OPND_UIMM3_OP1
          | AARCH64_OPND_UIMM3_OP2
          | AARCH64_OPND_UIMM4
          | AARCH64_OPND_UIMM7
          | AARCH64_OPND_BIT_NUM
          | AARCH64_OPND_EXCEPTION
          | AARCH64_OPND_CCMP_IMM
          | AARCH64_OPND_SIMM5
          | AARCH64_OPND_NZCV
          | AARCH64_OPND_LIMM
          | AARCH64_OPND_AIMM
          | AARCH64_OPND_HALF
          | AARCH64_OPND_FBITS
          | AARCH64_OPND_IMM_MOV
          | AARCH64_OPND_IMM_ROT1
          | AARCH64_OPND_IMM_ROT2
          | AARCH64_OPND_IMM_ROT3
          | AARCH64_OPND_COND
          | AARCH64_OPND_COND1
          | AARCH64_OPND_ADDR_ADRP
          | AARCH64_OPND_ADDR_PCREL14
          | AARCH64_OPND_ADDR_PCREL19
          | AARCH64_OPND_ADDR_PCREL21
          | AARCH64_OPND_ADDR_PCREL26
          | AARCH64_OPND_ADDR_SIMPLE
          | AARCH64_OPND_ADDR_REGOFF
          | AARCH64_OPND_ADDR_SIMM7
          | AARCH64_OPND_ADDR_SIMM9
          | AARCH64_OPND_ADDR_SIMM9_2
          | AARCH64_OPND_ADDR_SIMM10
          | AARCH64_OPND_ADDR_UIMM12
          | AARCH64_OPND_SIMD_ADDR_SIMPLE
          | AARCH64_OPND_SIMD_ADDR_POST
          | AARCH64_OPND_SYSREG
          | AARCH64_OPND_PSTATEFIELD
          | AARCH64_OPND_SYSREG_AT
          | AARCH64_OPND_SYSREG_DC
          | AARCH64_OPND_SYSREG_IC
          | AARCH64_OPND_SYSREG_TLBI
          | AARCH64_OPND_BARRIER
          | AARCH64_OPND_BARRIER_ISB
          | AARCH64_OPND_PRFOP
          | AARCH64_OPND_BARRIER_PSB
          | AARCH64_OPND_SVE_ADDR_RI_S4x16
          | AARCH64_OPND_SVE_ADDR_RI_S4xVL
          | AARCH64_OPND_SVE_ADDR_RI_S4x2xVL
          | AARCH64_OPND_SVE_ADDR_RI_S4x3xVL
          | AARCH64_OPND_SVE_ADDR_RI_S4x4xVL
          | AARCH64_OPND_SVE_ADDR_RI_S6xVL
          | AARCH64_OPND_SVE_ADDR_RI_S9xVL
          | AARCH64_OPND_SVE_ADDR_RI_U6
          | AARCH64_OPND_SVE_ADDR_RI_U6x2
          | AARCH64_OPND_SVE_ADDR_RI_U6x4
          | AARCH64_OPND_SVE_ADDR_RI_U6x8
          | AARCH64_OPND_SVE_ADDR_RR
          | AARCH64_OPND_SVE_ADDR_RR_LSL1
          | AARCH64_OPND_SVE_ADDR_RR_LSL2
          | AARCH64_OPND_SVE_ADDR_RR_LSL3
          | AARCH64_OPND_SVE_ADDR_RX
          | AARCH64_OPND_SVE_ADDR_RX_LSL1
          | AARCH64_OPND_SVE_ADDR_RX_LSL2
          | AARCH64_OPND_SVE_ADDR_RX_LSL3
          | AARCH64_OPND_SVE_ADDR_RZ
          | AARCH64_OPND_SVE_ADDR_RZ_LSL1
          | AARCH64_OPND_SVE_ADDR_RZ_LSL2
          | AARCH64_OPND_SVE_ADDR_RZ_LSL3
          | AARCH64_OPND_SVE_ADDR_RZ_XTW_14
          | AARCH64_OPND_SVE_ADDR_RZ_XTW_22
          | AARCH64_OPND_SVE_ADDR_RZ_XTW1_14
          | AARCH64_OPND_SVE_ADDR_RZ_XTW1_22
          | AARCH64_OPND_SVE_ADDR_RZ_XTW2_14
          | AARCH64_OPND_SVE_ADDR_RZ_XTW2_22
          | AARCH64_OPND_SVE_ADDR_RZ_XTW3_14
          | AARCH64_OPND_SVE_ADDR_RZ_XTW3_22
          | AARCH64_OPND_SVE_ADDR_ZI_U5
          | AARCH64_OPND_SVE_ADDR_ZI_U5x2
          | AARCH64_OPND_SVE_ADDR_ZI_U5x4
          | AARCH64_OPND_SVE_ADDR_ZI_U5x8
          | AARCH64_OPND_SVE_ADDR_ZZ_LSL
          | AARCH64_OPND_SVE_ADDR_ZZ_SXTW
          | AARCH64_OPND_SVE_ADDR_ZZ_UXTW
          | AARCH64_OPND_SVE_AIMM
          | AARCH64_OPND_SVE_ASIMM
          | AARCH64_OPND_SVE_FPIMM8
          | AARCH64_OPND_SVE_I1_HALF_ONE
          | AARCH64_OPND_SVE_I1_HALF_TWO
          | AARCH64_OPND_SVE_I1_ZERO_ONE
          | AARCH64_OPND_SVE_IMM_ROT1
          | AARCH64_OPND_SVE_IMM_ROT2
          | AARCH64_OPND_SVE_INV_LIMM
          | AARCH64_OPND_SVE_LIMM
          | AARCH64_OPND_SVE_LIMM_MOV
          | AARCH64_OPND_SVE_PATTERN
          | AARCH64_OPND_SVE_PATTERN_SCALED
          | AARCH64_OPND_SVE_PRFOP
          | AARCH64_OPND_SVE_Pd
          | AARCH64_OPND_SVE_Pg3
          | AARCH64_OPND_SVE_Pg4_5
          | AARCH64_OPND_SVE_Pg4_10
          | AARCH64_OPND_SVE_Pg4_16
          | AARCH64_OPND_SVE_Pm
          | AARCH64_OPND_SVE_Pn
          | AARCH64_OPND_SVE_Pt
          | AARCH64_OPND_SVE_Rm
          | AARCH64_OPND_SVE_Rn_SP
          | AARCH64_OPND_SVE_SHLIMM_PRED
          | AARCH64_OPND_SVE_SHLIMM_UNPRED
          | AARCH64_OPND_SVE_SHRIMM_PRED
          | AARCH64_OPND_SVE_SHRIMM_UNPRED
          | AARCH64_OPND_SVE_SIMM5
          | AARCH64_OPND_SVE_SIMM5B
          | AARCH64_OPND_SVE_SIMM6
          | AARCH64_OPND_SVE_SIMM8
          | AARCH64_OPND_SVE_UIMM3
          | AARCH64_OPND_SVE_UIMM7
          | AARCH64_OPND_SVE_UIMM8
          | AARCH64_OPND_SVE_UIMM8_53
          | AARCH64_OPND_SVE_VZn
          | AARCH64_OPND_SVE_Vd
          | AARCH64_OPND_SVE_Vm
          | AARCH64_OPND_SVE_Vn
          | AARCH64_OPND_SVE_Za_5
          | AARCH64_OPND_SVE_Za_16
          | AARCH64_OPND_SVE_Zd
          | AARCH64_OPND_SVE_Zm_5
          | AARCH64_OPND_SVE_Zm_16
          | AARCH64_OPND_SVE_Zm3_INDEX
          | AARCH64_OPND_SVE_Zm3_22_INDEX
          | AARCH64_OPND_SVE_Zm4_INDEX
          | AARCH64_OPND_SVE_Zn
          | AARCH64_OPND_SVE_Zn_INDEX
          | AARCH64_OPND_SVE_ZnxN
          | AARCH64_OPND_SVE_Zt
          | AARCH64_OPND_SVE_ZtxN
          deriving (Eq, Read, Show, Enum)

data OpndQualifier = AARCH64_OPND_QLF_NIL
                   | AARCH64_OPND_QLF_W
                   | AARCH64_OPND_QLF_X
                   | AARCH64_OPND_QLF_WSP
                   | AARCH64_OPND_QLF_SP
                   | AARCH64_OPND_QLF_S_B
                   | AARCH64_OPND_QLF_S_H
                   | AARCH64_OPND_QLF_S_S
                   | AARCH64_OPND_QLF_S_D
                   | AARCH64_OPND_QLF_S_Q
                   | AARCH64_OPND_QLF_V_8B
                   | AARCH64_OPND_QLF_V_16B
                   | AARCH64_OPND_QLF_V_2H
                   | AARCH64_OPND_QLF_V_4H
                   | AARCH64_OPND_QLF_V_8H
                   | AARCH64_OPND_QLF_V_2S
                   | AARCH64_OPND_QLF_V_4S
                   | AARCH64_OPND_QLF_V_1D
                   | AARCH64_OPND_QLF_V_2D
                   | AARCH64_OPND_QLF_V_1Q
                   | AARCH64_OPND_QLF_P_Z
                   | AARCH64_OPND_QLF_P_M
                   | AARCH64_OPND_QLF_CR
                   | AARCH64_OPND_QLF_imm_0_7
                   | AARCH64_OPND_QLF_imm_0_15
                   | AARCH64_OPND_QLF_imm_0_31
                   | AARCH64_OPND_QLF_imm_0_63
                   | AARCH64_OPND_QLF_imm_1_32
                   | AARCH64_OPND_QLF_imm_1_64
                   | AARCH64_OPND_QLF_LSL
                   | AARCH64_OPND_QLF_MSL
                   | AARCH64_OPND_QLF_RETRIEVE
                   deriving (Eq, Read, Show, Enum)

data Op = OP_NIL
        | OP_STRB_POS
        | OP_LDRB_POS
        | OP_LDRSB_POS
        | OP_STRH_POS
        | OP_LDRH_POS
        | OP_LDRSH_POS
        | OP_STR_POS
        | OP_LDR_POS
        | OP_STRF_POS
        | OP_LDRF_POS
        | OP_LDRSW_POS
        | OP_PRFM_POS
        | OP_STURB
        | OP_LDURB
        | OP_LDURSB
        | OP_STURH
        | OP_LDURH
        | OP_LDURSH
        | OP_STUR
        | OP_LDUR
        | OP_STURV
        | OP_LDURV
        | OP_LDURSW
        | OP_PRFUM
        | OP_LDR_LIT
        | OP_LDRV_LIT
        | OP_LDRSW_LIT
        | OP_PRFM_LIT
        | OP_ADD
        | OP_B
        | OP_BL
        | OP_MOVN
        | OP_MOVZ
        | OP_MOVK
        | OP_MOV_IMM_LOG
        | OP_MOV_IMM_WIDE
        | OP_MOV_IMM_WIDEN
        | OP_MOV_V
        | OP_ASR_IMM
        | OP_LSR_IMM
        | OP_LSL_IMM
        | OP_BIC
        | OP_UBFX
        | OP_BFXIL
        | OP_SBFX
        | OP_SBFIZ
        | OP_BFI
        | OP_BFC
        | OP_UBFIZ
        | OP_UXTB
        | OP_UXTH
        | OP_UXTW
        | OP_CINC
        | OP_CINV
        | OP_CNEG
        | OP_CSET
        | OP_CSETM
        | OP_FCVT
        | OP_FCVTN
        | OP_FCVTN2
        | OP_FCVTL
        | OP_FCVTL2
        | OP_FCVTXN_S
        | OP_ROR_IMM
        | OP_SXTL
        | OP_SXTL2
        | OP_UXTL
        | OP_UXTL2
        | OP_MOV_P_P
        | OP_MOV_Z_P_Z
        | OP_MOV_Z_V
        | OP_MOV_Z_Z
        | OP_MOV_Z_Zi
        | OP_MOVM_P_P_P
        | OP_MOVS_P_P
        | OP_MOVZS_P_P_P
        | OP_MOVZ_P_P_P
        | OP_NOTS_P_P_P_Z
        | OP_NOT_P_P_P_Z
        | OP_FCMLA_ELEM
        | OP_TOTAL_NUM
        deriving (Eq, Read, Show, Enum)

data FieldKind = FLD_NIL
               | FLD_cond2
               | FLD_nzcv
               | FLD_defgh
               | FLD_abc
               | FLD_imm19
               | FLD_immhi
               | FLD_immlo
               | FLD_size
               | FLD_vldst_size
               | FLD_op
               | FLD_Q
               | FLD_Rt
               | FLD_Rd
               | FLD_Rn
               | FLD_Rt2
               | FLD_Ra
               | FLD_op2
               | FLD_CRm
               | FLD_CRn
               | FLD_op1
               | FLD_op0
               | FLD_imm3
               | FLD_cond
               | FLD_opcode
               | FLD_cmode
               | FLD_asisdlso_opcode
               | FLD_len
               | FLD_Rm
               | FLD_Rs
               | FLD_option
               | FLD_S
               | FLD_hw
               | FLD_opc
               | FLD_opc1
               | FLD_shift
               | FLD_type
               | FLD_ldst_size
               | FLD_imm6
               | FLD_imm4
               | FLD_imm5
               | FLD_imm7
               | FLD_imm8
               | FLD_imm9
               | FLD_imm12
               | FLD_imm14
               | FLD_imm16
               | FLD_imm26
               | FLD_imms
               | FLD_immr
               | FLD_immb
               | FLD_immh
               | FLD_S_imm10
               | FLD_N
               | FLD_index
               | FLD_index2
               | FLD_sf
               | FLD_lse_sz
               | FLD_H
               | FLD_L
               | FLD_M
               | FLD_b5
               | FLD_b40
               | FLD_scale
               | FLD_SVE_M_4
               | FLD_SVE_M_14
               | FLD_SVE_M_16
               | FLD_SVE_N
               | FLD_SVE_Pd
               | FLD_SVE_Pg3
               | FLD_SVE_Pg4_5
               | FLD_SVE_Pg4_10
               | FLD_SVE_Pg4_16
               | FLD_SVE_Pm
               | FLD_SVE_Pn
               | FLD_SVE_Pt
               | FLD_SVE_Rm
               | FLD_SVE_Rn
               | FLD_SVE_Vd
               | FLD_SVE_Vm
               | FLD_SVE_Vn
               | FLD_SVE_Za_5
               | FLD_SVE_Za_16
               | FLD_SVE_Zd
               | FLD_SVE_Zm_5
               | FLD_SVE_Zm_16
               | FLD_SVE_Zn
               | FLD_SVE_Zt
               | FLD_SVE_i1
               | FLD_SVE_i3h
               | FLD_SVE_imm3
               | FLD_SVE_imm4
               | FLD_SVE_imm5
               | FLD_SVE_imm5b
               | FLD_SVE_imm6
               | FLD_SVE_imm7
               | FLD_SVE_imm8
               | FLD_SVE_imm9
               | FLD_SVE_immr
               | FLD_SVE_imms
               | FLD_SVE_msz
               | FLD_SVE_pattern
               | FLD_SVE_prfop
               | FLD_SVE_rot1
               | FLD_SVE_rot2
               | FLD_SVE_sz
               | FLD_SVE_tsz
               | FLD_SVE_tszh
               | FLD_SVE_tszl_8
               | FLD_SVE_tszl_19
               | FLD_SVE_xs_14
               | FLD_SVE_xs_22
               | FLD_rotate1
               | FLD_rotate2
               | FLD_rotate3
               deriving (Eq, Read, Show, Enum)

data FeatureSet = FeatureSet_aarch64_feature_v8
                | FeatureSet_aarch64_feature_fp
                | FeatureSet_aarch64_feature_simd
                | FeatureSet_aarch64_feature_crypto
                | FeatureSet_aarch64_feature_crc
                | FeatureSet_aarch64_feature_lse
                | FeatureSet_aarch64_feature_lor
                | FeatureSet_aarch64_feature_rdma
                | FeatureSet_aarch64_feature_ras
                | FeatureSet_aarch64_feature_v8_2
                | FeatureSet_aarch64_feature_fp_f16
                | FeatureSet_aarch64_feature_simd_f16
                | FeatureSet_aarch64_feature_stat_profile
                | FeatureSet_aarch64_feature_sve
                | FeatureSet_aarch64_feature_v8_3
                | FeatureSet_aarch64_feature_fp_v8_3
                | FeatureSet_aarch64_feature_compnum
                | FeatureSet_aarch64_feature_rcpc
                deriving (Eq, Read, Show, Enum)

featureSetFromString :: String -> Maybe FeatureSet
featureSetFromString "aarch64_feature_v8"
  = Just FeatureSet_aarch64_feature_v8
featureSetFromString "aarch64_feature_fp"
  = Just FeatureSet_aarch64_feature_fp
featureSetFromString "aarch64_feature_simd"
  = Just FeatureSet_aarch64_feature_simd
featureSetFromString "aarch64_feature_crypto"
  = Just FeatureSet_aarch64_feature_crypto
featureSetFromString "aarch64_feature_crc"
  = Just FeatureSet_aarch64_feature_crc
featureSetFromString "aarch64_feature_lse"
  = Just FeatureSet_aarch64_feature_lse
featureSetFromString "aarch64_feature_lor"
  = Just FeatureSet_aarch64_feature_lor
featureSetFromString "aarch64_feature_rdma"
  = Just FeatureSet_aarch64_feature_rdma
featureSetFromString "aarch64_feature_ras"
  = Just FeatureSet_aarch64_feature_ras
featureSetFromString "aarch64_feature_v8_2"
  = Just FeatureSet_aarch64_feature_v8_2
featureSetFromString "aarch64_feature_fp_f16"
  = Just FeatureSet_aarch64_feature_fp_f16
featureSetFromString "aarch64_feature_simd_f16"
  = Just FeatureSet_aarch64_feature_simd_f16
featureSetFromString "aarch64_feature_stat_profile"
  = Just FeatureSet_aarch64_feature_stat_profile
featureSetFromString "aarch64_feature_sve"
  = Just FeatureSet_aarch64_feature_sve
featureSetFromString "aarch64_feature_v8_3"
  = Just FeatureSet_aarch64_feature_v8_3
featureSetFromString "aarch64_feature_fp_v8_3"
  = Just FeatureSet_aarch64_feature_fp_v8_3
featureSetFromString "aarch64_feature_compnum"
  = Just FeatureSet_aarch64_feature_compnum
featureSetFromString "aarch64_feature_rcpc"
  = Just FeatureSet_aarch64_feature_rcpc
featureSetFromString _ = Nothing

data InsnClass = InsnClass_addsub_carry
               | InsnClass_addsub_ext
               | InsnClass_addsub_imm
               | InsnClass_addsub_shift
               | InsnClass_asimdall
               | InsnClass_asimddiff
               | InsnClass_asimdelem
               | InsnClass_asimdext
               | InsnClass_asimdimm
               | InsnClass_asimdins
               | InsnClass_asimdmisc
               | InsnClass_asimdperm
               | InsnClass_asimdsame
               | InsnClass_asimdshf
               | InsnClass_asimdtbl
               | InsnClass_asisddiff
               | InsnClass_asisdelem
               | InsnClass_asisdlse
               | InsnClass_asisdlsep
               | InsnClass_asisdlso
               | InsnClass_asisdlsop
               | InsnClass_asisdmisc
               | InsnClass_asisdone
               | InsnClass_asisdpair
               | InsnClass_asisdsame
               | InsnClass_asisdshf
               | InsnClass_bitfield
               | InsnClass_branch_imm
               | InsnClass_branch_reg
               | InsnClass_compbranch
               | InsnClass_condbranch
               | InsnClass_condcmp_imm
               | InsnClass_condcmp_reg
               | InsnClass_condsel
               | InsnClass_cryptoaes
               | InsnClass_cryptosha2
               | InsnClass_cryptosha3
               | InsnClass_dp_1src
               | InsnClass_dp_2src
               | InsnClass_dp_3src
               | InsnClass_exception
               | InsnClass_extract
               | InsnClass_float2fix
               | InsnClass_float2int
               | InsnClass_floatccmp
               | InsnClass_floatcmp
               | InsnClass_floatdp1
               | InsnClass_floatdp2
               | InsnClass_floatdp3
               | InsnClass_floatimm
               | InsnClass_floatsel
               | InsnClass_ldst_immpost
               | InsnClass_ldst_immpre
               | InsnClass_ldst_imm9
               | InsnClass_ldst_imm10
               | InsnClass_ldst_pos
               | InsnClass_ldst_regoff
               | InsnClass_ldst_unpriv
               | InsnClass_ldst_unscaled
               | InsnClass_ldstexcl
               | InsnClass_ldstnapair_offs
               | InsnClass_ldstpair_off
               | InsnClass_ldstpair_indexed
               | InsnClass_loadlit
               | InsnClass_log_imm
               | InsnClass_log_shift
               | InsnClass_lse_atomic
               | InsnClass_movewide
               | InsnClass_pcreladdr
               | InsnClass_ic_system
               | InsnClass_sve_cpy
               | InsnClass_sve_index
               | InsnClass_sve_limm
               | InsnClass_sve_misc
               | InsnClass_sve_movprfx
               | InsnClass_sve_pred_zm
               | InsnClass_sve_shift_pred
               | InsnClass_sve_shift_unpred
               | InsnClass_sve_size_bhs
               | InsnClass_sve_size_bhsd
               | InsnClass_sve_size_hsd
               | InsnClass_sve_size_sd
               | InsnClass_testbranch
               deriving (Eq, Read, Show, Enum)

insnClassFromString :: String -> Maybe InsnClass
insnClassFromString "addsub_carry" = Just InsnClass_addsub_carry
insnClassFromString "addsub_ext" = Just InsnClass_addsub_ext
insnClassFromString "addsub_imm" = Just InsnClass_addsub_imm
insnClassFromString "addsub_shift" = Just InsnClass_addsub_shift
insnClassFromString "asimdall" = Just InsnClass_asimdall
insnClassFromString "asimddiff" = Just InsnClass_asimddiff
insnClassFromString "asimdelem" = Just InsnClass_asimdelem
insnClassFromString "asimdext" = Just InsnClass_asimdext
insnClassFromString "asimdimm" = Just InsnClass_asimdimm
insnClassFromString "asimdins" = Just InsnClass_asimdins
insnClassFromString "asimdmisc" = Just InsnClass_asimdmisc
insnClassFromString "asimdperm" = Just InsnClass_asimdperm
insnClassFromString "asimdsame" = Just InsnClass_asimdsame
insnClassFromString "asimdshf" = Just InsnClass_asimdshf
insnClassFromString "asimdtbl" = Just InsnClass_asimdtbl
insnClassFromString "asisddiff" = Just InsnClass_asisddiff
insnClassFromString "asisdelem" = Just InsnClass_asisdelem
insnClassFromString "asisdlse" = Just InsnClass_asisdlse
insnClassFromString "asisdlsep" = Just InsnClass_asisdlsep
insnClassFromString "asisdlso" = Just InsnClass_asisdlso
insnClassFromString "asisdlsop" = Just InsnClass_asisdlsop
insnClassFromString "asisdmisc" = Just InsnClass_asisdmisc
insnClassFromString "asisdone" = Just InsnClass_asisdone
insnClassFromString "asisdpair" = Just InsnClass_asisdpair
insnClassFromString "asisdsame" = Just InsnClass_asisdsame
insnClassFromString "asisdshf" = Just InsnClass_asisdshf
insnClassFromString "bitfield" = Just InsnClass_bitfield
insnClassFromString "branch_imm" = Just InsnClass_branch_imm
insnClassFromString "branch_reg" = Just InsnClass_branch_reg
insnClassFromString "compbranch" = Just InsnClass_compbranch
insnClassFromString "condbranch" = Just InsnClass_condbranch
insnClassFromString "condcmp_imm" = Just InsnClass_condcmp_imm
insnClassFromString "condcmp_reg" = Just InsnClass_condcmp_reg
insnClassFromString "condsel" = Just InsnClass_condsel
insnClassFromString "cryptoaes" = Just InsnClass_cryptoaes
insnClassFromString "cryptosha2" = Just InsnClass_cryptosha2
insnClassFromString "cryptosha3" = Just InsnClass_cryptosha3
insnClassFromString "dp_1src" = Just InsnClass_dp_1src
insnClassFromString "dp_2src" = Just InsnClass_dp_2src
insnClassFromString "dp_3src" = Just InsnClass_dp_3src
insnClassFromString "exception" = Just InsnClass_exception
insnClassFromString "extract" = Just InsnClass_extract
insnClassFromString "float2fix" = Just InsnClass_float2fix
insnClassFromString "float2int" = Just InsnClass_float2int
insnClassFromString "floatccmp" = Just InsnClass_floatccmp
insnClassFromString "floatcmp" = Just InsnClass_floatcmp
insnClassFromString "floatdp1" = Just InsnClass_floatdp1
insnClassFromString "floatdp2" = Just InsnClass_floatdp2
insnClassFromString "floatdp3" = Just InsnClass_floatdp3
insnClassFromString "floatimm" = Just InsnClass_floatimm
insnClassFromString "floatsel" = Just InsnClass_floatsel
insnClassFromString "ldst_immpost" = Just InsnClass_ldst_immpost
insnClassFromString "ldst_immpre" = Just InsnClass_ldst_immpre
insnClassFromString "ldst_imm9" = Just InsnClass_ldst_imm9
insnClassFromString "ldst_imm10" = Just InsnClass_ldst_imm10
insnClassFromString "ldst_pos" = Just InsnClass_ldst_pos
insnClassFromString "ldst_regoff" = Just InsnClass_ldst_regoff
insnClassFromString "ldst_unpriv" = Just InsnClass_ldst_unpriv
insnClassFromString "ldst_unscaled" = Just InsnClass_ldst_unscaled
insnClassFromString "ldstexcl" = Just InsnClass_ldstexcl
insnClassFromString "ldstnapair_offs"
  = Just InsnClass_ldstnapair_offs
insnClassFromString "ldstpair_off" = Just InsnClass_ldstpair_off
insnClassFromString "ldstpair_indexed"
  = Just InsnClass_ldstpair_indexed
insnClassFromString "loadlit" = Just InsnClass_loadlit
insnClassFromString "log_imm" = Just InsnClass_log_imm
insnClassFromString "log_shift" = Just InsnClass_log_shift
insnClassFromString "lse_atomic" = Just InsnClass_lse_atomic
insnClassFromString "movewide" = Just InsnClass_movewide
insnClassFromString "pcreladdr" = Just InsnClass_pcreladdr
insnClassFromString "ic_system" = Just InsnClass_ic_system
insnClassFromString "sve_cpy" = Just InsnClass_sve_cpy
insnClassFromString "sve_index" = Just InsnClass_sve_index
insnClassFromString "sve_limm" = Just InsnClass_sve_limm
insnClassFromString "sve_misc" = Just InsnClass_sve_misc
insnClassFromString "sve_movprfx" = Just InsnClass_sve_movprfx
insnClassFromString "sve_pred_zm" = Just InsnClass_sve_pred_zm
insnClassFromString "sve_shift_pred"
  = Just InsnClass_sve_shift_pred
insnClassFromString "sve_shift_unpred"
  = Just InsnClass_sve_shift_unpred
insnClassFromString "sve_size_bhs" = Just InsnClass_sve_size_bhs
insnClassFromString "sve_size_bhsd" = Just InsnClass_sve_size_bhsd
insnClassFromString "sve_size_hsd" = Just InsnClass_sve_size_hsd
insnClassFromString "sve_size_sd" = Just InsnClass_sve_size_sd
insnClassFromString "testbranch" = Just InsnClass_testbranch
insnClassFromString _ = Nothing
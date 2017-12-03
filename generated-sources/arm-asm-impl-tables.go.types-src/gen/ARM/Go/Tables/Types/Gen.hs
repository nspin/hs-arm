module ARM.Go.Tables.Types.Gen where

data Op = Op_ABS
        | Op_ADC
        | Op_ADCS
        | Op_ADD
        | Op_ADDHN
        | Op_ADDHN2
        | Op_ADDP
        | Op_ADDS
        | Op_ADDV
        | Op_ADR
        | Op_ADRP
        | Op_AESD
        | Op_AESE
        | Op_AESIMC
        | Op_AESMC
        | Op_AND
        | Op_ANDS
        | Op_ASR
        | Op_ASRV
        | Op_AT
        | Op_B
        | Op_BFI
        | Op_BFM
        | Op_BFXIL
        | Op_BIC
        | Op_BICS
        | Op_BIF
        | Op_BIT
        | Op_BL
        | Op_BLR
        | Op_BR
        | Op_BRK
        | Op_BSL
        | Op_CBNZ
        | Op_CBZ
        | Op_CCMN
        | Op_CCMP
        | Op_CINC
        | Op_CINV
        | Op_CLREX
        | Op_CLS
        | Op_CLZ
        | Op_CMEQ
        | Op_CMGE
        | Op_CMGT
        | Op_CMHI
        | Op_CMHS
        | Op_CMLE
        | Op_CMLT
        | Op_CMN
        | Op_CMP
        | Op_CMTST
        | Op_CNEG
        | Op_CNT
        | Op_CRC32B
        | Op_CRC32CB
        | Op_CRC32CH
        | Op_CRC32CW
        | Op_CRC32CX
        | Op_CRC32H
        | Op_CRC32W
        | Op_CRC32X
        | Op_CSEL
        | Op_CSET
        | Op_CSETM
        | Op_CSINC
        | Op_CSINV
        | Op_CSNEG
        | Op_DC
        | Op_DCPS1
        | Op_DCPS2
        | Op_DCPS3
        | Op_DMB
        | Op_DRPS
        | Op_DSB
        | Op_DUP
        | Op_EON
        | Op_EOR
        | Op_ERET
        | Op_EXT
        | Op_EXTR
        | Op_FABD
        | Op_FABS
        | Op_FACGE
        | Op_FACGT
        | Op_FADD
        | Op_FADDP
        | Op_FCCMP
        | Op_FCCMPE
        | Op_FCMEQ
        | Op_FCMGE
        | Op_FCMGT
        | Op_FCMLE
        | Op_FCMLT
        | Op_FCMP
        | Op_FCMPE
        | Op_FCSEL
        | Op_FCVT
        | Op_FCVTAS
        | Op_FCVTAU
        | Op_FCVTL
        | Op_FCVTL2
        | Op_FCVTMS
        | Op_FCVTMU
        | Op_FCVTN
        | Op_FCVTN2
        | Op_FCVTNS
        | Op_FCVTNU
        | Op_FCVTPS
        | Op_FCVTPU
        | Op_FCVTXN
        | Op_FCVTXN2
        | Op_FCVTZS
        | Op_FCVTZU
        | Op_FDIV
        | Op_FMADD
        | Op_FMAX
        | Op_FMAXNM
        | Op_FMAXNMP
        | Op_FMAXNMV
        | Op_FMAXP
        | Op_FMAXV
        | Op_FMIN
        | Op_FMINNM
        | Op_FMINNMP
        | Op_FMINNMV
        | Op_FMINP
        | Op_FMINV
        | Op_FMLA
        | Op_FMLS
        | Op_FMOV
        | Op_FMSUB
        | Op_FMUL
        | Op_FMULX
        | Op_FNEG
        | Op_FNMADD
        | Op_FNMSUB
        | Op_FNMUL
        | Op_FRECPE
        | Op_FRECPS
        | Op_FRECPX
        | Op_FRINTA
        | Op_FRINTI
        | Op_FRINTM
        | Op_FRINTN
        | Op_FRINTP
        | Op_FRINTX
        | Op_FRINTZ
        | Op_FRSQRTE
        | Op_FRSQRTS
        | Op_FSQRT
        | Op_FSUB
        | Op_HINT
        | Op_HLT
        | Op_HVC
        | Op_IC
        | Op_INS
        | Op_ISB
        | Op_LD1
        | Op_LD1R
        | Op_LD2
        | Op_LD2R
        | Op_LD3
        | Op_LD3R
        | Op_LD4
        | Op_LD4R
        | Op_LDAR
        | Op_LDARB
        | Op_LDARH
        | Op_LDAXP
        | Op_LDAXR
        | Op_LDAXRB
        | Op_LDAXRH
        | Op_LDNP
        | Op_LDP
        | Op_LDPSW
        | Op_LDR
        | Op_LDRB
        | Op_LDRH
        | Op_LDRSB
        | Op_LDRSH
        | Op_LDRSW
        | Op_LDTR
        | Op_LDTRB
        | Op_LDTRH
        | Op_LDTRSB
        | Op_LDTRSH
        | Op_LDTRSW
        | Op_LDUR
        | Op_LDURB
        | Op_LDURH
        | Op_LDURSB
        | Op_LDURSH
        | Op_LDURSW
        | Op_LDXP
        | Op_LDXR
        | Op_LDXRB
        | Op_LDXRH
        | Op_LSL
        | Op_LSLV
        | Op_LSR
        | Op_LSRV
        | Op_MADD
        | Op_MLA
        | Op_MLS
        | Op_MNEG
        | Op_MOV
        | Op_MOVI
        | Op_MOVK
        | Op_MOVN
        | Op_MOVZ
        | Op_MRS
        | Op_MSR
        | Op_MSUB
        | Op_MUL
        | Op_MVN
        | Op_MVNI
        | Op_NEG
        | Op_NEGS
        | Op_NGC
        | Op_NGCS
        | Op_NOP
        | Op_NOT
        | Op_ORN
        | Op_ORR
        | Op_PMUL
        | Op_PMULL
        | Op_PMULL2
        | Op_PRFM
        | Op_PRFUM
        | Op_RADDHN
        | Op_RADDHN2
        | Op_RBIT
        | Op_RET
        | Op_REV
        | Op_REV16
        | Op_REV32
        | Op_REV64
        | Op_ROR
        | Op_RORV
        | Op_RSHRN
        | Op_RSHRN2
        | Op_RSUBHN
        | Op_RSUBHN2
        | Op_SABA
        | Op_SABAL
        | Op_SABAL2
        | Op_SABD
        | Op_SABDL
        | Op_SABDL2
        | Op_SADALP
        | Op_SADDL
        | Op_SADDL2
        | Op_SADDLP
        | Op_SADDLV
        | Op_SADDW
        | Op_SADDW2
        | Op_SBC
        | Op_SBCS
        | Op_SBFIZ
        | Op_SBFM
        | Op_SBFX
        | Op_SCVTF
        | Op_SDIV
        | Op_SEV
        | Op_SEVL
        | Op_SHA1C
        | Op_SHA1H
        | Op_SHA1M
        | Op_SHA1P
        | Op_SHA1SU0
        | Op_SHA1SU1
        | Op_SHA256H
        | Op_SHA256H2
        | Op_SHA256SU0
        | Op_SHA256SU1
        | Op_SHADD
        | Op_SHL
        | Op_SHLL
        | Op_SHLL2
        | Op_SHRN
        | Op_SHRN2
        | Op_SHSUB
        | Op_SLI
        | Op_SMADDL
        | Op_SMAX
        | Op_SMAXP
        | Op_SMAXV
        | Op_SMC
        | Op_SMIN
        | Op_SMINP
        | Op_SMINV
        | Op_SMLAL
        | Op_SMLAL2
        | Op_SMLSL
        | Op_SMLSL2
        | Op_SMNEGL
        | Op_SMOV
        | Op_SMSUBL
        | Op_SMULH
        | Op_SMULL
        | Op_SMULL2
        | Op_SQABS
        | Op_SQADD
        | Op_SQDMLAL
        | Op_SQDMLAL2
        | Op_SQDMLSL
        | Op_SQDMLSL2
        | Op_SQDMULH
        | Op_SQDMULL
        | Op_SQDMULL2
        | Op_SQNEG
        | Op_SQRDMULH
        | Op_SQRSHL
        | Op_SQRSHRN
        | Op_SQRSHRN2
        | Op_SQRSHRUN
        | Op_SQRSHRUN2
        | Op_SQSHL
        | Op_SQSHLU
        | Op_SQSHRN
        | Op_SQSHRN2
        | Op_SQSHRUN
        | Op_SQSHRUN2
        | Op_SQSUB
        | Op_SQXTN
        | Op_SQXTN2
        | Op_SQXTUN
        | Op_SQXTUN2
        | Op_SRHADD
        | Op_SRI
        | Op_SRSHL
        | Op_SRSHR
        | Op_SRSRA
        | Op_SSHL
        | Op_SSHLL
        | Op_SSHLL2
        | Op_SSHR
        | Op_SSRA
        | Op_SSUBL
        | Op_SSUBL2
        | Op_SSUBW
        | Op_SSUBW2
        | Op_ST1
        | Op_ST2
        | Op_ST3
        | Op_ST4
        | Op_STLR
        | Op_STLRB
        | Op_STLRH
        | Op_STLXP
        | Op_STLXR
        | Op_STLXRB
        | Op_STLXRH
        | Op_STNP
        | Op_STP
        | Op_STR
        | Op_STRB
        | Op_STRH
        | Op_STTR
        | Op_STTRB
        | Op_STTRH
        | Op_STUR
        | Op_STURB
        | Op_STURH
        | Op_STXP
        | Op_STXR
        | Op_STXRB
        | Op_STXRH
        | Op_SUB
        | Op_SUBHN
        | Op_SUBHN2
        | Op_SUBS
        | Op_SUQADD
        | Op_SVC
        | Op_SXTB
        | Op_SXTH
        | Op_SXTL
        | Op_SXTL2
        | Op_SXTW
        | Op_SYS
        | Op_SYSL
        | Op_TBL
        | Op_TBNZ
        | Op_TBX
        | Op_TBZ
        | Op_TLBI
        | Op_TRN1
        | Op_TRN2
        | Op_TST
        | Op_UABA
        | Op_UABAL
        | Op_UABAL2
        | Op_UABD
        | Op_UABDL
        | Op_UABDL2
        | Op_UADALP
        | Op_UADDL
        | Op_UADDL2
        | Op_UADDLP
        | Op_UADDLV
        | Op_UADDW
        | Op_UADDW2
        | Op_UBFIZ
        | Op_UBFM
        | Op_UBFX
        | Op_UCVTF
        | Op_UDIV
        | Op_UHADD
        | Op_UHSUB
        | Op_UMADDL
        | Op_UMAX
        | Op_UMAXP
        | Op_UMAXV
        | Op_UMIN
        | Op_UMINP
        | Op_UMINV
        | Op_UMLAL
        | Op_UMLAL2
        | Op_UMLSL
        | Op_UMLSL2
        | Op_UMNEGL
        | Op_UMOV
        | Op_UMSUBL
        | Op_UMULH
        | Op_UMULL
        | Op_UMULL2
        | Op_UQADD
        | Op_UQRSHL
        | Op_UQRSHRN
        | Op_UQRSHRN2
        | Op_UQSHL
        | Op_UQSHRN
        | Op_UQSHRN2
        | Op_UQSUB
        | Op_UQXTN
        | Op_UQXTN2
        | Op_URECPE
        | Op_URHADD
        | Op_URSHL
        | Op_URSHR
        | Op_URSQRTE
        | Op_URSRA
        | Op_USHL
        | Op_USHLL
        | Op_USHLL2
        | Op_USHR
        | Op_USQADD
        | Op_USRA
        | Op_USUBL
        | Op_USUBL2
        | Op_USUBW
        | Op_USUBW2
        | Op_UXTB
        | Op_UXTH
        | Op_UXTL
        | Op_UXTL2
        | Op_UZP1
        | Op_UZP2
        | Op_WFE
        | Op_WFI
        | Op_XTN
        | Op_XTN2
        | Op_YIELD
        | Op_ZIP1
        | Op_ZIP2
        deriving (Eq, Read, Show, Enum)

opFromString :: String -> Maybe Op
opFromString "ABS" = Just Op_ABS
opFromString "ADC" = Just Op_ADC
opFromString "ADCS" = Just Op_ADCS
opFromString "ADD" = Just Op_ADD
opFromString "ADDHN" = Just Op_ADDHN
opFromString "ADDHN2" = Just Op_ADDHN2
opFromString "ADDP" = Just Op_ADDP
opFromString "ADDS" = Just Op_ADDS
opFromString "ADDV" = Just Op_ADDV
opFromString "ADR" = Just Op_ADR
opFromString "ADRP" = Just Op_ADRP
opFromString "AESD" = Just Op_AESD
opFromString "AESE" = Just Op_AESE
opFromString "AESIMC" = Just Op_AESIMC
opFromString "AESMC" = Just Op_AESMC
opFromString "AND" = Just Op_AND
opFromString "ANDS" = Just Op_ANDS
opFromString "ASR" = Just Op_ASR
opFromString "ASRV" = Just Op_ASRV
opFromString "AT" = Just Op_AT
opFromString "B" = Just Op_B
opFromString "BFI" = Just Op_BFI
opFromString "BFM" = Just Op_BFM
opFromString "BFXIL" = Just Op_BFXIL
opFromString "BIC" = Just Op_BIC
opFromString "BICS" = Just Op_BICS
opFromString "BIF" = Just Op_BIF
opFromString "BIT" = Just Op_BIT
opFromString "BL" = Just Op_BL
opFromString "BLR" = Just Op_BLR
opFromString "BR" = Just Op_BR
opFromString "BRK" = Just Op_BRK
opFromString "BSL" = Just Op_BSL
opFromString "CBNZ" = Just Op_CBNZ
opFromString "CBZ" = Just Op_CBZ
opFromString "CCMN" = Just Op_CCMN
opFromString "CCMP" = Just Op_CCMP
opFromString "CINC" = Just Op_CINC
opFromString "CINV" = Just Op_CINV
opFromString "CLREX" = Just Op_CLREX
opFromString "CLS" = Just Op_CLS
opFromString "CLZ" = Just Op_CLZ
opFromString "CMEQ" = Just Op_CMEQ
opFromString "CMGE" = Just Op_CMGE
opFromString "CMGT" = Just Op_CMGT
opFromString "CMHI" = Just Op_CMHI
opFromString "CMHS" = Just Op_CMHS
opFromString "CMLE" = Just Op_CMLE
opFromString "CMLT" = Just Op_CMLT
opFromString "CMN" = Just Op_CMN
opFromString "CMP" = Just Op_CMP
opFromString "CMTST" = Just Op_CMTST
opFromString "CNEG" = Just Op_CNEG
opFromString "CNT" = Just Op_CNT
opFromString "CRC32B" = Just Op_CRC32B
opFromString "CRC32CB" = Just Op_CRC32CB
opFromString "CRC32CH" = Just Op_CRC32CH
opFromString "CRC32CW" = Just Op_CRC32CW
opFromString "CRC32CX" = Just Op_CRC32CX
opFromString "CRC32H" = Just Op_CRC32H
opFromString "CRC32W" = Just Op_CRC32W
opFromString "CRC32X" = Just Op_CRC32X
opFromString "CSEL" = Just Op_CSEL
opFromString "CSET" = Just Op_CSET
opFromString "CSETM" = Just Op_CSETM
opFromString "CSINC" = Just Op_CSINC
opFromString "CSINV" = Just Op_CSINV
opFromString "CSNEG" = Just Op_CSNEG
opFromString "DC" = Just Op_DC
opFromString "DCPS1" = Just Op_DCPS1
opFromString "DCPS2" = Just Op_DCPS2
opFromString "DCPS3" = Just Op_DCPS3
opFromString "DMB" = Just Op_DMB
opFromString "DRPS" = Just Op_DRPS
opFromString "DSB" = Just Op_DSB
opFromString "DUP" = Just Op_DUP
opFromString "EON" = Just Op_EON
opFromString "EOR" = Just Op_EOR
opFromString "ERET" = Just Op_ERET
opFromString "EXT" = Just Op_EXT
opFromString "EXTR" = Just Op_EXTR
opFromString "FABD" = Just Op_FABD
opFromString "FABS" = Just Op_FABS
opFromString "FACGE" = Just Op_FACGE
opFromString "FACGT" = Just Op_FACGT
opFromString "FADD" = Just Op_FADD
opFromString "FADDP" = Just Op_FADDP
opFromString "FCCMP" = Just Op_FCCMP
opFromString "FCCMPE" = Just Op_FCCMPE
opFromString "FCMEQ" = Just Op_FCMEQ
opFromString "FCMGE" = Just Op_FCMGE
opFromString "FCMGT" = Just Op_FCMGT
opFromString "FCMLE" = Just Op_FCMLE
opFromString "FCMLT" = Just Op_FCMLT
opFromString "FCMP" = Just Op_FCMP
opFromString "FCMPE" = Just Op_FCMPE
opFromString "FCSEL" = Just Op_FCSEL
opFromString "FCVT" = Just Op_FCVT
opFromString "FCVTAS" = Just Op_FCVTAS
opFromString "FCVTAU" = Just Op_FCVTAU
opFromString "FCVTL" = Just Op_FCVTL
opFromString "FCVTL2" = Just Op_FCVTL2
opFromString "FCVTMS" = Just Op_FCVTMS
opFromString "FCVTMU" = Just Op_FCVTMU
opFromString "FCVTN" = Just Op_FCVTN
opFromString "FCVTN2" = Just Op_FCVTN2
opFromString "FCVTNS" = Just Op_FCVTNS
opFromString "FCVTNU" = Just Op_FCVTNU
opFromString "FCVTPS" = Just Op_FCVTPS
opFromString "FCVTPU" = Just Op_FCVTPU
opFromString "FCVTXN" = Just Op_FCVTXN
opFromString "FCVTXN2" = Just Op_FCVTXN2
opFromString "FCVTZS" = Just Op_FCVTZS
opFromString "FCVTZU" = Just Op_FCVTZU
opFromString "FDIV" = Just Op_FDIV
opFromString "FMADD" = Just Op_FMADD
opFromString "FMAX" = Just Op_FMAX
opFromString "FMAXNM" = Just Op_FMAXNM
opFromString "FMAXNMP" = Just Op_FMAXNMP
opFromString "FMAXNMV" = Just Op_FMAXNMV
opFromString "FMAXP" = Just Op_FMAXP
opFromString "FMAXV" = Just Op_FMAXV
opFromString "FMIN" = Just Op_FMIN
opFromString "FMINNM" = Just Op_FMINNM
opFromString "FMINNMP" = Just Op_FMINNMP
opFromString "FMINNMV" = Just Op_FMINNMV
opFromString "FMINP" = Just Op_FMINP
opFromString "FMINV" = Just Op_FMINV
opFromString "FMLA" = Just Op_FMLA
opFromString "FMLS" = Just Op_FMLS
opFromString "FMOV" = Just Op_FMOV
opFromString "FMSUB" = Just Op_FMSUB
opFromString "FMUL" = Just Op_FMUL
opFromString "FMULX" = Just Op_FMULX
opFromString "FNEG" = Just Op_FNEG
opFromString "FNMADD" = Just Op_FNMADD
opFromString "FNMSUB" = Just Op_FNMSUB
opFromString "FNMUL" = Just Op_FNMUL
opFromString "FRECPE" = Just Op_FRECPE
opFromString "FRECPS" = Just Op_FRECPS
opFromString "FRECPX" = Just Op_FRECPX
opFromString "FRINTA" = Just Op_FRINTA
opFromString "FRINTI" = Just Op_FRINTI
opFromString "FRINTM" = Just Op_FRINTM
opFromString "FRINTN" = Just Op_FRINTN
opFromString "FRINTP" = Just Op_FRINTP
opFromString "FRINTX" = Just Op_FRINTX
opFromString "FRINTZ" = Just Op_FRINTZ
opFromString "FRSQRTE" = Just Op_FRSQRTE
opFromString "FRSQRTS" = Just Op_FRSQRTS
opFromString "FSQRT" = Just Op_FSQRT
opFromString "FSUB" = Just Op_FSUB
opFromString "HINT" = Just Op_HINT
opFromString "HLT" = Just Op_HLT
opFromString "HVC" = Just Op_HVC
opFromString "IC" = Just Op_IC
opFromString "INS" = Just Op_INS
opFromString "ISB" = Just Op_ISB
opFromString "LD1" = Just Op_LD1
opFromString "LD1R" = Just Op_LD1R
opFromString "LD2" = Just Op_LD2
opFromString "LD2R" = Just Op_LD2R
opFromString "LD3" = Just Op_LD3
opFromString "LD3R" = Just Op_LD3R
opFromString "LD4" = Just Op_LD4
opFromString "LD4R" = Just Op_LD4R
opFromString "LDAR" = Just Op_LDAR
opFromString "LDARB" = Just Op_LDARB
opFromString "LDARH" = Just Op_LDARH
opFromString "LDAXP" = Just Op_LDAXP
opFromString "LDAXR" = Just Op_LDAXR
opFromString "LDAXRB" = Just Op_LDAXRB
opFromString "LDAXRH" = Just Op_LDAXRH
opFromString "LDNP" = Just Op_LDNP
opFromString "LDP" = Just Op_LDP
opFromString "LDPSW" = Just Op_LDPSW
opFromString "LDR" = Just Op_LDR
opFromString "LDRB" = Just Op_LDRB
opFromString "LDRH" = Just Op_LDRH
opFromString "LDRSB" = Just Op_LDRSB
opFromString "LDRSH" = Just Op_LDRSH
opFromString "LDRSW" = Just Op_LDRSW
opFromString "LDTR" = Just Op_LDTR
opFromString "LDTRB" = Just Op_LDTRB
opFromString "LDTRH" = Just Op_LDTRH
opFromString "LDTRSB" = Just Op_LDTRSB
opFromString "LDTRSH" = Just Op_LDTRSH
opFromString "LDTRSW" = Just Op_LDTRSW
opFromString "LDUR" = Just Op_LDUR
opFromString "LDURB" = Just Op_LDURB
opFromString "LDURH" = Just Op_LDURH
opFromString "LDURSB" = Just Op_LDURSB
opFromString "LDURSH" = Just Op_LDURSH
opFromString "LDURSW" = Just Op_LDURSW
opFromString "LDXP" = Just Op_LDXP
opFromString "LDXR" = Just Op_LDXR
opFromString "LDXRB" = Just Op_LDXRB
opFromString "LDXRH" = Just Op_LDXRH
opFromString "LSL" = Just Op_LSL
opFromString "LSLV" = Just Op_LSLV
opFromString "LSR" = Just Op_LSR
opFromString "LSRV" = Just Op_LSRV
opFromString "MADD" = Just Op_MADD
opFromString "MLA" = Just Op_MLA
opFromString "MLS" = Just Op_MLS
opFromString "MNEG" = Just Op_MNEG
opFromString "MOV" = Just Op_MOV
opFromString "MOVI" = Just Op_MOVI
opFromString "MOVK" = Just Op_MOVK
opFromString "MOVN" = Just Op_MOVN
opFromString "MOVZ" = Just Op_MOVZ
opFromString "MRS" = Just Op_MRS
opFromString "MSR" = Just Op_MSR
opFromString "MSUB" = Just Op_MSUB
opFromString "MUL" = Just Op_MUL
opFromString "MVN" = Just Op_MVN
opFromString "MVNI" = Just Op_MVNI
opFromString "NEG" = Just Op_NEG
opFromString "NEGS" = Just Op_NEGS
opFromString "NGC" = Just Op_NGC
opFromString "NGCS" = Just Op_NGCS
opFromString "NOP" = Just Op_NOP
opFromString "NOT" = Just Op_NOT
opFromString "ORN" = Just Op_ORN
opFromString "ORR" = Just Op_ORR
opFromString "PMUL" = Just Op_PMUL
opFromString "PMULL" = Just Op_PMULL
opFromString "PMULL2" = Just Op_PMULL2
opFromString "PRFM" = Just Op_PRFM
opFromString "PRFUM" = Just Op_PRFUM
opFromString "RADDHN" = Just Op_RADDHN
opFromString "RADDHN2" = Just Op_RADDHN2
opFromString "RBIT" = Just Op_RBIT
opFromString "RET" = Just Op_RET
opFromString "REV" = Just Op_REV
opFromString "REV16" = Just Op_REV16
opFromString "REV32" = Just Op_REV32
opFromString "REV64" = Just Op_REV64
opFromString "ROR" = Just Op_ROR
opFromString "RORV" = Just Op_RORV
opFromString "RSHRN" = Just Op_RSHRN
opFromString "RSHRN2" = Just Op_RSHRN2
opFromString "RSUBHN" = Just Op_RSUBHN
opFromString "RSUBHN2" = Just Op_RSUBHN2
opFromString "SABA" = Just Op_SABA
opFromString "SABAL" = Just Op_SABAL
opFromString "SABAL2" = Just Op_SABAL2
opFromString "SABD" = Just Op_SABD
opFromString "SABDL" = Just Op_SABDL
opFromString "SABDL2" = Just Op_SABDL2
opFromString "SADALP" = Just Op_SADALP
opFromString "SADDL" = Just Op_SADDL
opFromString "SADDL2" = Just Op_SADDL2
opFromString "SADDLP" = Just Op_SADDLP
opFromString "SADDLV" = Just Op_SADDLV
opFromString "SADDW" = Just Op_SADDW
opFromString "SADDW2" = Just Op_SADDW2
opFromString "SBC" = Just Op_SBC
opFromString "SBCS" = Just Op_SBCS
opFromString "SBFIZ" = Just Op_SBFIZ
opFromString "SBFM" = Just Op_SBFM
opFromString "SBFX" = Just Op_SBFX
opFromString "SCVTF" = Just Op_SCVTF
opFromString "SDIV" = Just Op_SDIV
opFromString "SEV" = Just Op_SEV
opFromString "SEVL" = Just Op_SEVL
opFromString "SHA1C" = Just Op_SHA1C
opFromString "SHA1H" = Just Op_SHA1H
opFromString "SHA1M" = Just Op_SHA1M
opFromString "SHA1P" = Just Op_SHA1P
opFromString "SHA1SU0" = Just Op_SHA1SU0
opFromString "SHA1SU1" = Just Op_SHA1SU1
opFromString "SHA256H" = Just Op_SHA256H
opFromString "SHA256H2" = Just Op_SHA256H2
opFromString "SHA256SU0" = Just Op_SHA256SU0
opFromString "SHA256SU1" = Just Op_SHA256SU1
opFromString "SHADD" = Just Op_SHADD
opFromString "SHL" = Just Op_SHL
opFromString "SHLL" = Just Op_SHLL
opFromString "SHLL2" = Just Op_SHLL2
opFromString "SHRN" = Just Op_SHRN
opFromString "SHRN2" = Just Op_SHRN2
opFromString "SHSUB" = Just Op_SHSUB
opFromString "SLI" = Just Op_SLI
opFromString "SMADDL" = Just Op_SMADDL
opFromString "SMAX" = Just Op_SMAX
opFromString "SMAXP" = Just Op_SMAXP
opFromString "SMAXV" = Just Op_SMAXV
opFromString "SMC" = Just Op_SMC
opFromString "SMIN" = Just Op_SMIN
opFromString "SMINP" = Just Op_SMINP
opFromString "SMINV" = Just Op_SMINV
opFromString "SMLAL" = Just Op_SMLAL
opFromString "SMLAL2" = Just Op_SMLAL2
opFromString "SMLSL" = Just Op_SMLSL
opFromString "SMLSL2" = Just Op_SMLSL2
opFromString "SMNEGL" = Just Op_SMNEGL
opFromString "SMOV" = Just Op_SMOV
opFromString "SMSUBL" = Just Op_SMSUBL
opFromString "SMULH" = Just Op_SMULH
opFromString "SMULL" = Just Op_SMULL
opFromString "SMULL2" = Just Op_SMULL2
opFromString "SQABS" = Just Op_SQABS
opFromString "SQADD" = Just Op_SQADD
opFromString "SQDMLAL" = Just Op_SQDMLAL
opFromString "SQDMLAL2" = Just Op_SQDMLAL2
opFromString "SQDMLSL" = Just Op_SQDMLSL
opFromString "SQDMLSL2" = Just Op_SQDMLSL2
opFromString "SQDMULH" = Just Op_SQDMULH
opFromString "SQDMULL" = Just Op_SQDMULL
opFromString "SQDMULL2" = Just Op_SQDMULL2
opFromString "SQNEG" = Just Op_SQNEG
opFromString "SQRDMULH" = Just Op_SQRDMULH
opFromString "SQRSHL" = Just Op_SQRSHL
opFromString "SQRSHRN" = Just Op_SQRSHRN
opFromString "SQRSHRN2" = Just Op_SQRSHRN2
opFromString "SQRSHRUN" = Just Op_SQRSHRUN
opFromString "SQRSHRUN2" = Just Op_SQRSHRUN2
opFromString "SQSHL" = Just Op_SQSHL
opFromString "SQSHLU" = Just Op_SQSHLU
opFromString "SQSHRN" = Just Op_SQSHRN
opFromString "SQSHRN2" = Just Op_SQSHRN2
opFromString "SQSHRUN" = Just Op_SQSHRUN
opFromString "SQSHRUN2" = Just Op_SQSHRUN2
opFromString "SQSUB" = Just Op_SQSUB
opFromString "SQXTN" = Just Op_SQXTN
opFromString "SQXTN2" = Just Op_SQXTN2
opFromString "SQXTUN" = Just Op_SQXTUN
opFromString "SQXTUN2" = Just Op_SQXTUN2
opFromString "SRHADD" = Just Op_SRHADD
opFromString "SRI" = Just Op_SRI
opFromString "SRSHL" = Just Op_SRSHL
opFromString "SRSHR" = Just Op_SRSHR
opFromString "SRSRA" = Just Op_SRSRA
opFromString "SSHL" = Just Op_SSHL
opFromString "SSHLL" = Just Op_SSHLL
opFromString "SSHLL2" = Just Op_SSHLL2
opFromString "SSHR" = Just Op_SSHR
opFromString "SSRA" = Just Op_SSRA
opFromString "SSUBL" = Just Op_SSUBL
opFromString "SSUBL2" = Just Op_SSUBL2
opFromString "SSUBW" = Just Op_SSUBW
opFromString "SSUBW2" = Just Op_SSUBW2
opFromString "ST1" = Just Op_ST1
opFromString "ST2" = Just Op_ST2
opFromString "ST3" = Just Op_ST3
opFromString "ST4" = Just Op_ST4
opFromString "STLR" = Just Op_STLR
opFromString "STLRB" = Just Op_STLRB
opFromString "STLRH" = Just Op_STLRH
opFromString "STLXP" = Just Op_STLXP
opFromString "STLXR" = Just Op_STLXR
opFromString "STLXRB" = Just Op_STLXRB
opFromString "STLXRH" = Just Op_STLXRH
opFromString "STNP" = Just Op_STNP
opFromString "STP" = Just Op_STP
opFromString "STR" = Just Op_STR
opFromString "STRB" = Just Op_STRB
opFromString "STRH" = Just Op_STRH
opFromString "STTR" = Just Op_STTR
opFromString "STTRB" = Just Op_STTRB
opFromString "STTRH" = Just Op_STTRH
opFromString "STUR" = Just Op_STUR
opFromString "STURB" = Just Op_STURB
opFromString "STURH" = Just Op_STURH
opFromString "STXP" = Just Op_STXP
opFromString "STXR" = Just Op_STXR
opFromString "STXRB" = Just Op_STXRB
opFromString "STXRH" = Just Op_STXRH
opFromString "SUB" = Just Op_SUB
opFromString "SUBHN" = Just Op_SUBHN
opFromString "SUBHN2" = Just Op_SUBHN2
opFromString "SUBS" = Just Op_SUBS
opFromString "SUQADD" = Just Op_SUQADD
opFromString "SVC" = Just Op_SVC
opFromString "SXTB" = Just Op_SXTB
opFromString "SXTH" = Just Op_SXTH
opFromString "SXTL" = Just Op_SXTL
opFromString "SXTL2" = Just Op_SXTL2
opFromString "SXTW" = Just Op_SXTW
opFromString "SYS" = Just Op_SYS
opFromString "SYSL" = Just Op_SYSL
opFromString "TBL" = Just Op_TBL
opFromString "TBNZ" = Just Op_TBNZ
opFromString "TBX" = Just Op_TBX
opFromString "TBZ" = Just Op_TBZ
opFromString "TLBI" = Just Op_TLBI
opFromString "TRN1" = Just Op_TRN1
opFromString "TRN2" = Just Op_TRN2
opFromString "TST" = Just Op_TST
opFromString "UABA" = Just Op_UABA
opFromString "UABAL" = Just Op_UABAL
opFromString "UABAL2" = Just Op_UABAL2
opFromString "UABD" = Just Op_UABD
opFromString "UABDL" = Just Op_UABDL
opFromString "UABDL2" = Just Op_UABDL2
opFromString "UADALP" = Just Op_UADALP
opFromString "UADDL" = Just Op_UADDL
opFromString "UADDL2" = Just Op_UADDL2
opFromString "UADDLP" = Just Op_UADDLP
opFromString "UADDLV" = Just Op_UADDLV
opFromString "UADDW" = Just Op_UADDW
opFromString "UADDW2" = Just Op_UADDW2
opFromString "UBFIZ" = Just Op_UBFIZ
opFromString "UBFM" = Just Op_UBFM
opFromString "UBFX" = Just Op_UBFX
opFromString "UCVTF" = Just Op_UCVTF
opFromString "UDIV" = Just Op_UDIV
opFromString "UHADD" = Just Op_UHADD
opFromString "UHSUB" = Just Op_UHSUB
opFromString "UMADDL" = Just Op_UMADDL
opFromString "UMAX" = Just Op_UMAX
opFromString "UMAXP" = Just Op_UMAXP
opFromString "UMAXV" = Just Op_UMAXV
opFromString "UMIN" = Just Op_UMIN
opFromString "UMINP" = Just Op_UMINP
opFromString "UMINV" = Just Op_UMINV
opFromString "UMLAL" = Just Op_UMLAL
opFromString "UMLAL2" = Just Op_UMLAL2
opFromString "UMLSL" = Just Op_UMLSL
opFromString "UMLSL2" = Just Op_UMLSL2
opFromString "UMNEGL" = Just Op_UMNEGL
opFromString "UMOV" = Just Op_UMOV
opFromString "UMSUBL" = Just Op_UMSUBL
opFromString "UMULH" = Just Op_UMULH
opFromString "UMULL" = Just Op_UMULL
opFromString "UMULL2" = Just Op_UMULL2
opFromString "UQADD" = Just Op_UQADD
opFromString "UQRSHL" = Just Op_UQRSHL
opFromString "UQRSHRN" = Just Op_UQRSHRN
opFromString "UQRSHRN2" = Just Op_UQRSHRN2
opFromString "UQSHL" = Just Op_UQSHL
opFromString "UQSHRN" = Just Op_UQSHRN
opFromString "UQSHRN2" = Just Op_UQSHRN2
opFromString "UQSUB" = Just Op_UQSUB
opFromString "UQXTN" = Just Op_UQXTN
opFromString "UQXTN2" = Just Op_UQXTN2
opFromString "URECPE" = Just Op_URECPE
opFromString "URHADD" = Just Op_URHADD
opFromString "URSHL" = Just Op_URSHL
opFromString "URSHR" = Just Op_URSHR
opFromString "URSQRTE" = Just Op_URSQRTE
opFromString "URSRA" = Just Op_URSRA
opFromString "USHL" = Just Op_USHL
opFromString "USHLL" = Just Op_USHLL
opFromString "USHLL2" = Just Op_USHLL2
opFromString "USHR" = Just Op_USHR
opFromString "USQADD" = Just Op_USQADD
opFromString "USRA" = Just Op_USRA
opFromString "USUBL" = Just Op_USUBL
opFromString "USUBL2" = Just Op_USUBL2
opFromString "USUBW" = Just Op_USUBW
opFromString "USUBW2" = Just Op_USUBW2
opFromString "UXTB" = Just Op_UXTB
opFromString "UXTH" = Just Op_UXTH
opFromString "UXTL" = Just Op_UXTL
opFromString "UXTL2" = Just Op_UXTL2
opFromString "UZP1" = Just Op_UZP1
opFromString "UZP2" = Just Op_UZP2
opFromString "WFE" = Just Op_WFE
opFromString "WFI" = Just Op_WFI
opFromString "XTN" = Just Op_XTN
opFromString "XTN2" = Just Op_XTN2
opFromString "YIELD" = Just Op_YIELD
opFromString "ZIP1" = Just Op_ZIP1
opFromString "ZIP2" = Just Op_ZIP2
opFromString _ = Nothing

data Arg = Arg_Bt
         | Arg_Cm
         | Arg_Cn
         | Arg_cond_AllowALNV_Normal
         | Arg_conditional
         | Arg_cond_NotAllowALNV_Invert
         | Arg_Da
         | Arg_Dd
         | Arg_Dm
         | Arg_Dn
         | Arg_Dt
         | Arg_Dt2
         | Arg_Hd
         | Arg_Hn
         | Arg_Ht
         | Arg_IAddSub
         | Arg_immediate_0_127_CRm_op2
         | Arg_immediate_0_15_CRm
         | Arg_immediate_0_15_nzcv
         | Arg_immediate_0_31_imm5
         | Arg_immediate_0_31_immr
         | Arg_immediate_0_31_imms
         | Arg_immediate_0_63_b5_b40
         | Arg_immediate_0_63_immh_immb__UIntimmhimmb64_8
         | Arg_immediate_0_63_immr
         | Arg_immediate_0_63_imms
         | Arg_immediate_0_65535_imm16
         | Arg_immediate_0_7_op1
         | Arg_immediate_0_7_op2
         | Arg_immediate_0_width_immh_immb__SEEAdvancedSIMDmodifiedimmediate_0__UIntimmhimmb8_1__UIntimmhimmb16_2__UIntimmhimmb32_4
         | Arg_immediate_0_width_immh_immb__SEEAdvancedSIMDmodifiedimmediate_0__UIntimmhimmb8_1__UIntimmhimmb16_2__UIntimmhimmb32_4__UIntimmhimmb64_8
         | Arg_immediate_0_width_m1_immh_immb__UIntimmhimmb8_1__UIntimmhimmb16_2__UIntimmhimmb32_4__UIntimmhimmb64_8
         | Arg_immediate_0_width_size__8_0__16_1__32_2
         | Arg_immediate_1_64_immh_immb__128UIntimmhimmb_8
         | Arg_immediate_1_width_immh_immb__16UIntimmhimmb_1__32UIntimmhimmb_2__64UIntimmhimmb_4
         | Arg_immediate_1_width_immh_immb__SEEAdvancedSIMDmodifiedimmediate_0__16UIntimmhimmb_1__32UIntimmhimmb_2__64UIntimmhimmb_4
         | Arg_immediate_1_width_immh_immb__SEEAdvancedSIMDmodifiedimmediate_0__16UIntimmhimmb_1__32UIntimmhimmb_2__64UIntimmhimmb_4__128UIntimmhimmb_8
         | Arg_immediate_8x8_a_b_c_d_e_f_g_h
         | Arg_immediate_ASR_SBFM_32M_bitfield_0_31_immr
         | Arg_immediate_ASR_SBFM_64M_bitfield_0_63_immr
         | Arg_immediate_BFI_BFM_32M_bitfield_lsb_32_immr
         | Arg_immediate_BFI_BFM_32M_bitfield_width_32_imms
         | Arg_immediate_BFI_BFM_64M_bitfield_lsb_64_immr
         | Arg_immediate_BFI_BFM_64M_bitfield_width_64_imms
         | Arg_immediate_BFXIL_BFM_32M_bitfield_lsb_32_immr
         | Arg_immediate_BFXIL_BFM_32M_bitfield_width_32_imms
         | Arg_immediate_BFXIL_BFM_64M_bitfield_lsb_64_immr
         | Arg_immediate_BFXIL_BFM_64M_bitfield_width_64_imms
         | Arg_immediate_bitmask_32_imms_immr
         | Arg_immediate_bitmask_64_N_imms_immr
         | Arg_immediate_exp_3_pre_4_a_b_c_d_e_f_g_h
         | Arg_immediate_exp_3_pre_4_imm8
         | Arg_immediate_fbits_min_1_max_0_sub_0_immh_immb__64UIntimmhimmb_4__128UIntimmhimmb_8
         | Arg_immediate_fbits_min_1_max_0_sub_0_immh_immb__SEEAdvancedSIMDmodifiedimmediate_0__64UIntimmhimmb_4__128UIntimmhimmb_8
         | Arg_immediate_fbits_min_1_max_32_sub_64_scale
         | Arg_immediate_fbits_min_1_max_64_sub_64_scale
         | Arg_immediate_floatzero
         | Arg_immediate_index_Q_imm4__imm4lt20gt_00__imm4_10
         | Arg_immediate_LSL_UBFM_32M_bitfield_0_31_immr
         | Arg_immediate_LSL_UBFM_64M_bitfield_0_63_immr
         | Arg_immediate_LSR_UBFM_32M_bitfield_0_31_immr
         | Arg_immediate_LSR_UBFM_64M_bitfield_0_63_immr
         | Arg_immediate_MSL__a_b_c_d_e_f_g_h_cmode__8_0__16_1
         | Arg_immediate_optional_0_15_CRm
         | Arg_immediate_optional_0_65535_imm16
         | Arg_immediate_OptLSL__a_b_c_d_e_f_g_h_cmode__0_0__8_1
         | Arg_immediate_OptLSL__a_b_c_d_e_f_g_h_cmode__0_0__8_1__16_2__24_3
         | Arg_immediate_OptLSL_amount_16_0_16
         | Arg_immediate_OptLSL_amount_16_0_48
         | Arg_immediate_OptLSLZero__a_b_c_d_e_f_g_h
         | Arg_immediate_SBFIZ_SBFM_32M_bitfield_lsb_32_immr
         | Arg_immediate_SBFIZ_SBFM_32M_bitfield_width_32_imms
         | Arg_immediate_SBFIZ_SBFM_64M_bitfield_lsb_64_immr
         | Arg_immediate_SBFIZ_SBFM_64M_bitfield_width_64_imms
         | Arg_immediate_SBFX_SBFM_32M_bitfield_lsb_32_immr
         | Arg_immediate_SBFX_SBFM_32M_bitfield_width_32_imms
         | Arg_immediate_SBFX_SBFM_64M_bitfield_lsb_64_immr
         | Arg_immediate_SBFX_SBFM_64M_bitfield_width_64_imms
         | Arg_immediate_shift_32_implicit_imm16_hw
         | Arg_immediate_shift_32_implicit_inverse_imm16_hw
         | Arg_immediate_shift_64_implicit_imm16_hw
         | Arg_immediate_shift_64_implicit_inverse_imm16_hw
         | Arg_immediate_UBFIZ_UBFM_32M_bitfield_lsb_32_immr
         | Arg_immediate_UBFIZ_UBFM_32M_bitfield_width_32_imms
         | Arg_immediate_UBFIZ_UBFM_64M_bitfield_lsb_64_immr
         | Arg_immediate_UBFIZ_UBFM_64M_bitfield_width_64_imms
         | Arg_immediate_UBFX_UBFM_32M_bitfield_lsb_32_immr
         | Arg_immediate_UBFX_UBFM_32M_bitfield_width_32_imms
         | Arg_immediate_UBFX_UBFM_64M_bitfield_lsb_64_immr
         | Arg_immediate_UBFX_UBFM_64M_bitfield_width_64_imms
         | Arg_immediate_zero
         | Arg_option_DMB_BO_system_CRm
         | Arg_option_DSB_BO_system_CRm
         | Arg_option_ISB_BI_system_CRm
         | Arg_prfop_Rt
         | Arg_pstatefield_op1_op2__SPSel_05__DAIFSet_36__DAIFClr_37
         | Arg_Qd
         | Arg_Qn
         | Arg_Qt
         | Arg_Qt2
         | Arg_Rm_extend__UXTB_0__UXTH_1__UXTW_2__LSL_UXTX_3__SXTB_4__SXTH_5__SXTW_6__SXTX_7__0_4
         | Arg_Rn_16_5__W_1__W_2__W_4__X_8
         | Arg_Rt_31_1__W_0__X_1
         | Arg_Sa
         | Arg_Sd
         | Arg_slabel_imm14_2
         | Arg_slabel_imm19_2
         | Arg_slabel_imm26_2
         | Arg_slabel_immhi_immlo_0
         | Arg_slabel_immhi_immlo_12
         | Arg_Sm
         | Arg_Sn
         | Arg_St
         | Arg_St2
         | Arg_sysop_AT_SYS_CR_system
         | Arg_sysop_DC_SYS_CR_system
         | Arg_sysop_IC_SYS_CR_system
         | Arg_sysop_SYS_CR_system
         | Arg_sysop_TLBI_SYS_CR_system
         | Arg_sysreg_o0_op1_CRn_CRm_op2
         | Arg_Vd_16_5__B_1__H_2__S_4__D_8
         | Arg_Vd_19_4__B_1__H_2__S_4
         | Arg_Vd_19_4__B_1__H_2__S_4__D_8
         | Arg_Vd_19_4__D_8
         | Arg_Vd_19_4__S_4__D_8
         | Arg_Vd_22_1__S_0
         | Arg_Vd_22_1__S_0__D_1
         | Arg_Vd_22_1__S_1
         | Arg_Vd_22_2__B_0__H_1__S_2
         | Arg_Vd_22_2__B_0__H_1__S_2__D_3
         | Arg_Vd_22_2__D_3
         | Arg_Vd_22_2__H_0__S_1__D_2
         | Arg_Vd_22_2__H_1__S_2
         | Arg_Vd_22_2__S_1__D_2
         | Arg_Vd_arrangement_16B
         | Arg_Vd_arrangement_2D
         | Arg_Vd_arrangement_4S
         | Arg_Vd_arrangement_D_index__1
         | Arg_Vd_arrangement_imm5___B_1__H_2__S_4__D_8_index__imm5__imm5lt41gt_1__imm5lt42gt_2__imm5lt43gt_4__imm5lt4gt_8_1
         | Arg_Vd_arrangement_imm5_Q___8B_10__16B_11__4H_20__8H_21__2S_40__4S_41__2D_81
         | Arg_Vd_arrangement_immh_Q___SEEAdvancedSIMDmodifiedimmediate_00__2S_40__4S_41__2D_81
         | Arg_Vd_arrangement_immh_Q___SEEAdvancedSIMDmodifiedimmediate_00__8B_10__16B_11__4H_20__8H_21__2S_40__4S_41
         | Arg_Vd_arrangement_immh_Q___SEEAdvancedSIMDmodifiedimmediate_00__8B_10__16B_11__4H_20__8H_21__2S_40__4S_41__2D_81
         | Arg_Vd_arrangement_immh___SEEAdvancedSIMDmodifiedimmediate_0__8H_1__4S_2__2D_4
         | Arg_Vd_arrangement_Q___2S_0__4S_1
         | Arg_Vd_arrangement_Q___4H_0__8H_1
         | Arg_Vd_arrangement_Q___8B_0__16B_1
         | Arg_Vd_arrangement_Q_sz___2S_00__4S_10__2D_11
         | Arg_Vd_arrangement_size___4S_1__2D_2
         | Arg_Vd_arrangement_size___8H_0__1Q_3
         | Arg_Vd_arrangement_size___8H_0__4S_1__2D_2
         | Arg_Vd_arrangement_size_Q___4H_00__8H_01__2S_10__4S_11__1D_20__2D_21
         | Arg_Vd_arrangement_size_Q___4H_10__8H_11__2S_20__4S_21
         | Arg_Vd_arrangement_size_Q___8B_00__16B_01
         | Arg_Vd_arrangement_size_Q___8B_00__16B_01__4H_10__8H_11
         | Arg_Vd_arrangement_size_Q___8B_00__16B_01__4H_10__8H_11__2S_20__4S_21
         | Arg_Vd_arrangement_size_Q___8B_00__16B_01__4H_10__8H_11__2S_20__4S_21__2D_31
         | Arg_Vd_arrangement_sz___4S_0__2D_1
         | Arg_Vd_arrangement_sz_Q___2S_00__4S_01
         | Arg_Vd_arrangement_sz_Q___2S_00__4S_01__2D_11
         | Arg_Vd_arrangement_sz_Q___2S_10__4S_11
         | Arg_Vd_arrangement_sz_Q___4H_00__8H_01__2S_10__4S_11
         | Arg_Vm_22_1__S_0__D_1
         | Arg_Vm_22_2__B_0__H_1__S_2__D_3
         | Arg_Vm_22_2__D_3
         | Arg_Vm_22_2__H_1__S_2
         | Arg_Vm_arrangement_4S
         | Arg_Vm_arrangement_Q___8B_0__16B_1
         | Arg_Vm_arrangement_size___8H_0__4S_1__2D_2
         | Arg_Vm_arrangement_size___H_1__S_2_index__size_L_H_M__HLM_1__HL_2_1
         | Arg_Vm_arrangement_size_Q___4H_10__8H_11__2S_20__4S_21
         | Arg_Vm_arrangement_size_Q___8B_00__16B_01
         | Arg_Vm_arrangement_size_Q___8B_00__16B_01__1D_30__2D_31
         | Arg_Vm_arrangement_size_Q___8B_00__16B_01__4H_10__8H_11__2S_20__4S_21
         | Arg_Vm_arrangement_size_Q___8B_00__16B_01__4H_10__8H_11__2S_20__4S_21__2D_31
         | Arg_Vm_arrangement_sz_Q___2S_00__4S_01__2D_11
         | Arg_Vm_arrangement_sz___S_0__D_1_index__sz_L_H__HL_00__H_10_1
         | Arg_Vn_19_4__B_1__H_2__S_4__D_8
         | Arg_Vn_19_4__D_8
         | Arg_Vn_19_4__H_1__S_2__D_4
         | Arg_Vn_19_4__S_4__D_8
         | Arg_Vn_1_arrangement_16B
         | Arg_Vn_22_1__D_1
         | Arg_Vn_22_1__S_0__D_1
         | Arg_Vn_22_2__B_0__H_1__S_2__D_3
         | Arg_Vn_22_2__D_3
         | Arg_Vn_22_2__H_0__S_1__D_2
         | Arg_Vn_22_2__H_1__S_2
         | Arg_Vn_2_arrangement_16B
         | Arg_Vn_3_arrangement_16B
         | Arg_Vn_4_arrangement_16B
         | Arg_Vn_arrangement_16B
         | Arg_Vn_arrangement_4S
         | Arg_Vn_arrangement_D_index__1
         | Arg_Vn_arrangement_D_index__imm5_1
         | Arg_Vn_arrangement_imm5___B_1__H_2_index__imm5__imm5lt41gt_1__imm5lt42gt_2_1
         | Arg_Vn_arrangement_imm5___B_1__H_2__S_4__D_8_index__imm5_imm4__imm4lt30gt_1__imm4lt31gt_2__imm4lt32gt_4__imm4lt3gt_8_1
         | Arg_Vn_arrangement_imm5___B_1__H_2__S_4__D_8_index__imm5__imm5lt41gt_1__imm5lt42gt_2__imm5lt43gt_4__imm5lt4gt_8_1
         | Arg_Vn_arrangement_imm5___B_1__H_2__S_4_index__imm5__imm5lt41gt_1__imm5lt42gt_2__imm5lt43gt_4_1
         | Arg_Vn_arrangement_imm5___D_8_index__imm5_1
         | Arg_Vn_arrangement_immh_Q___SEEAdvancedSIMDmodifiedimmediate_00__2S_40__4S_41__2D_81
         | Arg_Vn_arrangement_immh_Q___SEEAdvancedSIMDmodifiedimmediate_00__8B_10__16B_11__4H_20__8H_21__2S_40__4S_41
         | Arg_Vn_arrangement_immh_Q___SEEAdvancedSIMDmodifiedimmediate_00__8B_10__16B_11__4H_20__8H_21__2S_40__4S_41__2D_81
         | Arg_Vn_arrangement_immh___SEEAdvancedSIMDmodifiedimmediate_0__8H_1__4S_2__2D_4
         | Arg_Vn_arrangement_Q___8B_0__16B_1
         | Arg_Vn_arrangement_Q_sz___2S_00__4S_10__2D_11
         | Arg_Vn_arrangement_Q_sz___4S_10
         | Arg_Vn_arrangement_S_index__imm5__imm5lt41gt_1__imm5lt42gt_2__imm5lt43gt_4_1
         | Arg_Vn_arrangement_size___2D_3
         | Arg_Vn_arrangement_size___8H_0__4S_1__2D_2
         | Arg_Vn_arrangement_size_Q___4H_10__8H_11__2S_20__4S_21
         | Arg_Vn_arrangement_size_Q___8B_00__16B_01
         | Arg_Vn_arrangement_size_Q___8B_00__16B_01__1D_30__2D_31
         | Arg_Vn_arrangement_size_Q___8B_00__16B_01__4H_10__8H_11
         | Arg_Vn_arrangement_size_Q___8B_00__16B_01__4H_10__8H_11__2S_20__4S_21
         | Arg_Vn_arrangement_size_Q___8B_00__16B_01__4H_10__8H_11__2S_20__4S_21__2D_31
         | Arg_Vn_arrangement_size_Q___8B_00__16B_01__4H_10__8H_11__4S_21
         | Arg_Vn_arrangement_sz___2D_1
         | Arg_Vn_arrangement_sz___2S_0__2D_1
         | Arg_Vn_arrangement_sz___4S_0__2D_1
         | Arg_Vn_arrangement_sz_Q___2S_00__4S_01
         | Arg_Vn_arrangement_sz_Q___2S_00__4S_01__2D_11
         | Arg_Vn_arrangement_sz_Q___4H_00__8H_01__2S_10__4S_11
         | Arg_Vt_1_arrangement_B_index__Q_S_size_1
         | Arg_Vt_1_arrangement_D_index__Q_1
         | Arg_Vt_1_arrangement_H_index__Q_S_size_1
         | Arg_Vt_1_arrangement_S_index__Q_S_1
         | Arg_Vt_1_arrangement_size_Q___8B_00__16B_01__4H_10__8H_11__2S_20__4S_21__1D_30__2D_31
         | Arg_Vt_2_arrangement_B_index__Q_S_size_1
         | Arg_Vt_2_arrangement_D_index__Q_1
         | Arg_Vt_2_arrangement_H_index__Q_S_size_1
         | Arg_Vt_2_arrangement_S_index__Q_S_1
         | Arg_Vt_2_arrangement_size_Q___8B_00__16B_01__4H_10__8H_11__2S_20__4S_21__1D_30__2D_31
         | Arg_Vt_2_arrangement_size_Q___8B_00__16B_01__4H_10__8H_11__2S_20__4S_21__2D_31
         | Arg_Vt_3_arrangement_B_index__Q_S_size_1
         | Arg_Vt_3_arrangement_D_index__Q_1
         | Arg_Vt_3_arrangement_H_index__Q_S_size_1
         | Arg_Vt_3_arrangement_S_index__Q_S_1
         | Arg_Vt_3_arrangement_size_Q___8B_00__16B_01__4H_10__8H_11__2S_20__4S_21__1D_30__2D_31
         | Arg_Vt_3_arrangement_size_Q___8B_00__16B_01__4H_10__8H_11__2S_20__4S_21__2D_31
         | Arg_Vt_4_arrangement_B_index__Q_S_size_1
         | Arg_Vt_4_arrangement_D_index__Q_1
         | Arg_Vt_4_arrangement_H_index__Q_S_size_1
         | Arg_Vt_4_arrangement_S_index__Q_S_1
         | Arg_Vt_4_arrangement_size_Q___8B_00__16B_01__4H_10__8H_11__2S_20__4S_21__1D_30__2D_31
         | Arg_Vt_4_arrangement_size_Q___8B_00__16B_01__4H_10__8H_11__2S_20__4S_21__2D_31
         | Arg_Wa
         | Arg_Wd
         | Arg_Wds
         | Arg_Wm
         | Arg_Wm_extend__UXTB_0__UXTH_1__LSL_UXTW_2__UXTX_3__SXTB_4__SXTH_5__SXTW_6__SXTX_7__0_4
         | Arg_Wm_shift__LSL_0__LSR_1__ASR_2__0_31
         | Arg_Wm_shift__LSL_0__LSR_1__ASR_2__ROR_3__0_31
         | Arg_Wn
         | Arg_Wns
         | Arg_Ws
         | Arg_Wt
         | Arg_Wt2
         | Arg_Xa
         | Arg_Xd
         | Arg_Xds
         | Arg_Xm
         | Arg_Xm_shift__LSL_0__LSR_1__ASR_2__0_63
         | Arg_Xm_shift__LSL_0__LSR_1__ASR_2__ROR_3__0_63
         | Arg_Xn
         | Arg_Xns
         | Arg_Xns_mem
         | Arg_Xns_mem_extend_m__UXTW_2__LSL_3__SXTW_6__SXTX_7__0_0__1_1
         | Arg_Xns_mem_extend_m__UXTW_2__LSL_3__SXTW_6__SXTX_7__0_0__2_1
         | Arg_Xns_mem_extend_m__UXTW_2__LSL_3__SXTW_6__SXTX_7__0_0__3_1
         | Arg_Xns_mem_extend_m__UXTW_2__LSL_3__SXTW_6__SXTX_7__0_0__4_1
         | Arg_Xns_mem_extend_m__UXTW_2__LSL_3__SXTW_6__SXTX_7__absent_0__0_1
         | Arg_Xns_mem_offset
         | Arg_Xns_mem_optional_imm12_16_unsigned
         | Arg_Xns_mem_optional_imm12_1_unsigned
         | Arg_Xns_mem_optional_imm12_2_unsigned
         | Arg_Xns_mem_optional_imm12_4_unsigned
         | Arg_Xns_mem_optional_imm12_8_unsigned
         | Arg_Xns_mem_optional_imm7_16_signed
         | Arg_Xns_mem_optional_imm7_4_signed
         | Arg_Xns_mem_optional_imm7_8_signed
         | Arg_Xns_mem_optional_imm9_1_signed
         | Arg_Xns_mem_post_fixedimm_1
         | Arg_Xns_mem_post_fixedimm_12
         | Arg_Xns_mem_post_fixedimm_16
         | Arg_Xns_mem_post_fixedimm_2
         | Arg_Xns_mem_post_fixedimm_24
         | Arg_Xns_mem_post_fixedimm_3
         | Arg_Xns_mem_post_fixedimm_32
         | Arg_Xns_mem_post_fixedimm_4
         | Arg_Xns_mem_post_fixedimm_6
         | Arg_Xns_mem_post_fixedimm_8
         | Arg_Xns_mem_post_imm7_16_signed
         | Arg_Xns_mem_post_imm7_4_signed
         | Arg_Xns_mem_post_imm7_8_signed
         | Arg_Xns_mem_post_imm9_1_signed
         | Arg_Xns_mem_post_Q__16_0__32_1
         | Arg_Xns_mem_post_Q__24_0__48_1
         | Arg_Xns_mem_post_Q__32_0__64_1
         | Arg_Xns_mem_post_Q__8_0__16_1
         | Arg_Xns_mem_post_size__1_0__2_1__4_2__8_3
         | Arg_Xns_mem_post_size__2_0__4_1__8_2__16_3
         | Arg_Xns_mem_post_size__3_0__6_1__12_2__24_3
         | Arg_Xns_mem_post_size__4_0__8_1__16_2__32_3
         | Arg_Xns_mem_post_Xm
         | Arg_Xns_mem_wb_imm7_16_signed
         | Arg_Xns_mem_wb_imm7_4_signed
         | Arg_Xns_mem_wb_imm7_8_signed
         | Arg_Xns_mem_wb_imm9_1_signed
         | Arg_Xs
         | Arg_Xt
         | Arg_Xt2
         deriving (Eq, Read, Show, Enum)

argFromString :: String -> Maybe Arg
argFromString "arg_Bt" = Just Arg_Bt
argFromString "arg_Cm" = Just Arg_Cm
argFromString "arg_Cn" = Just Arg_Cn
argFromString "arg_cond_AllowALNV_Normal"
  = Just Arg_cond_AllowALNV_Normal
argFromString "arg_conditional" = Just Arg_conditional
argFromString "arg_cond_NotAllowALNV_Invert"
  = Just Arg_cond_NotAllowALNV_Invert
argFromString "arg_Da" = Just Arg_Da
argFromString "arg_Dd" = Just Arg_Dd
argFromString "arg_Dm" = Just Arg_Dm
argFromString "arg_Dn" = Just Arg_Dn
argFromString "arg_Dt" = Just Arg_Dt
argFromString "arg_Dt2" = Just Arg_Dt2
argFromString "arg_Hd" = Just Arg_Hd
argFromString "arg_Hn" = Just Arg_Hn
argFromString "arg_Ht" = Just Arg_Ht
argFromString "arg_IAddSub" = Just Arg_IAddSub
argFromString "arg_immediate_0_127_CRm_op2"
  = Just Arg_immediate_0_127_CRm_op2
argFromString "arg_immediate_0_15_CRm"
  = Just Arg_immediate_0_15_CRm
argFromString "arg_immediate_0_15_nzcv"
  = Just Arg_immediate_0_15_nzcv
argFromString "arg_immediate_0_31_imm5"
  = Just Arg_immediate_0_31_imm5
argFromString "arg_immediate_0_31_immr"
  = Just Arg_immediate_0_31_immr
argFromString "arg_immediate_0_31_imms"
  = Just Arg_immediate_0_31_imms
argFromString "arg_immediate_0_63_b5_b40"
  = Just Arg_immediate_0_63_b5_b40
argFromString "arg_immediate_0_63_immh_immb__UIntimmhimmb64_8"
  = Just Arg_immediate_0_63_immh_immb__UIntimmhimmb64_8
argFromString "arg_immediate_0_63_immr"
  = Just Arg_immediate_0_63_immr
argFromString "arg_immediate_0_63_imms"
  = Just Arg_immediate_0_63_imms
argFromString "arg_immediate_0_65535_imm16"
  = Just Arg_immediate_0_65535_imm16
argFromString "arg_immediate_0_7_op1" = Just Arg_immediate_0_7_op1
argFromString "arg_immediate_0_7_op2" = Just Arg_immediate_0_7_op2
argFromString
  "arg_immediate_0_width_immh_immb__SEEAdvancedSIMDmodifiedimmediate_0__UIntimmhimmb8_1__UIntimmhimmb16_2__UIntimmhimmb32_4"
  = Just
      Arg_immediate_0_width_immh_immb__SEEAdvancedSIMDmodifiedimmediate_0__UIntimmhimmb8_1__UIntimmhimmb16_2__UIntimmhimmb32_4
argFromString
  "arg_immediate_0_width_immh_immb__SEEAdvancedSIMDmodifiedimmediate_0__UIntimmhimmb8_1__UIntimmhimmb16_2__UIntimmhimmb32_4__UIntimmhimmb64_8"
  = Just
      Arg_immediate_0_width_immh_immb__SEEAdvancedSIMDmodifiedimmediate_0__UIntimmhimmb8_1__UIntimmhimmb16_2__UIntimmhimmb32_4__UIntimmhimmb64_8
argFromString
  "arg_immediate_0_width_m1_immh_immb__UIntimmhimmb8_1__UIntimmhimmb16_2__UIntimmhimmb32_4__UIntimmhimmb64_8"
  = Just
      Arg_immediate_0_width_m1_immh_immb__UIntimmhimmb8_1__UIntimmhimmb16_2__UIntimmhimmb32_4__UIntimmhimmb64_8
argFromString "arg_immediate_0_width_size__8_0__16_1__32_2"
  = Just Arg_immediate_0_width_size__8_0__16_1__32_2
argFromString "arg_immediate_1_64_immh_immb__128UIntimmhimmb_8"
  = Just Arg_immediate_1_64_immh_immb__128UIntimmhimmb_8
argFromString
  "arg_immediate_1_width_immh_immb__16UIntimmhimmb_1__32UIntimmhimmb_2__64UIntimmhimmb_4"
  = Just
      Arg_immediate_1_width_immh_immb__16UIntimmhimmb_1__32UIntimmhimmb_2__64UIntimmhimmb_4
argFromString
  "arg_immediate_1_width_immh_immb__SEEAdvancedSIMDmodifiedimmediate_0__16UIntimmhimmb_1__32UIntimmhimmb_2__64UIntimmhimmb_4"
  = Just
      Arg_immediate_1_width_immh_immb__SEEAdvancedSIMDmodifiedimmediate_0__16UIntimmhimmb_1__32UIntimmhimmb_2__64UIntimmhimmb_4
argFromString
  "arg_immediate_1_width_immh_immb__SEEAdvancedSIMDmodifiedimmediate_0__16UIntimmhimmb_1__32UIntimmhimmb_2__64UIntimmhimmb_4__128UIntimmhimmb_8"
  = Just
      Arg_immediate_1_width_immh_immb__SEEAdvancedSIMDmodifiedimmediate_0__16UIntimmhimmb_1__32UIntimmhimmb_2__64UIntimmhimmb_4__128UIntimmhimmb_8
argFromString "arg_immediate_8x8_a_b_c_d_e_f_g_h"
  = Just Arg_immediate_8x8_a_b_c_d_e_f_g_h
argFromString "arg_immediate_ASR_SBFM_32M_bitfield_0_31_immr"
  = Just Arg_immediate_ASR_SBFM_32M_bitfield_0_31_immr
argFromString "arg_immediate_ASR_SBFM_64M_bitfield_0_63_immr"
  = Just Arg_immediate_ASR_SBFM_64M_bitfield_0_63_immr
argFromString "arg_immediate_BFI_BFM_32M_bitfield_lsb_32_immr"
  = Just Arg_immediate_BFI_BFM_32M_bitfield_lsb_32_immr
argFromString "arg_immediate_BFI_BFM_32M_bitfield_width_32_imms"
  = Just Arg_immediate_BFI_BFM_32M_bitfield_width_32_imms
argFromString "arg_immediate_BFI_BFM_64M_bitfield_lsb_64_immr"
  = Just Arg_immediate_BFI_BFM_64M_bitfield_lsb_64_immr
argFromString "arg_immediate_BFI_BFM_64M_bitfield_width_64_imms"
  = Just Arg_immediate_BFI_BFM_64M_bitfield_width_64_imms
argFromString "arg_immediate_BFXIL_BFM_32M_bitfield_lsb_32_immr"
  = Just Arg_immediate_BFXIL_BFM_32M_bitfield_lsb_32_immr
argFromString "arg_immediate_BFXIL_BFM_32M_bitfield_width_32_imms"
  = Just Arg_immediate_BFXIL_BFM_32M_bitfield_width_32_imms
argFromString "arg_immediate_BFXIL_BFM_64M_bitfield_lsb_64_immr"
  = Just Arg_immediate_BFXIL_BFM_64M_bitfield_lsb_64_immr
argFromString "arg_immediate_BFXIL_BFM_64M_bitfield_width_64_imms"
  = Just Arg_immediate_BFXIL_BFM_64M_bitfield_width_64_imms
argFromString "arg_immediate_bitmask_32_imms_immr"
  = Just Arg_immediate_bitmask_32_imms_immr
argFromString "arg_immediate_bitmask_64_N_imms_immr"
  = Just Arg_immediate_bitmask_64_N_imms_immr
argFromString "arg_immediate_exp_3_pre_4_a_b_c_d_e_f_g_h"
  = Just Arg_immediate_exp_3_pre_4_a_b_c_d_e_f_g_h
argFromString "arg_immediate_exp_3_pre_4_imm8"
  = Just Arg_immediate_exp_3_pre_4_imm8
argFromString
  "arg_immediate_fbits_min_1_max_0_sub_0_immh_immb__64UIntimmhimmb_4__128UIntimmhimmb_8"
  = Just
      Arg_immediate_fbits_min_1_max_0_sub_0_immh_immb__64UIntimmhimmb_4__128UIntimmhimmb_8
argFromString
  "arg_immediate_fbits_min_1_max_0_sub_0_immh_immb__SEEAdvancedSIMDmodifiedimmediate_0__64UIntimmhimmb_4__128UIntimmhimmb_8"
  = Just
      Arg_immediate_fbits_min_1_max_0_sub_0_immh_immb__SEEAdvancedSIMDmodifiedimmediate_0__64UIntimmhimmb_4__128UIntimmhimmb_8
argFromString "arg_immediate_fbits_min_1_max_32_sub_64_scale"
  = Just Arg_immediate_fbits_min_1_max_32_sub_64_scale
argFromString "arg_immediate_fbits_min_1_max_64_sub_64_scale"
  = Just Arg_immediate_fbits_min_1_max_64_sub_64_scale
argFromString "arg_immediate_floatzero"
  = Just Arg_immediate_floatzero
argFromString "arg_immediate_index_Q_imm4__imm4lt20gt_00__imm4_10"
  = Just Arg_immediate_index_Q_imm4__imm4lt20gt_00__imm4_10
argFromString "arg_immediate_LSL_UBFM_32M_bitfield_0_31_immr"
  = Just Arg_immediate_LSL_UBFM_32M_bitfield_0_31_immr
argFromString "arg_immediate_LSL_UBFM_64M_bitfield_0_63_immr"
  = Just Arg_immediate_LSL_UBFM_64M_bitfield_0_63_immr
argFromString "arg_immediate_LSR_UBFM_32M_bitfield_0_31_immr"
  = Just Arg_immediate_LSR_UBFM_32M_bitfield_0_31_immr
argFromString "arg_immediate_LSR_UBFM_64M_bitfield_0_63_immr"
  = Just Arg_immediate_LSR_UBFM_64M_bitfield_0_63_immr
argFromString "arg_immediate_MSL__a_b_c_d_e_f_g_h_cmode__8_0__16_1"
  = Just Arg_immediate_MSL__a_b_c_d_e_f_g_h_cmode__8_0__16_1
argFromString "arg_immediate_optional_0_15_CRm"
  = Just Arg_immediate_optional_0_15_CRm
argFromString "arg_immediate_optional_0_65535_imm16"
  = Just Arg_immediate_optional_0_65535_imm16
argFromString
  "arg_immediate_OptLSL__a_b_c_d_e_f_g_h_cmode__0_0__8_1"
  = Just Arg_immediate_OptLSL__a_b_c_d_e_f_g_h_cmode__0_0__8_1
argFromString
  "arg_immediate_OptLSL__a_b_c_d_e_f_g_h_cmode__0_0__8_1__16_2__24_3"
  = Just
      Arg_immediate_OptLSL__a_b_c_d_e_f_g_h_cmode__0_0__8_1__16_2__24_3
argFromString "arg_immediate_OptLSL_amount_16_0_16"
  = Just Arg_immediate_OptLSL_amount_16_0_16
argFromString "arg_immediate_OptLSL_amount_16_0_48"
  = Just Arg_immediate_OptLSL_amount_16_0_48
argFromString "arg_immediate_OptLSLZero__a_b_c_d_e_f_g_h"
  = Just Arg_immediate_OptLSLZero__a_b_c_d_e_f_g_h
argFromString "arg_immediate_SBFIZ_SBFM_32M_bitfield_lsb_32_immr"
  = Just Arg_immediate_SBFIZ_SBFM_32M_bitfield_lsb_32_immr
argFromString "arg_immediate_SBFIZ_SBFM_32M_bitfield_width_32_imms"
  = Just Arg_immediate_SBFIZ_SBFM_32M_bitfield_width_32_imms
argFromString "arg_immediate_SBFIZ_SBFM_64M_bitfield_lsb_64_immr"
  = Just Arg_immediate_SBFIZ_SBFM_64M_bitfield_lsb_64_immr
argFromString "arg_immediate_SBFIZ_SBFM_64M_bitfield_width_64_imms"
  = Just Arg_immediate_SBFIZ_SBFM_64M_bitfield_width_64_imms
argFromString "arg_immediate_SBFX_SBFM_32M_bitfield_lsb_32_immr"
  = Just Arg_immediate_SBFX_SBFM_32M_bitfield_lsb_32_immr
argFromString "arg_immediate_SBFX_SBFM_32M_bitfield_width_32_imms"
  = Just Arg_immediate_SBFX_SBFM_32M_bitfield_width_32_imms
argFromString "arg_immediate_SBFX_SBFM_64M_bitfield_lsb_64_immr"
  = Just Arg_immediate_SBFX_SBFM_64M_bitfield_lsb_64_immr
argFromString "arg_immediate_SBFX_SBFM_64M_bitfield_width_64_imms"
  = Just Arg_immediate_SBFX_SBFM_64M_bitfield_width_64_imms
argFromString "arg_immediate_shift_32_implicit_imm16_hw"
  = Just Arg_immediate_shift_32_implicit_imm16_hw
argFromString "arg_immediate_shift_32_implicit_inverse_imm16_hw"
  = Just Arg_immediate_shift_32_implicit_inverse_imm16_hw
argFromString "arg_immediate_shift_64_implicit_imm16_hw"
  = Just Arg_immediate_shift_64_implicit_imm16_hw
argFromString "arg_immediate_shift_64_implicit_inverse_imm16_hw"
  = Just Arg_immediate_shift_64_implicit_inverse_imm16_hw
argFromString "arg_immediate_UBFIZ_UBFM_32M_bitfield_lsb_32_immr"
  = Just Arg_immediate_UBFIZ_UBFM_32M_bitfield_lsb_32_immr
argFromString "arg_immediate_UBFIZ_UBFM_32M_bitfield_width_32_imms"
  = Just Arg_immediate_UBFIZ_UBFM_32M_bitfield_width_32_imms
argFromString "arg_immediate_UBFIZ_UBFM_64M_bitfield_lsb_64_immr"
  = Just Arg_immediate_UBFIZ_UBFM_64M_bitfield_lsb_64_immr
argFromString "arg_immediate_UBFIZ_UBFM_64M_bitfield_width_64_imms"
  = Just Arg_immediate_UBFIZ_UBFM_64M_bitfield_width_64_imms
argFromString "arg_immediate_UBFX_UBFM_32M_bitfield_lsb_32_immr"
  = Just Arg_immediate_UBFX_UBFM_32M_bitfield_lsb_32_immr
argFromString "arg_immediate_UBFX_UBFM_32M_bitfield_width_32_imms"
  = Just Arg_immediate_UBFX_UBFM_32M_bitfield_width_32_imms
argFromString "arg_immediate_UBFX_UBFM_64M_bitfield_lsb_64_immr"
  = Just Arg_immediate_UBFX_UBFM_64M_bitfield_lsb_64_immr
argFromString "arg_immediate_UBFX_UBFM_64M_bitfield_width_64_imms"
  = Just Arg_immediate_UBFX_UBFM_64M_bitfield_width_64_imms
argFromString "arg_immediate_zero" = Just Arg_immediate_zero
argFromString "arg_option_DMB_BO_system_CRm"
  = Just Arg_option_DMB_BO_system_CRm
argFromString "arg_option_DSB_BO_system_CRm"
  = Just Arg_option_DSB_BO_system_CRm
argFromString "arg_option_ISB_BI_system_CRm"
  = Just Arg_option_ISB_BI_system_CRm
argFromString "arg_prfop_Rt" = Just Arg_prfop_Rt
argFromString
  "arg_pstatefield_op1_op2__SPSel_05__DAIFSet_36__DAIFClr_37"
  = Just Arg_pstatefield_op1_op2__SPSel_05__DAIFSet_36__DAIFClr_37
argFromString "arg_Qd" = Just Arg_Qd
argFromString "arg_Qn" = Just Arg_Qn
argFromString "arg_Qt" = Just Arg_Qt
argFromString "arg_Qt2" = Just Arg_Qt2
argFromString
  "arg_Rm_extend__UXTB_0__UXTH_1__UXTW_2__LSL_UXTX_3__SXTB_4__SXTH_5__SXTW_6__SXTX_7__0_4"
  = Just
      Arg_Rm_extend__UXTB_0__UXTH_1__UXTW_2__LSL_UXTX_3__SXTB_4__SXTH_5__SXTW_6__SXTX_7__0_4
argFromString "arg_Rn_16_5__W_1__W_2__W_4__X_8"
  = Just Arg_Rn_16_5__W_1__W_2__W_4__X_8
argFromString "arg_Rt_31_1__W_0__X_1" = Just Arg_Rt_31_1__W_0__X_1
argFromString "arg_Sa" = Just Arg_Sa
argFromString "arg_Sd" = Just Arg_Sd
argFromString "arg_slabel_imm14_2" = Just Arg_slabel_imm14_2
argFromString "arg_slabel_imm19_2" = Just Arg_slabel_imm19_2
argFromString "arg_slabel_imm26_2" = Just Arg_slabel_imm26_2
argFromString "arg_slabel_immhi_immlo_0"
  = Just Arg_slabel_immhi_immlo_0
argFromString "arg_slabel_immhi_immlo_12"
  = Just Arg_slabel_immhi_immlo_12
argFromString "arg_Sm" = Just Arg_Sm
argFromString "arg_Sn" = Just Arg_Sn
argFromString "arg_St" = Just Arg_St
argFromString "arg_St2" = Just Arg_St2
argFromString "arg_sysop_AT_SYS_CR_system"
  = Just Arg_sysop_AT_SYS_CR_system
argFromString "arg_sysop_DC_SYS_CR_system"
  = Just Arg_sysop_DC_SYS_CR_system
argFromString "arg_sysop_IC_SYS_CR_system"
  = Just Arg_sysop_IC_SYS_CR_system
argFromString "arg_sysop_SYS_CR_system"
  = Just Arg_sysop_SYS_CR_system
argFromString "arg_sysop_TLBI_SYS_CR_system"
  = Just Arg_sysop_TLBI_SYS_CR_system
argFromString "arg_sysreg_o0_op1_CRn_CRm_op2"
  = Just Arg_sysreg_o0_op1_CRn_CRm_op2
argFromString "arg_Vd_16_5__B_1__H_2__S_4__D_8"
  = Just Arg_Vd_16_5__B_1__H_2__S_4__D_8
argFromString "arg_Vd_19_4__B_1__H_2__S_4"
  = Just Arg_Vd_19_4__B_1__H_2__S_4
argFromString "arg_Vd_19_4__B_1__H_2__S_4__D_8"
  = Just Arg_Vd_19_4__B_1__H_2__S_4__D_8
argFromString "arg_Vd_19_4__D_8" = Just Arg_Vd_19_4__D_8
argFromString "arg_Vd_19_4__S_4__D_8" = Just Arg_Vd_19_4__S_4__D_8
argFromString "arg_Vd_22_1__S_0" = Just Arg_Vd_22_1__S_0
argFromString "arg_Vd_22_1__S_0__D_1" = Just Arg_Vd_22_1__S_0__D_1
argFromString "arg_Vd_22_1__S_1" = Just Arg_Vd_22_1__S_1
argFromString "arg_Vd_22_2__B_0__H_1__S_2"
  = Just Arg_Vd_22_2__B_0__H_1__S_2
argFromString "arg_Vd_22_2__B_0__H_1__S_2__D_3"
  = Just Arg_Vd_22_2__B_0__H_1__S_2__D_3
argFromString "arg_Vd_22_2__D_3" = Just Arg_Vd_22_2__D_3
argFromString "arg_Vd_22_2__H_0__S_1__D_2"
  = Just Arg_Vd_22_2__H_0__S_1__D_2
argFromString "arg_Vd_22_2__H_1__S_2" = Just Arg_Vd_22_2__H_1__S_2
argFromString "arg_Vd_22_2__S_1__D_2" = Just Arg_Vd_22_2__S_1__D_2
argFromString "arg_Vd_arrangement_16B"
  = Just Arg_Vd_arrangement_16B
argFromString "arg_Vd_arrangement_2D" = Just Arg_Vd_arrangement_2D
argFromString "arg_Vd_arrangement_4S" = Just Arg_Vd_arrangement_4S
argFromString "arg_Vd_arrangement_D_index__1"
  = Just Arg_Vd_arrangement_D_index__1
argFromString
  "arg_Vd_arrangement_imm5___B_1__H_2__S_4__D_8_index__imm5__imm5lt41gt_1__imm5lt42gt_2__imm5lt43gt_4__imm5lt4gt_8_1"
  = Just
      Arg_Vd_arrangement_imm5___B_1__H_2__S_4__D_8_index__imm5__imm5lt41gt_1__imm5lt42gt_2__imm5lt43gt_4__imm5lt4gt_8_1
argFromString
  "arg_Vd_arrangement_imm5_Q___8B_10__16B_11__4H_20__8H_21__2S_40__4S_41__2D_81"
  = Just
      Arg_Vd_arrangement_imm5_Q___8B_10__16B_11__4H_20__8H_21__2S_40__4S_41__2D_81
argFromString
  "arg_Vd_arrangement_immh_Q___SEEAdvancedSIMDmodifiedimmediate_00__2S_40__4S_41__2D_81"
  = Just
      Arg_Vd_arrangement_immh_Q___SEEAdvancedSIMDmodifiedimmediate_00__2S_40__4S_41__2D_81
argFromString
  "arg_Vd_arrangement_immh_Q___SEEAdvancedSIMDmodifiedimmediate_00__8B_10__16B_11__4H_20__8H_21__2S_40__4S_41"
  = Just
      Arg_Vd_arrangement_immh_Q___SEEAdvancedSIMDmodifiedimmediate_00__8B_10__16B_11__4H_20__8H_21__2S_40__4S_41
argFromString
  "arg_Vd_arrangement_immh_Q___SEEAdvancedSIMDmodifiedimmediate_00__8B_10__16B_11__4H_20__8H_21__2S_40__4S_41__2D_81"
  = Just
      Arg_Vd_arrangement_immh_Q___SEEAdvancedSIMDmodifiedimmediate_00__8B_10__16B_11__4H_20__8H_21__2S_40__4S_41__2D_81
argFromString
  "arg_Vd_arrangement_immh___SEEAdvancedSIMDmodifiedimmediate_0__8H_1__4S_2__2D_4"
  = Just
      Arg_Vd_arrangement_immh___SEEAdvancedSIMDmodifiedimmediate_0__8H_1__4S_2__2D_4
argFromString "arg_Vd_arrangement_Q___2S_0__4S_1"
  = Just Arg_Vd_arrangement_Q___2S_0__4S_1
argFromString "arg_Vd_arrangement_Q___4H_0__8H_1"
  = Just Arg_Vd_arrangement_Q___4H_0__8H_1
argFromString "arg_Vd_arrangement_Q___8B_0__16B_1"
  = Just Arg_Vd_arrangement_Q___8B_0__16B_1
argFromString "arg_Vd_arrangement_Q_sz___2S_00__4S_10__2D_11"
  = Just Arg_Vd_arrangement_Q_sz___2S_00__4S_10__2D_11
argFromString "arg_Vd_arrangement_size___4S_1__2D_2"
  = Just Arg_Vd_arrangement_size___4S_1__2D_2
argFromString "arg_Vd_arrangement_size___8H_0__1Q_3"
  = Just Arg_Vd_arrangement_size___8H_0__1Q_3
argFromString "arg_Vd_arrangement_size___8H_0__4S_1__2D_2"
  = Just Arg_Vd_arrangement_size___8H_0__4S_1__2D_2
argFromString
  "arg_Vd_arrangement_size_Q___4H_00__8H_01__2S_10__4S_11__1D_20__2D_21"
  = Just
      Arg_Vd_arrangement_size_Q___4H_00__8H_01__2S_10__4S_11__1D_20__2D_21
argFromString
  "arg_Vd_arrangement_size_Q___4H_10__8H_11__2S_20__4S_21"
  = Just Arg_Vd_arrangement_size_Q___4H_10__8H_11__2S_20__4S_21
argFromString "arg_Vd_arrangement_size_Q___8B_00__16B_01"
  = Just Arg_Vd_arrangement_size_Q___8B_00__16B_01
argFromString
  "arg_Vd_arrangement_size_Q___8B_00__16B_01__4H_10__8H_11"
  = Just Arg_Vd_arrangement_size_Q___8B_00__16B_01__4H_10__8H_11
argFromString
  "arg_Vd_arrangement_size_Q___8B_00__16B_01__4H_10__8H_11__2S_20__4S_21"
  = Just
      Arg_Vd_arrangement_size_Q___8B_00__16B_01__4H_10__8H_11__2S_20__4S_21
argFromString
  "arg_Vd_arrangement_size_Q___8B_00__16B_01__4H_10__8H_11__2S_20__4S_21__2D_31"
  = Just
      Arg_Vd_arrangement_size_Q___8B_00__16B_01__4H_10__8H_11__2S_20__4S_21__2D_31
argFromString "arg_Vd_arrangement_sz___4S_0__2D_1"
  = Just Arg_Vd_arrangement_sz___4S_0__2D_1
argFromString "arg_Vd_arrangement_sz_Q___2S_00__4S_01"
  = Just Arg_Vd_arrangement_sz_Q___2S_00__4S_01
argFromString "arg_Vd_arrangement_sz_Q___2S_00__4S_01__2D_11"
  = Just Arg_Vd_arrangement_sz_Q___2S_00__4S_01__2D_11
argFromString "arg_Vd_arrangement_sz_Q___2S_10__4S_11"
  = Just Arg_Vd_arrangement_sz_Q___2S_10__4S_11
argFromString
  "arg_Vd_arrangement_sz_Q___4H_00__8H_01__2S_10__4S_11"
  = Just Arg_Vd_arrangement_sz_Q___4H_00__8H_01__2S_10__4S_11
argFromString "arg_Vm_22_1__S_0__D_1" = Just Arg_Vm_22_1__S_0__D_1
argFromString "arg_Vm_22_2__B_0__H_1__S_2__D_3"
  = Just Arg_Vm_22_2__B_0__H_1__S_2__D_3
argFromString "arg_Vm_22_2__D_3" = Just Arg_Vm_22_2__D_3
argFromString "arg_Vm_22_2__H_1__S_2" = Just Arg_Vm_22_2__H_1__S_2
argFromString "arg_Vm_arrangement_4S" = Just Arg_Vm_arrangement_4S
argFromString "arg_Vm_arrangement_Q___8B_0__16B_1"
  = Just Arg_Vm_arrangement_Q___8B_0__16B_1
argFromString "arg_Vm_arrangement_size___8H_0__4S_1__2D_2"
  = Just Arg_Vm_arrangement_size___8H_0__4S_1__2D_2
argFromString
  "arg_Vm_arrangement_size___H_1__S_2_index__size_L_H_M__HLM_1__HL_2_1"
  = Just
      Arg_Vm_arrangement_size___H_1__S_2_index__size_L_H_M__HLM_1__HL_2_1
argFromString
  "arg_Vm_arrangement_size_Q___4H_10__8H_11__2S_20__4S_21"
  = Just Arg_Vm_arrangement_size_Q___4H_10__8H_11__2S_20__4S_21
argFromString "arg_Vm_arrangement_size_Q___8B_00__16B_01"
  = Just Arg_Vm_arrangement_size_Q___8B_00__16B_01
argFromString
  "arg_Vm_arrangement_size_Q___8B_00__16B_01__1D_30__2D_31"
  = Just Arg_Vm_arrangement_size_Q___8B_00__16B_01__1D_30__2D_31
argFromString
  "arg_Vm_arrangement_size_Q___8B_00__16B_01__4H_10__8H_11__2S_20__4S_21"
  = Just
      Arg_Vm_arrangement_size_Q___8B_00__16B_01__4H_10__8H_11__2S_20__4S_21
argFromString
  "arg_Vm_arrangement_size_Q___8B_00__16B_01__4H_10__8H_11__2S_20__4S_21__2D_31"
  = Just
      Arg_Vm_arrangement_size_Q___8B_00__16B_01__4H_10__8H_11__2S_20__4S_21__2D_31
argFromString "arg_Vm_arrangement_sz_Q___2S_00__4S_01__2D_11"
  = Just Arg_Vm_arrangement_sz_Q___2S_00__4S_01__2D_11
argFromString
  "arg_Vm_arrangement_sz___S_0__D_1_index__sz_L_H__HL_00__H_10_1"
  = Just
      Arg_Vm_arrangement_sz___S_0__D_1_index__sz_L_H__HL_00__H_10_1
argFromString "arg_Vn_19_4__B_1__H_2__S_4__D_8"
  = Just Arg_Vn_19_4__B_1__H_2__S_4__D_8
argFromString "arg_Vn_19_4__D_8" = Just Arg_Vn_19_4__D_8
argFromString "arg_Vn_19_4__H_1__S_2__D_4"
  = Just Arg_Vn_19_4__H_1__S_2__D_4
argFromString "arg_Vn_19_4__S_4__D_8" = Just Arg_Vn_19_4__S_4__D_8
argFromString "arg_Vn_1_arrangement_16B"
  = Just Arg_Vn_1_arrangement_16B
argFromString "arg_Vn_22_1__D_1" = Just Arg_Vn_22_1__D_1
argFromString "arg_Vn_22_1__S_0__D_1" = Just Arg_Vn_22_1__S_0__D_1
argFromString "arg_Vn_22_2__B_0__H_1__S_2__D_3"
  = Just Arg_Vn_22_2__B_0__H_1__S_2__D_3
argFromString "arg_Vn_22_2__D_3" = Just Arg_Vn_22_2__D_3
argFromString "arg_Vn_22_2__H_0__S_1__D_2"
  = Just Arg_Vn_22_2__H_0__S_1__D_2
argFromString "arg_Vn_22_2__H_1__S_2" = Just Arg_Vn_22_2__H_1__S_2
argFromString "arg_Vn_2_arrangement_16B"
  = Just Arg_Vn_2_arrangement_16B
argFromString "arg_Vn_3_arrangement_16B"
  = Just Arg_Vn_3_arrangement_16B
argFromString "arg_Vn_4_arrangement_16B"
  = Just Arg_Vn_4_arrangement_16B
argFromString "arg_Vn_arrangement_16B"
  = Just Arg_Vn_arrangement_16B
argFromString "arg_Vn_arrangement_4S" = Just Arg_Vn_arrangement_4S
argFromString "arg_Vn_arrangement_D_index__1"
  = Just Arg_Vn_arrangement_D_index__1
argFromString "arg_Vn_arrangement_D_index__imm5_1"
  = Just Arg_Vn_arrangement_D_index__imm5_1
argFromString
  "arg_Vn_arrangement_imm5___B_1__H_2_index__imm5__imm5lt41gt_1__imm5lt42gt_2_1"
  = Just
      Arg_Vn_arrangement_imm5___B_1__H_2_index__imm5__imm5lt41gt_1__imm5lt42gt_2_1
argFromString
  "arg_Vn_arrangement_imm5___B_1__H_2__S_4__D_8_index__imm5_imm4__imm4lt30gt_1__imm4lt31gt_2__imm4lt32gt_4__imm4lt3gt_8_1"
  = Just
      Arg_Vn_arrangement_imm5___B_1__H_2__S_4__D_8_index__imm5_imm4__imm4lt30gt_1__imm4lt31gt_2__imm4lt32gt_4__imm4lt3gt_8_1
argFromString
  "arg_Vn_arrangement_imm5___B_1__H_2__S_4__D_8_index__imm5__imm5lt41gt_1__imm5lt42gt_2__imm5lt43gt_4__imm5lt4gt_8_1"
  = Just
      Arg_Vn_arrangement_imm5___B_1__H_2__S_4__D_8_index__imm5__imm5lt41gt_1__imm5lt42gt_2__imm5lt43gt_4__imm5lt4gt_8_1
argFromString
  "arg_Vn_arrangement_imm5___B_1__H_2__S_4_index__imm5__imm5lt41gt_1__imm5lt42gt_2__imm5lt43gt_4_1"
  = Just
      Arg_Vn_arrangement_imm5___B_1__H_2__S_4_index__imm5__imm5lt41gt_1__imm5lt42gt_2__imm5lt43gt_4_1
argFromString "arg_Vn_arrangement_imm5___D_8_index__imm5_1"
  = Just Arg_Vn_arrangement_imm5___D_8_index__imm5_1
argFromString
  "arg_Vn_arrangement_immh_Q___SEEAdvancedSIMDmodifiedimmediate_00__2S_40__4S_41__2D_81"
  = Just
      Arg_Vn_arrangement_immh_Q___SEEAdvancedSIMDmodifiedimmediate_00__2S_40__4S_41__2D_81
argFromString
  "arg_Vn_arrangement_immh_Q___SEEAdvancedSIMDmodifiedimmediate_00__8B_10__16B_11__4H_20__8H_21__2S_40__4S_41"
  = Just
      Arg_Vn_arrangement_immh_Q___SEEAdvancedSIMDmodifiedimmediate_00__8B_10__16B_11__4H_20__8H_21__2S_40__4S_41
argFromString
  "arg_Vn_arrangement_immh_Q___SEEAdvancedSIMDmodifiedimmediate_00__8B_10__16B_11__4H_20__8H_21__2S_40__4S_41__2D_81"
  = Just
      Arg_Vn_arrangement_immh_Q___SEEAdvancedSIMDmodifiedimmediate_00__8B_10__16B_11__4H_20__8H_21__2S_40__4S_41__2D_81
argFromString
  "arg_Vn_arrangement_immh___SEEAdvancedSIMDmodifiedimmediate_0__8H_1__4S_2__2D_4"
  = Just
      Arg_Vn_arrangement_immh___SEEAdvancedSIMDmodifiedimmediate_0__8H_1__4S_2__2D_4
argFromString "arg_Vn_arrangement_Q___8B_0__16B_1"
  = Just Arg_Vn_arrangement_Q___8B_0__16B_1
argFromString "arg_Vn_arrangement_Q_sz___2S_00__4S_10__2D_11"
  = Just Arg_Vn_arrangement_Q_sz___2S_00__4S_10__2D_11
argFromString "arg_Vn_arrangement_Q_sz___4S_10"
  = Just Arg_Vn_arrangement_Q_sz___4S_10
argFromString
  "arg_Vn_arrangement_S_index__imm5__imm5lt41gt_1__imm5lt42gt_2__imm5lt43gt_4_1"
  = Just
      Arg_Vn_arrangement_S_index__imm5__imm5lt41gt_1__imm5lt42gt_2__imm5lt43gt_4_1
argFromString "arg_Vn_arrangement_size___2D_3"
  = Just Arg_Vn_arrangement_size___2D_3
argFromString "arg_Vn_arrangement_size___8H_0__4S_1__2D_2"
  = Just Arg_Vn_arrangement_size___8H_0__4S_1__2D_2
argFromString
  "arg_Vn_arrangement_size_Q___4H_10__8H_11__2S_20__4S_21"
  = Just Arg_Vn_arrangement_size_Q___4H_10__8H_11__2S_20__4S_21
argFromString "arg_Vn_arrangement_size_Q___8B_00__16B_01"
  = Just Arg_Vn_arrangement_size_Q___8B_00__16B_01
argFromString
  "arg_Vn_arrangement_size_Q___8B_00__16B_01__1D_30__2D_31"
  = Just Arg_Vn_arrangement_size_Q___8B_00__16B_01__1D_30__2D_31
argFromString
  "arg_Vn_arrangement_size_Q___8B_00__16B_01__4H_10__8H_11"
  = Just Arg_Vn_arrangement_size_Q___8B_00__16B_01__4H_10__8H_11
argFromString
  "arg_Vn_arrangement_size_Q___8B_00__16B_01__4H_10__8H_11__2S_20__4S_21"
  = Just
      Arg_Vn_arrangement_size_Q___8B_00__16B_01__4H_10__8H_11__2S_20__4S_21
argFromString
  "arg_Vn_arrangement_size_Q___8B_00__16B_01__4H_10__8H_11__2S_20__4S_21__2D_31"
  = Just
      Arg_Vn_arrangement_size_Q___8B_00__16B_01__4H_10__8H_11__2S_20__4S_21__2D_31
argFromString
  "arg_Vn_arrangement_size_Q___8B_00__16B_01__4H_10__8H_11__4S_21"
  = Just
      Arg_Vn_arrangement_size_Q___8B_00__16B_01__4H_10__8H_11__4S_21
argFromString "arg_Vn_arrangement_sz___2D_1"
  = Just Arg_Vn_arrangement_sz___2D_1
argFromString "arg_Vn_arrangement_sz___2S_0__2D_1"
  = Just Arg_Vn_arrangement_sz___2S_0__2D_1
argFromString "arg_Vn_arrangement_sz___4S_0__2D_1"
  = Just Arg_Vn_arrangement_sz___4S_0__2D_1
argFromString "arg_Vn_arrangement_sz_Q___2S_00__4S_01"
  = Just Arg_Vn_arrangement_sz_Q___2S_00__4S_01
argFromString "arg_Vn_arrangement_sz_Q___2S_00__4S_01__2D_11"
  = Just Arg_Vn_arrangement_sz_Q___2S_00__4S_01__2D_11
argFromString
  "arg_Vn_arrangement_sz_Q___4H_00__8H_01__2S_10__4S_11"
  = Just Arg_Vn_arrangement_sz_Q___4H_00__8H_01__2S_10__4S_11
argFromString "arg_Vt_1_arrangement_B_index__Q_S_size_1"
  = Just Arg_Vt_1_arrangement_B_index__Q_S_size_1
argFromString "arg_Vt_1_arrangement_D_index__Q_1"
  = Just Arg_Vt_1_arrangement_D_index__Q_1
argFromString "arg_Vt_1_arrangement_H_index__Q_S_size_1"
  = Just Arg_Vt_1_arrangement_H_index__Q_S_size_1
argFromString "arg_Vt_1_arrangement_S_index__Q_S_1"
  = Just Arg_Vt_1_arrangement_S_index__Q_S_1
argFromString
  "arg_Vt_1_arrangement_size_Q___8B_00__16B_01__4H_10__8H_11__2S_20__4S_21__1D_30__2D_31"
  = Just
      Arg_Vt_1_arrangement_size_Q___8B_00__16B_01__4H_10__8H_11__2S_20__4S_21__1D_30__2D_31
argFromString "arg_Vt_2_arrangement_B_index__Q_S_size_1"
  = Just Arg_Vt_2_arrangement_B_index__Q_S_size_1
argFromString "arg_Vt_2_arrangement_D_index__Q_1"
  = Just Arg_Vt_2_arrangement_D_index__Q_1
argFromString "arg_Vt_2_arrangement_H_index__Q_S_size_1"
  = Just Arg_Vt_2_arrangement_H_index__Q_S_size_1
argFromString "arg_Vt_2_arrangement_S_index__Q_S_1"
  = Just Arg_Vt_2_arrangement_S_index__Q_S_1
argFromString
  "arg_Vt_2_arrangement_size_Q___8B_00__16B_01__4H_10__8H_11__2S_20__4S_21__1D_30__2D_31"
  = Just
      Arg_Vt_2_arrangement_size_Q___8B_00__16B_01__4H_10__8H_11__2S_20__4S_21__1D_30__2D_31
argFromString
  "arg_Vt_2_arrangement_size_Q___8B_00__16B_01__4H_10__8H_11__2S_20__4S_21__2D_31"
  = Just
      Arg_Vt_2_arrangement_size_Q___8B_00__16B_01__4H_10__8H_11__2S_20__4S_21__2D_31
argFromString "arg_Vt_3_arrangement_B_index__Q_S_size_1"
  = Just Arg_Vt_3_arrangement_B_index__Q_S_size_1
argFromString "arg_Vt_3_arrangement_D_index__Q_1"
  = Just Arg_Vt_3_arrangement_D_index__Q_1
argFromString "arg_Vt_3_arrangement_H_index__Q_S_size_1"
  = Just Arg_Vt_3_arrangement_H_index__Q_S_size_1
argFromString "arg_Vt_3_arrangement_S_index__Q_S_1"
  = Just Arg_Vt_3_arrangement_S_index__Q_S_1
argFromString
  "arg_Vt_3_arrangement_size_Q___8B_00__16B_01__4H_10__8H_11__2S_20__4S_21__1D_30__2D_31"
  = Just
      Arg_Vt_3_arrangement_size_Q___8B_00__16B_01__4H_10__8H_11__2S_20__4S_21__1D_30__2D_31
argFromString
  "arg_Vt_3_arrangement_size_Q___8B_00__16B_01__4H_10__8H_11__2S_20__4S_21__2D_31"
  = Just
      Arg_Vt_3_arrangement_size_Q___8B_00__16B_01__4H_10__8H_11__2S_20__4S_21__2D_31
argFromString "arg_Vt_4_arrangement_B_index__Q_S_size_1"
  = Just Arg_Vt_4_arrangement_B_index__Q_S_size_1
argFromString "arg_Vt_4_arrangement_D_index__Q_1"
  = Just Arg_Vt_4_arrangement_D_index__Q_1
argFromString "arg_Vt_4_arrangement_H_index__Q_S_size_1"
  = Just Arg_Vt_4_arrangement_H_index__Q_S_size_1
argFromString "arg_Vt_4_arrangement_S_index__Q_S_1"
  = Just Arg_Vt_4_arrangement_S_index__Q_S_1
argFromString
  "arg_Vt_4_arrangement_size_Q___8B_00__16B_01__4H_10__8H_11__2S_20__4S_21__1D_30__2D_31"
  = Just
      Arg_Vt_4_arrangement_size_Q___8B_00__16B_01__4H_10__8H_11__2S_20__4S_21__1D_30__2D_31
argFromString
  "arg_Vt_4_arrangement_size_Q___8B_00__16B_01__4H_10__8H_11__2S_20__4S_21__2D_31"
  = Just
      Arg_Vt_4_arrangement_size_Q___8B_00__16B_01__4H_10__8H_11__2S_20__4S_21__2D_31
argFromString "arg_Wa" = Just Arg_Wa
argFromString "arg_Wd" = Just Arg_Wd
argFromString "arg_Wds" = Just Arg_Wds
argFromString "arg_Wm" = Just Arg_Wm
argFromString
  "arg_Wm_extend__UXTB_0__UXTH_1__LSL_UXTW_2__UXTX_3__SXTB_4__SXTH_5__SXTW_6__SXTX_7__0_4"
  = Just
      Arg_Wm_extend__UXTB_0__UXTH_1__LSL_UXTW_2__UXTX_3__SXTB_4__SXTH_5__SXTW_6__SXTX_7__0_4
argFromString "arg_Wm_shift__LSL_0__LSR_1__ASR_2__0_31"
  = Just Arg_Wm_shift__LSL_0__LSR_1__ASR_2__0_31
argFromString "arg_Wm_shift__LSL_0__LSR_1__ASR_2__ROR_3__0_31"
  = Just Arg_Wm_shift__LSL_0__LSR_1__ASR_2__ROR_3__0_31
argFromString "arg_Wn" = Just Arg_Wn
argFromString "arg_Wns" = Just Arg_Wns
argFromString "arg_Ws" = Just Arg_Ws
argFromString "arg_Wt" = Just Arg_Wt
argFromString "arg_Wt2" = Just Arg_Wt2
argFromString "arg_Xa" = Just Arg_Xa
argFromString "arg_Xd" = Just Arg_Xd
argFromString "arg_Xds" = Just Arg_Xds
argFromString "arg_Xm" = Just Arg_Xm
argFromString "arg_Xm_shift__LSL_0__LSR_1__ASR_2__0_63"
  = Just Arg_Xm_shift__LSL_0__LSR_1__ASR_2__0_63
argFromString "arg_Xm_shift__LSL_0__LSR_1__ASR_2__ROR_3__0_63"
  = Just Arg_Xm_shift__LSL_0__LSR_1__ASR_2__ROR_3__0_63
argFromString "arg_Xn" = Just Arg_Xn
argFromString "arg_Xns" = Just Arg_Xns
argFromString "arg_Xns_mem" = Just Arg_Xns_mem
argFromString
  "arg_Xns_mem_extend_m__UXTW_2__LSL_3__SXTW_6__SXTX_7__0_0__1_1"
  = Just
      Arg_Xns_mem_extend_m__UXTW_2__LSL_3__SXTW_6__SXTX_7__0_0__1_1
argFromString
  "arg_Xns_mem_extend_m__UXTW_2__LSL_3__SXTW_6__SXTX_7__0_0__2_1"
  = Just
      Arg_Xns_mem_extend_m__UXTW_2__LSL_3__SXTW_6__SXTX_7__0_0__2_1
argFromString
  "arg_Xns_mem_extend_m__UXTW_2__LSL_3__SXTW_6__SXTX_7__0_0__3_1"
  = Just
      Arg_Xns_mem_extend_m__UXTW_2__LSL_3__SXTW_6__SXTX_7__0_0__3_1
argFromString
  "arg_Xns_mem_extend_m__UXTW_2__LSL_3__SXTW_6__SXTX_7__0_0__4_1"
  = Just
      Arg_Xns_mem_extend_m__UXTW_2__LSL_3__SXTW_6__SXTX_7__0_0__4_1
argFromString
  "arg_Xns_mem_extend_m__UXTW_2__LSL_3__SXTW_6__SXTX_7__absent_0__0_1"
  = Just
      Arg_Xns_mem_extend_m__UXTW_2__LSL_3__SXTW_6__SXTX_7__absent_0__0_1
argFromString "arg_Xns_mem_offset" = Just Arg_Xns_mem_offset
argFromString "arg_Xns_mem_optional_imm12_16_unsigned"
  = Just Arg_Xns_mem_optional_imm12_16_unsigned
argFromString "arg_Xns_mem_optional_imm12_1_unsigned"
  = Just Arg_Xns_mem_optional_imm12_1_unsigned
argFromString "arg_Xns_mem_optional_imm12_2_unsigned"
  = Just Arg_Xns_mem_optional_imm12_2_unsigned
argFromString "arg_Xns_mem_optional_imm12_4_unsigned"
  = Just Arg_Xns_mem_optional_imm12_4_unsigned
argFromString "arg_Xns_mem_optional_imm12_8_unsigned"
  = Just Arg_Xns_mem_optional_imm12_8_unsigned
argFromString "arg_Xns_mem_optional_imm7_16_signed"
  = Just Arg_Xns_mem_optional_imm7_16_signed
argFromString "arg_Xns_mem_optional_imm7_4_signed"
  = Just Arg_Xns_mem_optional_imm7_4_signed
argFromString "arg_Xns_mem_optional_imm7_8_signed"
  = Just Arg_Xns_mem_optional_imm7_8_signed
argFromString "arg_Xns_mem_optional_imm9_1_signed"
  = Just Arg_Xns_mem_optional_imm9_1_signed
argFromString "arg_Xns_mem_post_fixedimm_1"
  = Just Arg_Xns_mem_post_fixedimm_1
argFromString "arg_Xns_mem_post_fixedimm_12"
  = Just Arg_Xns_mem_post_fixedimm_12
argFromString "arg_Xns_mem_post_fixedimm_16"
  = Just Arg_Xns_mem_post_fixedimm_16
argFromString "arg_Xns_mem_post_fixedimm_2"
  = Just Arg_Xns_mem_post_fixedimm_2
argFromString "arg_Xns_mem_post_fixedimm_24"
  = Just Arg_Xns_mem_post_fixedimm_24
argFromString "arg_Xns_mem_post_fixedimm_3"
  = Just Arg_Xns_mem_post_fixedimm_3
argFromString "arg_Xns_mem_post_fixedimm_32"
  = Just Arg_Xns_mem_post_fixedimm_32
argFromString "arg_Xns_mem_post_fixedimm_4"
  = Just Arg_Xns_mem_post_fixedimm_4
argFromString "arg_Xns_mem_post_fixedimm_6"
  = Just Arg_Xns_mem_post_fixedimm_6
argFromString "arg_Xns_mem_post_fixedimm_8"
  = Just Arg_Xns_mem_post_fixedimm_8
argFromString "arg_Xns_mem_post_imm7_16_signed"
  = Just Arg_Xns_mem_post_imm7_16_signed
argFromString "arg_Xns_mem_post_imm7_4_signed"
  = Just Arg_Xns_mem_post_imm7_4_signed
argFromString "arg_Xns_mem_post_imm7_8_signed"
  = Just Arg_Xns_mem_post_imm7_8_signed
argFromString "arg_Xns_mem_post_imm9_1_signed"
  = Just Arg_Xns_mem_post_imm9_1_signed
argFromString "arg_Xns_mem_post_Q__16_0__32_1"
  = Just Arg_Xns_mem_post_Q__16_0__32_1
argFromString "arg_Xns_mem_post_Q__24_0__48_1"
  = Just Arg_Xns_mem_post_Q__24_0__48_1
argFromString "arg_Xns_mem_post_Q__32_0__64_1"
  = Just Arg_Xns_mem_post_Q__32_0__64_1
argFromString "arg_Xns_mem_post_Q__8_0__16_1"
  = Just Arg_Xns_mem_post_Q__8_0__16_1
argFromString "arg_Xns_mem_post_size__1_0__2_1__4_2__8_3"
  = Just Arg_Xns_mem_post_size__1_0__2_1__4_2__8_3
argFromString "arg_Xns_mem_post_size__2_0__4_1__8_2__16_3"
  = Just Arg_Xns_mem_post_size__2_0__4_1__8_2__16_3
argFromString "arg_Xns_mem_post_size__3_0__6_1__12_2__24_3"
  = Just Arg_Xns_mem_post_size__3_0__6_1__12_2__24_3
argFromString "arg_Xns_mem_post_size__4_0__8_1__16_2__32_3"
  = Just Arg_Xns_mem_post_size__4_0__8_1__16_2__32_3
argFromString "arg_Xns_mem_post_Xm" = Just Arg_Xns_mem_post_Xm
argFromString "arg_Xns_mem_wb_imm7_16_signed"
  = Just Arg_Xns_mem_wb_imm7_16_signed
argFromString "arg_Xns_mem_wb_imm7_4_signed"
  = Just Arg_Xns_mem_wb_imm7_4_signed
argFromString "arg_Xns_mem_wb_imm7_8_signed"
  = Just Arg_Xns_mem_wb_imm7_8_signed
argFromString "arg_Xns_mem_wb_imm9_1_signed"
  = Just Arg_Xns_mem_wb_imm9_1_signed
argFromString "arg_Xs" = Just Arg_Xs
argFromString "arg_Xt" = Just Arg_Xt
argFromString "arg_Xt2" = Just Arg_Xt2
argFromString _ = Nothing

data Predictor = Predictor_at_sys_cr_system
               | Predictor_bfi_bfm_32m_bitfield
               | Predictor_bfi_bfm_64m_bitfield
               | Predictor_bfxil_bfm_32m_bitfield
               | Predictor_bfxil_bfm_64m_bitfield
               | Predictor_cinc_csinc_32_condsel
               | Predictor_cinc_csinc_64_condsel
               | Predictor_cinv_csinv_32_condsel
               | Predictor_cinv_csinv_64_condsel
               | Predictor_cneg_csneg_32_condsel
               | Predictor_cneg_csneg_64_condsel
               | Predictor_csinc_general
               | Predictor_csinv_general
               | Predictor_dc_sys_cr_system
               | Predictor_ic_sys_cr_system
               | Predictor_lsl_ubfm_32m_bitfield
               | Predictor_lsl_ubfm_64m_bitfield
               | Predictor_mov_orr_32_log_imm
               | Predictor_mov_orr_64_log_imm
               | Predictor_mov_movn_32_movewide
               | Predictor_mov_movn_64_movewide
               | Predictor_mov_add_32_addsub_imm
               | Predictor_mov_add_64_addsub_imm
               | Predictor_mov_movz_32_movewide
               | Predictor_mov_movz_64_movewide
               | Predictor_ror_extr_32_extract
               | Predictor_ror_extr_64_extract
               | Predictor_sbfiz_sbfm_32m_bitfield
               | Predictor_sbfiz_sbfm_64m_bitfield
               | Predictor_sbfx_sbfm_32m_bitfield
               | Predictor_sbfx_sbfm_64m_bitfield
               | Predictor_tlbi_sys_cr_system
               | Predictor_ubfiz_ubfm_32m_bitfield
               | Predictor_ubfiz_ubfm_64m_bitfield
               | Predictor_ubfx_ubfm_32m_bitfield
               | Predictor_ubfx_ubfm_64m_bitfield
               | Predictor_fcvtzs_asisdshf_c
               | Predictor_fcvtzs_asimdshf_c
               | Predictor_fcvtzu_asisdshf_c
               | Predictor_fcvtzu_asimdshf_c
               | Predictor_mov_umov_asimdins_w_w
               | Predictor_mov_umov_asimdins_x_x
               | Predictor_mov_orr_asimdsame_only
               | Predictor_rshrn_asimdshf_n
               | Predictor_scvtf_asisdshf_c
               | Predictor_scvtf_asimdshf_c
               | Predictor_shl_asisdshf_r
               | Predictor_shl_asimdshf_r
               | Predictor_shrn_asimdshf_n
               | Predictor_sli_asisdshf_r
               | Predictor_sli_asimdshf_r
               | Predictor_sqrshrn_asisdshf_n
               | Predictor_sqrshrn_asimdshf_n
               | Predictor_sqrshrun_asisdshf_n
               | Predictor_sqrshrun_asimdshf_n
               | Predictor_sqshl_asisdshf_r
               | Predictor_sqshl_asimdshf_r
               | Predictor_sqshlu_asisdshf_r
               | Predictor_sqshlu_asimdshf_r
               | Predictor_sqshrn_asisdshf_n
               | Predictor_sqshrn_asimdshf_n
               | Predictor_sqshrun_asisdshf_n
               | Predictor_sqshrun_asimdshf_n
               | Predictor_sri_asisdshf_r
               | Predictor_sri_asimdshf_r
               | Predictor_srshr_asisdshf_r
               | Predictor_srshr_asimdshf_r
               | Predictor_srsra_asisdshf_r
               | Predictor_srsra_asimdshf_r
               | Predictor_sshll_asimdshf_l
               | Predictor_sshr_asisdshf_r
               | Predictor_sshr_asimdshf_r
               | Predictor_ssra_asisdshf_r
               | Predictor_ssra_asimdshf_r
               | Predictor_sxtl_sshll_asimdshf_l
               | Predictor_ucvtf_asisdshf_c
               | Predictor_ucvtf_asimdshf_c
               | Predictor_uqrshrn_asisdshf_n
               | Predictor_uqrshrn_asimdshf_n
               | Predictor_uqshl_asisdshf_r
               | Predictor_uqshl_asimdshf_r
               | Predictor_uqshrn_asisdshf_n
               | Predictor_uqshrn_asimdshf_n
               | Predictor_urshr_asisdshf_r
               | Predictor_urshr_asimdshf_r
               | Predictor_ursra_asisdshf_r
               | Predictor_ursra_asimdshf_r
               | Predictor_ushll_asimdshf_l
               | Predictor_ushr_asisdshf_r
               | Predictor_ushr_asimdshf_r
               | Predictor_usra_asisdshf_r
               | Predictor_usra_asimdshf_r
               | Predictor_uxtl_ushll_asimdshf_l
               deriving (Eq, Read, Show, Enum)

predictorFromString :: String -> Maybe Predictor
predictorFromString "at_sys_cr_system_cond"
  = Just Predictor_at_sys_cr_system
predictorFromString "bfi_bfm_32m_bitfield_cond"
  = Just Predictor_bfi_bfm_32m_bitfield
predictorFromString "bfi_bfm_64m_bitfield_cond"
  = Just Predictor_bfi_bfm_64m_bitfield
predictorFromString "bfxil_bfm_32m_bitfield_cond"
  = Just Predictor_bfxil_bfm_32m_bitfield
predictorFromString "bfxil_bfm_64m_bitfield_cond"
  = Just Predictor_bfxil_bfm_64m_bitfield
predictorFromString "cinc_csinc_32_condsel_cond"
  = Just Predictor_cinc_csinc_32_condsel
predictorFromString "cinc_csinc_64_condsel_cond"
  = Just Predictor_cinc_csinc_64_condsel
predictorFromString "cinv_csinv_32_condsel_cond"
  = Just Predictor_cinv_csinv_32_condsel
predictorFromString "cinv_csinv_64_condsel_cond"
  = Just Predictor_cinv_csinv_64_condsel
predictorFromString "cneg_csneg_32_condsel_cond"
  = Just Predictor_cneg_csneg_32_condsel
predictorFromString "cneg_csneg_64_condsel_cond"
  = Just Predictor_cneg_csneg_64_condsel
predictorFromString "csinc_general_cond"
  = Just Predictor_csinc_general
predictorFromString "csinv_general_cond"
  = Just Predictor_csinv_general
predictorFromString "dc_sys_cr_system_cond"
  = Just Predictor_dc_sys_cr_system
predictorFromString "ic_sys_cr_system_cond"
  = Just Predictor_ic_sys_cr_system
predictorFromString "lsl_ubfm_32m_bitfield_cond"
  = Just Predictor_lsl_ubfm_32m_bitfield
predictorFromString "lsl_ubfm_64m_bitfield_cond"
  = Just Predictor_lsl_ubfm_64m_bitfield
predictorFromString "mov_orr_32_log_imm_cond"
  = Just Predictor_mov_orr_32_log_imm
predictorFromString "mov_orr_64_log_imm_cond"
  = Just Predictor_mov_orr_64_log_imm
predictorFromString "mov_movn_32_movewide_cond"
  = Just Predictor_mov_movn_32_movewide
predictorFromString "mov_movn_64_movewide_cond"
  = Just Predictor_mov_movn_64_movewide
predictorFromString "mov_add_32_addsub_imm_cond"
  = Just Predictor_mov_add_32_addsub_imm
predictorFromString "mov_add_64_addsub_imm_cond"
  = Just Predictor_mov_add_64_addsub_imm
predictorFromString "mov_movz_32_movewide_cond"
  = Just Predictor_mov_movz_32_movewide
predictorFromString "mov_movz_64_movewide_cond"
  = Just Predictor_mov_movz_64_movewide
predictorFromString "ror_extr_32_extract_cond"
  = Just Predictor_ror_extr_32_extract
predictorFromString "ror_extr_64_extract_cond"
  = Just Predictor_ror_extr_64_extract
predictorFromString "sbfiz_sbfm_32m_bitfield_cond"
  = Just Predictor_sbfiz_sbfm_32m_bitfield
predictorFromString "sbfiz_sbfm_64m_bitfield_cond"
  = Just Predictor_sbfiz_sbfm_64m_bitfield
predictorFromString "sbfx_sbfm_32m_bitfield_cond"
  = Just Predictor_sbfx_sbfm_32m_bitfield
predictorFromString "sbfx_sbfm_64m_bitfield_cond"
  = Just Predictor_sbfx_sbfm_64m_bitfield
predictorFromString "tlbi_sys_cr_system_cond"
  = Just Predictor_tlbi_sys_cr_system
predictorFromString "ubfiz_ubfm_32m_bitfield_cond"
  = Just Predictor_ubfiz_ubfm_32m_bitfield
predictorFromString "ubfiz_ubfm_64m_bitfield_cond"
  = Just Predictor_ubfiz_ubfm_64m_bitfield
predictorFromString "ubfx_ubfm_32m_bitfield_cond"
  = Just Predictor_ubfx_ubfm_32m_bitfield
predictorFromString "ubfx_ubfm_64m_bitfield_cond"
  = Just Predictor_ubfx_ubfm_64m_bitfield
predictorFromString "fcvtzs_asisdshf_c_cond"
  = Just Predictor_fcvtzs_asisdshf_c
predictorFromString "fcvtzs_asimdshf_c_cond"
  = Just Predictor_fcvtzs_asimdshf_c
predictorFromString "fcvtzu_asisdshf_c_cond"
  = Just Predictor_fcvtzu_asisdshf_c
predictorFromString "fcvtzu_asimdshf_c_cond"
  = Just Predictor_fcvtzu_asimdshf_c
predictorFromString "mov_umov_asimdins_w_w_cond"
  = Just Predictor_mov_umov_asimdins_w_w
predictorFromString "mov_umov_asimdins_x_x_cond"
  = Just Predictor_mov_umov_asimdins_x_x
predictorFromString "mov_orr_asimdsame_only_cond"
  = Just Predictor_mov_orr_asimdsame_only
predictorFromString "rshrn_asimdshf_n_cond"
  = Just Predictor_rshrn_asimdshf_n
predictorFromString "scvtf_asisdshf_c_cond"
  = Just Predictor_scvtf_asisdshf_c
predictorFromString "scvtf_asimdshf_c_cond"
  = Just Predictor_scvtf_asimdshf_c
predictorFromString "shl_asisdshf_r_cond"
  = Just Predictor_shl_asisdshf_r
predictorFromString "shl_asimdshf_r_cond"
  = Just Predictor_shl_asimdshf_r
predictorFromString "shrn_asimdshf_n_cond"
  = Just Predictor_shrn_asimdshf_n
predictorFromString "sli_asisdshf_r_cond"
  = Just Predictor_sli_asisdshf_r
predictorFromString "sli_asimdshf_r_cond"
  = Just Predictor_sli_asimdshf_r
predictorFromString "sqrshrn_asisdshf_n_cond"
  = Just Predictor_sqrshrn_asisdshf_n
predictorFromString "sqrshrn_asimdshf_n_cond"
  = Just Predictor_sqrshrn_asimdshf_n
predictorFromString "sqrshrun_asisdshf_n_cond"
  = Just Predictor_sqrshrun_asisdshf_n
predictorFromString "sqrshrun_asimdshf_n_cond"
  = Just Predictor_sqrshrun_asimdshf_n
predictorFromString "sqshl_asisdshf_r_cond"
  = Just Predictor_sqshl_asisdshf_r
predictorFromString "sqshl_asimdshf_r_cond"
  = Just Predictor_sqshl_asimdshf_r
predictorFromString "sqshlu_asisdshf_r_cond"
  = Just Predictor_sqshlu_asisdshf_r
predictorFromString "sqshlu_asimdshf_r_cond"
  = Just Predictor_sqshlu_asimdshf_r
predictorFromString "sqshrn_asisdshf_n_cond"
  = Just Predictor_sqshrn_asisdshf_n
predictorFromString "sqshrn_asimdshf_n_cond"
  = Just Predictor_sqshrn_asimdshf_n
predictorFromString "sqshrun_asisdshf_n_cond"
  = Just Predictor_sqshrun_asisdshf_n
predictorFromString "sqshrun_asimdshf_n_cond"
  = Just Predictor_sqshrun_asimdshf_n
predictorFromString "sri_asisdshf_r_cond"
  = Just Predictor_sri_asisdshf_r
predictorFromString "sri_asimdshf_r_cond"
  = Just Predictor_sri_asimdshf_r
predictorFromString "srshr_asisdshf_r_cond"
  = Just Predictor_srshr_asisdshf_r
predictorFromString "srshr_asimdshf_r_cond"
  = Just Predictor_srshr_asimdshf_r
predictorFromString "srsra_asisdshf_r_cond"
  = Just Predictor_srsra_asisdshf_r
predictorFromString "srsra_asimdshf_r_cond"
  = Just Predictor_srsra_asimdshf_r
predictorFromString "sshll_asimdshf_l_cond"
  = Just Predictor_sshll_asimdshf_l
predictorFromString "sshr_asisdshf_r_cond"
  = Just Predictor_sshr_asisdshf_r
predictorFromString "sshr_asimdshf_r_cond"
  = Just Predictor_sshr_asimdshf_r
predictorFromString "ssra_asisdshf_r_cond"
  = Just Predictor_ssra_asisdshf_r
predictorFromString "ssra_asimdshf_r_cond"
  = Just Predictor_ssra_asimdshf_r
predictorFromString "sxtl_sshll_asimdshf_l_cond"
  = Just Predictor_sxtl_sshll_asimdshf_l
predictorFromString "ucvtf_asisdshf_c_cond"
  = Just Predictor_ucvtf_asisdshf_c
predictorFromString "ucvtf_asimdshf_c_cond"
  = Just Predictor_ucvtf_asimdshf_c
predictorFromString "uqrshrn_asisdshf_n_cond"
  = Just Predictor_uqrshrn_asisdshf_n
predictorFromString "uqrshrn_asimdshf_n_cond"
  = Just Predictor_uqrshrn_asimdshf_n
predictorFromString "uqshl_asisdshf_r_cond"
  = Just Predictor_uqshl_asisdshf_r
predictorFromString "uqshl_asimdshf_r_cond"
  = Just Predictor_uqshl_asimdshf_r
predictorFromString "uqshrn_asisdshf_n_cond"
  = Just Predictor_uqshrn_asisdshf_n
predictorFromString "uqshrn_asimdshf_n_cond"
  = Just Predictor_uqshrn_asimdshf_n
predictorFromString "urshr_asisdshf_r_cond"
  = Just Predictor_urshr_asisdshf_r
predictorFromString "urshr_asimdshf_r_cond"
  = Just Predictor_urshr_asimdshf_r
predictorFromString "ursra_asisdshf_r_cond"
  = Just Predictor_ursra_asisdshf_r
predictorFromString "ursra_asimdshf_r_cond"
  = Just Predictor_ursra_asimdshf_r
predictorFromString "ushll_asimdshf_l_cond"
  = Just Predictor_ushll_asimdshf_l
predictorFromString "ushr_asisdshf_r_cond"
  = Just Predictor_ushr_asisdshf_r
predictorFromString "ushr_asimdshf_r_cond"
  = Just Predictor_ushr_asimdshf_r
predictorFromString "usra_asisdshf_r_cond"
  = Just Predictor_usra_asisdshf_r
predictorFromString "usra_asimdshf_r_cond"
  = Just Predictor_usra_asimdshf_r
predictorFromString "uxtl_ushll_asimdshf_l_cond"
  = Just Predictor_uxtl_ushll_asimdshf_l
predictorFromString _ = Nothing
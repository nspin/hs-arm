{-# LANGUAGE DataKinds #-}
module Harm.Tables.Gen.Insn where
import Harm.Tables.Internal.Insn

data Insn = ABS ABS
          | ADC ADC
          | ADCS ADCS
          | ADD ADD
          | ADDHN ADDHN
          | ADDP ADDP
          | ADDS ADDS
          | ADDV ADDV
          | ADR ADR
          | ADRP ADRP
          | AESD AESD
          | AESE AESE
          | AESIMC AESIMC
          | AESMC AESMC
          | AND AND
          | ANDS ANDS
          | ASRV ASRV
          | AUTDA AUTDA
          | AUTDB AUTDB
          | AUTDZA AUTDZA
          | AUTDZB AUTDZB
          | AUTIA AUTIA
          | AUTIA1716 AUTIA1716
          | AUTIASP AUTIASP
          | AUTIAZ AUTIAZ
          | AUTIB AUTIB
          | AUTIB1716 AUTIB1716
          | AUTIBSP AUTIBSP
          | AUTIBZ AUTIBZ
          | AUTIZA AUTIZA
          | AUTIZB AUTIZB
          | B B
          | BCAX BCAX
          | BFM BFM
          | BIC BIC
          | BICS BICS
          | BIF BIF
          | BIT BIT
          | BL BL
          | BLR BLR
          | BLRAA BLRAA
          | BLRAAZ BLRAAZ
          | BLRAB BLRAB
          | BLRABZ BLRABZ
          | BR BR
          | BRAA BRAA
          | BRAAZ BRAAZ
          | BRAB BRAB
          | BRABZ BRABZ
          | BRK BRK
          | BSL BSL
          | CAS CAS
          | CASA CASA
          | CASAB CASAB
          | CASAH CASAH
          | CASAL CASAL
          | CASALB CASALB
          | CASALH CASALH
          | CASB CASB
          | CASH CASH
          | CASL CASL
          | CASLB CASLB
          | CASLH CASLH
          | CASP CASP
          | CASPA CASPA
          | CASPAL CASPAL
          | CASPL CASPL
          | CBNZ CBNZ
          | CBZ CBZ
          | CCMN CCMN
          | CCMP CCMP
          | CLREX CLREX
          | CLS CLS
          | CLZ CLZ
          | CMEQ CMEQ
          | CMGE CMGE
          | CMGT CMGT
          | CMHI CMHI
          | CMHS CMHS
          | CMLE CMLE
          | CMLT CMLT
          | CMTST CMTST
          | CNT CNT
          | CRC32B CRC32B
          | CRC32CB CRC32CB
          | CRC32CH CRC32CH
          | CRC32CW CRC32CW
          | CRC32CX CRC32CX
          | CRC32H CRC32H
          | CRC32W CRC32W
          | CRC32X CRC32X
          | CSEL CSEL
          | CSINC CSINC
          | CSINV CSINV
          | CSNEG CSNEG
          | DCPS1 DCPS1
          | DCPS2 DCPS2
          | DCPS3 DCPS3
          | DMB DMB
          | DRPS DRPS
          | DSB DSB
          | DUP DUP
          | EON EON
          | EOR EOR
          | EOR3 EOR3
          | ERET ERET
          | ERETAA ERETAA
          | ERETAB ERETAB
          | ESB ESB
          | EXT EXT
          | EXTR EXTR
          | FABD FABD
          | FABS FABS
          | FACGE FACGE
          | FACGT FACGT
          | FADD FADD
          | FADDP FADDP
          | FCADD FCADD
          | FCCMP FCCMP
          | FCCMPE FCCMPE
          | FCMEQ FCMEQ
          | FCMGE FCMGE
          | FCMGT FCMGT
          | FCMLA FCMLA
          | FCMLE FCMLE
          | FCMLT FCMLT
          | FCMP FCMP
          | FCMPE FCMPE
          | FCSEL FCSEL
          | FCVT FCVT
          | FCVTAS FCVTAS
          | FCVTAU FCVTAU
          | FCVTL FCVTL
          | FCVTMS FCVTMS
          | FCVTMU FCVTMU
          | FCVTN FCVTN
          | FCVTNS FCVTNS
          | FCVTNU FCVTNU
          | FCVTPS FCVTPS
          | FCVTPU FCVTPU
          | FCVTXN FCVTXN
          | FCVTZS FCVTZS
          | FCVTZU FCVTZU
          | FDIV FDIV
          | FJCVTZS FJCVTZS
          | FMADD FMADD
          | FMAX FMAX
          | FMAXNM FMAXNM
          | FMAXNMP FMAXNMP
          | FMAXNMV FMAXNMV
          | FMAXP FMAXP
          | FMAXV FMAXV
          | FMIN FMIN
          | FMINNM FMINNM
          | FMINNMP FMINNMP
          | FMINNMV FMINNMV
          | FMINP FMINP
          | FMINV FMINV
          | FMLA FMLA
          | FMLS FMLS
          | FMOV FMOV
          | FMSUB FMSUB
          | FMUL FMUL
          | FMULX FMULX
          | FNEG FNEG
          | FNMADD FNMADD
          | FNMSUB FNMSUB
          | FNMUL FNMUL
          | FRECPE FRECPE
          | FRECPS FRECPS
          | FRECPX FRECPX
          | FRINTA FRINTA
          | FRINTI FRINTI
          | FRINTM FRINTM
          | FRINTN FRINTN
          | FRINTP FRINTP
          | FRINTX FRINTX
          | FRINTZ FRINTZ
          | FRSQRTE FRSQRTE
          | FRSQRTS FRSQRTS
          | FSQRT FSQRT
          | FSUB FSUB
          | HINT HINT
          | HLT HLT
          | HVC HVC
          | INS INS
          | ISB ISB
          | LD1 LD1
          | LD1R LD1R
          | LD2 LD2
          | LD2R LD2R
          | LD3 LD3
          | LD3R LD3R
          | LD4 LD4
          | LD4R LD4R
          | LDADD LDADD
          | LDADDA LDADDA
          | LDADDAB LDADDAB
          | LDADDAH LDADDAH
          | LDADDAL LDADDAL
          | LDADDALB LDADDALB
          | LDADDALH LDADDALH
          | LDADDB LDADDB
          | LDADDH LDADDH
          | LDADDL LDADDL
          | LDADDLB LDADDLB
          | LDADDLH LDADDLH
          | LDAPR LDAPR
          | LDAPRB LDAPRB
          | LDAPRH LDAPRH
          | LDAR LDAR
          | LDARB LDARB
          | LDARH LDARH
          | LDAXP LDAXP
          | LDAXR LDAXR
          | LDAXRB LDAXRB
          | LDAXRH LDAXRH
          | LDCLR LDCLR
          | LDCLRA LDCLRA
          | LDCLRAB LDCLRAB
          | LDCLRAH LDCLRAH
          | LDCLRAL LDCLRAL
          | LDCLRALB LDCLRALB
          | LDCLRALH LDCLRALH
          | LDCLRB LDCLRB
          | LDCLRH LDCLRH
          | LDCLRL LDCLRL
          | LDCLRLB LDCLRLB
          | LDCLRLH LDCLRLH
          | LDEOR LDEOR
          | LDEORA LDEORA
          | LDEORAB LDEORAB
          | LDEORAH LDEORAH
          | LDEORAL LDEORAL
          | LDEORALB LDEORALB
          | LDEORALH LDEORALH
          | LDEORB LDEORB
          | LDEORH LDEORH
          | LDEORL LDEORL
          | LDEORLB LDEORLB
          | LDEORLH LDEORLH
          | LDLAR LDLAR
          | LDLARB LDLARB
          | LDLARH LDLARH
          | LDNP LDNP
          | LDP LDP
          | LDPSW LDPSW
          | LDR LDR
          | LDRAA LDRAA
          | LDRAB LDRAB
          | LDRB LDRB
          | LDRH LDRH
          | LDRSB LDRSB
          | LDRSH LDRSH
          | LDRSW LDRSW
          | LDSET LDSET
          | LDSETA LDSETA
          | LDSETAB LDSETAB
          | LDSETAH LDSETAH
          | LDSETAL LDSETAL
          | LDSETALB LDSETALB
          | LDSETALH LDSETALH
          | LDSETB LDSETB
          | LDSETH LDSETH
          | LDSETL LDSETL
          | LDSETLB LDSETLB
          | LDSETLH LDSETLH
          | LDSMAX LDSMAX
          | LDSMAXA LDSMAXA
          | LDSMAXAB LDSMAXAB
          | LDSMAXAH LDSMAXAH
          | LDSMAXAL LDSMAXAL
          | LDSMAXALB LDSMAXALB
          | LDSMAXALH LDSMAXALH
          | LDSMAXB LDSMAXB
          | LDSMAXH LDSMAXH
          | LDSMAXL LDSMAXL
          | LDSMAXLB LDSMAXLB
          | LDSMAXLH LDSMAXLH
          | LDSMIN LDSMIN
          | LDSMINA LDSMINA
          | LDSMINAB LDSMINAB
          | LDSMINAH LDSMINAH
          | LDSMINAL LDSMINAL
          | LDSMINALB LDSMINALB
          | LDSMINALH LDSMINALH
          | LDSMINB LDSMINB
          | LDSMINH LDSMINH
          | LDSMINL LDSMINL
          | LDSMINLB LDSMINLB
          | LDSMINLH LDSMINLH
          | LDTR LDTR
          | LDTRB LDTRB
          | LDTRH LDTRH
          | LDTRSB LDTRSB
          | LDTRSH LDTRSH
          | LDTRSW LDTRSW
          | LDUMAX LDUMAX
          | LDUMAXA LDUMAXA
          | LDUMAXAB LDUMAXAB
          | LDUMAXAH LDUMAXAH
          | LDUMAXAL LDUMAXAL
          | LDUMAXALB LDUMAXALB
          | LDUMAXALH LDUMAXALH
          | LDUMAXB LDUMAXB
          | LDUMAXH LDUMAXH
          | LDUMAXL LDUMAXL
          | LDUMAXLB LDUMAXLB
          | LDUMAXLH LDUMAXLH
          | LDUMIN LDUMIN
          | LDUMINA LDUMINA
          | LDUMINAB LDUMINAB
          | LDUMINAH LDUMINAH
          | LDUMINAL LDUMINAL
          | LDUMINALB LDUMINALB
          | LDUMINALH LDUMINALH
          | LDUMINB LDUMINB
          | LDUMINH LDUMINH
          | LDUMINL LDUMINL
          | LDUMINLB LDUMINLB
          | LDUMINLH LDUMINLH
          | LDUR LDUR
          | LDURB LDURB
          | LDURH LDURH
          | LDURSB LDURSB
          | LDURSH LDURSH
          | LDURSW LDURSW
          | LDXP LDXP
          | LDXR LDXR
          | LDXRB LDXRB
          | LDXRH LDXRH
          | LSLV LSLV
          | LSRV LSRV
          | MADD MADD
          | MLA MLA
          | MLS MLS
          | MOVI MOVI
          | MOVK MOVK
          | MOVN MOVN
          | MOVZ MOVZ
          | MRS MRS
          | MSR MSR
          | MSUB MSUB
          | MUL MUL
          | MVNI MVNI
          | NEG NEG
          | NOP NOP
          | NOT NOT
          | ORN ORN
          | ORR ORR
          | PACDA PACDA
          | PACDB PACDB
          | PACDZA PACDZA
          | PACDZB PACDZB
          | PACGA PACGA
          | PACIA PACIA
          | PACIA1716 PACIA1716
          | PACIASP PACIASP
          | PACIAZ PACIAZ
          | PACIB PACIB
          | PACIB1716 PACIB1716
          | PACIBSP PACIBSP
          | PACIBZ PACIBZ
          | PACIZA PACIZA
          | PACIZB PACIZB
          | PMUL PMUL
          | PMULL PMULL
          | PRFM PRFM
          | PRFUM PRFUM
          | PSB PSB
          | RADDHN RADDHN
          | RAX1 RAX1
          | RBIT RBIT
          | RET RET
          | RETAA RETAA
          | RETAB RETAB
          | REV REV
          | REV16 REV16
          | REV32 REV32
          | REV64 REV64
          | RORV RORV
          | RSHRN RSHRN
          | RSUBHN RSUBHN
          | SABA SABA
          | SABAL SABAL
          | SABD SABD
          | SABDL SABDL
          | SADALP SADALP
          | SADDL SADDL
          | SADDLP SADDLP
          | SADDLV SADDLV
          | SADDW SADDW
          | SBC SBC
          | SBCS SBCS
          | SBFM SBFM
          | SCVTF SCVTF
          | SDIV SDIV
          | SDOT SDOT
          | SEV SEV
          | SEVL SEVL
          | SHA1C SHA1C
          | SHA1H SHA1H
          | SHA1M SHA1M
          | SHA1P SHA1P
          | SHA1SU0 SHA1SU0
          | SHA1SU1 SHA1SU1
          | SHA256H SHA256H
          | SHA256H2 SHA256H2
          | SHA256SU0 SHA256SU0
          | SHA256SU1 SHA256SU1
          | SHA512H SHA512H
          | SHA512H2 SHA512H2
          | SHA512SU0 SHA512SU0
          | SHA512SU1 SHA512SU1
          | SHADD SHADD
          | SHL SHL
          | SHLL SHLL
          | SHRN SHRN
          | SHSUB SHSUB
          | SLI SLI
          | SM3PARTW1 SM3PARTW1
          | SM3PARTW2 SM3PARTW2
          | SM3SS1 SM3SS1
          | SM3TT1A SM3TT1A
          | SM3TT1B SM3TT1B
          | SM3TT2A SM3TT2A
          | SM3TT2B SM3TT2B
          | SM4E SM4E
          | SM4EKEY SM4EKEY
          | SMADDL SMADDL
          | SMAX SMAX
          | SMAXP SMAXP
          | SMAXV SMAXV
          | SMC SMC
          | SMIN SMIN
          | SMINP SMINP
          | SMINV SMINV
          | SMLAL SMLAL
          | SMLSL SMLSL
          | SMOV SMOV
          | SMSUBL SMSUBL
          | SMULH SMULH
          | SMULL SMULL
          | SQABS SQABS
          | SQADD SQADD
          | SQDMLAL SQDMLAL
          | SQDMLSL SQDMLSL
          | SQDMULH SQDMULH
          | SQDMULL SQDMULL
          | SQNEG SQNEG
          | SQRDMLAH SQRDMLAH
          | SQRDMLSH SQRDMLSH
          | SQRDMULH SQRDMULH
          | SQRSHL SQRSHL
          | SQRSHRN SQRSHRN
          | SQRSHRUN SQRSHRUN
          | SQSHL SQSHL
          | SQSHLU SQSHLU
          | SQSHRN SQSHRN
          | SQSHRUN SQSHRUN
          | SQSUB SQSUB
          | SQXTN SQXTN
          | SQXTUN SQXTUN
          | SRHADD SRHADD
          | SRI SRI
          | SRSHL SRSHL
          | SRSHR SRSHR
          | SRSRA SRSRA
          | SSHL SSHL
          | SSHLL SSHLL
          | SSHR SSHR
          | SSRA SSRA
          | SSUBL SSUBL
          | SSUBW SSUBW
          | ST1 ST1
          | ST2 ST2
          | ST3 ST3
          | ST4 ST4
          | STLLR STLLR
          | STLLRB STLLRB
          | STLLRH STLLRH
          | STLR STLR
          | STLRB STLRB
          | STLRH STLRH
          | STLXP STLXP
          | STLXR STLXR
          | STLXRB STLXRB
          | STLXRH STLXRH
          | STNP STNP
          | STP STP
          | STR STR
          | STRB STRB
          | STRH STRH
          | STTR STTR
          | STTRB STTRB
          | STTRH STTRH
          | STUR STUR
          | STURB STURB
          | STURH STURH
          | STXP STXP
          | STXR STXR
          | STXRB STXRB
          | STXRH STXRH
          | SUB SUB
          | SUBHN SUBHN
          | SUBS SUBS
          | SUQADD SUQADD
          | SVC SVC
          | SWP SWP
          | SWPA SWPA
          | SWPAB SWPAB
          | SWPAH SWPAH
          | SWPAL SWPAL
          | SWPALB SWPALB
          | SWPALH SWPALH
          | SWPB SWPB
          | SWPH SWPH
          | SWPL SWPL
          | SWPLB SWPLB
          | SWPLH SWPLH
          | SYS SYS
          | SYSL SYSL
          | TBL TBL
          | TBNZ TBNZ
          | TBX TBX
          | TBZ TBZ
          | TRN1 TRN1
          | TRN2 TRN2
          | UABA UABA
          | UABAL UABAL
          | UABD UABD
          | UABDL UABDL
          | UADALP UADALP
          | UADDL UADDL
          | UADDLP UADDLP
          | UADDLV UADDLV
          | UADDW UADDW
          | UBFM UBFM
          | UCVTF UCVTF
          | UDIV UDIV
          | UDOT UDOT
          | UHADD UHADD
          | UHSUB UHSUB
          | UMADDL UMADDL
          | UMAX UMAX
          | UMAXP UMAXP
          | UMAXV UMAXV
          | UMIN UMIN
          | UMINP UMINP
          | UMINV UMINV
          | UMLAL UMLAL
          | UMLSL UMLSL
          | UMOV UMOV
          | UMSUBL UMSUBL
          | UMULH UMULH
          | UMULL UMULL
          | UQADD UQADD
          | UQRSHL UQRSHL
          | UQRSHRN UQRSHRN
          | UQSHL UQSHL
          | UQSHRN UQSHRN
          | UQSUB UQSUB
          | UQXTN UQXTN
          | URECPE URECPE
          | URHADD URHADD
          | URSHL URSHL
          | URSHR URSHR
          | URSQRTE URSQRTE
          | URSRA URSRA
          | USHL USHL
          | USHLL USHLL
          | USHR USHR
          | USQADD USQADD
          | USRA USRA
          | USUBL USUBL
          | USUBW USUBW
          | UZP1 UZP1
          | UZP2 UZP2
          | WFE WFE
          | WFI WFI
          | XAR XAR
          | XPACD XPACD
          | XPACI XPACI
          | XPACLRI XPACLRI
          | XTN XTN
          | YIELD YIELD
          | ZIP1 ZIP1
          | ZIP2 ZIP2
          deriving (Eq, Read, Show)

data ABS = ABS_asisdmisc_R
         | ABS_asimdmisc_R
         deriving (Eq, Read, Show)

data ADC = ADC_32_addsub_carry
         | ADC_64_addsub_carry
         deriving (Eq, Read, Show)

data ADCS = ADCS_32_addsub_carry
          | ADCS_64_addsub_carry
          deriving (Eq, Read, Show)

data ADD = ADD_32_addsub_ext
         | ADD_64_addsub_ext
         | ADD_32_addsub_imm
         | ADD_64_addsub_imm XnSP XnSP (W 12) LSL_12
         | ADD_32_addsub_shift Wn Wn Wn Shift32
         | ADD_64_addsub_shift
         | ADD_asisdsame_only
         | ADD_asimdsame_only
         deriving (Eq, Read, Show)

data ADDHN = ADDHN_asimddiff_N
           deriving (Eq, Read, Show)

data ADDP = ADDP_asisdpair_only
          | ADDP_asimdsame_only
          deriving (Eq, Read, Show)

data ADDS = ADDS_32S_addsub_ext
          | ADDS_64S_addsub_ext
          | ADDS_32S_addsub_imm Wn WnSP (W 12) LSL_12
          | ADDS_64S_addsub_imm Xn XnSP (W 12) LSL_12
          | ADDS_32_addsub_shift Wn Wn Wn Shift32
          | ADDS_64_addsub_shift
          deriving (Eq, Read, Show)

data ADDV = ADDV_asimdall_only
          deriving (Eq, Read, Show)

data ADR = ADR_only_pcreladdr Xn (I 21)
         deriving (Eq, Read, Show)

data ADRP = ADRP_only_pcreladdr Xn (I 21)
          deriving (Eq, Read, Show)

data AESD = AESD_B_cryptoaes
          deriving (Eq, Read, Show)

data AESE = AESE_B_cryptoaes
          deriving (Eq, Read, Show)

data AESIMC = AESIMC_B_cryptoaes
            deriving (Eq, Read, Show)

data AESMC = AESMC_B_cryptoaes
           deriving (Eq, Read, Show)

data AND = AND_32_log_imm
         | AND_64_log_imm
         | AND_32_log_shift Wn Wn Wn Shift32
         | AND_64_log_shift
         | AND_asimdsame_only
         deriving (Eq, Read, Show)

data ANDS = ANDS_32S_log_imm
          | ANDS_64S_log_imm
          | ANDS_32_log_shift Wn Wn Wn Shift32
          | ANDS_64_log_shift
          deriving (Eq, Read, Show)

data ASRV = ASRV_32_dp_2src
          | ASRV_64_dp_2src
          deriving (Eq, Read, Show)

data AUTDA = AUTDA_64P_dp_1src
           deriving (Eq, Read, Show)

data AUTDB = AUTDB_64P_dp_1src
           deriving (Eq, Read, Show)

data AUTDZA = AUTDZA_64Z_dp_1src
            deriving (Eq, Read, Show)

data AUTDZB = AUTDZB_64Z_dp_1src
            deriving (Eq, Read, Show)

data AUTIA = AUTIA_64P_dp_1src
           deriving (Eq, Read, Show)

data AUTIA1716 = AUTIA1716_HI_system
               deriving (Eq, Read, Show)

data AUTIASP = AUTIASP_HI_system
             deriving (Eq, Read, Show)

data AUTIAZ = AUTIAZ_HI_system
            deriving (Eq, Read, Show)

data AUTIB = AUTIB_64P_dp_1src
           deriving (Eq, Read, Show)

data AUTIB1716 = AUTIB1716_HI_system
               deriving (Eq, Read, Show)

data AUTIBSP = AUTIBSP_HI_system
             deriving (Eq, Read, Show)

data AUTIBZ = AUTIBZ_HI_system
            deriving (Eq, Read, Show)

data AUTIZA = AUTIZA_64Z_dp_1src
            deriving (Eq, Read, Show)

data AUTIZB = AUTIZB_64Z_dp_1src
            deriving (Eq, Read, Show)

data B = B_only_branch_imm
       | B_only_condbranch
       deriving (Eq, Read, Show)

data BCAX = BCAX_VVV16_crypto4
          deriving (Eq, Read, Show)

data BFM = BFM_32M_bitfield
         | BFM_64M_bitfield
         deriving (Eq, Read, Show)

data BIC = BIC_32_log_shift Wn Wn Wn Shift32
         | BIC_64_log_shift
         | BIC_asimdimm_L_hl
         | BIC_asimdimm_L_sl
         | BIC_asimdsame_only
         deriving (Eq, Read, Show)

data BICS = BICS_32_log_shift Wn Wn Wn Shift32
          | BICS_64_log_shift
          deriving (Eq, Read, Show)

data BIF = BIF_asimdsame_only
         deriving (Eq, Read, Show)

data BIT = BIT_asimdsame_only
         deriving (Eq, Read, Show)

data BL = BL_only_branch_imm
        deriving (Eq, Read, Show)

data BLR = BLR_64_branch_reg
         deriving (Eq, Read, Show)

data BLRAA = BLRAA_64P_branch_reg
           deriving (Eq, Read, Show)

data BLRAAZ = BLRAAZ_64_branch_reg
            deriving (Eq, Read, Show)

data BLRAB = BLRAB_64P_branch_reg
           deriving (Eq, Read, Show)

data BLRABZ = BLRABZ_64_branch_reg
            deriving (Eq, Read, Show)

data BR = BR_64_branch_reg
        deriving (Eq, Read, Show)

data BRAA = BRAA_64P_branch_reg
          deriving (Eq, Read, Show)

data BRAAZ = BRAAZ_64_branch_reg
           deriving (Eq, Read, Show)

data BRAB = BRAB_64P_branch_reg
          deriving (Eq, Read, Show)

data BRABZ = BRABZ_64_branch_reg
           deriving (Eq, Read, Show)

data BRK = BRK_EX_exception
         deriving (Eq, Read, Show)

data BSL = BSL_asimdsame_only
         deriving (Eq, Read, Show)

data CAS = CAS_C32_ldstexcl
         | CAS_C64_ldstexcl
         deriving (Eq, Read, Show)

data CASA = CASA_C32_ldstexcl
          | CASA_C64_ldstexcl
          deriving (Eq, Read, Show)

data CASAB = CASAB_C32_ldstexcl
           deriving (Eq, Read, Show)

data CASAH = CASAH_C32_ldstexcl
           deriving (Eq, Read, Show)

data CASAL = CASAL_C32_ldstexcl
           | CASAL_C64_ldstexcl
           deriving (Eq, Read, Show)

data CASALB = CASALB_C32_ldstexcl
            deriving (Eq, Read, Show)

data CASALH = CASALH_C32_ldstexcl
            deriving (Eq, Read, Show)

data CASB = CASB_C32_ldstexcl
          deriving (Eq, Read, Show)

data CASH = CASH_C32_ldstexcl
          deriving (Eq, Read, Show)

data CASL = CASL_C32_ldstexcl
          | CASL_C64_ldstexcl
          deriving (Eq, Read, Show)

data CASLB = CASLB_C32_ldstexcl
           deriving (Eq, Read, Show)

data CASLH = CASLH_C32_ldstexcl
           deriving (Eq, Read, Show)

data CASP = CASP_CP32_ldstexcl
          | CASP_CP64_ldstexcl
          deriving (Eq, Read, Show)

data CASPA = CASPA_CP32_ldstexcl
           | CASPA_CP64_ldstexcl
           deriving (Eq, Read, Show)

data CASPAL = CASPAL_CP32_ldstexcl
            | CASPAL_CP64_ldstexcl
            deriving (Eq, Read, Show)

data CASPL = CASPL_CP32_ldstexcl
           | CASPL_CP64_ldstexcl
           deriving (Eq, Read, Show)

data CBNZ = CBNZ_32_compbranch
          | CBNZ_64_compbranch
          deriving (Eq, Read, Show)

data CBZ = CBZ_32_compbranch
         | CBZ_64_compbranch
         deriving (Eq, Read, Show)

data CCMN = CCMN_32_condcmp_imm
          | CCMN_64_condcmp_imm
          | CCMN_32_condcmp_reg
          | CCMN_64_condcmp_reg
          deriving (Eq, Read, Show)

data CCMP = CCMP_32_condcmp_imm
          | CCMP_64_condcmp_imm
          | CCMP_32_condcmp_reg
          | CCMP_64_condcmp_reg
          deriving (Eq, Read, Show)

data CLREX = CLREX_BN_system
           deriving (Eq, Read, Show)

data CLS = CLS_32_dp_1src
         | CLS_64_dp_1src
         | CLS_asimdmisc_R
         deriving (Eq, Read, Show)

data CLZ = CLZ_32_dp_1src
         | CLZ_64_dp_1src
         | CLZ_asimdmisc_R
         deriving (Eq, Read, Show)

data CMEQ = CMEQ_asisdsame_only
          | CMEQ_asimdsame_only
          | CMEQ_asisdmisc_Z
          | CMEQ_asimdmisc_Z
          deriving (Eq, Read, Show)

data CMGE = CMGE_asisdsame_only
          | CMGE_asimdsame_only
          | CMGE_asisdmisc_Z
          | CMGE_asimdmisc_Z
          deriving (Eq, Read, Show)

data CMGT = CMGT_asisdsame_only
          | CMGT_asimdsame_only
          | CMGT_asisdmisc_Z
          | CMGT_asimdmisc_Z
          deriving (Eq, Read, Show)

data CMHI = CMHI_asisdsame_only
          | CMHI_asimdsame_only
          deriving (Eq, Read, Show)

data CMHS = CMHS_asisdsame_only
          | CMHS_asimdsame_only
          deriving (Eq, Read, Show)

data CMLE = CMLE_asisdmisc_Z
          | CMLE_asimdmisc_Z
          deriving (Eq, Read, Show)

data CMLT = CMLT_asisdmisc_Z
          | CMLT_asimdmisc_Z
          deriving (Eq, Read, Show)

data CMTST = CMTST_asisdsame_only
           | CMTST_asimdsame_only
           deriving (Eq, Read, Show)

data CNT = CNT_asimdmisc_R
         deriving (Eq, Read, Show)

data CRC32B = CRC32B_32C_dp_2src
            deriving (Eq, Read, Show)

data CRC32CB = CRC32CB_32C_dp_2src
             deriving (Eq, Read, Show)

data CRC32CH = CRC32CH_32C_dp_2src
             deriving (Eq, Read, Show)

data CRC32CW = CRC32CW_32C_dp_2src
             deriving (Eq, Read, Show)

data CRC32CX = CRC32CX_64C_dp_2src
             deriving (Eq, Read, Show)

data CRC32H = CRC32H_32C_dp_2src
            deriving (Eq, Read, Show)

data CRC32W = CRC32W_32C_dp_2src
            deriving (Eq, Read, Show)

data CRC32X = CRC32X_64C_dp_2src
            deriving (Eq, Read, Show)

data CSEL = CSEL_32_condsel Wn Wn Wn Cond
          | CSEL_64_condsel
          deriving (Eq, Read, Show)

data CSINC = CSINC_32_condsel Wn Wn Wn Cond
           | CSINC_64_condsel
           deriving (Eq, Read, Show)

data CSINV = CSINV_32_condsel Wn Wn Wn Cond
           | CSINV_64_condsel
           deriving (Eq, Read, Show)

data CSNEG = CSNEG_32_condsel Wn Wn Wn Cond
           | CSNEG_64_condsel
           deriving (Eq, Read, Show)

data DCPS1 = DCPS1_DC_exception
           deriving (Eq, Read, Show)

data DCPS2 = DCPS2_DC_exception
           deriving (Eq, Read, Show)

data DCPS3 = DCPS3_DC_exception
           deriving (Eq, Read, Show)

data DMB = DMB_BO_system
         deriving (Eq, Read, Show)

data DRPS = DRPS_64E_branch_reg
          deriving (Eq, Read, Show)

data DSB = DSB_BO_system
         deriving (Eq, Read, Show)

data DUP = DUP_asisdone_only
         | DUP_asimdins_DV_v
         | DUP_asimdins_DR_r
         deriving (Eq, Read, Show)

data EON = EON_32_log_shift Wn Wn Wn Shift32
         | EON_64_log_shift
         deriving (Eq, Read, Show)

data EOR = EOR_32_log_imm
         | EOR_64_log_imm
         | EOR_32_log_shift Wn Wn Wn Shift32
         | EOR_64_log_shift
         | EOR_asimdsame_only
         deriving (Eq, Read, Show)

data EOR3 = EOR3_VVV16_crypto4
          deriving (Eq, Read, Show)

data ERET = ERET_64E_branch_reg
          deriving (Eq, Read, Show)

data ERETAA = ERETAA_64E_branch_reg
            deriving (Eq, Read, Show)

data ERETAB = ERETAB_64E_branch_reg
            deriving (Eq, Read, Show)

data ESB = ESB_HI_system
         deriving (Eq, Read, Show)

data EXT = EXT_asimdext_only
         deriving (Eq, Read, Show)

data EXTR = EXTR_32_extract
          | EXTR_64_extract
          deriving (Eq, Read, Show)

data FABD = FABD_asisdsamefp16_only
          | FABD_asisdsame_only
          | FABD_asimdsamefp16_only
          | FABD_asimdsame_only
          deriving (Eq, Read, Show)

data FABS = FABS_H_floatdp1
          | FABS_S_floatdp1
          | FABS_D_floatdp1
          | FABS_asimdmiscfp16_R
          | FABS_asimdmisc_R
          deriving (Eq, Read, Show)

data FACGE = FACGE_asisdsamefp16_only
           | FACGE_asisdsame_only
           | FACGE_asimdsamefp16_only
           | FACGE_asimdsame_only
           deriving (Eq, Read, Show)

data FACGT = FACGT_asisdsamefp16_only
           | FACGT_asisdsame_only
           | FACGT_asimdsamefp16_only
           | FACGT_asimdsame_only
           deriving (Eq, Read, Show)

data FADD = FADD_H_floatdp2
          | FADD_S_floatdp2
          | FADD_D_floatdp2
          | FADD_asimdsamefp16_only
          | FADD_asimdsame_only
          deriving (Eq, Read, Show)

data FADDP = FADDP_asisdpair_only_H
           | FADDP_asisdpair_only_SD
           | FADDP_asimdsamefp16_only
           | FADDP_asimdsame_only
           deriving (Eq, Read, Show)

data FCADD = FCADD_asimdsame2_C
           deriving (Eq, Read, Show)

data FCCMP = FCCMP_H_floatccmp
           | FCCMP_S_floatccmp
           | FCCMP_D_floatccmp
           deriving (Eq, Read, Show)

data FCCMPE = FCCMPE_H_floatccmp
            | FCCMPE_S_floatccmp
            | FCCMPE_D_floatccmp
            deriving (Eq, Read, Show)

data FCMEQ = FCMEQ_asisdsamefp16_only
           | FCMEQ_asisdsame_only
           | FCMEQ_asimdsamefp16_only
           | FCMEQ_asimdsame_only
           | FCMEQ_asisdmiscfp16_FZ
           | FCMEQ_asisdmisc_FZ
           | FCMEQ_asimdmiscfp16_FZ
           | FCMEQ_asimdmisc_FZ
           deriving (Eq, Read, Show)

data FCMGE = FCMGE_asisdsamefp16_only
           | FCMGE_asisdsame_only
           | FCMGE_asimdsamefp16_only
           | FCMGE_asimdsame_only
           | FCMGE_asisdmiscfp16_FZ
           | FCMGE_asisdmisc_FZ
           | FCMGE_asimdmiscfp16_FZ
           | FCMGE_asimdmisc_FZ
           deriving (Eq, Read, Show)

data FCMGT = FCMGT_asisdsamefp16_only
           | FCMGT_asisdsame_only
           | FCMGT_asimdsamefp16_only
           | FCMGT_asimdsame_only
           | FCMGT_asisdmiscfp16_FZ
           | FCMGT_asisdmisc_FZ
           | FCMGT_asimdmiscfp16_FZ
           | FCMGT_asimdmisc_FZ
           deriving (Eq, Read, Show)

data FCMLA = FCMLA_asimdsame2_C
           | FCMLA_asimdelem_C_H
           | FCMLA_asimdelem_C_S
           deriving (Eq, Read, Show)

data FCMLE = FCMLE_asisdmiscfp16_FZ
           | FCMLE_asisdmisc_FZ
           | FCMLE_asimdmiscfp16_FZ
           | FCMLE_asimdmisc_FZ
           deriving (Eq, Read, Show)

data FCMLT = FCMLT_asisdmiscfp16_FZ
           | FCMLT_asisdmisc_FZ
           | FCMLT_asimdmiscfp16_FZ
           | FCMLT_asimdmisc_FZ
           deriving (Eq, Read, Show)

data FCMP = FCMP_H_floatcmp
          | FCMP_HZ_floatcmp
          | FCMP_S_floatcmp
          | FCMP_SZ_floatcmp
          | FCMP_D_floatcmp
          | FCMP_DZ_floatcmp
          deriving (Eq, Read, Show)

data FCMPE = FCMPE_H_floatcmp
           | FCMPE_HZ_floatcmp
           | FCMPE_S_floatcmp
           | FCMPE_SZ_floatcmp
           | FCMPE_D_floatcmp
           | FCMPE_DZ_floatcmp
           deriving (Eq, Read, Show)

data FCSEL = FCSEL_H_floatsel
           | FCSEL_S_floatsel
           | FCSEL_D_floatsel
           deriving (Eq, Read, Show)

data FCVT = FCVT_SH_floatdp1
          | FCVT_DH_floatdp1
          | FCVT_HS_floatdp1
          | FCVT_DS_floatdp1
          | FCVT_HD_floatdp1
          | FCVT_SD_floatdp1
          deriving (Eq, Read, Show)

data FCVTAS = FCVTAS_32H_float2int
            | FCVTAS_64H_float2int
            | FCVTAS_32S_float2int
            | FCVTAS_64S_float2int
            | FCVTAS_32D_float2int
            | FCVTAS_64D_float2int
            | FCVTAS_asisdmiscfp16_R
            | FCVTAS_asisdmisc_R
            | FCVTAS_asimdmiscfp16_R
            | FCVTAS_asimdmisc_R
            deriving (Eq, Read, Show)

data FCVTAU = FCVTAU_32H_float2int
            | FCVTAU_64H_float2int
            | FCVTAU_32S_float2int
            | FCVTAU_64S_float2int
            | FCVTAU_32D_float2int
            | FCVTAU_64D_float2int
            | FCVTAU_asisdmiscfp16_R
            | FCVTAU_asisdmisc_R
            | FCVTAU_asimdmiscfp16_R
            | FCVTAU_asimdmisc_R
            deriving (Eq, Read, Show)

data FCVTL = FCVTL_asimdmisc_L
           deriving (Eq, Read, Show)

data FCVTMS = FCVTMS_32H_float2int
            | FCVTMS_64H_float2int
            | FCVTMS_32S_float2int
            | FCVTMS_64S_float2int
            | FCVTMS_32D_float2int
            | FCVTMS_64D_float2int
            | FCVTMS_asisdmiscfp16_R
            | FCVTMS_asisdmisc_R
            | FCVTMS_asimdmiscfp16_R
            | FCVTMS_asimdmisc_R
            deriving (Eq, Read, Show)

data FCVTMU = FCVTMU_32H_float2int
            | FCVTMU_64H_float2int
            | FCVTMU_32S_float2int
            | FCVTMU_64S_float2int
            | FCVTMU_32D_float2int
            | FCVTMU_64D_float2int
            | FCVTMU_asisdmiscfp16_R
            | FCVTMU_asisdmisc_R
            | FCVTMU_asimdmiscfp16_R
            | FCVTMU_asimdmisc_R
            deriving (Eq, Read, Show)

data FCVTN = FCVTN_asimdmisc_N
           deriving (Eq, Read, Show)

data FCVTNS = FCVTNS_32H_float2int
            | FCVTNS_64H_float2int
            | FCVTNS_32S_float2int
            | FCVTNS_64S_float2int
            | FCVTNS_32D_float2int
            | FCVTNS_64D_float2int
            | FCVTNS_asisdmiscfp16_R
            | FCVTNS_asisdmisc_R
            | FCVTNS_asimdmiscfp16_R
            | FCVTNS_asimdmisc_R
            deriving (Eq, Read, Show)

data FCVTNU = FCVTNU_32H_float2int
            | FCVTNU_64H_float2int
            | FCVTNU_32S_float2int
            | FCVTNU_64S_float2int
            | FCVTNU_32D_float2int
            | FCVTNU_64D_float2int
            | FCVTNU_asisdmiscfp16_R
            | FCVTNU_asisdmisc_R
            | FCVTNU_asimdmiscfp16_R
            | FCVTNU_asimdmisc_R
            deriving (Eq, Read, Show)

data FCVTPS = FCVTPS_32H_float2int
            | FCVTPS_64H_float2int
            | FCVTPS_32S_float2int
            | FCVTPS_64S_float2int
            | FCVTPS_32D_float2int
            | FCVTPS_64D_float2int
            | FCVTPS_asisdmiscfp16_R
            | FCVTPS_asisdmisc_R
            | FCVTPS_asimdmiscfp16_R
            | FCVTPS_asimdmisc_R
            deriving (Eq, Read, Show)

data FCVTPU = FCVTPU_32H_float2int
            | FCVTPU_64H_float2int
            | FCVTPU_32S_float2int
            | FCVTPU_64S_float2int
            | FCVTPU_32D_float2int
            | FCVTPU_64D_float2int
            | FCVTPU_asisdmiscfp16_R
            | FCVTPU_asisdmisc_R
            | FCVTPU_asimdmiscfp16_R
            | FCVTPU_asimdmisc_R
            deriving (Eq, Read, Show)

data FCVTXN = FCVTXN_asisdmisc_N
            | FCVTXN_asimdmisc_N
            deriving (Eq, Read, Show)

data FCVTZS = FCVTZS_32H_float2fix
            | FCVTZS_64H_float2fix
            | FCVTZS_32S_float2fix
            | FCVTZS_64S_float2fix
            | FCVTZS_32D_float2fix
            | FCVTZS_64D_float2fix
            | FCVTZS_32H_float2int
            | FCVTZS_64H_float2int
            | FCVTZS_32S_float2int
            | FCVTZS_64S_float2int
            | FCVTZS_32D_float2int
            | FCVTZS_64D_float2int
            | FCVTZS_asisdshf_C
            | FCVTZS_asimdshf_C
            | FCVTZS_asisdmiscfp16_R
            | FCVTZS_asisdmisc_R
            | FCVTZS_asimdmiscfp16_R
            | FCVTZS_asimdmisc_R
            deriving (Eq, Read, Show)

data FCVTZU = FCVTZU_32H_float2fix
            | FCVTZU_64H_float2fix
            | FCVTZU_32S_float2fix
            | FCVTZU_64S_float2fix
            | FCVTZU_32D_float2fix
            | FCVTZU_64D_float2fix
            | FCVTZU_32H_float2int
            | FCVTZU_64H_float2int
            | FCVTZU_32S_float2int
            | FCVTZU_64S_float2int
            | FCVTZU_32D_float2int
            | FCVTZU_64D_float2int
            | FCVTZU_asisdshf_C
            | FCVTZU_asimdshf_C
            | FCVTZU_asisdmiscfp16_R
            | FCVTZU_asisdmisc_R
            | FCVTZU_asimdmiscfp16_R
            | FCVTZU_asimdmisc_R
            deriving (Eq, Read, Show)

data FDIV = FDIV_H_floatdp2
          | FDIV_S_floatdp2
          | FDIV_D_floatdp2
          | FDIV_asimdsamefp16_only
          | FDIV_asimdsame_only
          deriving (Eq, Read, Show)

data FJCVTZS = FJCVTZS_32D_float2int
             deriving (Eq, Read, Show)

data FMADD = FMADD_H_floatdp3
           | FMADD_S_floatdp3
           | FMADD_D_floatdp3
           deriving (Eq, Read, Show)

data FMAX = FMAX_H_floatdp2
          | FMAX_S_floatdp2
          | FMAX_D_floatdp2
          | FMAX_asimdsamefp16_only
          | FMAX_asimdsame_only
          deriving (Eq, Read, Show)

data FMAXNM = FMAXNM_H_floatdp2
            | FMAXNM_S_floatdp2
            | FMAXNM_D_floatdp2
            | FMAXNM_asimdsamefp16_only
            | FMAXNM_asimdsame_only
            deriving (Eq, Read, Show)

data FMAXNMP = FMAXNMP_asisdpair_only_H
             | FMAXNMP_asisdpair_only_SD
             | FMAXNMP_asimdsamefp16_only
             | FMAXNMP_asimdsame_only
             deriving (Eq, Read, Show)

data FMAXNMV = FMAXNMV_asimdall_only_H
             | FMAXNMV_asimdall_only_SD
             deriving (Eq, Read, Show)

data FMAXP = FMAXP_asisdpair_only_H
           | FMAXP_asisdpair_only_SD
           | FMAXP_asimdsamefp16_only
           | FMAXP_asimdsame_only
           deriving (Eq, Read, Show)

data FMAXV = FMAXV_asimdall_only_H
           | FMAXV_asimdall_only_SD
           deriving (Eq, Read, Show)

data FMIN = FMIN_H_floatdp2
          | FMIN_S_floatdp2
          | FMIN_D_floatdp2
          | FMIN_asimdsamefp16_only
          | FMIN_asimdsame_only
          deriving (Eq, Read, Show)

data FMINNM = FMINNM_H_floatdp2
            | FMINNM_S_floatdp2
            | FMINNM_D_floatdp2
            | FMINNM_asimdsamefp16_only
            | FMINNM_asimdsame_only
            deriving (Eq, Read, Show)

data FMINNMP = FMINNMP_asisdpair_only_H
             | FMINNMP_asisdpair_only_SD
             | FMINNMP_asimdsamefp16_only
             | FMINNMP_asimdsame_only
             deriving (Eq, Read, Show)

data FMINNMV = FMINNMV_asimdall_only_H
             | FMINNMV_asimdall_only_SD
             deriving (Eq, Read, Show)

data FMINP = FMINP_asisdpair_only_H
           | FMINP_asisdpair_only_SD
           | FMINP_asimdsamefp16_only
           | FMINP_asimdsame_only
           deriving (Eq, Read, Show)

data FMINV = FMINV_asimdall_only_H
           | FMINV_asimdall_only_SD
           deriving (Eq, Read, Show)

data FMLA = FMLA_asisdelem_RH_H
          | FMLA_asisdelem_R_SD
          | FMLA_asimdelem_RH_H
          | FMLA_asimdelem_R_SD
          | FMLA_asimdsamefp16_only
          | FMLA_asimdsame_only
          deriving (Eq, Read, Show)

data FMLS = FMLS_asisdelem_RH_H
          | FMLS_asisdelem_R_SD
          | FMLS_asimdelem_RH_H
          | FMLS_asimdelem_R_SD
          | FMLS_asimdsamefp16_only
          | FMLS_asimdsame_only
          deriving (Eq, Read, Show)

data FMOV = FMOV_32H_float2int
          | FMOV_64H_float2int
          | FMOV_H32_float2int
          | FMOV_S32_float2int
          | FMOV_32S_float2int
          | FMOV_H64_float2int
          | FMOV_D64_float2int
          | FMOV_V64I_float2int
          | FMOV_64D_float2int
          | FMOV_64VX_float2int
          | FMOV_H_floatdp1
          | FMOV_S_floatdp1
          | FMOV_D_floatdp1
          | FMOV_H_floatimm
          | FMOV_S_floatimm
          | FMOV_D_floatimm
          | FMOV_asimdimm_H_h
          | FMOV_asimdimm_S_s
          | FMOV_asimdimm_D2_d
          deriving (Eq, Read, Show)

data FMSUB = FMSUB_H_floatdp3
           | FMSUB_S_floatdp3
           | FMSUB_D_floatdp3
           deriving (Eq, Read, Show)

data FMUL = FMUL_asisdelem_RH_H
          | FMUL_asisdelem_R_SD
          | FMUL_asimdelem_RH_H
          | FMUL_asimdelem_R_SD
          | FMUL_H_floatdp2
          | FMUL_S_floatdp2
          | FMUL_D_floatdp2
          | FMUL_asimdsamefp16_only
          | FMUL_asimdsame_only
          deriving (Eq, Read, Show)

data FMULX = FMULX_asisdsamefp16_only
           | FMULX_asisdsame_only
           | FMULX_asimdsamefp16_only
           | FMULX_asimdsame_only
           | FMULX_asisdelem_RH_H
           | FMULX_asisdelem_R_SD
           | FMULX_asimdelem_RH_H
           | FMULX_asimdelem_R_SD
           deriving (Eq, Read, Show)

data FNEG = FNEG_H_floatdp1
          | FNEG_S_floatdp1
          | FNEG_D_floatdp1
          | FNEG_asimdmiscfp16_R
          | FNEG_asimdmisc_R
          deriving (Eq, Read, Show)

data FNMADD = FNMADD_H_floatdp3
            | FNMADD_S_floatdp3
            | FNMADD_D_floatdp3
            deriving (Eq, Read, Show)

data FNMSUB = FNMSUB_H_floatdp3
            | FNMSUB_S_floatdp3
            | FNMSUB_D_floatdp3
            deriving (Eq, Read, Show)

data FNMUL = FNMUL_H_floatdp2
           | FNMUL_S_floatdp2
           | FNMUL_D_floatdp2
           deriving (Eq, Read, Show)

data FRECPE = FRECPE_asisdmiscfp16_R
            | FRECPE_asisdmisc_R
            | FRECPE_asimdmiscfp16_R
            | FRECPE_asimdmisc_R
            deriving (Eq, Read, Show)

data FRECPS = FRECPS_asisdsamefp16_only
            | FRECPS_asisdsame_only
            | FRECPS_asimdsamefp16_only
            | FRECPS_asimdsame_only
            deriving (Eq, Read, Show)

data FRECPX = FRECPX_asisdmiscfp16_R
            | FRECPX_asisdmisc_R
            deriving (Eq, Read, Show)

data FRINTA = FRINTA_H_floatdp1
            | FRINTA_S_floatdp1
            | FRINTA_D_floatdp1
            | FRINTA_asimdmiscfp16_R
            | FRINTA_asimdmisc_R
            deriving (Eq, Read, Show)

data FRINTI = FRINTI_H_floatdp1
            | FRINTI_S_floatdp1
            | FRINTI_D_floatdp1
            | FRINTI_asimdmiscfp16_R
            | FRINTI_asimdmisc_R
            deriving (Eq, Read, Show)

data FRINTM = FRINTM_H_floatdp1
            | FRINTM_S_floatdp1
            | FRINTM_D_floatdp1
            | FRINTM_asimdmiscfp16_R
            | FRINTM_asimdmisc_R
            deriving (Eq, Read, Show)

data FRINTN = FRINTN_H_floatdp1
            | FRINTN_S_floatdp1
            | FRINTN_D_floatdp1
            | FRINTN_asimdmiscfp16_R
            | FRINTN_asimdmisc_R
            deriving (Eq, Read, Show)

data FRINTP = FRINTP_H_floatdp1
            | FRINTP_S_floatdp1
            | FRINTP_D_floatdp1
            | FRINTP_asimdmiscfp16_R
            | FRINTP_asimdmisc_R
            deriving (Eq, Read, Show)

data FRINTX = FRINTX_H_floatdp1
            | FRINTX_S_floatdp1
            | FRINTX_D_floatdp1
            | FRINTX_asimdmiscfp16_R
            | FRINTX_asimdmisc_R
            deriving (Eq, Read, Show)

data FRINTZ = FRINTZ_H_floatdp1
            | FRINTZ_S_floatdp1
            | FRINTZ_D_floatdp1
            | FRINTZ_asimdmiscfp16_R
            | FRINTZ_asimdmisc_R
            deriving (Eq, Read, Show)

data FRSQRTE = FRSQRTE_asisdmiscfp16_R
             | FRSQRTE_asisdmisc_R
             | FRSQRTE_asimdmiscfp16_R
             | FRSQRTE_asimdmisc_R
             deriving (Eq, Read, Show)

data FRSQRTS = FRSQRTS_asisdsamefp16_only
             | FRSQRTS_asisdsame_only
             | FRSQRTS_asimdsamefp16_only
             | FRSQRTS_asimdsame_only
             deriving (Eq, Read, Show)

data FSQRT = FSQRT_H_floatdp1
           | FSQRT_S_floatdp1
           | FSQRT_D_floatdp1
           | FSQRT_asimdmiscfp16_R
           | FSQRT_asimdmisc_R
           deriving (Eq, Read, Show)

data FSUB = FSUB_H_floatdp2
          | FSUB_S_floatdp2
          | FSUB_D_floatdp2
          | FSUB_asimdsamefp16_only
          | FSUB_asimdsame_only
          deriving (Eq, Read, Show)

data HINT = HINT_1
          | HINT_2
          | HINT_3
          deriving (Eq, Read, Show)

data HLT = HLT_EX_exception
         deriving (Eq, Read, Show)

data HVC = HVC_EX_exception
         deriving (Eq, Read, Show)

data INS = INS_asimdins_IV_v
         | INS_asimdins_IR_r
         deriving (Eq, Read, Show)

data ISB = ISB_BI_system
         deriving (Eq, Read, Show)

data LD1 = LD1_asisdlse_R1_1v
         | LD1_asisdlse_R2_2v
         | LD1_asisdlse_R3_3v
         | LD1_asisdlse_R4_4v
         | LD1_asisdlsep_I1_i1
         | LD1_asisdlsep_R1_r1
         | LD1_asisdlsep_I2_i2
         | LD1_asisdlsep_R2_r2
         | LD1_asisdlsep_I3_i3
         | LD1_asisdlsep_R3_r3
         | LD1_asisdlsep_I4_i4
         | LD1_asisdlsep_R4_r4
         | LD1_asisdlso_B1_1b
         | LD1_asisdlso_H1_1h
         | LD1_asisdlso_S1_1s
         | LD1_asisdlso_D1_1d
         | LD1_asisdlsop_B1_i1b
         | LD1_asisdlsop_BX1_r1b
         | LD1_asisdlsop_H1_i1h
         | LD1_asisdlsop_HX1_r1h
         | LD1_asisdlsop_S1_i1s
         | LD1_asisdlsop_SX1_r1s
         | LD1_asisdlsop_D1_i1d
         | LD1_asisdlsop_DX1_r1d
         deriving (Eq, Read, Show)

data LD1R = LD1R_asisdlso_R1
          | LD1R_asisdlsop_R1_i
          | LD1R_asisdlsop_RX1_r
          deriving (Eq, Read, Show)

data LD2 = LD2_asisdlse_R2
         | LD2_asisdlsep_I2_i
         | LD2_asisdlsep_R2_r
         | LD2_asisdlso_B2_2b
         | LD2_asisdlso_H2_2h
         | LD2_asisdlso_S2_2s
         | LD2_asisdlso_D2_2d
         | LD2_asisdlsop_B2_i2b
         | LD2_asisdlsop_BX2_r2b
         | LD2_asisdlsop_H2_i2h
         | LD2_asisdlsop_HX2_r2h
         | LD2_asisdlsop_S2_i2s
         | LD2_asisdlsop_SX2_r2s
         | LD2_asisdlsop_D2_i2d
         | LD2_asisdlsop_DX2_r2d
         deriving (Eq, Read, Show)

data LD2R = LD2R_asisdlso_R2
          | LD2R_asisdlsop_R2_i
          | LD2R_asisdlsop_RX2_r
          deriving (Eq, Read, Show)

data LD3 = LD3_asisdlse_R3
         | LD3_asisdlsep_I3_i
         | LD3_asisdlsep_R3_r
         | LD3_asisdlso_B3_3b
         | LD3_asisdlso_H3_3h
         | LD3_asisdlso_S3_3s
         | LD3_asisdlso_D3_3d
         | LD3_asisdlsop_B3_i3b
         | LD3_asisdlsop_BX3_r3b
         | LD3_asisdlsop_H3_i3h
         | LD3_asisdlsop_HX3_r3h
         | LD3_asisdlsop_S3_i3s
         | LD3_asisdlsop_SX3_r3s
         | LD3_asisdlsop_D3_i3d
         | LD3_asisdlsop_DX3_r3d
         deriving (Eq, Read, Show)

data LD3R = LD3R_asisdlso_R3
          | LD3R_asisdlsop_R3_i
          | LD3R_asisdlsop_RX3_r
          deriving (Eq, Read, Show)

data LD4 = LD4_asisdlse_R4
         | LD4_asisdlsep_I4_i
         | LD4_asisdlsep_R4_r
         | LD4_asisdlso_B4_4b
         | LD4_asisdlso_H4_4h
         | LD4_asisdlso_S4_4s
         | LD4_asisdlso_D4_4d
         | LD4_asisdlsop_B4_i4b
         | LD4_asisdlsop_BX4_r4b
         | LD4_asisdlsop_H4_i4h
         | LD4_asisdlsop_HX4_r4h
         | LD4_asisdlsop_S4_i4s
         | LD4_asisdlsop_SX4_r4s
         | LD4_asisdlsop_D4_i4d
         | LD4_asisdlsop_DX4_r4d
         deriving (Eq, Read, Show)

data LD4R = LD4R_asisdlso_R4
          | LD4R_asisdlsop_R4_i
          | LD4R_asisdlsop_RX4_r
          deriving (Eq, Read, Show)

data LDADD = LDADD_32_memop
           | LDADD_64_memop
           deriving (Eq, Read, Show)

data LDADDA = LDADDA_32_memop
            | LDADDA_64_memop
            deriving (Eq, Read, Show)

data LDADDAB = LDADDAB_32_memop
             deriving (Eq, Read, Show)

data LDADDAH = LDADDAH_32_memop
             deriving (Eq, Read, Show)

data LDADDAL = LDADDAL_32_memop
             | LDADDAL_64_memop
             deriving (Eq, Read, Show)

data LDADDALB = LDADDALB_32_memop
              deriving (Eq, Read, Show)

data LDADDALH = LDADDALH_32_memop
              deriving (Eq, Read, Show)

data LDADDB = LDADDB_32_memop
            deriving (Eq, Read, Show)

data LDADDH = LDADDH_32_memop
            deriving (Eq, Read, Show)

data LDADDL = LDADDL_32_memop
            | LDADDL_64_memop
            deriving (Eq, Read, Show)

data LDADDLB = LDADDLB_32_memop
             deriving (Eq, Read, Show)

data LDADDLH = LDADDLH_32_memop
             deriving (Eq, Read, Show)

data LDAPR = LDAPR_32L_memop
           | LDAPR_64L_memop
           deriving (Eq, Read, Show)

data LDAPRB = LDAPRB_32L_memop
            deriving (Eq, Read, Show)

data LDAPRH = LDAPRH_32L_memop
            deriving (Eq, Read, Show)

data LDAR = LDAR_LR32_ldstexcl
          | LDAR_LR64_ldstexcl
          deriving (Eq, Read, Show)

data LDARB = LDARB_LR32_ldstexcl
           deriving (Eq, Read, Show)

data LDARH = LDARH_LR32_ldstexcl
           deriving (Eq, Read, Show)

data LDAXP = LDAXP_LP32_ldstexcl
           | LDAXP_LP64_ldstexcl
           deriving (Eq, Read, Show)

data LDAXR = LDAXR_LR32_ldstexcl
           | LDAXR_LR64_ldstexcl
           deriving (Eq, Read, Show)

data LDAXRB = LDAXRB_LR32_ldstexcl
            deriving (Eq, Read, Show)

data LDAXRH = LDAXRH_LR32_ldstexcl
            deriving (Eq, Read, Show)

data LDCLR = LDCLR_32_memop
           | LDCLR_64_memop
           deriving (Eq, Read, Show)

data LDCLRA = LDCLRA_32_memop
            | LDCLRA_64_memop
            deriving (Eq, Read, Show)

data LDCLRAB = LDCLRAB_32_memop
             deriving (Eq, Read, Show)

data LDCLRAH = LDCLRAH_32_memop
             deriving (Eq, Read, Show)

data LDCLRAL = LDCLRAL_32_memop
             | LDCLRAL_64_memop
             deriving (Eq, Read, Show)

data LDCLRALB = LDCLRALB_32_memop
              deriving (Eq, Read, Show)

data LDCLRALH = LDCLRALH_32_memop
              deriving (Eq, Read, Show)

data LDCLRB = LDCLRB_32_memop
            deriving (Eq, Read, Show)

data LDCLRH = LDCLRH_32_memop
            deriving (Eq, Read, Show)

data LDCLRL = LDCLRL_32_memop
            | LDCLRL_64_memop
            deriving (Eq, Read, Show)

data LDCLRLB = LDCLRLB_32_memop
             deriving (Eq, Read, Show)

data LDCLRLH = LDCLRLH_32_memop
             deriving (Eq, Read, Show)

data LDEOR = LDEOR_32_memop
           | LDEOR_64_memop
           deriving (Eq, Read, Show)

data LDEORA = LDEORA_32_memop
            | LDEORA_64_memop
            deriving (Eq, Read, Show)

data LDEORAB = LDEORAB_32_memop
             deriving (Eq, Read, Show)

data LDEORAH = LDEORAH_32_memop
             deriving (Eq, Read, Show)

data LDEORAL = LDEORAL_32_memop
             | LDEORAL_64_memop
             deriving (Eq, Read, Show)

data LDEORALB = LDEORALB_32_memop
              deriving (Eq, Read, Show)

data LDEORALH = LDEORALH_32_memop
              deriving (Eq, Read, Show)

data LDEORB = LDEORB_32_memop
            deriving (Eq, Read, Show)

data LDEORH = LDEORH_32_memop
            deriving (Eq, Read, Show)

data LDEORL = LDEORL_32_memop
            | LDEORL_64_memop
            deriving (Eq, Read, Show)

data LDEORLB = LDEORLB_32_memop
             deriving (Eq, Read, Show)

data LDEORLH = LDEORLH_32_memop
             deriving (Eq, Read, Show)

data LDLAR = LDLAR_LR32_ldstexcl
           | LDLAR_LR64_ldstexcl
           deriving (Eq, Read, Show)

data LDLARB = LDLARB_LR32_ldstexcl
            deriving (Eq, Read, Show)

data LDLARH = LDLARH_LR32_ldstexcl
            deriving (Eq, Read, Show)

data LDNP = LDNP_32_ldstnapair_offs
          | LDNP_64_ldstnapair_offs Xn Xn XnSP (I 7)
          | LDNP_S_ldstnapair_offs
          | LDNP_D_ldstnapair_offs
          | LDNP_Q_ldstnapair_offs
          deriving (Eq, Read, Show)

data LDP = LDP_32_ldstpair_post
         | LDP_64_ldstpair_post
         | LDP_32_ldstpair_pre
         | LDP_64_ldstpair_pre Xn Xn XnSP (I 7)
         | LDP_32_ldstpair_off
         | LDP_64_ldstpair_off Xn Xn XnSP (I 7)
         | LDP_S_ldstpair_post
         | LDP_D_ldstpair_post
         | LDP_Q_ldstpair_post
         | LDP_S_ldstpair_pre
         | LDP_D_ldstpair_pre
         | LDP_Q_ldstpair_pre
         | LDP_S_ldstpair_off
         | LDP_D_ldstpair_off
         | LDP_Q_ldstpair_off
         deriving (Eq, Read, Show)

data LDPSW = LDPSW_64_ldstpair_post
           | LDPSW_64_ldstpair_pre Xn Xn XnSP (I 7)
           | LDPSW_64_ldstpair_off Xn Xn XnSP (I 7)
           deriving (Eq, Read, Show)

data LDR = LDR_32_ldst_immpost
         | LDR_64_ldst_immpost
         | LDR_32_ldst_immpre
         | LDR_64_ldst_immpre
         | LDR_32_ldst_pos
         | LDR_64_ldst_pos Xn XnSP (W 12)
         | LDR_32_loadlit
         | LDR_64_loadlit
         | LDR_32_ldst_regoff
         | LDR_64_ldst_regoff
         | LDR_B_ldst_immpost
         | LDR_H_ldst_immpost
         | LDR_S_ldst_immpost
         | LDR_D_ldst_immpost
         | LDR_Q_ldst_immpost
         | LDR_B_ldst_immpre
         | LDR_H_ldst_immpre
         | LDR_S_ldst_immpre
         | LDR_D_ldst_immpre
         | LDR_Q_ldst_immpre
         | LDR_B_ldst_pos
         | LDR_H_ldst_pos
         | LDR_S_ldst_pos
         | LDR_D_ldst_pos
         | LDR_Q_ldst_pos
         | LDR_S_loadlit
         | LDR_D_loadlit
         | LDR_Q_loadlit
         | LDR_B_ldst_regoff
         | LDR_BL_ldst_regoff
         | LDR_H_ldst_regoff
         | LDR_S_ldst_regoff
         | LDR_D_ldst_regoff
         | LDR_Q_ldst_regoff
         deriving (Eq, Read, Show)

data LDRAA = LDRAA_64_ldst_pac
           | LDRAA_64W_ldst_pac
           deriving (Eq, Read, Show)

data LDRAB = LDRAB_64_ldst_pac
           | LDRAB_64W_ldst_pac
           deriving (Eq, Read, Show)

data LDRB = LDRB_32_ldst_immpost
          | LDRB_32_ldst_immpre
          | LDRB_32_ldst_pos
          | LDRB_32B_ldst_regoff
          | LDRB_32BL_ldst_regoff
          deriving (Eq, Read, Show)

data LDRH = LDRH_32_ldst_immpost
          | LDRH_32_ldst_immpre
          | LDRH_32_ldst_pos
          | LDRH_32_ldst_regoff
          deriving (Eq, Read, Show)

data LDRSB = LDRSB_32_ldst_immpost
           | LDRSB_64_ldst_immpost
           | LDRSB_32_ldst_immpre
           | LDRSB_64_ldst_immpre
           | LDRSB_32_ldst_pos
           | LDRSB_64_ldst_pos Xn XnSP (W 12)
           | LDRSB_32B_ldst_regoff
           | LDRSB_32BL_ldst_regoff
           | LDRSB_64B_ldst_regoff
           | LDRSB_64BL_ldst_regoff
           deriving (Eq, Read, Show)

data LDRSH = LDRSH_32_ldst_immpost
           | LDRSH_64_ldst_immpost
           | LDRSH_32_ldst_immpre
           | LDRSH_64_ldst_immpre
           | LDRSH_32_ldst_pos
           | LDRSH_64_ldst_pos Xn XnSP (W 12)
           | LDRSH_32_ldst_regoff
           | LDRSH_64_ldst_regoff
           deriving (Eq, Read, Show)

data LDRSW = LDRSW_64_ldst_immpost
           | LDRSW_64_ldst_immpre
           | LDRSW_64_ldst_pos Xn XnSP (W 12)
           | LDRSW_64_loadlit
           | LDRSW_64_ldst_regoff
           deriving (Eq, Read, Show)

data LDSET = LDSET_32_memop
           | LDSET_64_memop
           deriving (Eq, Read, Show)

data LDSETA = LDSETA_32_memop
            | LDSETA_64_memop
            deriving (Eq, Read, Show)

data LDSETAB = LDSETAB_32_memop
             deriving (Eq, Read, Show)

data LDSETAH = LDSETAH_32_memop
             deriving (Eq, Read, Show)

data LDSETAL = LDSETAL_32_memop
             | LDSETAL_64_memop
             deriving (Eq, Read, Show)

data LDSETALB = LDSETALB_32_memop
              deriving (Eq, Read, Show)

data LDSETALH = LDSETALH_32_memop
              deriving (Eq, Read, Show)

data LDSETB = LDSETB_32_memop
            deriving (Eq, Read, Show)

data LDSETH = LDSETH_32_memop
            deriving (Eq, Read, Show)

data LDSETL = LDSETL_32_memop
            | LDSETL_64_memop
            deriving (Eq, Read, Show)

data LDSETLB = LDSETLB_32_memop
             deriving (Eq, Read, Show)

data LDSETLH = LDSETLH_32_memop
             deriving (Eq, Read, Show)

data LDSMAX = LDSMAX_32_memop
            | LDSMAX_64_memop
            deriving (Eq, Read, Show)

data LDSMAXA = LDSMAXA_32_memop
             | LDSMAXA_64_memop
             deriving (Eq, Read, Show)

data LDSMAXAB = LDSMAXAB_32_memop
              deriving (Eq, Read, Show)

data LDSMAXAH = LDSMAXAH_32_memop
              deriving (Eq, Read, Show)

data LDSMAXAL = LDSMAXAL_32_memop
              | LDSMAXAL_64_memop
              deriving (Eq, Read, Show)

data LDSMAXALB = LDSMAXALB_32_memop
               deriving (Eq, Read, Show)

data LDSMAXALH = LDSMAXALH_32_memop
               deriving (Eq, Read, Show)

data LDSMAXB = LDSMAXB_32_memop
             deriving (Eq, Read, Show)

data LDSMAXH = LDSMAXH_32_memop
             deriving (Eq, Read, Show)

data LDSMAXL = LDSMAXL_32_memop
             | LDSMAXL_64_memop
             deriving (Eq, Read, Show)

data LDSMAXLB = LDSMAXLB_32_memop
              deriving (Eq, Read, Show)

data LDSMAXLH = LDSMAXLH_32_memop
              deriving (Eq, Read, Show)

data LDSMIN = LDSMIN_32_memop
            | LDSMIN_64_memop
            deriving (Eq, Read, Show)

data LDSMINA = LDSMINA_32_memop
             | LDSMINA_64_memop
             deriving (Eq, Read, Show)

data LDSMINAB = LDSMINAB_32_memop
              deriving (Eq, Read, Show)

data LDSMINAH = LDSMINAH_32_memop
              deriving (Eq, Read, Show)

data LDSMINAL = LDSMINAL_32_memop
              | LDSMINAL_64_memop
              deriving (Eq, Read, Show)

data LDSMINALB = LDSMINALB_32_memop
               deriving (Eq, Read, Show)

data LDSMINALH = LDSMINALH_32_memop
               deriving (Eq, Read, Show)

data LDSMINB = LDSMINB_32_memop
             deriving (Eq, Read, Show)

data LDSMINH = LDSMINH_32_memop
             deriving (Eq, Read, Show)

data LDSMINL = LDSMINL_32_memop
             | LDSMINL_64_memop
             deriving (Eq, Read, Show)

data LDSMINLB = LDSMINLB_32_memop
              deriving (Eq, Read, Show)

data LDSMINLH = LDSMINLH_32_memop
              deriving (Eq, Read, Show)

data LDTR = LDTR_32_ldst_unpriv
          | LDTR_64_ldst_unpriv
          deriving (Eq, Read, Show)

data LDTRB = LDTRB_32_ldst_unpriv
           deriving (Eq, Read, Show)

data LDTRH = LDTRH_32_ldst_unpriv
           deriving (Eq, Read, Show)

data LDTRSB = LDTRSB_32_ldst_unpriv
            | LDTRSB_64_ldst_unpriv
            deriving (Eq, Read, Show)

data LDTRSH = LDTRSH_32_ldst_unpriv
            | LDTRSH_64_ldst_unpriv
            deriving (Eq, Read, Show)

data LDTRSW = LDTRSW_64_ldst_unpriv
            deriving (Eq, Read, Show)

data LDUMAX = LDUMAX_32_memop
            | LDUMAX_64_memop
            deriving (Eq, Read, Show)

data LDUMAXA = LDUMAXA_32_memop
             | LDUMAXA_64_memop
             deriving (Eq, Read, Show)

data LDUMAXAB = LDUMAXAB_32_memop
              deriving (Eq, Read, Show)

data LDUMAXAH = LDUMAXAH_32_memop
              deriving (Eq, Read, Show)

data LDUMAXAL = LDUMAXAL_32_memop
              | LDUMAXAL_64_memop
              deriving (Eq, Read, Show)

data LDUMAXALB = LDUMAXALB_32_memop
               deriving (Eq, Read, Show)

data LDUMAXALH = LDUMAXALH_32_memop
               deriving (Eq, Read, Show)

data LDUMAXB = LDUMAXB_32_memop
             deriving (Eq, Read, Show)

data LDUMAXH = LDUMAXH_32_memop
             deriving (Eq, Read, Show)

data LDUMAXL = LDUMAXL_32_memop
             | LDUMAXL_64_memop
             deriving (Eq, Read, Show)

data LDUMAXLB = LDUMAXLB_32_memop
              deriving (Eq, Read, Show)

data LDUMAXLH = LDUMAXLH_32_memop
              deriving (Eq, Read, Show)

data LDUMIN = LDUMIN_32_memop
            | LDUMIN_64_memop
            deriving (Eq, Read, Show)

data LDUMINA = LDUMINA_32_memop
             | LDUMINA_64_memop
             deriving (Eq, Read, Show)

data LDUMINAB = LDUMINAB_32_memop
              deriving (Eq, Read, Show)

data LDUMINAH = LDUMINAH_32_memop
              deriving (Eq, Read, Show)

data LDUMINAL = LDUMINAL_32_memop
              | LDUMINAL_64_memop
              deriving (Eq, Read, Show)

data LDUMINALB = LDUMINALB_32_memop
               deriving (Eq, Read, Show)

data LDUMINALH = LDUMINALH_32_memop
               deriving (Eq, Read, Show)

data LDUMINB = LDUMINB_32_memop
             deriving (Eq, Read, Show)

data LDUMINH = LDUMINH_32_memop
             deriving (Eq, Read, Show)

data LDUMINL = LDUMINL_32_memop
             | LDUMINL_64_memop
             deriving (Eq, Read, Show)

data LDUMINLB = LDUMINLB_32_memop
              deriving (Eq, Read, Show)

data LDUMINLH = LDUMINLH_32_memop
              deriving (Eq, Read, Show)

data LDUR = LDUR_32_ldst_unscaled
          | LDUR_64_ldst_unscaled
          | LDUR_B_ldst_unscaled
          | LDUR_H_ldst_unscaled
          | LDUR_S_ldst_unscaled
          | LDUR_D_ldst_unscaled
          | LDUR_Q_ldst_unscaled
          deriving (Eq, Read, Show)

data LDURB = LDURB_32_ldst_unscaled
           deriving (Eq, Read, Show)

data LDURH = LDURH_32_ldst_unscaled
           deriving (Eq, Read, Show)

data LDURSB = LDURSB_32_ldst_unscaled
            | LDURSB_64_ldst_unscaled
            deriving (Eq, Read, Show)

data LDURSH = LDURSH_32_ldst_unscaled
            | LDURSH_64_ldst_unscaled
            deriving (Eq, Read, Show)

data LDURSW = LDURSW_64_ldst_unscaled
            deriving (Eq, Read, Show)

data LDXP = LDXP_LP32_ldstexcl
          | LDXP_LP64_ldstexcl
          deriving (Eq, Read, Show)

data LDXR = LDXR_LR32_ldstexcl
          | LDXR_LR64_ldstexcl
          deriving (Eq, Read, Show)

data LDXRB = LDXRB_LR32_ldstexcl
           deriving (Eq, Read, Show)

data LDXRH = LDXRH_LR32_ldstexcl
           deriving (Eq, Read, Show)

data LSLV = LSLV_32_dp_2src
          | LSLV_64_dp_2src
          deriving (Eq, Read, Show)

data LSRV = LSRV_32_dp_2src
          | LSRV_64_dp_2src
          deriving (Eq, Read, Show)

data MADD = MADD_32A_dp_3src
          | MADD_64A_dp_3src
          deriving (Eq, Read, Show)

data MLA = MLA_asimdelem_R
         | MLA_asimdsame_only
         deriving (Eq, Read, Show)

data MLS = MLS_asimdelem_R
         | MLS_asimdsame_only
         deriving (Eq, Read, Show)

data MOVI = MOVI_asimdimm_N_b
          | MOVI_asimdimm_L_hl
          | MOVI_asimdimm_L_sl
          | MOVI_asimdimm_M_sm
          | MOVI_asimdimm_D_ds
          | MOVI_asimdimm_D2_d
          deriving (Eq, Read, Show)

data MOVK = MOVK_32_movewide
          | MOVK_64_movewide
          deriving (Eq, Read, Show)

data MOVN = MOVN_32_movewide
          | MOVN_64_movewide
          deriving (Eq, Read, Show)

data MOVZ = MOVZ_32_movewide
          | MOVZ_64_movewide
          deriving (Eq, Read, Show)

data MRS = MRS_RS_system
         deriving (Eq, Read, Show)

data MSR = MSR_SI_system
         | MSR_SR_system
         deriving (Eq, Read, Show)

data MSUB = MSUB_32A_dp_3src
          | MSUB_64A_dp_3src
          deriving (Eq, Read, Show)

data MUL = MUL_asimdelem_R
         | MUL_asimdsame_only
         deriving (Eq, Read, Show)

data MVNI = MVNI_asimdimm_L_hl
          | MVNI_asimdimm_L_sl
          | MVNI_asimdimm_M_sm
          deriving (Eq, Read, Show)

data NEG = NEG_asisdmisc_R
         | NEG_asimdmisc_R
         deriving (Eq, Read, Show)

data NOP = NOP_HI_system
         deriving (Eq, Read, Show)

data NOT = NOT_asimdmisc_R
         deriving (Eq, Read, Show)

data ORN = ORN_32_log_shift Wn Wn Wn Shift32
         | ORN_64_log_shift
         | ORN_asimdsame_only
         deriving (Eq, Read, Show)

data ORR = ORR_32_log_imm
         | ORR_64_log_imm
         | ORR_32_log_shift Wn Wn Wn Shift32
         | ORR_64_log_shift
         | ORR_asimdimm_L_hl
         | ORR_asimdimm_L_sl
         | ORR_asimdsame_only
         deriving (Eq, Read, Show)

data PACDA = PACDA_64P_dp_1src
           deriving (Eq, Read, Show)

data PACDB = PACDB_64P_dp_1src
           deriving (Eq, Read, Show)

data PACDZA = PACDZA_64Z_dp_1src
            deriving (Eq, Read, Show)

data PACDZB = PACDZB_64Z_dp_1src
            deriving (Eq, Read, Show)

data PACGA = PACGA_64P_dp_2src
           deriving (Eq, Read, Show)

data PACIA = PACIA_64P_dp_1src
           deriving (Eq, Read, Show)

data PACIA1716 = PACIA1716_HI_system
               deriving (Eq, Read, Show)

data PACIASP = PACIASP_HI_system
             deriving (Eq, Read, Show)

data PACIAZ = PACIAZ_HI_system
            deriving (Eq, Read, Show)

data PACIB = PACIB_64P_dp_1src
           deriving (Eq, Read, Show)

data PACIB1716 = PACIB1716_HI_system
               deriving (Eq, Read, Show)

data PACIBSP = PACIBSP_HI_system
             deriving (Eq, Read, Show)

data PACIBZ = PACIBZ_HI_system
            deriving (Eq, Read, Show)

data PACIZA = PACIZA_64Z_dp_1src
            deriving (Eq, Read, Show)

data PACIZB = PACIZB_64Z_dp_1src
            deriving (Eq, Read, Show)

data PMUL = PMUL_asimdsame_only
          deriving (Eq, Read, Show)

data PMULL = PMULL_asimddiff_L
           deriving (Eq, Read, Show)

data PRFM = PRFM_P_ldst_pos
          | PRFM_P_loadlit
          | PRFM_P_ldst_regoff
          deriving (Eq, Read, Show)

data PRFUM = PRFUM_P_ldst_unscaled
           deriving (Eq, Read, Show)

data PSB = PSB_HC_system
         deriving (Eq, Read, Show)

data RADDHN = RADDHN_asimddiff_N
            deriving (Eq, Read, Show)

data RAX1 = RAX1_VVV2_cryptosha512_3
          deriving (Eq, Read, Show)

data RBIT = RBIT_32_dp_1src
          | RBIT_64_dp_1src
          | RBIT_asimdmisc_R
          deriving (Eq, Read, Show)

data RET = RET_64R_branch_reg
         deriving (Eq, Read, Show)

data RETAA = RETAA_64E_branch_reg
           deriving (Eq, Read, Show)

data RETAB = RETAB_64E_branch_reg
           deriving (Eq, Read, Show)

data REV = REV_32_dp_1src
         | REV_64_dp_1src
         deriving (Eq, Read, Show)

data REV16 = REV16_32_dp_1src
           | REV16_64_dp_1src
           | REV16_asimdmisc_R
           deriving (Eq, Read, Show)

data REV32 = REV32_64_dp_1src
           | REV32_asimdmisc_R
           deriving (Eq, Read, Show)

data REV64 = REV64_asimdmisc_R
           deriving (Eq, Read, Show)

data RORV = RORV_32_dp_2src
          | RORV_64_dp_2src
          deriving (Eq, Read, Show)

data RSHRN = RSHRN_asimdshf_N
           deriving (Eq, Read, Show)

data RSUBHN = RSUBHN_asimddiff_N
            deriving (Eq, Read, Show)

data SABA = SABA_asimdsame_only
          deriving (Eq, Read, Show)

data SABAL = SABAL_asimddiff_L
           deriving (Eq, Read, Show)

data SABD = SABD_asimdsame_only
          deriving (Eq, Read, Show)

data SABDL = SABDL_asimddiff_L
           deriving (Eq, Read, Show)

data SADALP = SADALP_asimdmisc_P
            deriving (Eq, Read, Show)

data SADDL = SADDL_asimddiff_L
           deriving (Eq, Read, Show)

data SADDLP = SADDLP_asimdmisc_P
            deriving (Eq, Read, Show)

data SADDLV = SADDLV_asimdall_only
            deriving (Eq, Read, Show)

data SADDW = SADDW_asimddiff_W
           deriving (Eq, Read, Show)

data SBC = SBC_32_addsub_carry
         | SBC_64_addsub_carry
         deriving (Eq, Read, Show)

data SBCS = SBCS_32_addsub_carry
          | SBCS_64_addsub_carry
          deriving (Eq, Read, Show)

data SBFM = SBFM_32M_bitfield
          | SBFM_64M_bitfield
          deriving (Eq, Read, Show)

data SCVTF = SCVTF_H32_float2fix
           | SCVTF_S32_float2fix
           | SCVTF_D32_float2fix
           | SCVTF_H64_float2fix
           | SCVTF_S64_float2fix
           | SCVTF_D64_float2fix
           | SCVTF_H32_float2int
           | SCVTF_S32_float2int
           | SCVTF_D32_float2int
           | SCVTF_H64_float2int
           | SCVTF_S64_float2int
           | SCVTF_D64_float2int
           | SCVTF_asisdshf_C
           | SCVTF_asimdshf_C
           | SCVTF_asisdmiscfp16_R
           | SCVTF_asisdmisc_R
           | SCVTF_asimdmiscfp16_R
           | SCVTF_asimdmisc_R
           deriving (Eq, Read, Show)

data SDIV = SDIV_32_dp_2src
          | SDIV_64_dp_2src
          deriving (Eq, Read, Show)

data SDOT = SDOT_asimdelem_D
          | SDOT_asimdsame2_D
          deriving (Eq, Read, Show)

data SEV = SEV_HI_system
         deriving (Eq, Read, Show)

data SEVL = SEVL_HI_system
          deriving (Eq, Read, Show)

data SHA1C = SHA1C_QSV_cryptosha3
           deriving (Eq, Read, Show)

data SHA1H = SHA1H_SS_cryptosha2
           deriving (Eq, Read, Show)

data SHA1M = SHA1M_QSV_cryptosha3
           deriving (Eq, Read, Show)

data SHA1P = SHA1P_QSV_cryptosha3
           deriving (Eq, Read, Show)

data SHA1SU0 = SHA1SU0_VVV_cryptosha3
             deriving (Eq, Read, Show)

data SHA1SU1 = SHA1SU1_VV_cryptosha2
             deriving (Eq, Read, Show)

data SHA256H = SHA256H_QQV_cryptosha3
             deriving (Eq, Read, Show)

data SHA256H2 = SHA256H2_QQV_cryptosha3
              deriving (Eq, Read, Show)

data SHA256SU0 = SHA256SU0_VV_cryptosha2
               deriving (Eq, Read, Show)

data SHA256SU1 = SHA256SU1_VVV_cryptosha3
               deriving (Eq, Read, Show)

data SHA512H = SHA512H_QQV_cryptosha512_3
             deriving (Eq, Read, Show)

data SHA512H2 = SHA512H2_QQV_cryptosha512_3
              deriving (Eq, Read, Show)

data SHA512SU0 = SHA512SU0_VV2_cryptosha512_2
               deriving (Eq, Read, Show)

data SHA512SU1 = SHA512SU1_VVV2_cryptosha512_3
               deriving (Eq, Read, Show)

data SHADD = SHADD_asimdsame_only
           deriving (Eq, Read, Show)

data SHL = SHL_asisdshf_R
         | SHL_asimdshf_R
         deriving (Eq, Read, Show)

data SHLL = SHLL_asimdmisc_S
          deriving (Eq, Read, Show)

data SHRN = SHRN_asimdshf_N
          deriving (Eq, Read, Show)

data SHSUB = SHSUB_asimdsame_only
           deriving (Eq, Read, Show)

data SLI = SLI_asisdshf_R
         | SLI_asimdshf_R
         deriving (Eq, Read, Show)

data SM3PARTW1 = SM3PARTW1_VVV4_cryptosha512_3
               deriving (Eq, Read, Show)

data SM3PARTW2 = SM3PARTW2_VVV4_cryptosha512_3
               deriving (Eq, Read, Show)

data SM3SS1 = SM3SS1_VVV4_crypto4
            deriving (Eq, Read, Show)

data SM3TT1A = SM3TT1A_VVV4_crypto3_imm2
             deriving (Eq, Read, Show)

data SM3TT1B = SM3TT1B_VVV4_crypto3_imm2
             deriving (Eq, Read, Show)

data SM3TT2A = SM3TT2A_VVV4_crypto3_imm2
             deriving (Eq, Read, Show)

data SM3TT2B = SM3TT2B_VVV_crypto3_imm2
             deriving (Eq, Read, Show)

data SM4E = SM4E_VV4_cryptosha512_2
          deriving (Eq, Read, Show)

data SM4EKEY = SM4EKEY_VVV4_cryptosha512_3
             deriving (Eq, Read, Show)

data SMADDL = SMADDL_64WA_dp_3src
            deriving (Eq, Read, Show)

data SMAX = SMAX_asimdsame_only
          deriving (Eq, Read, Show)

data SMAXP = SMAXP_asimdsame_only
           deriving (Eq, Read, Show)

data SMAXV = SMAXV_asimdall_only
           deriving (Eq, Read, Show)

data SMC = SMC_EX_exception
         deriving (Eq, Read, Show)

data SMIN = SMIN_asimdsame_only
          deriving (Eq, Read, Show)

data SMINP = SMINP_asimdsame_only
           deriving (Eq, Read, Show)

data SMINV = SMINV_asimdall_only
           deriving (Eq, Read, Show)

data SMLAL = SMLAL_asimdelem_L
           | SMLAL_asimddiff_L
           deriving (Eq, Read, Show)

data SMLSL = SMLSL_asimdelem_L
           | SMLSL_asimddiff_L
           deriving (Eq, Read, Show)

data SMOV = SMOV_asimdins_W_w
          | SMOV_asimdins_X_x
          deriving (Eq, Read, Show)

data SMSUBL = SMSUBL_64WA_dp_3src
            deriving (Eq, Read, Show)

data SMULH = SMULH_64_dp_3src
           deriving (Eq, Read, Show)

data SMULL = SMULL_asimdelem_L
           | SMULL_asimddiff_L
           deriving (Eq, Read, Show)

data SQABS = SQABS_asisdmisc_R
           | SQABS_asimdmisc_R
           deriving (Eq, Read, Show)

data SQADD = SQADD_asisdsame_only
           | SQADD_asimdsame_only
           deriving (Eq, Read, Show)

data SQDMLAL = SQDMLAL_asisdelem_L
             | SQDMLAL_asimdelem_L
             | SQDMLAL_asisddiff_only
             | SQDMLAL_asimddiff_L
             deriving (Eq, Read, Show)

data SQDMLSL = SQDMLSL_asisdelem_L
             | SQDMLSL_asimdelem_L
             | SQDMLSL_asisddiff_only
             | SQDMLSL_asimddiff_L
             deriving (Eq, Read, Show)

data SQDMULH = SQDMULH_asisdelem_R
             | SQDMULH_asimdelem_R
             | SQDMULH_asisdsame_only
             | SQDMULH_asimdsame_only
             deriving (Eq, Read, Show)

data SQDMULL = SQDMULL_asisdelem_L
             | SQDMULL_asimdelem_L
             | SQDMULL_asisddiff_only
             | SQDMULL_asimddiff_L
             deriving (Eq, Read, Show)

data SQNEG = SQNEG_asisdmisc_R
           | SQNEG_asimdmisc_R
           deriving (Eq, Read, Show)

data SQRDMLAH = SQRDMLAH_asisdelem_R
              | SQRDMLAH_asimdelem_R
              | SQRDMLAH_asisdsame2_only
              | SQRDMLAH_asimdsame2_only
              deriving (Eq, Read, Show)

data SQRDMLSH = SQRDMLSH_asisdelem_R
              | SQRDMLSH_asimdelem_R
              | SQRDMLSH_asisdsame2_only
              | SQRDMLSH_asimdsame2_only
              deriving (Eq, Read, Show)

data SQRDMULH = SQRDMULH_asisdelem_R
              | SQRDMULH_asimdelem_R
              | SQRDMULH_asisdsame_only
              | SQRDMULH_asimdsame_only
              deriving (Eq, Read, Show)

data SQRSHL = SQRSHL_asisdsame_only
            | SQRSHL_asimdsame_only
            deriving (Eq, Read, Show)

data SQRSHRN = SQRSHRN_asisdshf_N
             | SQRSHRN_asimdshf_N
             deriving (Eq, Read, Show)

data SQRSHRUN = SQRSHRUN_asisdshf_N
              | SQRSHRUN_asimdshf_N
              deriving (Eq, Read, Show)

data SQSHL = SQSHL_asisdshf_R
           | SQSHL_asimdshf_R
           | SQSHL_asisdsame_only
           | SQSHL_asimdsame_only
           deriving (Eq, Read, Show)

data SQSHLU = SQSHLU_asisdshf_R
            | SQSHLU_asimdshf_R
            deriving (Eq, Read, Show)

data SQSHRN = SQSHRN_asisdshf_N
            | SQSHRN_asimdshf_N
            deriving (Eq, Read, Show)

data SQSHRUN = SQSHRUN_asisdshf_N
             | SQSHRUN_asimdshf_N
             deriving (Eq, Read, Show)

data SQSUB = SQSUB_asisdsame_only
           | SQSUB_asimdsame_only
           deriving (Eq, Read, Show)

data SQXTN = SQXTN_asisdmisc_N
           | SQXTN_asimdmisc_N
           deriving (Eq, Read, Show)

data SQXTUN = SQXTUN_asisdmisc_N
            | SQXTUN_asimdmisc_N
            deriving (Eq, Read, Show)

data SRHADD = SRHADD_asimdsame_only
            deriving (Eq, Read, Show)

data SRI = SRI_asisdshf_R
         | SRI_asimdshf_R
         deriving (Eq, Read, Show)

data SRSHL = SRSHL_asisdsame_only
           | SRSHL_asimdsame_only
           deriving (Eq, Read, Show)

data SRSHR = SRSHR_asisdshf_R
           | SRSHR_asimdshf_R
           deriving (Eq, Read, Show)

data SRSRA = SRSRA_asisdshf_R
           | SRSRA_asimdshf_R
           deriving (Eq, Read, Show)

data SSHL = SSHL_asisdsame_only
          | SSHL_asimdsame_only
          deriving (Eq, Read, Show)

data SSHLL = SSHLL_asimdshf_L
           deriving (Eq, Read, Show)

data SSHR = SSHR_asisdshf_R
          | SSHR_asimdshf_R
          deriving (Eq, Read, Show)

data SSRA = SSRA_asisdshf_R
          | SSRA_asimdshf_R
          deriving (Eq, Read, Show)

data SSUBL = SSUBL_asimddiff_L
           deriving (Eq, Read, Show)

data SSUBW = SSUBW_asimddiff_W
           deriving (Eq, Read, Show)

data ST1 = ST1_asisdlse_R1_1v
         | ST1_asisdlse_R2_2v
         | ST1_asisdlse_R3_3v
         | ST1_asisdlse_R4_4v
         | ST1_asisdlsep_I1_i1
         | ST1_asisdlsep_R1_r1
         | ST1_asisdlsep_I2_i2
         | ST1_asisdlsep_R2_r2
         | ST1_asisdlsep_I3_i3
         | ST1_asisdlsep_R3_r3
         | ST1_asisdlsep_I4_i4
         | ST1_asisdlsep_R4_r4
         | ST1_asisdlso_B1_1b
         | ST1_asisdlso_H1_1h
         | ST1_asisdlso_S1_1s
         | ST1_asisdlso_D1_1d
         | ST1_asisdlsop_B1_i1b
         | ST1_asisdlsop_BX1_r1b
         | ST1_asisdlsop_H1_i1h
         | ST1_asisdlsop_HX1_r1h
         | ST1_asisdlsop_S1_i1s
         | ST1_asisdlsop_SX1_r1s
         | ST1_asisdlsop_D1_i1d
         | ST1_asisdlsop_DX1_r1d
         deriving (Eq, Read, Show)

data ST2 = ST2_asisdlse_R2
         | ST2_asisdlsep_I2_i
         | ST2_asisdlsep_R2_r
         | ST2_asisdlso_B2_2b
         | ST2_asisdlso_H2_2h
         | ST2_asisdlso_S2_2s
         | ST2_asisdlso_D2_2d
         | ST2_asisdlsop_B2_i2b
         | ST2_asisdlsop_BX2_r2b
         | ST2_asisdlsop_H2_i2h
         | ST2_asisdlsop_HX2_r2h
         | ST2_asisdlsop_S2_i2s
         | ST2_asisdlsop_SX2_r2s
         | ST2_asisdlsop_D2_i2d
         | ST2_asisdlsop_DX2_r2d
         deriving (Eq, Read, Show)

data ST3 = ST3_asisdlse_R3
         | ST3_asisdlsep_I3_i
         | ST3_asisdlsep_R3_r
         | ST3_asisdlso_B3_3b
         | ST3_asisdlso_H3_3h
         | ST3_asisdlso_S3_3s
         | ST3_asisdlso_D3_3d
         | ST3_asisdlsop_B3_i3b
         | ST3_asisdlsop_BX3_r3b
         | ST3_asisdlsop_H3_i3h
         | ST3_asisdlsop_HX3_r3h
         | ST3_asisdlsop_S3_i3s
         | ST3_asisdlsop_SX3_r3s
         | ST3_asisdlsop_D3_i3d
         | ST3_asisdlsop_DX3_r3d
         deriving (Eq, Read, Show)

data ST4 = ST4_asisdlse_R4
         | ST4_asisdlsep_I4_i
         | ST4_asisdlsep_R4_r
         | ST4_asisdlso_B4_4b
         | ST4_asisdlso_H4_4h
         | ST4_asisdlso_S4_4s
         | ST4_asisdlso_D4_4d
         | ST4_asisdlsop_B4_i4b
         | ST4_asisdlsop_BX4_r4b
         | ST4_asisdlsop_H4_i4h
         | ST4_asisdlsop_HX4_r4h
         | ST4_asisdlsop_S4_i4s
         | ST4_asisdlsop_SX4_r4s
         | ST4_asisdlsop_D4_i4d
         | ST4_asisdlsop_DX4_r4d
         deriving (Eq, Read, Show)

data STLLR = STLLR_SL32_ldstexcl
           | STLLR_SL64_ldstexcl
           deriving (Eq, Read, Show)

data STLLRB = STLLRB_SL32_ldstexcl
            deriving (Eq, Read, Show)

data STLLRH = STLLRH_SL32_ldstexcl
            deriving (Eq, Read, Show)

data STLR = STLR_SL32_ldstexcl
          | STLR_SL64_ldstexcl
          deriving (Eq, Read, Show)

data STLRB = STLRB_SL32_ldstexcl
           deriving (Eq, Read, Show)

data STLRH = STLRH_SL32_ldstexcl
           deriving (Eq, Read, Show)

data STLXP = STLXP_SP32_ldstexcl
           | STLXP_SP64_ldstexcl
           deriving (Eq, Read, Show)

data STLXR = STLXR_SR32_ldstexcl
           | STLXR_SR64_ldstexcl
           deriving (Eq, Read, Show)

data STLXRB = STLXRB_SR32_ldstexcl
            deriving (Eq, Read, Show)

data STLXRH = STLXRH_SR32_ldstexcl
            deriving (Eq, Read, Show)

data STNP = STNP_32_ldstnapair_offs
          | STNP_64_ldstnapair_offs Xn Xn XnSP (I 7)
          | STNP_S_ldstnapair_offs
          | STNP_D_ldstnapair_offs
          | STNP_Q_ldstnapair_offs
          deriving (Eq, Read, Show)

data STP = STP_32_ldstpair_post
         | STP_64_ldstpair_post
         | STP_32_ldstpair_pre
         | STP_64_ldstpair_pre Xn Xn XnSP (I 7)
         | STP_32_ldstpair_off
         | STP_64_ldstpair_off Xn Xn XnSP (I 7)
         | STP_S_ldstpair_post
         | STP_D_ldstpair_post
         | STP_Q_ldstpair_post
         | STP_S_ldstpair_pre
         | STP_D_ldstpair_pre
         | STP_Q_ldstpair_pre
         | STP_S_ldstpair_off
         | STP_D_ldstpair_off
         | STP_Q_ldstpair_off
         deriving (Eq, Read, Show)

data STR = STR_32_ldst_immpost
         | STR_64_ldst_immpost
         | STR_32_ldst_immpre
         | STR_64_ldst_immpre
         | STR_32_ldst_pos
         | STR_64_ldst_pos Xn XnSP (W 12)
         | STR_32_ldst_regoff
         | STR_64_ldst_regoff
         | STR_B_ldst_immpost
         | STR_H_ldst_immpost
         | STR_S_ldst_immpost
         | STR_D_ldst_immpost
         | STR_Q_ldst_immpost
         | STR_B_ldst_immpre
         | STR_H_ldst_immpre
         | STR_S_ldst_immpre
         | STR_D_ldst_immpre
         | STR_Q_ldst_immpre
         | STR_B_ldst_pos
         | STR_H_ldst_pos
         | STR_S_ldst_pos
         | STR_D_ldst_pos
         | STR_Q_ldst_pos
         | STR_B_ldst_regoff
         | STR_BL_ldst_regoff
         | STR_H_ldst_regoff
         | STR_S_ldst_regoff
         | STR_D_ldst_regoff
         | STR_Q_ldst_regoff
         deriving (Eq, Read, Show)

data STRB = STRB_32_ldst_immpost
          | STRB_32_ldst_immpre
          | STRB_32_ldst_pos
          | STRB_32B_ldst_regoff
          | STRB_32BL_ldst_regoff
          deriving (Eq, Read, Show)

data STRH = STRH_32_ldst_immpost
          | STRH_32_ldst_immpre
          | STRH_32_ldst_pos
          | STRH_32_ldst_regoff
          deriving (Eq, Read, Show)

data STTR = STTR_32_ldst_unpriv
          | STTR_64_ldst_unpriv
          deriving (Eq, Read, Show)

data STTRB = STTRB_32_ldst_unpriv
           deriving (Eq, Read, Show)

data STTRH = STTRH_32_ldst_unpriv
           deriving (Eq, Read, Show)

data STUR = STUR_32_ldst_unscaled
          | STUR_64_ldst_unscaled
          | STUR_B_ldst_unscaled
          | STUR_H_ldst_unscaled
          | STUR_S_ldst_unscaled
          | STUR_D_ldst_unscaled
          | STUR_Q_ldst_unscaled
          deriving (Eq, Read, Show)

data STURB = STURB_32_ldst_unscaled
           deriving (Eq, Read, Show)

data STURH = STURH_32_ldst_unscaled
           deriving (Eq, Read, Show)

data STXP = STXP_SP32_ldstexcl
          | STXP_SP64_ldstexcl
          deriving (Eq, Read, Show)

data STXR = STXR_SR32_ldstexcl
          | STXR_SR64_ldstexcl
          deriving (Eq, Read, Show)

data STXRB = STXRB_SR32_ldstexcl
           deriving (Eq, Read, Show)

data STXRH = STXRH_SR32_ldstexcl
           deriving (Eq, Read, Show)

data SUB = SUB_32_addsub_ext
         | SUB_64_addsub_ext
         | SUB_32_addsub_imm
         | SUB_64_addsub_imm XnSP XnSP (W 12) LSL_12
         | SUB_32_addsub_shift Wn Wn Wn Shift32
         | SUB_64_addsub_shift
         | SUB_asisdsame_only
         | SUB_asimdsame_only
         deriving (Eq, Read, Show)

data SUBHN = SUBHN_asimddiff_N
           deriving (Eq, Read, Show)

data SUBS = SUBS_32S_addsub_ext
          | SUBS_64S_addsub_ext
          | SUBS_32S_addsub_imm Wn WnSP (W 12) LSL_12
          | SUBS_64S_addsub_imm Xn XnSP (W 12) LSL_12
          | SUBS_32_addsub_shift Wn Wn Wn Shift32
          | SUBS_64_addsub_shift
          deriving (Eq, Read, Show)

data SUQADD = SUQADD_asisdmisc_R
            | SUQADD_asimdmisc_R
            deriving (Eq, Read, Show)

data SVC = SVC_EX_exception
         deriving (Eq, Read, Show)

data SWP = SWP_32_memop
         | SWP_64_memop
         deriving (Eq, Read, Show)

data SWPA = SWPA_32_memop
          | SWPA_64_memop
          deriving (Eq, Read, Show)

data SWPAB = SWPAB_32_memop
           deriving (Eq, Read, Show)

data SWPAH = SWPAH_32_memop
           deriving (Eq, Read, Show)

data SWPAL = SWPAL_32_memop
           | SWPAL_64_memop
           deriving (Eq, Read, Show)

data SWPALB = SWPALB_32_memop
            deriving (Eq, Read, Show)

data SWPALH = SWPALH_32_memop
            deriving (Eq, Read, Show)

data SWPB = SWPB_32_memop
          deriving (Eq, Read, Show)

data SWPH = SWPH_32_memop
          deriving (Eq, Read, Show)

data SWPL = SWPL_32_memop
          | SWPL_64_memop
          deriving (Eq, Read, Show)

data SWPLB = SWPLB_32_memop
           deriving (Eq, Read, Show)

data SWPLH = SWPLH_32_memop
           deriving (Eq, Read, Show)

data SYS = SYS_CR_system
         deriving (Eq, Read, Show)

data SYSL = SYSL_RC_system
          deriving (Eq, Read, Show)

data TBL = TBL_asimdtbl_L2_2
         | TBL_asimdtbl_L3_3
         | TBL_asimdtbl_L4_4
         | TBL_asimdtbl_L1_1
         deriving (Eq, Read, Show)

data TBNZ = TBNZ_only_testbranch
          deriving (Eq, Read, Show)

data TBX = TBX_asimdtbl_L2_2
         | TBX_asimdtbl_L3_3
         | TBX_asimdtbl_L4_4
         | TBX_asimdtbl_L1_1
         deriving (Eq, Read, Show)

data TBZ = TBZ_only_testbranch
         deriving (Eq, Read, Show)

data TRN1 = TRN1_asimdperm_only
          deriving (Eq, Read, Show)

data TRN2 = TRN2_asimdperm_only
          deriving (Eq, Read, Show)

data UABA = UABA_asimdsame_only
          deriving (Eq, Read, Show)

data UABAL = UABAL_asimddiff_L
           deriving (Eq, Read, Show)

data UABD = UABD_asimdsame_only
          deriving (Eq, Read, Show)

data UABDL = UABDL_asimddiff_L
           deriving (Eq, Read, Show)

data UADALP = UADALP_asimdmisc_P
            deriving (Eq, Read, Show)

data UADDL = UADDL_asimddiff_L
           deriving (Eq, Read, Show)

data UADDLP = UADDLP_asimdmisc_P
            deriving (Eq, Read, Show)

data UADDLV = UADDLV_asimdall_only
            deriving (Eq, Read, Show)

data UADDW = UADDW_asimddiff_W
           deriving (Eq, Read, Show)

data UBFM = UBFM_32M_bitfield
          | UBFM_64M_bitfield
          deriving (Eq, Read, Show)

data UCVTF = UCVTF_H32_float2fix
           | UCVTF_S32_float2fix
           | UCVTF_D32_float2fix
           | UCVTF_H64_float2fix
           | UCVTF_S64_float2fix
           | UCVTF_D64_float2fix
           | UCVTF_H32_float2int
           | UCVTF_S32_float2int
           | UCVTF_D32_float2int
           | UCVTF_H64_float2int
           | UCVTF_S64_float2int
           | UCVTF_D64_float2int
           | UCVTF_asisdshf_C
           | UCVTF_asimdshf_C
           | UCVTF_asisdmiscfp16_R
           | UCVTF_asisdmisc_R
           | UCVTF_asimdmiscfp16_R
           | UCVTF_asimdmisc_R
           deriving (Eq, Read, Show)

data UDIV = UDIV_32_dp_2src
          | UDIV_64_dp_2src
          deriving (Eq, Read, Show)

data UDOT = UDOT_asimdelem_D
          | UDOT_asimdsame2_D
          deriving (Eq, Read, Show)

data UHADD = UHADD_asimdsame_only
           deriving (Eq, Read, Show)

data UHSUB = UHSUB_asimdsame_only
           deriving (Eq, Read, Show)

data UMADDL = UMADDL_64WA_dp_3src
            deriving (Eq, Read, Show)

data UMAX = UMAX_asimdsame_only
          deriving (Eq, Read, Show)

data UMAXP = UMAXP_asimdsame_only
           deriving (Eq, Read, Show)

data UMAXV = UMAXV_asimdall_only
           deriving (Eq, Read, Show)

data UMIN = UMIN_asimdsame_only
          deriving (Eq, Read, Show)

data UMINP = UMINP_asimdsame_only
           deriving (Eq, Read, Show)

data UMINV = UMINV_asimdall_only
           deriving (Eq, Read, Show)

data UMLAL = UMLAL_asimdelem_L
           | UMLAL_asimddiff_L
           deriving (Eq, Read, Show)

data UMLSL = UMLSL_asimdelem_L
           | UMLSL_asimddiff_L
           deriving (Eq, Read, Show)

data UMOV = UMOV_asimdins_W_w
          | UMOV_asimdins_X_x
          deriving (Eq, Read, Show)

data UMSUBL = UMSUBL_64WA_dp_3src
            deriving (Eq, Read, Show)

data UMULH = UMULH_64_dp_3src
           deriving (Eq, Read, Show)

data UMULL = UMULL_asimdelem_L
           | UMULL_asimddiff_L
           deriving (Eq, Read, Show)

data UQADD = UQADD_asisdsame_only
           | UQADD_asimdsame_only
           deriving (Eq, Read, Show)

data UQRSHL = UQRSHL_asisdsame_only
            | UQRSHL_asimdsame_only
            deriving (Eq, Read, Show)

data UQRSHRN = UQRSHRN_asisdshf_N
             | UQRSHRN_asimdshf_N
             deriving (Eq, Read, Show)

data UQSHL = UQSHL_asisdshf_R
           | UQSHL_asimdshf_R
           | UQSHL_asisdsame_only
           | UQSHL_asimdsame_only
           deriving (Eq, Read, Show)

data UQSHRN = UQSHRN_asisdshf_N
            | UQSHRN_asimdshf_N
            deriving (Eq, Read, Show)

data UQSUB = UQSUB_asisdsame_only
           | UQSUB_asimdsame_only
           deriving (Eq, Read, Show)

data UQXTN = UQXTN_asisdmisc_N
           | UQXTN_asimdmisc_N
           deriving (Eq, Read, Show)

data URECPE = URECPE_asimdmisc_R
            deriving (Eq, Read, Show)

data URHADD = URHADD_asimdsame_only
            deriving (Eq, Read, Show)

data URSHL = URSHL_asisdsame_only
           | URSHL_asimdsame_only
           deriving (Eq, Read, Show)

data URSHR = URSHR_asisdshf_R
           | URSHR_asimdshf_R
           deriving (Eq, Read, Show)

data URSQRTE = URSQRTE_asimdmisc_R
             deriving (Eq, Read, Show)

data URSRA = URSRA_asisdshf_R
           | URSRA_asimdshf_R
           deriving (Eq, Read, Show)

data USHL = USHL_asisdsame_only
          | USHL_asimdsame_only
          deriving (Eq, Read, Show)

data USHLL = USHLL_asimdshf_L
           deriving (Eq, Read, Show)

data USHR = USHR_asisdshf_R
          | USHR_asimdshf_R
          deriving (Eq, Read, Show)

data USQADD = USQADD_asisdmisc_R
            | USQADD_asimdmisc_R
            deriving (Eq, Read, Show)

data USRA = USRA_asisdshf_R
          | USRA_asimdshf_R
          deriving (Eq, Read, Show)

data USUBL = USUBL_asimddiff_L
           deriving (Eq, Read, Show)

data USUBW = USUBW_asimddiff_W
           deriving (Eq, Read, Show)

data UZP1 = UZP1_asimdperm_only
          deriving (Eq, Read, Show)

data UZP2 = UZP2_asimdperm_only
          deriving (Eq, Read, Show)

data WFE = WFE_HI_system
         deriving (Eq, Read, Show)

data WFI = WFI_HI_system
         deriving (Eq, Read, Show)

data XAR = XAR_VVV2_crypto3_imm6
         deriving (Eq, Read, Show)

data XPACD = XPACD_64Z_dp_1src
           deriving (Eq, Read, Show)

data XPACI = XPACI_64Z_dp_1src
           deriving (Eq, Read, Show)

data XPACLRI = XPACLRI_HI_system
             deriving (Eq, Read, Show)

data XTN = XTN_asimdmisc_N
         deriving (Eq, Read, Show)

data YIELD = YIELD_HI_system
           deriving (Eq, Read, Show)

data ZIP1 = ZIP1_asimdperm_only
          deriving (Eq, Read, Show)

data ZIP2 = ZIP2_asimdperm_only
          deriving (Eq, Read, Show)

abs_asisdmisc_r :: Insn
abs_asisdmisc_r = ABS ABS_asisdmisc_R

abs_asimdmisc_r :: Insn
abs_asimdmisc_r = ABS ABS_asimdmisc_R

adc_32_addsub_carry :: Insn
adc_32_addsub_carry = ADC ADC_32_addsub_carry

adc_64_addsub_carry :: Insn
adc_64_addsub_carry = ADC ADC_64_addsub_carry

adcs_32_addsub_carry :: Insn
adcs_32_addsub_carry = ADCS ADCS_32_addsub_carry

adcs_64_addsub_carry :: Insn
adcs_64_addsub_carry = ADCS ADCS_64_addsub_carry

add_32_addsub_ext :: Insn
add_32_addsub_ext = ADD ADD_32_addsub_ext

add_64_addsub_ext :: Insn
add_64_addsub_ext = ADD ADD_64_addsub_ext

add_32_addsub_imm :: Insn
add_32_addsub_imm = ADD ADD_32_addsub_imm

add_64_addsub_imm :: XnSP -> XnSP -> W 12 -> LSL_12 -> Insn
add_64_addsub_imm x1 x2 x3 x4 = ADD (ADD_64_addsub_imm x1 x2 x3 x4)

add_32_addsub_shift :: Wn -> Wn -> Wn -> Shift32 -> Insn
add_32_addsub_shift x1 x2 x3 x4
  = ADD (ADD_32_addsub_shift x1 x2 x3 x4)

add_64_addsub_shift :: Insn
add_64_addsub_shift = ADD ADD_64_addsub_shift

add_asisdsame_only :: Insn
add_asisdsame_only = ADD ADD_asisdsame_only

add_asimdsame_only :: Insn
add_asimdsame_only = ADD ADD_asimdsame_only

addhn_asimddiff_n :: Insn
addhn_asimddiff_n = ADDHN ADDHN_asimddiff_N

addp_asisdpair_only :: Insn
addp_asisdpair_only = ADDP ADDP_asisdpair_only

addp_asimdsame_only :: Insn
addp_asimdsame_only = ADDP ADDP_asimdsame_only

adds_32s_addsub_ext :: Insn
adds_32s_addsub_ext = ADDS ADDS_32S_addsub_ext

adds_64s_addsub_ext :: Insn
adds_64s_addsub_ext = ADDS ADDS_64S_addsub_ext

adds_32s_addsub_imm :: Wn -> WnSP -> W 12 -> LSL_12 -> Insn
adds_32s_addsub_imm x1 x2 x3 x4
  = ADDS (ADDS_32S_addsub_imm x1 x2 x3 x4)

adds_64s_addsub_imm :: Xn -> XnSP -> W 12 -> LSL_12 -> Insn
adds_64s_addsub_imm x1 x2 x3 x4
  = ADDS (ADDS_64S_addsub_imm x1 x2 x3 x4)

adds_32_addsub_shift :: Wn -> Wn -> Wn -> Shift32 -> Insn
adds_32_addsub_shift x1 x2 x3 x4
  = ADDS (ADDS_32_addsub_shift x1 x2 x3 x4)

adds_64_addsub_shift :: Insn
adds_64_addsub_shift = ADDS ADDS_64_addsub_shift

addv_asimdall_only :: Insn
addv_asimdall_only = ADDV ADDV_asimdall_only

adr_only_pcreladdr :: Xn -> I 21 -> Insn
adr_only_pcreladdr x1 x2 = ADR (ADR_only_pcreladdr x1 x2)

adrp_only_pcreladdr :: Xn -> I 21 -> Insn
adrp_only_pcreladdr x1 x2 = ADRP (ADRP_only_pcreladdr x1 x2)

aesd_b_cryptoaes :: Insn
aesd_b_cryptoaes = AESD AESD_B_cryptoaes

aese_b_cryptoaes :: Insn
aese_b_cryptoaes = AESE AESE_B_cryptoaes

aesimc_b_cryptoaes :: Insn
aesimc_b_cryptoaes = AESIMC AESIMC_B_cryptoaes

aesmc_b_cryptoaes :: Insn
aesmc_b_cryptoaes = AESMC AESMC_B_cryptoaes

and_32_log_imm :: Insn
and_32_log_imm = AND AND_32_log_imm

and_64_log_imm :: Insn
and_64_log_imm = AND AND_64_log_imm

and_32_log_shift :: Wn -> Wn -> Wn -> Shift32 -> Insn
and_32_log_shift x1 x2 x3 x4 = AND (AND_32_log_shift x1 x2 x3 x4)

and_64_log_shift :: Insn
and_64_log_shift = AND AND_64_log_shift

and_asimdsame_only :: Insn
and_asimdsame_only = AND AND_asimdsame_only

ands_32s_log_imm :: Insn
ands_32s_log_imm = ANDS ANDS_32S_log_imm

ands_64s_log_imm :: Insn
ands_64s_log_imm = ANDS ANDS_64S_log_imm

ands_32_log_shift :: Wn -> Wn -> Wn -> Shift32 -> Insn
ands_32_log_shift x1 x2 x3 x4
  = ANDS (ANDS_32_log_shift x1 x2 x3 x4)

ands_64_log_shift :: Insn
ands_64_log_shift = ANDS ANDS_64_log_shift

asrv_32_dp_2src :: Insn
asrv_32_dp_2src = ASRV ASRV_32_dp_2src

asrv_64_dp_2src :: Insn
asrv_64_dp_2src = ASRV ASRV_64_dp_2src

autda_64p_dp_1src :: Insn
autda_64p_dp_1src = AUTDA AUTDA_64P_dp_1src

autdb_64p_dp_1src :: Insn
autdb_64p_dp_1src = AUTDB AUTDB_64P_dp_1src

autdza_64z_dp_1src :: Insn
autdza_64z_dp_1src = AUTDZA AUTDZA_64Z_dp_1src

autdzb_64z_dp_1src :: Insn
autdzb_64z_dp_1src = AUTDZB AUTDZB_64Z_dp_1src

autia_64p_dp_1src :: Insn
autia_64p_dp_1src = AUTIA AUTIA_64P_dp_1src

autia1716_hi_system :: Insn
autia1716_hi_system = AUTIA1716 AUTIA1716_HI_system

autiasp_hi_system :: Insn
autiasp_hi_system = AUTIASP AUTIASP_HI_system

autiaz_hi_system :: Insn
autiaz_hi_system = AUTIAZ AUTIAZ_HI_system

autib_64p_dp_1src :: Insn
autib_64p_dp_1src = AUTIB AUTIB_64P_dp_1src

autib1716_hi_system :: Insn
autib1716_hi_system = AUTIB1716 AUTIB1716_HI_system

autibsp_hi_system :: Insn
autibsp_hi_system = AUTIBSP AUTIBSP_HI_system

autibz_hi_system :: Insn
autibz_hi_system = AUTIBZ AUTIBZ_HI_system

autiza_64z_dp_1src :: Insn
autiza_64z_dp_1src = AUTIZA AUTIZA_64Z_dp_1src

autizb_64z_dp_1src :: Insn
autizb_64z_dp_1src = AUTIZB AUTIZB_64Z_dp_1src

b_only_branch_imm :: Insn
b_only_branch_imm = B B_only_branch_imm

b_only_condbranch :: Insn
b_only_condbranch = B B_only_condbranch

bcax_vvv16_crypto4 :: Insn
bcax_vvv16_crypto4 = BCAX BCAX_VVV16_crypto4

bfm_32m_bitfield :: Insn
bfm_32m_bitfield = BFM BFM_32M_bitfield

bfm_64m_bitfield :: Insn
bfm_64m_bitfield = BFM BFM_64M_bitfield

bic_32_log_shift :: Wn -> Wn -> Wn -> Shift32 -> Insn
bic_32_log_shift x1 x2 x3 x4 = BIC (BIC_32_log_shift x1 x2 x3 x4)

bic_64_log_shift :: Insn
bic_64_log_shift = BIC BIC_64_log_shift

bic_asimdimm_l_hl :: Insn
bic_asimdimm_l_hl = BIC BIC_asimdimm_L_hl

bic_asimdimm_l_sl :: Insn
bic_asimdimm_l_sl = BIC BIC_asimdimm_L_sl

bic_asimdsame_only :: Insn
bic_asimdsame_only = BIC BIC_asimdsame_only

bics_32_log_shift :: Wn -> Wn -> Wn -> Shift32 -> Insn
bics_32_log_shift x1 x2 x3 x4
  = BICS (BICS_32_log_shift x1 x2 x3 x4)

bics_64_log_shift :: Insn
bics_64_log_shift = BICS BICS_64_log_shift

bif_asimdsame_only :: Insn
bif_asimdsame_only = BIF BIF_asimdsame_only

bit_asimdsame_only :: Insn
bit_asimdsame_only = BIT BIT_asimdsame_only

bl_only_branch_imm :: Insn
bl_only_branch_imm = BL BL_only_branch_imm

blr_64_branch_reg :: Insn
blr_64_branch_reg = BLR BLR_64_branch_reg

blraa_64p_branch_reg :: Insn
blraa_64p_branch_reg = BLRAA BLRAA_64P_branch_reg

blraaz_64_branch_reg :: Insn
blraaz_64_branch_reg = BLRAAZ BLRAAZ_64_branch_reg

blrab_64p_branch_reg :: Insn
blrab_64p_branch_reg = BLRAB BLRAB_64P_branch_reg

blrabz_64_branch_reg :: Insn
blrabz_64_branch_reg = BLRABZ BLRABZ_64_branch_reg

br_64_branch_reg :: Insn
br_64_branch_reg = BR BR_64_branch_reg

braa_64p_branch_reg :: Insn
braa_64p_branch_reg = BRAA BRAA_64P_branch_reg

braaz_64_branch_reg :: Insn
braaz_64_branch_reg = BRAAZ BRAAZ_64_branch_reg

brab_64p_branch_reg :: Insn
brab_64p_branch_reg = BRAB BRAB_64P_branch_reg

brabz_64_branch_reg :: Insn
brabz_64_branch_reg = BRABZ BRABZ_64_branch_reg

brk_ex_exception :: Insn
brk_ex_exception = BRK BRK_EX_exception

bsl_asimdsame_only :: Insn
bsl_asimdsame_only = BSL BSL_asimdsame_only

cas_c32_ldstexcl :: Insn
cas_c32_ldstexcl = CAS CAS_C32_ldstexcl

cas_c64_ldstexcl :: Insn
cas_c64_ldstexcl = CAS CAS_C64_ldstexcl

casa_c32_ldstexcl :: Insn
casa_c32_ldstexcl = CASA CASA_C32_ldstexcl

casa_c64_ldstexcl :: Insn
casa_c64_ldstexcl = CASA CASA_C64_ldstexcl

casab_c32_ldstexcl :: Insn
casab_c32_ldstexcl = CASAB CASAB_C32_ldstexcl

casah_c32_ldstexcl :: Insn
casah_c32_ldstexcl = CASAH CASAH_C32_ldstexcl

casal_c32_ldstexcl :: Insn
casal_c32_ldstexcl = CASAL CASAL_C32_ldstexcl

casal_c64_ldstexcl :: Insn
casal_c64_ldstexcl = CASAL CASAL_C64_ldstexcl

casalb_c32_ldstexcl :: Insn
casalb_c32_ldstexcl = CASALB CASALB_C32_ldstexcl

casalh_c32_ldstexcl :: Insn
casalh_c32_ldstexcl = CASALH CASALH_C32_ldstexcl

casb_c32_ldstexcl :: Insn
casb_c32_ldstexcl = CASB CASB_C32_ldstexcl

cash_c32_ldstexcl :: Insn
cash_c32_ldstexcl = CASH CASH_C32_ldstexcl

casl_c32_ldstexcl :: Insn
casl_c32_ldstexcl = CASL CASL_C32_ldstexcl

casl_c64_ldstexcl :: Insn
casl_c64_ldstexcl = CASL CASL_C64_ldstexcl

caslb_c32_ldstexcl :: Insn
caslb_c32_ldstexcl = CASLB CASLB_C32_ldstexcl

caslh_c32_ldstexcl :: Insn
caslh_c32_ldstexcl = CASLH CASLH_C32_ldstexcl

casp_cp32_ldstexcl :: Insn
casp_cp32_ldstexcl = CASP CASP_CP32_ldstexcl

casp_cp64_ldstexcl :: Insn
casp_cp64_ldstexcl = CASP CASP_CP64_ldstexcl

caspa_cp32_ldstexcl :: Insn
caspa_cp32_ldstexcl = CASPA CASPA_CP32_ldstexcl

caspa_cp64_ldstexcl :: Insn
caspa_cp64_ldstexcl = CASPA CASPA_CP64_ldstexcl

caspal_cp32_ldstexcl :: Insn
caspal_cp32_ldstexcl = CASPAL CASPAL_CP32_ldstexcl

caspal_cp64_ldstexcl :: Insn
caspal_cp64_ldstexcl = CASPAL CASPAL_CP64_ldstexcl

caspl_cp32_ldstexcl :: Insn
caspl_cp32_ldstexcl = CASPL CASPL_CP32_ldstexcl

caspl_cp64_ldstexcl :: Insn
caspl_cp64_ldstexcl = CASPL CASPL_CP64_ldstexcl

cbnz_32_compbranch :: Insn
cbnz_32_compbranch = CBNZ CBNZ_32_compbranch

cbnz_64_compbranch :: Insn
cbnz_64_compbranch = CBNZ CBNZ_64_compbranch

cbz_32_compbranch :: Insn
cbz_32_compbranch = CBZ CBZ_32_compbranch

cbz_64_compbranch :: Insn
cbz_64_compbranch = CBZ CBZ_64_compbranch

ccmn_32_condcmp_imm :: Insn
ccmn_32_condcmp_imm = CCMN CCMN_32_condcmp_imm

ccmn_64_condcmp_imm :: Insn
ccmn_64_condcmp_imm = CCMN CCMN_64_condcmp_imm

ccmn_32_condcmp_reg :: Insn
ccmn_32_condcmp_reg = CCMN CCMN_32_condcmp_reg

ccmn_64_condcmp_reg :: Insn
ccmn_64_condcmp_reg = CCMN CCMN_64_condcmp_reg

ccmp_32_condcmp_imm :: Insn
ccmp_32_condcmp_imm = CCMP CCMP_32_condcmp_imm

ccmp_64_condcmp_imm :: Insn
ccmp_64_condcmp_imm = CCMP CCMP_64_condcmp_imm

ccmp_32_condcmp_reg :: Insn
ccmp_32_condcmp_reg = CCMP CCMP_32_condcmp_reg

ccmp_64_condcmp_reg :: Insn
ccmp_64_condcmp_reg = CCMP CCMP_64_condcmp_reg

clrex_bn_system :: Insn
clrex_bn_system = CLREX CLREX_BN_system

cls_32_dp_1src :: Insn
cls_32_dp_1src = CLS CLS_32_dp_1src

cls_64_dp_1src :: Insn
cls_64_dp_1src = CLS CLS_64_dp_1src

cls_asimdmisc_r :: Insn
cls_asimdmisc_r = CLS CLS_asimdmisc_R

clz_32_dp_1src :: Insn
clz_32_dp_1src = CLZ CLZ_32_dp_1src

clz_64_dp_1src :: Insn
clz_64_dp_1src = CLZ CLZ_64_dp_1src

clz_asimdmisc_r :: Insn
clz_asimdmisc_r = CLZ CLZ_asimdmisc_R

cmeq_asisdsame_only :: Insn
cmeq_asisdsame_only = CMEQ CMEQ_asisdsame_only

cmeq_asimdsame_only :: Insn
cmeq_asimdsame_only = CMEQ CMEQ_asimdsame_only

cmeq_asisdmisc_z :: Insn
cmeq_asisdmisc_z = CMEQ CMEQ_asisdmisc_Z

cmeq_asimdmisc_z :: Insn
cmeq_asimdmisc_z = CMEQ CMEQ_asimdmisc_Z

cmge_asisdsame_only :: Insn
cmge_asisdsame_only = CMGE CMGE_asisdsame_only

cmge_asimdsame_only :: Insn
cmge_asimdsame_only = CMGE CMGE_asimdsame_only

cmge_asisdmisc_z :: Insn
cmge_asisdmisc_z = CMGE CMGE_asisdmisc_Z

cmge_asimdmisc_z :: Insn
cmge_asimdmisc_z = CMGE CMGE_asimdmisc_Z

cmgt_asisdsame_only :: Insn
cmgt_asisdsame_only = CMGT CMGT_asisdsame_only

cmgt_asimdsame_only :: Insn
cmgt_asimdsame_only = CMGT CMGT_asimdsame_only

cmgt_asisdmisc_z :: Insn
cmgt_asisdmisc_z = CMGT CMGT_asisdmisc_Z

cmgt_asimdmisc_z :: Insn
cmgt_asimdmisc_z = CMGT CMGT_asimdmisc_Z

cmhi_asisdsame_only :: Insn
cmhi_asisdsame_only = CMHI CMHI_asisdsame_only

cmhi_asimdsame_only :: Insn
cmhi_asimdsame_only = CMHI CMHI_asimdsame_only

cmhs_asisdsame_only :: Insn
cmhs_asisdsame_only = CMHS CMHS_asisdsame_only

cmhs_asimdsame_only :: Insn
cmhs_asimdsame_only = CMHS CMHS_asimdsame_only

cmle_asisdmisc_z :: Insn
cmle_asisdmisc_z = CMLE CMLE_asisdmisc_Z

cmle_asimdmisc_z :: Insn
cmle_asimdmisc_z = CMLE CMLE_asimdmisc_Z

cmlt_asisdmisc_z :: Insn
cmlt_asisdmisc_z = CMLT CMLT_asisdmisc_Z

cmlt_asimdmisc_z :: Insn
cmlt_asimdmisc_z = CMLT CMLT_asimdmisc_Z

cmtst_asisdsame_only :: Insn
cmtst_asisdsame_only = CMTST CMTST_asisdsame_only

cmtst_asimdsame_only :: Insn
cmtst_asimdsame_only = CMTST CMTST_asimdsame_only

cnt_asimdmisc_r :: Insn
cnt_asimdmisc_r = CNT CNT_asimdmisc_R

crc32b_32c_dp_2src :: Insn
crc32b_32c_dp_2src = CRC32B CRC32B_32C_dp_2src

crc32cb_32c_dp_2src :: Insn
crc32cb_32c_dp_2src = CRC32CB CRC32CB_32C_dp_2src

crc32ch_32c_dp_2src :: Insn
crc32ch_32c_dp_2src = CRC32CH CRC32CH_32C_dp_2src

crc32cw_32c_dp_2src :: Insn
crc32cw_32c_dp_2src = CRC32CW CRC32CW_32C_dp_2src

crc32cx_64c_dp_2src :: Insn
crc32cx_64c_dp_2src = CRC32CX CRC32CX_64C_dp_2src

crc32h_32c_dp_2src :: Insn
crc32h_32c_dp_2src = CRC32H CRC32H_32C_dp_2src

crc32w_32c_dp_2src :: Insn
crc32w_32c_dp_2src = CRC32W CRC32W_32C_dp_2src

crc32x_64c_dp_2src :: Insn
crc32x_64c_dp_2src = CRC32X CRC32X_64C_dp_2src

csel_32_condsel :: Wn -> Wn -> Wn -> Cond -> Insn
csel_32_condsel x1 x2 x3 x4 = CSEL (CSEL_32_condsel x1 x2 x3 x4)

csel_64_condsel :: Insn
csel_64_condsel = CSEL CSEL_64_condsel

csinc_32_condsel :: Wn -> Wn -> Wn -> Cond -> Insn
csinc_32_condsel x1 x2 x3 x4 = CSINC (CSINC_32_condsel x1 x2 x3 x4)

csinc_64_condsel :: Insn
csinc_64_condsel = CSINC CSINC_64_condsel

csinv_32_condsel :: Wn -> Wn -> Wn -> Cond -> Insn
csinv_32_condsel x1 x2 x3 x4 = CSINV (CSINV_32_condsel x1 x2 x3 x4)

csinv_64_condsel :: Insn
csinv_64_condsel = CSINV CSINV_64_condsel

csneg_32_condsel :: Wn -> Wn -> Wn -> Cond -> Insn
csneg_32_condsel x1 x2 x3 x4 = CSNEG (CSNEG_32_condsel x1 x2 x3 x4)

csneg_64_condsel :: Insn
csneg_64_condsel = CSNEG CSNEG_64_condsel

dcps1_dc_exception :: Insn
dcps1_dc_exception = DCPS1 DCPS1_DC_exception

dcps2_dc_exception :: Insn
dcps2_dc_exception = DCPS2 DCPS2_DC_exception

dcps3_dc_exception :: Insn
dcps3_dc_exception = DCPS3 DCPS3_DC_exception

dmb_bo_system :: Insn
dmb_bo_system = DMB DMB_BO_system

drps_64e_branch_reg :: Insn
drps_64e_branch_reg = DRPS DRPS_64E_branch_reg

dsb_bo_system :: Insn
dsb_bo_system = DSB DSB_BO_system

dup_asisdone_only :: Insn
dup_asisdone_only = DUP DUP_asisdone_only

dup_asimdins_dv_v :: Insn
dup_asimdins_dv_v = DUP DUP_asimdins_DV_v

dup_asimdins_dr_r :: Insn
dup_asimdins_dr_r = DUP DUP_asimdins_DR_r

eon_32_log_shift :: Wn -> Wn -> Wn -> Shift32 -> Insn
eon_32_log_shift x1 x2 x3 x4 = EON (EON_32_log_shift x1 x2 x3 x4)

eon_64_log_shift :: Insn
eon_64_log_shift = EON EON_64_log_shift

eor_32_log_imm :: Insn
eor_32_log_imm = EOR EOR_32_log_imm

eor_64_log_imm :: Insn
eor_64_log_imm = EOR EOR_64_log_imm

eor_32_log_shift :: Wn -> Wn -> Wn -> Shift32 -> Insn
eor_32_log_shift x1 x2 x3 x4 = EOR (EOR_32_log_shift x1 x2 x3 x4)

eor_64_log_shift :: Insn
eor_64_log_shift = EOR EOR_64_log_shift

eor_asimdsame_only :: Insn
eor_asimdsame_only = EOR EOR_asimdsame_only

eor3_vvv16_crypto4 :: Insn
eor3_vvv16_crypto4 = EOR3 EOR3_VVV16_crypto4

eret_64e_branch_reg :: Insn
eret_64e_branch_reg = ERET ERET_64E_branch_reg

eretaa_64e_branch_reg :: Insn
eretaa_64e_branch_reg = ERETAA ERETAA_64E_branch_reg

eretab_64e_branch_reg :: Insn
eretab_64e_branch_reg = ERETAB ERETAB_64E_branch_reg

esb_hi_system :: Insn
esb_hi_system = ESB ESB_HI_system

ext_asimdext_only :: Insn
ext_asimdext_only = EXT EXT_asimdext_only

extr_32_extract :: Insn
extr_32_extract = EXTR EXTR_32_extract

extr_64_extract :: Insn
extr_64_extract = EXTR EXTR_64_extract

fabd_asisdsamefp16_only :: Insn
fabd_asisdsamefp16_only = FABD FABD_asisdsamefp16_only

fabd_asisdsame_only :: Insn
fabd_asisdsame_only = FABD FABD_asisdsame_only

fabd_asimdsamefp16_only :: Insn
fabd_asimdsamefp16_only = FABD FABD_asimdsamefp16_only

fabd_asimdsame_only :: Insn
fabd_asimdsame_only = FABD FABD_asimdsame_only

fabs_h_floatdp1 :: Insn
fabs_h_floatdp1 = FABS FABS_H_floatdp1

fabs_s_floatdp1 :: Insn
fabs_s_floatdp1 = FABS FABS_S_floatdp1

fabs_d_floatdp1 :: Insn
fabs_d_floatdp1 = FABS FABS_D_floatdp1

fabs_asimdmiscfp16_r :: Insn
fabs_asimdmiscfp16_r = FABS FABS_asimdmiscfp16_R

fabs_asimdmisc_r :: Insn
fabs_asimdmisc_r = FABS FABS_asimdmisc_R

facge_asisdsamefp16_only :: Insn
facge_asisdsamefp16_only = FACGE FACGE_asisdsamefp16_only

facge_asisdsame_only :: Insn
facge_asisdsame_only = FACGE FACGE_asisdsame_only

facge_asimdsamefp16_only :: Insn
facge_asimdsamefp16_only = FACGE FACGE_asimdsamefp16_only

facge_asimdsame_only :: Insn
facge_asimdsame_only = FACGE FACGE_asimdsame_only

facgt_asisdsamefp16_only :: Insn
facgt_asisdsamefp16_only = FACGT FACGT_asisdsamefp16_only

facgt_asisdsame_only :: Insn
facgt_asisdsame_only = FACGT FACGT_asisdsame_only

facgt_asimdsamefp16_only :: Insn
facgt_asimdsamefp16_only = FACGT FACGT_asimdsamefp16_only

facgt_asimdsame_only :: Insn
facgt_asimdsame_only = FACGT FACGT_asimdsame_only

fadd_h_floatdp2 :: Insn
fadd_h_floatdp2 = FADD FADD_H_floatdp2

fadd_s_floatdp2 :: Insn
fadd_s_floatdp2 = FADD FADD_S_floatdp2

fadd_d_floatdp2 :: Insn
fadd_d_floatdp2 = FADD FADD_D_floatdp2

fadd_asimdsamefp16_only :: Insn
fadd_asimdsamefp16_only = FADD FADD_asimdsamefp16_only

fadd_asimdsame_only :: Insn
fadd_asimdsame_only = FADD FADD_asimdsame_only

faddp_asisdpair_only_h :: Insn
faddp_asisdpair_only_h = FADDP FADDP_asisdpair_only_H

faddp_asisdpair_only_sd :: Insn
faddp_asisdpair_only_sd = FADDP FADDP_asisdpair_only_SD

faddp_asimdsamefp16_only :: Insn
faddp_asimdsamefp16_only = FADDP FADDP_asimdsamefp16_only

faddp_asimdsame_only :: Insn
faddp_asimdsame_only = FADDP FADDP_asimdsame_only

fcadd_asimdsame2_c :: Insn
fcadd_asimdsame2_c = FCADD FCADD_asimdsame2_C

fccmp_h_floatccmp :: Insn
fccmp_h_floatccmp = FCCMP FCCMP_H_floatccmp

fccmp_s_floatccmp :: Insn
fccmp_s_floatccmp = FCCMP FCCMP_S_floatccmp

fccmp_d_floatccmp :: Insn
fccmp_d_floatccmp = FCCMP FCCMP_D_floatccmp

fccmpe_h_floatccmp :: Insn
fccmpe_h_floatccmp = FCCMPE FCCMPE_H_floatccmp

fccmpe_s_floatccmp :: Insn
fccmpe_s_floatccmp = FCCMPE FCCMPE_S_floatccmp

fccmpe_d_floatccmp :: Insn
fccmpe_d_floatccmp = FCCMPE FCCMPE_D_floatccmp

fcmeq_asisdsamefp16_only :: Insn
fcmeq_asisdsamefp16_only = FCMEQ FCMEQ_asisdsamefp16_only

fcmeq_asisdsame_only :: Insn
fcmeq_asisdsame_only = FCMEQ FCMEQ_asisdsame_only

fcmeq_asimdsamefp16_only :: Insn
fcmeq_asimdsamefp16_only = FCMEQ FCMEQ_asimdsamefp16_only

fcmeq_asimdsame_only :: Insn
fcmeq_asimdsame_only = FCMEQ FCMEQ_asimdsame_only

fcmeq_asisdmiscfp16_fz :: Insn
fcmeq_asisdmiscfp16_fz = FCMEQ FCMEQ_asisdmiscfp16_FZ

fcmeq_asisdmisc_fz :: Insn
fcmeq_asisdmisc_fz = FCMEQ FCMEQ_asisdmisc_FZ

fcmeq_asimdmiscfp16_fz :: Insn
fcmeq_asimdmiscfp16_fz = FCMEQ FCMEQ_asimdmiscfp16_FZ

fcmeq_asimdmisc_fz :: Insn
fcmeq_asimdmisc_fz = FCMEQ FCMEQ_asimdmisc_FZ

fcmge_asisdsamefp16_only :: Insn
fcmge_asisdsamefp16_only = FCMGE FCMGE_asisdsamefp16_only

fcmge_asisdsame_only :: Insn
fcmge_asisdsame_only = FCMGE FCMGE_asisdsame_only

fcmge_asimdsamefp16_only :: Insn
fcmge_asimdsamefp16_only = FCMGE FCMGE_asimdsamefp16_only

fcmge_asimdsame_only :: Insn
fcmge_asimdsame_only = FCMGE FCMGE_asimdsame_only

fcmge_asisdmiscfp16_fz :: Insn
fcmge_asisdmiscfp16_fz = FCMGE FCMGE_asisdmiscfp16_FZ

fcmge_asisdmisc_fz :: Insn
fcmge_asisdmisc_fz = FCMGE FCMGE_asisdmisc_FZ

fcmge_asimdmiscfp16_fz :: Insn
fcmge_asimdmiscfp16_fz = FCMGE FCMGE_asimdmiscfp16_FZ

fcmge_asimdmisc_fz :: Insn
fcmge_asimdmisc_fz = FCMGE FCMGE_asimdmisc_FZ

fcmgt_asisdsamefp16_only :: Insn
fcmgt_asisdsamefp16_only = FCMGT FCMGT_asisdsamefp16_only

fcmgt_asisdsame_only :: Insn
fcmgt_asisdsame_only = FCMGT FCMGT_asisdsame_only

fcmgt_asimdsamefp16_only :: Insn
fcmgt_asimdsamefp16_only = FCMGT FCMGT_asimdsamefp16_only

fcmgt_asimdsame_only :: Insn
fcmgt_asimdsame_only = FCMGT FCMGT_asimdsame_only

fcmgt_asisdmiscfp16_fz :: Insn
fcmgt_asisdmiscfp16_fz = FCMGT FCMGT_asisdmiscfp16_FZ

fcmgt_asisdmisc_fz :: Insn
fcmgt_asisdmisc_fz = FCMGT FCMGT_asisdmisc_FZ

fcmgt_asimdmiscfp16_fz :: Insn
fcmgt_asimdmiscfp16_fz = FCMGT FCMGT_asimdmiscfp16_FZ

fcmgt_asimdmisc_fz :: Insn
fcmgt_asimdmisc_fz = FCMGT FCMGT_asimdmisc_FZ

fcmla_asimdsame2_c :: Insn
fcmla_asimdsame2_c = FCMLA FCMLA_asimdsame2_C

fcmla_asimdelem_c_h :: Insn
fcmla_asimdelem_c_h = FCMLA FCMLA_asimdelem_C_H

fcmla_asimdelem_c_s :: Insn
fcmla_asimdelem_c_s = FCMLA FCMLA_asimdelem_C_S

fcmle_asisdmiscfp16_fz :: Insn
fcmle_asisdmiscfp16_fz = FCMLE FCMLE_asisdmiscfp16_FZ

fcmle_asisdmisc_fz :: Insn
fcmle_asisdmisc_fz = FCMLE FCMLE_asisdmisc_FZ

fcmle_asimdmiscfp16_fz :: Insn
fcmle_asimdmiscfp16_fz = FCMLE FCMLE_asimdmiscfp16_FZ

fcmle_asimdmisc_fz :: Insn
fcmle_asimdmisc_fz = FCMLE FCMLE_asimdmisc_FZ

fcmlt_asisdmiscfp16_fz :: Insn
fcmlt_asisdmiscfp16_fz = FCMLT FCMLT_asisdmiscfp16_FZ

fcmlt_asisdmisc_fz :: Insn
fcmlt_asisdmisc_fz = FCMLT FCMLT_asisdmisc_FZ

fcmlt_asimdmiscfp16_fz :: Insn
fcmlt_asimdmiscfp16_fz = FCMLT FCMLT_asimdmiscfp16_FZ

fcmlt_asimdmisc_fz :: Insn
fcmlt_asimdmisc_fz = FCMLT FCMLT_asimdmisc_FZ

fcmp_h_floatcmp :: Insn
fcmp_h_floatcmp = FCMP FCMP_H_floatcmp

fcmp_hz_floatcmp :: Insn
fcmp_hz_floatcmp = FCMP FCMP_HZ_floatcmp

fcmp_s_floatcmp :: Insn
fcmp_s_floatcmp = FCMP FCMP_S_floatcmp

fcmp_sz_floatcmp :: Insn
fcmp_sz_floatcmp = FCMP FCMP_SZ_floatcmp

fcmp_d_floatcmp :: Insn
fcmp_d_floatcmp = FCMP FCMP_D_floatcmp

fcmp_dz_floatcmp :: Insn
fcmp_dz_floatcmp = FCMP FCMP_DZ_floatcmp

fcmpe_h_floatcmp :: Insn
fcmpe_h_floatcmp = FCMPE FCMPE_H_floatcmp

fcmpe_hz_floatcmp :: Insn
fcmpe_hz_floatcmp = FCMPE FCMPE_HZ_floatcmp

fcmpe_s_floatcmp :: Insn
fcmpe_s_floatcmp = FCMPE FCMPE_S_floatcmp

fcmpe_sz_floatcmp :: Insn
fcmpe_sz_floatcmp = FCMPE FCMPE_SZ_floatcmp

fcmpe_d_floatcmp :: Insn
fcmpe_d_floatcmp = FCMPE FCMPE_D_floatcmp

fcmpe_dz_floatcmp :: Insn
fcmpe_dz_floatcmp = FCMPE FCMPE_DZ_floatcmp

fcsel_h_floatsel :: Insn
fcsel_h_floatsel = FCSEL FCSEL_H_floatsel

fcsel_s_floatsel :: Insn
fcsel_s_floatsel = FCSEL FCSEL_S_floatsel

fcsel_d_floatsel :: Insn
fcsel_d_floatsel = FCSEL FCSEL_D_floatsel

fcvt_sh_floatdp1 :: Insn
fcvt_sh_floatdp1 = FCVT FCVT_SH_floatdp1

fcvt_dh_floatdp1 :: Insn
fcvt_dh_floatdp1 = FCVT FCVT_DH_floatdp1

fcvt_hs_floatdp1 :: Insn
fcvt_hs_floatdp1 = FCVT FCVT_HS_floatdp1

fcvt_ds_floatdp1 :: Insn
fcvt_ds_floatdp1 = FCVT FCVT_DS_floatdp1

fcvt_hd_floatdp1 :: Insn
fcvt_hd_floatdp1 = FCVT FCVT_HD_floatdp1

fcvt_sd_floatdp1 :: Insn
fcvt_sd_floatdp1 = FCVT FCVT_SD_floatdp1

fcvtas_32h_float2int :: Insn
fcvtas_32h_float2int = FCVTAS FCVTAS_32H_float2int

fcvtas_64h_float2int :: Insn
fcvtas_64h_float2int = FCVTAS FCVTAS_64H_float2int

fcvtas_32s_float2int :: Insn
fcvtas_32s_float2int = FCVTAS FCVTAS_32S_float2int

fcvtas_64s_float2int :: Insn
fcvtas_64s_float2int = FCVTAS FCVTAS_64S_float2int

fcvtas_32d_float2int :: Insn
fcvtas_32d_float2int = FCVTAS FCVTAS_32D_float2int

fcvtas_64d_float2int :: Insn
fcvtas_64d_float2int = FCVTAS FCVTAS_64D_float2int

fcvtas_asisdmiscfp16_r :: Insn
fcvtas_asisdmiscfp16_r = FCVTAS FCVTAS_asisdmiscfp16_R

fcvtas_asisdmisc_r :: Insn
fcvtas_asisdmisc_r = FCVTAS FCVTAS_asisdmisc_R

fcvtas_asimdmiscfp16_r :: Insn
fcvtas_asimdmiscfp16_r = FCVTAS FCVTAS_asimdmiscfp16_R

fcvtas_asimdmisc_r :: Insn
fcvtas_asimdmisc_r = FCVTAS FCVTAS_asimdmisc_R

fcvtau_32h_float2int :: Insn
fcvtau_32h_float2int = FCVTAU FCVTAU_32H_float2int

fcvtau_64h_float2int :: Insn
fcvtau_64h_float2int = FCVTAU FCVTAU_64H_float2int

fcvtau_32s_float2int :: Insn
fcvtau_32s_float2int = FCVTAU FCVTAU_32S_float2int

fcvtau_64s_float2int :: Insn
fcvtau_64s_float2int = FCVTAU FCVTAU_64S_float2int

fcvtau_32d_float2int :: Insn
fcvtau_32d_float2int = FCVTAU FCVTAU_32D_float2int

fcvtau_64d_float2int :: Insn
fcvtau_64d_float2int = FCVTAU FCVTAU_64D_float2int

fcvtau_asisdmiscfp16_r :: Insn
fcvtau_asisdmiscfp16_r = FCVTAU FCVTAU_asisdmiscfp16_R

fcvtau_asisdmisc_r :: Insn
fcvtau_asisdmisc_r = FCVTAU FCVTAU_asisdmisc_R

fcvtau_asimdmiscfp16_r :: Insn
fcvtau_asimdmiscfp16_r = FCVTAU FCVTAU_asimdmiscfp16_R

fcvtau_asimdmisc_r :: Insn
fcvtau_asimdmisc_r = FCVTAU FCVTAU_asimdmisc_R

fcvtl_asimdmisc_l :: Insn
fcvtl_asimdmisc_l = FCVTL FCVTL_asimdmisc_L

fcvtms_32h_float2int :: Insn
fcvtms_32h_float2int = FCVTMS FCVTMS_32H_float2int

fcvtms_64h_float2int :: Insn
fcvtms_64h_float2int = FCVTMS FCVTMS_64H_float2int

fcvtms_32s_float2int :: Insn
fcvtms_32s_float2int = FCVTMS FCVTMS_32S_float2int

fcvtms_64s_float2int :: Insn
fcvtms_64s_float2int = FCVTMS FCVTMS_64S_float2int

fcvtms_32d_float2int :: Insn
fcvtms_32d_float2int = FCVTMS FCVTMS_32D_float2int

fcvtms_64d_float2int :: Insn
fcvtms_64d_float2int = FCVTMS FCVTMS_64D_float2int

fcvtms_asisdmiscfp16_r :: Insn
fcvtms_asisdmiscfp16_r = FCVTMS FCVTMS_asisdmiscfp16_R

fcvtms_asisdmisc_r :: Insn
fcvtms_asisdmisc_r = FCVTMS FCVTMS_asisdmisc_R

fcvtms_asimdmiscfp16_r :: Insn
fcvtms_asimdmiscfp16_r = FCVTMS FCVTMS_asimdmiscfp16_R

fcvtms_asimdmisc_r :: Insn
fcvtms_asimdmisc_r = FCVTMS FCVTMS_asimdmisc_R

fcvtmu_32h_float2int :: Insn
fcvtmu_32h_float2int = FCVTMU FCVTMU_32H_float2int

fcvtmu_64h_float2int :: Insn
fcvtmu_64h_float2int = FCVTMU FCVTMU_64H_float2int

fcvtmu_32s_float2int :: Insn
fcvtmu_32s_float2int = FCVTMU FCVTMU_32S_float2int

fcvtmu_64s_float2int :: Insn
fcvtmu_64s_float2int = FCVTMU FCVTMU_64S_float2int

fcvtmu_32d_float2int :: Insn
fcvtmu_32d_float2int = FCVTMU FCVTMU_32D_float2int

fcvtmu_64d_float2int :: Insn
fcvtmu_64d_float2int = FCVTMU FCVTMU_64D_float2int

fcvtmu_asisdmiscfp16_r :: Insn
fcvtmu_asisdmiscfp16_r = FCVTMU FCVTMU_asisdmiscfp16_R

fcvtmu_asisdmisc_r :: Insn
fcvtmu_asisdmisc_r = FCVTMU FCVTMU_asisdmisc_R

fcvtmu_asimdmiscfp16_r :: Insn
fcvtmu_asimdmiscfp16_r = FCVTMU FCVTMU_asimdmiscfp16_R

fcvtmu_asimdmisc_r :: Insn
fcvtmu_asimdmisc_r = FCVTMU FCVTMU_asimdmisc_R

fcvtn_asimdmisc_n :: Insn
fcvtn_asimdmisc_n = FCVTN FCVTN_asimdmisc_N

fcvtns_32h_float2int :: Insn
fcvtns_32h_float2int = FCVTNS FCVTNS_32H_float2int

fcvtns_64h_float2int :: Insn
fcvtns_64h_float2int = FCVTNS FCVTNS_64H_float2int

fcvtns_32s_float2int :: Insn
fcvtns_32s_float2int = FCVTNS FCVTNS_32S_float2int

fcvtns_64s_float2int :: Insn
fcvtns_64s_float2int = FCVTNS FCVTNS_64S_float2int

fcvtns_32d_float2int :: Insn
fcvtns_32d_float2int = FCVTNS FCVTNS_32D_float2int

fcvtns_64d_float2int :: Insn
fcvtns_64d_float2int = FCVTNS FCVTNS_64D_float2int

fcvtns_asisdmiscfp16_r :: Insn
fcvtns_asisdmiscfp16_r = FCVTNS FCVTNS_asisdmiscfp16_R

fcvtns_asisdmisc_r :: Insn
fcvtns_asisdmisc_r = FCVTNS FCVTNS_asisdmisc_R

fcvtns_asimdmiscfp16_r :: Insn
fcvtns_asimdmiscfp16_r = FCVTNS FCVTNS_asimdmiscfp16_R

fcvtns_asimdmisc_r :: Insn
fcvtns_asimdmisc_r = FCVTNS FCVTNS_asimdmisc_R

fcvtnu_32h_float2int :: Insn
fcvtnu_32h_float2int = FCVTNU FCVTNU_32H_float2int

fcvtnu_64h_float2int :: Insn
fcvtnu_64h_float2int = FCVTNU FCVTNU_64H_float2int

fcvtnu_32s_float2int :: Insn
fcvtnu_32s_float2int = FCVTNU FCVTNU_32S_float2int

fcvtnu_64s_float2int :: Insn
fcvtnu_64s_float2int = FCVTNU FCVTNU_64S_float2int

fcvtnu_32d_float2int :: Insn
fcvtnu_32d_float2int = FCVTNU FCVTNU_32D_float2int

fcvtnu_64d_float2int :: Insn
fcvtnu_64d_float2int = FCVTNU FCVTNU_64D_float2int

fcvtnu_asisdmiscfp16_r :: Insn
fcvtnu_asisdmiscfp16_r = FCVTNU FCVTNU_asisdmiscfp16_R

fcvtnu_asisdmisc_r :: Insn
fcvtnu_asisdmisc_r = FCVTNU FCVTNU_asisdmisc_R

fcvtnu_asimdmiscfp16_r :: Insn
fcvtnu_asimdmiscfp16_r = FCVTNU FCVTNU_asimdmiscfp16_R

fcvtnu_asimdmisc_r :: Insn
fcvtnu_asimdmisc_r = FCVTNU FCVTNU_asimdmisc_R

fcvtps_32h_float2int :: Insn
fcvtps_32h_float2int = FCVTPS FCVTPS_32H_float2int

fcvtps_64h_float2int :: Insn
fcvtps_64h_float2int = FCVTPS FCVTPS_64H_float2int

fcvtps_32s_float2int :: Insn
fcvtps_32s_float2int = FCVTPS FCVTPS_32S_float2int

fcvtps_64s_float2int :: Insn
fcvtps_64s_float2int = FCVTPS FCVTPS_64S_float2int

fcvtps_32d_float2int :: Insn
fcvtps_32d_float2int = FCVTPS FCVTPS_32D_float2int

fcvtps_64d_float2int :: Insn
fcvtps_64d_float2int = FCVTPS FCVTPS_64D_float2int

fcvtps_asisdmiscfp16_r :: Insn
fcvtps_asisdmiscfp16_r = FCVTPS FCVTPS_asisdmiscfp16_R

fcvtps_asisdmisc_r :: Insn
fcvtps_asisdmisc_r = FCVTPS FCVTPS_asisdmisc_R

fcvtps_asimdmiscfp16_r :: Insn
fcvtps_asimdmiscfp16_r = FCVTPS FCVTPS_asimdmiscfp16_R

fcvtps_asimdmisc_r :: Insn
fcvtps_asimdmisc_r = FCVTPS FCVTPS_asimdmisc_R

fcvtpu_32h_float2int :: Insn
fcvtpu_32h_float2int = FCVTPU FCVTPU_32H_float2int

fcvtpu_64h_float2int :: Insn
fcvtpu_64h_float2int = FCVTPU FCVTPU_64H_float2int

fcvtpu_32s_float2int :: Insn
fcvtpu_32s_float2int = FCVTPU FCVTPU_32S_float2int

fcvtpu_64s_float2int :: Insn
fcvtpu_64s_float2int = FCVTPU FCVTPU_64S_float2int

fcvtpu_32d_float2int :: Insn
fcvtpu_32d_float2int = FCVTPU FCVTPU_32D_float2int

fcvtpu_64d_float2int :: Insn
fcvtpu_64d_float2int = FCVTPU FCVTPU_64D_float2int

fcvtpu_asisdmiscfp16_r :: Insn
fcvtpu_asisdmiscfp16_r = FCVTPU FCVTPU_asisdmiscfp16_R

fcvtpu_asisdmisc_r :: Insn
fcvtpu_asisdmisc_r = FCVTPU FCVTPU_asisdmisc_R

fcvtpu_asimdmiscfp16_r :: Insn
fcvtpu_asimdmiscfp16_r = FCVTPU FCVTPU_asimdmiscfp16_R

fcvtpu_asimdmisc_r :: Insn
fcvtpu_asimdmisc_r = FCVTPU FCVTPU_asimdmisc_R

fcvtxn_asisdmisc_n :: Insn
fcvtxn_asisdmisc_n = FCVTXN FCVTXN_asisdmisc_N

fcvtxn_asimdmisc_n :: Insn
fcvtxn_asimdmisc_n = FCVTXN FCVTXN_asimdmisc_N

fcvtzs_32h_float2fix :: Insn
fcvtzs_32h_float2fix = FCVTZS FCVTZS_32H_float2fix

fcvtzs_64h_float2fix :: Insn
fcvtzs_64h_float2fix = FCVTZS FCVTZS_64H_float2fix

fcvtzs_32s_float2fix :: Insn
fcvtzs_32s_float2fix = FCVTZS FCVTZS_32S_float2fix

fcvtzs_64s_float2fix :: Insn
fcvtzs_64s_float2fix = FCVTZS FCVTZS_64S_float2fix

fcvtzs_32d_float2fix :: Insn
fcvtzs_32d_float2fix = FCVTZS FCVTZS_32D_float2fix

fcvtzs_64d_float2fix :: Insn
fcvtzs_64d_float2fix = FCVTZS FCVTZS_64D_float2fix

fcvtzs_32h_float2int :: Insn
fcvtzs_32h_float2int = FCVTZS FCVTZS_32H_float2int

fcvtzs_64h_float2int :: Insn
fcvtzs_64h_float2int = FCVTZS FCVTZS_64H_float2int

fcvtzs_32s_float2int :: Insn
fcvtzs_32s_float2int = FCVTZS FCVTZS_32S_float2int

fcvtzs_64s_float2int :: Insn
fcvtzs_64s_float2int = FCVTZS FCVTZS_64S_float2int

fcvtzs_32d_float2int :: Insn
fcvtzs_32d_float2int = FCVTZS FCVTZS_32D_float2int

fcvtzs_64d_float2int :: Insn
fcvtzs_64d_float2int = FCVTZS FCVTZS_64D_float2int

fcvtzs_asisdshf_c :: Insn
fcvtzs_asisdshf_c = FCVTZS FCVTZS_asisdshf_C

fcvtzs_asimdshf_c :: Insn
fcvtzs_asimdshf_c = FCVTZS FCVTZS_asimdshf_C

fcvtzs_asisdmiscfp16_r :: Insn
fcvtzs_asisdmiscfp16_r = FCVTZS FCVTZS_asisdmiscfp16_R

fcvtzs_asisdmisc_r :: Insn
fcvtzs_asisdmisc_r = FCVTZS FCVTZS_asisdmisc_R

fcvtzs_asimdmiscfp16_r :: Insn
fcvtzs_asimdmiscfp16_r = FCVTZS FCVTZS_asimdmiscfp16_R

fcvtzs_asimdmisc_r :: Insn
fcvtzs_asimdmisc_r = FCVTZS FCVTZS_asimdmisc_R

fcvtzu_32h_float2fix :: Insn
fcvtzu_32h_float2fix = FCVTZU FCVTZU_32H_float2fix

fcvtzu_64h_float2fix :: Insn
fcvtzu_64h_float2fix = FCVTZU FCVTZU_64H_float2fix

fcvtzu_32s_float2fix :: Insn
fcvtzu_32s_float2fix = FCVTZU FCVTZU_32S_float2fix

fcvtzu_64s_float2fix :: Insn
fcvtzu_64s_float2fix = FCVTZU FCVTZU_64S_float2fix

fcvtzu_32d_float2fix :: Insn
fcvtzu_32d_float2fix = FCVTZU FCVTZU_32D_float2fix

fcvtzu_64d_float2fix :: Insn
fcvtzu_64d_float2fix = FCVTZU FCVTZU_64D_float2fix

fcvtzu_32h_float2int :: Insn
fcvtzu_32h_float2int = FCVTZU FCVTZU_32H_float2int

fcvtzu_64h_float2int :: Insn
fcvtzu_64h_float2int = FCVTZU FCVTZU_64H_float2int

fcvtzu_32s_float2int :: Insn
fcvtzu_32s_float2int = FCVTZU FCVTZU_32S_float2int

fcvtzu_64s_float2int :: Insn
fcvtzu_64s_float2int = FCVTZU FCVTZU_64S_float2int

fcvtzu_32d_float2int :: Insn
fcvtzu_32d_float2int = FCVTZU FCVTZU_32D_float2int

fcvtzu_64d_float2int :: Insn
fcvtzu_64d_float2int = FCVTZU FCVTZU_64D_float2int

fcvtzu_asisdshf_c :: Insn
fcvtzu_asisdshf_c = FCVTZU FCVTZU_asisdshf_C

fcvtzu_asimdshf_c :: Insn
fcvtzu_asimdshf_c = FCVTZU FCVTZU_asimdshf_C

fcvtzu_asisdmiscfp16_r :: Insn
fcvtzu_asisdmiscfp16_r = FCVTZU FCVTZU_asisdmiscfp16_R

fcvtzu_asisdmisc_r :: Insn
fcvtzu_asisdmisc_r = FCVTZU FCVTZU_asisdmisc_R

fcvtzu_asimdmiscfp16_r :: Insn
fcvtzu_asimdmiscfp16_r = FCVTZU FCVTZU_asimdmiscfp16_R

fcvtzu_asimdmisc_r :: Insn
fcvtzu_asimdmisc_r = FCVTZU FCVTZU_asimdmisc_R

fdiv_h_floatdp2 :: Insn
fdiv_h_floatdp2 = FDIV FDIV_H_floatdp2

fdiv_s_floatdp2 :: Insn
fdiv_s_floatdp2 = FDIV FDIV_S_floatdp2

fdiv_d_floatdp2 :: Insn
fdiv_d_floatdp2 = FDIV FDIV_D_floatdp2

fdiv_asimdsamefp16_only :: Insn
fdiv_asimdsamefp16_only = FDIV FDIV_asimdsamefp16_only

fdiv_asimdsame_only :: Insn
fdiv_asimdsame_only = FDIV FDIV_asimdsame_only

fjcvtzs_32d_float2int :: Insn
fjcvtzs_32d_float2int = FJCVTZS FJCVTZS_32D_float2int

fmadd_h_floatdp3 :: Insn
fmadd_h_floatdp3 = FMADD FMADD_H_floatdp3

fmadd_s_floatdp3 :: Insn
fmadd_s_floatdp3 = FMADD FMADD_S_floatdp3

fmadd_d_floatdp3 :: Insn
fmadd_d_floatdp3 = FMADD FMADD_D_floatdp3

fmax_h_floatdp2 :: Insn
fmax_h_floatdp2 = FMAX FMAX_H_floatdp2

fmax_s_floatdp2 :: Insn
fmax_s_floatdp2 = FMAX FMAX_S_floatdp2

fmax_d_floatdp2 :: Insn
fmax_d_floatdp2 = FMAX FMAX_D_floatdp2

fmax_asimdsamefp16_only :: Insn
fmax_asimdsamefp16_only = FMAX FMAX_asimdsamefp16_only

fmax_asimdsame_only :: Insn
fmax_asimdsame_only = FMAX FMAX_asimdsame_only

fmaxnm_h_floatdp2 :: Insn
fmaxnm_h_floatdp2 = FMAXNM FMAXNM_H_floatdp2

fmaxnm_s_floatdp2 :: Insn
fmaxnm_s_floatdp2 = FMAXNM FMAXNM_S_floatdp2

fmaxnm_d_floatdp2 :: Insn
fmaxnm_d_floatdp2 = FMAXNM FMAXNM_D_floatdp2

fmaxnm_asimdsamefp16_only :: Insn
fmaxnm_asimdsamefp16_only = FMAXNM FMAXNM_asimdsamefp16_only

fmaxnm_asimdsame_only :: Insn
fmaxnm_asimdsame_only = FMAXNM FMAXNM_asimdsame_only

fmaxnmp_asisdpair_only_h :: Insn
fmaxnmp_asisdpair_only_h = FMAXNMP FMAXNMP_asisdpair_only_H

fmaxnmp_asisdpair_only_sd :: Insn
fmaxnmp_asisdpair_only_sd = FMAXNMP FMAXNMP_asisdpair_only_SD

fmaxnmp_asimdsamefp16_only :: Insn
fmaxnmp_asimdsamefp16_only = FMAXNMP FMAXNMP_asimdsamefp16_only

fmaxnmp_asimdsame_only :: Insn
fmaxnmp_asimdsame_only = FMAXNMP FMAXNMP_asimdsame_only

fmaxnmv_asimdall_only_h :: Insn
fmaxnmv_asimdall_only_h = FMAXNMV FMAXNMV_asimdall_only_H

fmaxnmv_asimdall_only_sd :: Insn
fmaxnmv_asimdall_only_sd = FMAXNMV FMAXNMV_asimdall_only_SD

fmaxp_asisdpair_only_h :: Insn
fmaxp_asisdpair_only_h = FMAXP FMAXP_asisdpair_only_H

fmaxp_asisdpair_only_sd :: Insn
fmaxp_asisdpair_only_sd = FMAXP FMAXP_asisdpair_only_SD

fmaxp_asimdsamefp16_only :: Insn
fmaxp_asimdsamefp16_only = FMAXP FMAXP_asimdsamefp16_only

fmaxp_asimdsame_only :: Insn
fmaxp_asimdsame_only = FMAXP FMAXP_asimdsame_only

fmaxv_asimdall_only_h :: Insn
fmaxv_asimdall_only_h = FMAXV FMAXV_asimdall_only_H

fmaxv_asimdall_only_sd :: Insn
fmaxv_asimdall_only_sd = FMAXV FMAXV_asimdall_only_SD

fmin_h_floatdp2 :: Insn
fmin_h_floatdp2 = FMIN FMIN_H_floatdp2

fmin_s_floatdp2 :: Insn
fmin_s_floatdp2 = FMIN FMIN_S_floatdp2

fmin_d_floatdp2 :: Insn
fmin_d_floatdp2 = FMIN FMIN_D_floatdp2

fmin_asimdsamefp16_only :: Insn
fmin_asimdsamefp16_only = FMIN FMIN_asimdsamefp16_only

fmin_asimdsame_only :: Insn
fmin_asimdsame_only = FMIN FMIN_asimdsame_only

fminnm_h_floatdp2 :: Insn
fminnm_h_floatdp2 = FMINNM FMINNM_H_floatdp2

fminnm_s_floatdp2 :: Insn
fminnm_s_floatdp2 = FMINNM FMINNM_S_floatdp2

fminnm_d_floatdp2 :: Insn
fminnm_d_floatdp2 = FMINNM FMINNM_D_floatdp2

fminnm_asimdsamefp16_only :: Insn
fminnm_asimdsamefp16_only = FMINNM FMINNM_asimdsamefp16_only

fminnm_asimdsame_only :: Insn
fminnm_asimdsame_only = FMINNM FMINNM_asimdsame_only

fminnmp_asisdpair_only_h :: Insn
fminnmp_asisdpair_only_h = FMINNMP FMINNMP_asisdpair_only_H

fminnmp_asisdpair_only_sd :: Insn
fminnmp_asisdpair_only_sd = FMINNMP FMINNMP_asisdpair_only_SD

fminnmp_asimdsamefp16_only :: Insn
fminnmp_asimdsamefp16_only = FMINNMP FMINNMP_asimdsamefp16_only

fminnmp_asimdsame_only :: Insn
fminnmp_asimdsame_only = FMINNMP FMINNMP_asimdsame_only

fminnmv_asimdall_only_h :: Insn
fminnmv_asimdall_only_h = FMINNMV FMINNMV_asimdall_only_H

fminnmv_asimdall_only_sd :: Insn
fminnmv_asimdall_only_sd = FMINNMV FMINNMV_asimdall_only_SD

fminp_asisdpair_only_h :: Insn
fminp_asisdpair_only_h = FMINP FMINP_asisdpair_only_H

fminp_asisdpair_only_sd :: Insn
fminp_asisdpair_only_sd = FMINP FMINP_asisdpair_only_SD

fminp_asimdsamefp16_only :: Insn
fminp_asimdsamefp16_only = FMINP FMINP_asimdsamefp16_only

fminp_asimdsame_only :: Insn
fminp_asimdsame_only = FMINP FMINP_asimdsame_only

fminv_asimdall_only_h :: Insn
fminv_asimdall_only_h = FMINV FMINV_asimdall_only_H

fminv_asimdall_only_sd :: Insn
fminv_asimdall_only_sd = FMINV FMINV_asimdall_only_SD

fmla_asisdelem_rh_h :: Insn
fmla_asisdelem_rh_h = FMLA FMLA_asisdelem_RH_H

fmla_asisdelem_r_sd :: Insn
fmla_asisdelem_r_sd = FMLA FMLA_asisdelem_R_SD

fmla_asimdelem_rh_h :: Insn
fmla_asimdelem_rh_h = FMLA FMLA_asimdelem_RH_H

fmla_asimdelem_r_sd :: Insn
fmla_asimdelem_r_sd = FMLA FMLA_asimdelem_R_SD

fmla_asimdsamefp16_only :: Insn
fmla_asimdsamefp16_only = FMLA FMLA_asimdsamefp16_only

fmla_asimdsame_only :: Insn
fmla_asimdsame_only = FMLA FMLA_asimdsame_only

fmls_asisdelem_rh_h :: Insn
fmls_asisdelem_rh_h = FMLS FMLS_asisdelem_RH_H

fmls_asisdelem_r_sd :: Insn
fmls_asisdelem_r_sd = FMLS FMLS_asisdelem_R_SD

fmls_asimdelem_rh_h :: Insn
fmls_asimdelem_rh_h = FMLS FMLS_asimdelem_RH_H

fmls_asimdelem_r_sd :: Insn
fmls_asimdelem_r_sd = FMLS FMLS_asimdelem_R_SD

fmls_asimdsamefp16_only :: Insn
fmls_asimdsamefp16_only = FMLS FMLS_asimdsamefp16_only

fmls_asimdsame_only :: Insn
fmls_asimdsame_only = FMLS FMLS_asimdsame_only

fmov_32h_float2int :: Insn
fmov_32h_float2int = FMOV FMOV_32H_float2int

fmov_64h_float2int :: Insn
fmov_64h_float2int = FMOV FMOV_64H_float2int

fmov_h32_float2int :: Insn
fmov_h32_float2int = FMOV FMOV_H32_float2int

fmov_s32_float2int :: Insn
fmov_s32_float2int = FMOV FMOV_S32_float2int

fmov_32s_float2int :: Insn
fmov_32s_float2int = FMOV FMOV_32S_float2int

fmov_h64_float2int :: Insn
fmov_h64_float2int = FMOV FMOV_H64_float2int

fmov_d64_float2int :: Insn
fmov_d64_float2int = FMOV FMOV_D64_float2int

fmov_v64i_float2int :: Insn
fmov_v64i_float2int = FMOV FMOV_V64I_float2int

fmov_64d_float2int :: Insn
fmov_64d_float2int = FMOV FMOV_64D_float2int

fmov_64vx_float2int :: Insn
fmov_64vx_float2int = FMOV FMOV_64VX_float2int

fmov_h_floatdp1 :: Insn
fmov_h_floatdp1 = FMOV FMOV_H_floatdp1

fmov_s_floatdp1 :: Insn
fmov_s_floatdp1 = FMOV FMOV_S_floatdp1

fmov_d_floatdp1 :: Insn
fmov_d_floatdp1 = FMOV FMOV_D_floatdp1

fmov_h_floatimm :: Insn
fmov_h_floatimm = FMOV FMOV_H_floatimm

fmov_s_floatimm :: Insn
fmov_s_floatimm = FMOV FMOV_S_floatimm

fmov_d_floatimm :: Insn
fmov_d_floatimm = FMOV FMOV_D_floatimm

fmov_asimdimm_h_h :: Insn
fmov_asimdimm_h_h = FMOV FMOV_asimdimm_H_h

fmov_asimdimm_s_s :: Insn
fmov_asimdimm_s_s = FMOV FMOV_asimdimm_S_s

fmov_asimdimm_d2_d :: Insn
fmov_asimdimm_d2_d = FMOV FMOV_asimdimm_D2_d

fmsub_h_floatdp3 :: Insn
fmsub_h_floatdp3 = FMSUB FMSUB_H_floatdp3

fmsub_s_floatdp3 :: Insn
fmsub_s_floatdp3 = FMSUB FMSUB_S_floatdp3

fmsub_d_floatdp3 :: Insn
fmsub_d_floatdp3 = FMSUB FMSUB_D_floatdp3

fmul_asisdelem_rh_h :: Insn
fmul_asisdelem_rh_h = FMUL FMUL_asisdelem_RH_H

fmul_asisdelem_r_sd :: Insn
fmul_asisdelem_r_sd = FMUL FMUL_asisdelem_R_SD

fmul_asimdelem_rh_h :: Insn
fmul_asimdelem_rh_h = FMUL FMUL_asimdelem_RH_H

fmul_asimdelem_r_sd :: Insn
fmul_asimdelem_r_sd = FMUL FMUL_asimdelem_R_SD

fmul_h_floatdp2 :: Insn
fmul_h_floatdp2 = FMUL FMUL_H_floatdp2

fmul_s_floatdp2 :: Insn
fmul_s_floatdp2 = FMUL FMUL_S_floatdp2

fmul_d_floatdp2 :: Insn
fmul_d_floatdp2 = FMUL FMUL_D_floatdp2

fmul_asimdsamefp16_only :: Insn
fmul_asimdsamefp16_only = FMUL FMUL_asimdsamefp16_only

fmul_asimdsame_only :: Insn
fmul_asimdsame_only = FMUL FMUL_asimdsame_only

fmulx_asisdsamefp16_only :: Insn
fmulx_asisdsamefp16_only = FMULX FMULX_asisdsamefp16_only

fmulx_asisdsame_only :: Insn
fmulx_asisdsame_only = FMULX FMULX_asisdsame_only

fmulx_asimdsamefp16_only :: Insn
fmulx_asimdsamefp16_only = FMULX FMULX_asimdsamefp16_only

fmulx_asimdsame_only :: Insn
fmulx_asimdsame_only = FMULX FMULX_asimdsame_only

fmulx_asisdelem_rh_h :: Insn
fmulx_asisdelem_rh_h = FMULX FMULX_asisdelem_RH_H

fmulx_asisdelem_r_sd :: Insn
fmulx_asisdelem_r_sd = FMULX FMULX_asisdelem_R_SD

fmulx_asimdelem_rh_h :: Insn
fmulx_asimdelem_rh_h = FMULX FMULX_asimdelem_RH_H

fmulx_asimdelem_r_sd :: Insn
fmulx_asimdelem_r_sd = FMULX FMULX_asimdelem_R_SD

fneg_h_floatdp1 :: Insn
fneg_h_floatdp1 = FNEG FNEG_H_floatdp1

fneg_s_floatdp1 :: Insn
fneg_s_floatdp1 = FNEG FNEG_S_floatdp1

fneg_d_floatdp1 :: Insn
fneg_d_floatdp1 = FNEG FNEG_D_floatdp1

fneg_asimdmiscfp16_r :: Insn
fneg_asimdmiscfp16_r = FNEG FNEG_asimdmiscfp16_R

fneg_asimdmisc_r :: Insn
fneg_asimdmisc_r = FNEG FNEG_asimdmisc_R

fnmadd_h_floatdp3 :: Insn
fnmadd_h_floatdp3 = FNMADD FNMADD_H_floatdp3

fnmadd_s_floatdp3 :: Insn
fnmadd_s_floatdp3 = FNMADD FNMADD_S_floatdp3

fnmadd_d_floatdp3 :: Insn
fnmadd_d_floatdp3 = FNMADD FNMADD_D_floatdp3

fnmsub_h_floatdp3 :: Insn
fnmsub_h_floatdp3 = FNMSUB FNMSUB_H_floatdp3

fnmsub_s_floatdp3 :: Insn
fnmsub_s_floatdp3 = FNMSUB FNMSUB_S_floatdp3

fnmsub_d_floatdp3 :: Insn
fnmsub_d_floatdp3 = FNMSUB FNMSUB_D_floatdp3

fnmul_h_floatdp2 :: Insn
fnmul_h_floatdp2 = FNMUL FNMUL_H_floatdp2

fnmul_s_floatdp2 :: Insn
fnmul_s_floatdp2 = FNMUL FNMUL_S_floatdp2

fnmul_d_floatdp2 :: Insn
fnmul_d_floatdp2 = FNMUL FNMUL_D_floatdp2

frecpe_asisdmiscfp16_r :: Insn
frecpe_asisdmiscfp16_r = FRECPE FRECPE_asisdmiscfp16_R

frecpe_asisdmisc_r :: Insn
frecpe_asisdmisc_r = FRECPE FRECPE_asisdmisc_R

frecpe_asimdmiscfp16_r :: Insn
frecpe_asimdmiscfp16_r = FRECPE FRECPE_asimdmiscfp16_R

frecpe_asimdmisc_r :: Insn
frecpe_asimdmisc_r = FRECPE FRECPE_asimdmisc_R

frecps_asisdsamefp16_only :: Insn
frecps_asisdsamefp16_only = FRECPS FRECPS_asisdsamefp16_only

frecps_asisdsame_only :: Insn
frecps_asisdsame_only = FRECPS FRECPS_asisdsame_only

frecps_asimdsamefp16_only :: Insn
frecps_asimdsamefp16_only = FRECPS FRECPS_asimdsamefp16_only

frecps_asimdsame_only :: Insn
frecps_asimdsame_only = FRECPS FRECPS_asimdsame_only

frecpx_asisdmiscfp16_r :: Insn
frecpx_asisdmiscfp16_r = FRECPX FRECPX_asisdmiscfp16_R

frecpx_asisdmisc_r :: Insn
frecpx_asisdmisc_r = FRECPX FRECPX_asisdmisc_R

frinta_h_floatdp1 :: Insn
frinta_h_floatdp1 = FRINTA FRINTA_H_floatdp1

frinta_s_floatdp1 :: Insn
frinta_s_floatdp1 = FRINTA FRINTA_S_floatdp1

frinta_d_floatdp1 :: Insn
frinta_d_floatdp1 = FRINTA FRINTA_D_floatdp1

frinta_asimdmiscfp16_r :: Insn
frinta_asimdmiscfp16_r = FRINTA FRINTA_asimdmiscfp16_R

frinta_asimdmisc_r :: Insn
frinta_asimdmisc_r = FRINTA FRINTA_asimdmisc_R

frinti_h_floatdp1 :: Insn
frinti_h_floatdp1 = FRINTI FRINTI_H_floatdp1

frinti_s_floatdp1 :: Insn
frinti_s_floatdp1 = FRINTI FRINTI_S_floatdp1

frinti_d_floatdp1 :: Insn
frinti_d_floatdp1 = FRINTI FRINTI_D_floatdp1

frinti_asimdmiscfp16_r :: Insn
frinti_asimdmiscfp16_r = FRINTI FRINTI_asimdmiscfp16_R

frinti_asimdmisc_r :: Insn
frinti_asimdmisc_r = FRINTI FRINTI_asimdmisc_R

frintm_h_floatdp1 :: Insn
frintm_h_floatdp1 = FRINTM FRINTM_H_floatdp1

frintm_s_floatdp1 :: Insn
frintm_s_floatdp1 = FRINTM FRINTM_S_floatdp1

frintm_d_floatdp1 :: Insn
frintm_d_floatdp1 = FRINTM FRINTM_D_floatdp1

frintm_asimdmiscfp16_r :: Insn
frintm_asimdmiscfp16_r = FRINTM FRINTM_asimdmiscfp16_R

frintm_asimdmisc_r :: Insn
frintm_asimdmisc_r = FRINTM FRINTM_asimdmisc_R

frintn_h_floatdp1 :: Insn
frintn_h_floatdp1 = FRINTN FRINTN_H_floatdp1

frintn_s_floatdp1 :: Insn
frintn_s_floatdp1 = FRINTN FRINTN_S_floatdp1

frintn_d_floatdp1 :: Insn
frintn_d_floatdp1 = FRINTN FRINTN_D_floatdp1

frintn_asimdmiscfp16_r :: Insn
frintn_asimdmiscfp16_r = FRINTN FRINTN_asimdmiscfp16_R

frintn_asimdmisc_r :: Insn
frintn_asimdmisc_r = FRINTN FRINTN_asimdmisc_R

frintp_h_floatdp1 :: Insn
frintp_h_floatdp1 = FRINTP FRINTP_H_floatdp1

frintp_s_floatdp1 :: Insn
frintp_s_floatdp1 = FRINTP FRINTP_S_floatdp1

frintp_d_floatdp1 :: Insn
frintp_d_floatdp1 = FRINTP FRINTP_D_floatdp1

frintp_asimdmiscfp16_r :: Insn
frintp_asimdmiscfp16_r = FRINTP FRINTP_asimdmiscfp16_R

frintp_asimdmisc_r :: Insn
frintp_asimdmisc_r = FRINTP FRINTP_asimdmisc_R

frintx_h_floatdp1 :: Insn
frintx_h_floatdp1 = FRINTX FRINTX_H_floatdp1

frintx_s_floatdp1 :: Insn
frintx_s_floatdp1 = FRINTX FRINTX_S_floatdp1

frintx_d_floatdp1 :: Insn
frintx_d_floatdp1 = FRINTX FRINTX_D_floatdp1

frintx_asimdmiscfp16_r :: Insn
frintx_asimdmiscfp16_r = FRINTX FRINTX_asimdmiscfp16_R

frintx_asimdmisc_r :: Insn
frintx_asimdmisc_r = FRINTX FRINTX_asimdmisc_R

frintz_h_floatdp1 :: Insn
frintz_h_floatdp1 = FRINTZ FRINTZ_H_floatdp1

frintz_s_floatdp1 :: Insn
frintz_s_floatdp1 = FRINTZ FRINTZ_S_floatdp1

frintz_d_floatdp1 :: Insn
frintz_d_floatdp1 = FRINTZ FRINTZ_D_floatdp1

frintz_asimdmiscfp16_r :: Insn
frintz_asimdmiscfp16_r = FRINTZ FRINTZ_asimdmiscfp16_R

frintz_asimdmisc_r :: Insn
frintz_asimdmisc_r = FRINTZ FRINTZ_asimdmisc_R

frsqrte_asisdmiscfp16_r :: Insn
frsqrte_asisdmiscfp16_r = FRSQRTE FRSQRTE_asisdmiscfp16_R

frsqrte_asisdmisc_r :: Insn
frsqrte_asisdmisc_r = FRSQRTE FRSQRTE_asisdmisc_R

frsqrte_asimdmiscfp16_r :: Insn
frsqrte_asimdmiscfp16_r = FRSQRTE FRSQRTE_asimdmiscfp16_R

frsqrte_asimdmisc_r :: Insn
frsqrte_asimdmisc_r = FRSQRTE FRSQRTE_asimdmisc_R

frsqrts_asisdsamefp16_only :: Insn
frsqrts_asisdsamefp16_only = FRSQRTS FRSQRTS_asisdsamefp16_only

frsqrts_asisdsame_only :: Insn
frsqrts_asisdsame_only = FRSQRTS FRSQRTS_asisdsame_only

frsqrts_asimdsamefp16_only :: Insn
frsqrts_asimdsamefp16_only = FRSQRTS FRSQRTS_asimdsamefp16_only

frsqrts_asimdsame_only :: Insn
frsqrts_asimdsame_only = FRSQRTS FRSQRTS_asimdsame_only

fsqrt_h_floatdp1 :: Insn
fsqrt_h_floatdp1 = FSQRT FSQRT_H_floatdp1

fsqrt_s_floatdp1 :: Insn
fsqrt_s_floatdp1 = FSQRT FSQRT_S_floatdp1

fsqrt_d_floatdp1 :: Insn
fsqrt_d_floatdp1 = FSQRT FSQRT_D_floatdp1

fsqrt_asimdmiscfp16_r :: Insn
fsqrt_asimdmiscfp16_r = FSQRT FSQRT_asimdmiscfp16_R

fsqrt_asimdmisc_r :: Insn
fsqrt_asimdmisc_r = FSQRT FSQRT_asimdmisc_R

fsub_h_floatdp2 :: Insn
fsub_h_floatdp2 = FSUB FSUB_H_floatdp2

fsub_s_floatdp2 :: Insn
fsub_s_floatdp2 = FSUB FSUB_S_floatdp2

fsub_d_floatdp2 :: Insn
fsub_d_floatdp2 = FSUB FSUB_D_floatdp2

fsub_asimdsamefp16_only :: Insn
fsub_asimdsamefp16_only = FSUB FSUB_asimdsamefp16_only

fsub_asimdsame_only :: Insn
fsub_asimdsame_only = FSUB FSUB_asimdsame_only

hint_1 :: Insn
hint_1 = HINT HINT_1

hint_2 :: Insn
hint_2 = HINT HINT_2

hint_3 :: Insn
hint_3 = HINT HINT_3

hlt_ex_exception :: Insn
hlt_ex_exception = HLT HLT_EX_exception

hvc_ex_exception :: Insn
hvc_ex_exception = HVC HVC_EX_exception

ins_asimdins_iv_v :: Insn
ins_asimdins_iv_v = INS INS_asimdins_IV_v

ins_asimdins_ir_r :: Insn
ins_asimdins_ir_r = INS INS_asimdins_IR_r

isb_bi_system :: Insn
isb_bi_system = ISB ISB_BI_system

ld1_asisdlse_r1_1v :: Insn
ld1_asisdlse_r1_1v = LD1 LD1_asisdlse_R1_1v

ld1_asisdlse_r2_2v :: Insn
ld1_asisdlse_r2_2v = LD1 LD1_asisdlse_R2_2v

ld1_asisdlse_r3_3v :: Insn
ld1_asisdlse_r3_3v = LD1 LD1_asisdlse_R3_3v

ld1_asisdlse_r4_4v :: Insn
ld1_asisdlse_r4_4v = LD1 LD1_asisdlse_R4_4v

ld1_asisdlsep_i1_i1 :: Insn
ld1_asisdlsep_i1_i1 = LD1 LD1_asisdlsep_I1_i1

ld1_asisdlsep_r1_r1 :: Insn
ld1_asisdlsep_r1_r1 = LD1 LD1_asisdlsep_R1_r1

ld1_asisdlsep_i2_i2 :: Insn
ld1_asisdlsep_i2_i2 = LD1 LD1_asisdlsep_I2_i2

ld1_asisdlsep_r2_r2 :: Insn
ld1_asisdlsep_r2_r2 = LD1 LD1_asisdlsep_R2_r2

ld1_asisdlsep_i3_i3 :: Insn
ld1_asisdlsep_i3_i3 = LD1 LD1_asisdlsep_I3_i3

ld1_asisdlsep_r3_r3 :: Insn
ld1_asisdlsep_r3_r3 = LD1 LD1_asisdlsep_R3_r3

ld1_asisdlsep_i4_i4 :: Insn
ld1_asisdlsep_i4_i4 = LD1 LD1_asisdlsep_I4_i4

ld1_asisdlsep_r4_r4 :: Insn
ld1_asisdlsep_r4_r4 = LD1 LD1_asisdlsep_R4_r4

ld1_asisdlso_b1_1b :: Insn
ld1_asisdlso_b1_1b = LD1 LD1_asisdlso_B1_1b

ld1_asisdlso_h1_1h :: Insn
ld1_asisdlso_h1_1h = LD1 LD1_asisdlso_H1_1h

ld1_asisdlso_s1_1s :: Insn
ld1_asisdlso_s1_1s = LD1 LD1_asisdlso_S1_1s

ld1_asisdlso_d1_1d :: Insn
ld1_asisdlso_d1_1d = LD1 LD1_asisdlso_D1_1d

ld1_asisdlsop_b1_i1b :: Insn
ld1_asisdlsop_b1_i1b = LD1 LD1_asisdlsop_B1_i1b

ld1_asisdlsop_bx1_r1b :: Insn
ld1_asisdlsop_bx1_r1b = LD1 LD1_asisdlsop_BX1_r1b

ld1_asisdlsop_h1_i1h :: Insn
ld1_asisdlsop_h1_i1h = LD1 LD1_asisdlsop_H1_i1h

ld1_asisdlsop_hx1_r1h :: Insn
ld1_asisdlsop_hx1_r1h = LD1 LD1_asisdlsop_HX1_r1h

ld1_asisdlsop_s1_i1s :: Insn
ld1_asisdlsop_s1_i1s = LD1 LD1_asisdlsop_S1_i1s

ld1_asisdlsop_sx1_r1s :: Insn
ld1_asisdlsop_sx1_r1s = LD1 LD1_asisdlsop_SX1_r1s

ld1_asisdlsop_d1_i1d :: Insn
ld1_asisdlsop_d1_i1d = LD1 LD1_asisdlsop_D1_i1d

ld1_asisdlsop_dx1_r1d :: Insn
ld1_asisdlsop_dx1_r1d = LD1 LD1_asisdlsop_DX1_r1d

ld1r_asisdlso_r1 :: Insn
ld1r_asisdlso_r1 = LD1R LD1R_asisdlso_R1

ld1r_asisdlsop_r1_i :: Insn
ld1r_asisdlsop_r1_i = LD1R LD1R_asisdlsop_R1_i

ld1r_asisdlsop_rx1_r :: Insn
ld1r_asisdlsop_rx1_r = LD1R LD1R_asisdlsop_RX1_r

ld2_asisdlse_r2 :: Insn
ld2_asisdlse_r2 = LD2 LD2_asisdlse_R2

ld2_asisdlsep_i2_i :: Insn
ld2_asisdlsep_i2_i = LD2 LD2_asisdlsep_I2_i

ld2_asisdlsep_r2_r :: Insn
ld2_asisdlsep_r2_r = LD2 LD2_asisdlsep_R2_r

ld2_asisdlso_b2_2b :: Insn
ld2_asisdlso_b2_2b = LD2 LD2_asisdlso_B2_2b

ld2_asisdlso_h2_2h :: Insn
ld2_asisdlso_h2_2h = LD2 LD2_asisdlso_H2_2h

ld2_asisdlso_s2_2s :: Insn
ld2_asisdlso_s2_2s = LD2 LD2_asisdlso_S2_2s

ld2_asisdlso_d2_2d :: Insn
ld2_asisdlso_d2_2d = LD2 LD2_asisdlso_D2_2d

ld2_asisdlsop_b2_i2b :: Insn
ld2_asisdlsop_b2_i2b = LD2 LD2_asisdlsop_B2_i2b

ld2_asisdlsop_bx2_r2b :: Insn
ld2_asisdlsop_bx2_r2b = LD2 LD2_asisdlsop_BX2_r2b

ld2_asisdlsop_h2_i2h :: Insn
ld2_asisdlsop_h2_i2h = LD2 LD2_asisdlsop_H2_i2h

ld2_asisdlsop_hx2_r2h :: Insn
ld2_asisdlsop_hx2_r2h = LD2 LD2_asisdlsop_HX2_r2h

ld2_asisdlsop_s2_i2s :: Insn
ld2_asisdlsop_s2_i2s = LD2 LD2_asisdlsop_S2_i2s

ld2_asisdlsop_sx2_r2s :: Insn
ld2_asisdlsop_sx2_r2s = LD2 LD2_asisdlsop_SX2_r2s

ld2_asisdlsop_d2_i2d :: Insn
ld2_asisdlsop_d2_i2d = LD2 LD2_asisdlsop_D2_i2d

ld2_asisdlsop_dx2_r2d :: Insn
ld2_asisdlsop_dx2_r2d = LD2 LD2_asisdlsop_DX2_r2d

ld2r_asisdlso_r2 :: Insn
ld2r_asisdlso_r2 = LD2R LD2R_asisdlso_R2

ld2r_asisdlsop_r2_i :: Insn
ld2r_asisdlsop_r2_i = LD2R LD2R_asisdlsop_R2_i

ld2r_asisdlsop_rx2_r :: Insn
ld2r_asisdlsop_rx2_r = LD2R LD2R_asisdlsop_RX2_r

ld3_asisdlse_r3 :: Insn
ld3_asisdlse_r3 = LD3 LD3_asisdlse_R3

ld3_asisdlsep_i3_i :: Insn
ld3_asisdlsep_i3_i = LD3 LD3_asisdlsep_I3_i

ld3_asisdlsep_r3_r :: Insn
ld3_asisdlsep_r3_r = LD3 LD3_asisdlsep_R3_r

ld3_asisdlso_b3_3b :: Insn
ld3_asisdlso_b3_3b = LD3 LD3_asisdlso_B3_3b

ld3_asisdlso_h3_3h :: Insn
ld3_asisdlso_h3_3h = LD3 LD3_asisdlso_H3_3h

ld3_asisdlso_s3_3s :: Insn
ld3_asisdlso_s3_3s = LD3 LD3_asisdlso_S3_3s

ld3_asisdlso_d3_3d :: Insn
ld3_asisdlso_d3_3d = LD3 LD3_asisdlso_D3_3d

ld3_asisdlsop_b3_i3b :: Insn
ld3_asisdlsop_b3_i3b = LD3 LD3_asisdlsop_B3_i3b

ld3_asisdlsop_bx3_r3b :: Insn
ld3_asisdlsop_bx3_r3b = LD3 LD3_asisdlsop_BX3_r3b

ld3_asisdlsop_h3_i3h :: Insn
ld3_asisdlsop_h3_i3h = LD3 LD3_asisdlsop_H3_i3h

ld3_asisdlsop_hx3_r3h :: Insn
ld3_asisdlsop_hx3_r3h = LD3 LD3_asisdlsop_HX3_r3h

ld3_asisdlsop_s3_i3s :: Insn
ld3_asisdlsop_s3_i3s = LD3 LD3_asisdlsop_S3_i3s

ld3_asisdlsop_sx3_r3s :: Insn
ld3_asisdlsop_sx3_r3s = LD3 LD3_asisdlsop_SX3_r3s

ld3_asisdlsop_d3_i3d :: Insn
ld3_asisdlsop_d3_i3d = LD3 LD3_asisdlsop_D3_i3d

ld3_asisdlsop_dx3_r3d :: Insn
ld3_asisdlsop_dx3_r3d = LD3 LD3_asisdlsop_DX3_r3d

ld3r_asisdlso_r3 :: Insn
ld3r_asisdlso_r3 = LD3R LD3R_asisdlso_R3

ld3r_asisdlsop_r3_i :: Insn
ld3r_asisdlsop_r3_i = LD3R LD3R_asisdlsop_R3_i

ld3r_asisdlsop_rx3_r :: Insn
ld3r_asisdlsop_rx3_r = LD3R LD3R_asisdlsop_RX3_r

ld4_asisdlse_r4 :: Insn
ld4_asisdlse_r4 = LD4 LD4_asisdlse_R4

ld4_asisdlsep_i4_i :: Insn
ld4_asisdlsep_i4_i = LD4 LD4_asisdlsep_I4_i

ld4_asisdlsep_r4_r :: Insn
ld4_asisdlsep_r4_r = LD4 LD4_asisdlsep_R4_r

ld4_asisdlso_b4_4b :: Insn
ld4_asisdlso_b4_4b = LD4 LD4_asisdlso_B4_4b

ld4_asisdlso_h4_4h :: Insn
ld4_asisdlso_h4_4h = LD4 LD4_asisdlso_H4_4h

ld4_asisdlso_s4_4s :: Insn
ld4_asisdlso_s4_4s = LD4 LD4_asisdlso_S4_4s

ld4_asisdlso_d4_4d :: Insn
ld4_asisdlso_d4_4d = LD4 LD4_asisdlso_D4_4d

ld4_asisdlsop_b4_i4b :: Insn
ld4_asisdlsop_b4_i4b = LD4 LD4_asisdlsop_B4_i4b

ld4_asisdlsop_bx4_r4b :: Insn
ld4_asisdlsop_bx4_r4b = LD4 LD4_asisdlsop_BX4_r4b

ld4_asisdlsop_h4_i4h :: Insn
ld4_asisdlsop_h4_i4h = LD4 LD4_asisdlsop_H4_i4h

ld4_asisdlsop_hx4_r4h :: Insn
ld4_asisdlsop_hx4_r4h = LD4 LD4_asisdlsop_HX4_r4h

ld4_asisdlsop_s4_i4s :: Insn
ld4_asisdlsop_s4_i4s = LD4 LD4_asisdlsop_S4_i4s

ld4_asisdlsop_sx4_r4s :: Insn
ld4_asisdlsop_sx4_r4s = LD4 LD4_asisdlsop_SX4_r4s

ld4_asisdlsop_d4_i4d :: Insn
ld4_asisdlsop_d4_i4d = LD4 LD4_asisdlsop_D4_i4d

ld4_asisdlsop_dx4_r4d :: Insn
ld4_asisdlsop_dx4_r4d = LD4 LD4_asisdlsop_DX4_r4d

ld4r_asisdlso_r4 :: Insn
ld4r_asisdlso_r4 = LD4R LD4R_asisdlso_R4

ld4r_asisdlsop_r4_i :: Insn
ld4r_asisdlsop_r4_i = LD4R LD4R_asisdlsop_R4_i

ld4r_asisdlsop_rx4_r :: Insn
ld4r_asisdlsop_rx4_r = LD4R LD4R_asisdlsop_RX4_r

ldadd_32_memop :: Insn
ldadd_32_memop = LDADD LDADD_32_memop

ldadd_64_memop :: Insn
ldadd_64_memop = LDADD LDADD_64_memop

ldadda_32_memop :: Insn
ldadda_32_memop = LDADDA LDADDA_32_memop

ldadda_64_memop :: Insn
ldadda_64_memop = LDADDA LDADDA_64_memop

ldaddab_32_memop :: Insn
ldaddab_32_memop = LDADDAB LDADDAB_32_memop

ldaddah_32_memop :: Insn
ldaddah_32_memop = LDADDAH LDADDAH_32_memop

ldaddal_32_memop :: Insn
ldaddal_32_memop = LDADDAL LDADDAL_32_memop

ldaddal_64_memop :: Insn
ldaddal_64_memop = LDADDAL LDADDAL_64_memop

ldaddalb_32_memop :: Insn
ldaddalb_32_memop = LDADDALB LDADDALB_32_memop

ldaddalh_32_memop :: Insn
ldaddalh_32_memop = LDADDALH LDADDALH_32_memop

ldaddb_32_memop :: Insn
ldaddb_32_memop = LDADDB LDADDB_32_memop

ldaddh_32_memop :: Insn
ldaddh_32_memop = LDADDH LDADDH_32_memop

ldaddl_32_memop :: Insn
ldaddl_32_memop = LDADDL LDADDL_32_memop

ldaddl_64_memop :: Insn
ldaddl_64_memop = LDADDL LDADDL_64_memop

ldaddlb_32_memop :: Insn
ldaddlb_32_memop = LDADDLB LDADDLB_32_memop

ldaddlh_32_memop :: Insn
ldaddlh_32_memop = LDADDLH LDADDLH_32_memop

ldapr_32l_memop :: Insn
ldapr_32l_memop = LDAPR LDAPR_32L_memop

ldapr_64l_memop :: Insn
ldapr_64l_memop = LDAPR LDAPR_64L_memop

ldaprb_32l_memop :: Insn
ldaprb_32l_memop = LDAPRB LDAPRB_32L_memop

ldaprh_32l_memop :: Insn
ldaprh_32l_memop = LDAPRH LDAPRH_32L_memop

ldar_lr32_ldstexcl :: Insn
ldar_lr32_ldstexcl = LDAR LDAR_LR32_ldstexcl

ldar_lr64_ldstexcl :: Insn
ldar_lr64_ldstexcl = LDAR LDAR_LR64_ldstexcl

ldarb_lr32_ldstexcl :: Insn
ldarb_lr32_ldstexcl = LDARB LDARB_LR32_ldstexcl

ldarh_lr32_ldstexcl :: Insn
ldarh_lr32_ldstexcl = LDARH LDARH_LR32_ldstexcl

ldaxp_lp32_ldstexcl :: Insn
ldaxp_lp32_ldstexcl = LDAXP LDAXP_LP32_ldstexcl

ldaxp_lp64_ldstexcl :: Insn
ldaxp_lp64_ldstexcl = LDAXP LDAXP_LP64_ldstexcl

ldaxr_lr32_ldstexcl :: Insn
ldaxr_lr32_ldstexcl = LDAXR LDAXR_LR32_ldstexcl

ldaxr_lr64_ldstexcl :: Insn
ldaxr_lr64_ldstexcl = LDAXR LDAXR_LR64_ldstexcl

ldaxrb_lr32_ldstexcl :: Insn
ldaxrb_lr32_ldstexcl = LDAXRB LDAXRB_LR32_ldstexcl

ldaxrh_lr32_ldstexcl :: Insn
ldaxrh_lr32_ldstexcl = LDAXRH LDAXRH_LR32_ldstexcl

ldclr_32_memop :: Insn
ldclr_32_memop = LDCLR LDCLR_32_memop

ldclr_64_memop :: Insn
ldclr_64_memop = LDCLR LDCLR_64_memop

ldclra_32_memop :: Insn
ldclra_32_memop = LDCLRA LDCLRA_32_memop

ldclra_64_memop :: Insn
ldclra_64_memop = LDCLRA LDCLRA_64_memop

ldclrab_32_memop :: Insn
ldclrab_32_memop = LDCLRAB LDCLRAB_32_memop

ldclrah_32_memop :: Insn
ldclrah_32_memop = LDCLRAH LDCLRAH_32_memop

ldclral_32_memop :: Insn
ldclral_32_memop = LDCLRAL LDCLRAL_32_memop

ldclral_64_memop :: Insn
ldclral_64_memop = LDCLRAL LDCLRAL_64_memop

ldclralb_32_memop :: Insn
ldclralb_32_memop = LDCLRALB LDCLRALB_32_memop

ldclralh_32_memop :: Insn
ldclralh_32_memop = LDCLRALH LDCLRALH_32_memop

ldclrb_32_memop :: Insn
ldclrb_32_memop = LDCLRB LDCLRB_32_memop

ldclrh_32_memop :: Insn
ldclrh_32_memop = LDCLRH LDCLRH_32_memop

ldclrl_32_memop :: Insn
ldclrl_32_memop = LDCLRL LDCLRL_32_memop

ldclrl_64_memop :: Insn
ldclrl_64_memop = LDCLRL LDCLRL_64_memop

ldclrlb_32_memop :: Insn
ldclrlb_32_memop = LDCLRLB LDCLRLB_32_memop

ldclrlh_32_memop :: Insn
ldclrlh_32_memop = LDCLRLH LDCLRLH_32_memop

ldeor_32_memop :: Insn
ldeor_32_memop = LDEOR LDEOR_32_memop

ldeor_64_memop :: Insn
ldeor_64_memop = LDEOR LDEOR_64_memop

ldeora_32_memop :: Insn
ldeora_32_memop = LDEORA LDEORA_32_memop

ldeora_64_memop :: Insn
ldeora_64_memop = LDEORA LDEORA_64_memop

ldeorab_32_memop :: Insn
ldeorab_32_memop = LDEORAB LDEORAB_32_memop

ldeorah_32_memop :: Insn
ldeorah_32_memop = LDEORAH LDEORAH_32_memop

ldeoral_32_memop :: Insn
ldeoral_32_memop = LDEORAL LDEORAL_32_memop

ldeoral_64_memop :: Insn
ldeoral_64_memop = LDEORAL LDEORAL_64_memop

ldeoralb_32_memop :: Insn
ldeoralb_32_memop = LDEORALB LDEORALB_32_memop

ldeoralh_32_memop :: Insn
ldeoralh_32_memop = LDEORALH LDEORALH_32_memop

ldeorb_32_memop :: Insn
ldeorb_32_memop = LDEORB LDEORB_32_memop

ldeorh_32_memop :: Insn
ldeorh_32_memop = LDEORH LDEORH_32_memop

ldeorl_32_memop :: Insn
ldeorl_32_memop = LDEORL LDEORL_32_memop

ldeorl_64_memop :: Insn
ldeorl_64_memop = LDEORL LDEORL_64_memop

ldeorlb_32_memop :: Insn
ldeorlb_32_memop = LDEORLB LDEORLB_32_memop

ldeorlh_32_memop :: Insn
ldeorlh_32_memop = LDEORLH LDEORLH_32_memop

ldlar_lr32_ldstexcl :: Insn
ldlar_lr32_ldstexcl = LDLAR LDLAR_LR32_ldstexcl

ldlar_lr64_ldstexcl :: Insn
ldlar_lr64_ldstexcl = LDLAR LDLAR_LR64_ldstexcl

ldlarb_lr32_ldstexcl :: Insn
ldlarb_lr32_ldstexcl = LDLARB LDLARB_LR32_ldstexcl

ldlarh_lr32_ldstexcl :: Insn
ldlarh_lr32_ldstexcl = LDLARH LDLARH_LR32_ldstexcl

ldnp_32_ldstnapair_offs :: Insn
ldnp_32_ldstnapair_offs = LDNP LDNP_32_ldstnapair_offs

ldnp_64_ldstnapair_offs :: Xn -> Xn -> XnSP -> I 7 -> Insn
ldnp_64_ldstnapair_offs x1 x2 x3 x4
  = LDNP (LDNP_64_ldstnapair_offs x1 x2 x3 x4)

ldnp_s_ldstnapair_offs :: Insn
ldnp_s_ldstnapair_offs = LDNP LDNP_S_ldstnapair_offs

ldnp_d_ldstnapair_offs :: Insn
ldnp_d_ldstnapair_offs = LDNP LDNP_D_ldstnapair_offs

ldnp_q_ldstnapair_offs :: Insn
ldnp_q_ldstnapair_offs = LDNP LDNP_Q_ldstnapair_offs

ldp_32_ldstpair_post :: Insn
ldp_32_ldstpair_post = LDP LDP_32_ldstpair_post

ldp_64_ldstpair_post :: Insn
ldp_64_ldstpair_post = LDP LDP_64_ldstpair_post

ldp_32_ldstpair_pre :: Insn
ldp_32_ldstpair_pre = LDP LDP_32_ldstpair_pre

ldp_64_ldstpair_pre :: Xn -> Xn -> XnSP -> I 7 -> Insn
ldp_64_ldstpair_pre x1 x2 x3 x4
  = LDP (LDP_64_ldstpair_pre x1 x2 x3 x4)

ldp_32_ldstpair_off :: Insn
ldp_32_ldstpair_off = LDP LDP_32_ldstpair_off

ldp_64_ldstpair_off :: Xn -> Xn -> XnSP -> I 7 -> Insn
ldp_64_ldstpair_off x1 x2 x3 x4
  = LDP (LDP_64_ldstpair_off x1 x2 x3 x4)

ldp_s_ldstpair_post :: Insn
ldp_s_ldstpair_post = LDP LDP_S_ldstpair_post

ldp_d_ldstpair_post :: Insn
ldp_d_ldstpair_post = LDP LDP_D_ldstpair_post

ldp_q_ldstpair_post :: Insn
ldp_q_ldstpair_post = LDP LDP_Q_ldstpair_post

ldp_s_ldstpair_pre :: Insn
ldp_s_ldstpair_pre = LDP LDP_S_ldstpair_pre

ldp_d_ldstpair_pre :: Insn
ldp_d_ldstpair_pre = LDP LDP_D_ldstpair_pre

ldp_q_ldstpair_pre :: Insn
ldp_q_ldstpair_pre = LDP LDP_Q_ldstpair_pre

ldp_s_ldstpair_off :: Insn
ldp_s_ldstpair_off = LDP LDP_S_ldstpair_off

ldp_d_ldstpair_off :: Insn
ldp_d_ldstpair_off = LDP LDP_D_ldstpair_off

ldp_q_ldstpair_off :: Insn
ldp_q_ldstpair_off = LDP LDP_Q_ldstpair_off

ldpsw_64_ldstpair_post :: Insn
ldpsw_64_ldstpair_post = LDPSW LDPSW_64_ldstpair_post

ldpsw_64_ldstpair_pre :: Xn -> Xn -> XnSP -> I 7 -> Insn
ldpsw_64_ldstpair_pre x1 x2 x3 x4
  = LDPSW (LDPSW_64_ldstpair_pre x1 x2 x3 x4)

ldpsw_64_ldstpair_off :: Xn -> Xn -> XnSP -> I 7 -> Insn
ldpsw_64_ldstpair_off x1 x2 x3 x4
  = LDPSW (LDPSW_64_ldstpair_off x1 x2 x3 x4)

ldr_32_ldst_immpost :: Insn
ldr_32_ldst_immpost = LDR LDR_32_ldst_immpost

ldr_64_ldst_immpost :: Insn
ldr_64_ldst_immpost = LDR LDR_64_ldst_immpost

ldr_32_ldst_immpre :: Insn
ldr_32_ldst_immpre = LDR LDR_32_ldst_immpre

ldr_64_ldst_immpre :: Insn
ldr_64_ldst_immpre = LDR LDR_64_ldst_immpre

ldr_32_ldst_pos :: Insn
ldr_32_ldst_pos = LDR LDR_32_ldst_pos

ldr_64_ldst_pos :: Xn -> XnSP -> W 12 -> Insn
ldr_64_ldst_pos x1 x2 x3 = LDR (LDR_64_ldst_pos x1 x2 x3)

ldr_32_loadlit :: Insn
ldr_32_loadlit = LDR LDR_32_loadlit

ldr_64_loadlit :: Insn
ldr_64_loadlit = LDR LDR_64_loadlit

ldr_32_ldst_regoff :: Insn
ldr_32_ldst_regoff = LDR LDR_32_ldst_regoff

ldr_64_ldst_regoff :: Insn
ldr_64_ldst_regoff = LDR LDR_64_ldst_regoff

ldr_b_ldst_immpost :: Insn
ldr_b_ldst_immpost = LDR LDR_B_ldst_immpost

ldr_h_ldst_immpost :: Insn
ldr_h_ldst_immpost = LDR LDR_H_ldst_immpost

ldr_s_ldst_immpost :: Insn
ldr_s_ldst_immpost = LDR LDR_S_ldst_immpost

ldr_d_ldst_immpost :: Insn
ldr_d_ldst_immpost = LDR LDR_D_ldst_immpost

ldr_q_ldst_immpost :: Insn
ldr_q_ldst_immpost = LDR LDR_Q_ldst_immpost

ldr_b_ldst_immpre :: Insn
ldr_b_ldst_immpre = LDR LDR_B_ldst_immpre

ldr_h_ldst_immpre :: Insn
ldr_h_ldst_immpre = LDR LDR_H_ldst_immpre

ldr_s_ldst_immpre :: Insn
ldr_s_ldst_immpre = LDR LDR_S_ldst_immpre

ldr_d_ldst_immpre :: Insn
ldr_d_ldst_immpre = LDR LDR_D_ldst_immpre

ldr_q_ldst_immpre :: Insn
ldr_q_ldst_immpre = LDR LDR_Q_ldst_immpre

ldr_b_ldst_pos :: Insn
ldr_b_ldst_pos = LDR LDR_B_ldst_pos

ldr_h_ldst_pos :: Insn
ldr_h_ldst_pos = LDR LDR_H_ldst_pos

ldr_s_ldst_pos :: Insn
ldr_s_ldst_pos = LDR LDR_S_ldst_pos

ldr_d_ldst_pos :: Insn
ldr_d_ldst_pos = LDR LDR_D_ldst_pos

ldr_q_ldst_pos :: Insn
ldr_q_ldst_pos = LDR LDR_Q_ldst_pos

ldr_s_loadlit :: Insn
ldr_s_loadlit = LDR LDR_S_loadlit

ldr_d_loadlit :: Insn
ldr_d_loadlit = LDR LDR_D_loadlit

ldr_q_loadlit :: Insn
ldr_q_loadlit = LDR LDR_Q_loadlit

ldr_b_ldst_regoff :: Insn
ldr_b_ldst_regoff = LDR LDR_B_ldst_regoff

ldr_bl_ldst_regoff :: Insn
ldr_bl_ldst_regoff = LDR LDR_BL_ldst_regoff

ldr_h_ldst_regoff :: Insn
ldr_h_ldst_regoff = LDR LDR_H_ldst_regoff

ldr_s_ldst_regoff :: Insn
ldr_s_ldst_regoff = LDR LDR_S_ldst_regoff

ldr_d_ldst_regoff :: Insn
ldr_d_ldst_regoff = LDR LDR_D_ldst_regoff

ldr_q_ldst_regoff :: Insn
ldr_q_ldst_regoff = LDR LDR_Q_ldst_regoff

ldraa_64_ldst_pac :: Insn
ldraa_64_ldst_pac = LDRAA LDRAA_64_ldst_pac

ldraa_64w_ldst_pac :: Insn
ldraa_64w_ldst_pac = LDRAA LDRAA_64W_ldst_pac

ldrab_64_ldst_pac :: Insn
ldrab_64_ldst_pac = LDRAB LDRAB_64_ldst_pac

ldrab_64w_ldst_pac :: Insn
ldrab_64w_ldst_pac = LDRAB LDRAB_64W_ldst_pac

ldrb_32_ldst_immpost :: Insn
ldrb_32_ldst_immpost = LDRB LDRB_32_ldst_immpost

ldrb_32_ldst_immpre :: Insn
ldrb_32_ldst_immpre = LDRB LDRB_32_ldst_immpre

ldrb_32_ldst_pos :: Insn
ldrb_32_ldst_pos = LDRB LDRB_32_ldst_pos

ldrb_32b_ldst_regoff :: Insn
ldrb_32b_ldst_regoff = LDRB LDRB_32B_ldst_regoff

ldrb_32bl_ldst_regoff :: Insn
ldrb_32bl_ldst_regoff = LDRB LDRB_32BL_ldst_regoff

ldrh_32_ldst_immpost :: Insn
ldrh_32_ldst_immpost = LDRH LDRH_32_ldst_immpost

ldrh_32_ldst_immpre :: Insn
ldrh_32_ldst_immpre = LDRH LDRH_32_ldst_immpre

ldrh_32_ldst_pos :: Insn
ldrh_32_ldst_pos = LDRH LDRH_32_ldst_pos

ldrh_32_ldst_regoff :: Insn
ldrh_32_ldst_regoff = LDRH LDRH_32_ldst_regoff

ldrsb_32_ldst_immpost :: Insn
ldrsb_32_ldst_immpost = LDRSB LDRSB_32_ldst_immpost

ldrsb_64_ldst_immpost :: Insn
ldrsb_64_ldst_immpost = LDRSB LDRSB_64_ldst_immpost

ldrsb_32_ldst_immpre :: Insn
ldrsb_32_ldst_immpre = LDRSB LDRSB_32_ldst_immpre

ldrsb_64_ldst_immpre :: Insn
ldrsb_64_ldst_immpre = LDRSB LDRSB_64_ldst_immpre

ldrsb_32_ldst_pos :: Insn
ldrsb_32_ldst_pos = LDRSB LDRSB_32_ldst_pos

ldrsb_64_ldst_pos :: Xn -> XnSP -> W 12 -> Insn
ldrsb_64_ldst_pos x1 x2 x3 = LDRSB (LDRSB_64_ldst_pos x1 x2 x3)

ldrsb_32b_ldst_regoff :: Insn
ldrsb_32b_ldst_regoff = LDRSB LDRSB_32B_ldst_regoff

ldrsb_32bl_ldst_regoff :: Insn
ldrsb_32bl_ldst_regoff = LDRSB LDRSB_32BL_ldst_regoff

ldrsb_64b_ldst_regoff :: Insn
ldrsb_64b_ldst_regoff = LDRSB LDRSB_64B_ldst_regoff

ldrsb_64bl_ldst_regoff :: Insn
ldrsb_64bl_ldst_regoff = LDRSB LDRSB_64BL_ldst_regoff

ldrsh_32_ldst_immpost :: Insn
ldrsh_32_ldst_immpost = LDRSH LDRSH_32_ldst_immpost

ldrsh_64_ldst_immpost :: Insn
ldrsh_64_ldst_immpost = LDRSH LDRSH_64_ldst_immpost

ldrsh_32_ldst_immpre :: Insn
ldrsh_32_ldst_immpre = LDRSH LDRSH_32_ldst_immpre

ldrsh_64_ldst_immpre :: Insn
ldrsh_64_ldst_immpre = LDRSH LDRSH_64_ldst_immpre

ldrsh_32_ldst_pos :: Insn
ldrsh_32_ldst_pos = LDRSH LDRSH_32_ldst_pos

ldrsh_64_ldst_pos :: Xn -> XnSP -> W 12 -> Insn
ldrsh_64_ldst_pos x1 x2 x3 = LDRSH (LDRSH_64_ldst_pos x1 x2 x3)

ldrsh_32_ldst_regoff :: Insn
ldrsh_32_ldst_regoff = LDRSH LDRSH_32_ldst_regoff

ldrsh_64_ldst_regoff :: Insn
ldrsh_64_ldst_regoff = LDRSH LDRSH_64_ldst_regoff

ldrsw_64_ldst_immpost :: Insn
ldrsw_64_ldst_immpost = LDRSW LDRSW_64_ldst_immpost

ldrsw_64_ldst_immpre :: Insn
ldrsw_64_ldst_immpre = LDRSW LDRSW_64_ldst_immpre

ldrsw_64_ldst_pos :: Xn -> XnSP -> W 12 -> Insn
ldrsw_64_ldst_pos x1 x2 x3 = LDRSW (LDRSW_64_ldst_pos x1 x2 x3)

ldrsw_64_loadlit :: Insn
ldrsw_64_loadlit = LDRSW LDRSW_64_loadlit

ldrsw_64_ldst_regoff :: Insn
ldrsw_64_ldst_regoff = LDRSW LDRSW_64_ldst_regoff

ldset_32_memop :: Insn
ldset_32_memop = LDSET LDSET_32_memop

ldset_64_memop :: Insn
ldset_64_memop = LDSET LDSET_64_memop

ldseta_32_memop :: Insn
ldseta_32_memop = LDSETA LDSETA_32_memop

ldseta_64_memop :: Insn
ldseta_64_memop = LDSETA LDSETA_64_memop

ldsetab_32_memop :: Insn
ldsetab_32_memop = LDSETAB LDSETAB_32_memop

ldsetah_32_memop :: Insn
ldsetah_32_memop = LDSETAH LDSETAH_32_memop

ldsetal_32_memop :: Insn
ldsetal_32_memop = LDSETAL LDSETAL_32_memop

ldsetal_64_memop :: Insn
ldsetal_64_memop = LDSETAL LDSETAL_64_memop

ldsetalb_32_memop :: Insn
ldsetalb_32_memop = LDSETALB LDSETALB_32_memop

ldsetalh_32_memop :: Insn
ldsetalh_32_memop = LDSETALH LDSETALH_32_memop

ldsetb_32_memop :: Insn
ldsetb_32_memop = LDSETB LDSETB_32_memop

ldseth_32_memop :: Insn
ldseth_32_memop = LDSETH LDSETH_32_memop

ldsetl_32_memop :: Insn
ldsetl_32_memop = LDSETL LDSETL_32_memop

ldsetl_64_memop :: Insn
ldsetl_64_memop = LDSETL LDSETL_64_memop

ldsetlb_32_memop :: Insn
ldsetlb_32_memop = LDSETLB LDSETLB_32_memop

ldsetlh_32_memop :: Insn
ldsetlh_32_memop = LDSETLH LDSETLH_32_memop

ldsmax_32_memop :: Insn
ldsmax_32_memop = LDSMAX LDSMAX_32_memop

ldsmax_64_memop :: Insn
ldsmax_64_memop = LDSMAX LDSMAX_64_memop

ldsmaxa_32_memop :: Insn
ldsmaxa_32_memop = LDSMAXA LDSMAXA_32_memop

ldsmaxa_64_memop :: Insn
ldsmaxa_64_memop = LDSMAXA LDSMAXA_64_memop

ldsmaxab_32_memop :: Insn
ldsmaxab_32_memop = LDSMAXAB LDSMAXAB_32_memop

ldsmaxah_32_memop :: Insn
ldsmaxah_32_memop = LDSMAXAH LDSMAXAH_32_memop

ldsmaxal_32_memop :: Insn
ldsmaxal_32_memop = LDSMAXAL LDSMAXAL_32_memop

ldsmaxal_64_memop :: Insn
ldsmaxal_64_memop = LDSMAXAL LDSMAXAL_64_memop

ldsmaxalb_32_memop :: Insn
ldsmaxalb_32_memop = LDSMAXALB LDSMAXALB_32_memop

ldsmaxalh_32_memop :: Insn
ldsmaxalh_32_memop = LDSMAXALH LDSMAXALH_32_memop

ldsmaxb_32_memop :: Insn
ldsmaxb_32_memop = LDSMAXB LDSMAXB_32_memop

ldsmaxh_32_memop :: Insn
ldsmaxh_32_memop = LDSMAXH LDSMAXH_32_memop

ldsmaxl_32_memop :: Insn
ldsmaxl_32_memop = LDSMAXL LDSMAXL_32_memop

ldsmaxl_64_memop :: Insn
ldsmaxl_64_memop = LDSMAXL LDSMAXL_64_memop

ldsmaxlb_32_memop :: Insn
ldsmaxlb_32_memop = LDSMAXLB LDSMAXLB_32_memop

ldsmaxlh_32_memop :: Insn
ldsmaxlh_32_memop = LDSMAXLH LDSMAXLH_32_memop

ldsmin_32_memop :: Insn
ldsmin_32_memop = LDSMIN LDSMIN_32_memop

ldsmin_64_memop :: Insn
ldsmin_64_memop = LDSMIN LDSMIN_64_memop

ldsmina_32_memop :: Insn
ldsmina_32_memop = LDSMINA LDSMINA_32_memop

ldsmina_64_memop :: Insn
ldsmina_64_memop = LDSMINA LDSMINA_64_memop

ldsminab_32_memop :: Insn
ldsminab_32_memop = LDSMINAB LDSMINAB_32_memop

ldsminah_32_memop :: Insn
ldsminah_32_memop = LDSMINAH LDSMINAH_32_memop

ldsminal_32_memop :: Insn
ldsminal_32_memop = LDSMINAL LDSMINAL_32_memop

ldsminal_64_memop :: Insn
ldsminal_64_memop = LDSMINAL LDSMINAL_64_memop

ldsminalb_32_memop :: Insn
ldsminalb_32_memop = LDSMINALB LDSMINALB_32_memop

ldsminalh_32_memop :: Insn
ldsminalh_32_memop = LDSMINALH LDSMINALH_32_memop

ldsminb_32_memop :: Insn
ldsminb_32_memop = LDSMINB LDSMINB_32_memop

ldsminh_32_memop :: Insn
ldsminh_32_memop = LDSMINH LDSMINH_32_memop

ldsminl_32_memop :: Insn
ldsminl_32_memop = LDSMINL LDSMINL_32_memop

ldsminl_64_memop :: Insn
ldsminl_64_memop = LDSMINL LDSMINL_64_memop

ldsminlb_32_memop :: Insn
ldsminlb_32_memop = LDSMINLB LDSMINLB_32_memop

ldsminlh_32_memop :: Insn
ldsminlh_32_memop = LDSMINLH LDSMINLH_32_memop

ldtr_32_ldst_unpriv :: Insn
ldtr_32_ldst_unpriv = LDTR LDTR_32_ldst_unpriv

ldtr_64_ldst_unpriv :: Insn
ldtr_64_ldst_unpriv = LDTR LDTR_64_ldst_unpriv

ldtrb_32_ldst_unpriv :: Insn
ldtrb_32_ldst_unpriv = LDTRB LDTRB_32_ldst_unpriv

ldtrh_32_ldst_unpriv :: Insn
ldtrh_32_ldst_unpriv = LDTRH LDTRH_32_ldst_unpriv

ldtrsb_32_ldst_unpriv :: Insn
ldtrsb_32_ldst_unpriv = LDTRSB LDTRSB_32_ldst_unpriv

ldtrsb_64_ldst_unpriv :: Insn
ldtrsb_64_ldst_unpriv = LDTRSB LDTRSB_64_ldst_unpriv

ldtrsh_32_ldst_unpriv :: Insn
ldtrsh_32_ldst_unpriv = LDTRSH LDTRSH_32_ldst_unpriv

ldtrsh_64_ldst_unpriv :: Insn
ldtrsh_64_ldst_unpriv = LDTRSH LDTRSH_64_ldst_unpriv

ldtrsw_64_ldst_unpriv :: Insn
ldtrsw_64_ldst_unpriv = LDTRSW LDTRSW_64_ldst_unpriv

ldumax_32_memop :: Insn
ldumax_32_memop = LDUMAX LDUMAX_32_memop

ldumax_64_memop :: Insn
ldumax_64_memop = LDUMAX LDUMAX_64_memop

ldumaxa_32_memop :: Insn
ldumaxa_32_memop = LDUMAXA LDUMAXA_32_memop

ldumaxa_64_memop :: Insn
ldumaxa_64_memop = LDUMAXA LDUMAXA_64_memop

ldumaxab_32_memop :: Insn
ldumaxab_32_memop = LDUMAXAB LDUMAXAB_32_memop

ldumaxah_32_memop :: Insn
ldumaxah_32_memop = LDUMAXAH LDUMAXAH_32_memop

ldumaxal_32_memop :: Insn
ldumaxal_32_memop = LDUMAXAL LDUMAXAL_32_memop

ldumaxal_64_memop :: Insn
ldumaxal_64_memop = LDUMAXAL LDUMAXAL_64_memop

ldumaxalb_32_memop :: Insn
ldumaxalb_32_memop = LDUMAXALB LDUMAXALB_32_memop

ldumaxalh_32_memop :: Insn
ldumaxalh_32_memop = LDUMAXALH LDUMAXALH_32_memop

ldumaxb_32_memop :: Insn
ldumaxb_32_memop = LDUMAXB LDUMAXB_32_memop

ldumaxh_32_memop :: Insn
ldumaxh_32_memop = LDUMAXH LDUMAXH_32_memop

ldumaxl_32_memop :: Insn
ldumaxl_32_memop = LDUMAXL LDUMAXL_32_memop

ldumaxl_64_memop :: Insn
ldumaxl_64_memop = LDUMAXL LDUMAXL_64_memop

ldumaxlb_32_memop :: Insn
ldumaxlb_32_memop = LDUMAXLB LDUMAXLB_32_memop

ldumaxlh_32_memop :: Insn
ldumaxlh_32_memop = LDUMAXLH LDUMAXLH_32_memop

ldumin_32_memop :: Insn
ldumin_32_memop = LDUMIN LDUMIN_32_memop

ldumin_64_memop :: Insn
ldumin_64_memop = LDUMIN LDUMIN_64_memop

ldumina_32_memop :: Insn
ldumina_32_memop = LDUMINA LDUMINA_32_memop

ldumina_64_memop :: Insn
ldumina_64_memop = LDUMINA LDUMINA_64_memop

lduminab_32_memop :: Insn
lduminab_32_memop = LDUMINAB LDUMINAB_32_memop

lduminah_32_memop :: Insn
lduminah_32_memop = LDUMINAH LDUMINAH_32_memop

lduminal_32_memop :: Insn
lduminal_32_memop = LDUMINAL LDUMINAL_32_memop

lduminal_64_memop :: Insn
lduminal_64_memop = LDUMINAL LDUMINAL_64_memop

lduminalb_32_memop :: Insn
lduminalb_32_memop = LDUMINALB LDUMINALB_32_memop

lduminalh_32_memop :: Insn
lduminalh_32_memop = LDUMINALH LDUMINALH_32_memop

lduminb_32_memop :: Insn
lduminb_32_memop = LDUMINB LDUMINB_32_memop

lduminh_32_memop :: Insn
lduminh_32_memop = LDUMINH LDUMINH_32_memop

lduminl_32_memop :: Insn
lduminl_32_memop = LDUMINL LDUMINL_32_memop

lduminl_64_memop :: Insn
lduminl_64_memop = LDUMINL LDUMINL_64_memop

lduminlb_32_memop :: Insn
lduminlb_32_memop = LDUMINLB LDUMINLB_32_memop

lduminlh_32_memop :: Insn
lduminlh_32_memop = LDUMINLH LDUMINLH_32_memop

ldur_32_ldst_unscaled :: Insn
ldur_32_ldst_unscaled = LDUR LDUR_32_ldst_unscaled

ldur_64_ldst_unscaled :: Insn
ldur_64_ldst_unscaled = LDUR LDUR_64_ldst_unscaled

ldur_b_ldst_unscaled :: Insn
ldur_b_ldst_unscaled = LDUR LDUR_B_ldst_unscaled

ldur_h_ldst_unscaled :: Insn
ldur_h_ldst_unscaled = LDUR LDUR_H_ldst_unscaled

ldur_s_ldst_unscaled :: Insn
ldur_s_ldst_unscaled = LDUR LDUR_S_ldst_unscaled

ldur_d_ldst_unscaled :: Insn
ldur_d_ldst_unscaled = LDUR LDUR_D_ldst_unscaled

ldur_q_ldst_unscaled :: Insn
ldur_q_ldst_unscaled = LDUR LDUR_Q_ldst_unscaled

ldurb_32_ldst_unscaled :: Insn
ldurb_32_ldst_unscaled = LDURB LDURB_32_ldst_unscaled

ldurh_32_ldst_unscaled :: Insn
ldurh_32_ldst_unscaled = LDURH LDURH_32_ldst_unscaled

ldursb_32_ldst_unscaled :: Insn
ldursb_32_ldst_unscaled = LDURSB LDURSB_32_ldst_unscaled

ldursb_64_ldst_unscaled :: Insn
ldursb_64_ldst_unscaled = LDURSB LDURSB_64_ldst_unscaled

ldursh_32_ldst_unscaled :: Insn
ldursh_32_ldst_unscaled = LDURSH LDURSH_32_ldst_unscaled

ldursh_64_ldst_unscaled :: Insn
ldursh_64_ldst_unscaled = LDURSH LDURSH_64_ldst_unscaled

ldursw_64_ldst_unscaled :: Insn
ldursw_64_ldst_unscaled = LDURSW LDURSW_64_ldst_unscaled

ldxp_lp32_ldstexcl :: Insn
ldxp_lp32_ldstexcl = LDXP LDXP_LP32_ldstexcl

ldxp_lp64_ldstexcl :: Insn
ldxp_lp64_ldstexcl = LDXP LDXP_LP64_ldstexcl

ldxr_lr32_ldstexcl :: Insn
ldxr_lr32_ldstexcl = LDXR LDXR_LR32_ldstexcl

ldxr_lr64_ldstexcl :: Insn
ldxr_lr64_ldstexcl = LDXR LDXR_LR64_ldstexcl

ldxrb_lr32_ldstexcl :: Insn
ldxrb_lr32_ldstexcl = LDXRB LDXRB_LR32_ldstexcl

ldxrh_lr32_ldstexcl :: Insn
ldxrh_lr32_ldstexcl = LDXRH LDXRH_LR32_ldstexcl

lslv_32_dp_2src :: Insn
lslv_32_dp_2src = LSLV LSLV_32_dp_2src

lslv_64_dp_2src :: Insn
lslv_64_dp_2src = LSLV LSLV_64_dp_2src

lsrv_32_dp_2src :: Insn
lsrv_32_dp_2src = LSRV LSRV_32_dp_2src

lsrv_64_dp_2src :: Insn
lsrv_64_dp_2src = LSRV LSRV_64_dp_2src

madd_32a_dp_3src :: Insn
madd_32a_dp_3src = MADD MADD_32A_dp_3src

madd_64a_dp_3src :: Insn
madd_64a_dp_3src = MADD MADD_64A_dp_3src

mla_asimdelem_r :: Insn
mla_asimdelem_r = MLA MLA_asimdelem_R

mla_asimdsame_only :: Insn
mla_asimdsame_only = MLA MLA_asimdsame_only

mls_asimdelem_r :: Insn
mls_asimdelem_r = MLS MLS_asimdelem_R

mls_asimdsame_only :: Insn
mls_asimdsame_only = MLS MLS_asimdsame_only

movi_asimdimm_n_b :: Insn
movi_asimdimm_n_b = MOVI MOVI_asimdimm_N_b

movi_asimdimm_l_hl :: Insn
movi_asimdimm_l_hl = MOVI MOVI_asimdimm_L_hl

movi_asimdimm_l_sl :: Insn
movi_asimdimm_l_sl = MOVI MOVI_asimdimm_L_sl

movi_asimdimm_m_sm :: Insn
movi_asimdimm_m_sm = MOVI MOVI_asimdimm_M_sm

movi_asimdimm_d_ds :: Insn
movi_asimdimm_d_ds = MOVI MOVI_asimdimm_D_ds

movi_asimdimm_d2_d :: Insn
movi_asimdimm_d2_d = MOVI MOVI_asimdimm_D2_d

movk_32_movewide :: Insn
movk_32_movewide = MOVK MOVK_32_movewide

movk_64_movewide :: Insn
movk_64_movewide = MOVK MOVK_64_movewide

movn_32_movewide :: Insn
movn_32_movewide = MOVN MOVN_32_movewide

movn_64_movewide :: Insn
movn_64_movewide = MOVN MOVN_64_movewide

movz_32_movewide :: Insn
movz_32_movewide = MOVZ MOVZ_32_movewide

movz_64_movewide :: Insn
movz_64_movewide = MOVZ MOVZ_64_movewide

mrs_rs_system :: Insn
mrs_rs_system = MRS MRS_RS_system

msr_si_system :: Insn
msr_si_system = MSR MSR_SI_system

msr_sr_system :: Insn
msr_sr_system = MSR MSR_SR_system

msub_32a_dp_3src :: Insn
msub_32a_dp_3src = MSUB MSUB_32A_dp_3src

msub_64a_dp_3src :: Insn
msub_64a_dp_3src = MSUB MSUB_64A_dp_3src

mul_asimdelem_r :: Insn
mul_asimdelem_r = MUL MUL_asimdelem_R

mul_asimdsame_only :: Insn
mul_asimdsame_only = MUL MUL_asimdsame_only

mvni_asimdimm_l_hl :: Insn
mvni_asimdimm_l_hl = MVNI MVNI_asimdimm_L_hl

mvni_asimdimm_l_sl :: Insn
mvni_asimdimm_l_sl = MVNI MVNI_asimdimm_L_sl

mvni_asimdimm_m_sm :: Insn
mvni_asimdimm_m_sm = MVNI MVNI_asimdimm_M_sm

neg_asisdmisc_r :: Insn
neg_asisdmisc_r = NEG NEG_asisdmisc_R

neg_asimdmisc_r :: Insn
neg_asimdmisc_r = NEG NEG_asimdmisc_R

nop_hi_system :: Insn
nop_hi_system = NOP NOP_HI_system

not_asimdmisc_r :: Insn
not_asimdmisc_r = NOT NOT_asimdmisc_R

orn_32_log_shift :: Wn -> Wn -> Wn -> Shift32 -> Insn
orn_32_log_shift x1 x2 x3 x4 = ORN (ORN_32_log_shift x1 x2 x3 x4)

orn_64_log_shift :: Insn
orn_64_log_shift = ORN ORN_64_log_shift

orn_asimdsame_only :: Insn
orn_asimdsame_only = ORN ORN_asimdsame_only

orr_32_log_imm :: Insn
orr_32_log_imm = ORR ORR_32_log_imm

orr_64_log_imm :: Insn
orr_64_log_imm = ORR ORR_64_log_imm

orr_32_log_shift :: Wn -> Wn -> Wn -> Shift32 -> Insn
orr_32_log_shift x1 x2 x3 x4 = ORR (ORR_32_log_shift x1 x2 x3 x4)

orr_64_log_shift :: Insn
orr_64_log_shift = ORR ORR_64_log_shift

orr_asimdimm_l_hl :: Insn
orr_asimdimm_l_hl = ORR ORR_asimdimm_L_hl

orr_asimdimm_l_sl :: Insn
orr_asimdimm_l_sl = ORR ORR_asimdimm_L_sl

orr_asimdsame_only :: Insn
orr_asimdsame_only = ORR ORR_asimdsame_only

pacda_64p_dp_1src :: Insn
pacda_64p_dp_1src = PACDA PACDA_64P_dp_1src

pacdb_64p_dp_1src :: Insn
pacdb_64p_dp_1src = PACDB PACDB_64P_dp_1src

pacdza_64z_dp_1src :: Insn
pacdza_64z_dp_1src = PACDZA PACDZA_64Z_dp_1src

pacdzb_64z_dp_1src :: Insn
pacdzb_64z_dp_1src = PACDZB PACDZB_64Z_dp_1src

pacga_64p_dp_2src :: Insn
pacga_64p_dp_2src = PACGA PACGA_64P_dp_2src

pacia_64p_dp_1src :: Insn
pacia_64p_dp_1src = PACIA PACIA_64P_dp_1src

pacia1716_hi_system :: Insn
pacia1716_hi_system = PACIA1716 PACIA1716_HI_system

paciasp_hi_system :: Insn
paciasp_hi_system = PACIASP PACIASP_HI_system

paciaz_hi_system :: Insn
paciaz_hi_system = PACIAZ PACIAZ_HI_system

pacib_64p_dp_1src :: Insn
pacib_64p_dp_1src = PACIB PACIB_64P_dp_1src

pacib1716_hi_system :: Insn
pacib1716_hi_system = PACIB1716 PACIB1716_HI_system

pacibsp_hi_system :: Insn
pacibsp_hi_system = PACIBSP PACIBSP_HI_system

pacibz_hi_system :: Insn
pacibz_hi_system = PACIBZ PACIBZ_HI_system

paciza_64z_dp_1src :: Insn
paciza_64z_dp_1src = PACIZA PACIZA_64Z_dp_1src

pacizb_64z_dp_1src :: Insn
pacizb_64z_dp_1src = PACIZB PACIZB_64Z_dp_1src

pmul_asimdsame_only :: Insn
pmul_asimdsame_only = PMUL PMUL_asimdsame_only

pmull_asimddiff_l :: Insn
pmull_asimddiff_l = PMULL PMULL_asimddiff_L

prfm_p_ldst_pos :: Insn
prfm_p_ldst_pos = PRFM PRFM_P_ldst_pos

prfm_p_loadlit :: Insn
prfm_p_loadlit = PRFM PRFM_P_loadlit

prfm_p_ldst_regoff :: Insn
prfm_p_ldst_regoff = PRFM PRFM_P_ldst_regoff

prfum_p_ldst_unscaled :: Insn
prfum_p_ldst_unscaled = PRFUM PRFUM_P_ldst_unscaled

psb_hc_system :: Insn
psb_hc_system = PSB PSB_HC_system

raddhn_asimddiff_n :: Insn
raddhn_asimddiff_n = RADDHN RADDHN_asimddiff_N

rax1_vvv2_cryptosha512_3 :: Insn
rax1_vvv2_cryptosha512_3 = RAX1 RAX1_VVV2_cryptosha512_3

rbit_32_dp_1src :: Insn
rbit_32_dp_1src = RBIT RBIT_32_dp_1src

rbit_64_dp_1src :: Insn
rbit_64_dp_1src = RBIT RBIT_64_dp_1src

rbit_asimdmisc_r :: Insn
rbit_asimdmisc_r = RBIT RBIT_asimdmisc_R

ret_64r_branch_reg :: Insn
ret_64r_branch_reg = RET RET_64R_branch_reg

retaa_64e_branch_reg :: Insn
retaa_64e_branch_reg = RETAA RETAA_64E_branch_reg

retab_64e_branch_reg :: Insn
retab_64e_branch_reg = RETAB RETAB_64E_branch_reg

rev_32_dp_1src :: Insn
rev_32_dp_1src = REV REV_32_dp_1src

rev_64_dp_1src :: Insn
rev_64_dp_1src = REV REV_64_dp_1src

rev16_32_dp_1src :: Insn
rev16_32_dp_1src = REV16 REV16_32_dp_1src

rev16_64_dp_1src :: Insn
rev16_64_dp_1src = REV16 REV16_64_dp_1src

rev16_asimdmisc_r :: Insn
rev16_asimdmisc_r = REV16 REV16_asimdmisc_R

rev32_64_dp_1src :: Insn
rev32_64_dp_1src = REV32 REV32_64_dp_1src

rev32_asimdmisc_r :: Insn
rev32_asimdmisc_r = REV32 REV32_asimdmisc_R

rev64_asimdmisc_r :: Insn
rev64_asimdmisc_r = REV64 REV64_asimdmisc_R

rorv_32_dp_2src :: Insn
rorv_32_dp_2src = RORV RORV_32_dp_2src

rorv_64_dp_2src :: Insn
rorv_64_dp_2src = RORV RORV_64_dp_2src

rshrn_asimdshf_n :: Insn
rshrn_asimdshf_n = RSHRN RSHRN_asimdshf_N

rsubhn_asimddiff_n :: Insn
rsubhn_asimddiff_n = RSUBHN RSUBHN_asimddiff_N

saba_asimdsame_only :: Insn
saba_asimdsame_only = SABA SABA_asimdsame_only

sabal_asimddiff_l :: Insn
sabal_asimddiff_l = SABAL SABAL_asimddiff_L

sabd_asimdsame_only :: Insn
sabd_asimdsame_only = SABD SABD_asimdsame_only

sabdl_asimddiff_l :: Insn
sabdl_asimddiff_l = SABDL SABDL_asimddiff_L

sadalp_asimdmisc_p :: Insn
sadalp_asimdmisc_p = SADALP SADALP_asimdmisc_P

saddl_asimddiff_l :: Insn
saddl_asimddiff_l = SADDL SADDL_asimddiff_L

saddlp_asimdmisc_p :: Insn
saddlp_asimdmisc_p = SADDLP SADDLP_asimdmisc_P

saddlv_asimdall_only :: Insn
saddlv_asimdall_only = SADDLV SADDLV_asimdall_only

saddw_asimddiff_w :: Insn
saddw_asimddiff_w = SADDW SADDW_asimddiff_W

sbc_32_addsub_carry :: Insn
sbc_32_addsub_carry = SBC SBC_32_addsub_carry

sbc_64_addsub_carry :: Insn
sbc_64_addsub_carry = SBC SBC_64_addsub_carry

sbcs_32_addsub_carry :: Insn
sbcs_32_addsub_carry = SBCS SBCS_32_addsub_carry

sbcs_64_addsub_carry :: Insn
sbcs_64_addsub_carry = SBCS SBCS_64_addsub_carry

sbfm_32m_bitfield :: Insn
sbfm_32m_bitfield = SBFM SBFM_32M_bitfield

sbfm_64m_bitfield :: Insn
sbfm_64m_bitfield = SBFM SBFM_64M_bitfield

scvtf_h32_float2fix :: Insn
scvtf_h32_float2fix = SCVTF SCVTF_H32_float2fix

scvtf_s32_float2fix :: Insn
scvtf_s32_float2fix = SCVTF SCVTF_S32_float2fix

scvtf_d32_float2fix :: Insn
scvtf_d32_float2fix = SCVTF SCVTF_D32_float2fix

scvtf_h64_float2fix :: Insn
scvtf_h64_float2fix = SCVTF SCVTF_H64_float2fix

scvtf_s64_float2fix :: Insn
scvtf_s64_float2fix = SCVTF SCVTF_S64_float2fix

scvtf_d64_float2fix :: Insn
scvtf_d64_float2fix = SCVTF SCVTF_D64_float2fix

scvtf_h32_float2int :: Insn
scvtf_h32_float2int = SCVTF SCVTF_H32_float2int

scvtf_s32_float2int :: Insn
scvtf_s32_float2int = SCVTF SCVTF_S32_float2int

scvtf_d32_float2int :: Insn
scvtf_d32_float2int = SCVTF SCVTF_D32_float2int

scvtf_h64_float2int :: Insn
scvtf_h64_float2int = SCVTF SCVTF_H64_float2int

scvtf_s64_float2int :: Insn
scvtf_s64_float2int = SCVTF SCVTF_S64_float2int

scvtf_d64_float2int :: Insn
scvtf_d64_float2int = SCVTF SCVTF_D64_float2int

scvtf_asisdshf_c :: Insn
scvtf_asisdshf_c = SCVTF SCVTF_asisdshf_C

scvtf_asimdshf_c :: Insn
scvtf_asimdshf_c = SCVTF SCVTF_asimdshf_C

scvtf_asisdmiscfp16_r :: Insn
scvtf_asisdmiscfp16_r = SCVTF SCVTF_asisdmiscfp16_R

scvtf_asisdmisc_r :: Insn
scvtf_asisdmisc_r = SCVTF SCVTF_asisdmisc_R

scvtf_asimdmiscfp16_r :: Insn
scvtf_asimdmiscfp16_r = SCVTF SCVTF_asimdmiscfp16_R

scvtf_asimdmisc_r :: Insn
scvtf_asimdmisc_r = SCVTF SCVTF_asimdmisc_R

sdiv_32_dp_2src :: Insn
sdiv_32_dp_2src = SDIV SDIV_32_dp_2src

sdiv_64_dp_2src :: Insn
sdiv_64_dp_2src = SDIV SDIV_64_dp_2src

sdot_asimdelem_d :: Insn
sdot_asimdelem_d = SDOT SDOT_asimdelem_D

sdot_asimdsame2_d :: Insn
sdot_asimdsame2_d = SDOT SDOT_asimdsame2_D

sev_hi_system :: Insn
sev_hi_system = SEV SEV_HI_system

sevl_hi_system :: Insn
sevl_hi_system = SEVL SEVL_HI_system

sha1c_qsv_cryptosha3 :: Insn
sha1c_qsv_cryptosha3 = SHA1C SHA1C_QSV_cryptosha3

sha1h_ss_cryptosha2 :: Insn
sha1h_ss_cryptosha2 = SHA1H SHA1H_SS_cryptosha2

sha1m_qsv_cryptosha3 :: Insn
sha1m_qsv_cryptosha3 = SHA1M SHA1M_QSV_cryptosha3

sha1p_qsv_cryptosha3 :: Insn
sha1p_qsv_cryptosha3 = SHA1P SHA1P_QSV_cryptosha3

sha1su0_vvv_cryptosha3 :: Insn
sha1su0_vvv_cryptosha3 = SHA1SU0 SHA1SU0_VVV_cryptosha3

sha1su1_vv_cryptosha2 :: Insn
sha1su1_vv_cryptosha2 = SHA1SU1 SHA1SU1_VV_cryptosha2

sha256h_qqv_cryptosha3 :: Insn
sha256h_qqv_cryptosha3 = SHA256H SHA256H_QQV_cryptosha3

sha256h2_qqv_cryptosha3 :: Insn
sha256h2_qqv_cryptosha3 = SHA256H2 SHA256H2_QQV_cryptosha3

sha256su0_vv_cryptosha2 :: Insn
sha256su0_vv_cryptosha2 = SHA256SU0 SHA256SU0_VV_cryptosha2

sha256su1_vvv_cryptosha3 :: Insn
sha256su1_vvv_cryptosha3 = SHA256SU1 SHA256SU1_VVV_cryptosha3

sha512h_qqv_cryptosha512_3 :: Insn
sha512h_qqv_cryptosha512_3 = SHA512H SHA512H_QQV_cryptosha512_3

sha512h2_qqv_cryptosha512_3 :: Insn
sha512h2_qqv_cryptosha512_3 = SHA512H2 SHA512H2_QQV_cryptosha512_3

sha512su0_vv2_cryptosha512_2 :: Insn
sha512su0_vv2_cryptosha512_2
  = SHA512SU0 SHA512SU0_VV2_cryptosha512_2

sha512su1_vvv2_cryptosha512_3 :: Insn
sha512su1_vvv2_cryptosha512_3
  = SHA512SU1 SHA512SU1_VVV2_cryptosha512_3

shadd_asimdsame_only :: Insn
shadd_asimdsame_only = SHADD SHADD_asimdsame_only

shl_asisdshf_r :: Insn
shl_asisdshf_r = SHL SHL_asisdshf_R

shl_asimdshf_r :: Insn
shl_asimdshf_r = SHL SHL_asimdshf_R

shll_asimdmisc_s :: Insn
shll_asimdmisc_s = SHLL SHLL_asimdmisc_S

shrn_asimdshf_n :: Insn
shrn_asimdshf_n = SHRN SHRN_asimdshf_N

shsub_asimdsame_only :: Insn
shsub_asimdsame_only = SHSUB SHSUB_asimdsame_only

sli_asisdshf_r :: Insn
sli_asisdshf_r = SLI SLI_asisdshf_R

sli_asimdshf_r :: Insn
sli_asimdshf_r = SLI SLI_asimdshf_R

sm3partw1_vvv4_cryptosha512_3 :: Insn
sm3partw1_vvv4_cryptosha512_3
  = SM3PARTW1 SM3PARTW1_VVV4_cryptosha512_3

sm3partw2_vvv4_cryptosha512_3 :: Insn
sm3partw2_vvv4_cryptosha512_3
  = SM3PARTW2 SM3PARTW2_VVV4_cryptosha512_3

sm3ss1_vvv4_crypto4 :: Insn
sm3ss1_vvv4_crypto4 = SM3SS1 SM3SS1_VVV4_crypto4

sm3tt1a_vvv4_crypto3_imm2 :: Insn
sm3tt1a_vvv4_crypto3_imm2 = SM3TT1A SM3TT1A_VVV4_crypto3_imm2

sm3tt1b_vvv4_crypto3_imm2 :: Insn
sm3tt1b_vvv4_crypto3_imm2 = SM3TT1B SM3TT1B_VVV4_crypto3_imm2

sm3tt2a_vvv4_crypto3_imm2 :: Insn
sm3tt2a_vvv4_crypto3_imm2 = SM3TT2A SM3TT2A_VVV4_crypto3_imm2

sm3tt2b_vvv_crypto3_imm2 :: Insn
sm3tt2b_vvv_crypto3_imm2 = SM3TT2B SM3TT2B_VVV_crypto3_imm2

sm4e_vv4_cryptosha512_2 :: Insn
sm4e_vv4_cryptosha512_2 = SM4E SM4E_VV4_cryptosha512_2

sm4ekey_vvv4_cryptosha512_3 :: Insn
sm4ekey_vvv4_cryptosha512_3 = SM4EKEY SM4EKEY_VVV4_cryptosha512_3

smaddl_64wa_dp_3src :: Insn
smaddl_64wa_dp_3src = SMADDL SMADDL_64WA_dp_3src

smax_asimdsame_only :: Insn
smax_asimdsame_only = SMAX SMAX_asimdsame_only

smaxp_asimdsame_only :: Insn
smaxp_asimdsame_only = SMAXP SMAXP_asimdsame_only

smaxv_asimdall_only :: Insn
smaxv_asimdall_only = SMAXV SMAXV_asimdall_only

smc_ex_exception :: Insn
smc_ex_exception = SMC SMC_EX_exception

smin_asimdsame_only :: Insn
smin_asimdsame_only = SMIN SMIN_asimdsame_only

sminp_asimdsame_only :: Insn
sminp_asimdsame_only = SMINP SMINP_asimdsame_only

sminv_asimdall_only :: Insn
sminv_asimdall_only = SMINV SMINV_asimdall_only

smlal_asimdelem_l :: Insn
smlal_asimdelem_l = SMLAL SMLAL_asimdelem_L

smlal_asimddiff_l :: Insn
smlal_asimddiff_l = SMLAL SMLAL_asimddiff_L

smlsl_asimdelem_l :: Insn
smlsl_asimdelem_l = SMLSL SMLSL_asimdelem_L

smlsl_asimddiff_l :: Insn
smlsl_asimddiff_l = SMLSL SMLSL_asimddiff_L

smov_asimdins_w_w :: Insn
smov_asimdins_w_w = SMOV SMOV_asimdins_W_w

smov_asimdins_x_x :: Insn
smov_asimdins_x_x = SMOV SMOV_asimdins_X_x

smsubl_64wa_dp_3src :: Insn
smsubl_64wa_dp_3src = SMSUBL SMSUBL_64WA_dp_3src

smulh_64_dp_3src :: Insn
smulh_64_dp_3src = SMULH SMULH_64_dp_3src

smull_asimdelem_l :: Insn
smull_asimdelem_l = SMULL SMULL_asimdelem_L

smull_asimddiff_l :: Insn
smull_asimddiff_l = SMULL SMULL_asimddiff_L

sqabs_asisdmisc_r :: Insn
sqabs_asisdmisc_r = SQABS SQABS_asisdmisc_R

sqabs_asimdmisc_r :: Insn
sqabs_asimdmisc_r = SQABS SQABS_asimdmisc_R

sqadd_asisdsame_only :: Insn
sqadd_asisdsame_only = SQADD SQADD_asisdsame_only

sqadd_asimdsame_only :: Insn
sqadd_asimdsame_only = SQADD SQADD_asimdsame_only

sqdmlal_asisdelem_l :: Insn
sqdmlal_asisdelem_l = SQDMLAL SQDMLAL_asisdelem_L

sqdmlal_asimdelem_l :: Insn
sqdmlal_asimdelem_l = SQDMLAL SQDMLAL_asimdelem_L

sqdmlal_asisddiff_only :: Insn
sqdmlal_asisddiff_only = SQDMLAL SQDMLAL_asisddiff_only

sqdmlal_asimddiff_l :: Insn
sqdmlal_asimddiff_l = SQDMLAL SQDMLAL_asimddiff_L

sqdmlsl_asisdelem_l :: Insn
sqdmlsl_asisdelem_l = SQDMLSL SQDMLSL_asisdelem_L

sqdmlsl_asimdelem_l :: Insn
sqdmlsl_asimdelem_l = SQDMLSL SQDMLSL_asimdelem_L

sqdmlsl_asisddiff_only :: Insn
sqdmlsl_asisddiff_only = SQDMLSL SQDMLSL_asisddiff_only

sqdmlsl_asimddiff_l :: Insn
sqdmlsl_asimddiff_l = SQDMLSL SQDMLSL_asimddiff_L

sqdmulh_asisdelem_r :: Insn
sqdmulh_asisdelem_r = SQDMULH SQDMULH_asisdelem_R

sqdmulh_asimdelem_r :: Insn
sqdmulh_asimdelem_r = SQDMULH SQDMULH_asimdelem_R

sqdmulh_asisdsame_only :: Insn
sqdmulh_asisdsame_only = SQDMULH SQDMULH_asisdsame_only

sqdmulh_asimdsame_only :: Insn
sqdmulh_asimdsame_only = SQDMULH SQDMULH_asimdsame_only

sqdmull_asisdelem_l :: Insn
sqdmull_asisdelem_l = SQDMULL SQDMULL_asisdelem_L

sqdmull_asimdelem_l :: Insn
sqdmull_asimdelem_l = SQDMULL SQDMULL_asimdelem_L

sqdmull_asisddiff_only :: Insn
sqdmull_asisddiff_only = SQDMULL SQDMULL_asisddiff_only

sqdmull_asimddiff_l :: Insn
sqdmull_asimddiff_l = SQDMULL SQDMULL_asimddiff_L

sqneg_asisdmisc_r :: Insn
sqneg_asisdmisc_r = SQNEG SQNEG_asisdmisc_R

sqneg_asimdmisc_r :: Insn
sqneg_asimdmisc_r = SQNEG SQNEG_asimdmisc_R

sqrdmlah_asisdelem_r :: Insn
sqrdmlah_asisdelem_r = SQRDMLAH SQRDMLAH_asisdelem_R

sqrdmlah_asimdelem_r :: Insn
sqrdmlah_asimdelem_r = SQRDMLAH SQRDMLAH_asimdelem_R

sqrdmlah_asisdsame2_only :: Insn
sqrdmlah_asisdsame2_only = SQRDMLAH SQRDMLAH_asisdsame2_only

sqrdmlah_asimdsame2_only :: Insn
sqrdmlah_asimdsame2_only = SQRDMLAH SQRDMLAH_asimdsame2_only

sqrdmlsh_asisdelem_r :: Insn
sqrdmlsh_asisdelem_r = SQRDMLSH SQRDMLSH_asisdelem_R

sqrdmlsh_asimdelem_r :: Insn
sqrdmlsh_asimdelem_r = SQRDMLSH SQRDMLSH_asimdelem_R

sqrdmlsh_asisdsame2_only :: Insn
sqrdmlsh_asisdsame2_only = SQRDMLSH SQRDMLSH_asisdsame2_only

sqrdmlsh_asimdsame2_only :: Insn
sqrdmlsh_asimdsame2_only = SQRDMLSH SQRDMLSH_asimdsame2_only

sqrdmulh_asisdelem_r :: Insn
sqrdmulh_asisdelem_r = SQRDMULH SQRDMULH_asisdelem_R

sqrdmulh_asimdelem_r :: Insn
sqrdmulh_asimdelem_r = SQRDMULH SQRDMULH_asimdelem_R

sqrdmulh_asisdsame_only :: Insn
sqrdmulh_asisdsame_only = SQRDMULH SQRDMULH_asisdsame_only

sqrdmulh_asimdsame_only :: Insn
sqrdmulh_asimdsame_only = SQRDMULH SQRDMULH_asimdsame_only

sqrshl_asisdsame_only :: Insn
sqrshl_asisdsame_only = SQRSHL SQRSHL_asisdsame_only

sqrshl_asimdsame_only :: Insn
sqrshl_asimdsame_only = SQRSHL SQRSHL_asimdsame_only

sqrshrn_asisdshf_n :: Insn
sqrshrn_asisdshf_n = SQRSHRN SQRSHRN_asisdshf_N

sqrshrn_asimdshf_n :: Insn
sqrshrn_asimdshf_n = SQRSHRN SQRSHRN_asimdshf_N

sqrshrun_asisdshf_n :: Insn
sqrshrun_asisdshf_n = SQRSHRUN SQRSHRUN_asisdshf_N

sqrshrun_asimdshf_n :: Insn
sqrshrun_asimdshf_n = SQRSHRUN SQRSHRUN_asimdshf_N

sqshl_asisdshf_r :: Insn
sqshl_asisdshf_r = SQSHL SQSHL_asisdshf_R

sqshl_asimdshf_r :: Insn
sqshl_asimdshf_r = SQSHL SQSHL_asimdshf_R

sqshl_asisdsame_only :: Insn
sqshl_asisdsame_only = SQSHL SQSHL_asisdsame_only

sqshl_asimdsame_only :: Insn
sqshl_asimdsame_only = SQSHL SQSHL_asimdsame_only

sqshlu_asisdshf_r :: Insn
sqshlu_asisdshf_r = SQSHLU SQSHLU_asisdshf_R

sqshlu_asimdshf_r :: Insn
sqshlu_asimdshf_r = SQSHLU SQSHLU_asimdshf_R

sqshrn_asisdshf_n :: Insn
sqshrn_asisdshf_n = SQSHRN SQSHRN_asisdshf_N

sqshrn_asimdshf_n :: Insn
sqshrn_asimdshf_n = SQSHRN SQSHRN_asimdshf_N

sqshrun_asisdshf_n :: Insn
sqshrun_asisdshf_n = SQSHRUN SQSHRUN_asisdshf_N

sqshrun_asimdshf_n :: Insn
sqshrun_asimdshf_n = SQSHRUN SQSHRUN_asimdshf_N

sqsub_asisdsame_only :: Insn
sqsub_asisdsame_only = SQSUB SQSUB_asisdsame_only

sqsub_asimdsame_only :: Insn
sqsub_asimdsame_only = SQSUB SQSUB_asimdsame_only

sqxtn_asisdmisc_n :: Insn
sqxtn_asisdmisc_n = SQXTN SQXTN_asisdmisc_N

sqxtn_asimdmisc_n :: Insn
sqxtn_asimdmisc_n = SQXTN SQXTN_asimdmisc_N

sqxtun_asisdmisc_n :: Insn
sqxtun_asisdmisc_n = SQXTUN SQXTUN_asisdmisc_N

sqxtun_asimdmisc_n :: Insn
sqxtun_asimdmisc_n = SQXTUN SQXTUN_asimdmisc_N

srhadd_asimdsame_only :: Insn
srhadd_asimdsame_only = SRHADD SRHADD_asimdsame_only

sri_asisdshf_r :: Insn
sri_asisdshf_r = SRI SRI_asisdshf_R

sri_asimdshf_r :: Insn
sri_asimdshf_r = SRI SRI_asimdshf_R

srshl_asisdsame_only :: Insn
srshl_asisdsame_only = SRSHL SRSHL_asisdsame_only

srshl_asimdsame_only :: Insn
srshl_asimdsame_only = SRSHL SRSHL_asimdsame_only

srshr_asisdshf_r :: Insn
srshr_asisdshf_r = SRSHR SRSHR_asisdshf_R

srshr_asimdshf_r :: Insn
srshr_asimdshf_r = SRSHR SRSHR_asimdshf_R

srsra_asisdshf_r :: Insn
srsra_asisdshf_r = SRSRA SRSRA_asisdshf_R

srsra_asimdshf_r :: Insn
srsra_asimdshf_r = SRSRA SRSRA_asimdshf_R

sshl_asisdsame_only :: Insn
sshl_asisdsame_only = SSHL SSHL_asisdsame_only

sshl_asimdsame_only :: Insn
sshl_asimdsame_only = SSHL SSHL_asimdsame_only

sshll_asimdshf_l :: Insn
sshll_asimdshf_l = SSHLL SSHLL_asimdshf_L

sshr_asisdshf_r :: Insn
sshr_asisdshf_r = SSHR SSHR_asisdshf_R

sshr_asimdshf_r :: Insn
sshr_asimdshf_r = SSHR SSHR_asimdshf_R

ssra_asisdshf_r :: Insn
ssra_asisdshf_r = SSRA SSRA_asisdshf_R

ssra_asimdshf_r :: Insn
ssra_asimdshf_r = SSRA SSRA_asimdshf_R

ssubl_asimddiff_l :: Insn
ssubl_asimddiff_l = SSUBL SSUBL_asimddiff_L

ssubw_asimddiff_w :: Insn
ssubw_asimddiff_w = SSUBW SSUBW_asimddiff_W

st1_asisdlse_r1_1v :: Insn
st1_asisdlse_r1_1v = ST1 ST1_asisdlse_R1_1v

st1_asisdlse_r2_2v :: Insn
st1_asisdlse_r2_2v = ST1 ST1_asisdlse_R2_2v

st1_asisdlse_r3_3v :: Insn
st1_asisdlse_r3_3v = ST1 ST1_asisdlse_R3_3v

st1_asisdlse_r4_4v :: Insn
st1_asisdlse_r4_4v = ST1 ST1_asisdlse_R4_4v

st1_asisdlsep_i1_i1 :: Insn
st1_asisdlsep_i1_i1 = ST1 ST1_asisdlsep_I1_i1

st1_asisdlsep_r1_r1 :: Insn
st1_asisdlsep_r1_r1 = ST1 ST1_asisdlsep_R1_r1

st1_asisdlsep_i2_i2 :: Insn
st1_asisdlsep_i2_i2 = ST1 ST1_asisdlsep_I2_i2

st1_asisdlsep_r2_r2 :: Insn
st1_asisdlsep_r2_r2 = ST1 ST1_asisdlsep_R2_r2

st1_asisdlsep_i3_i3 :: Insn
st1_asisdlsep_i3_i3 = ST1 ST1_asisdlsep_I3_i3

st1_asisdlsep_r3_r3 :: Insn
st1_asisdlsep_r3_r3 = ST1 ST1_asisdlsep_R3_r3

st1_asisdlsep_i4_i4 :: Insn
st1_asisdlsep_i4_i4 = ST1 ST1_asisdlsep_I4_i4

st1_asisdlsep_r4_r4 :: Insn
st1_asisdlsep_r4_r4 = ST1 ST1_asisdlsep_R4_r4

st1_asisdlso_b1_1b :: Insn
st1_asisdlso_b1_1b = ST1 ST1_asisdlso_B1_1b

st1_asisdlso_h1_1h :: Insn
st1_asisdlso_h1_1h = ST1 ST1_asisdlso_H1_1h

st1_asisdlso_s1_1s :: Insn
st1_asisdlso_s1_1s = ST1 ST1_asisdlso_S1_1s

st1_asisdlso_d1_1d :: Insn
st1_asisdlso_d1_1d = ST1 ST1_asisdlso_D1_1d

st1_asisdlsop_b1_i1b :: Insn
st1_asisdlsop_b1_i1b = ST1 ST1_asisdlsop_B1_i1b

st1_asisdlsop_bx1_r1b :: Insn
st1_asisdlsop_bx1_r1b = ST1 ST1_asisdlsop_BX1_r1b

st1_asisdlsop_h1_i1h :: Insn
st1_asisdlsop_h1_i1h = ST1 ST1_asisdlsop_H1_i1h

st1_asisdlsop_hx1_r1h :: Insn
st1_asisdlsop_hx1_r1h = ST1 ST1_asisdlsop_HX1_r1h

st1_asisdlsop_s1_i1s :: Insn
st1_asisdlsop_s1_i1s = ST1 ST1_asisdlsop_S1_i1s

st1_asisdlsop_sx1_r1s :: Insn
st1_asisdlsop_sx1_r1s = ST1 ST1_asisdlsop_SX1_r1s

st1_asisdlsop_d1_i1d :: Insn
st1_asisdlsop_d1_i1d = ST1 ST1_asisdlsop_D1_i1d

st1_asisdlsop_dx1_r1d :: Insn
st1_asisdlsop_dx1_r1d = ST1 ST1_asisdlsop_DX1_r1d

st2_asisdlse_r2 :: Insn
st2_asisdlse_r2 = ST2 ST2_asisdlse_R2

st2_asisdlsep_i2_i :: Insn
st2_asisdlsep_i2_i = ST2 ST2_asisdlsep_I2_i

st2_asisdlsep_r2_r :: Insn
st2_asisdlsep_r2_r = ST2 ST2_asisdlsep_R2_r

st2_asisdlso_b2_2b :: Insn
st2_asisdlso_b2_2b = ST2 ST2_asisdlso_B2_2b

st2_asisdlso_h2_2h :: Insn
st2_asisdlso_h2_2h = ST2 ST2_asisdlso_H2_2h

st2_asisdlso_s2_2s :: Insn
st2_asisdlso_s2_2s = ST2 ST2_asisdlso_S2_2s

st2_asisdlso_d2_2d :: Insn
st2_asisdlso_d2_2d = ST2 ST2_asisdlso_D2_2d

st2_asisdlsop_b2_i2b :: Insn
st2_asisdlsop_b2_i2b = ST2 ST2_asisdlsop_B2_i2b

st2_asisdlsop_bx2_r2b :: Insn
st2_asisdlsop_bx2_r2b = ST2 ST2_asisdlsop_BX2_r2b

st2_asisdlsop_h2_i2h :: Insn
st2_asisdlsop_h2_i2h = ST2 ST2_asisdlsop_H2_i2h

st2_asisdlsop_hx2_r2h :: Insn
st2_asisdlsop_hx2_r2h = ST2 ST2_asisdlsop_HX2_r2h

st2_asisdlsop_s2_i2s :: Insn
st2_asisdlsop_s2_i2s = ST2 ST2_asisdlsop_S2_i2s

st2_asisdlsop_sx2_r2s :: Insn
st2_asisdlsop_sx2_r2s = ST2 ST2_asisdlsop_SX2_r2s

st2_asisdlsop_d2_i2d :: Insn
st2_asisdlsop_d2_i2d = ST2 ST2_asisdlsop_D2_i2d

st2_asisdlsop_dx2_r2d :: Insn
st2_asisdlsop_dx2_r2d = ST2 ST2_asisdlsop_DX2_r2d

st3_asisdlse_r3 :: Insn
st3_asisdlse_r3 = ST3 ST3_asisdlse_R3

st3_asisdlsep_i3_i :: Insn
st3_asisdlsep_i3_i = ST3 ST3_asisdlsep_I3_i

st3_asisdlsep_r3_r :: Insn
st3_asisdlsep_r3_r = ST3 ST3_asisdlsep_R3_r

st3_asisdlso_b3_3b :: Insn
st3_asisdlso_b3_3b = ST3 ST3_asisdlso_B3_3b

st3_asisdlso_h3_3h :: Insn
st3_asisdlso_h3_3h = ST3 ST3_asisdlso_H3_3h

st3_asisdlso_s3_3s :: Insn
st3_asisdlso_s3_3s = ST3 ST3_asisdlso_S3_3s

st3_asisdlso_d3_3d :: Insn
st3_asisdlso_d3_3d = ST3 ST3_asisdlso_D3_3d

st3_asisdlsop_b3_i3b :: Insn
st3_asisdlsop_b3_i3b = ST3 ST3_asisdlsop_B3_i3b

st3_asisdlsop_bx3_r3b :: Insn
st3_asisdlsop_bx3_r3b = ST3 ST3_asisdlsop_BX3_r3b

st3_asisdlsop_h3_i3h :: Insn
st3_asisdlsop_h3_i3h = ST3 ST3_asisdlsop_H3_i3h

st3_asisdlsop_hx3_r3h :: Insn
st3_asisdlsop_hx3_r3h = ST3 ST3_asisdlsop_HX3_r3h

st3_asisdlsop_s3_i3s :: Insn
st3_asisdlsop_s3_i3s = ST3 ST3_asisdlsop_S3_i3s

st3_asisdlsop_sx3_r3s :: Insn
st3_asisdlsop_sx3_r3s = ST3 ST3_asisdlsop_SX3_r3s

st3_asisdlsop_d3_i3d :: Insn
st3_asisdlsop_d3_i3d = ST3 ST3_asisdlsop_D3_i3d

st3_asisdlsop_dx3_r3d :: Insn
st3_asisdlsop_dx3_r3d = ST3 ST3_asisdlsop_DX3_r3d

st4_asisdlse_r4 :: Insn
st4_asisdlse_r4 = ST4 ST4_asisdlse_R4

st4_asisdlsep_i4_i :: Insn
st4_asisdlsep_i4_i = ST4 ST4_asisdlsep_I4_i

st4_asisdlsep_r4_r :: Insn
st4_asisdlsep_r4_r = ST4 ST4_asisdlsep_R4_r

st4_asisdlso_b4_4b :: Insn
st4_asisdlso_b4_4b = ST4 ST4_asisdlso_B4_4b

st4_asisdlso_h4_4h :: Insn
st4_asisdlso_h4_4h = ST4 ST4_asisdlso_H4_4h

st4_asisdlso_s4_4s :: Insn
st4_asisdlso_s4_4s = ST4 ST4_asisdlso_S4_4s

st4_asisdlso_d4_4d :: Insn
st4_asisdlso_d4_4d = ST4 ST4_asisdlso_D4_4d

st4_asisdlsop_b4_i4b :: Insn
st4_asisdlsop_b4_i4b = ST4 ST4_asisdlsop_B4_i4b

st4_asisdlsop_bx4_r4b :: Insn
st4_asisdlsop_bx4_r4b = ST4 ST4_asisdlsop_BX4_r4b

st4_asisdlsop_h4_i4h :: Insn
st4_asisdlsop_h4_i4h = ST4 ST4_asisdlsop_H4_i4h

st4_asisdlsop_hx4_r4h :: Insn
st4_asisdlsop_hx4_r4h = ST4 ST4_asisdlsop_HX4_r4h

st4_asisdlsop_s4_i4s :: Insn
st4_asisdlsop_s4_i4s = ST4 ST4_asisdlsop_S4_i4s

st4_asisdlsop_sx4_r4s :: Insn
st4_asisdlsop_sx4_r4s = ST4 ST4_asisdlsop_SX4_r4s

st4_asisdlsop_d4_i4d :: Insn
st4_asisdlsop_d4_i4d = ST4 ST4_asisdlsop_D4_i4d

st4_asisdlsop_dx4_r4d :: Insn
st4_asisdlsop_dx4_r4d = ST4 ST4_asisdlsop_DX4_r4d

stllr_sl32_ldstexcl :: Insn
stllr_sl32_ldstexcl = STLLR STLLR_SL32_ldstexcl

stllr_sl64_ldstexcl :: Insn
stllr_sl64_ldstexcl = STLLR STLLR_SL64_ldstexcl

stllrb_sl32_ldstexcl :: Insn
stllrb_sl32_ldstexcl = STLLRB STLLRB_SL32_ldstexcl

stllrh_sl32_ldstexcl :: Insn
stllrh_sl32_ldstexcl = STLLRH STLLRH_SL32_ldstexcl

stlr_sl32_ldstexcl :: Insn
stlr_sl32_ldstexcl = STLR STLR_SL32_ldstexcl

stlr_sl64_ldstexcl :: Insn
stlr_sl64_ldstexcl = STLR STLR_SL64_ldstexcl

stlrb_sl32_ldstexcl :: Insn
stlrb_sl32_ldstexcl = STLRB STLRB_SL32_ldstexcl

stlrh_sl32_ldstexcl :: Insn
stlrh_sl32_ldstexcl = STLRH STLRH_SL32_ldstexcl

stlxp_sp32_ldstexcl :: Insn
stlxp_sp32_ldstexcl = STLXP STLXP_SP32_ldstexcl

stlxp_sp64_ldstexcl :: Insn
stlxp_sp64_ldstexcl = STLXP STLXP_SP64_ldstexcl

stlxr_sr32_ldstexcl :: Insn
stlxr_sr32_ldstexcl = STLXR STLXR_SR32_ldstexcl

stlxr_sr64_ldstexcl :: Insn
stlxr_sr64_ldstexcl = STLXR STLXR_SR64_ldstexcl

stlxrb_sr32_ldstexcl :: Insn
stlxrb_sr32_ldstexcl = STLXRB STLXRB_SR32_ldstexcl

stlxrh_sr32_ldstexcl :: Insn
stlxrh_sr32_ldstexcl = STLXRH STLXRH_SR32_ldstexcl

stnp_32_ldstnapair_offs :: Insn
stnp_32_ldstnapair_offs = STNP STNP_32_ldstnapair_offs

stnp_64_ldstnapair_offs :: Xn -> Xn -> XnSP -> I 7 -> Insn
stnp_64_ldstnapair_offs x1 x2 x3 x4
  = STNP (STNP_64_ldstnapair_offs x1 x2 x3 x4)

stnp_s_ldstnapair_offs :: Insn
stnp_s_ldstnapair_offs = STNP STNP_S_ldstnapair_offs

stnp_d_ldstnapair_offs :: Insn
stnp_d_ldstnapair_offs = STNP STNP_D_ldstnapair_offs

stnp_q_ldstnapair_offs :: Insn
stnp_q_ldstnapair_offs = STNP STNP_Q_ldstnapair_offs

stp_32_ldstpair_post :: Insn
stp_32_ldstpair_post = STP STP_32_ldstpair_post

stp_64_ldstpair_post :: Insn
stp_64_ldstpair_post = STP STP_64_ldstpair_post

stp_32_ldstpair_pre :: Insn
stp_32_ldstpair_pre = STP STP_32_ldstpair_pre

stp_64_ldstpair_pre :: Xn -> Xn -> XnSP -> I 7 -> Insn
stp_64_ldstpair_pre x1 x2 x3 x4
  = STP (STP_64_ldstpair_pre x1 x2 x3 x4)

stp_32_ldstpair_off :: Insn
stp_32_ldstpair_off = STP STP_32_ldstpair_off

stp_64_ldstpair_off :: Xn -> Xn -> XnSP -> I 7 -> Insn
stp_64_ldstpair_off x1 x2 x3 x4
  = STP (STP_64_ldstpair_off x1 x2 x3 x4)

stp_s_ldstpair_post :: Insn
stp_s_ldstpair_post = STP STP_S_ldstpair_post

stp_d_ldstpair_post :: Insn
stp_d_ldstpair_post = STP STP_D_ldstpair_post

stp_q_ldstpair_post :: Insn
stp_q_ldstpair_post = STP STP_Q_ldstpair_post

stp_s_ldstpair_pre :: Insn
stp_s_ldstpair_pre = STP STP_S_ldstpair_pre

stp_d_ldstpair_pre :: Insn
stp_d_ldstpair_pre = STP STP_D_ldstpair_pre

stp_q_ldstpair_pre :: Insn
stp_q_ldstpair_pre = STP STP_Q_ldstpair_pre

stp_s_ldstpair_off :: Insn
stp_s_ldstpair_off = STP STP_S_ldstpair_off

stp_d_ldstpair_off :: Insn
stp_d_ldstpair_off = STP STP_D_ldstpair_off

stp_q_ldstpair_off :: Insn
stp_q_ldstpair_off = STP STP_Q_ldstpair_off

str_32_ldst_immpost :: Insn
str_32_ldst_immpost = STR STR_32_ldst_immpost

str_64_ldst_immpost :: Insn
str_64_ldst_immpost = STR STR_64_ldst_immpost

str_32_ldst_immpre :: Insn
str_32_ldst_immpre = STR STR_32_ldst_immpre

str_64_ldst_immpre :: Insn
str_64_ldst_immpre = STR STR_64_ldst_immpre

str_32_ldst_pos :: Insn
str_32_ldst_pos = STR STR_32_ldst_pos

str_64_ldst_pos :: Xn -> XnSP -> W 12 -> Insn
str_64_ldst_pos x1 x2 x3 = STR (STR_64_ldst_pos x1 x2 x3)

str_32_ldst_regoff :: Insn
str_32_ldst_regoff = STR STR_32_ldst_regoff

str_64_ldst_regoff :: Insn
str_64_ldst_regoff = STR STR_64_ldst_regoff

str_b_ldst_immpost :: Insn
str_b_ldst_immpost = STR STR_B_ldst_immpost

str_h_ldst_immpost :: Insn
str_h_ldst_immpost = STR STR_H_ldst_immpost

str_s_ldst_immpost :: Insn
str_s_ldst_immpost = STR STR_S_ldst_immpost

str_d_ldst_immpost :: Insn
str_d_ldst_immpost = STR STR_D_ldst_immpost

str_q_ldst_immpost :: Insn
str_q_ldst_immpost = STR STR_Q_ldst_immpost

str_b_ldst_immpre :: Insn
str_b_ldst_immpre = STR STR_B_ldst_immpre

str_h_ldst_immpre :: Insn
str_h_ldst_immpre = STR STR_H_ldst_immpre

str_s_ldst_immpre :: Insn
str_s_ldst_immpre = STR STR_S_ldst_immpre

str_d_ldst_immpre :: Insn
str_d_ldst_immpre = STR STR_D_ldst_immpre

str_q_ldst_immpre :: Insn
str_q_ldst_immpre = STR STR_Q_ldst_immpre

str_b_ldst_pos :: Insn
str_b_ldst_pos = STR STR_B_ldst_pos

str_h_ldst_pos :: Insn
str_h_ldst_pos = STR STR_H_ldst_pos

str_s_ldst_pos :: Insn
str_s_ldst_pos = STR STR_S_ldst_pos

str_d_ldst_pos :: Insn
str_d_ldst_pos = STR STR_D_ldst_pos

str_q_ldst_pos :: Insn
str_q_ldst_pos = STR STR_Q_ldst_pos

str_b_ldst_regoff :: Insn
str_b_ldst_regoff = STR STR_B_ldst_regoff

str_bl_ldst_regoff :: Insn
str_bl_ldst_regoff = STR STR_BL_ldst_regoff

str_h_ldst_regoff :: Insn
str_h_ldst_regoff = STR STR_H_ldst_regoff

str_s_ldst_regoff :: Insn
str_s_ldst_regoff = STR STR_S_ldst_regoff

str_d_ldst_regoff :: Insn
str_d_ldst_regoff = STR STR_D_ldst_regoff

str_q_ldst_regoff :: Insn
str_q_ldst_regoff = STR STR_Q_ldst_regoff

strb_32_ldst_immpost :: Insn
strb_32_ldst_immpost = STRB STRB_32_ldst_immpost

strb_32_ldst_immpre :: Insn
strb_32_ldst_immpre = STRB STRB_32_ldst_immpre

strb_32_ldst_pos :: Insn
strb_32_ldst_pos = STRB STRB_32_ldst_pos

strb_32b_ldst_regoff :: Insn
strb_32b_ldst_regoff = STRB STRB_32B_ldst_regoff

strb_32bl_ldst_regoff :: Insn
strb_32bl_ldst_regoff = STRB STRB_32BL_ldst_regoff

strh_32_ldst_immpost :: Insn
strh_32_ldst_immpost = STRH STRH_32_ldst_immpost

strh_32_ldst_immpre :: Insn
strh_32_ldst_immpre = STRH STRH_32_ldst_immpre

strh_32_ldst_pos :: Insn
strh_32_ldst_pos = STRH STRH_32_ldst_pos

strh_32_ldst_regoff :: Insn
strh_32_ldst_regoff = STRH STRH_32_ldst_regoff

sttr_32_ldst_unpriv :: Insn
sttr_32_ldst_unpriv = STTR STTR_32_ldst_unpriv

sttr_64_ldst_unpriv :: Insn
sttr_64_ldst_unpriv = STTR STTR_64_ldst_unpriv

sttrb_32_ldst_unpriv :: Insn
sttrb_32_ldst_unpriv = STTRB STTRB_32_ldst_unpriv

sttrh_32_ldst_unpriv :: Insn
sttrh_32_ldst_unpriv = STTRH STTRH_32_ldst_unpriv

stur_32_ldst_unscaled :: Insn
stur_32_ldst_unscaled = STUR STUR_32_ldst_unscaled

stur_64_ldst_unscaled :: Insn
stur_64_ldst_unscaled = STUR STUR_64_ldst_unscaled

stur_b_ldst_unscaled :: Insn
stur_b_ldst_unscaled = STUR STUR_B_ldst_unscaled

stur_h_ldst_unscaled :: Insn
stur_h_ldst_unscaled = STUR STUR_H_ldst_unscaled

stur_s_ldst_unscaled :: Insn
stur_s_ldst_unscaled = STUR STUR_S_ldst_unscaled

stur_d_ldst_unscaled :: Insn
stur_d_ldst_unscaled = STUR STUR_D_ldst_unscaled

stur_q_ldst_unscaled :: Insn
stur_q_ldst_unscaled = STUR STUR_Q_ldst_unscaled

sturb_32_ldst_unscaled :: Insn
sturb_32_ldst_unscaled = STURB STURB_32_ldst_unscaled

sturh_32_ldst_unscaled :: Insn
sturh_32_ldst_unscaled = STURH STURH_32_ldst_unscaled

stxp_sp32_ldstexcl :: Insn
stxp_sp32_ldstexcl = STXP STXP_SP32_ldstexcl

stxp_sp64_ldstexcl :: Insn
stxp_sp64_ldstexcl = STXP STXP_SP64_ldstexcl

stxr_sr32_ldstexcl :: Insn
stxr_sr32_ldstexcl = STXR STXR_SR32_ldstexcl

stxr_sr64_ldstexcl :: Insn
stxr_sr64_ldstexcl = STXR STXR_SR64_ldstexcl

stxrb_sr32_ldstexcl :: Insn
stxrb_sr32_ldstexcl = STXRB STXRB_SR32_ldstexcl

stxrh_sr32_ldstexcl :: Insn
stxrh_sr32_ldstexcl = STXRH STXRH_SR32_ldstexcl

sub_32_addsub_ext :: Insn
sub_32_addsub_ext = SUB SUB_32_addsub_ext

sub_64_addsub_ext :: Insn
sub_64_addsub_ext = SUB SUB_64_addsub_ext

sub_32_addsub_imm :: Insn
sub_32_addsub_imm = SUB SUB_32_addsub_imm

sub_64_addsub_imm :: XnSP -> XnSP -> W 12 -> LSL_12 -> Insn
sub_64_addsub_imm x1 x2 x3 x4 = SUB (SUB_64_addsub_imm x1 x2 x3 x4)

sub_32_addsub_shift :: Wn -> Wn -> Wn -> Shift32 -> Insn
sub_32_addsub_shift x1 x2 x3 x4
  = SUB (SUB_32_addsub_shift x1 x2 x3 x4)

sub_64_addsub_shift :: Insn
sub_64_addsub_shift = SUB SUB_64_addsub_shift

sub_asisdsame_only :: Insn
sub_asisdsame_only = SUB SUB_asisdsame_only

sub_asimdsame_only :: Insn
sub_asimdsame_only = SUB SUB_asimdsame_only

subhn_asimddiff_n :: Insn
subhn_asimddiff_n = SUBHN SUBHN_asimddiff_N

subs_32s_addsub_ext :: Insn
subs_32s_addsub_ext = SUBS SUBS_32S_addsub_ext

subs_64s_addsub_ext :: Insn
subs_64s_addsub_ext = SUBS SUBS_64S_addsub_ext

subs_32s_addsub_imm :: Wn -> WnSP -> W 12 -> LSL_12 -> Insn
subs_32s_addsub_imm x1 x2 x3 x4
  = SUBS (SUBS_32S_addsub_imm x1 x2 x3 x4)

subs_64s_addsub_imm :: Xn -> XnSP -> W 12 -> LSL_12 -> Insn
subs_64s_addsub_imm x1 x2 x3 x4
  = SUBS (SUBS_64S_addsub_imm x1 x2 x3 x4)

subs_32_addsub_shift :: Wn -> Wn -> Wn -> Shift32 -> Insn
subs_32_addsub_shift x1 x2 x3 x4
  = SUBS (SUBS_32_addsub_shift x1 x2 x3 x4)

subs_64_addsub_shift :: Insn
subs_64_addsub_shift = SUBS SUBS_64_addsub_shift

suqadd_asisdmisc_r :: Insn
suqadd_asisdmisc_r = SUQADD SUQADD_asisdmisc_R

suqadd_asimdmisc_r :: Insn
suqadd_asimdmisc_r = SUQADD SUQADD_asimdmisc_R

svc_ex_exception :: Insn
svc_ex_exception = SVC SVC_EX_exception

swp_32_memop :: Insn
swp_32_memop = SWP SWP_32_memop

swp_64_memop :: Insn
swp_64_memop = SWP SWP_64_memop

swpa_32_memop :: Insn
swpa_32_memop = SWPA SWPA_32_memop

swpa_64_memop :: Insn
swpa_64_memop = SWPA SWPA_64_memop

swpab_32_memop :: Insn
swpab_32_memop = SWPAB SWPAB_32_memop

swpah_32_memop :: Insn
swpah_32_memop = SWPAH SWPAH_32_memop

swpal_32_memop :: Insn
swpal_32_memop = SWPAL SWPAL_32_memop

swpal_64_memop :: Insn
swpal_64_memop = SWPAL SWPAL_64_memop

swpalb_32_memop :: Insn
swpalb_32_memop = SWPALB SWPALB_32_memop

swpalh_32_memop :: Insn
swpalh_32_memop = SWPALH SWPALH_32_memop

swpb_32_memop :: Insn
swpb_32_memop = SWPB SWPB_32_memop

swph_32_memop :: Insn
swph_32_memop = SWPH SWPH_32_memop

swpl_32_memop :: Insn
swpl_32_memop = SWPL SWPL_32_memop

swpl_64_memop :: Insn
swpl_64_memop = SWPL SWPL_64_memop

swplb_32_memop :: Insn
swplb_32_memop = SWPLB SWPLB_32_memop

swplh_32_memop :: Insn
swplh_32_memop = SWPLH SWPLH_32_memop

sys_cr_system :: Insn
sys_cr_system = SYS SYS_CR_system

sysl_rc_system :: Insn
sysl_rc_system = SYSL SYSL_RC_system

tbl_asimdtbl_l2_2 :: Insn
tbl_asimdtbl_l2_2 = TBL TBL_asimdtbl_L2_2

tbl_asimdtbl_l3_3 :: Insn
tbl_asimdtbl_l3_3 = TBL TBL_asimdtbl_L3_3

tbl_asimdtbl_l4_4 :: Insn
tbl_asimdtbl_l4_4 = TBL TBL_asimdtbl_L4_4

tbl_asimdtbl_l1_1 :: Insn
tbl_asimdtbl_l1_1 = TBL TBL_asimdtbl_L1_1

tbnz_only_testbranch :: Insn
tbnz_only_testbranch = TBNZ TBNZ_only_testbranch

tbx_asimdtbl_l2_2 :: Insn
tbx_asimdtbl_l2_2 = TBX TBX_asimdtbl_L2_2

tbx_asimdtbl_l3_3 :: Insn
tbx_asimdtbl_l3_3 = TBX TBX_asimdtbl_L3_3

tbx_asimdtbl_l4_4 :: Insn
tbx_asimdtbl_l4_4 = TBX TBX_asimdtbl_L4_4

tbx_asimdtbl_l1_1 :: Insn
tbx_asimdtbl_l1_1 = TBX TBX_asimdtbl_L1_1

tbz_only_testbranch :: Insn
tbz_only_testbranch = TBZ TBZ_only_testbranch

trn1_asimdperm_only :: Insn
trn1_asimdperm_only = TRN1 TRN1_asimdperm_only

trn2_asimdperm_only :: Insn
trn2_asimdperm_only = TRN2 TRN2_asimdperm_only

uaba_asimdsame_only :: Insn
uaba_asimdsame_only = UABA UABA_asimdsame_only

uabal_asimddiff_l :: Insn
uabal_asimddiff_l = UABAL UABAL_asimddiff_L

uabd_asimdsame_only :: Insn
uabd_asimdsame_only = UABD UABD_asimdsame_only

uabdl_asimddiff_l :: Insn
uabdl_asimddiff_l = UABDL UABDL_asimddiff_L

uadalp_asimdmisc_p :: Insn
uadalp_asimdmisc_p = UADALP UADALP_asimdmisc_P

uaddl_asimddiff_l :: Insn
uaddl_asimddiff_l = UADDL UADDL_asimddiff_L

uaddlp_asimdmisc_p :: Insn
uaddlp_asimdmisc_p = UADDLP UADDLP_asimdmisc_P

uaddlv_asimdall_only :: Insn
uaddlv_asimdall_only = UADDLV UADDLV_asimdall_only

uaddw_asimddiff_w :: Insn
uaddw_asimddiff_w = UADDW UADDW_asimddiff_W

ubfm_32m_bitfield :: Insn
ubfm_32m_bitfield = UBFM UBFM_32M_bitfield

ubfm_64m_bitfield :: Insn
ubfm_64m_bitfield = UBFM UBFM_64M_bitfield

ucvtf_h32_float2fix :: Insn
ucvtf_h32_float2fix = UCVTF UCVTF_H32_float2fix

ucvtf_s32_float2fix :: Insn
ucvtf_s32_float2fix = UCVTF UCVTF_S32_float2fix

ucvtf_d32_float2fix :: Insn
ucvtf_d32_float2fix = UCVTF UCVTF_D32_float2fix

ucvtf_h64_float2fix :: Insn
ucvtf_h64_float2fix = UCVTF UCVTF_H64_float2fix

ucvtf_s64_float2fix :: Insn
ucvtf_s64_float2fix = UCVTF UCVTF_S64_float2fix

ucvtf_d64_float2fix :: Insn
ucvtf_d64_float2fix = UCVTF UCVTF_D64_float2fix

ucvtf_h32_float2int :: Insn
ucvtf_h32_float2int = UCVTF UCVTF_H32_float2int

ucvtf_s32_float2int :: Insn
ucvtf_s32_float2int = UCVTF UCVTF_S32_float2int

ucvtf_d32_float2int :: Insn
ucvtf_d32_float2int = UCVTF UCVTF_D32_float2int

ucvtf_h64_float2int :: Insn
ucvtf_h64_float2int = UCVTF UCVTF_H64_float2int

ucvtf_s64_float2int :: Insn
ucvtf_s64_float2int = UCVTF UCVTF_S64_float2int

ucvtf_d64_float2int :: Insn
ucvtf_d64_float2int = UCVTF UCVTF_D64_float2int

ucvtf_asisdshf_c :: Insn
ucvtf_asisdshf_c = UCVTF UCVTF_asisdshf_C

ucvtf_asimdshf_c :: Insn
ucvtf_asimdshf_c = UCVTF UCVTF_asimdshf_C

ucvtf_asisdmiscfp16_r :: Insn
ucvtf_asisdmiscfp16_r = UCVTF UCVTF_asisdmiscfp16_R

ucvtf_asisdmisc_r :: Insn
ucvtf_asisdmisc_r = UCVTF UCVTF_asisdmisc_R

ucvtf_asimdmiscfp16_r :: Insn
ucvtf_asimdmiscfp16_r = UCVTF UCVTF_asimdmiscfp16_R

ucvtf_asimdmisc_r :: Insn
ucvtf_asimdmisc_r = UCVTF UCVTF_asimdmisc_R

udiv_32_dp_2src :: Insn
udiv_32_dp_2src = UDIV UDIV_32_dp_2src

udiv_64_dp_2src :: Insn
udiv_64_dp_2src = UDIV UDIV_64_dp_2src

udot_asimdelem_d :: Insn
udot_asimdelem_d = UDOT UDOT_asimdelem_D

udot_asimdsame2_d :: Insn
udot_asimdsame2_d = UDOT UDOT_asimdsame2_D

uhadd_asimdsame_only :: Insn
uhadd_asimdsame_only = UHADD UHADD_asimdsame_only

uhsub_asimdsame_only :: Insn
uhsub_asimdsame_only = UHSUB UHSUB_asimdsame_only

umaddl_64wa_dp_3src :: Insn
umaddl_64wa_dp_3src = UMADDL UMADDL_64WA_dp_3src

umax_asimdsame_only :: Insn
umax_asimdsame_only = UMAX UMAX_asimdsame_only

umaxp_asimdsame_only :: Insn
umaxp_asimdsame_only = UMAXP UMAXP_asimdsame_only

umaxv_asimdall_only :: Insn
umaxv_asimdall_only = UMAXV UMAXV_asimdall_only

umin_asimdsame_only :: Insn
umin_asimdsame_only = UMIN UMIN_asimdsame_only

uminp_asimdsame_only :: Insn
uminp_asimdsame_only = UMINP UMINP_asimdsame_only

uminv_asimdall_only :: Insn
uminv_asimdall_only = UMINV UMINV_asimdall_only

umlal_asimdelem_l :: Insn
umlal_asimdelem_l = UMLAL UMLAL_asimdelem_L

umlal_asimddiff_l :: Insn
umlal_asimddiff_l = UMLAL UMLAL_asimddiff_L

umlsl_asimdelem_l :: Insn
umlsl_asimdelem_l = UMLSL UMLSL_asimdelem_L

umlsl_asimddiff_l :: Insn
umlsl_asimddiff_l = UMLSL UMLSL_asimddiff_L

umov_asimdins_w_w :: Insn
umov_asimdins_w_w = UMOV UMOV_asimdins_W_w

umov_asimdins_x_x :: Insn
umov_asimdins_x_x = UMOV UMOV_asimdins_X_x

umsubl_64wa_dp_3src :: Insn
umsubl_64wa_dp_3src = UMSUBL UMSUBL_64WA_dp_3src

umulh_64_dp_3src :: Insn
umulh_64_dp_3src = UMULH UMULH_64_dp_3src

umull_asimdelem_l :: Insn
umull_asimdelem_l = UMULL UMULL_asimdelem_L

umull_asimddiff_l :: Insn
umull_asimddiff_l = UMULL UMULL_asimddiff_L

uqadd_asisdsame_only :: Insn
uqadd_asisdsame_only = UQADD UQADD_asisdsame_only

uqadd_asimdsame_only :: Insn
uqadd_asimdsame_only = UQADD UQADD_asimdsame_only

uqrshl_asisdsame_only :: Insn
uqrshl_asisdsame_only = UQRSHL UQRSHL_asisdsame_only

uqrshl_asimdsame_only :: Insn
uqrshl_asimdsame_only = UQRSHL UQRSHL_asimdsame_only

uqrshrn_asisdshf_n :: Insn
uqrshrn_asisdshf_n = UQRSHRN UQRSHRN_asisdshf_N

uqrshrn_asimdshf_n :: Insn
uqrshrn_asimdshf_n = UQRSHRN UQRSHRN_asimdshf_N

uqshl_asisdshf_r :: Insn
uqshl_asisdshf_r = UQSHL UQSHL_asisdshf_R

uqshl_asimdshf_r :: Insn
uqshl_asimdshf_r = UQSHL UQSHL_asimdshf_R

uqshl_asisdsame_only :: Insn
uqshl_asisdsame_only = UQSHL UQSHL_asisdsame_only

uqshl_asimdsame_only :: Insn
uqshl_asimdsame_only = UQSHL UQSHL_asimdsame_only

uqshrn_asisdshf_n :: Insn
uqshrn_asisdshf_n = UQSHRN UQSHRN_asisdshf_N

uqshrn_asimdshf_n :: Insn
uqshrn_asimdshf_n = UQSHRN UQSHRN_asimdshf_N

uqsub_asisdsame_only :: Insn
uqsub_asisdsame_only = UQSUB UQSUB_asisdsame_only

uqsub_asimdsame_only :: Insn
uqsub_asimdsame_only = UQSUB UQSUB_asimdsame_only

uqxtn_asisdmisc_n :: Insn
uqxtn_asisdmisc_n = UQXTN UQXTN_asisdmisc_N

uqxtn_asimdmisc_n :: Insn
uqxtn_asimdmisc_n = UQXTN UQXTN_asimdmisc_N

urecpe_asimdmisc_r :: Insn
urecpe_asimdmisc_r = URECPE URECPE_asimdmisc_R

urhadd_asimdsame_only :: Insn
urhadd_asimdsame_only = URHADD URHADD_asimdsame_only

urshl_asisdsame_only :: Insn
urshl_asisdsame_only = URSHL URSHL_asisdsame_only

urshl_asimdsame_only :: Insn
urshl_asimdsame_only = URSHL URSHL_asimdsame_only

urshr_asisdshf_r :: Insn
urshr_asisdshf_r = URSHR URSHR_asisdshf_R

urshr_asimdshf_r :: Insn
urshr_asimdshf_r = URSHR URSHR_asimdshf_R

ursqrte_asimdmisc_r :: Insn
ursqrte_asimdmisc_r = URSQRTE URSQRTE_asimdmisc_R

ursra_asisdshf_r :: Insn
ursra_asisdshf_r = URSRA URSRA_asisdshf_R

ursra_asimdshf_r :: Insn
ursra_asimdshf_r = URSRA URSRA_asimdshf_R

ushl_asisdsame_only :: Insn
ushl_asisdsame_only = USHL USHL_asisdsame_only

ushl_asimdsame_only :: Insn
ushl_asimdsame_only = USHL USHL_asimdsame_only

ushll_asimdshf_l :: Insn
ushll_asimdshf_l = USHLL USHLL_asimdshf_L

ushr_asisdshf_r :: Insn
ushr_asisdshf_r = USHR USHR_asisdshf_R

ushr_asimdshf_r :: Insn
ushr_asimdshf_r = USHR USHR_asimdshf_R

usqadd_asisdmisc_r :: Insn
usqadd_asisdmisc_r = USQADD USQADD_asisdmisc_R

usqadd_asimdmisc_r :: Insn
usqadd_asimdmisc_r = USQADD USQADD_asimdmisc_R

usra_asisdshf_r :: Insn
usra_asisdshf_r = USRA USRA_asisdshf_R

usra_asimdshf_r :: Insn
usra_asimdshf_r = USRA USRA_asimdshf_R

usubl_asimddiff_l :: Insn
usubl_asimddiff_l = USUBL USUBL_asimddiff_L

usubw_asimddiff_w :: Insn
usubw_asimddiff_w = USUBW USUBW_asimddiff_W

uzp1_asimdperm_only :: Insn
uzp1_asimdperm_only = UZP1 UZP1_asimdperm_only

uzp2_asimdperm_only :: Insn
uzp2_asimdperm_only = UZP2 UZP2_asimdperm_only

wfe_hi_system :: Insn
wfe_hi_system = WFE WFE_HI_system

wfi_hi_system :: Insn
wfi_hi_system = WFI WFI_HI_system

xar_vvv2_crypto3_imm6 :: Insn
xar_vvv2_crypto3_imm6 = XAR XAR_VVV2_crypto3_imm6

xpacd_64z_dp_1src :: Insn
xpacd_64z_dp_1src = XPACD XPACD_64Z_dp_1src

xpaci_64z_dp_1src :: Insn
xpaci_64z_dp_1src = XPACI XPACI_64Z_dp_1src

xpaclri_hi_system :: Insn
xpaclri_hi_system = XPACLRI XPACLRI_HI_system

xtn_asimdmisc_n :: Insn
xtn_asimdmisc_n = XTN XTN_asimdmisc_N

yield_hi_system :: Insn
yield_hi_system = YIELD YIELD_HI_system

zip1_asimdperm_only :: Insn
zip1_asimdperm_only = ZIP1 ZIP1_asimdperm_only

zip2_asimdperm_only :: Insn
zip2_asimdperm_only = ZIP2 ZIP2_asimdperm_only

encodingId :: Insn -> String
encodingId insn
  = case insn of
        ADC ADC_32_addsub_carry -> "ADC_32_addsub_carry"
        ADC ADC_64_addsub_carry -> "ADC_64_addsub_carry"
        ADCS ADCS_32_addsub_carry -> "ADCS_32_addsub_carry"
        ADCS ADCS_64_addsub_carry -> "ADCS_64_addsub_carry"
        ADD ADD_32_addsub_ext -> "ADD_32_addsub_ext"
        ADD ADD_64_addsub_ext -> "ADD_64_addsub_ext"
        ADD ADD_32_addsub_imm -> "ADD_32_addsub_imm"
        ADD (ADD_64_addsub_imm _ _ _ _) -> "ADD_64_addsub_imm"
        ADD (ADD_32_addsub_shift _ _ _ _) -> "ADD_32_addsub_shift"
        ADD ADD_64_addsub_shift -> "ADD_64_addsub_shift"
        ADDS ADDS_32S_addsub_ext -> "ADDS_32S_addsub_ext"
        ADDS ADDS_64S_addsub_ext -> "ADDS_64S_addsub_ext"
        ADDS (ADDS_32S_addsub_imm _ _ _ _) -> "ADDS_32S_addsub_imm"
        ADDS (ADDS_64S_addsub_imm _ _ _ _) -> "ADDS_64S_addsub_imm"
        ADDS (ADDS_32_addsub_shift _ _ _ _) -> "ADDS_32_addsub_shift"
        ADDS ADDS_64_addsub_shift -> "ADDS_64_addsub_shift"
        ADR (ADR_only_pcreladdr _ _) -> "ADR_only_pcreladdr"
        ADRP (ADRP_only_pcreladdr _ _) -> "ADRP_only_pcreladdr"
        AND AND_32_log_imm -> "AND_32_log_imm"
        AND AND_64_log_imm -> "AND_64_log_imm"
        AND (AND_32_log_shift _ _ _ _) -> "AND_32_log_shift"
        AND AND_64_log_shift -> "AND_64_log_shift"
        ANDS ANDS_32S_log_imm -> "ANDS_32S_log_imm"
        ANDS ANDS_64S_log_imm -> "ANDS_64S_log_imm"
        ANDS (ANDS_32_log_shift _ _ _ _) -> "ANDS_32_log_shift"
        ANDS ANDS_64_log_shift -> "ANDS_64_log_shift"
        ASRV ASRV_32_dp_2src -> "ASRV_32_dp_2src"
        ASRV ASRV_64_dp_2src -> "ASRV_64_dp_2src"
        AUTDA AUTDA_64P_dp_1src -> "AUTDA_64P_dp_1src"
        AUTDZA AUTDZA_64Z_dp_1src -> "AUTDZA_64Z_dp_1src"
        AUTDB AUTDB_64P_dp_1src -> "AUTDB_64P_dp_1src"
        AUTDZB AUTDZB_64Z_dp_1src -> "AUTDZB_64Z_dp_1src"
        AUTIA AUTIA_64P_dp_1src -> "AUTIA_64P_dp_1src"
        AUTIZA AUTIZA_64Z_dp_1src -> "AUTIZA_64Z_dp_1src"
        AUTIA1716 AUTIA1716_HI_system -> "AUTIA1716_HI_system"
        AUTIASP AUTIASP_HI_system -> "AUTIASP_HI_system"
        AUTIAZ AUTIAZ_HI_system -> "AUTIAZ_HI_system"
        AUTIB AUTIB_64P_dp_1src -> "AUTIB_64P_dp_1src"
        AUTIZB AUTIZB_64Z_dp_1src -> "AUTIZB_64Z_dp_1src"
        AUTIB1716 AUTIB1716_HI_system -> "AUTIB1716_HI_system"
        AUTIBSP AUTIBSP_HI_system -> "AUTIBSP_HI_system"
        AUTIBZ AUTIBZ_HI_system -> "AUTIBZ_HI_system"
        B B_only_branch_imm -> "B_only_branch_imm"
        B B_only_condbranch -> "B_only_condbranch"
        BFM BFM_32M_bitfield -> "BFM_32M_bitfield"
        BFM BFM_64M_bitfield -> "BFM_64M_bitfield"
        BIC (BIC_32_log_shift _ _ _ _) -> "BIC_32_log_shift"
        BIC BIC_64_log_shift -> "BIC_64_log_shift"
        BICS (BICS_32_log_shift _ _ _ _) -> "BICS_32_log_shift"
        BICS BICS_64_log_shift -> "BICS_64_log_shift"
        BL BL_only_branch_imm -> "BL_only_branch_imm"
        BLR BLR_64_branch_reg -> "BLR_64_branch_reg"
        BLRAAZ BLRAAZ_64_branch_reg -> "BLRAAZ_64_branch_reg"
        BLRAA BLRAA_64P_branch_reg -> "BLRAA_64P_branch_reg"
        BLRABZ BLRABZ_64_branch_reg -> "BLRABZ_64_branch_reg"
        BLRAB BLRAB_64P_branch_reg -> "BLRAB_64P_branch_reg"
        BR BR_64_branch_reg -> "BR_64_branch_reg"
        BRAAZ BRAAZ_64_branch_reg -> "BRAAZ_64_branch_reg"
        BRAA BRAA_64P_branch_reg -> "BRAA_64P_branch_reg"
        BRABZ BRABZ_64_branch_reg -> "BRABZ_64_branch_reg"
        BRAB BRAB_64P_branch_reg -> "BRAB_64P_branch_reg"
        BRK BRK_EX_exception -> "BRK_EX_exception"
        CAS CAS_C32_ldstexcl -> "CAS_C32_ldstexcl"
        CASA CASA_C32_ldstexcl -> "CASA_C32_ldstexcl"
        CASAL CASAL_C32_ldstexcl -> "CASAL_C32_ldstexcl"
        CASL CASL_C32_ldstexcl -> "CASL_C32_ldstexcl"
        CAS CAS_C64_ldstexcl -> "CAS_C64_ldstexcl"
        CASA CASA_C64_ldstexcl -> "CASA_C64_ldstexcl"
        CASAL CASAL_C64_ldstexcl -> "CASAL_C64_ldstexcl"
        CASL CASL_C64_ldstexcl -> "CASL_C64_ldstexcl"
        CASAB CASAB_C32_ldstexcl -> "CASAB_C32_ldstexcl"
        CASALB CASALB_C32_ldstexcl -> "CASALB_C32_ldstexcl"
        CASB CASB_C32_ldstexcl -> "CASB_C32_ldstexcl"
        CASLB CASLB_C32_ldstexcl -> "CASLB_C32_ldstexcl"
        CASAH CASAH_C32_ldstexcl -> "CASAH_C32_ldstexcl"
        CASALH CASALH_C32_ldstexcl -> "CASALH_C32_ldstexcl"
        CASH CASH_C32_ldstexcl -> "CASH_C32_ldstexcl"
        CASLH CASLH_C32_ldstexcl -> "CASLH_C32_ldstexcl"
        CASP CASP_CP32_ldstexcl -> "CASP_CP32_ldstexcl"
        CASPA CASPA_CP32_ldstexcl -> "CASPA_CP32_ldstexcl"
        CASPAL CASPAL_CP32_ldstexcl -> "CASPAL_CP32_ldstexcl"
        CASPL CASPL_CP32_ldstexcl -> "CASPL_CP32_ldstexcl"
        CASP CASP_CP64_ldstexcl -> "CASP_CP64_ldstexcl"
        CASPA CASPA_CP64_ldstexcl -> "CASPA_CP64_ldstexcl"
        CASPAL CASPAL_CP64_ldstexcl -> "CASPAL_CP64_ldstexcl"
        CASPL CASPL_CP64_ldstexcl -> "CASPL_CP64_ldstexcl"
        CBNZ CBNZ_32_compbranch -> "CBNZ_32_compbranch"
        CBNZ CBNZ_64_compbranch -> "CBNZ_64_compbranch"
        CBZ CBZ_32_compbranch -> "CBZ_32_compbranch"
        CBZ CBZ_64_compbranch -> "CBZ_64_compbranch"
        CCMN CCMN_32_condcmp_imm -> "CCMN_32_condcmp_imm"
        CCMN CCMN_64_condcmp_imm -> "CCMN_64_condcmp_imm"
        CCMN CCMN_32_condcmp_reg -> "CCMN_32_condcmp_reg"
        CCMN CCMN_64_condcmp_reg -> "CCMN_64_condcmp_reg"
        CCMP CCMP_32_condcmp_imm -> "CCMP_32_condcmp_imm"
        CCMP CCMP_64_condcmp_imm -> "CCMP_64_condcmp_imm"
        CCMP CCMP_32_condcmp_reg -> "CCMP_32_condcmp_reg"
        CCMP CCMP_64_condcmp_reg -> "CCMP_64_condcmp_reg"
        CLREX CLREX_BN_system -> "CLREX_BN_system"
        CLS CLS_32_dp_1src -> "CLS_32_dp_1src"
        CLS CLS_64_dp_1src -> "CLS_64_dp_1src"
        CLZ CLZ_32_dp_1src -> "CLZ_32_dp_1src"
        CLZ CLZ_64_dp_1src -> "CLZ_64_dp_1src"
        CRC32B CRC32B_32C_dp_2src -> "CRC32B_32C_dp_2src"
        CRC32H CRC32H_32C_dp_2src -> "CRC32H_32C_dp_2src"
        CRC32W CRC32W_32C_dp_2src -> "CRC32W_32C_dp_2src"
        CRC32X CRC32X_64C_dp_2src -> "CRC32X_64C_dp_2src"
        CRC32CB CRC32CB_32C_dp_2src -> "CRC32CB_32C_dp_2src"
        CRC32CH CRC32CH_32C_dp_2src -> "CRC32CH_32C_dp_2src"
        CRC32CW CRC32CW_32C_dp_2src -> "CRC32CW_32C_dp_2src"
        CRC32CX CRC32CX_64C_dp_2src -> "CRC32CX_64C_dp_2src"
        CSEL (CSEL_32_condsel _ _ _ _) -> "CSEL_32_condsel"
        CSEL CSEL_64_condsel -> "CSEL_64_condsel"
        CSINC (CSINC_32_condsel _ _ _ _) -> "CSINC_32_condsel"
        CSINC CSINC_64_condsel -> "CSINC_64_condsel"
        CSINV (CSINV_32_condsel _ _ _ _) -> "CSINV_32_condsel"
        CSINV CSINV_64_condsel -> "CSINV_64_condsel"
        CSNEG (CSNEG_32_condsel _ _ _ _) -> "CSNEG_32_condsel"
        CSNEG CSNEG_64_condsel -> "CSNEG_64_condsel"
        DCPS1 DCPS1_DC_exception -> "DCPS1_DC_exception"
        DCPS2 DCPS2_DC_exception -> "DCPS2_DC_exception"
        DCPS3 DCPS3_DC_exception -> "DCPS3_DC_exception"
        DMB DMB_BO_system -> "DMB_BO_system"
        DRPS DRPS_64E_branch_reg -> "DRPS_64E_branch_reg"
        DSB DSB_BO_system -> "DSB_BO_system"
        EON (EON_32_log_shift _ _ _ _) -> "EON_32_log_shift"
        EON EON_64_log_shift -> "EON_64_log_shift"
        EOR EOR_32_log_imm -> "EOR_32_log_imm"
        EOR EOR_64_log_imm -> "EOR_64_log_imm"
        EOR (EOR_32_log_shift _ _ _ _) -> "EOR_32_log_shift"
        EOR EOR_64_log_shift -> "EOR_64_log_shift"
        ERET ERET_64E_branch_reg -> "ERET_64E_branch_reg"
        ERETAA ERETAA_64E_branch_reg -> "ERETAA_64E_branch_reg"
        ERETAB ERETAB_64E_branch_reg -> "ERETAB_64E_branch_reg"
        ESB ESB_HI_system -> "ESB_HI_system"
        EXTR EXTR_32_extract -> "EXTR_32_extract"
        EXTR EXTR_64_extract -> "EXTR_64_extract"
        HINT HINT_1 -> "HINT_1"
        HINT HINT_2 -> "HINT_2"
        HINT HINT_3 -> "HINT_3"
        HLT HLT_EX_exception -> "HLT_EX_exception"
        HVC HVC_EX_exception -> "HVC_EX_exception"
        ISB ISB_BI_system -> "ISB_BI_system"
        LDADD LDADD_32_memop -> "LDADD_32_memop"
        LDADDA LDADDA_32_memop -> "LDADDA_32_memop"
        LDADDAL LDADDAL_32_memop -> "LDADDAL_32_memop"
        LDADDL LDADDL_32_memop -> "LDADDL_32_memop"
        LDADD LDADD_64_memop -> "LDADD_64_memop"
        LDADDA LDADDA_64_memop -> "LDADDA_64_memop"
        LDADDAL LDADDAL_64_memop -> "LDADDAL_64_memop"
        LDADDL LDADDL_64_memop -> "LDADDL_64_memop"
        LDADDAB LDADDAB_32_memop -> "LDADDAB_32_memop"
        LDADDALB LDADDALB_32_memop -> "LDADDALB_32_memop"
        LDADDB LDADDB_32_memop -> "LDADDB_32_memop"
        LDADDLB LDADDLB_32_memop -> "LDADDLB_32_memop"
        LDADDAH LDADDAH_32_memop -> "LDADDAH_32_memop"
        LDADDALH LDADDALH_32_memop -> "LDADDALH_32_memop"
        LDADDH LDADDH_32_memop -> "LDADDH_32_memop"
        LDADDLH LDADDLH_32_memop -> "LDADDLH_32_memop"
        LDAPR LDAPR_32L_memop -> "LDAPR_32L_memop"
        LDAPR LDAPR_64L_memop -> "LDAPR_64L_memop"
        LDAPRB LDAPRB_32L_memop -> "LDAPRB_32L_memop"
        LDAPRH LDAPRH_32L_memop -> "LDAPRH_32L_memop"
        LDAR LDAR_LR32_ldstexcl -> "LDAR_LR32_ldstexcl"
        LDAR LDAR_LR64_ldstexcl -> "LDAR_LR64_ldstexcl"
        LDARB LDARB_LR32_ldstexcl -> "LDARB_LR32_ldstexcl"
        LDARH LDARH_LR32_ldstexcl -> "LDARH_LR32_ldstexcl"
        LDAXP LDAXP_LP32_ldstexcl -> "LDAXP_LP32_ldstexcl"
        LDAXP LDAXP_LP64_ldstexcl -> "LDAXP_LP64_ldstexcl"
        LDAXR LDAXR_LR32_ldstexcl -> "LDAXR_LR32_ldstexcl"
        LDAXR LDAXR_LR64_ldstexcl -> "LDAXR_LR64_ldstexcl"
        LDAXRB LDAXRB_LR32_ldstexcl -> "LDAXRB_LR32_ldstexcl"
        LDAXRH LDAXRH_LR32_ldstexcl -> "LDAXRH_LR32_ldstexcl"
        LDCLR LDCLR_32_memop -> "LDCLR_32_memop"
        LDCLRA LDCLRA_32_memop -> "LDCLRA_32_memop"
        LDCLRAL LDCLRAL_32_memop -> "LDCLRAL_32_memop"
        LDCLRL LDCLRL_32_memop -> "LDCLRL_32_memop"
        LDCLR LDCLR_64_memop -> "LDCLR_64_memop"
        LDCLRA LDCLRA_64_memop -> "LDCLRA_64_memop"
        LDCLRAL LDCLRAL_64_memop -> "LDCLRAL_64_memop"
        LDCLRL LDCLRL_64_memop -> "LDCLRL_64_memop"
        LDCLRAB LDCLRAB_32_memop -> "LDCLRAB_32_memop"
        LDCLRALB LDCLRALB_32_memop -> "LDCLRALB_32_memop"
        LDCLRB LDCLRB_32_memop -> "LDCLRB_32_memop"
        LDCLRLB LDCLRLB_32_memop -> "LDCLRLB_32_memop"
        LDCLRAH LDCLRAH_32_memop -> "LDCLRAH_32_memop"
        LDCLRALH LDCLRALH_32_memop -> "LDCLRALH_32_memop"
        LDCLRH LDCLRH_32_memop -> "LDCLRH_32_memop"
        LDCLRLH LDCLRLH_32_memop -> "LDCLRLH_32_memop"
        LDEOR LDEOR_32_memop -> "LDEOR_32_memop"
        LDEORA LDEORA_32_memop -> "LDEORA_32_memop"
        LDEORAL LDEORAL_32_memop -> "LDEORAL_32_memop"
        LDEORL LDEORL_32_memop -> "LDEORL_32_memop"
        LDEOR LDEOR_64_memop -> "LDEOR_64_memop"
        LDEORA LDEORA_64_memop -> "LDEORA_64_memop"
        LDEORAL LDEORAL_64_memop -> "LDEORAL_64_memop"
        LDEORL LDEORL_64_memop -> "LDEORL_64_memop"
        LDEORAB LDEORAB_32_memop -> "LDEORAB_32_memop"
        LDEORALB LDEORALB_32_memop -> "LDEORALB_32_memop"
        LDEORB LDEORB_32_memop -> "LDEORB_32_memop"
        LDEORLB LDEORLB_32_memop -> "LDEORLB_32_memop"
        LDEORAH LDEORAH_32_memop -> "LDEORAH_32_memop"
        LDEORALH LDEORALH_32_memop -> "LDEORALH_32_memop"
        LDEORH LDEORH_32_memop -> "LDEORH_32_memop"
        LDEORLH LDEORLH_32_memop -> "LDEORLH_32_memop"
        LDLAR LDLAR_LR32_ldstexcl -> "LDLAR_LR32_ldstexcl"
        LDLAR LDLAR_LR64_ldstexcl -> "LDLAR_LR64_ldstexcl"
        LDLARB LDLARB_LR32_ldstexcl -> "LDLARB_LR32_ldstexcl"
        LDLARH LDLARH_LR32_ldstexcl -> "LDLARH_LR32_ldstexcl"
        LDNP LDNP_32_ldstnapair_offs -> "LDNP_32_ldstnapair_offs"
        LDNP (LDNP_64_ldstnapair_offs _ _ _ _) -> "LDNP_64_ldstnapair_offs"
        LDP LDP_32_ldstpair_post -> "LDP_32_ldstpair_post"
        LDP LDP_64_ldstpair_post -> "LDP_64_ldstpair_post"
        LDP LDP_32_ldstpair_pre -> "LDP_32_ldstpair_pre"
        LDP (LDP_64_ldstpair_pre _ _ _ _) -> "LDP_64_ldstpair_pre"
        LDP LDP_32_ldstpair_off -> "LDP_32_ldstpair_off"
        LDP (LDP_64_ldstpair_off _ _ _ _) -> "LDP_64_ldstpair_off"
        LDPSW LDPSW_64_ldstpair_post -> "LDPSW_64_ldstpair_post"
        LDPSW (LDPSW_64_ldstpair_pre _ _ _ _) -> "LDPSW_64_ldstpair_pre"
        LDPSW (LDPSW_64_ldstpair_off _ _ _ _) -> "LDPSW_64_ldstpair_off"
        LDR LDR_32_ldst_immpost -> "LDR_32_ldst_immpost"
        LDR LDR_64_ldst_immpost -> "LDR_64_ldst_immpost"
        LDR LDR_32_ldst_immpre -> "LDR_32_ldst_immpre"
        LDR LDR_64_ldst_immpre -> "LDR_64_ldst_immpre"
        LDR LDR_32_ldst_pos -> "LDR_32_ldst_pos"
        LDR (LDR_64_ldst_pos _ _ _) -> "LDR_64_ldst_pos"
        LDR LDR_32_loadlit -> "LDR_32_loadlit"
        LDR LDR_64_loadlit -> "LDR_64_loadlit"
        LDR LDR_32_ldst_regoff -> "LDR_32_ldst_regoff"
        LDR LDR_64_ldst_regoff -> "LDR_64_ldst_regoff"
        LDRAA LDRAA_64_ldst_pac -> "LDRAA_64_ldst_pac"
        LDRAA LDRAA_64W_ldst_pac -> "LDRAA_64W_ldst_pac"
        LDRAB LDRAB_64_ldst_pac -> "LDRAB_64_ldst_pac"
        LDRAB LDRAB_64W_ldst_pac -> "LDRAB_64W_ldst_pac"
        LDRB LDRB_32_ldst_immpost -> "LDRB_32_ldst_immpost"
        LDRB LDRB_32_ldst_immpre -> "LDRB_32_ldst_immpre"
        LDRB LDRB_32_ldst_pos -> "LDRB_32_ldst_pos"
        LDRB LDRB_32B_ldst_regoff -> "LDRB_32B_ldst_regoff"
        LDRB LDRB_32BL_ldst_regoff -> "LDRB_32BL_ldst_regoff"
        LDRH LDRH_32_ldst_immpost -> "LDRH_32_ldst_immpost"
        LDRH LDRH_32_ldst_immpre -> "LDRH_32_ldst_immpre"
        LDRH LDRH_32_ldst_pos -> "LDRH_32_ldst_pos"
        LDRH LDRH_32_ldst_regoff -> "LDRH_32_ldst_regoff"
        LDRSB LDRSB_32_ldst_immpost -> "LDRSB_32_ldst_immpost"
        LDRSB LDRSB_64_ldst_immpost -> "LDRSB_64_ldst_immpost"
        LDRSB LDRSB_32_ldst_immpre -> "LDRSB_32_ldst_immpre"
        LDRSB LDRSB_64_ldst_immpre -> "LDRSB_64_ldst_immpre"
        LDRSB LDRSB_32_ldst_pos -> "LDRSB_32_ldst_pos"
        LDRSB (LDRSB_64_ldst_pos _ _ _) -> "LDRSB_64_ldst_pos"
        LDRSB LDRSB_32B_ldst_regoff -> "LDRSB_32B_ldst_regoff"
        LDRSB LDRSB_32BL_ldst_regoff -> "LDRSB_32BL_ldst_regoff"
        LDRSB LDRSB_64B_ldst_regoff -> "LDRSB_64B_ldst_regoff"
        LDRSB LDRSB_64BL_ldst_regoff -> "LDRSB_64BL_ldst_regoff"
        LDRSH LDRSH_32_ldst_immpost -> "LDRSH_32_ldst_immpost"
        LDRSH LDRSH_64_ldst_immpost -> "LDRSH_64_ldst_immpost"
        LDRSH LDRSH_32_ldst_immpre -> "LDRSH_32_ldst_immpre"
        LDRSH LDRSH_64_ldst_immpre -> "LDRSH_64_ldst_immpre"
        LDRSH LDRSH_32_ldst_pos -> "LDRSH_32_ldst_pos"
        LDRSH (LDRSH_64_ldst_pos _ _ _) -> "LDRSH_64_ldst_pos"
        LDRSH LDRSH_32_ldst_regoff -> "LDRSH_32_ldst_regoff"
        LDRSH LDRSH_64_ldst_regoff -> "LDRSH_64_ldst_regoff"
        LDRSW LDRSW_64_ldst_immpost -> "LDRSW_64_ldst_immpost"
        LDRSW LDRSW_64_ldst_immpre -> "LDRSW_64_ldst_immpre"
        LDRSW (LDRSW_64_ldst_pos _ _ _) -> "LDRSW_64_ldst_pos"
        LDRSW LDRSW_64_loadlit -> "LDRSW_64_loadlit"
        LDRSW LDRSW_64_ldst_regoff -> "LDRSW_64_ldst_regoff"
        LDSET LDSET_32_memop -> "LDSET_32_memop"
        LDSETA LDSETA_32_memop -> "LDSETA_32_memop"
        LDSETAL LDSETAL_32_memop -> "LDSETAL_32_memop"
        LDSETL LDSETL_32_memop -> "LDSETL_32_memop"
        LDSET LDSET_64_memop -> "LDSET_64_memop"
        LDSETA LDSETA_64_memop -> "LDSETA_64_memop"
        LDSETAL LDSETAL_64_memop -> "LDSETAL_64_memop"
        LDSETL LDSETL_64_memop -> "LDSETL_64_memop"
        LDSETAB LDSETAB_32_memop -> "LDSETAB_32_memop"
        LDSETALB LDSETALB_32_memop -> "LDSETALB_32_memop"
        LDSETB LDSETB_32_memop -> "LDSETB_32_memop"
        LDSETLB LDSETLB_32_memop -> "LDSETLB_32_memop"
        LDSETAH LDSETAH_32_memop -> "LDSETAH_32_memop"
        LDSETALH LDSETALH_32_memop -> "LDSETALH_32_memop"
        LDSETH LDSETH_32_memop -> "LDSETH_32_memop"
        LDSETLH LDSETLH_32_memop -> "LDSETLH_32_memop"
        LDSMAX LDSMAX_32_memop -> "LDSMAX_32_memop"
        LDSMAXA LDSMAXA_32_memop -> "LDSMAXA_32_memop"
        LDSMAXAL LDSMAXAL_32_memop -> "LDSMAXAL_32_memop"
        LDSMAXL LDSMAXL_32_memop -> "LDSMAXL_32_memop"
        LDSMAX LDSMAX_64_memop -> "LDSMAX_64_memop"
        LDSMAXA LDSMAXA_64_memop -> "LDSMAXA_64_memop"
        LDSMAXAL LDSMAXAL_64_memop -> "LDSMAXAL_64_memop"
        LDSMAXL LDSMAXL_64_memop -> "LDSMAXL_64_memop"
        LDSMAXAB LDSMAXAB_32_memop -> "LDSMAXAB_32_memop"
        LDSMAXALB LDSMAXALB_32_memop -> "LDSMAXALB_32_memop"
        LDSMAXB LDSMAXB_32_memop -> "LDSMAXB_32_memop"
        LDSMAXLB LDSMAXLB_32_memop -> "LDSMAXLB_32_memop"
        LDSMAXAH LDSMAXAH_32_memop -> "LDSMAXAH_32_memop"
        LDSMAXALH LDSMAXALH_32_memop -> "LDSMAXALH_32_memop"
        LDSMAXH LDSMAXH_32_memop -> "LDSMAXH_32_memop"
        LDSMAXLH LDSMAXLH_32_memop -> "LDSMAXLH_32_memop"
        LDSMIN LDSMIN_32_memop -> "LDSMIN_32_memop"
        LDSMINA LDSMINA_32_memop -> "LDSMINA_32_memop"
        LDSMINAL LDSMINAL_32_memop -> "LDSMINAL_32_memop"
        LDSMINL LDSMINL_32_memop -> "LDSMINL_32_memop"
        LDSMIN LDSMIN_64_memop -> "LDSMIN_64_memop"
        LDSMINA LDSMINA_64_memop -> "LDSMINA_64_memop"
        LDSMINAL LDSMINAL_64_memop -> "LDSMINAL_64_memop"
        LDSMINL LDSMINL_64_memop -> "LDSMINL_64_memop"
        LDSMINAB LDSMINAB_32_memop -> "LDSMINAB_32_memop"
        LDSMINALB LDSMINALB_32_memop -> "LDSMINALB_32_memop"
        LDSMINB LDSMINB_32_memop -> "LDSMINB_32_memop"
        LDSMINLB LDSMINLB_32_memop -> "LDSMINLB_32_memop"
        LDSMINAH LDSMINAH_32_memop -> "LDSMINAH_32_memop"
        LDSMINALH LDSMINALH_32_memop -> "LDSMINALH_32_memop"
        LDSMINH LDSMINH_32_memop -> "LDSMINH_32_memop"
        LDSMINLH LDSMINLH_32_memop -> "LDSMINLH_32_memop"
        LDTR LDTR_32_ldst_unpriv -> "LDTR_32_ldst_unpriv"
        LDTR LDTR_64_ldst_unpriv -> "LDTR_64_ldst_unpriv"
        LDTRB LDTRB_32_ldst_unpriv -> "LDTRB_32_ldst_unpriv"
        LDTRH LDTRH_32_ldst_unpriv -> "LDTRH_32_ldst_unpriv"
        LDTRSB LDTRSB_32_ldst_unpriv -> "LDTRSB_32_ldst_unpriv"
        LDTRSB LDTRSB_64_ldst_unpriv -> "LDTRSB_64_ldst_unpriv"
        LDTRSH LDTRSH_32_ldst_unpriv -> "LDTRSH_32_ldst_unpriv"
        LDTRSH LDTRSH_64_ldst_unpriv -> "LDTRSH_64_ldst_unpriv"
        LDTRSW LDTRSW_64_ldst_unpriv -> "LDTRSW_64_ldst_unpriv"
        LDUMAX LDUMAX_32_memop -> "LDUMAX_32_memop"
        LDUMAXA LDUMAXA_32_memop -> "LDUMAXA_32_memop"
        LDUMAXAL LDUMAXAL_32_memop -> "LDUMAXAL_32_memop"
        LDUMAXL LDUMAXL_32_memop -> "LDUMAXL_32_memop"
        LDUMAX LDUMAX_64_memop -> "LDUMAX_64_memop"
        LDUMAXA LDUMAXA_64_memop -> "LDUMAXA_64_memop"
        LDUMAXAL LDUMAXAL_64_memop -> "LDUMAXAL_64_memop"
        LDUMAXL LDUMAXL_64_memop -> "LDUMAXL_64_memop"
        LDUMAXAB LDUMAXAB_32_memop -> "LDUMAXAB_32_memop"
        LDUMAXALB LDUMAXALB_32_memop -> "LDUMAXALB_32_memop"
        LDUMAXB LDUMAXB_32_memop -> "LDUMAXB_32_memop"
        LDUMAXLB LDUMAXLB_32_memop -> "LDUMAXLB_32_memop"
        LDUMAXAH LDUMAXAH_32_memop -> "LDUMAXAH_32_memop"
        LDUMAXALH LDUMAXALH_32_memop -> "LDUMAXALH_32_memop"
        LDUMAXH LDUMAXH_32_memop -> "LDUMAXH_32_memop"
        LDUMAXLH LDUMAXLH_32_memop -> "LDUMAXLH_32_memop"
        LDUMIN LDUMIN_32_memop -> "LDUMIN_32_memop"
        LDUMINA LDUMINA_32_memop -> "LDUMINA_32_memop"
        LDUMINAL LDUMINAL_32_memop -> "LDUMINAL_32_memop"
        LDUMINL LDUMINL_32_memop -> "LDUMINL_32_memop"
        LDUMIN LDUMIN_64_memop -> "LDUMIN_64_memop"
        LDUMINA LDUMINA_64_memop -> "LDUMINA_64_memop"
        LDUMINAL LDUMINAL_64_memop -> "LDUMINAL_64_memop"
        LDUMINL LDUMINL_64_memop -> "LDUMINL_64_memop"
        LDUMINAB LDUMINAB_32_memop -> "LDUMINAB_32_memop"
        LDUMINALB LDUMINALB_32_memop -> "LDUMINALB_32_memop"
        LDUMINB LDUMINB_32_memop -> "LDUMINB_32_memop"
        LDUMINLB LDUMINLB_32_memop -> "LDUMINLB_32_memop"
        LDUMINAH LDUMINAH_32_memop -> "LDUMINAH_32_memop"
        LDUMINALH LDUMINALH_32_memop -> "LDUMINALH_32_memop"
        LDUMINH LDUMINH_32_memop -> "LDUMINH_32_memop"
        LDUMINLH LDUMINLH_32_memop -> "LDUMINLH_32_memop"
        LDUR LDUR_32_ldst_unscaled -> "LDUR_32_ldst_unscaled"
        LDUR LDUR_64_ldst_unscaled -> "LDUR_64_ldst_unscaled"
        LDURB LDURB_32_ldst_unscaled -> "LDURB_32_ldst_unscaled"
        LDURH LDURH_32_ldst_unscaled -> "LDURH_32_ldst_unscaled"
        LDURSB LDURSB_32_ldst_unscaled -> "LDURSB_32_ldst_unscaled"
        LDURSB LDURSB_64_ldst_unscaled -> "LDURSB_64_ldst_unscaled"
        LDURSH LDURSH_32_ldst_unscaled -> "LDURSH_32_ldst_unscaled"
        LDURSH LDURSH_64_ldst_unscaled -> "LDURSH_64_ldst_unscaled"
        LDURSW LDURSW_64_ldst_unscaled -> "LDURSW_64_ldst_unscaled"
        LDXP LDXP_LP32_ldstexcl -> "LDXP_LP32_ldstexcl"
        LDXP LDXP_LP64_ldstexcl -> "LDXP_LP64_ldstexcl"
        LDXR LDXR_LR32_ldstexcl -> "LDXR_LR32_ldstexcl"
        LDXR LDXR_LR64_ldstexcl -> "LDXR_LR64_ldstexcl"
        LDXRB LDXRB_LR32_ldstexcl -> "LDXRB_LR32_ldstexcl"
        LDXRH LDXRH_LR32_ldstexcl -> "LDXRH_LR32_ldstexcl"
        LSLV LSLV_32_dp_2src -> "LSLV_32_dp_2src"
        LSLV LSLV_64_dp_2src -> "LSLV_64_dp_2src"
        LSRV LSRV_32_dp_2src -> "LSRV_32_dp_2src"
        LSRV LSRV_64_dp_2src -> "LSRV_64_dp_2src"
        MADD MADD_32A_dp_3src -> "MADD_32A_dp_3src"
        MADD MADD_64A_dp_3src -> "MADD_64A_dp_3src"
        MOVK MOVK_32_movewide -> "MOVK_32_movewide"
        MOVK MOVK_64_movewide -> "MOVK_64_movewide"
        MOVN MOVN_32_movewide -> "MOVN_32_movewide"
        MOVN MOVN_64_movewide -> "MOVN_64_movewide"
        MOVZ MOVZ_32_movewide -> "MOVZ_32_movewide"
        MOVZ MOVZ_64_movewide -> "MOVZ_64_movewide"
        MRS MRS_RS_system -> "MRS_RS_system"
        MSR MSR_SI_system -> "MSR_SI_system"
        MSR MSR_SR_system -> "MSR_SR_system"
        MSUB MSUB_32A_dp_3src -> "MSUB_32A_dp_3src"
        MSUB MSUB_64A_dp_3src -> "MSUB_64A_dp_3src"
        NOP NOP_HI_system -> "NOP_HI_system"
        ORN (ORN_32_log_shift _ _ _ _) -> "ORN_32_log_shift"
        ORN ORN_64_log_shift -> "ORN_64_log_shift"
        ORR ORR_32_log_imm -> "ORR_32_log_imm"
        ORR ORR_64_log_imm -> "ORR_64_log_imm"
        ORR (ORR_32_log_shift _ _ _ _) -> "ORR_32_log_shift"
        ORR ORR_64_log_shift -> "ORR_64_log_shift"
        PACDA PACDA_64P_dp_1src -> "PACDA_64P_dp_1src"
        PACDZA PACDZA_64Z_dp_1src -> "PACDZA_64Z_dp_1src"
        PACDB PACDB_64P_dp_1src -> "PACDB_64P_dp_1src"
        PACDZB PACDZB_64Z_dp_1src -> "PACDZB_64Z_dp_1src"
        PACGA PACGA_64P_dp_2src -> "PACGA_64P_dp_2src"
        PACIA PACIA_64P_dp_1src -> "PACIA_64P_dp_1src"
        PACIZA PACIZA_64Z_dp_1src -> "PACIZA_64Z_dp_1src"
        PACIA1716 PACIA1716_HI_system -> "PACIA1716_HI_system"
        PACIASP PACIASP_HI_system -> "PACIASP_HI_system"
        PACIAZ PACIAZ_HI_system -> "PACIAZ_HI_system"
        PACIB PACIB_64P_dp_1src -> "PACIB_64P_dp_1src"
        PACIZB PACIZB_64Z_dp_1src -> "PACIZB_64Z_dp_1src"
        PACIB1716 PACIB1716_HI_system -> "PACIB1716_HI_system"
        PACIBSP PACIBSP_HI_system -> "PACIBSP_HI_system"
        PACIBZ PACIBZ_HI_system -> "PACIBZ_HI_system"
        PRFM PRFM_P_ldst_pos -> "PRFM_P_ldst_pos"
        PRFM PRFM_P_loadlit -> "PRFM_P_loadlit"
        PRFM PRFM_P_ldst_regoff -> "PRFM_P_ldst_regoff"
        PRFUM PRFUM_P_ldst_unscaled -> "PRFUM_P_ldst_unscaled"
        PSB PSB_HC_system -> "PSB_HC_system"
        RBIT RBIT_32_dp_1src -> "RBIT_32_dp_1src"
        RBIT RBIT_64_dp_1src -> "RBIT_64_dp_1src"
        RET RET_64R_branch_reg -> "RET_64R_branch_reg"
        RETAA RETAA_64E_branch_reg -> "RETAA_64E_branch_reg"
        RETAB RETAB_64E_branch_reg -> "RETAB_64E_branch_reg"
        REV REV_32_dp_1src -> "REV_32_dp_1src"
        REV REV_64_dp_1src -> "REV_64_dp_1src"
        REV16 REV16_32_dp_1src -> "REV16_32_dp_1src"
        REV16 REV16_64_dp_1src -> "REV16_64_dp_1src"
        REV32 REV32_64_dp_1src -> "REV32_64_dp_1src"
        RORV RORV_32_dp_2src -> "RORV_32_dp_2src"
        RORV RORV_64_dp_2src -> "RORV_64_dp_2src"
        SBC SBC_32_addsub_carry -> "SBC_32_addsub_carry"
        SBC SBC_64_addsub_carry -> "SBC_64_addsub_carry"
        SBCS SBCS_32_addsub_carry -> "SBCS_32_addsub_carry"
        SBCS SBCS_64_addsub_carry -> "SBCS_64_addsub_carry"
        SBFM SBFM_32M_bitfield -> "SBFM_32M_bitfield"
        SBFM SBFM_64M_bitfield -> "SBFM_64M_bitfield"
        SDIV SDIV_32_dp_2src -> "SDIV_32_dp_2src"
        SDIV SDIV_64_dp_2src -> "SDIV_64_dp_2src"
        SEV SEV_HI_system -> "SEV_HI_system"
        SEVL SEVL_HI_system -> "SEVL_HI_system"
        SMADDL SMADDL_64WA_dp_3src -> "SMADDL_64WA_dp_3src"
        SMC SMC_EX_exception -> "SMC_EX_exception"
        SMSUBL SMSUBL_64WA_dp_3src -> "SMSUBL_64WA_dp_3src"
        SMULH SMULH_64_dp_3src -> "SMULH_64_dp_3src"
        STLLR STLLR_SL32_ldstexcl -> "STLLR_SL32_ldstexcl"
        STLLR STLLR_SL64_ldstexcl -> "STLLR_SL64_ldstexcl"
        STLLRB STLLRB_SL32_ldstexcl -> "STLLRB_SL32_ldstexcl"
        STLLRH STLLRH_SL32_ldstexcl -> "STLLRH_SL32_ldstexcl"
        STLR STLR_SL32_ldstexcl -> "STLR_SL32_ldstexcl"
        STLR STLR_SL64_ldstexcl -> "STLR_SL64_ldstexcl"
        STLRB STLRB_SL32_ldstexcl -> "STLRB_SL32_ldstexcl"
        STLRH STLRH_SL32_ldstexcl -> "STLRH_SL32_ldstexcl"
        STLXP STLXP_SP32_ldstexcl -> "STLXP_SP32_ldstexcl"
        STLXP STLXP_SP64_ldstexcl -> "STLXP_SP64_ldstexcl"
        STLXR STLXR_SR32_ldstexcl -> "STLXR_SR32_ldstexcl"
        STLXR STLXR_SR64_ldstexcl -> "STLXR_SR64_ldstexcl"
        STLXRB STLXRB_SR32_ldstexcl -> "STLXRB_SR32_ldstexcl"
        STLXRH STLXRH_SR32_ldstexcl -> "STLXRH_SR32_ldstexcl"
        STNP STNP_32_ldstnapair_offs -> "STNP_32_ldstnapair_offs"
        STNP (STNP_64_ldstnapair_offs _ _ _ _) -> "STNP_64_ldstnapair_offs"
        STP STP_32_ldstpair_post -> "STP_32_ldstpair_post"
        STP STP_64_ldstpair_post -> "STP_64_ldstpair_post"
        STP STP_32_ldstpair_pre -> "STP_32_ldstpair_pre"
        STP (STP_64_ldstpair_pre _ _ _ _) -> "STP_64_ldstpair_pre"
        STP STP_32_ldstpair_off -> "STP_32_ldstpair_off"
        STP (STP_64_ldstpair_off _ _ _ _) -> "STP_64_ldstpair_off"
        STR STR_32_ldst_immpost -> "STR_32_ldst_immpost"
        STR STR_64_ldst_immpost -> "STR_64_ldst_immpost"
        STR STR_32_ldst_immpre -> "STR_32_ldst_immpre"
        STR STR_64_ldst_immpre -> "STR_64_ldst_immpre"
        STR STR_32_ldst_pos -> "STR_32_ldst_pos"
        STR (STR_64_ldst_pos _ _ _) -> "STR_64_ldst_pos"
        STR STR_32_ldst_regoff -> "STR_32_ldst_regoff"
        STR STR_64_ldst_regoff -> "STR_64_ldst_regoff"
        STRB STRB_32_ldst_immpost -> "STRB_32_ldst_immpost"
        STRB STRB_32_ldst_immpre -> "STRB_32_ldst_immpre"
        STRB STRB_32_ldst_pos -> "STRB_32_ldst_pos"
        STRB STRB_32B_ldst_regoff -> "STRB_32B_ldst_regoff"
        STRB STRB_32BL_ldst_regoff -> "STRB_32BL_ldst_regoff"
        STRH STRH_32_ldst_immpost -> "STRH_32_ldst_immpost"
        STRH STRH_32_ldst_immpre -> "STRH_32_ldst_immpre"
        STRH STRH_32_ldst_pos -> "STRH_32_ldst_pos"
        STRH STRH_32_ldst_regoff -> "STRH_32_ldst_regoff"
        STTR STTR_32_ldst_unpriv -> "STTR_32_ldst_unpriv"
        STTR STTR_64_ldst_unpriv -> "STTR_64_ldst_unpriv"
        STTRB STTRB_32_ldst_unpriv -> "STTRB_32_ldst_unpriv"
        STTRH STTRH_32_ldst_unpriv -> "STTRH_32_ldst_unpriv"
        STUR STUR_32_ldst_unscaled -> "STUR_32_ldst_unscaled"
        STUR STUR_64_ldst_unscaled -> "STUR_64_ldst_unscaled"
        STURB STURB_32_ldst_unscaled -> "STURB_32_ldst_unscaled"
        STURH STURH_32_ldst_unscaled -> "STURH_32_ldst_unscaled"
        STXP STXP_SP32_ldstexcl -> "STXP_SP32_ldstexcl"
        STXP STXP_SP64_ldstexcl -> "STXP_SP64_ldstexcl"
        STXR STXR_SR32_ldstexcl -> "STXR_SR32_ldstexcl"
        STXR STXR_SR64_ldstexcl -> "STXR_SR64_ldstexcl"
        STXRB STXRB_SR32_ldstexcl -> "STXRB_SR32_ldstexcl"
        STXRH STXRH_SR32_ldstexcl -> "STXRH_SR32_ldstexcl"
        SUB SUB_32_addsub_ext -> "SUB_32_addsub_ext"
        SUB SUB_64_addsub_ext -> "SUB_64_addsub_ext"
        SUB SUB_32_addsub_imm -> "SUB_32_addsub_imm"
        SUB (SUB_64_addsub_imm _ _ _ _) -> "SUB_64_addsub_imm"
        SUB (SUB_32_addsub_shift _ _ _ _) -> "SUB_32_addsub_shift"
        SUB SUB_64_addsub_shift -> "SUB_64_addsub_shift"
        SUBS SUBS_32S_addsub_ext -> "SUBS_32S_addsub_ext"
        SUBS SUBS_64S_addsub_ext -> "SUBS_64S_addsub_ext"
        SUBS (SUBS_32S_addsub_imm _ _ _ _) -> "SUBS_32S_addsub_imm"
        SUBS (SUBS_64S_addsub_imm _ _ _ _) -> "SUBS_64S_addsub_imm"
        SUBS (SUBS_32_addsub_shift _ _ _ _) -> "SUBS_32_addsub_shift"
        SUBS SUBS_64_addsub_shift -> "SUBS_64_addsub_shift"
        SVC SVC_EX_exception -> "SVC_EX_exception"
        SWP SWP_32_memop -> "SWP_32_memop"
        SWPA SWPA_32_memop -> "SWPA_32_memop"
        SWPAL SWPAL_32_memop -> "SWPAL_32_memop"
        SWPL SWPL_32_memop -> "SWPL_32_memop"
        SWP SWP_64_memop -> "SWP_64_memop"
        SWPA SWPA_64_memop -> "SWPA_64_memop"
        SWPAL SWPAL_64_memop -> "SWPAL_64_memop"
        SWPL SWPL_64_memop -> "SWPL_64_memop"
        SWPAB SWPAB_32_memop -> "SWPAB_32_memop"
        SWPALB SWPALB_32_memop -> "SWPALB_32_memop"
        SWPB SWPB_32_memop -> "SWPB_32_memop"
        SWPLB SWPLB_32_memop -> "SWPLB_32_memop"
        SWPAH SWPAH_32_memop -> "SWPAH_32_memop"
        SWPALH SWPALH_32_memop -> "SWPALH_32_memop"
        SWPH SWPH_32_memop -> "SWPH_32_memop"
        SWPLH SWPLH_32_memop -> "SWPLH_32_memop"
        SYS SYS_CR_system -> "SYS_CR_system"
        SYSL SYSL_RC_system -> "SYSL_RC_system"
        TBNZ TBNZ_only_testbranch -> "TBNZ_only_testbranch"
        TBZ TBZ_only_testbranch -> "TBZ_only_testbranch"
        UBFM UBFM_32M_bitfield -> "UBFM_32M_bitfield"
        UBFM UBFM_64M_bitfield -> "UBFM_64M_bitfield"
        UDIV UDIV_32_dp_2src -> "UDIV_32_dp_2src"
        UDIV UDIV_64_dp_2src -> "UDIV_64_dp_2src"
        UMADDL UMADDL_64WA_dp_3src -> "UMADDL_64WA_dp_3src"
        UMSUBL UMSUBL_64WA_dp_3src -> "UMSUBL_64WA_dp_3src"
        UMULH UMULH_64_dp_3src -> "UMULH_64_dp_3src"
        WFE WFE_HI_system -> "WFE_HI_system"
        WFI WFI_HI_system -> "WFI_HI_system"
        XPACD XPACD_64Z_dp_1src -> "XPACD_64Z_dp_1src"
        XPACI XPACI_64Z_dp_1src -> "XPACI_64Z_dp_1src"
        XPACLRI XPACLRI_HI_system -> "XPACLRI_HI_system"
        YIELD YIELD_HI_system -> "YIELD_HI_system"
        ABS ABS_asisdmisc_R -> "ABS_asisdmisc_R"
        ABS ABS_asimdmisc_R -> "ABS_asimdmisc_R"
        ADD ADD_asisdsame_only -> "ADD_asisdsame_only"
        ADD ADD_asimdsame_only -> "ADD_asimdsame_only"
        ADDHN ADDHN_asimddiff_N -> "ADDHN_asimddiff_N"
        ADDP ADDP_asisdpair_only -> "ADDP_asisdpair_only"
        ADDP ADDP_asimdsame_only -> "ADDP_asimdsame_only"
        ADDV ADDV_asimdall_only -> "ADDV_asimdall_only"
        AESD AESD_B_cryptoaes -> "AESD_B_cryptoaes"
        AESE AESE_B_cryptoaes -> "AESE_B_cryptoaes"
        AESIMC AESIMC_B_cryptoaes -> "AESIMC_B_cryptoaes"
        AESMC AESMC_B_cryptoaes -> "AESMC_B_cryptoaes"
        AND AND_asimdsame_only -> "AND_asimdsame_only"
        BCAX BCAX_VVV16_crypto4 -> "BCAX_VVV16_crypto4"
        BIC BIC_asimdimm_L_hl -> "BIC_asimdimm_L_hl"
        BIC BIC_asimdimm_L_sl -> "BIC_asimdimm_L_sl"
        BIC BIC_asimdsame_only -> "BIC_asimdsame_only"
        BIF BIF_asimdsame_only -> "BIF_asimdsame_only"
        BIT BIT_asimdsame_only -> "BIT_asimdsame_only"
        BSL BSL_asimdsame_only -> "BSL_asimdsame_only"
        CLS CLS_asimdmisc_R -> "CLS_asimdmisc_R"
        CLZ CLZ_asimdmisc_R -> "CLZ_asimdmisc_R"
        CMEQ CMEQ_asisdsame_only -> "CMEQ_asisdsame_only"
        CMEQ CMEQ_asimdsame_only -> "CMEQ_asimdsame_only"
        CMEQ CMEQ_asisdmisc_Z -> "CMEQ_asisdmisc_Z"
        CMEQ CMEQ_asimdmisc_Z -> "CMEQ_asimdmisc_Z"
        CMGE CMGE_asisdsame_only -> "CMGE_asisdsame_only"
        CMGE CMGE_asimdsame_only -> "CMGE_asimdsame_only"
        CMGE CMGE_asisdmisc_Z -> "CMGE_asisdmisc_Z"
        CMGE CMGE_asimdmisc_Z -> "CMGE_asimdmisc_Z"
        CMGT CMGT_asisdsame_only -> "CMGT_asisdsame_only"
        CMGT CMGT_asimdsame_only -> "CMGT_asimdsame_only"
        CMGT CMGT_asisdmisc_Z -> "CMGT_asisdmisc_Z"
        CMGT CMGT_asimdmisc_Z -> "CMGT_asimdmisc_Z"
        CMHI CMHI_asisdsame_only -> "CMHI_asisdsame_only"
        CMHI CMHI_asimdsame_only -> "CMHI_asimdsame_only"
        CMHS CMHS_asisdsame_only -> "CMHS_asisdsame_only"
        CMHS CMHS_asimdsame_only -> "CMHS_asimdsame_only"
        CMLE CMLE_asisdmisc_Z -> "CMLE_asisdmisc_Z"
        CMLE CMLE_asimdmisc_Z -> "CMLE_asimdmisc_Z"
        CMLT CMLT_asisdmisc_Z -> "CMLT_asisdmisc_Z"
        CMLT CMLT_asimdmisc_Z -> "CMLT_asimdmisc_Z"
        CMTST CMTST_asisdsame_only -> "CMTST_asisdsame_only"
        CMTST CMTST_asimdsame_only -> "CMTST_asimdsame_only"
        CNT CNT_asimdmisc_R -> "CNT_asimdmisc_R"
        DUP DUP_asisdone_only -> "DUP_asisdone_only"
        DUP DUP_asimdins_DV_v -> "DUP_asimdins_DV_v"
        DUP DUP_asimdins_DR_r -> "DUP_asimdins_DR_r"
        EOR EOR_asimdsame_only -> "EOR_asimdsame_only"
        EOR3 EOR3_VVV16_crypto4 -> "EOR3_VVV16_crypto4"
        EXT EXT_asimdext_only -> "EXT_asimdext_only"
        FABD FABD_asisdsamefp16_only -> "FABD_asisdsamefp16_only"
        FABD FABD_asisdsame_only -> "FABD_asisdsame_only"
        FABD FABD_asimdsamefp16_only -> "FABD_asimdsamefp16_only"
        FABD FABD_asimdsame_only -> "FABD_asimdsame_only"
        FABS FABS_H_floatdp1 -> "FABS_H_floatdp1"
        FABS FABS_S_floatdp1 -> "FABS_S_floatdp1"
        FABS FABS_D_floatdp1 -> "FABS_D_floatdp1"
        FABS FABS_asimdmiscfp16_R -> "FABS_asimdmiscfp16_R"
        FABS FABS_asimdmisc_R -> "FABS_asimdmisc_R"
        FACGE FACGE_asisdsamefp16_only -> "FACGE_asisdsamefp16_only"
        FACGE FACGE_asisdsame_only -> "FACGE_asisdsame_only"
        FACGE FACGE_asimdsamefp16_only -> "FACGE_asimdsamefp16_only"
        FACGE FACGE_asimdsame_only -> "FACGE_asimdsame_only"
        FACGT FACGT_asisdsamefp16_only -> "FACGT_asisdsamefp16_only"
        FACGT FACGT_asisdsame_only -> "FACGT_asisdsame_only"
        FACGT FACGT_asimdsamefp16_only -> "FACGT_asimdsamefp16_only"
        FACGT FACGT_asimdsame_only -> "FACGT_asimdsame_only"
        FADD FADD_H_floatdp2 -> "FADD_H_floatdp2"
        FADD FADD_S_floatdp2 -> "FADD_S_floatdp2"
        FADD FADD_D_floatdp2 -> "FADD_D_floatdp2"
        FADD FADD_asimdsamefp16_only -> "FADD_asimdsamefp16_only"
        FADD FADD_asimdsame_only -> "FADD_asimdsame_only"
        FADDP FADDP_asisdpair_only_H -> "FADDP_asisdpair_only_H"
        FADDP FADDP_asisdpair_only_SD -> "FADDP_asisdpair_only_SD"
        FADDP FADDP_asimdsamefp16_only -> "FADDP_asimdsamefp16_only"
        FADDP FADDP_asimdsame_only -> "FADDP_asimdsame_only"
        FCADD FCADD_asimdsame2_C -> "FCADD_asimdsame2_C"
        FCCMP FCCMP_H_floatccmp -> "FCCMP_H_floatccmp"
        FCCMP FCCMP_S_floatccmp -> "FCCMP_S_floatccmp"
        FCCMP FCCMP_D_floatccmp -> "FCCMP_D_floatccmp"
        FCCMPE FCCMPE_H_floatccmp -> "FCCMPE_H_floatccmp"
        FCCMPE FCCMPE_S_floatccmp -> "FCCMPE_S_floatccmp"
        FCCMPE FCCMPE_D_floatccmp -> "FCCMPE_D_floatccmp"
        FCMEQ FCMEQ_asisdsamefp16_only -> "FCMEQ_asisdsamefp16_only"
        FCMEQ FCMEQ_asisdsame_only -> "FCMEQ_asisdsame_only"
        FCMEQ FCMEQ_asimdsamefp16_only -> "FCMEQ_asimdsamefp16_only"
        FCMEQ FCMEQ_asimdsame_only -> "FCMEQ_asimdsame_only"
        FCMEQ FCMEQ_asisdmiscfp16_FZ -> "FCMEQ_asisdmiscfp16_FZ"
        FCMEQ FCMEQ_asisdmisc_FZ -> "FCMEQ_asisdmisc_FZ"
        FCMEQ FCMEQ_asimdmiscfp16_FZ -> "FCMEQ_asimdmiscfp16_FZ"
        FCMEQ FCMEQ_asimdmisc_FZ -> "FCMEQ_asimdmisc_FZ"
        FCMGE FCMGE_asisdsamefp16_only -> "FCMGE_asisdsamefp16_only"
        FCMGE FCMGE_asisdsame_only -> "FCMGE_asisdsame_only"
        FCMGE FCMGE_asimdsamefp16_only -> "FCMGE_asimdsamefp16_only"
        FCMGE FCMGE_asimdsame_only -> "FCMGE_asimdsame_only"
        FCMGE FCMGE_asisdmiscfp16_FZ -> "FCMGE_asisdmiscfp16_FZ"
        FCMGE FCMGE_asisdmisc_FZ -> "FCMGE_asisdmisc_FZ"
        FCMGE FCMGE_asimdmiscfp16_FZ -> "FCMGE_asimdmiscfp16_FZ"
        FCMGE FCMGE_asimdmisc_FZ -> "FCMGE_asimdmisc_FZ"
        FCMGT FCMGT_asisdsamefp16_only -> "FCMGT_asisdsamefp16_only"
        FCMGT FCMGT_asisdsame_only -> "FCMGT_asisdsame_only"
        FCMGT FCMGT_asimdsamefp16_only -> "FCMGT_asimdsamefp16_only"
        FCMGT FCMGT_asimdsame_only -> "FCMGT_asimdsame_only"
        FCMGT FCMGT_asisdmiscfp16_FZ -> "FCMGT_asisdmiscfp16_FZ"
        FCMGT FCMGT_asisdmisc_FZ -> "FCMGT_asisdmisc_FZ"
        FCMGT FCMGT_asimdmiscfp16_FZ -> "FCMGT_asimdmiscfp16_FZ"
        FCMGT FCMGT_asimdmisc_FZ -> "FCMGT_asimdmisc_FZ"
        FCMLA FCMLA_asimdsame2_C -> "FCMLA_asimdsame2_C"
        FCMLA FCMLA_asimdelem_C_H -> "FCMLA_asimdelem_C_H"
        FCMLA FCMLA_asimdelem_C_S -> "FCMLA_asimdelem_C_S"
        FCMLE FCMLE_asisdmiscfp16_FZ -> "FCMLE_asisdmiscfp16_FZ"
        FCMLE FCMLE_asisdmisc_FZ -> "FCMLE_asisdmisc_FZ"
        FCMLE FCMLE_asimdmiscfp16_FZ -> "FCMLE_asimdmiscfp16_FZ"
        FCMLE FCMLE_asimdmisc_FZ -> "FCMLE_asimdmisc_FZ"
        FCMLT FCMLT_asisdmiscfp16_FZ -> "FCMLT_asisdmiscfp16_FZ"
        FCMLT FCMLT_asisdmisc_FZ -> "FCMLT_asisdmisc_FZ"
        FCMLT FCMLT_asimdmiscfp16_FZ -> "FCMLT_asimdmiscfp16_FZ"
        FCMLT FCMLT_asimdmisc_FZ -> "FCMLT_asimdmisc_FZ"
        FCMP FCMP_H_floatcmp -> "FCMP_H_floatcmp"
        FCMP FCMP_HZ_floatcmp -> "FCMP_HZ_floatcmp"
        FCMP FCMP_S_floatcmp -> "FCMP_S_floatcmp"
        FCMP FCMP_SZ_floatcmp -> "FCMP_SZ_floatcmp"
        FCMP FCMP_D_floatcmp -> "FCMP_D_floatcmp"
        FCMP FCMP_DZ_floatcmp -> "FCMP_DZ_floatcmp"
        FCMPE FCMPE_H_floatcmp -> "FCMPE_H_floatcmp"
        FCMPE FCMPE_HZ_floatcmp -> "FCMPE_HZ_floatcmp"
        FCMPE FCMPE_S_floatcmp -> "FCMPE_S_floatcmp"
        FCMPE FCMPE_SZ_floatcmp -> "FCMPE_SZ_floatcmp"
        FCMPE FCMPE_D_floatcmp -> "FCMPE_D_floatcmp"
        FCMPE FCMPE_DZ_floatcmp -> "FCMPE_DZ_floatcmp"
        FCSEL FCSEL_H_floatsel -> "FCSEL_H_floatsel"
        FCSEL FCSEL_S_floatsel -> "FCSEL_S_floatsel"
        FCSEL FCSEL_D_floatsel -> "FCSEL_D_floatsel"
        FCVT FCVT_SH_floatdp1 -> "FCVT_SH_floatdp1"
        FCVT FCVT_DH_floatdp1 -> "FCVT_DH_floatdp1"
        FCVT FCVT_HS_floatdp1 -> "FCVT_HS_floatdp1"
        FCVT FCVT_DS_floatdp1 -> "FCVT_DS_floatdp1"
        FCVT FCVT_HD_floatdp1 -> "FCVT_HD_floatdp1"
        FCVT FCVT_SD_floatdp1 -> "FCVT_SD_floatdp1"
        FCVTAS FCVTAS_32H_float2int -> "FCVTAS_32H_float2int"
        FCVTAS FCVTAS_64H_float2int -> "FCVTAS_64H_float2int"
        FCVTAS FCVTAS_32S_float2int -> "FCVTAS_32S_float2int"
        FCVTAS FCVTAS_64S_float2int -> "FCVTAS_64S_float2int"
        FCVTAS FCVTAS_32D_float2int -> "FCVTAS_32D_float2int"
        FCVTAS FCVTAS_64D_float2int -> "FCVTAS_64D_float2int"
        FCVTAS FCVTAS_asisdmiscfp16_R -> "FCVTAS_asisdmiscfp16_R"
        FCVTAS FCVTAS_asisdmisc_R -> "FCVTAS_asisdmisc_R"
        FCVTAS FCVTAS_asimdmiscfp16_R -> "FCVTAS_asimdmiscfp16_R"
        FCVTAS FCVTAS_asimdmisc_R -> "FCVTAS_asimdmisc_R"
        FCVTAU FCVTAU_32H_float2int -> "FCVTAU_32H_float2int"
        FCVTAU FCVTAU_64H_float2int -> "FCVTAU_64H_float2int"
        FCVTAU FCVTAU_32S_float2int -> "FCVTAU_32S_float2int"
        FCVTAU FCVTAU_64S_float2int -> "FCVTAU_64S_float2int"
        FCVTAU FCVTAU_32D_float2int -> "FCVTAU_32D_float2int"
        FCVTAU FCVTAU_64D_float2int -> "FCVTAU_64D_float2int"
        FCVTAU FCVTAU_asisdmiscfp16_R -> "FCVTAU_asisdmiscfp16_R"
        FCVTAU FCVTAU_asisdmisc_R -> "FCVTAU_asisdmisc_R"
        FCVTAU FCVTAU_asimdmiscfp16_R -> "FCVTAU_asimdmiscfp16_R"
        FCVTAU FCVTAU_asimdmisc_R -> "FCVTAU_asimdmisc_R"
        FCVTL FCVTL_asimdmisc_L -> "FCVTL_asimdmisc_L"
        FCVTMS FCVTMS_32H_float2int -> "FCVTMS_32H_float2int"
        FCVTMS FCVTMS_64H_float2int -> "FCVTMS_64H_float2int"
        FCVTMS FCVTMS_32S_float2int -> "FCVTMS_32S_float2int"
        FCVTMS FCVTMS_64S_float2int -> "FCVTMS_64S_float2int"
        FCVTMS FCVTMS_32D_float2int -> "FCVTMS_32D_float2int"
        FCVTMS FCVTMS_64D_float2int -> "FCVTMS_64D_float2int"
        FCVTMS FCVTMS_asisdmiscfp16_R -> "FCVTMS_asisdmiscfp16_R"
        FCVTMS FCVTMS_asisdmisc_R -> "FCVTMS_asisdmisc_R"
        FCVTMS FCVTMS_asimdmiscfp16_R -> "FCVTMS_asimdmiscfp16_R"
        FCVTMS FCVTMS_asimdmisc_R -> "FCVTMS_asimdmisc_R"
        FCVTMU FCVTMU_32H_float2int -> "FCVTMU_32H_float2int"
        FCVTMU FCVTMU_64H_float2int -> "FCVTMU_64H_float2int"
        FCVTMU FCVTMU_32S_float2int -> "FCVTMU_32S_float2int"
        FCVTMU FCVTMU_64S_float2int -> "FCVTMU_64S_float2int"
        FCVTMU FCVTMU_32D_float2int -> "FCVTMU_32D_float2int"
        FCVTMU FCVTMU_64D_float2int -> "FCVTMU_64D_float2int"
        FCVTMU FCVTMU_asisdmiscfp16_R -> "FCVTMU_asisdmiscfp16_R"
        FCVTMU FCVTMU_asisdmisc_R -> "FCVTMU_asisdmisc_R"
        FCVTMU FCVTMU_asimdmiscfp16_R -> "FCVTMU_asimdmiscfp16_R"
        FCVTMU FCVTMU_asimdmisc_R -> "FCVTMU_asimdmisc_R"
        FCVTN FCVTN_asimdmisc_N -> "FCVTN_asimdmisc_N"
        FCVTNS FCVTNS_32H_float2int -> "FCVTNS_32H_float2int"
        FCVTNS FCVTNS_64H_float2int -> "FCVTNS_64H_float2int"
        FCVTNS FCVTNS_32S_float2int -> "FCVTNS_32S_float2int"
        FCVTNS FCVTNS_64S_float2int -> "FCVTNS_64S_float2int"
        FCVTNS FCVTNS_32D_float2int -> "FCVTNS_32D_float2int"
        FCVTNS FCVTNS_64D_float2int -> "FCVTNS_64D_float2int"
        FCVTNS FCVTNS_asisdmiscfp16_R -> "FCVTNS_asisdmiscfp16_R"
        FCVTNS FCVTNS_asisdmisc_R -> "FCVTNS_asisdmisc_R"
        FCVTNS FCVTNS_asimdmiscfp16_R -> "FCVTNS_asimdmiscfp16_R"
        FCVTNS FCVTNS_asimdmisc_R -> "FCVTNS_asimdmisc_R"
        FCVTNU FCVTNU_32H_float2int -> "FCVTNU_32H_float2int"
        FCVTNU FCVTNU_64H_float2int -> "FCVTNU_64H_float2int"
        FCVTNU FCVTNU_32S_float2int -> "FCVTNU_32S_float2int"
        FCVTNU FCVTNU_64S_float2int -> "FCVTNU_64S_float2int"
        FCVTNU FCVTNU_32D_float2int -> "FCVTNU_32D_float2int"
        FCVTNU FCVTNU_64D_float2int -> "FCVTNU_64D_float2int"
        FCVTNU FCVTNU_asisdmiscfp16_R -> "FCVTNU_asisdmiscfp16_R"
        FCVTNU FCVTNU_asisdmisc_R -> "FCVTNU_asisdmisc_R"
        FCVTNU FCVTNU_asimdmiscfp16_R -> "FCVTNU_asimdmiscfp16_R"
        FCVTNU FCVTNU_asimdmisc_R -> "FCVTNU_asimdmisc_R"
        FCVTPS FCVTPS_32H_float2int -> "FCVTPS_32H_float2int"
        FCVTPS FCVTPS_64H_float2int -> "FCVTPS_64H_float2int"
        FCVTPS FCVTPS_32S_float2int -> "FCVTPS_32S_float2int"
        FCVTPS FCVTPS_64S_float2int -> "FCVTPS_64S_float2int"
        FCVTPS FCVTPS_32D_float2int -> "FCVTPS_32D_float2int"
        FCVTPS FCVTPS_64D_float2int -> "FCVTPS_64D_float2int"
        FCVTPS FCVTPS_asisdmiscfp16_R -> "FCVTPS_asisdmiscfp16_R"
        FCVTPS FCVTPS_asisdmisc_R -> "FCVTPS_asisdmisc_R"
        FCVTPS FCVTPS_asimdmiscfp16_R -> "FCVTPS_asimdmiscfp16_R"
        FCVTPS FCVTPS_asimdmisc_R -> "FCVTPS_asimdmisc_R"
        FCVTPU FCVTPU_32H_float2int -> "FCVTPU_32H_float2int"
        FCVTPU FCVTPU_64H_float2int -> "FCVTPU_64H_float2int"
        FCVTPU FCVTPU_32S_float2int -> "FCVTPU_32S_float2int"
        FCVTPU FCVTPU_64S_float2int -> "FCVTPU_64S_float2int"
        FCVTPU FCVTPU_32D_float2int -> "FCVTPU_32D_float2int"
        FCVTPU FCVTPU_64D_float2int -> "FCVTPU_64D_float2int"
        FCVTPU FCVTPU_asisdmiscfp16_R -> "FCVTPU_asisdmiscfp16_R"
        FCVTPU FCVTPU_asisdmisc_R -> "FCVTPU_asisdmisc_R"
        FCVTPU FCVTPU_asimdmiscfp16_R -> "FCVTPU_asimdmiscfp16_R"
        FCVTPU FCVTPU_asimdmisc_R -> "FCVTPU_asimdmisc_R"
        FCVTXN FCVTXN_asisdmisc_N -> "FCVTXN_asisdmisc_N"
        FCVTXN FCVTXN_asimdmisc_N -> "FCVTXN_asimdmisc_N"
        FCVTZS FCVTZS_32H_float2fix -> "FCVTZS_32H_float2fix"
        FCVTZS FCVTZS_64H_float2fix -> "FCVTZS_64H_float2fix"
        FCVTZS FCVTZS_32S_float2fix -> "FCVTZS_32S_float2fix"
        FCVTZS FCVTZS_64S_float2fix -> "FCVTZS_64S_float2fix"
        FCVTZS FCVTZS_32D_float2fix -> "FCVTZS_32D_float2fix"
        FCVTZS FCVTZS_64D_float2fix -> "FCVTZS_64D_float2fix"
        FCVTZS FCVTZS_32H_float2int -> "FCVTZS_32H_float2int"
        FCVTZS FCVTZS_64H_float2int -> "FCVTZS_64H_float2int"
        FCVTZS FCVTZS_32S_float2int -> "FCVTZS_32S_float2int"
        FCVTZS FCVTZS_64S_float2int -> "FCVTZS_64S_float2int"
        FCVTZS FCVTZS_32D_float2int -> "FCVTZS_32D_float2int"
        FCVTZS FCVTZS_64D_float2int -> "FCVTZS_64D_float2int"
        FCVTZS FCVTZS_asisdshf_C -> "FCVTZS_asisdshf_C"
        FCVTZS FCVTZS_asimdshf_C -> "FCVTZS_asimdshf_C"
        FCVTZS FCVTZS_asisdmiscfp16_R -> "FCVTZS_asisdmiscfp16_R"
        FCVTZS FCVTZS_asisdmisc_R -> "FCVTZS_asisdmisc_R"
        FCVTZS FCVTZS_asimdmiscfp16_R -> "FCVTZS_asimdmiscfp16_R"
        FCVTZS FCVTZS_asimdmisc_R -> "FCVTZS_asimdmisc_R"
        FCVTZU FCVTZU_32H_float2fix -> "FCVTZU_32H_float2fix"
        FCVTZU FCVTZU_64H_float2fix -> "FCVTZU_64H_float2fix"
        FCVTZU FCVTZU_32S_float2fix -> "FCVTZU_32S_float2fix"
        FCVTZU FCVTZU_64S_float2fix -> "FCVTZU_64S_float2fix"
        FCVTZU FCVTZU_32D_float2fix -> "FCVTZU_32D_float2fix"
        FCVTZU FCVTZU_64D_float2fix -> "FCVTZU_64D_float2fix"
        FCVTZU FCVTZU_32H_float2int -> "FCVTZU_32H_float2int"
        FCVTZU FCVTZU_64H_float2int -> "FCVTZU_64H_float2int"
        FCVTZU FCVTZU_32S_float2int -> "FCVTZU_32S_float2int"
        FCVTZU FCVTZU_64S_float2int -> "FCVTZU_64S_float2int"
        FCVTZU FCVTZU_32D_float2int -> "FCVTZU_32D_float2int"
        FCVTZU FCVTZU_64D_float2int -> "FCVTZU_64D_float2int"
        FCVTZU FCVTZU_asisdshf_C -> "FCVTZU_asisdshf_C"
        FCVTZU FCVTZU_asimdshf_C -> "FCVTZU_asimdshf_C"
        FCVTZU FCVTZU_asisdmiscfp16_R -> "FCVTZU_asisdmiscfp16_R"
        FCVTZU FCVTZU_asisdmisc_R -> "FCVTZU_asisdmisc_R"
        FCVTZU FCVTZU_asimdmiscfp16_R -> "FCVTZU_asimdmiscfp16_R"
        FCVTZU FCVTZU_asimdmisc_R -> "FCVTZU_asimdmisc_R"
        FDIV FDIV_H_floatdp2 -> "FDIV_H_floatdp2"
        FDIV FDIV_S_floatdp2 -> "FDIV_S_floatdp2"
        FDIV FDIV_D_floatdp2 -> "FDIV_D_floatdp2"
        FDIV FDIV_asimdsamefp16_only -> "FDIV_asimdsamefp16_only"
        FDIV FDIV_asimdsame_only -> "FDIV_asimdsame_only"
        FJCVTZS FJCVTZS_32D_float2int -> "FJCVTZS_32D_float2int"
        FMADD FMADD_H_floatdp3 -> "FMADD_H_floatdp3"
        FMADD FMADD_S_floatdp3 -> "FMADD_S_floatdp3"
        FMADD FMADD_D_floatdp3 -> "FMADD_D_floatdp3"
        FMAX FMAX_H_floatdp2 -> "FMAX_H_floatdp2"
        FMAX FMAX_S_floatdp2 -> "FMAX_S_floatdp2"
        FMAX FMAX_D_floatdp2 -> "FMAX_D_floatdp2"
        FMAX FMAX_asimdsamefp16_only -> "FMAX_asimdsamefp16_only"
        FMAX FMAX_asimdsame_only -> "FMAX_asimdsame_only"
        FMAXNM FMAXNM_H_floatdp2 -> "FMAXNM_H_floatdp2"
        FMAXNM FMAXNM_S_floatdp2 -> "FMAXNM_S_floatdp2"
        FMAXNM FMAXNM_D_floatdp2 -> "FMAXNM_D_floatdp2"
        FMAXNM FMAXNM_asimdsamefp16_only -> "FMAXNM_asimdsamefp16_only"
        FMAXNM FMAXNM_asimdsame_only -> "FMAXNM_asimdsame_only"
        FMAXNMP FMAXNMP_asisdpair_only_H -> "FMAXNMP_asisdpair_only_H"
        FMAXNMP FMAXNMP_asisdpair_only_SD -> "FMAXNMP_asisdpair_only_SD"
        FMAXNMP FMAXNMP_asimdsamefp16_only -> "FMAXNMP_asimdsamefp16_only"
        FMAXNMP FMAXNMP_asimdsame_only -> "FMAXNMP_asimdsame_only"
        FMAXNMV FMAXNMV_asimdall_only_H -> "FMAXNMV_asimdall_only_H"
        FMAXNMV FMAXNMV_asimdall_only_SD -> "FMAXNMV_asimdall_only_SD"
        FMAXP FMAXP_asisdpair_only_H -> "FMAXP_asisdpair_only_H"
        FMAXP FMAXP_asisdpair_only_SD -> "FMAXP_asisdpair_only_SD"
        FMAXP FMAXP_asimdsamefp16_only -> "FMAXP_asimdsamefp16_only"
        FMAXP FMAXP_asimdsame_only -> "FMAXP_asimdsame_only"
        FMAXV FMAXV_asimdall_only_H -> "FMAXV_asimdall_only_H"
        FMAXV FMAXV_asimdall_only_SD -> "FMAXV_asimdall_only_SD"
        FMIN FMIN_H_floatdp2 -> "FMIN_H_floatdp2"
        FMIN FMIN_S_floatdp2 -> "FMIN_S_floatdp2"
        FMIN FMIN_D_floatdp2 -> "FMIN_D_floatdp2"
        FMIN FMIN_asimdsamefp16_only -> "FMIN_asimdsamefp16_only"
        FMIN FMIN_asimdsame_only -> "FMIN_asimdsame_only"
        FMINNM FMINNM_H_floatdp2 -> "FMINNM_H_floatdp2"
        FMINNM FMINNM_S_floatdp2 -> "FMINNM_S_floatdp2"
        FMINNM FMINNM_D_floatdp2 -> "FMINNM_D_floatdp2"
        FMINNM FMINNM_asimdsamefp16_only -> "FMINNM_asimdsamefp16_only"
        FMINNM FMINNM_asimdsame_only -> "FMINNM_asimdsame_only"
        FMINNMP FMINNMP_asisdpair_only_H -> "FMINNMP_asisdpair_only_H"
        FMINNMP FMINNMP_asisdpair_only_SD -> "FMINNMP_asisdpair_only_SD"
        FMINNMP FMINNMP_asimdsamefp16_only -> "FMINNMP_asimdsamefp16_only"
        FMINNMP FMINNMP_asimdsame_only -> "FMINNMP_asimdsame_only"
        FMINNMV FMINNMV_asimdall_only_H -> "FMINNMV_asimdall_only_H"
        FMINNMV FMINNMV_asimdall_only_SD -> "FMINNMV_asimdall_only_SD"
        FMINP FMINP_asisdpair_only_H -> "FMINP_asisdpair_only_H"
        FMINP FMINP_asisdpair_only_SD -> "FMINP_asisdpair_only_SD"
        FMINP FMINP_asimdsamefp16_only -> "FMINP_asimdsamefp16_only"
        FMINP FMINP_asimdsame_only -> "FMINP_asimdsame_only"
        FMINV FMINV_asimdall_only_H -> "FMINV_asimdall_only_H"
        FMINV FMINV_asimdall_only_SD -> "FMINV_asimdall_only_SD"
        FMLA FMLA_asisdelem_RH_H -> "FMLA_asisdelem_RH_H"
        FMLA FMLA_asisdelem_R_SD -> "FMLA_asisdelem_R_SD"
        FMLA FMLA_asimdelem_RH_H -> "FMLA_asimdelem_RH_H"
        FMLA FMLA_asimdelem_R_SD -> "FMLA_asimdelem_R_SD"
        FMLA FMLA_asimdsamefp16_only -> "FMLA_asimdsamefp16_only"
        FMLA FMLA_asimdsame_only -> "FMLA_asimdsame_only"
        FMLS FMLS_asisdelem_RH_H -> "FMLS_asisdelem_RH_H"
        FMLS FMLS_asisdelem_R_SD -> "FMLS_asisdelem_R_SD"
        FMLS FMLS_asimdelem_RH_H -> "FMLS_asimdelem_RH_H"
        FMLS FMLS_asimdelem_R_SD -> "FMLS_asimdelem_R_SD"
        FMLS FMLS_asimdsamefp16_only -> "FMLS_asimdsamefp16_only"
        FMLS FMLS_asimdsame_only -> "FMLS_asimdsame_only"
        FMOV FMOV_32H_float2int -> "FMOV_32H_float2int"
        FMOV FMOV_64H_float2int -> "FMOV_64H_float2int"
        FMOV FMOV_H32_float2int -> "FMOV_H32_float2int"
        FMOV FMOV_S32_float2int -> "FMOV_S32_float2int"
        FMOV FMOV_32S_float2int -> "FMOV_32S_float2int"
        FMOV FMOV_H64_float2int -> "FMOV_H64_float2int"
        FMOV FMOV_D64_float2int -> "FMOV_D64_float2int"
        FMOV FMOV_V64I_float2int -> "FMOV_V64I_float2int"
        FMOV FMOV_64D_float2int -> "FMOV_64D_float2int"
        FMOV FMOV_64VX_float2int -> "FMOV_64VX_float2int"
        FMOV FMOV_H_floatdp1 -> "FMOV_H_floatdp1"
        FMOV FMOV_S_floatdp1 -> "FMOV_S_floatdp1"
        FMOV FMOV_D_floatdp1 -> "FMOV_D_floatdp1"
        FMOV FMOV_H_floatimm -> "FMOV_H_floatimm"
        FMOV FMOV_S_floatimm -> "FMOV_S_floatimm"
        FMOV FMOV_D_floatimm -> "FMOV_D_floatimm"
        FMOV FMOV_asimdimm_H_h -> "FMOV_asimdimm_H_h"
        FMOV FMOV_asimdimm_S_s -> "FMOV_asimdimm_S_s"
        FMOV FMOV_asimdimm_D2_d -> "FMOV_asimdimm_D2_d"
        FMSUB FMSUB_H_floatdp3 -> "FMSUB_H_floatdp3"
        FMSUB FMSUB_S_floatdp3 -> "FMSUB_S_floatdp3"
        FMSUB FMSUB_D_floatdp3 -> "FMSUB_D_floatdp3"
        FMUL FMUL_asisdelem_RH_H -> "FMUL_asisdelem_RH_H"
        FMUL FMUL_asisdelem_R_SD -> "FMUL_asisdelem_R_SD"
        FMUL FMUL_asimdelem_RH_H -> "FMUL_asimdelem_RH_H"
        FMUL FMUL_asimdelem_R_SD -> "FMUL_asimdelem_R_SD"
        FMUL FMUL_H_floatdp2 -> "FMUL_H_floatdp2"
        FMUL FMUL_S_floatdp2 -> "FMUL_S_floatdp2"
        FMUL FMUL_D_floatdp2 -> "FMUL_D_floatdp2"
        FMUL FMUL_asimdsamefp16_only -> "FMUL_asimdsamefp16_only"
        FMUL FMUL_asimdsame_only -> "FMUL_asimdsame_only"
        FMULX FMULX_asisdsamefp16_only -> "FMULX_asisdsamefp16_only"
        FMULX FMULX_asisdsame_only -> "FMULX_asisdsame_only"
        FMULX FMULX_asimdsamefp16_only -> "FMULX_asimdsamefp16_only"
        FMULX FMULX_asimdsame_only -> "FMULX_asimdsame_only"
        FMULX FMULX_asisdelem_RH_H -> "FMULX_asisdelem_RH_H"
        FMULX FMULX_asisdelem_R_SD -> "FMULX_asisdelem_R_SD"
        FMULX FMULX_asimdelem_RH_H -> "FMULX_asimdelem_RH_H"
        FMULX FMULX_asimdelem_R_SD -> "FMULX_asimdelem_R_SD"
        FNEG FNEG_H_floatdp1 -> "FNEG_H_floatdp1"
        FNEG FNEG_S_floatdp1 -> "FNEG_S_floatdp1"
        FNEG FNEG_D_floatdp1 -> "FNEG_D_floatdp1"
        FNEG FNEG_asimdmiscfp16_R -> "FNEG_asimdmiscfp16_R"
        FNEG FNEG_asimdmisc_R -> "FNEG_asimdmisc_R"
        FNMADD FNMADD_H_floatdp3 -> "FNMADD_H_floatdp3"
        FNMADD FNMADD_S_floatdp3 -> "FNMADD_S_floatdp3"
        FNMADD FNMADD_D_floatdp3 -> "FNMADD_D_floatdp3"
        FNMSUB FNMSUB_H_floatdp3 -> "FNMSUB_H_floatdp3"
        FNMSUB FNMSUB_S_floatdp3 -> "FNMSUB_S_floatdp3"
        FNMSUB FNMSUB_D_floatdp3 -> "FNMSUB_D_floatdp3"
        FNMUL FNMUL_H_floatdp2 -> "FNMUL_H_floatdp2"
        FNMUL FNMUL_S_floatdp2 -> "FNMUL_S_floatdp2"
        FNMUL FNMUL_D_floatdp2 -> "FNMUL_D_floatdp2"
        FRECPE FRECPE_asisdmiscfp16_R -> "FRECPE_asisdmiscfp16_R"
        FRECPE FRECPE_asisdmisc_R -> "FRECPE_asisdmisc_R"
        FRECPE FRECPE_asimdmiscfp16_R -> "FRECPE_asimdmiscfp16_R"
        FRECPE FRECPE_asimdmisc_R -> "FRECPE_asimdmisc_R"
        FRECPS FRECPS_asisdsamefp16_only -> "FRECPS_asisdsamefp16_only"
        FRECPS FRECPS_asisdsame_only -> "FRECPS_asisdsame_only"
        FRECPS FRECPS_asimdsamefp16_only -> "FRECPS_asimdsamefp16_only"
        FRECPS FRECPS_asimdsame_only -> "FRECPS_asimdsame_only"
        FRECPX FRECPX_asisdmiscfp16_R -> "FRECPX_asisdmiscfp16_R"
        FRECPX FRECPX_asisdmisc_R -> "FRECPX_asisdmisc_R"
        FRINTA FRINTA_H_floatdp1 -> "FRINTA_H_floatdp1"
        FRINTA FRINTA_S_floatdp1 -> "FRINTA_S_floatdp1"
        FRINTA FRINTA_D_floatdp1 -> "FRINTA_D_floatdp1"
        FRINTA FRINTA_asimdmiscfp16_R -> "FRINTA_asimdmiscfp16_R"
        FRINTA FRINTA_asimdmisc_R -> "FRINTA_asimdmisc_R"
        FRINTI FRINTI_H_floatdp1 -> "FRINTI_H_floatdp1"
        FRINTI FRINTI_S_floatdp1 -> "FRINTI_S_floatdp1"
        FRINTI FRINTI_D_floatdp1 -> "FRINTI_D_floatdp1"
        FRINTI FRINTI_asimdmiscfp16_R -> "FRINTI_asimdmiscfp16_R"
        FRINTI FRINTI_asimdmisc_R -> "FRINTI_asimdmisc_R"
        FRINTM FRINTM_H_floatdp1 -> "FRINTM_H_floatdp1"
        FRINTM FRINTM_S_floatdp1 -> "FRINTM_S_floatdp1"
        FRINTM FRINTM_D_floatdp1 -> "FRINTM_D_floatdp1"
        FRINTM FRINTM_asimdmiscfp16_R -> "FRINTM_asimdmiscfp16_R"
        FRINTM FRINTM_asimdmisc_R -> "FRINTM_asimdmisc_R"
        FRINTN FRINTN_H_floatdp1 -> "FRINTN_H_floatdp1"
        FRINTN FRINTN_S_floatdp1 -> "FRINTN_S_floatdp1"
        FRINTN FRINTN_D_floatdp1 -> "FRINTN_D_floatdp1"
        FRINTN FRINTN_asimdmiscfp16_R -> "FRINTN_asimdmiscfp16_R"
        FRINTN FRINTN_asimdmisc_R -> "FRINTN_asimdmisc_R"
        FRINTP FRINTP_H_floatdp1 -> "FRINTP_H_floatdp1"
        FRINTP FRINTP_S_floatdp1 -> "FRINTP_S_floatdp1"
        FRINTP FRINTP_D_floatdp1 -> "FRINTP_D_floatdp1"
        FRINTP FRINTP_asimdmiscfp16_R -> "FRINTP_asimdmiscfp16_R"
        FRINTP FRINTP_asimdmisc_R -> "FRINTP_asimdmisc_R"
        FRINTX FRINTX_H_floatdp1 -> "FRINTX_H_floatdp1"
        FRINTX FRINTX_S_floatdp1 -> "FRINTX_S_floatdp1"
        FRINTX FRINTX_D_floatdp1 -> "FRINTX_D_floatdp1"
        FRINTX FRINTX_asimdmiscfp16_R -> "FRINTX_asimdmiscfp16_R"
        FRINTX FRINTX_asimdmisc_R -> "FRINTX_asimdmisc_R"
        FRINTZ FRINTZ_H_floatdp1 -> "FRINTZ_H_floatdp1"
        FRINTZ FRINTZ_S_floatdp1 -> "FRINTZ_S_floatdp1"
        FRINTZ FRINTZ_D_floatdp1 -> "FRINTZ_D_floatdp1"
        FRINTZ FRINTZ_asimdmiscfp16_R -> "FRINTZ_asimdmiscfp16_R"
        FRINTZ FRINTZ_asimdmisc_R -> "FRINTZ_asimdmisc_R"
        FRSQRTE FRSQRTE_asisdmiscfp16_R -> "FRSQRTE_asisdmiscfp16_R"
        FRSQRTE FRSQRTE_asisdmisc_R -> "FRSQRTE_asisdmisc_R"
        FRSQRTE FRSQRTE_asimdmiscfp16_R -> "FRSQRTE_asimdmiscfp16_R"
        FRSQRTE FRSQRTE_asimdmisc_R -> "FRSQRTE_asimdmisc_R"
        FRSQRTS FRSQRTS_asisdsamefp16_only -> "FRSQRTS_asisdsamefp16_only"
        FRSQRTS FRSQRTS_asisdsame_only -> "FRSQRTS_asisdsame_only"
        FRSQRTS FRSQRTS_asimdsamefp16_only -> "FRSQRTS_asimdsamefp16_only"
        FRSQRTS FRSQRTS_asimdsame_only -> "FRSQRTS_asimdsame_only"
        FSQRT FSQRT_H_floatdp1 -> "FSQRT_H_floatdp1"
        FSQRT FSQRT_S_floatdp1 -> "FSQRT_S_floatdp1"
        FSQRT FSQRT_D_floatdp1 -> "FSQRT_D_floatdp1"
        FSQRT FSQRT_asimdmiscfp16_R -> "FSQRT_asimdmiscfp16_R"
        FSQRT FSQRT_asimdmisc_R -> "FSQRT_asimdmisc_R"
        FSUB FSUB_H_floatdp2 -> "FSUB_H_floatdp2"
        FSUB FSUB_S_floatdp2 -> "FSUB_S_floatdp2"
        FSUB FSUB_D_floatdp2 -> "FSUB_D_floatdp2"
        FSUB FSUB_asimdsamefp16_only -> "FSUB_asimdsamefp16_only"
        FSUB FSUB_asimdsame_only -> "FSUB_asimdsame_only"
        INS INS_asimdins_IV_v -> "INS_asimdins_IV_v"
        INS INS_asimdins_IR_r -> "INS_asimdins_IR_r"
        LD1 LD1_asisdlse_R1_1v -> "LD1_asisdlse_R1_1v"
        LD1 LD1_asisdlse_R2_2v -> "LD1_asisdlse_R2_2v"
        LD1 LD1_asisdlse_R3_3v -> "LD1_asisdlse_R3_3v"
        LD1 LD1_asisdlse_R4_4v -> "LD1_asisdlse_R4_4v"
        LD1 LD1_asisdlsep_I1_i1 -> "LD1_asisdlsep_I1_i1"
        LD1 LD1_asisdlsep_R1_r1 -> "LD1_asisdlsep_R1_r1"
        LD1 LD1_asisdlsep_I2_i2 -> "LD1_asisdlsep_I2_i2"
        LD1 LD1_asisdlsep_R2_r2 -> "LD1_asisdlsep_R2_r2"
        LD1 LD1_asisdlsep_I3_i3 -> "LD1_asisdlsep_I3_i3"
        LD1 LD1_asisdlsep_R3_r3 -> "LD1_asisdlsep_R3_r3"
        LD1 LD1_asisdlsep_I4_i4 -> "LD1_asisdlsep_I4_i4"
        LD1 LD1_asisdlsep_R4_r4 -> "LD1_asisdlsep_R4_r4"
        LD1 LD1_asisdlso_B1_1b -> "LD1_asisdlso_B1_1b"
        LD1 LD1_asisdlso_H1_1h -> "LD1_asisdlso_H1_1h"
        LD1 LD1_asisdlso_S1_1s -> "LD1_asisdlso_S1_1s"
        LD1 LD1_asisdlso_D1_1d -> "LD1_asisdlso_D1_1d"
        LD1 LD1_asisdlsop_B1_i1b -> "LD1_asisdlsop_B1_i1b"
        LD1 LD1_asisdlsop_BX1_r1b -> "LD1_asisdlsop_BX1_r1b"
        LD1 LD1_asisdlsop_H1_i1h -> "LD1_asisdlsop_H1_i1h"
        LD1 LD1_asisdlsop_HX1_r1h -> "LD1_asisdlsop_HX1_r1h"
        LD1 LD1_asisdlsop_S1_i1s -> "LD1_asisdlsop_S1_i1s"
        LD1 LD1_asisdlsop_SX1_r1s -> "LD1_asisdlsop_SX1_r1s"
        LD1 LD1_asisdlsop_D1_i1d -> "LD1_asisdlsop_D1_i1d"
        LD1 LD1_asisdlsop_DX1_r1d -> "LD1_asisdlsop_DX1_r1d"
        LD1R LD1R_asisdlso_R1 -> "LD1R_asisdlso_R1"
        LD1R LD1R_asisdlsop_R1_i -> "LD1R_asisdlsop_R1_i"
        LD1R LD1R_asisdlsop_RX1_r -> "LD1R_asisdlsop_RX1_r"
        LD2 LD2_asisdlse_R2 -> "LD2_asisdlse_R2"
        LD2 LD2_asisdlsep_I2_i -> "LD2_asisdlsep_I2_i"
        LD2 LD2_asisdlsep_R2_r -> "LD2_asisdlsep_R2_r"
        LD2 LD2_asisdlso_B2_2b -> "LD2_asisdlso_B2_2b"
        LD2 LD2_asisdlso_H2_2h -> "LD2_asisdlso_H2_2h"
        LD2 LD2_asisdlso_S2_2s -> "LD2_asisdlso_S2_2s"
        LD2 LD2_asisdlso_D2_2d -> "LD2_asisdlso_D2_2d"
        LD2 LD2_asisdlsop_B2_i2b -> "LD2_asisdlsop_B2_i2b"
        LD2 LD2_asisdlsop_BX2_r2b -> "LD2_asisdlsop_BX2_r2b"
        LD2 LD2_asisdlsop_H2_i2h -> "LD2_asisdlsop_H2_i2h"
        LD2 LD2_asisdlsop_HX2_r2h -> "LD2_asisdlsop_HX2_r2h"
        LD2 LD2_asisdlsop_S2_i2s -> "LD2_asisdlsop_S2_i2s"
        LD2 LD2_asisdlsop_SX2_r2s -> "LD2_asisdlsop_SX2_r2s"
        LD2 LD2_asisdlsop_D2_i2d -> "LD2_asisdlsop_D2_i2d"
        LD2 LD2_asisdlsop_DX2_r2d -> "LD2_asisdlsop_DX2_r2d"
        LD2R LD2R_asisdlso_R2 -> "LD2R_asisdlso_R2"
        LD2R LD2R_asisdlsop_R2_i -> "LD2R_asisdlsop_R2_i"
        LD2R LD2R_asisdlsop_RX2_r -> "LD2R_asisdlsop_RX2_r"
        LD3 LD3_asisdlse_R3 -> "LD3_asisdlse_R3"
        LD3 LD3_asisdlsep_I3_i -> "LD3_asisdlsep_I3_i"
        LD3 LD3_asisdlsep_R3_r -> "LD3_asisdlsep_R3_r"
        LD3 LD3_asisdlso_B3_3b -> "LD3_asisdlso_B3_3b"
        LD3 LD3_asisdlso_H3_3h -> "LD3_asisdlso_H3_3h"
        LD3 LD3_asisdlso_S3_3s -> "LD3_asisdlso_S3_3s"
        LD3 LD3_asisdlso_D3_3d -> "LD3_asisdlso_D3_3d"
        LD3 LD3_asisdlsop_B3_i3b -> "LD3_asisdlsop_B3_i3b"
        LD3 LD3_asisdlsop_BX3_r3b -> "LD3_asisdlsop_BX3_r3b"
        LD3 LD3_asisdlsop_H3_i3h -> "LD3_asisdlsop_H3_i3h"
        LD3 LD3_asisdlsop_HX3_r3h -> "LD3_asisdlsop_HX3_r3h"
        LD3 LD3_asisdlsop_S3_i3s -> "LD3_asisdlsop_S3_i3s"
        LD3 LD3_asisdlsop_SX3_r3s -> "LD3_asisdlsop_SX3_r3s"
        LD3 LD3_asisdlsop_D3_i3d -> "LD3_asisdlsop_D3_i3d"
        LD3 LD3_asisdlsop_DX3_r3d -> "LD3_asisdlsop_DX3_r3d"
        LD3R LD3R_asisdlso_R3 -> "LD3R_asisdlso_R3"
        LD3R LD3R_asisdlsop_R3_i -> "LD3R_asisdlsop_R3_i"
        LD3R LD3R_asisdlsop_RX3_r -> "LD3R_asisdlsop_RX3_r"
        LD4 LD4_asisdlse_R4 -> "LD4_asisdlse_R4"
        LD4 LD4_asisdlsep_I4_i -> "LD4_asisdlsep_I4_i"
        LD4 LD4_asisdlsep_R4_r -> "LD4_asisdlsep_R4_r"
        LD4 LD4_asisdlso_B4_4b -> "LD4_asisdlso_B4_4b"
        LD4 LD4_asisdlso_H4_4h -> "LD4_asisdlso_H4_4h"
        LD4 LD4_asisdlso_S4_4s -> "LD4_asisdlso_S4_4s"
        LD4 LD4_asisdlso_D4_4d -> "LD4_asisdlso_D4_4d"
        LD4 LD4_asisdlsop_B4_i4b -> "LD4_asisdlsop_B4_i4b"
        LD4 LD4_asisdlsop_BX4_r4b -> "LD4_asisdlsop_BX4_r4b"
        LD4 LD4_asisdlsop_H4_i4h -> "LD4_asisdlsop_H4_i4h"
        LD4 LD4_asisdlsop_HX4_r4h -> "LD4_asisdlsop_HX4_r4h"
        LD4 LD4_asisdlsop_S4_i4s -> "LD4_asisdlsop_S4_i4s"
        LD4 LD4_asisdlsop_SX4_r4s -> "LD4_asisdlsop_SX4_r4s"
        LD4 LD4_asisdlsop_D4_i4d -> "LD4_asisdlsop_D4_i4d"
        LD4 LD4_asisdlsop_DX4_r4d -> "LD4_asisdlsop_DX4_r4d"
        LD4R LD4R_asisdlso_R4 -> "LD4R_asisdlso_R4"
        LD4R LD4R_asisdlsop_R4_i -> "LD4R_asisdlsop_R4_i"
        LD4R LD4R_asisdlsop_RX4_r -> "LD4R_asisdlsop_RX4_r"
        LDNP LDNP_S_ldstnapair_offs -> "LDNP_S_ldstnapair_offs"
        LDNP LDNP_D_ldstnapair_offs -> "LDNP_D_ldstnapair_offs"
        LDNP LDNP_Q_ldstnapair_offs -> "LDNP_Q_ldstnapair_offs"
        LDP LDP_S_ldstpair_post -> "LDP_S_ldstpair_post"
        LDP LDP_D_ldstpair_post -> "LDP_D_ldstpair_post"
        LDP LDP_Q_ldstpair_post -> "LDP_Q_ldstpair_post"
        LDP LDP_S_ldstpair_pre -> "LDP_S_ldstpair_pre"
        LDP LDP_D_ldstpair_pre -> "LDP_D_ldstpair_pre"
        LDP LDP_Q_ldstpair_pre -> "LDP_Q_ldstpair_pre"
        LDP LDP_S_ldstpair_off -> "LDP_S_ldstpair_off"
        LDP LDP_D_ldstpair_off -> "LDP_D_ldstpair_off"
        LDP LDP_Q_ldstpair_off -> "LDP_Q_ldstpair_off"
        LDR LDR_B_ldst_immpost -> "LDR_B_ldst_immpost"
        LDR LDR_H_ldst_immpost -> "LDR_H_ldst_immpost"
        LDR LDR_S_ldst_immpost -> "LDR_S_ldst_immpost"
        LDR LDR_D_ldst_immpost -> "LDR_D_ldst_immpost"
        LDR LDR_Q_ldst_immpost -> "LDR_Q_ldst_immpost"
        LDR LDR_B_ldst_immpre -> "LDR_B_ldst_immpre"
        LDR LDR_H_ldst_immpre -> "LDR_H_ldst_immpre"
        LDR LDR_S_ldst_immpre -> "LDR_S_ldst_immpre"
        LDR LDR_D_ldst_immpre -> "LDR_D_ldst_immpre"
        LDR LDR_Q_ldst_immpre -> "LDR_Q_ldst_immpre"
        LDR LDR_B_ldst_pos -> "LDR_B_ldst_pos"
        LDR LDR_H_ldst_pos -> "LDR_H_ldst_pos"
        LDR LDR_S_ldst_pos -> "LDR_S_ldst_pos"
        LDR LDR_D_ldst_pos -> "LDR_D_ldst_pos"
        LDR LDR_Q_ldst_pos -> "LDR_Q_ldst_pos"
        LDR LDR_S_loadlit -> "LDR_S_loadlit"
        LDR LDR_D_loadlit -> "LDR_D_loadlit"
        LDR LDR_Q_loadlit -> "LDR_Q_loadlit"
        LDR LDR_B_ldst_regoff -> "LDR_B_ldst_regoff"
        LDR LDR_BL_ldst_regoff -> "LDR_BL_ldst_regoff"
        LDR LDR_H_ldst_regoff -> "LDR_H_ldst_regoff"
        LDR LDR_S_ldst_regoff -> "LDR_S_ldst_regoff"
        LDR LDR_D_ldst_regoff -> "LDR_D_ldst_regoff"
        LDR LDR_Q_ldst_regoff -> "LDR_Q_ldst_regoff"
        LDUR LDUR_B_ldst_unscaled -> "LDUR_B_ldst_unscaled"
        LDUR LDUR_H_ldst_unscaled -> "LDUR_H_ldst_unscaled"
        LDUR LDUR_S_ldst_unscaled -> "LDUR_S_ldst_unscaled"
        LDUR LDUR_D_ldst_unscaled -> "LDUR_D_ldst_unscaled"
        LDUR LDUR_Q_ldst_unscaled -> "LDUR_Q_ldst_unscaled"
        MLA MLA_asimdelem_R -> "MLA_asimdelem_R"
        MLA MLA_asimdsame_only -> "MLA_asimdsame_only"
        MLS MLS_asimdelem_R -> "MLS_asimdelem_R"
        MLS MLS_asimdsame_only -> "MLS_asimdsame_only"
        MOVI MOVI_asimdimm_N_b -> "MOVI_asimdimm_N_b"
        MOVI MOVI_asimdimm_L_hl -> "MOVI_asimdimm_L_hl"
        MOVI MOVI_asimdimm_L_sl -> "MOVI_asimdimm_L_sl"
        MOVI MOVI_asimdimm_M_sm -> "MOVI_asimdimm_M_sm"
        MOVI MOVI_asimdimm_D_ds -> "MOVI_asimdimm_D_ds"
        MOVI MOVI_asimdimm_D2_d -> "MOVI_asimdimm_D2_d"
        MUL MUL_asimdelem_R -> "MUL_asimdelem_R"
        MUL MUL_asimdsame_only -> "MUL_asimdsame_only"
        MVNI MVNI_asimdimm_L_hl -> "MVNI_asimdimm_L_hl"
        MVNI MVNI_asimdimm_L_sl -> "MVNI_asimdimm_L_sl"
        MVNI MVNI_asimdimm_M_sm -> "MVNI_asimdimm_M_sm"
        NEG NEG_asisdmisc_R -> "NEG_asisdmisc_R"
        NEG NEG_asimdmisc_R -> "NEG_asimdmisc_R"
        NOT NOT_asimdmisc_R -> "NOT_asimdmisc_R"
        ORN ORN_asimdsame_only -> "ORN_asimdsame_only"
        ORR ORR_asimdimm_L_hl -> "ORR_asimdimm_L_hl"
        ORR ORR_asimdimm_L_sl -> "ORR_asimdimm_L_sl"
        ORR ORR_asimdsame_only -> "ORR_asimdsame_only"
        PMUL PMUL_asimdsame_only -> "PMUL_asimdsame_only"
        PMULL PMULL_asimddiff_L -> "PMULL_asimddiff_L"
        RADDHN RADDHN_asimddiff_N -> "RADDHN_asimddiff_N"
        RAX1 RAX1_VVV2_cryptosha512_3 -> "RAX1_VVV2_cryptosha512_3"
        RBIT RBIT_asimdmisc_R -> "RBIT_asimdmisc_R"
        REV16 REV16_asimdmisc_R -> "REV16_asimdmisc_R"
        REV32 REV32_asimdmisc_R -> "REV32_asimdmisc_R"
        REV64 REV64_asimdmisc_R -> "REV64_asimdmisc_R"
        RSHRN RSHRN_asimdshf_N -> "RSHRN_asimdshf_N"
        RSUBHN RSUBHN_asimddiff_N -> "RSUBHN_asimddiff_N"
        SABA SABA_asimdsame_only -> "SABA_asimdsame_only"
        SABAL SABAL_asimddiff_L -> "SABAL_asimddiff_L"
        SABD SABD_asimdsame_only -> "SABD_asimdsame_only"
        SABDL SABDL_asimddiff_L -> "SABDL_asimddiff_L"
        SADALP SADALP_asimdmisc_P -> "SADALP_asimdmisc_P"
        SADDL SADDL_asimddiff_L -> "SADDL_asimddiff_L"
        SADDLP SADDLP_asimdmisc_P -> "SADDLP_asimdmisc_P"
        SADDLV SADDLV_asimdall_only -> "SADDLV_asimdall_only"
        SADDW SADDW_asimddiff_W -> "SADDW_asimddiff_W"
        SCVTF SCVTF_H32_float2fix -> "SCVTF_H32_float2fix"
        SCVTF SCVTF_S32_float2fix -> "SCVTF_S32_float2fix"
        SCVTF SCVTF_D32_float2fix -> "SCVTF_D32_float2fix"
        SCVTF SCVTF_H64_float2fix -> "SCVTF_H64_float2fix"
        SCVTF SCVTF_S64_float2fix -> "SCVTF_S64_float2fix"
        SCVTF SCVTF_D64_float2fix -> "SCVTF_D64_float2fix"
        SCVTF SCVTF_H32_float2int -> "SCVTF_H32_float2int"
        SCVTF SCVTF_S32_float2int -> "SCVTF_S32_float2int"
        SCVTF SCVTF_D32_float2int -> "SCVTF_D32_float2int"
        SCVTF SCVTF_H64_float2int -> "SCVTF_H64_float2int"
        SCVTF SCVTF_S64_float2int -> "SCVTF_S64_float2int"
        SCVTF SCVTF_D64_float2int -> "SCVTF_D64_float2int"
        SCVTF SCVTF_asisdshf_C -> "SCVTF_asisdshf_C"
        SCVTF SCVTF_asimdshf_C -> "SCVTF_asimdshf_C"
        SCVTF SCVTF_asisdmiscfp16_R -> "SCVTF_asisdmiscfp16_R"
        SCVTF SCVTF_asisdmisc_R -> "SCVTF_asisdmisc_R"
        SCVTF SCVTF_asimdmiscfp16_R -> "SCVTF_asimdmiscfp16_R"
        SCVTF SCVTF_asimdmisc_R -> "SCVTF_asimdmisc_R"
        SDOT SDOT_asimdelem_D -> "SDOT_asimdelem_D"
        SDOT SDOT_asimdsame2_D -> "SDOT_asimdsame2_D"
        SHA1C SHA1C_QSV_cryptosha3 -> "SHA1C_QSV_cryptosha3"
        SHA1H SHA1H_SS_cryptosha2 -> "SHA1H_SS_cryptosha2"
        SHA1M SHA1M_QSV_cryptosha3 -> "SHA1M_QSV_cryptosha3"
        SHA1P SHA1P_QSV_cryptosha3 -> "SHA1P_QSV_cryptosha3"
        SHA1SU0 SHA1SU0_VVV_cryptosha3 -> "SHA1SU0_VVV_cryptosha3"
        SHA1SU1 SHA1SU1_VV_cryptosha2 -> "SHA1SU1_VV_cryptosha2"
        SHA256H SHA256H_QQV_cryptosha3 -> "SHA256H_QQV_cryptosha3"
        SHA256H2 SHA256H2_QQV_cryptosha3 -> "SHA256H2_QQV_cryptosha3"
        SHA256SU0 SHA256SU0_VV_cryptosha2 -> "SHA256SU0_VV_cryptosha2"
        SHA256SU1 SHA256SU1_VVV_cryptosha3 -> "SHA256SU1_VVV_cryptosha3"
        SHA512H SHA512H_QQV_cryptosha512_3 -> "SHA512H_QQV_cryptosha512_3"
        SHA512H2
          SHA512H2_QQV_cryptosha512_3 -> "SHA512H2_QQV_cryptosha512_3"
        SHA512SU0
          SHA512SU0_VV2_cryptosha512_2 -> "SHA512SU0_VV2_cryptosha512_2"
        SHA512SU1
          SHA512SU1_VVV2_cryptosha512_3 -> "SHA512SU1_VVV2_cryptosha512_3"
        SHADD SHADD_asimdsame_only -> "SHADD_asimdsame_only"
        SHL SHL_asisdshf_R -> "SHL_asisdshf_R"
        SHL SHL_asimdshf_R -> "SHL_asimdshf_R"
        SHLL SHLL_asimdmisc_S -> "SHLL_asimdmisc_S"
        SHRN SHRN_asimdshf_N -> "SHRN_asimdshf_N"
        SHSUB SHSUB_asimdsame_only -> "SHSUB_asimdsame_only"
        SLI SLI_asisdshf_R -> "SLI_asisdshf_R"
        SLI SLI_asimdshf_R -> "SLI_asimdshf_R"
        SM3PARTW1
          SM3PARTW1_VVV4_cryptosha512_3 -> "SM3PARTW1_VVV4_cryptosha512_3"
        SM3PARTW2
          SM3PARTW2_VVV4_cryptosha512_3 -> "SM3PARTW2_VVV4_cryptosha512_3"
        SM3SS1 SM3SS1_VVV4_crypto4 -> "SM3SS1_VVV4_crypto4"
        SM3TT1A SM3TT1A_VVV4_crypto3_imm2 -> "SM3TT1A_VVV4_crypto3_imm2"
        SM3TT1B SM3TT1B_VVV4_crypto3_imm2 -> "SM3TT1B_VVV4_crypto3_imm2"
        SM3TT2A SM3TT2A_VVV4_crypto3_imm2 -> "SM3TT2A_VVV4_crypto3_imm2"
        SM3TT2B SM3TT2B_VVV_crypto3_imm2 -> "SM3TT2B_VVV_crypto3_imm2"
        SM4E SM4E_VV4_cryptosha512_2 -> "SM4E_VV4_cryptosha512_2"
        SM4EKEY
          SM4EKEY_VVV4_cryptosha512_3 -> "SM4EKEY_VVV4_cryptosha512_3"
        SMAX SMAX_asimdsame_only -> "SMAX_asimdsame_only"
        SMAXP SMAXP_asimdsame_only -> "SMAXP_asimdsame_only"
        SMAXV SMAXV_asimdall_only -> "SMAXV_asimdall_only"
        SMIN SMIN_asimdsame_only -> "SMIN_asimdsame_only"
        SMINP SMINP_asimdsame_only -> "SMINP_asimdsame_only"
        SMINV SMINV_asimdall_only -> "SMINV_asimdall_only"
        SMLAL SMLAL_asimdelem_L -> "SMLAL_asimdelem_L"
        SMLAL SMLAL_asimddiff_L -> "SMLAL_asimddiff_L"
        SMLSL SMLSL_asimdelem_L -> "SMLSL_asimdelem_L"
        SMLSL SMLSL_asimddiff_L -> "SMLSL_asimddiff_L"
        SMOV SMOV_asimdins_W_w -> "SMOV_asimdins_W_w"
        SMOV SMOV_asimdins_X_x -> "SMOV_asimdins_X_x"
        SMULL SMULL_asimdelem_L -> "SMULL_asimdelem_L"
        SMULL SMULL_asimddiff_L -> "SMULL_asimddiff_L"
        SQABS SQABS_asisdmisc_R -> "SQABS_asisdmisc_R"
        SQABS SQABS_asimdmisc_R -> "SQABS_asimdmisc_R"
        SQADD SQADD_asisdsame_only -> "SQADD_asisdsame_only"
        SQADD SQADD_asimdsame_only -> "SQADD_asimdsame_only"
        SQDMLAL SQDMLAL_asisdelem_L -> "SQDMLAL_asisdelem_L"
        SQDMLAL SQDMLAL_asimdelem_L -> "SQDMLAL_asimdelem_L"
        SQDMLAL SQDMLAL_asisddiff_only -> "SQDMLAL_asisddiff_only"
        SQDMLAL SQDMLAL_asimddiff_L -> "SQDMLAL_asimddiff_L"
        SQDMLSL SQDMLSL_asisdelem_L -> "SQDMLSL_asisdelem_L"
        SQDMLSL SQDMLSL_asimdelem_L -> "SQDMLSL_asimdelem_L"
        SQDMLSL SQDMLSL_asisddiff_only -> "SQDMLSL_asisddiff_only"
        SQDMLSL SQDMLSL_asimddiff_L -> "SQDMLSL_asimddiff_L"
        SQDMULH SQDMULH_asisdelem_R -> "SQDMULH_asisdelem_R"
        SQDMULH SQDMULH_asimdelem_R -> "SQDMULH_asimdelem_R"
        SQDMULH SQDMULH_asisdsame_only -> "SQDMULH_asisdsame_only"
        SQDMULH SQDMULH_asimdsame_only -> "SQDMULH_asimdsame_only"
        SQDMULL SQDMULL_asisdelem_L -> "SQDMULL_asisdelem_L"
        SQDMULL SQDMULL_asimdelem_L -> "SQDMULL_asimdelem_L"
        SQDMULL SQDMULL_asisddiff_only -> "SQDMULL_asisddiff_only"
        SQDMULL SQDMULL_asimddiff_L -> "SQDMULL_asimddiff_L"
        SQNEG SQNEG_asisdmisc_R -> "SQNEG_asisdmisc_R"
        SQNEG SQNEG_asimdmisc_R -> "SQNEG_asimdmisc_R"
        SQRDMLAH SQRDMLAH_asisdelem_R -> "SQRDMLAH_asisdelem_R"
        SQRDMLAH SQRDMLAH_asimdelem_R -> "SQRDMLAH_asimdelem_R"
        SQRDMLAH SQRDMLAH_asisdsame2_only -> "SQRDMLAH_asisdsame2_only"
        SQRDMLAH SQRDMLAH_asimdsame2_only -> "SQRDMLAH_asimdsame2_only"
        SQRDMLSH SQRDMLSH_asisdelem_R -> "SQRDMLSH_asisdelem_R"
        SQRDMLSH SQRDMLSH_asimdelem_R -> "SQRDMLSH_asimdelem_R"
        SQRDMLSH SQRDMLSH_asisdsame2_only -> "SQRDMLSH_asisdsame2_only"
        SQRDMLSH SQRDMLSH_asimdsame2_only -> "SQRDMLSH_asimdsame2_only"
        SQRDMULH SQRDMULH_asisdelem_R -> "SQRDMULH_asisdelem_R"
        SQRDMULH SQRDMULH_asimdelem_R -> "SQRDMULH_asimdelem_R"
        SQRDMULH SQRDMULH_asisdsame_only -> "SQRDMULH_asisdsame_only"
        SQRDMULH SQRDMULH_asimdsame_only -> "SQRDMULH_asimdsame_only"
        SQRSHL SQRSHL_asisdsame_only -> "SQRSHL_asisdsame_only"
        SQRSHL SQRSHL_asimdsame_only -> "SQRSHL_asimdsame_only"
        SQRSHRN SQRSHRN_asisdshf_N -> "SQRSHRN_asisdshf_N"
        SQRSHRN SQRSHRN_asimdshf_N -> "SQRSHRN_asimdshf_N"
        SQRSHRUN SQRSHRUN_asisdshf_N -> "SQRSHRUN_asisdshf_N"
        SQRSHRUN SQRSHRUN_asimdshf_N -> "SQRSHRUN_asimdshf_N"
        SQSHL SQSHL_asisdshf_R -> "SQSHL_asisdshf_R"
        SQSHL SQSHL_asimdshf_R -> "SQSHL_asimdshf_R"
        SQSHL SQSHL_asisdsame_only -> "SQSHL_asisdsame_only"
        SQSHL SQSHL_asimdsame_only -> "SQSHL_asimdsame_only"
        SQSHLU SQSHLU_asisdshf_R -> "SQSHLU_asisdshf_R"
        SQSHLU SQSHLU_asimdshf_R -> "SQSHLU_asimdshf_R"
        SQSHRN SQSHRN_asisdshf_N -> "SQSHRN_asisdshf_N"
        SQSHRN SQSHRN_asimdshf_N -> "SQSHRN_asimdshf_N"
        SQSHRUN SQSHRUN_asisdshf_N -> "SQSHRUN_asisdshf_N"
        SQSHRUN SQSHRUN_asimdshf_N -> "SQSHRUN_asimdshf_N"
        SQSUB SQSUB_asisdsame_only -> "SQSUB_asisdsame_only"
        SQSUB SQSUB_asimdsame_only -> "SQSUB_asimdsame_only"
        SQXTN SQXTN_asisdmisc_N -> "SQXTN_asisdmisc_N"
        SQXTN SQXTN_asimdmisc_N -> "SQXTN_asimdmisc_N"
        SQXTUN SQXTUN_asisdmisc_N -> "SQXTUN_asisdmisc_N"
        SQXTUN SQXTUN_asimdmisc_N -> "SQXTUN_asimdmisc_N"
        SRHADD SRHADD_asimdsame_only -> "SRHADD_asimdsame_only"
        SRI SRI_asisdshf_R -> "SRI_asisdshf_R"
        SRI SRI_asimdshf_R -> "SRI_asimdshf_R"
        SRSHL SRSHL_asisdsame_only -> "SRSHL_asisdsame_only"
        SRSHL SRSHL_asimdsame_only -> "SRSHL_asimdsame_only"
        SRSHR SRSHR_asisdshf_R -> "SRSHR_asisdshf_R"
        SRSHR SRSHR_asimdshf_R -> "SRSHR_asimdshf_R"
        SRSRA SRSRA_asisdshf_R -> "SRSRA_asisdshf_R"
        SRSRA SRSRA_asimdshf_R -> "SRSRA_asimdshf_R"
        SSHL SSHL_asisdsame_only -> "SSHL_asisdsame_only"
        SSHL SSHL_asimdsame_only -> "SSHL_asimdsame_only"
        SSHLL SSHLL_asimdshf_L -> "SSHLL_asimdshf_L"
        SSHR SSHR_asisdshf_R -> "SSHR_asisdshf_R"
        SSHR SSHR_asimdshf_R -> "SSHR_asimdshf_R"
        SSRA SSRA_asisdshf_R -> "SSRA_asisdshf_R"
        SSRA SSRA_asimdshf_R -> "SSRA_asimdshf_R"
        SSUBL SSUBL_asimddiff_L -> "SSUBL_asimddiff_L"
        SSUBW SSUBW_asimddiff_W -> "SSUBW_asimddiff_W"
        ST1 ST1_asisdlse_R1_1v -> "ST1_asisdlse_R1_1v"
        ST1 ST1_asisdlse_R2_2v -> "ST1_asisdlse_R2_2v"
        ST1 ST1_asisdlse_R3_3v -> "ST1_asisdlse_R3_3v"
        ST1 ST1_asisdlse_R4_4v -> "ST1_asisdlse_R4_4v"
        ST1 ST1_asisdlsep_I1_i1 -> "ST1_asisdlsep_I1_i1"
        ST1 ST1_asisdlsep_R1_r1 -> "ST1_asisdlsep_R1_r1"
        ST1 ST1_asisdlsep_I2_i2 -> "ST1_asisdlsep_I2_i2"
        ST1 ST1_asisdlsep_R2_r2 -> "ST1_asisdlsep_R2_r2"
        ST1 ST1_asisdlsep_I3_i3 -> "ST1_asisdlsep_I3_i3"
        ST1 ST1_asisdlsep_R3_r3 -> "ST1_asisdlsep_R3_r3"
        ST1 ST1_asisdlsep_I4_i4 -> "ST1_asisdlsep_I4_i4"
        ST1 ST1_asisdlsep_R4_r4 -> "ST1_asisdlsep_R4_r4"
        ST1 ST1_asisdlso_B1_1b -> "ST1_asisdlso_B1_1b"
        ST1 ST1_asisdlso_H1_1h -> "ST1_asisdlso_H1_1h"
        ST1 ST1_asisdlso_S1_1s -> "ST1_asisdlso_S1_1s"
        ST1 ST1_asisdlso_D1_1d -> "ST1_asisdlso_D1_1d"
        ST1 ST1_asisdlsop_B1_i1b -> "ST1_asisdlsop_B1_i1b"
        ST1 ST1_asisdlsop_BX1_r1b -> "ST1_asisdlsop_BX1_r1b"
        ST1 ST1_asisdlsop_H1_i1h -> "ST1_asisdlsop_H1_i1h"
        ST1 ST1_asisdlsop_HX1_r1h -> "ST1_asisdlsop_HX1_r1h"
        ST1 ST1_asisdlsop_S1_i1s -> "ST1_asisdlsop_S1_i1s"
        ST1 ST1_asisdlsop_SX1_r1s -> "ST1_asisdlsop_SX1_r1s"
        ST1 ST1_asisdlsop_D1_i1d -> "ST1_asisdlsop_D1_i1d"
        ST1 ST1_asisdlsop_DX1_r1d -> "ST1_asisdlsop_DX1_r1d"
        ST2 ST2_asisdlse_R2 -> "ST2_asisdlse_R2"
        ST2 ST2_asisdlsep_I2_i -> "ST2_asisdlsep_I2_i"
        ST2 ST2_asisdlsep_R2_r -> "ST2_asisdlsep_R2_r"
        ST2 ST2_asisdlso_B2_2b -> "ST2_asisdlso_B2_2b"
        ST2 ST2_asisdlso_H2_2h -> "ST2_asisdlso_H2_2h"
        ST2 ST2_asisdlso_S2_2s -> "ST2_asisdlso_S2_2s"
        ST2 ST2_asisdlso_D2_2d -> "ST2_asisdlso_D2_2d"
        ST2 ST2_asisdlsop_B2_i2b -> "ST2_asisdlsop_B2_i2b"
        ST2 ST2_asisdlsop_BX2_r2b -> "ST2_asisdlsop_BX2_r2b"
        ST2 ST2_asisdlsop_H2_i2h -> "ST2_asisdlsop_H2_i2h"
        ST2 ST2_asisdlsop_HX2_r2h -> "ST2_asisdlsop_HX2_r2h"
        ST2 ST2_asisdlsop_S2_i2s -> "ST2_asisdlsop_S2_i2s"
        ST2 ST2_asisdlsop_SX2_r2s -> "ST2_asisdlsop_SX2_r2s"
        ST2 ST2_asisdlsop_D2_i2d -> "ST2_asisdlsop_D2_i2d"
        ST2 ST2_asisdlsop_DX2_r2d -> "ST2_asisdlsop_DX2_r2d"
        ST3 ST3_asisdlse_R3 -> "ST3_asisdlse_R3"
        ST3 ST3_asisdlsep_I3_i -> "ST3_asisdlsep_I3_i"
        ST3 ST3_asisdlsep_R3_r -> "ST3_asisdlsep_R3_r"
        ST3 ST3_asisdlso_B3_3b -> "ST3_asisdlso_B3_3b"
        ST3 ST3_asisdlso_H3_3h -> "ST3_asisdlso_H3_3h"
        ST3 ST3_asisdlso_S3_3s -> "ST3_asisdlso_S3_3s"
        ST3 ST3_asisdlso_D3_3d -> "ST3_asisdlso_D3_3d"
        ST3 ST3_asisdlsop_B3_i3b -> "ST3_asisdlsop_B3_i3b"
        ST3 ST3_asisdlsop_BX3_r3b -> "ST3_asisdlsop_BX3_r3b"
        ST3 ST3_asisdlsop_H3_i3h -> "ST3_asisdlsop_H3_i3h"
        ST3 ST3_asisdlsop_HX3_r3h -> "ST3_asisdlsop_HX3_r3h"
        ST3 ST3_asisdlsop_S3_i3s -> "ST3_asisdlsop_S3_i3s"
        ST3 ST3_asisdlsop_SX3_r3s -> "ST3_asisdlsop_SX3_r3s"
        ST3 ST3_asisdlsop_D3_i3d -> "ST3_asisdlsop_D3_i3d"
        ST3 ST3_asisdlsop_DX3_r3d -> "ST3_asisdlsop_DX3_r3d"
        ST4 ST4_asisdlse_R4 -> "ST4_asisdlse_R4"
        ST4 ST4_asisdlsep_I4_i -> "ST4_asisdlsep_I4_i"
        ST4 ST4_asisdlsep_R4_r -> "ST4_asisdlsep_R4_r"
        ST4 ST4_asisdlso_B4_4b -> "ST4_asisdlso_B4_4b"
        ST4 ST4_asisdlso_H4_4h -> "ST4_asisdlso_H4_4h"
        ST4 ST4_asisdlso_S4_4s -> "ST4_asisdlso_S4_4s"
        ST4 ST4_asisdlso_D4_4d -> "ST4_asisdlso_D4_4d"
        ST4 ST4_asisdlsop_B4_i4b -> "ST4_asisdlsop_B4_i4b"
        ST4 ST4_asisdlsop_BX4_r4b -> "ST4_asisdlsop_BX4_r4b"
        ST4 ST4_asisdlsop_H4_i4h -> "ST4_asisdlsop_H4_i4h"
        ST4 ST4_asisdlsop_HX4_r4h -> "ST4_asisdlsop_HX4_r4h"
        ST4 ST4_asisdlsop_S4_i4s -> "ST4_asisdlsop_S4_i4s"
        ST4 ST4_asisdlsop_SX4_r4s -> "ST4_asisdlsop_SX4_r4s"
        ST4 ST4_asisdlsop_D4_i4d -> "ST4_asisdlsop_D4_i4d"
        ST4 ST4_asisdlsop_DX4_r4d -> "ST4_asisdlsop_DX4_r4d"
        STNP STNP_S_ldstnapair_offs -> "STNP_S_ldstnapair_offs"
        STNP STNP_D_ldstnapair_offs -> "STNP_D_ldstnapair_offs"
        STNP STNP_Q_ldstnapair_offs -> "STNP_Q_ldstnapair_offs"
        STP STP_S_ldstpair_post -> "STP_S_ldstpair_post"
        STP STP_D_ldstpair_post -> "STP_D_ldstpair_post"
        STP STP_Q_ldstpair_post -> "STP_Q_ldstpair_post"
        STP STP_S_ldstpair_pre -> "STP_S_ldstpair_pre"
        STP STP_D_ldstpair_pre -> "STP_D_ldstpair_pre"
        STP STP_Q_ldstpair_pre -> "STP_Q_ldstpair_pre"
        STP STP_S_ldstpair_off -> "STP_S_ldstpair_off"
        STP STP_D_ldstpair_off -> "STP_D_ldstpair_off"
        STP STP_Q_ldstpair_off -> "STP_Q_ldstpair_off"
        STR STR_B_ldst_immpost -> "STR_B_ldst_immpost"
        STR STR_H_ldst_immpost -> "STR_H_ldst_immpost"
        STR STR_S_ldst_immpost -> "STR_S_ldst_immpost"
        STR STR_D_ldst_immpost -> "STR_D_ldst_immpost"
        STR STR_Q_ldst_immpost -> "STR_Q_ldst_immpost"
        STR STR_B_ldst_immpre -> "STR_B_ldst_immpre"
        STR STR_H_ldst_immpre -> "STR_H_ldst_immpre"
        STR STR_S_ldst_immpre -> "STR_S_ldst_immpre"
        STR STR_D_ldst_immpre -> "STR_D_ldst_immpre"
        STR STR_Q_ldst_immpre -> "STR_Q_ldst_immpre"
        STR STR_B_ldst_pos -> "STR_B_ldst_pos"
        STR STR_H_ldst_pos -> "STR_H_ldst_pos"
        STR STR_S_ldst_pos -> "STR_S_ldst_pos"
        STR STR_D_ldst_pos -> "STR_D_ldst_pos"
        STR STR_Q_ldst_pos -> "STR_Q_ldst_pos"
        STR STR_B_ldst_regoff -> "STR_B_ldst_regoff"
        STR STR_BL_ldst_regoff -> "STR_BL_ldst_regoff"
        STR STR_H_ldst_regoff -> "STR_H_ldst_regoff"
        STR STR_S_ldst_regoff -> "STR_S_ldst_regoff"
        STR STR_D_ldst_regoff -> "STR_D_ldst_regoff"
        STR STR_Q_ldst_regoff -> "STR_Q_ldst_regoff"
        STUR STUR_B_ldst_unscaled -> "STUR_B_ldst_unscaled"
        STUR STUR_H_ldst_unscaled -> "STUR_H_ldst_unscaled"
        STUR STUR_S_ldst_unscaled -> "STUR_S_ldst_unscaled"
        STUR STUR_D_ldst_unscaled -> "STUR_D_ldst_unscaled"
        STUR STUR_Q_ldst_unscaled -> "STUR_Q_ldst_unscaled"
        SUB SUB_asisdsame_only -> "SUB_asisdsame_only"
        SUB SUB_asimdsame_only -> "SUB_asimdsame_only"
        SUBHN SUBHN_asimddiff_N -> "SUBHN_asimddiff_N"
        SUQADD SUQADD_asisdmisc_R -> "SUQADD_asisdmisc_R"
        SUQADD SUQADD_asimdmisc_R -> "SUQADD_asimdmisc_R"
        TBL TBL_asimdtbl_L2_2 -> "TBL_asimdtbl_L2_2"
        TBL TBL_asimdtbl_L3_3 -> "TBL_asimdtbl_L3_3"
        TBL TBL_asimdtbl_L4_4 -> "TBL_asimdtbl_L4_4"
        TBL TBL_asimdtbl_L1_1 -> "TBL_asimdtbl_L1_1"
        TBX TBX_asimdtbl_L2_2 -> "TBX_asimdtbl_L2_2"
        TBX TBX_asimdtbl_L3_3 -> "TBX_asimdtbl_L3_3"
        TBX TBX_asimdtbl_L4_4 -> "TBX_asimdtbl_L4_4"
        TBX TBX_asimdtbl_L1_1 -> "TBX_asimdtbl_L1_1"
        TRN1 TRN1_asimdperm_only -> "TRN1_asimdperm_only"
        TRN2 TRN2_asimdperm_only -> "TRN2_asimdperm_only"
        UABA UABA_asimdsame_only -> "UABA_asimdsame_only"
        UABAL UABAL_asimddiff_L -> "UABAL_asimddiff_L"
        UABD UABD_asimdsame_only -> "UABD_asimdsame_only"
        UABDL UABDL_asimddiff_L -> "UABDL_asimddiff_L"
        UADALP UADALP_asimdmisc_P -> "UADALP_asimdmisc_P"
        UADDL UADDL_asimddiff_L -> "UADDL_asimddiff_L"
        UADDLP UADDLP_asimdmisc_P -> "UADDLP_asimdmisc_P"
        UADDLV UADDLV_asimdall_only -> "UADDLV_asimdall_only"
        UADDW UADDW_asimddiff_W -> "UADDW_asimddiff_W"
        UCVTF UCVTF_H32_float2fix -> "UCVTF_H32_float2fix"
        UCVTF UCVTF_S32_float2fix -> "UCVTF_S32_float2fix"
        UCVTF UCVTF_D32_float2fix -> "UCVTF_D32_float2fix"
        UCVTF UCVTF_H64_float2fix -> "UCVTF_H64_float2fix"
        UCVTF UCVTF_S64_float2fix -> "UCVTF_S64_float2fix"
        UCVTF UCVTF_D64_float2fix -> "UCVTF_D64_float2fix"
        UCVTF UCVTF_H32_float2int -> "UCVTF_H32_float2int"
        UCVTF UCVTF_S32_float2int -> "UCVTF_S32_float2int"
        UCVTF UCVTF_D32_float2int -> "UCVTF_D32_float2int"
        UCVTF UCVTF_H64_float2int -> "UCVTF_H64_float2int"
        UCVTF UCVTF_S64_float2int -> "UCVTF_S64_float2int"
        UCVTF UCVTF_D64_float2int -> "UCVTF_D64_float2int"
        UCVTF UCVTF_asisdshf_C -> "UCVTF_asisdshf_C"
        UCVTF UCVTF_asimdshf_C -> "UCVTF_asimdshf_C"
        UCVTF UCVTF_asisdmiscfp16_R -> "UCVTF_asisdmiscfp16_R"
        UCVTF UCVTF_asisdmisc_R -> "UCVTF_asisdmisc_R"
        UCVTF UCVTF_asimdmiscfp16_R -> "UCVTF_asimdmiscfp16_R"
        UCVTF UCVTF_asimdmisc_R -> "UCVTF_asimdmisc_R"
        UDOT UDOT_asimdelem_D -> "UDOT_asimdelem_D"
        UDOT UDOT_asimdsame2_D -> "UDOT_asimdsame2_D"
        UHADD UHADD_asimdsame_only -> "UHADD_asimdsame_only"
        UHSUB UHSUB_asimdsame_only -> "UHSUB_asimdsame_only"
        UMAX UMAX_asimdsame_only -> "UMAX_asimdsame_only"
        UMAXP UMAXP_asimdsame_only -> "UMAXP_asimdsame_only"
        UMAXV UMAXV_asimdall_only -> "UMAXV_asimdall_only"
        UMIN UMIN_asimdsame_only -> "UMIN_asimdsame_only"
        UMINP UMINP_asimdsame_only -> "UMINP_asimdsame_only"
        UMINV UMINV_asimdall_only -> "UMINV_asimdall_only"
        UMLAL UMLAL_asimdelem_L -> "UMLAL_asimdelem_L"
        UMLAL UMLAL_asimddiff_L -> "UMLAL_asimddiff_L"
        UMLSL UMLSL_asimdelem_L -> "UMLSL_asimdelem_L"
        UMLSL UMLSL_asimddiff_L -> "UMLSL_asimddiff_L"
        UMOV UMOV_asimdins_W_w -> "UMOV_asimdins_W_w"
        UMOV UMOV_asimdins_X_x -> "UMOV_asimdins_X_x"
        UMULL UMULL_asimdelem_L -> "UMULL_asimdelem_L"
        UMULL UMULL_asimddiff_L -> "UMULL_asimddiff_L"
        UQADD UQADD_asisdsame_only -> "UQADD_asisdsame_only"
        UQADD UQADD_asimdsame_only -> "UQADD_asimdsame_only"
        UQRSHL UQRSHL_asisdsame_only -> "UQRSHL_asisdsame_only"
        UQRSHL UQRSHL_asimdsame_only -> "UQRSHL_asimdsame_only"
        UQRSHRN UQRSHRN_asisdshf_N -> "UQRSHRN_asisdshf_N"
        UQRSHRN UQRSHRN_asimdshf_N -> "UQRSHRN_asimdshf_N"
        UQSHL UQSHL_asisdshf_R -> "UQSHL_asisdshf_R"
        UQSHL UQSHL_asimdshf_R -> "UQSHL_asimdshf_R"
        UQSHL UQSHL_asisdsame_only -> "UQSHL_asisdsame_only"
        UQSHL UQSHL_asimdsame_only -> "UQSHL_asimdsame_only"
        UQSHRN UQSHRN_asisdshf_N -> "UQSHRN_asisdshf_N"
        UQSHRN UQSHRN_asimdshf_N -> "UQSHRN_asimdshf_N"
        UQSUB UQSUB_asisdsame_only -> "UQSUB_asisdsame_only"
        UQSUB UQSUB_asimdsame_only -> "UQSUB_asimdsame_only"
        UQXTN UQXTN_asisdmisc_N -> "UQXTN_asisdmisc_N"
        UQXTN UQXTN_asimdmisc_N -> "UQXTN_asimdmisc_N"
        URECPE URECPE_asimdmisc_R -> "URECPE_asimdmisc_R"
        URHADD URHADD_asimdsame_only -> "URHADD_asimdsame_only"
        URSHL URSHL_asisdsame_only -> "URSHL_asisdsame_only"
        URSHL URSHL_asimdsame_only -> "URSHL_asimdsame_only"
        URSHR URSHR_asisdshf_R -> "URSHR_asisdshf_R"
        URSHR URSHR_asimdshf_R -> "URSHR_asimdshf_R"
        URSQRTE URSQRTE_asimdmisc_R -> "URSQRTE_asimdmisc_R"
        URSRA URSRA_asisdshf_R -> "URSRA_asisdshf_R"
        URSRA URSRA_asimdshf_R -> "URSRA_asimdshf_R"
        USHL USHL_asisdsame_only -> "USHL_asisdsame_only"
        USHL USHL_asimdsame_only -> "USHL_asimdsame_only"
        USHLL USHLL_asimdshf_L -> "USHLL_asimdshf_L"
        USHR USHR_asisdshf_R -> "USHR_asisdshf_R"
        USHR USHR_asimdshf_R -> "USHR_asimdshf_R"
        USQADD USQADD_asisdmisc_R -> "USQADD_asisdmisc_R"
        USQADD USQADD_asimdmisc_R -> "USQADD_asimdmisc_R"
        USRA USRA_asisdshf_R -> "USRA_asisdshf_R"
        USRA USRA_asimdshf_R -> "USRA_asimdshf_R"
        USUBL USUBL_asimddiff_L -> "USUBL_asimddiff_L"
        USUBW USUBW_asimddiff_W -> "USUBW_asimddiff_W"
        UZP1 UZP1_asimdperm_only -> "UZP1_asimdperm_only"
        UZP2 UZP2_asimdperm_only -> "UZP2_asimdperm_only"
        XAR XAR_VVV2_crypto3_imm6 -> "XAR_VVV2_crypto3_imm6"
        XTN XTN_asimdmisc_N -> "XTN_asimdmisc_N"
        ZIP1 ZIP1_asimdperm_only -> "ZIP1_asimdperm_only"
        ZIP2 ZIP2_asimdperm_only -> "ZIP2_asimdperm_only"
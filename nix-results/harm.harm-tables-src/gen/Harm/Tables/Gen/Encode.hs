{-# LANGUAGE DataKinds #-}
module Harm.Tables.Gen.Encode where
import Harm.Tables.Internal.Encode

encode :: Insn -> Encode Word32
encode insn
  = case insn of
        ADC ADC_32_addsub_carry -> encode_B17 (encode_inner_B17 436207616)
        ADC ADC_64_addsub_carry -> encode_B19 (encode_inner_B19 2583691264)
        ADCS ADCS_32_addsub_carry -> encode_B17
                                       (encode_inner_B17 973078528)
        ADCS ADCS_64_addsub_carry -> encode_B19
                                       (encode_inner_B19 3120562176)
        ADD ADD_32_addsub_ext -> encode_B89 (encode_inner_B89 186646528)
        ADD ADD_64_addsub_ext -> encode_B90 (encode_inner_B90 2334130176)
        ADD ADD_32_addsub_imm -> encode_B78 (encode_inner_B78 285212672)
        ADD (ADD_64_addsub_imm x1 x2 x3 x4) -> encode_B76
                                                 (encode_inner_B76 2432696320)
                                                 x1
                                                 x2
                                                 x3
                                                 x4
        ADD (ADD_32_addsub_shift x1 x2 x3 x4) -> encode_B77
                                                   (encode_inner_B77 184549376)
                                                   x1
                                                   x2
                                                   x3
                                                   x4
        ADD ADD_64_addsub_shift -> encode_B80 (encode_inner_B80 2332033024)
        ADDS ADDS_32S_addsub_ext -> encode_B84 (encode_inner_B84 723517440)
        ADDS ADDS_64S_addsub_ext -> encode_B85
                                      (encode_inner_B85 2871001088)
        ADDS (ADDS_32S_addsub_imm x1 x2 x3 x4) -> encode_B70
                                                    (encode_inner_B70 822083584)
                                                    x1
                                                    x2
                                                    x3
                                                    x4
        ADDS (ADDS_64S_addsub_imm x1 x2 x3 x4) -> encode_B67
                                                    (encode_inner_B67 2969567232)
                                                    x1
                                                    x2
                                                    x3
                                                    x4
        ADDS (ADDS_32_addsub_shift x1 x2 x3 x4) -> encode_B77
                                                     (encode_inner_B77 721420288)
                                                     x1
                                                     x2
                                                     x3
                                                     x4
        ADDS ADDS_64_addsub_shift -> encode_B80
                                       (encode_inner_B80 2868903936)
        ADR (ADR_only_pcreladdr x1 x2) -> encode_B12
                                            (encode_inner_B12 268435456)
                                            x1
                                            x2
        ADRP (ADRP_only_pcreladdr x1 x2) -> encode_B12
                                              (encode_inner_B12 2415919104)
                                              x1
                                              x2
        AND AND_32_log_imm -> encode_B33 (encode_inner_B33 301989888)
        AND AND_64_log_imm -> encode_B28 (encode_inner_B28 2449473536)
        AND (AND_32_log_shift x1 x2 x3 x4) -> encode_B77
                                                (encode_inner_B77 167772160)
                                                x1
                                                x2
                                                x3
                                                x4
        AND AND_64_log_shift -> encode_B80 (encode_inner_B80 2315255808)
        ANDS ANDS_32S_log_imm -> encode_B21 (encode_inner_B21 1912602624)
        ANDS ANDS_64S_log_imm -> encode_B22 (encode_inner_B22 4060086272)
        ANDS (ANDS_32_log_shift x1 x2 x3 x4) -> encode_B77
                                                  (encode_inner_B77 1778384896)
                                                  x1
                                                  x2
                                                  x3
                                                  x4
        ANDS ANDS_64_log_shift -> encode_B80 (encode_inner_B80 3925868544)
        ASRV ASRV_32_dp_2src -> encode_B17 (encode_inner_B17 448800768)
        ASRV ASRV_64_dp_2src -> encode_B19 (encode_inner_B19 2596284416)
        AUTDA AUTDA_64P_dp_1src -> encode_B11 (encode_inner_B11 3670087680)
        AUTDZA AUTDZA_64Z_dp_1src -> encode_B1 (encode_inner_B1 3670096864)
        AUTDB AUTDB_64P_dp_1src -> encode_B11 (encode_inner_B11 3670088704)
        AUTDZB AUTDZB_64Z_dp_1src -> encode_B1 (encode_inner_B1 3670097888)
        AUTIA AUTIA_64P_dp_1src -> encode_B11 (encode_inner_B11 3670085632)
        AUTIZA AUTIZA_64Z_dp_1src -> encode_B1 (encode_inner_B1 3670094816)
        AUTIA1716 AUTIA1716_HI_system -> encode_B0
                                           (encode_inner_B0 3573752223)
        AUTIASP AUTIASP_HI_system -> encode_B0 (encode_inner_B0 3573752767)
        AUTIAZ AUTIAZ_HI_system -> encode_B0 (encode_inner_B0 3573752735)
        AUTIB AUTIB_64P_dp_1src -> encode_B11 (encode_inner_B11 3670086656)
        AUTIZB AUTIZB_64Z_dp_1src -> encode_B1 (encode_inner_B1 3670095840)
        AUTIB1716 AUTIB1716_HI_system -> encode_B0
                                           (encode_inner_B0 3573752287)
        AUTIBSP AUTIBSP_HI_system -> encode_B0 (encode_inner_B0 3573752831)
        AUTIBZ AUTIBZ_HI_system -> encode_B0 (encode_inner_B0 3573752799)
        B B_only_branch_imm -> encode_B6 (encode_inner_B6 335544320)
        B B_only_condbranch -> encode_B15 (encode_inner_B15 1409286144)
        BFM BFM_32M_bitfield -> encode_B57 (encode_inner_B57 855638016)
        BFM BFM_64M_bitfield -> encode_B60 (encode_inner_B60 3007315968)
        BIC (BIC_32_log_shift x1 x2 x3 x4) -> encode_B77
                                                (encode_inner_B77 169869312)
                                                x1
                                                x2
                                                x3
                                                x4
        BIC BIC_64_log_shift -> encode_B80 (encode_inner_B80 2317352960)
        BICS (BICS_32_log_shift x1 x2 x3 x4) -> encode_B77
                                                  (encode_inner_B77 1780482048)
                                                  x1
                                                  x2
                                                  x3
                                                  x4
        BICS BICS_64_log_shift -> encode_B80 (encode_inner_B80 3927965696)
        BL BL_only_branch_imm -> encode_B6 (encode_inner_B6 2483027968)
        BLR BLR_64_branch_reg -> encode_B2 (encode_inner_B2 3594452992)
        BLRAAZ BLRAAZ_64_branch_reg -> encode_B2
                                         (encode_inner_B2 3594455071)
        BLRAA BLRAA_64P_branch_reg -> encode_B13
                                        (encode_inner_B13 3611232256)
        BLRABZ BLRABZ_64_branch_reg -> encode_B2
                                         (encode_inner_B2 3594456095)
        BLRAB BLRAB_64P_branch_reg -> encode_B13
                                        (encode_inner_B13 3611233280)
        BR BR_64_branch_reg -> encode_B2 (encode_inner_B2 3592355840)
        BRAAZ BRAAZ_64_branch_reg -> encode_B2 (encode_inner_B2 3592357919)
        BRAA BRAA_64P_branch_reg -> encode_B13
                                      (encode_inner_B13 3609135104)
        BRABZ BRABZ_64_branch_reg -> encode_B2 (encode_inner_B2 3592358943)
        BRAB BRAB_64P_branch_reg -> encode_B13
                                      (encode_inner_B13 3609136128)
        BRK BRK_EX_exception -> encode_B4 (encode_inner_B4 3558866944)
        CAS CAS_C32_ldstexcl -> encode_B46 (encode_inner_B46 2292218880)
        CASA CASA_C32_ldstexcl -> encode_B46 (encode_inner_B46 2296413184)
        CASAL CASAL_C32_ldstexcl -> encode_B46
                                      (encode_inner_B46 2296445952)
        CASL CASL_C32_ldstexcl -> encode_B46 (encode_inner_B46 2292251648)
        CAS CAS_C64_ldstexcl -> encode_B50 (encode_inner_B50 3365960704)
        CASA CASA_C64_ldstexcl -> encode_B50 (encode_inner_B50 3370155008)
        CASAL CASAL_C64_ldstexcl -> encode_B50
                                      (encode_inner_B50 3370187776)
        CASL CASL_C64_ldstexcl -> encode_B50 (encode_inner_B50 3365993472)
        CASAB CASAB_C32_ldstexcl -> encode_B46 (encode_inner_B46 148929536)
        CASALB CASALB_C32_ldstexcl -> encode_B46
                                        (encode_inner_B46 148962304)
        CASB CASB_C32_ldstexcl -> encode_B46 (encode_inner_B46 144735232)
        CASLB CASLB_C32_ldstexcl -> encode_B46 (encode_inner_B46 144768000)
        CASAH CASAH_C32_ldstexcl -> encode_B46
                                      (encode_inner_B46 1222671360)
        CASALH CASALH_C32_ldstexcl -> encode_B46
                                        (encode_inner_B46 1222704128)
        CASH CASH_C32_ldstexcl -> encode_B46 (encode_inner_B46 1218477056)
        CASLH CASLH_C32_ldstexcl -> encode_B46
                                      (encode_inner_B46 1218509824)
        CASP CASP_CP32_ldstexcl -> encode_B86 (encode_inner_B86 136346624)
        CASPA CASPA_CP32_ldstexcl -> encode_B86
                                       (encode_inner_B86 140540928)
        CASPAL CASPAL_CP32_ldstexcl -> encode_B86
                                         (encode_inner_B86 140573696)
        CASPL CASPL_CP32_ldstexcl -> encode_B86
                                       (encode_inner_B86 136379392)
        CASP CASP_CP64_ldstexcl -> encode_B87 (encode_inner_B87 1210088448)
        CASPA CASPA_CP64_ldstexcl -> encode_B87
                                       (encode_inner_B87 1214282752)
        CASPAL CASPAL_CP64_ldstexcl -> encode_B87
                                         (encode_inner_B87 1214315520)
        CASPL CASPL_CP64_ldstexcl -> encode_B87
                                       (encode_inner_B87 1210121216)
        CBNZ CBNZ_32_compbranch -> encode_B10 (encode_inner_B10 889192448)
        CBNZ CBNZ_64_compbranch -> encode_B14 (encode_inner_B14 3036676096)
        CBZ CBZ_32_compbranch -> encode_B10 (encode_inner_B10 872415232)
        CBZ CBZ_64_compbranch -> encode_B14 (encode_inner_B14 3019898880)
        CCMN CCMN_32_condcmp_imm -> encode_B62 (encode_inner_B62 977274880)
        CCMN CCMN_64_condcmp_imm -> encode_B63
                                      (encode_inner_B63 3124758528)
        CCMN CCMN_32_condcmp_reg -> encode_B53 (encode_inner_B53 977272832)
        CCMN CCMN_64_condcmp_reg -> encode_B54
                                      (encode_inner_B54 3124756480)
        CCMP CCMP_32_condcmp_imm -> encode_B62
                                      (encode_inner_B62 2051016704)
        CCMP CCMP_64_condcmp_imm -> encode_B63
                                      (encode_inner_B63 4198500352)
        CCMP CCMP_32_condcmp_reg -> encode_B53
                                      (encode_inner_B53 2051014656)
        CCMP CCMP_64_condcmp_reg -> encode_B54
                                      (encode_inner_B54 4198498304)
        CLREX CLREX_BN_system -> encode_B7 (encode_inner_B7 3573755999)
        CLS CLS_32_dp_1src -> encode_B8 (encode_inner_B8 1522537472)
        CLS CLS_64_dp_1src -> encode_B9 (encode_inner_B9 3670021120)
        CLZ CLZ_32_dp_1src -> encode_B8 (encode_inner_B8 1522536448)
        CLZ CLZ_64_dp_1src -> encode_B9 (encode_inner_B9 3670020096)
        CRC32B CRC32B_32C_dp_2src -> encode_B17
                                       (encode_inner_B17 448806912)
        CRC32H CRC32H_32C_dp_2src -> encode_B17
                                       (encode_inner_B17 448807936)
        CRC32W CRC32W_32C_dp_2src -> encode_B17
                                       (encode_inner_B17 448808960)
        CRC32X CRC32X_64C_dp_2src -> encode_B18
                                       (encode_inner_B18 2596293632)
        CRC32CB CRC32CB_32C_dp_2src -> encode_B17
                                         (encode_inner_B17 448811008)
        CRC32CH CRC32CH_32C_dp_2src -> encode_B17
                                         (encode_inner_B17 448812032)
        CRC32CW CRC32CW_32C_dp_2src -> encode_B17
                                         (encode_inner_B17 448813056)
        CRC32CX CRC32CX_64C_dp_2src -> encode_B18
                                         (encode_inner_B18 2596297728)
        CSEL (CSEL_32_condsel x1 x2 x3 x4) -> encode_B38
                                                (encode_inner_B38 444596224)
                                                x1
                                                x2
                                                x3
                                                x4
        CSEL CSEL_64_condsel -> encode_B41 (encode_inner_B41 2592079872)
        CSINC (CSINC_32_condsel x1 x2 x3 x4) -> encode_B38
                                                  (encode_inner_B38 444597248)
                                                  x1
                                                  x2
                                                  x3
                                                  x4
        CSINC CSINC_64_condsel -> encode_B41 (encode_inner_B41 2592080896)
        CSINV (CSINV_32_condsel x1 x2 x3 x4) -> encode_B38
                                                  (encode_inner_B38 1518338048)
                                                  x1
                                                  x2
                                                  x3
                                                  x4
        CSINV CSINV_64_condsel -> encode_B41 (encode_inner_B41 3665821696)
        CSNEG (CSNEG_32_condsel x1 x2 x3 x4) -> encode_B38
                                                  (encode_inner_B38 1518339072)
                                                  x1
                                                  x2
                                                  x3
                                                  x4
        CSNEG CSNEG_64_condsel -> encode_B41 (encode_inner_B41 3665822720)
        DCPS1 DCPS1_DC_exception -> encode_B7 (encode_inner_B7 3567255553)
        DCPS2 DCPS2_DC_exception -> encode_B7 (encode_inner_B7 3567255554)
        DCPS3 DCPS3_DC_exception -> encode_B7 (encode_inner_B7 3567255555)
        DMB DMB_BO_system -> encode_B16 (encode_inner_B16 3573756095)
        DRPS DRPS_64E_branch_reg -> encode_B0 (encode_inner_B0 3602842592)
        DSB DSB_BO_system -> encode_B16 (encode_inner_B16 3573756063)
        EON (EON_32_log_shift x1 x2 x3 x4) -> encode_B77
                                                (encode_inner_B77 1243611136)
                                                x1
                                                x2
                                                x3
                                                x4
        EON EON_64_log_shift -> encode_B80 (encode_inner_B80 3391094784)
        EOR EOR_32_log_imm -> encode_B33 (encode_inner_B33 1375731712)
        EOR EOR_64_log_imm -> encode_B28 (encode_inner_B28 3523215360)
        EOR (EOR_32_log_shift x1 x2 x3 x4) -> encode_B77
                                                (encode_inner_B77 1241513984)
                                                x1
                                                x2
                                                x3
                                                x4
        EOR EOR_64_log_shift -> encode_B80 (encode_inner_B80 3388997632)
        ERET ERET_64E_branch_reg -> encode_B0 (encode_inner_B0 3600745440)
        ERETAA ERETAA_64E_branch_reg -> encode_B0
                                          (encode_inner_B0 3600747519)
        ERETAB ERETAB_64E_branch_reg -> encode_B0
                                          (encode_inner_B0 3600748543)
        ESB ESB_HI_system -> encode_B0 (encode_inner_B0 3573752351)
        EXTR EXTR_32_extract -> encode_B37 (encode_inner_B37 327155712)
        EXTR EXTR_64_extract -> encode_B40 (encode_inner_B40 2478833664)
        HINT HINT_1 -> encode_B4 (encode_inner_B4 3573752031)
        HINT HINT_2 -> encode_B4 (encode_inner_B4 3573751839)
        HINT HINT_3 -> encode_B4 (encode_inner_B4 3573752351)
        HLT HLT_EX_exception -> encode_B4 (encode_inner_B4 3560964096)
        HVC HVC_EX_exception -> encode_B4 (encode_inner_B4 3556769794)
        ISB ISB_BI_system -> encode_B20 (encode_inner_B20 3573756127)
        LDADD LDADD_32_memop -> encode_B26 (encode_inner_B26 3089104896)
        LDADDA LDADDA_32_memop -> encode_B26 (encode_inner_B26 3097493504)
        LDADDAL LDADDAL_32_memop -> encode_B26
                                      (encode_inner_B26 3101687808)
        LDADDL LDADDL_32_memop -> encode_B26 (encode_inner_B26 3093299200)
        LDADD LDADD_64_memop -> encode_B29 (encode_inner_B29 4162846720)
        LDADDA LDADDA_64_memop -> encode_B29 (encode_inner_B29 4171235328)
        LDADDAL LDADDAL_64_memop -> encode_B29
                                      (encode_inner_B29 4175429632)
        LDADDL LDADDL_64_memop -> encode_B29 (encode_inner_B29 4167041024)
        LDADDAB LDADDAB_32_memop -> encode_B26 (encode_inner_B26 950009856)
        LDADDALB LDADDALB_32_memop -> encode_B26
                                        (encode_inner_B26 954204160)
        LDADDB LDADDB_32_memop -> encode_B26 (encode_inner_B26 941621248)
        LDADDLB LDADDLB_32_memop -> encode_B26 (encode_inner_B26 945815552)
        LDADDAH LDADDAH_32_memop -> encode_B26
                                      (encode_inner_B26 2023751680)
        LDADDALH LDADDALH_32_memop -> encode_B26
                                        (encode_inner_B26 2027945984)
        LDADDH LDADDH_32_memop -> encode_B26 (encode_inner_B26 2015363072)
        LDADDLH LDADDLH_32_memop -> encode_B26
                                      (encode_inner_B26 2019557376)
        LDAPR LDAPR_32L_memop -> encode_B27 (encode_inner_B27 3099574272)
        LDAPR LDAPR_64L_memop -> encode_B30 (encode_inner_B30 4173316096)
        LDAPRB LDAPRB_32L_memop -> encode_B27 (encode_inner_B27 952090624)
        LDAPRH LDAPRH_32L_memop -> encode_B27 (encode_inner_B27 2025832448)
        LDAR LDAR_LR32_ldstexcl -> encode_B24 (encode_inner_B24 2296380416)
        LDAR LDAR_LR64_ldstexcl -> encode_B25 (encode_inner_B25 3370122240)
        LDARB LDARB_LR32_ldstexcl -> encode_B24
                                       (encode_inner_B24 148896768)
        LDARH LDARH_LR32_ldstexcl -> encode_B24
                                       (encode_inner_B24 1222638592)
        LDAXP LDAXP_LP32_ldstexcl -> encode_B58
                                       (encode_inner_B58 2290057216)
        LDAXP LDAXP_LP64_ldstexcl -> encode_B61
                                       (encode_inner_B61 3363799040)
        LDAXR LDAXR_LR32_ldstexcl -> encode_B24
                                       (encode_inner_B24 2287991808)
        LDAXR LDAXR_LR64_ldstexcl -> encode_B25
                                       (encode_inner_B25 3361733632)
        LDAXRB LDAXRB_LR32_ldstexcl -> encode_B24
                                         (encode_inner_B24 140508160)
        LDAXRH LDAXRH_LR32_ldstexcl -> encode_B24
                                         (encode_inner_B24 1214249984)
        LDCLR LDCLR_32_memop -> encode_B26 (encode_inner_B26 3089108992)
        LDCLRA LDCLRA_32_memop -> encode_B26 (encode_inner_B26 3097497600)
        LDCLRAL LDCLRAL_32_memop -> encode_B26
                                      (encode_inner_B26 3101691904)
        LDCLRL LDCLRL_32_memop -> encode_B26 (encode_inner_B26 3093303296)
        LDCLR LDCLR_64_memop -> encode_B29 (encode_inner_B29 4162850816)
        LDCLRA LDCLRA_64_memop -> encode_B29 (encode_inner_B29 4171239424)
        LDCLRAL LDCLRAL_64_memop -> encode_B29
                                      (encode_inner_B29 4175433728)
        LDCLRL LDCLRL_64_memop -> encode_B29 (encode_inner_B29 4167045120)
        LDCLRAB LDCLRAB_32_memop -> encode_B26 (encode_inner_B26 950013952)
        LDCLRALB LDCLRALB_32_memop -> encode_B26
                                        (encode_inner_B26 954208256)
        LDCLRB LDCLRB_32_memop -> encode_B26 (encode_inner_B26 941625344)
        LDCLRLB LDCLRLB_32_memop -> encode_B26 (encode_inner_B26 945819648)
        LDCLRAH LDCLRAH_32_memop -> encode_B26
                                      (encode_inner_B26 2023755776)
        LDCLRALH LDCLRALH_32_memop -> encode_B26
                                        (encode_inner_B26 2027950080)
        LDCLRH LDCLRH_32_memop -> encode_B26 (encode_inner_B26 2015367168)
        LDCLRLH LDCLRLH_32_memop -> encode_B26
                                      (encode_inner_B26 2019561472)
        LDEOR LDEOR_32_memop -> encode_B26 (encode_inner_B26 3089113088)
        LDEORA LDEORA_32_memop -> encode_B26 (encode_inner_B26 3097501696)
        LDEORAL LDEORAL_32_memop -> encode_B26
                                      (encode_inner_B26 3101696000)
        LDEORL LDEORL_32_memop -> encode_B26 (encode_inner_B26 3093307392)
        LDEOR LDEOR_64_memop -> encode_B29 (encode_inner_B29 4162854912)
        LDEORA LDEORA_64_memop -> encode_B29 (encode_inner_B29 4171243520)
        LDEORAL LDEORAL_64_memop -> encode_B29
                                      (encode_inner_B29 4175437824)
        LDEORL LDEORL_64_memop -> encode_B29 (encode_inner_B29 4167049216)
        LDEORAB LDEORAB_32_memop -> encode_B26 (encode_inner_B26 950018048)
        LDEORALB LDEORALB_32_memop -> encode_B26
                                        (encode_inner_B26 954212352)
        LDEORB LDEORB_32_memop -> encode_B26 (encode_inner_B26 941629440)
        LDEORLB LDEORLB_32_memop -> encode_B26 (encode_inner_B26 945823744)
        LDEORAH LDEORAH_32_memop -> encode_B26
                                      (encode_inner_B26 2023759872)
        LDEORALH LDEORALH_32_memop -> encode_B26
                                        (encode_inner_B26 2027954176)
        LDEORH LDEORH_32_memop -> encode_B26 (encode_inner_B26 2015371264)
        LDEORLH LDEORLH_32_memop -> encode_B26
                                      (encode_inner_B26 2019565568)
        LDLAR LDLAR_LR32_ldstexcl -> encode_B24
                                       (encode_inner_B24 2296347648)
        LDLAR LDLAR_LR64_ldstexcl -> encode_B25
                                       (encode_inner_B25 3370089472)
        LDLARB LDLARB_LR32_ldstexcl -> encode_B24
                                         (encode_inner_B24 148864000)
        LDLARH LDLARH_LR32_ldstexcl -> encode_B24
                                         (encode_inner_B24 1222605824)
        LDNP LDNP_32_ldstnapair_offs -> encode_B71
                                          (encode_inner_B71 675282944)
        LDNP (LDNP_64_ldstnapair_offs x1 x2 x3 x4) -> encode_B72
                                                        (encode_inner_B72 2822766592)
                                                        x1
                                                        x2
                                                        x3
                                                        x4
        LDP LDP_32_ldstpair_post -> encode_B64 (encode_inner_B64 683671552)
        LDP LDP_64_ldstpair_post -> encode_B65
                                      (encode_inner_B65 2831155200)
        LDP LDP_32_ldstpair_pre -> encode_B66 (encode_inner_B66 700448768)
        LDP (LDP_64_ldstpair_pre x1 x2 x3 x4) -> encode_B68
                                                   (encode_inner_B68 2847932416)
                                                   x1
                                                   x2
                                                   x3
                                                   x4
        LDP LDP_32_ldstpair_off -> encode_B71 (encode_inner_B71 692060160)
        LDP (LDP_64_ldstpair_off x1 x2 x3 x4) -> encode_B72
                                                   (encode_inner_B72 2839543808)
                                                   x1
                                                   x2
                                                   x3
                                                   x4
        LDPSW LDPSW_64_ldstpair_post -> encode_B65
                                          (encode_inner_B65 1757413376)
        LDPSW (LDPSW_64_ldstpair_pre x1 x2 x3 x4) -> encode_B68
                                                       (encode_inner_B68 1774190592)
                                                       x1
                                                       x2
                                                       x3
                                                       x4
        LDPSW (LDPSW_64_ldstpair_off x1 x2 x3 x4) -> encode_B72
                                                       (encode_inner_B72 1765801984)
                                                       x1
                                                       x2
                                                       x3
                                                       x4
        LDR LDR_32_ldst_immpost -> encode_B39 (encode_inner_B39 3091203072)
        LDR LDR_64_ldst_immpost -> encode_B42 (encode_inner_B42 4164944896)
        LDR LDR_32_ldst_immpre -> encode_B43 (encode_inner_B43 3091205120)
        LDR LDR_64_ldst_immpre -> encode_B44 (encode_inner_B44 4164946944)
        LDR LDR_32_ldst_pos -> encode_B48 (encode_inner_B48 3107979264)
        LDR (LDR_64_ldst_pos x1 x2 x3) -> encode_B51
                                            (encode_inner_B51 4181721088)
                                            x1
                                            x2
                                            x3
        LDR LDR_32_loadlit -> encode_B10 (encode_inner_B10 402653184)
        LDR LDR_64_loadlit -> encode_B14 (encode_inner_B14 1476395008)
        LDR LDR_32_ldst_regoff -> encode_B94 (encode_inner_B94 3093301248)
        LDR LDR_64_ldst_regoff -> encode_B95 (encode_inner_B95 4167043072)
        LDRAA LDRAA_64_ldst_pac -> encode_B52 (encode_inner_B52 4162847744)
        LDRAA LDRAA_64W_ldst_pac -> encode_B55
                                      (encode_inner_B55 4162849792)
        LDRAB LDRAB_64_ldst_pac -> encode_B52 (encode_inner_B52 4171236352)
        LDRAB LDRAB_64W_ldst_pac -> encode_B55
                                      (encode_inner_B55 4171238400)
        LDRB LDRB_32_ldst_immpost -> encode_B39
                                       (encode_inner_B39 943719424)
        LDRB LDRB_32_ldst_immpre -> encode_B43 (encode_inner_B43 943721472)
        LDRB LDRB_32_ldst_pos -> encode_B48 (encode_inner_B48 960495616)
        LDRB LDRB_32B_ldst_regoff -> encode_B92
                                       (encode_inner_B92 945817600)
        LDRB LDRB_32BL_ldst_regoff -> encode_B79
                                        (encode_inner_B79 945842176)
        LDRH LDRH_32_ldst_immpost -> encode_B39
                                       (encode_inner_B39 2017461248)
        LDRH LDRH_32_ldst_immpre -> encode_B43
                                      (encode_inner_B43 2017463296)
        LDRH LDRH_32_ldst_pos -> encode_B48 (encode_inner_B48 2034237440)
        LDRH LDRH_32_ldst_regoff -> encode_B94
                                      (encode_inner_B94 2019559424)
        LDRSB LDRSB_32_ldst_immpost -> encode_B39
                                         (encode_inner_B39 952108032)
        LDRSB LDRSB_64_ldst_immpost -> encode_B42
                                         (encode_inner_B42 947913728)
        LDRSB LDRSB_32_ldst_immpre -> encode_B43
                                        (encode_inner_B43 952110080)
        LDRSB LDRSB_64_ldst_immpre -> encode_B44
                                        (encode_inner_B44 947915776)
        LDRSB LDRSB_32_ldst_pos -> encode_B48 (encode_inner_B48 968884224)
        LDRSB (LDRSB_64_ldst_pos x1 x2 x3) -> encode_B51
                                                (encode_inner_B51 964689920)
                                                x1
                                                x2
                                                x3
        LDRSB LDRSB_32B_ldst_regoff -> encode_B92
                                         (encode_inner_B92 954206208)
        LDRSB LDRSB_32BL_ldst_regoff -> encode_B79
                                          (encode_inner_B79 954230784)
        LDRSB LDRSB_64B_ldst_regoff -> encode_B93
                                         (encode_inner_B93 950011904)
        LDRSB LDRSB_64BL_ldst_regoff -> encode_B81
                                          (encode_inner_B81 950036480)
        LDRSH LDRSH_32_ldst_immpost -> encode_B39
                                         (encode_inner_B39 2025849856)
        LDRSH LDRSH_64_ldst_immpost -> encode_B42
                                         (encode_inner_B42 2021655552)
        LDRSH LDRSH_32_ldst_immpre -> encode_B43
                                        (encode_inner_B43 2025851904)
        LDRSH LDRSH_64_ldst_immpre -> encode_B44
                                        (encode_inner_B44 2021657600)
        LDRSH LDRSH_32_ldst_pos -> encode_B48 (encode_inner_B48 2042626048)
        LDRSH (LDRSH_64_ldst_pos x1 x2 x3) -> encode_B51
                                                (encode_inner_B51 2038431744)
                                                x1
                                                x2
                                                x3
        LDRSH LDRSH_32_ldst_regoff -> encode_B94
                                        (encode_inner_B94 2027948032)
        LDRSH LDRSH_64_ldst_regoff -> encode_B95
                                        (encode_inner_B95 2023753728)
        LDRSW LDRSW_64_ldst_immpost -> encode_B42
                                         (encode_inner_B42 3095397376)
        LDRSW LDRSW_64_ldst_immpre -> encode_B44
                                        (encode_inner_B44 3095399424)
        LDRSW (LDRSW_64_ldst_pos x1 x2 x3) -> encode_B51
                                                (encode_inner_B51 3112173568)
                                                x1
                                                x2
                                                x3
        LDRSW LDRSW_64_loadlit -> encode_B14 (encode_inner_B14 2550136832)
        LDRSW LDRSW_64_ldst_regoff -> encode_B95
                                        (encode_inner_B95 3097495552)
        LDSET LDSET_32_memop -> encode_B26 (encode_inner_B26 3089117184)
        LDSETA LDSETA_32_memop -> encode_B26 (encode_inner_B26 3097505792)
        LDSETAL LDSETAL_32_memop -> encode_B26
                                      (encode_inner_B26 3101700096)
        LDSETL LDSETL_32_memop -> encode_B26 (encode_inner_B26 3093311488)
        LDSET LDSET_64_memop -> encode_B29 (encode_inner_B29 4162859008)
        LDSETA LDSETA_64_memop -> encode_B29 (encode_inner_B29 4171247616)
        LDSETAL LDSETAL_64_memop -> encode_B29
                                      (encode_inner_B29 4175441920)
        LDSETL LDSETL_64_memop -> encode_B29 (encode_inner_B29 4167053312)
        LDSETAB LDSETAB_32_memop -> encode_B26 (encode_inner_B26 950022144)
        LDSETALB LDSETALB_32_memop -> encode_B26
                                        (encode_inner_B26 954216448)
        LDSETB LDSETB_32_memop -> encode_B26 (encode_inner_B26 941633536)
        LDSETLB LDSETLB_32_memop -> encode_B26 (encode_inner_B26 945827840)
        LDSETAH LDSETAH_32_memop -> encode_B26
                                      (encode_inner_B26 2023763968)
        LDSETALH LDSETALH_32_memop -> encode_B26
                                        (encode_inner_B26 2027958272)
        LDSETH LDSETH_32_memop -> encode_B26 (encode_inner_B26 2015375360)
        LDSETLH LDSETLH_32_memop -> encode_B26
                                      (encode_inner_B26 2019569664)
        LDSMAX LDSMAX_32_memop -> encode_B26 (encode_inner_B26 3089121280)
        LDSMAXA LDSMAXA_32_memop -> encode_B26
                                      (encode_inner_B26 3097509888)
        LDSMAXAL LDSMAXAL_32_memop -> encode_B26
                                        (encode_inner_B26 3101704192)
        LDSMAXL LDSMAXL_32_memop -> encode_B26
                                      (encode_inner_B26 3093315584)
        LDSMAX LDSMAX_64_memop -> encode_B29 (encode_inner_B29 4162863104)
        LDSMAXA LDSMAXA_64_memop -> encode_B29
                                      (encode_inner_B29 4171251712)
        LDSMAXAL LDSMAXAL_64_memop -> encode_B29
                                        (encode_inner_B29 4175446016)
        LDSMAXL LDSMAXL_64_memop -> encode_B29
                                      (encode_inner_B29 4167057408)
        LDSMAXAB LDSMAXAB_32_memop -> encode_B26
                                        (encode_inner_B26 950026240)
        LDSMAXALB LDSMAXALB_32_memop -> encode_B26
                                          (encode_inner_B26 954220544)
        LDSMAXB LDSMAXB_32_memop -> encode_B26 (encode_inner_B26 941637632)
        LDSMAXLB LDSMAXLB_32_memop -> encode_B26
                                        (encode_inner_B26 945831936)
        LDSMAXAH LDSMAXAH_32_memop -> encode_B26
                                        (encode_inner_B26 2023768064)
        LDSMAXALH LDSMAXALH_32_memop -> encode_B26
                                          (encode_inner_B26 2027962368)
        LDSMAXH LDSMAXH_32_memop -> encode_B26
                                      (encode_inner_B26 2015379456)
        LDSMAXLH LDSMAXLH_32_memop -> encode_B26
                                        (encode_inner_B26 2019573760)
        LDSMIN LDSMIN_32_memop -> encode_B26 (encode_inner_B26 3089125376)
        LDSMINA LDSMINA_32_memop -> encode_B26
                                      (encode_inner_B26 3097513984)
        LDSMINAL LDSMINAL_32_memop -> encode_B26
                                        (encode_inner_B26 3101708288)
        LDSMINL LDSMINL_32_memop -> encode_B26
                                      (encode_inner_B26 3093319680)
        LDSMIN LDSMIN_64_memop -> encode_B29 (encode_inner_B29 4162867200)
        LDSMINA LDSMINA_64_memop -> encode_B29
                                      (encode_inner_B29 4171255808)
        LDSMINAL LDSMINAL_64_memop -> encode_B29
                                        (encode_inner_B29 4175450112)
        LDSMINL LDSMINL_64_memop -> encode_B29
                                      (encode_inner_B29 4167061504)
        LDSMINAB LDSMINAB_32_memop -> encode_B26
                                        (encode_inner_B26 950030336)
        LDSMINALB LDSMINALB_32_memop -> encode_B26
                                          (encode_inner_B26 954224640)
        LDSMINB LDSMINB_32_memop -> encode_B26 (encode_inner_B26 941641728)
        LDSMINLB LDSMINLB_32_memop -> encode_B26
                                        (encode_inner_B26 945836032)
        LDSMINAH LDSMINAH_32_memop -> encode_B26
                                        (encode_inner_B26 2023772160)
        LDSMINALH LDSMINALH_32_memop -> encode_B26
                                          (encode_inner_B26 2027966464)
        LDSMINH LDSMINH_32_memop -> encode_B26
                                      (encode_inner_B26 2015383552)
        LDSMINLH LDSMINLH_32_memop -> encode_B26
                                        (encode_inner_B26 2019577856)
        LDTR LDTR_32_ldst_unpriv -> encode_B49
                                      (encode_inner_B49 3091204096)
        LDTR LDTR_64_ldst_unpriv -> encode_B52
                                      (encode_inner_B52 4164945920)
        LDTRB LDTRB_32_ldst_unpriv -> encode_B49
                                        (encode_inner_B49 943720448)
        LDTRH LDTRH_32_ldst_unpriv -> encode_B49
                                        (encode_inner_B49 2017462272)
        LDTRSB LDTRSB_32_ldst_unpriv -> encode_B49
                                          (encode_inner_B49 952109056)
        LDTRSB LDTRSB_64_ldst_unpriv -> encode_B52
                                          (encode_inner_B52 947914752)
        LDTRSH LDTRSH_32_ldst_unpriv -> encode_B49
                                          (encode_inner_B49 2025850880)
        LDTRSH LDTRSH_64_ldst_unpriv -> encode_B52
                                          (encode_inner_B52 2021656576)
        LDTRSW LDTRSW_64_ldst_unpriv -> encode_B52
                                          (encode_inner_B52 3095398400)
        LDUMAX LDUMAX_32_memop -> encode_B26 (encode_inner_B26 3089129472)
        LDUMAXA LDUMAXA_32_memop -> encode_B26
                                      (encode_inner_B26 3097518080)
        LDUMAXAL LDUMAXAL_32_memop -> encode_B26
                                        (encode_inner_B26 3101712384)
        LDUMAXL LDUMAXL_32_memop -> encode_B26
                                      (encode_inner_B26 3093323776)
        LDUMAX LDUMAX_64_memop -> encode_B29 (encode_inner_B29 4162871296)
        LDUMAXA LDUMAXA_64_memop -> encode_B29
                                      (encode_inner_B29 4171259904)
        LDUMAXAL LDUMAXAL_64_memop -> encode_B29
                                        (encode_inner_B29 4175454208)
        LDUMAXL LDUMAXL_64_memop -> encode_B29
                                      (encode_inner_B29 4167065600)
        LDUMAXAB LDUMAXAB_32_memop -> encode_B26
                                        (encode_inner_B26 950034432)
        LDUMAXALB LDUMAXALB_32_memop -> encode_B26
                                          (encode_inner_B26 954228736)
        LDUMAXB LDUMAXB_32_memop -> encode_B26 (encode_inner_B26 941645824)
        LDUMAXLB LDUMAXLB_32_memop -> encode_B26
                                        (encode_inner_B26 945840128)
        LDUMAXAH LDUMAXAH_32_memop -> encode_B26
                                        (encode_inner_B26 2023776256)
        LDUMAXALH LDUMAXALH_32_memop -> encode_B26
                                          (encode_inner_B26 2027970560)
        LDUMAXH LDUMAXH_32_memop -> encode_B26
                                      (encode_inner_B26 2015387648)
        LDUMAXLH LDUMAXLH_32_memop -> encode_B26
                                        (encode_inner_B26 2019581952)
        LDUMIN LDUMIN_32_memop -> encode_B26 (encode_inner_B26 3089133568)
        LDUMINA LDUMINA_32_memop -> encode_B26
                                      (encode_inner_B26 3097522176)
        LDUMINAL LDUMINAL_32_memop -> encode_B26
                                        (encode_inner_B26 3101716480)
        LDUMINL LDUMINL_32_memop -> encode_B26
                                      (encode_inner_B26 3093327872)
        LDUMIN LDUMIN_64_memop -> encode_B29 (encode_inner_B29 4162875392)
        LDUMINA LDUMINA_64_memop -> encode_B29
                                      (encode_inner_B29 4171264000)
        LDUMINAL LDUMINAL_64_memop -> encode_B29
                                        (encode_inner_B29 4175458304)
        LDUMINL LDUMINL_64_memop -> encode_B29
                                      (encode_inner_B29 4167069696)
        LDUMINAB LDUMINAB_32_memop -> encode_B26
                                        (encode_inner_B26 950038528)
        LDUMINALB LDUMINALB_32_memop -> encode_B26
                                          (encode_inner_B26 954232832)
        LDUMINB LDUMINB_32_memop -> encode_B26 (encode_inner_B26 941649920)
        LDUMINLB LDUMINLB_32_memop -> encode_B26
                                        (encode_inner_B26 945844224)
        LDUMINAH LDUMINAH_32_memop -> encode_B26
                                        (encode_inner_B26 2023780352)
        LDUMINALH LDUMINALH_32_memop -> encode_B26
                                          (encode_inner_B26 2027974656)
        LDUMINH LDUMINH_32_memop -> encode_B26
                                      (encode_inner_B26 2015391744)
        LDUMINLH LDUMINLH_32_memop -> encode_B26
                                        (encode_inner_B26 2019586048)
        LDUR LDUR_32_ldst_unscaled -> encode_B49
                                        (encode_inner_B49 3091202048)
        LDUR LDUR_64_ldst_unscaled -> encode_B52
                                        (encode_inner_B52 4164943872)
        LDURB LDURB_32_ldst_unscaled -> encode_B49
                                          (encode_inner_B49 943718400)
        LDURH LDURH_32_ldst_unscaled -> encode_B49
                                          (encode_inner_B49 2017460224)
        LDURSB LDURSB_32_ldst_unscaled -> encode_B49
                                            (encode_inner_B49 952107008)
        LDURSB LDURSB_64_ldst_unscaled -> encode_B52
                                            (encode_inner_B52 947912704)
        LDURSH LDURSH_32_ldst_unscaled -> encode_B49
                                            (encode_inner_B49 2025848832)
        LDURSH LDURSH_64_ldst_unscaled -> encode_B52
                                            (encode_inner_B52 2021654528)
        LDURSW LDURSW_64_ldst_unscaled -> encode_B52
                                            (encode_inner_B52 3095396352)
        LDXP LDXP_LP32_ldstexcl -> encode_B58 (encode_inner_B58 2290024448)
        LDXP LDXP_LP64_ldstexcl -> encode_B61 (encode_inner_B61 3363766272)
        LDXR LDXR_LR32_ldstexcl -> encode_B24 (encode_inner_B24 2287959040)
        LDXR LDXR_LR64_ldstexcl -> encode_B25 (encode_inner_B25 3361700864)
        LDXRB LDXRB_LR32_ldstexcl -> encode_B24
                                       (encode_inner_B24 140475392)
        LDXRH LDXRH_LR32_ldstexcl -> encode_B24
                                       (encode_inner_B24 1214217216)
        LSLV LSLV_32_dp_2src -> encode_B17 (encode_inner_B17 448798720)
        LSLV LSLV_64_dp_2src -> encode_B19 (encode_inner_B19 2596282368)
        LSRV LSRV_32_dp_2src -> encode_B17 (encode_inner_B17 448799744)
        LSRV LSRV_64_dp_2src -> encode_B19 (encode_inner_B19 2596283392)
        MADD MADD_32A_dp_3src -> encode_B32 (encode_inner_B32 452984832)
        MADD MADD_64A_dp_3src -> encode_B35 (encode_inner_B35 2600468480)
        MOVK MOVK_32_movewide -> encode_B56 (encode_inner_B56 1920991232)
        MOVK MOVK_64_movewide -> encode_B59 (encode_inner_B59 4068474880)
        MOVN MOVN_32_movewide -> encode_B56 (encode_inner_B56 310378496)
        MOVN MOVN_64_movewide -> encode_B59 (encode_inner_B59 2457862144)
        MOVZ MOVZ_32_movewide -> encode_B56 (encode_inner_B56 1384120320)
        MOVZ MOVZ_64_movewide -> encode_B59 (encode_inner_B59 3531603968)
        MRS MRS_RS_system -> encode_B91 (encode_inner_B91 3576692736)
        MSR MSR_SI_system -> encode_B31 (encode_inner_B31 3573563423)
        MSR MSR_SR_system -> encode_B88 (encode_inner_B88 3574595584)
        MSUB MSUB_32A_dp_3src -> encode_B32 (encode_inner_B32 453017600)
        MSUB MSUB_64A_dp_3src -> encode_B35 (encode_inner_B35 2600501248)
        NOP NOP_HI_system -> encode_B0 (encode_inner_B0 3573751839)
        ORN (ORN_32_log_shift x1 x2 x3 x4) -> encode_B77
                                                (encode_inner_B77 706740224)
                                                x1
                                                x2
                                                x3
                                                x4
        ORN ORN_64_log_shift -> encode_B80 (encode_inner_B80 2854223872)
        ORR ORR_32_log_imm -> encode_B33 (encode_inner_B33 838860800)
        ORR ORR_64_log_imm -> encode_B28 (encode_inner_B28 2986344448)
        ORR (ORR_32_log_shift x1 x2 x3 x4) -> encode_B77
                                                (encode_inner_B77 704643072)
                                                x1
                                                x2
                                                x3
                                                x4
        ORR ORR_64_log_shift -> encode_B80 (encode_inner_B80 2852126720)
        PACDA PACDA_64P_dp_1src -> encode_B11 (encode_inner_B11 3670083584)
        PACDZA PACDZA_64Z_dp_1src -> encode_B1 (encode_inner_B1 3670092768)
        PACDB PACDB_64P_dp_1src -> encode_B11 (encode_inner_B11 3670084608)
        PACDZB PACDZB_64Z_dp_1src -> encode_B1 (encode_inner_B1 3670093792)
        PACGA PACGA_64P_dp_2src -> encode_B23 (encode_inner_B23 2596286464)
        PACIA PACIA_64P_dp_1src -> encode_B11 (encode_inner_B11 3670081536)
        PACIZA PACIZA_64Z_dp_1src -> encode_B1 (encode_inner_B1 3670090720)
        PACIA1716 PACIA1716_HI_system -> encode_B0
                                           (encode_inner_B0 3573752095)
        PACIASP PACIASP_HI_system -> encode_B0 (encode_inner_B0 3573752639)
        PACIAZ PACIAZ_HI_system -> encode_B0 (encode_inner_B0 3573752607)
        PACIB PACIB_64P_dp_1src -> encode_B11 (encode_inner_B11 3670082560)
        PACIZB PACIZB_64Z_dp_1src -> encode_B1 (encode_inner_B1 3670091744)
        PACIB1716 PACIB1716_HI_system -> encode_B0
                                           (encode_inner_B0 3573752159)
        PACIBSP PACIBSP_HI_system -> encode_B0 (encode_inner_B0 3573752703)
        PACIBZ PACIBZ_HI_system -> encode_B0 (encode_inner_B0 3573752671)
        PRFM PRFM_P_ldst_pos -> encode_B83 (encode_inner_B83 4185915392)
        PRFM PRFM_P_loadlit -> encode_B45 (encode_inner_B45 3623878656)
        PRFM PRFM_P_ldst_regoff -> encode_B96 (encode_inner_B96 4171237376)
        PRFUM PRFUM_P_ldst_unscaled -> encode_B82
                                         (encode_inner_B82 4169138176)
        PSB PSB_HC_system -> encode_B3 (encode_inner_B3 3573752383)
        RBIT RBIT_32_dp_1src -> encode_B8 (encode_inner_B8 1522532352)
        RBIT RBIT_64_dp_1src -> encode_B9 (encode_inner_B9 3670016000)
        RET RET_64R_branch_reg -> encode_B5 (encode_inner_B5 3596550144)
        RETAA RETAA_64E_branch_reg -> encode_B0
                                        (encode_inner_B0 3596553215)
        RETAB RETAB_64E_branch_reg -> encode_B0
                                        (encode_inner_B0 3596554239)
        REV REV_32_dp_1src -> encode_B8 (encode_inner_B8 1522534400)
        REV REV_64_dp_1src -> encode_B9 (encode_inner_B9 3670019072)
        REV16 REV16_32_dp_1src -> encode_B8 (encode_inner_B8 1522533376)
        REV16 REV16_64_dp_1src -> encode_B9 (encode_inner_B9 3670017024)
        REV32 REV32_64_dp_1src -> encode_B9 (encode_inner_B9 3670018048)
        RORV RORV_32_dp_2src -> encode_B17 (encode_inner_B17 448801792)
        RORV RORV_64_dp_2src -> encode_B19 (encode_inner_B19 2596285440)
        SBC SBC_32_addsub_carry -> encode_B17 (encode_inner_B17 1509949440)
        SBC SBC_64_addsub_carry -> encode_B19 (encode_inner_B19 3657433088)
        SBCS SBCS_32_addsub_carry -> encode_B17
                                       (encode_inner_B17 2046820352)
        SBCS SBCS_64_addsub_carry -> encode_B19
                                       (encode_inner_B19 4194304000)
        SBFM SBFM_32M_bitfield -> encode_B57 (encode_inner_B57 318767104)
        SBFM SBFM_64M_bitfield -> encode_B60 (encode_inner_B60 2470445056)
        SDIV SDIV_32_dp_2src -> encode_B17 (encode_inner_B17 448793600)
        SDIV SDIV_64_dp_2src -> encode_B19 (encode_inner_B19 2596277248)
        SEV SEV_HI_system -> encode_B0 (encode_inner_B0 3573751967)
        SEVL SEVL_HI_system -> encode_B0 (encode_inner_B0 3573751999)
        SMADDL SMADDL_64WA_dp_3src -> encode_B34
                                        (encode_inner_B34 2602565632)
        SMC SMC_EX_exception -> encode_B4 (encode_inner_B4 3556769795)
        SMSUBL SMSUBL_64WA_dp_3src -> encode_B34
                                        (encode_inner_B34 2602598400)
        SMULH SMULH_64_dp_3src -> encode_B19 (encode_inner_B19 2604694528)
        STLLR STLLR_SL32_ldstexcl -> encode_B24
                                       (encode_inner_B24 2292153344)
        STLLR STLLR_SL64_ldstexcl -> encode_B25
                                       (encode_inner_B25 3365895168)
        STLLRB STLLRB_SL32_ldstexcl -> encode_B24
                                         (encode_inner_B24 144669696)
        STLLRH STLLRH_SL32_ldstexcl -> encode_B24
                                         (encode_inner_B24 1218411520)
        STLR STLR_SL32_ldstexcl -> encode_B24 (encode_inner_B24 2292186112)
        STLR STLR_SL64_ldstexcl -> encode_B25 (encode_inner_B25 3365927936)
        STLRB STLRB_SL32_ldstexcl -> encode_B24
                                       (encode_inner_B24 144702464)
        STLRH STLRH_SL32_ldstexcl -> encode_B24
                                       (encode_inner_B24 1218444288)
        STLXP STLXP_SP32_ldstexcl -> encode_B74
                                       (encode_inner_B74 2283831296)
        STLXP STLXP_SP64_ldstexcl -> encode_B75
                                       (encode_inner_B75 3357573120)
        STLXR STLXR_SR32_ldstexcl -> encode_B46
                                       (encode_inner_B46 2281765888)
        STLXR STLXR_SR64_ldstexcl -> encode_B47
                                       (encode_inner_B47 3355507712)
        STLXRB STLXRB_SR32_ldstexcl -> encode_B46
                                         (encode_inner_B46 134282240)
        STLXRH STLXRH_SR32_ldstexcl -> encode_B46
                                         (encode_inner_B46 1208024064)
        STNP STNP_32_ldstnapair_offs -> encode_B71
                                          (encode_inner_B71 671088640)
        STNP (STNP_64_ldstnapair_offs x1 x2 x3 x4) -> encode_B72
                                                        (encode_inner_B72 2818572288)
                                                        x1
                                                        x2
                                                        x3
                                                        x4
        STP STP_32_ldstpair_post -> encode_B64 (encode_inner_B64 679477248)
        STP STP_64_ldstpair_post -> encode_B65
                                      (encode_inner_B65 2826960896)
        STP STP_32_ldstpair_pre -> encode_B66 (encode_inner_B66 696254464)
        STP (STP_64_ldstpair_pre x1 x2 x3 x4) -> encode_B68
                                                   (encode_inner_B68 2843738112)
                                                   x1
                                                   x2
                                                   x3
                                                   x4
        STP STP_32_ldstpair_off -> encode_B71 (encode_inner_B71 687865856)
        STP (STP_64_ldstpair_off x1 x2 x3 x4) -> encode_B72
                                                   (encode_inner_B72 2835349504)
                                                   x1
                                                   x2
                                                   x3
                                                   x4
        STR STR_32_ldst_immpost -> encode_B39 (encode_inner_B39 3087008768)
        STR STR_64_ldst_immpost -> encode_B42 (encode_inner_B42 4160750592)
        STR STR_32_ldst_immpre -> encode_B43 (encode_inner_B43 3087010816)
        STR STR_64_ldst_immpre -> encode_B44 (encode_inner_B44 4160752640)
        STR STR_32_ldst_pos -> encode_B48 (encode_inner_B48 3103784960)
        STR (STR_64_ldst_pos x1 x2 x3) -> encode_B51
                                            (encode_inner_B51 4177526784)
                                            x1
                                            x2
                                            x3
        STR STR_32_ldst_regoff -> encode_B94 (encode_inner_B94 3089106944)
        STR STR_64_ldst_regoff -> encode_B95 (encode_inner_B95 4162848768)
        STRB STRB_32_ldst_immpost -> encode_B39
                                       (encode_inner_B39 939525120)
        STRB STRB_32_ldst_immpre -> encode_B43 (encode_inner_B43 939527168)
        STRB STRB_32_ldst_pos -> encode_B48 (encode_inner_B48 956301312)
        STRB STRB_32B_ldst_regoff -> encode_B92
                                       (encode_inner_B92 941623296)
        STRB STRB_32BL_ldst_regoff -> encode_B79
                                        (encode_inner_B79 941647872)
        STRH STRH_32_ldst_immpost -> encode_B39
                                       (encode_inner_B39 2013266944)
        STRH STRH_32_ldst_immpre -> encode_B43
                                      (encode_inner_B43 2013268992)
        STRH STRH_32_ldst_pos -> encode_B48 (encode_inner_B48 2030043136)
        STRH STRH_32_ldst_regoff -> encode_B94
                                      (encode_inner_B94 2015365120)
        STTR STTR_32_ldst_unpriv -> encode_B49
                                      (encode_inner_B49 3087009792)
        STTR STTR_64_ldst_unpriv -> encode_B52
                                      (encode_inner_B52 4160751616)
        STTRB STTRB_32_ldst_unpriv -> encode_B49
                                        (encode_inner_B49 939526144)
        STTRH STTRH_32_ldst_unpriv -> encode_B49
                                        (encode_inner_B49 2013267968)
        STUR STUR_32_ldst_unscaled -> encode_B49
                                        (encode_inner_B49 3087007744)
        STUR STUR_64_ldst_unscaled -> encode_B52
                                        (encode_inner_B52 4160749568)
        STURB STURB_32_ldst_unscaled -> encode_B49
                                          (encode_inner_B49 939524096)
        STURH STURH_32_ldst_unscaled -> encode_B49
                                          (encode_inner_B49 2013265920)
        STXP STXP_SP32_ldstexcl -> encode_B74 (encode_inner_B74 2283798528)
        STXP STXP_SP64_ldstexcl -> encode_B75 (encode_inner_B75 3357540352)
        STXR STXR_SR32_ldstexcl -> encode_B46 (encode_inner_B46 2281733120)
        STXR STXR_SR64_ldstexcl -> encode_B47 (encode_inner_B47 3355474944)
        STXRB STXRB_SR32_ldstexcl -> encode_B46
                                       (encode_inner_B46 134249472)
        STXRH STXRH_SR32_ldstexcl -> encode_B46
                                       (encode_inner_B46 1207991296)
        SUB SUB_32_addsub_ext -> encode_B89 (encode_inner_B89 1260388352)
        SUB SUB_64_addsub_ext -> encode_B90 (encode_inner_B90 3407872000)
        SUB SUB_32_addsub_imm -> encode_B78 (encode_inner_B78 1358954496)
        SUB (SUB_64_addsub_imm x1 x2 x3 x4) -> encode_B76
                                                 (encode_inner_B76 3506438144)
                                                 x1
                                                 x2
                                                 x3
                                                 x4
        SUB (SUB_32_addsub_shift x1 x2 x3 x4) -> encode_B77
                                                   (encode_inner_B77 1258291200)
                                                   x1
                                                   x2
                                                   x3
                                                   x4
        SUB SUB_64_addsub_shift -> encode_B80 (encode_inner_B80 3405774848)
        SUBS SUBS_32S_addsub_ext -> encode_B84
                                      (encode_inner_B84 1797259264)
        SUBS SUBS_64S_addsub_ext -> encode_B85
                                      (encode_inner_B85 3944742912)
        SUBS (SUBS_32S_addsub_imm x1 x2 x3 x4) -> encode_B70
                                                    (encode_inner_B70 1895825408)
                                                    x1
                                                    x2
                                                    x3
                                                    x4
        SUBS (SUBS_64S_addsub_imm x1 x2 x3 x4) -> encode_B67
                                                    (encode_inner_B67 4043309056)
                                                    x1
                                                    x2
                                                    x3
                                                    x4
        SUBS (SUBS_32_addsub_shift x1 x2 x3 x4) -> encode_B77
                                                     (encode_inner_B77 1795162112)
                                                     x1
                                                     x2
                                                     x3
                                                     x4
        SUBS SUBS_64_addsub_shift -> encode_B80
                                       (encode_inner_B80 3942645760)
        SVC SVC_EX_exception -> encode_B4 (encode_inner_B4 3556769793)
        SWP SWP_32_memop -> encode_B26 (encode_inner_B26 3089137664)
        SWPA SWPA_32_memop -> encode_B26 (encode_inner_B26 3097526272)
        SWPAL SWPAL_32_memop -> encode_B26 (encode_inner_B26 3101720576)
        SWPL SWPL_32_memop -> encode_B26 (encode_inner_B26 3093331968)
        SWP SWP_64_memop -> encode_B29 (encode_inner_B29 4162879488)
        SWPA SWPA_64_memop -> encode_B29 (encode_inner_B29 4171268096)
        SWPAL SWPAL_64_memop -> encode_B29 (encode_inner_B29 4175462400)
        SWPL SWPL_64_memop -> encode_B29 (encode_inner_B29 4167073792)
        SWPAB SWPAB_32_memop -> encode_B26 (encode_inner_B26 950042624)
        SWPALB SWPALB_32_memop -> encode_B26 (encode_inner_B26 954236928)
        SWPB SWPB_32_memop -> encode_B26 (encode_inner_B26 941654016)
        SWPLB SWPLB_32_memop -> encode_B26 (encode_inner_B26 945848320)
        SWPAH SWPAH_32_memop -> encode_B26 (encode_inner_B26 2023784448)
        SWPALH SWPALH_32_memop -> encode_B26 (encode_inner_B26 2027978752)
        SWPH SWPH_32_memop -> encode_B26 (encode_inner_B26 2015395840)
        SWPLH SWPLH_32_memop -> encode_B26 (encode_inner_B26 2019590144)
        SYS SYS_CR_system -> encode_B73 (encode_inner_B73 3574071296)
        SYSL SYSL_RC_system -> encode_B69 (encode_inner_B69 3576168448)
        TBNZ TBNZ_only_testbranch -> encode_B36
                                       (encode_inner_B36 922746880)
        TBZ TBZ_only_testbranch -> encode_B36 (encode_inner_B36 905969664)
        UBFM UBFM_32M_bitfield -> encode_B57 (encode_inner_B57 1392508928)
        UBFM UBFM_64M_bitfield -> encode_B60 (encode_inner_B60 3544186880)
        UDIV UDIV_32_dp_2src -> encode_B17 (encode_inner_B17 448792576)
        UDIV UDIV_64_dp_2src -> encode_B19 (encode_inner_B19 2596276224)
        UMADDL UMADDL_64WA_dp_3src -> encode_B34
                                        (encode_inner_B34 2610954240)
        UMSUBL UMSUBL_64WA_dp_3src -> encode_B34
                                        (encode_inner_B34 2610987008)
        UMULH UMULH_64_dp_3src -> encode_B19 (encode_inner_B19 2613083136)
        WFE WFE_HI_system -> encode_B0 (encode_inner_B0 3573751903)
        WFI WFI_HI_system -> encode_B0 (encode_inner_B0 3573751935)
        XPACD XPACD_64Z_dp_1src -> encode_B1 (encode_inner_B1 3670099936)
        XPACI XPACI_64Z_dp_1src -> encode_B1 (encode_inner_B1 3670098912)
        XPACLRI XPACLRI_HI_system -> encode_B0 (encode_inner_B0 3573752063)
        YIELD YIELD_HI_system -> encode_B0 (encode_inner_B0 3573751871)
        ABS ABS_asisdmisc_R -> encode_F33 (encode_inner_F33 1579202560)
        ABS ABS_asimdmisc_R -> encode_F49 (encode_inner_F49 237025280)
        ADD ADD_asisdsame_only -> encode_F70 (encode_inner_F70 1579189248)
        ADD ADD_asimdsame_only -> encode_F116 (encode_inner_F116 237011968)
        ADDHN ADDHN_asimddiff_N -> encode_F151
                                     (encode_inner_F151 236994560)
        ADDP ADDP_asisdpair_only -> encode_F41
                                      (encode_inner_F41 1580316672)
        ADDP ADDP_asimdsame_only -> encode_F116
                                      (encode_inner_F116 237026304)
        ADDV ADDV_asimdall_only -> encode_F41 (encode_inner_F41 238139392)
        AESD AESD_B_cryptoaes -> encode_F48 (encode_inner_F48 1311266816)
        AESE AESE_B_cryptoaes -> encode_F48 (encode_inner_F48 1311262720)
        AESIMC AESIMC_B_cryptoaes -> encode_F48
                                       (encode_inner_F48 1311275008)
        AESMC AESMC_B_cryptoaes -> encode_F48 (encode_inner_F48 1311270912)
        AND AND_asimdsame_only -> encode_F116 (encode_inner_F116 236985344)
        BCAX BCAX_VVV16_crypto4 -> encode_F159
                                     (encode_inner_F159 3458203648)
        BIC BIC_asimdimm_L_hl -> encode_F142 (encode_inner_F142 788567040)
        BIC BIC_asimdimm_L_sl -> encode_F142 (encode_inner_F142 788534272)
        BIC BIC_asimdsame_only -> encode_F116 (encode_inner_F116 241179648)
        BIF BIF_asimdsame_only -> encode_F116 (encode_inner_F116 786439168)
        BIT BIT_asimdsame_only -> encode_F116 (encode_inner_F116 782244864)
        BSL BSL_asimdsame_only -> encode_F116 (encode_inner_F116 778050560)
        CLS CLS_asimdmisc_R -> encode_F49 (encode_inner_F49 236996608)
        CLZ CLZ_asimdmisc_R -> encode_F49 (encode_inner_F49 773867520)
        CMEQ CMEQ_asisdsame_only -> encode_F70
                                      (encode_inner_F70 2116062208)
        CMEQ CMEQ_asimdsame_only -> encode_F116
                                      (encode_inner_F116 773884928)
        CMEQ CMEQ_asisdmisc_Z -> encode_F47 (encode_inner_F47 1579194368)
        CMEQ CMEQ_asimdmisc_Z -> encode_F71 (encode_inner_F71 237017088)
        CMGE CMGE_asisdsame_only -> encode_F70
                                      (encode_inner_F70 1579170816)
        CMGE CMGE_asimdsame_only -> encode_F116
                                      (encode_inner_F116 236993536)
        CMGE CMGE_asisdmisc_Z -> encode_F47 (encode_inner_F47 2116061184)
        CMGE CMGE_asimdmisc_Z -> encode_F71 (encode_inner_F71 773883904)
        CMGT CMGT_asisdsame_only -> encode_F70
                                      (encode_inner_F70 1579168768)
        CMGT CMGT_asimdsame_only -> encode_F116
                                      (encode_inner_F116 236991488)
        CMGT CMGT_asisdmisc_Z -> encode_F47 (encode_inner_F47 1579190272)
        CMGT CMGT_asimdmisc_Z -> encode_F71 (encode_inner_F71 237012992)
        CMHI CMHI_asisdsame_only -> encode_F70
                                      (encode_inner_F70 2116039680)
        CMHI CMHI_asimdsame_only -> encode_F116
                                      (encode_inner_F116 773862400)
        CMHS CMHS_asisdsame_only -> encode_F70
                                      (encode_inner_F70 2116041728)
        CMHS CMHS_asimdsame_only -> encode_F116
                                      (encode_inner_F116 773864448)
        CMLE CMLE_asisdmisc_Z -> encode_F47 (encode_inner_F47 2116065280)
        CMLE CMLE_asimdmisc_Z -> encode_F71 (encode_inner_F71 773888000)
        CMLT CMLT_asisdmisc_Z -> encode_F47 (encode_inner_F47 1579198464)
        CMLT CMLT_asimdmisc_Z -> encode_F71 (encode_inner_F71 237021184)
        CMTST CMTST_asisdsame_only -> encode_F70
                                        (encode_inner_F70 1579191296)
        CMTST CMTST_asimdsame_only -> encode_F116
                                        (encode_inner_F116 237014016)
        CNT CNT_asimdmisc_R -> encode_F49 (encode_inner_F49 237000704)
        DUP DUP_asisdone_only -> encode_F93 (encode_inner_F93 1577059328)
        DUP DUP_asimdins_DV_v -> encode_F117 (encode_inner_F117 234882048)
        DUP DUP_asimdins_DR_r -> encode_F46 (encode_inner_F46 234884096)
        EOR EOR_asimdsame_only -> encode_F116 (encode_inner_F116 773856256)
        EOR3 EOR3_VVV16_crypto4 -> encode_F159
                                     (encode_inner_F159 3456106496)
        EXT EXT_asimdext_only -> encode_F160 (encode_inner_F160 771751936)
        FABD FABD_asisdsamefp16_only -> encode_F39
                                          (encode_inner_F39 2126517248)
        FABD FABD_asisdsame_only -> encode_F70
                                      (encode_inner_F70 2124469248)
        FABD FABD_asimdsamefp16_only -> encode_F116
                                          (encode_inner_F116 784339968)
        FABD FABD_asimdsame_only -> encode_F116
                                      (encode_inner_F116 782291968)
        FABS FABS_H_floatdp1 -> encode_F8 (encode_inner_F8 518045696)
        FABS FABS_S_floatdp1 -> encode_F16 (encode_inner_F16 505462784)
        FABS FABS_D_floatdp1 -> encode_F0 (encode_inner_F0 509657088)
        FABS FABS_asimdmiscfp16_R -> encode_F49
                                       (encode_inner_F49 251197440)
        FABS FABS_asimdmisc_R -> encode_F49 (encode_inner_F49 245430272)
        FACGE FACGE_asisdsamefp16_only -> encode_F39
                                            (encode_inner_F39 2118134784)
        FACGE FACGE_asisdsame_only -> encode_F70
                                        (encode_inner_F70 2116086784)
        FACGE FACGE_asimdsamefp16_only -> encode_F116
                                            (encode_inner_F116 775957504)
        FACGE FACGE_asimdsame_only -> encode_F116
                                        (encode_inner_F116 773909504)
        FACGT FACGT_asisdsamefp16_only -> encode_F39
                                            (encode_inner_F39 2126523392)
        FACGT FACGT_asisdsame_only -> encode_F70
                                        (encode_inner_F70 2124475392)
        FACGT FACGT_asimdsamefp16_only -> encode_F116
                                            (encode_inner_F116 784346112)
        FACGT FACGT_asimdsame_only -> encode_F116
                                        (encode_inner_F116 782298112)
        FADD FADD_H_floatdp2 -> encode_F39 (encode_inner_F39 518006784)
        FADD FADD_S_floatdp2 -> encode_F40 (encode_inner_F40 505423872)
        FADD FADD_D_floatdp2 -> encode_F37 (encode_inner_F37 509618176)
        FADD FADD_asimdsamefp16_only -> encode_F116
                                          (encode_inner_F116 239080448)
        FADD FADD_asimdsame_only -> encode_F116
                                      (encode_inner_F116 237032448)
        FADDP FADDP_asisdpair_only_H -> encode_F41
                                          (encode_inner_F41 1580259328)
        FADDP FADDP_asisdpair_only_SD -> encode_F41
                                           (encode_inner_F41 2117130240)
        FADDP FADDP_asimdsamefp16_only -> encode_F116
                                            (encode_inner_F116 775951360)
        FADDP FADDP_asimdsame_only -> encode_F116
                                        (encode_inner_F116 773903360)
        FCADD FCADD_asimdsame2_C -> encode_F163
                                      (encode_inner_F163 771810304)
        FCCMP FCCMP_H_floatccmp -> encode_F111
                                     (encode_inner_F111 517997568)
        FCCMP FCCMP_S_floatccmp -> encode_F112
                                     (encode_inner_F112 505414656)
        FCCMP FCCMP_D_floatccmp -> encode_F109
                                     (encode_inner_F109 509608960)
        FCCMPE FCCMPE_H_floatccmp -> encode_F111
                                       (encode_inner_F111 517997584)
        FCCMPE FCCMPE_S_floatccmp -> encode_F112
                                       (encode_inner_F112 505414672)
        FCCMPE FCCMPE_D_floatccmp -> encode_F109
                                       (encode_inner_F109 509608976)
        FCMEQ FCMEQ_asisdsamefp16_only -> encode_F39
                                            (encode_inner_F39 1581261824)
        FCMEQ FCMEQ_asisdsame_only -> encode_F70
                                        (encode_inner_F70 1579213824)
        FCMEQ FCMEQ_asimdsamefp16_only -> encode_F116
                                            (encode_inner_F116 239084544)
        FCMEQ FCMEQ_asimdsame_only -> encode_F116
                                        (encode_inner_F116 237036544)
        FCMEQ FCMEQ_asisdmiscfp16_FZ -> encode_F38
                                          (encode_inner_F38 1593366528)
        FCMEQ FCMEQ_asisdmisc_FZ -> encode_F59
                                      (encode_inner_F59 1587599360)
        FCMEQ FCMEQ_asimdmiscfp16_FZ -> encode_F85
                                          (encode_inner_F85 251189248)
        FCMEQ FCMEQ_asimdmisc_FZ -> encode_F85 (encode_inner_F85 245422080)
        FCMGE FCMGE_asisdsamefp16_only -> encode_F39
                                            (encode_inner_F39 2118132736)
        FCMGE FCMGE_asisdsame_only -> encode_F70
                                        (encode_inner_F70 2116084736)
        FCMGE FCMGE_asimdsamefp16_only -> encode_F116
                                            (encode_inner_F116 775955456)
        FCMGE FCMGE_asimdsame_only -> encode_F116
                                        (encode_inner_F116 773907456)
        FCMGE FCMGE_asisdmiscfp16_FZ -> encode_F38
                                          (encode_inner_F38 2130233344)
        FCMGE FCMGE_asisdmisc_FZ -> encode_F59
                                      (encode_inner_F59 2124466176)
        FCMGE FCMGE_asimdmiscfp16_FZ -> encode_F85
                                          (encode_inner_F85 788056064)
        FCMGE FCMGE_asimdmisc_FZ -> encode_F85 (encode_inner_F85 782288896)
        FCMGT FCMGT_asisdsamefp16_only -> encode_F39
                                            (encode_inner_F39 2126521344)
        FCMGT FCMGT_asisdsame_only -> encode_F70
                                        (encode_inner_F70 2124473344)
        FCMGT FCMGT_asimdsamefp16_only -> encode_F116
                                            (encode_inner_F116 784344064)
        FCMGT FCMGT_asimdsame_only -> encode_F116
                                        (encode_inner_F116 782296064)
        FCMGT FCMGT_asisdmiscfp16_FZ -> encode_F38
                                          (encode_inner_F38 1593362432)
        FCMGT FCMGT_asisdmisc_FZ -> encode_F59
                                      (encode_inner_F59 1587595264)
        FCMGT FCMGT_asimdmiscfp16_FZ -> encode_F85
                                          (encode_inner_F85 251185152)
        FCMGT FCMGT_asimdmisc_FZ -> encode_F85 (encode_inner_F85 245417984)
        FCMLA FCMLA_asimdsame2_C -> encode_F163
                                      (encode_inner_F163 771802112)
        FCMLA FCMLA_asimdelem_C_H -> encode_F187
                                       (encode_inner_F187 792727552)
        FCMLA FCMLA_asimdelem_C_S -> encode_F187
                                       (encode_inner_F187 796921856)
        FCMLE FCMLE_asisdmiscfp16_FZ -> encode_F38
                                          (encode_inner_F38 2130237440)
        FCMLE FCMLE_asisdmisc_FZ -> encode_F59
                                      (encode_inner_F59 2124470272)
        FCMLE FCMLE_asimdmiscfp16_FZ -> encode_F85
                                          (encode_inner_F85 788060160)
        FCMLE FCMLE_asimdmisc_FZ -> encode_F85 (encode_inner_F85 782292992)
        FCMLT FCMLT_asisdmiscfp16_FZ -> encode_F38
                                          (encode_inner_F38 1593370624)
        FCMLT FCMLT_asisdmisc_FZ -> encode_F59
                                      (encode_inner_F59 1587603456)
        FCMLT FCMLT_asimdmiscfp16_FZ -> encode_F85
                                          (encode_inner_F85 251193344)
        FCMLT FCMLT_asimdmisc_FZ -> encode_F85 (encode_inner_F85 245426176)
        FCMP FCMP_H_floatcmp -> encode_F13 (encode_inner_F13 518004736)
        FCMP FCMP_HZ_floatcmp -> encode_F12 (encode_inner_F12 518004744)
        FCMP FCMP_S_floatcmp -> encode_F20 (encode_inner_F20 505421824)
        FCMP FCMP_SZ_floatcmp -> encode_F19 (encode_inner_F19 505421832)
        FCMP FCMP_D_floatcmp -> encode_F6 (encode_inner_F6 509616128)
        FCMP FCMP_DZ_floatcmp -> encode_F5 (encode_inner_F5 509616136)
        FCMPE FCMPE_H_floatcmp -> encode_F13 (encode_inner_F13 518004752)
        FCMPE FCMPE_HZ_floatcmp -> encode_F12 (encode_inner_F12 518004760)
        FCMPE FCMPE_S_floatcmp -> encode_F20 (encode_inner_F20 505421840)
        FCMPE FCMPE_SZ_floatcmp -> encode_F19 (encode_inner_F19 505421848)
        FCMPE FCMPE_D_floatcmp -> encode_F6 (encode_inner_F6 509616144)
        FCMPE FCMPE_DZ_floatcmp -> encode_F5 (encode_inner_F5 509616152)
        FCSEL FCSEL_H_floatsel -> encode_F78 (encode_inner_F78 517999616)
        FCSEL FCSEL_S_floatsel -> encode_F81 (encode_inner_F81 505416704)
        FCSEL FCSEL_D_floatsel -> encode_F76 (encode_inner_F76 509611008)
        FCVT FCVT_SH_floatdp1 -> encode_F15 (encode_inner_F15 518144000)
        FCVT FCVT_DH_floatdp1 -> encode_F1 (encode_inner_F1 518176768)
        FCVT FCVT_HS_floatdp1 -> encode_F9 (encode_inner_F9 505659392)
        FCVT FCVT_DS_floatdp1 -> encode_F2 (encode_inner_F2 505593856)
        FCVT FCVT_HD_floatdp1 -> encode_F7 (encode_inner_F7 509853696)
        FCVT FCVT_SD_floatdp1 -> encode_F14 (encode_inner_F14 509755392)
        FCVTAS FCVTAS_32H_float2int -> encode_F22
                                         (encode_inner_F22 518258688)
        FCVTAS FCVTAS_64H_float2int -> encode_F25
                                         (encode_inner_F25 2665742336)
        FCVTAS FCVTAS_32S_float2int -> encode_F23
                                         (encode_inner_F23 505675776)
        FCVTAS FCVTAS_64S_float2int -> encode_F26
                                         (encode_inner_F26 2653159424)
        FCVTAS FCVTAS_32D_float2int -> encode_F21
                                         (encode_inner_F21 509870080)
        FCVTAS FCVTAS_64D_float2int -> encode_F24
                                         (encode_inner_F24 2657353728)
        FCVTAS FCVTAS_asisdmiscfp16_R -> encode_F8
                                           (encode_inner_F8 1585039360)
        FCVTAS FCVTAS_asisdmisc_R -> encode_F33
                                       (encode_inner_F33 1579272192)
        FCVTAS FCVTAS_asimdmiscfp16_R -> encode_F49
                                           (encode_inner_F49 242862080)
        FCVTAS FCVTAS_asimdmisc_R -> encode_F49
                                       (encode_inner_F49 237094912)
        FCVTAU FCVTAU_32H_float2int -> encode_F22
                                         (encode_inner_F22 518324224)
        FCVTAU FCVTAU_64H_float2int -> encode_F25
                                         (encode_inner_F25 2665807872)
        FCVTAU FCVTAU_32S_float2int -> encode_F23
                                         (encode_inner_F23 505741312)
        FCVTAU FCVTAU_64S_float2int -> encode_F26
                                         (encode_inner_F26 2653224960)
        FCVTAU FCVTAU_32D_float2int -> encode_F21
                                         (encode_inner_F21 509935616)
        FCVTAU FCVTAU_64D_float2int -> encode_F24
                                         (encode_inner_F24 2657419264)
        FCVTAU FCVTAU_asisdmiscfp16_R -> encode_F8
                                           (encode_inner_F8 2121910272)
        FCVTAU FCVTAU_asisdmisc_R -> encode_F33
                                       (encode_inner_F33 2116143104)
        FCVTAU FCVTAU_asimdmiscfp16_R -> encode_F49
                                           (encode_inner_F49 779732992)
        FCVTAU FCVTAU_asimdmisc_R -> encode_F49
                                       (encode_inner_F49 773965824)
        FCVTL FCVTL_asimdmisc_L -> encode_F73 (encode_inner_F73 237074432)
        FCVTMS FCVTMS_32H_float2int -> encode_F22
                                         (encode_inner_F22 519045120)
        FCVTMS FCVTMS_64H_float2int -> encode_F25
                                         (encode_inner_F25 2666528768)
        FCVTMS FCVTMS_32S_float2int -> encode_F23
                                         (encode_inner_F23 506462208)
        FCVTMS FCVTMS_64S_float2int -> encode_F26
                                         (encode_inner_F26 2653945856)
        FCVTMS FCVTMS_32D_float2int -> encode_F21
                                         (encode_inner_F21 510656512)
        FCVTMS FCVTMS_64D_float2int -> encode_F24
                                         (encode_inner_F24 2658140160)
        FCVTMS FCVTMS_asisdmiscfp16_R -> encode_F8
                                           (encode_inner_F8 1585035264)
        FCVTMS FCVTMS_asisdmisc_R -> encode_F33
                                       (encode_inner_F33 1579268096)
        FCVTMS FCVTMS_asimdmiscfp16_R -> encode_F49
                                           (encode_inner_F49 242857984)
        FCVTMS FCVTMS_asimdmisc_R -> encode_F49
                                       (encode_inner_F49 237090816)
        FCVTMU FCVTMU_32H_float2int -> encode_F22
                                         (encode_inner_F22 519110656)
        FCVTMU FCVTMU_64H_float2int -> encode_F25
                                         (encode_inner_F25 2666594304)
        FCVTMU FCVTMU_32S_float2int -> encode_F23
                                         (encode_inner_F23 506527744)
        FCVTMU FCVTMU_64S_float2int -> encode_F26
                                         (encode_inner_F26 2654011392)
        FCVTMU FCVTMU_32D_float2int -> encode_F21
                                         (encode_inner_F21 510722048)
        FCVTMU FCVTMU_64D_float2int -> encode_F24
                                         (encode_inner_F24 2658205696)
        FCVTMU FCVTMU_asisdmiscfp16_R -> encode_F8
                                           (encode_inner_F8 2121906176)
        FCVTMU FCVTMU_asisdmisc_R -> encode_F33
                                       (encode_inner_F33 2116139008)
        FCVTMU FCVTMU_asimdmiscfp16_R -> encode_F49
                                           (encode_inner_F49 779728896)
        FCVTMU FCVTMU_asimdmisc_R -> encode_F49
                                       (encode_inner_F49 773961728)
        FCVTN FCVTN_asimdmisc_N -> encode_F74 (encode_inner_F74 237070336)
        FCVTNS FCVTNS_32H_float2int -> encode_F22
                                         (encode_inner_F22 517996544)
        FCVTNS FCVTNS_64H_float2int -> encode_F25
                                         (encode_inner_F25 2665480192)
        FCVTNS FCVTNS_32S_float2int -> encode_F23
                                         (encode_inner_F23 505413632)
        FCVTNS FCVTNS_64S_float2int -> encode_F26
                                         (encode_inner_F26 2652897280)
        FCVTNS FCVTNS_32D_float2int -> encode_F21
                                         (encode_inner_F21 509607936)
        FCVTNS FCVTNS_64D_float2int -> encode_F24
                                         (encode_inner_F24 2657091584)
        FCVTNS FCVTNS_asisdmiscfp16_R -> encode_F8
                                           (encode_inner_F8 1585031168)
        FCVTNS FCVTNS_asisdmisc_R -> encode_F33
                                       (encode_inner_F33 1579264000)
        FCVTNS FCVTNS_asimdmiscfp16_R -> encode_F49
                                           (encode_inner_F49 242853888)
        FCVTNS FCVTNS_asimdmisc_R -> encode_F49
                                       (encode_inner_F49 237086720)
        FCVTNU FCVTNU_32H_float2int -> encode_F22
                                         (encode_inner_F22 518062080)
        FCVTNU FCVTNU_64H_float2int -> encode_F25
                                         (encode_inner_F25 2665545728)
        FCVTNU FCVTNU_32S_float2int -> encode_F23
                                         (encode_inner_F23 505479168)
        FCVTNU FCVTNU_64S_float2int -> encode_F26
                                         (encode_inner_F26 2652962816)
        FCVTNU FCVTNU_32D_float2int -> encode_F21
                                         (encode_inner_F21 509673472)
        FCVTNU FCVTNU_64D_float2int -> encode_F24
                                         (encode_inner_F24 2657157120)
        FCVTNU FCVTNU_asisdmiscfp16_R -> encode_F8
                                           (encode_inner_F8 2121902080)
        FCVTNU FCVTNU_asisdmisc_R -> encode_F33
                                       (encode_inner_F33 2116134912)
        FCVTNU FCVTNU_asimdmiscfp16_R -> encode_F49
                                           (encode_inner_F49 779724800)
        FCVTNU FCVTNU_asimdmisc_R -> encode_F49
                                       (encode_inner_F49 773957632)
        FCVTPS FCVTPS_32H_float2int -> encode_F22
                                         (encode_inner_F22 518520832)
        FCVTPS FCVTPS_64H_float2int -> encode_F25
                                         (encode_inner_F25 2666004480)
        FCVTPS FCVTPS_32S_float2int -> encode_F23
                                         (encode_inner_F23 505937920)
        FCVTPS FCVTPS_64S_float2int -> encode_F26
                                         (encode_inner_F26 2653421568)
        FCVTPS FCVTPS_32D_float2int -> encode_F21
                                         (encode_inner_F21 510132224)
        FCVTPS FCVTPS_64D_float2int -> encode_F24
                                         (encode_inner_F24 2657615872)
        FCVTPS FCVTPS_asisdmiscfp16_R -> encode_F8
                                           (encode_inner_F8 1593419776)
        FCVTPS FCVTPS_asisdmisc_R -> encode_F33
                                       (encode_inner_F33 1587652608)
        FCVTPS FCVTPS_asimdmiscfp16_R -> encode_F49
                                           (encode_inner_F49 251242496)
        FCVTPS FCVTPS_asimdmisc_R -> encode_F49
                                       (encode_inner_F49 245475328)
        FCVTPU FCVTPU_32H_float2int -> encode_F22
                                         (encode_inner_F22 518586368)
        FCVTPU FCVTPU_64H_float2int -> encode_F25
                                         (encode_inner_F25 2666070016)
        FCVTPU FCVTPU_32S_float2int -> encode_F23
                                         (encode_inner_F23 506003456)
        FCVTPU FCVTPU_64S_float2int -> encode_F26
                                         (encode_inner_F26 2653487104)
        FCVTPU FCVTPU_32D_float2int -> encode_F21
                                         (encode_inner_F21 510197760)
        FCVTPU FCVTPU_64D_float2int -> encode_F24
                                         (encode_inner_F24 2657681408)
        FCVTPU FCVTPU_asisdmiscfp16_R -> encode_F8
                                           (encode_inner_F8 2130290688)
        FCVTPU FCVTPU_asisdmisc_R -> encode_F33
                                       (encode_inner_F33 2124523520)
        FCVTPU FCVTPU_asimdmiscfp16_R -> encode_F49
                                           (encode_inner_F49 788113408)
        FCVTPU FCVTPU_asimdmisc_R -> encode_F49
                                       (encode_inner_F49 782346240)
        FCVTXN FCVTXN_asisdmisc_N -> encode_F42
                                       (encode_inner_F42 2116118528)
        FCVTXN FCVTXN_asimdmisc_N -> encode_F74
                                       (encode_inner_F74 773941248)
        FCVTZS FCVTZS_32H_float2fix -> encode_F62
                                         (encode_inner_F62 517472256)
        FCVTZS FCVTZS_64H_float2fix -> encode_F65
                                         (encode_inner_F65 2664955904)
        FCVTZS FCVTZS_32S_float2fix -> encode_F63
                                         (encode_inner_F63 504889344)
        FCVTZS FCVTZS_64S_float2fix -> encode_F66
                                         (encode_inner_F66 2652372992)
        FCVTZS FCVTZS_32D_float2fix -> encode_F61
                                         (encode_inner_F61 509083648)
        FCVTZS FCVTZS_64D_float2fix -> encode_F64
                                         (encode_inner_F64 2656567296)
        FCVTZS FCVTZS_32H_float2int -> encode_F22
                                         (encode_inner_F22 519569408)
        FCVTZS FCVTZS_64H_float2int -> encode_F25
                                         (encode_inner_F25 2667053056)
        FCVTZS FCVTZS_32S_float2int -> encode_F23
                                         (encode_inner_F23 506986496)
        FCVTZS FCVTZS_64S_float2int -> encode_F26
                                         (encode_inner_F26 2654470144)
        FCVTZS FCVTZS_32D_float2int -> encode_F21
                                         (encode_inner_F21 511180800)
        FCVTZS FCVTZS_64D_float2int -> encode_F24
                                         (encode_inner_F24 2658664448)
        FCVTZS FCVTZS_asisdshf_C -> encode_F83
                                      (encode_inner_F83 1593900032)
        FCVTZS FCVTZS_asimdshf_C -> encode_F114
                                      (encode_inner_F114 251722752)
        FCVTZS FCVTZS_asisdmiscfp16_R -> encode_F8
                                           (encode_inner_F8 1593423872)
        FCVTZS FCVTZS_asisdmisc_R -> encode_F33
                                       (encode_inner_F33 1587656704)
        FCVTZS FCVTZS_asimdmiscfp16_R -> encode_F49
                                           (encode_inner_F49 251246592)
        FCVTZS FCVTZS_asimdmisc_R -> encode_F49
                                       (encode_inner_F49 245479424)
        FCVTZU FCVTZU_32H_float2fix -> encode_F62
                                         (encode_inner_F62 517537792)
        FCVTZU FCVTZU_64H_float2fix -> encode_F65
                                         (encode_inner_F65 2665021440)
        FCVTZU FCVTZU_32S_float2fix -> encode_F63
                                         (encode_inner_F63 504954880)
        FCVTZU FCVTZU_64S_float2fix -> encode_F66
                                         (encode_inner_F66 2652438528)
        FCVTZU FCVTZU_32D_float2fix -> encode_F61
                                         (encode_inner_F61 509149184)
        FCVTZU FCVTZU_64D_float2fix -> encode_F64
                                         (encode_inner_F64 2656632832)
        FCVTZU FCVTZU_32H_float2int -> encode_F22
                                         (encode_inner_F22 519634944)
        FCVTZU FCVTZU_64H_float2int -> encode_F25
                                         (encode_inner_F25 2667118592)
        FCVTZU FCVTZU_32S_float2int -> encode_F23
                                         (encode_inner_F23 507052032)
        FCVTZU FCVTZU_64S_float2int -> encode_F26
                                         (encode_inner_F26 2654535680)
        FCVTZU FCVTZU_32D_float2int -> encode_F21
                                         (encode_inner_F21 511246336)
        FCVTZU FCVTZU_64D_float2int -> encode_F24
                                         (encode_inner_F24 2658729984)
        FCVTZU FCVTZU_asisdshf_C -> encode_F83
                                      (encode_inner_F83 2130770944)
        FCVTZU FCVTZU_asimdshf_C -> encode_F114
                                      (encode_inner_F114 788593664)
        FCVTZU FCVTZU_asisdmiscfp16_R -> encode_F8
                                           (encode_inner_F8 2130294784)
        FCVTZU FCVTZU_asisdmisc_R -> encode_F33
                                       (encode_inner_F33 2124527616)
        FCVTZU FCVTZU_asimdmiscfp16_R -> encode_F49
                                           (encode_inner_F49 788117504)
        FCVTZU FCVTZU_asimdmisc_R -> encode_F49
                                       (encode_inner_F49 782350336)
        FDIV FDIV_H_floatdp2 -> encode_F39 (encode_inner_F39 518002688)
        FDIV FDIV_S_floatdp2 -> encode_F40 (encode_inner_F40 505419776)
        FDIV FDIV_D_floatdp2 -> encode_F37 (encode_inner_F37 509614080)
        FDIV FDIV_asimdsamefp16_only -> encode_F116
                                          (encode_inner_F116 775961600)
        FDIV FDIV_asimdsame_only -> encode_F116
                                      (encode_inner_F116 773913600)
        FJCVTZS FJCVTZS_32D_float2int -> encode_F21
                                           (encode_inner_F21 511574016)
        FMADD FMADD_H_floatdp3 -> encode_F68 (encode_inner_F68 532676608)
        FMADD FMADD_S_floatdp3 -> encode_F69 (encode_inner_F69 520093696)
        FMADD FMADD_D_floatdp3 -> encode_F67 (encode_inner_F67 524288000)
        FMAX FMAX_H_floatdp2 -> encode_F39 (encode_inner_F39 518014976)
        FMAX FMAX_S_floatdp2 -> encode_F40 (encode_inner_F40 505432064)
        FMAX FMAX_D_floatdp2 -> encode_F37 (encode_inner_F37 509626368)
        FMAX FMAX_asimdsamefp16_only -> encode_F116
                                          (encode_inner_F116 239088640)
        FMAX FMAX_asimdsame_only -> encode_F116
                                      (encode_inner_F116 237040640)
        FMAXNM FMAXNM_H_floatdp2 -> encode_F39 (encode_inner_F39 518023168)
        FMAXNM FMAXNM_S_floatdp2 -> encode_F40 (encode_inner_F40 505440256)
        FMAXNM FMAXNM_D_floatdp2 -> encode_F37 (encode_inner_F37 509634560)
        FMAXNM FMAXNM_asimdsamefp16_only -> encode_F116
                                              (encode_inner_F116 239076352)
        FMAXNM FMAXNM_asimdsame_only -> encode_F116
                                          (encode_inner_F116 237028352)
        FMAXNMP FMAXNMP_asisdpair_only_H -> encode_F41
                                              (encode_inner_F41 1580255232)
        FMAXNMP FMAXNMP_asisdpair_only_SD -> encode_F41
                                               (encode_inner_F41 2117126144)
        FMAXNMP FMAXNMP_asimdsamefp16_only -> encode_F116
                                                (encode_inner_F116 775947264)
        FMAXNMP FMAXNMP_asimdsame_only -> encode_F116
                                            (encode_inner_F116 773899264)
        FMAXNMV FMAXNMV_asimdall_only_H -> encode_F41
                                             (encode_inner_F41 238077952)
        FMAXNMV FMAXNMV_asimdall_only_SD -> encode_F41
                                              (encode_inner_F41 774948864)
        FMAXP FMAXP_asisdpair_only_H -> encode_F41
                                          (encode_inner_F41 1580267520)
        FMAXP FMAXP_asisdpair_only_SD -> encode_F41
                                           (encode_inner_F41 2117138432)
        FMAXP FMAXP_asimdsamefp16_only -> encode_F116
                                            (encode_inner_F116 775959552)
        FMAXP FMAXP_asimdsame_only -> encode_F116
                                        (encode_inner_F116 773911552)
        FMAXV FMAXV_asimdall_only_H -> encode_F41
                                         (encode_inner_F41 238090240)
        FMAXV FMAXV_asimdall_only_SD -> encode_F41
                                          (encode_inner_F41 774961152)
        FMIN FMIN_H_floatdp2 -> encode_F39 (encode_inner_F39 518019072)
        FMIN FMIN_S_floatdp2 -> encode_F40 (encode_inner_F40 505436160)
        FMIN FMIN_D_floatdp2 -> encode_F37 (encode_inner_F37 509630464)
        FMIN FMIN_asimdsamefp16_only -> encode_F116
                                          (encode_inner_F116 247477248)
        FMIN FMIN_asimdsame_only -> encode_F116
                                      (encode_inner_F116 245429248)
        FMINNM FMINNM_H_floatdp2 -> encode_F39 (encode_inner_F39 518027264)
        FMINNM FMINNM_S_floatdp2 -> encode_F40 (encode_inner_F40 505444352)
        FMINNM FMINNM_D_floatdp2 -> encode_F37 (encode_inner_F37 509638656)
        FMINNM FMINNM_asimdsamefp16_only -> encode_F116
                                              (encode_inner_F116 247464960)
        FMINNM FMINNM_asimdsame_only -> encode_F116
                                          (encode_inner_F116 245416960)
        FMINNMP FMINNMP_asisdpair_only_H -> encode_F41
                                              (encode_inner_F41 1588643840)
        FMINNMP FMINNMP_asisdpair_only_SD -> encode_F41
                                               (encode_inner_F41 2125514752)
        FMINNMP FMINNMP_asimdsamefp16_only -> encode_F116
                                                (encode_inner_F116 784335872)
        FMINNMP FMINNMP_asimdsame_only -> encode_F116
                                            (encode_inner_F116 782287872)
        FMINNMV FMINNMV_asimdall_only_H -> encode_F41
                                             (encode_inner_F41 246466560)
        FMINNMV FMINNMV_asimdall_only_SD -> encode_F41
                                              (encode_inner_F41 783337472)
        FMINP FMINP_asisdpair_only_H -> encode_F41
                                          (encode_inner_F41 1588656128)
        FMINP FMINP_asisdpair_only_SD -> encode_F41
                                           (encode_inner_F41 2125527040)
        FMINP FMINP_asimdsamefp16_only -> encode_F116
                                            (encode_inner_F116 784348160)
        FMINP FMINP_asimdsame_only -> encode_F116
                                        (encode_inner_F116 782300160)
        FMINV FMINV_asimdall_only_H -> encode_F41
                                         (encode_inner_F41 246478848)
        FMINV FMINV_asimdall_only_SD -> encode_F41
                                          (encode_inner_F41 783349760)
        FMLA FMLA_asisdelem_RH_H -> encode_F110
                                      (encode_inner_F110 1593839616)
        FMLA FMLA_asisdelem_R_SD -> encode_F139
                                      (encode_inner_F139 1602228224)
        FMLA FMLA_asimdelem_RH_H -> encode_F152
                                      (encode_inner_F152 251662336)
        FMLA FMLA_asimdelem_R_SD -> encode_F161
                                      (encode_inner_F161 260050944)
        FMLA FMLA_asimdsamefp16_only -> encode_F116
                                          (encode_inner_F116 239078400)
        FMLA FMLA_asimdsame_only -> encode_F116
                                      (encode_inner_F116 237030400)
        FMLS FMLS_asisdelem_RH_H -> encode_F110
                                      (encode_inner_F110 1593856000)
        FMLS FMLS_asisdelem_R_SD -> encode_F139
                                      (encode_inner_F139 1602244608)
        FMLS FMLS_asimdelem_RH_H -> encode_F152
                                      (encode_inner_F152 251678720)
        FMLS FMLS_asimdelem_R_SD -> encode_F161
                                      (encode_inner_F161 260067328)
        FMLS FMLS_asimdsamefp16_only -> encode_F116
                                          (encode_inner_F116 247467008)
        FMLS FMLS_asimdsame_only -> encode_F116
                                      (encode_inner_F116 245419008)
        FMOV FMOV_32H_float2int -> encode_F22 (encode_inner_F22 518389760)
        FMOV FMOV_64H_float2int -> encode_F25 (encode_inner_F25 2665873408)
        FMOV FMOV_H32_float2int -> encode_F10 (encode_inner_F10 518455296)
        FMOV FMOV_S32_float2int -> encode_F17 (encode_inner_F17 505872384)
        FMOV FMOV_32S_float2int -> encode_F23 (encode_inner_F23 505806848)
        FMOV FMOV_H64_float2int -> encode_F11 (encode_inner_F11 2665938944)
        FMOV FMOV_D64_float2int -> encode_F4 (encode_inner_F4 2657550336)
        FMOV FMOV_V64I_float2int -> encode_F35
                                      (encode_inner_F35 2662268928)
        FMOV FMOV_64D_float2int -> encode_F24 (encode_inner_F24 2657484800)
        FMOV FMOV_64VX_float2int -> encode_F36
                                      (encode_inner_F36 2662203392)
        FMOV FMOV_H_floatdp1 -> encode_F8 (encode_inner_F8 518012928)
        FMOV FMOV_S_floatdp1 -> encode_F16 (encode_inner_F16 505430016)
        FMOV FMOV_D_floatdp1 -> encode_F0 (encode_inner_F0 509624320)
        FMOV FMOV_H_floatimm -> encode_F28 (encode_inner_F28 518000640)
        FMOV FMOV_S_floatimm -> encode_F29 (encode_inner_F29 505417728)
        FMOV FMOV_D_floatimm -> encode_F27 (encode_inner_F27 509612032)
        FMOV FMOV_asimdimm_H_h -> encode_F45 (encode_inner_F45 251722752)
        FMOV FMOV_asimdimm_S_s -> encode_F45 (encode_inner_F45 251720704)
        FMOV FMOV_asimdimm_D2_d -> encode_F34 (encode_inner_F34 1862333440)
        FMSUB FMSUB_H_floatdp3 -> encode_F68 (encode_inner_F68 532709376)
        FMSUB FMSUB_S_floatdp3 -> encode_F69 (encode_inner_F69 520126464)
        FMSUB FMSUB_D_floatdp3 -> encode_F67 (encode_inner_F67 524320768)
        FMUL FMUL_asisdelem_RH_H -> encode_F110
                                      (encode_inner_F110 1593872384)
        FMUL FMUL_asisdelem_R_SD -> encode_F139
                                      (encode_inner_F139 1602260992)
        FMUL FMUL_asimdelem_RH_H -> encode_F152
                                      (encode_inner_F152 251695104)
        FMUL FMUL_asimdelem_R_SD -> encode_F161
                                      (encode_inner_F161 260083712)
        FMUL FMUL_H_floatdp2 -> encode_F39 (encode_inner_F39 517998592)
        FMUL FMUL_S_floatdp2 -> encode_F40 (encode_inner_F40 505415680)
        FMUL FMUL_D_floatdp2 -> encode_F37 (encode_inner_F37 509609984)
        FMUL FMUL_asimdsamefp16_only -> encode_F116
                                          (encode_inner_F116 775953408)
        FMUL FMUL_asimdsame_only -> encode_F116
                                      (encode_inner_F116 773905408)
        FMULX FMULX_asisdsamefp16_only -> encode_F39
                                            (encode_inner_F39 1581259776)
        FMULX FMULX_asisdsame_only -> encode_F70
                                        (encode_inner_F70 1579211776)
        FMULX FMULX_asimdsamefp16_only -> encode_F116
                                            (encode_inner_F116 239082496)
        FMULX FMULX_asimdsame_only -> encode_F116
                                        (encode_inner_F116 237034496)
        FMULX FMULX_asisdelem_RH_H -> encode_F110
                                        (encode_inner_F110 2130743296)
        FMULX FMULX_asisdelem_R_SD -> encode_F139
                                        (encode_inner_F139 2139131904)
        FMULX FMULX_asimdelem_RH_H -> encode_F152
                                        (encode_inner_F152 788566016)
        FMULX FMULX_asimdelem_R_SD -> encode_F161
                                        (encode_inner_F161 796954624)
        FNEG FNEG_H_floatdp1 -> encode_F8 (encode_inner_F8 518078464)
        FNEG FNEG_S_floatdp1 -> encode_F16 (encode_inner_F16 505495552)
        FNEG FNEG_D_floatdp1 -> encode_F0 (encode_inner_F0 509689856)
        FNEG FNEG_asimdmiscfp16_R -> encode_F49
                                       (encode_inner_F49 788068352)
        FNEG FNEG_asimdmisc_R -> encode_F49 (encode_inner_F49 782301184)
        FNMADD FNMADD_H_floatdp3 -> encode_F68 (encode_inner_F68 534773760)
        FNMADD FNMADD_S_floatdp3 -> encode_F69 (encode_inner_F69 522190848)
        FNMADD FNMADD_D_floatdp3 -> encode_F67 (encode_inner_F67 526385152)
        FNMSUB FNMSUB_H_floatdp3 -> encode_F68 (encode_inner_F68 534806528)
        FNMSUB FNMSUB_S_floatdp3 -> encode_F69 (encode_inner_F69 522223616)
        FNMSUB FNMSUB_D_floatdp3 -> encode_F67 (encode_inner_F67 526417920)
        FNMUL FNMUL_H_floatdp2 -> encode_F39 (encode_inner_F39 518031360)
        FNMUL FNMUL_S_floatdp2 -> encode_F40 (encode_inner_F40 505448448)
        FNMUL FNMUL_D_floatdp2 -> encode_F37 (encode_inner_F37 509642752)
        FRECPE FRECPE_asisdmiscfp16_R -> encode_F8
                                           (encode_inner_F8 1593432064)
        FRECPE FRECPE_asisdmisc_R -> encode_F33
                                       (encode_inner_F33 1587664896)
        FRECPE FRECPE_asimdmiscfp16_R -> encode_F49
                                           (encode_inner_F49 251254784)
        FRECPE FRECPE_asimdmisc_R -> encode_F49
                                       (encode_inner_F49 245487616)
        FRECPS FRECPS_asisdsamefp16_only -> encode_F39
                                              (encode_inner_F39 1581267968)
        FRECPS FRECPS_asisdsame_only -> encode_F70
                                          (encode_inner_F70 1579219968)
        FRECPS FRECPS_asimdsamefp16_only -> encode_F116
                                              (encode_inner_F116 239090688)
        FRECPS FRECPS_asimdsame_only -> encode_F116
                                          (encode_inner_F116 237042688)
        FRECPX FRECPX_asisdmiscfp16_R -> encode_F8
                                           (encode_inner_F8 1593440256)
        FRECPX FRECPX_asisdmisc_R -> encode_F33
                                       (encode_inner_F33 1587673088)
        FRINTA FRINTA_H_floatdp1 -> encode_F8 (encode_inner_F8 518406144)
        FRINTA FRINTA_S_floatdp1 -> encode_F16 (encode_inner_F16 505823232)
        FRINTA FRINTA_D_floatdp1 -> encode_F0 (encode_inner_F0 510017536)
        FRINTA FRINTA_asimdmiscfp16_R -> encode_F49
                                           (encode_inner_F49 779716608)
        FRINTA FRINTA_asimdmisc_R -> encode_F49
                                       (encode_inner_F49 773949440)
        FRINTI FRINTI_H_floatdp1 -> encode_F8 (encode_inner_F8 518504448)
        FRINTI FRINTI_S_floatdp1 -> encode_F16 (encode_inner_F16 505921536)
        FRINTI FRINTI_D_floatdp1 -> encode_F0 (encode_inner_F0 510115840)
        FRINTI FRINTI_asimdmiscfp16_R -> encode_F49
                                           (encode_inner_F49 788109312)
        FRINTI FRINTI_asimdmisc_R -> encode_F49
                                       (encode_inner_F49 782342144)
        FRINTM FRINTM_H_floatdp1 -> encode_F8 (encode_inner_F8 518340608)
        FRINTM FRINTM_S_floatdp1 -> encode_F16 (encode_inner_F16 505757696)
        FRINTM FRINTM_D_floatdp1 -> encode_F0 (encode_inner_F0 509952000)
        FRINTM FRINTM_asimdmiscfp16_R -> encode_F49
                                           (encode_inner_F49 242849792)
        FRINTM FRINTM_asimdmisc_R -> encode_F49
                                       (encode_inner_F49 237082624)
        FRINTN FRINTN_H_floatdp1 -> encode_F8 (encode_inner_F8 518275072)
        FRINTN FRINTN_S_floatdp1 -> encode_F16 (encode_inner_F16 505692160)
        FRINTN FRINTN_D_floatdp1 -> encode_F0 (encode_inner_F0 509886464)
        FRINTN FRINTN_asimdmiscfp16_R -> encode_F49
                                           (encode_inner_F49 242845696)
        FRINTN FRINTN_asimdmisc_R -> encode_F49
                                       (encode_inner_F49 237078528)
        FRINTP FRINTP_H_floatdp1 -> encode_F8 (encode_inner_F8 518307840)
        FRINTP FRINTP_S_floatdp1 -> encode_F16 (encode_inner_F16 505724928)
        FRINTP FRINTP_D_floatdp1 -> encode_F0 (encode_inner_F0 509919232)
        FRINTP FRINTP_asimdmiscfp16_R -> encode_F49
                                           (encode_inner_F49 251234304)
        FRINTP FRINTP_asimdmisc_R -> encode_F49
                                       (encode_inner_F49 245467136)
        FRINTX FRINTX_H_floatdp1 -> encode_F8 (encode_inner_F8 518471680)
        FRINTX FRINTX_S_floatdp1 -> encode_F16 (encode_inner_F16 505888768)
        FRINTX FRINTX_D_floatdp1 -> encode_F0 (encode_inner_F0 510083072)
        FRINTX FRINTX_asimdmiscfp16_R -> encode_F49
                                           (encode_inner_F49 779720704)
        FRINTX FRINTX_asimdmisc_R -> encode_F49
                                       (encode_inner_F49 773953536)
        FRINTZ FRINTZ_H_floatdp1 -> encode_F8 (encode_inner_F8 518373376)
        FRINTZ FRINTZ_S_floatdp1 -> encode_F16 (encode_inner_F16 505790464)
        FRINTZ FRINTZ_D_floatdp1 -> encode_F0 (encode_inner_F0 509984768)
        FRINTZ FRINTZ_asimdmiscfp16_R -> encode_F49
                                           (encode_inner_F49 251238400)
        FRINTZ FRINTZ_asimdmisc_R -> encode_F49
                                       (encode_inner_F49 245471232)
        FRSQRTE FRSQRTE_asisdmiscfp16_R -> encode_F8
                                             (encode_inner_F8 2130302976)
        FRSQRTE FRSQRTE_asisdmisc_R -> encode_F33
                                         (encode_inner_F33 2124535808)
        FRSQRTE FRSQRTE_asimdmiscfp16_R -> encode_F49
                                             (encode_inner_F49 788125696)
        FRSQRTE FRSQRTE_asimdmisc_R -> encode_F49
                                         (encode_inner_F49 782358528)
        FRSQRTS FRSQRTS_asisdsamefp16_only -> encode_F39
                                                (encode_inner_F39 1589656576)
        FRSQRTS FRSQRTS_asisdsame_only -> encode_F70
                                            (encode_inner_F70 1587608576)
        FRSQRTS FRSQRTS_asimdsamefp16_only -> encode_F116
                                                (encode_inner_F116 247479296)
        FRSQRTS FRSQRTS_asimdsame_only -> encode_F116
                                            (encode_inner_F116 245431296)
        FSQRT FSQRT_H_floatdp1 -> encode_F8 (encode_inner_F8 518111232)
        FSQRT FSQRT_S_floatdp1 -> encode_F16 (encode_inner_F16 505528320)
        FSQRT FSQRT_D_floatdp1 -> encode_F0 (encode_inner_F0 509722624)
        FSQRT FSQRT_asimdmiscfp16_R -> encode_F49
                                         (encode_inner_F49 788133888)
        FSQRT FSQRT_asimdmisc_R -> encode_F49 (encode_inner_F49 782366720)
        FSUB FSUB_H_floatdp2 -> encode_F39 (encode_inner_F39 518010880)
        FSUB FSUB_S_floatdp2 -> encode_F40 (encode_inner_F40 505427968)
        FSUB FSUB_D_floatdp2 -> encode_F37 (encode_inner_F37 509622272)
        FSUB FSUB_asimdsamefp16_only -> encode_F116
                                          (encode_inner_F116 247469056)
        FSUB FSUB_asimdsame_only -> encode_F116
                                      (encode_inner_F116 245421056)
        INS INS_asimdins_IV_v -> encode_F168 (encode_inner_F168 1845494784)
        INS INS_asimdins_IR_r -> encode_F108 (encode_inner_F108 1308630016)
        LD1 LD1_asisdlse_R1_1v -> encode_F72 (encode_inner_F72 205549568)
        LD1 LD1_asisdlse_R2_2v -> encode_F144 (encode_inner_F144 205561856)
        LD1 LD1_asisdlse_R3_3v -> encode_F176 (encode_inner_F176 205545472)
        LD1 LD1_asisdlse_R4_4v -> encode_F202 (encode_inner_F202 205529088)
        LD1 LD1_asisdlsep_I1_i1 -> encode_F120
                                     (encode_inner_F120 215969792)
        LD1 LD1_asisdlsep_R1_r1 -> encode_F118
                                     (encode_inner_F118 213938176)
        LD1 LD1_asisdlsep_I2_i2 -> encode_F170
                                     (encode_inner_F170 215982080)
        LD1 LD1_asisdlsep_R2_r2 -> encode_F169
                                     (encode_inner_F169 213950464)
        LD1 LD1_asisdlsep_I3_i3 -> encode_F193
                                     (encode_inner_F193 215965696)
        LD1 LD1_asisdlsep_R3_r3 -> encode_F192
                                     (encode_inner_F192 213934080)
        LD1 LD1_asisdlsep_I4_i4 -> encode_F213
                                     (encode_inner_F213 215949312)
        LD1 LD1_asisdlsep_R4_r4 -> encode_F210
                                     (encode_inner_F210 213917696)
        LD1 LD1_asisdlso_B1_1b -> encode_F121 (encode_inner_F121 222298112)
        LD1 LD1_asisdlso_H1_1h -> encode_F123 (encode_inner_F123 222314496)
        LD1 LD1_asisdlso_S1_1s -> encode_F124 (encode_inner_F124 222330880)
        LD1 LD1_asisdlso_D1_1d -> encode_F122 (encode_inner_F122 222331904)
        LD1 LD1_asisdlsop_B1_i1b -> encode_F145
                                      (encode_inner_F145 232718336)
        LD1 LD1_asisdlsop_BX1_r1b -> encode_F154
                                       (encode_inner_F154 230686720)
        LD1 LD1_asisdlsop_H1_i1h -> encode_F147
                                      (encode_inner_F147 232734720)
        LD1 LD1_asisdlsop_HX1_r1h -> encode_F156
                                       (encode_inner_F156 230703104)
        LD1 LD1_asisdlsop_S1_i1s -> encode_F148
                                      (encode_inner_F148 232751104)
        LD1 LD1_asisdlsop_SX1_r1s -> encode_F157
                                       (encode_inner_F157 230719488)
        LD1 LD1_asisdlsop_D1_i1d -> encode_F146
                                      (encode_inner_F146 232752128)
        LD1 LD1_asisdlsop_DX1_r1d -> encode_F155
                                       (encode_inner_F155 230720512)
        LD1R LD1R_asisdlso_R1 -> encode_F72 (encode_inner_F72 222347264)
        LD1R LD1R_asisdlsop_R1_i -> encode_F120
                                      (encode_inner_F120 232767488)
        LD1R LD1R_asisdlsop_RX1_r -> encode_F118
                                       (encode_inner_F118 230735872)
        LD2 LD2_asisdlse_R2 -> encode_F144 (encode_inner_F144 205553664)
        LD2 LD2_asisdlsep_I2_i -> encode_F170 (encode_inner_F170 215973888)
        LD2 LD2_asisdlsep_R2_r -> encode_F169 (encode_inner_F169 213942272)
        LD2 LD2_asisdlso_B2_2b -> encode_F164 (encode_inner_F164 224395264)
        LD2 LD2_asisdlso_H2_2h -> encode_F166 (encode_inner_F166 224411648)
        LD2 LD2_asisdlso_S2_2s -> encode_F167 (encode_inner_F167 224428032)
        LD2 LD2_asisdlso_D2_2d -> encode_F165 (encode_inner_F165 224429056)
        LD2 LD2_asisdlsop_B2_i2b -> encode_F171
                                      (encode_inner_F171 234815488)
        LD2 LD2_asisdlsop_BX2_r2b -> encode_F177
                                       (encode_inner_F177 232783872)
        LD2 LD2_asisdlsop_H2_i2h -> encode_F172
                                      (encode_inner_F172 234831872)
        LD2 LD2_asisdlsop_HX2_r2h -> encode_F179
                                       (encode_inner_F179 232800256)
        LD2 LD2_asisdlsop_S2_i2s -> encode_F173
                                      (encode_inner_F173 234848256)
        LD2 LD2_asisdlsop_SX2_r2s -> encode_F180
                                       (encode_inner_F180 232816640)
        LD2 LD2_asisdlsop_D2_i2d -> encode_F175
                                      (encode_inner_F175 234849280)
        LD2 LD2_asisdlsop_DX2_r2d -> encode_F178
                                       (encode_inner_F178 232817664)
        LD2R LD2R_asisdlso_R2 -> encode_F144 (encode_inner_F144 224444416)
        LD2R LD2R_asisdlsop_R2_i -> encode_F170
                                      (encode_inner_F170 234864640)
        LD2R LD2R_asisdlsop_RX2_r -> encode_F169
                                       (encode_inner_F169 232833024)
        LD3 LD3_asisdlse_R3 -> encode_F176 (encode_inner_F176 205537280)
        LD3 LD3_asisdlsep_I3_i -> encode_F193 (encode_inner_F193 215957504)
        LD3 LD3_asisdlsep_R3_r -> encode_F192 (encode_inner_F192 213925888)
        LD3 LD3_asisdlso_B3_3b -> encode_F182 (encode_inner_F182 222306304)
        LD3 LD3_asisdlso_H3_3h -> encode_F184 (encode_inner_F184 222322688)
        LD3 LD3_asisdlso_S3_3s -> encode_F185 (encode_inner_F185 222339072)
        LD3 LD3_asisdlso_D3_3d -> encode_F183 (encode_inner_F183 222340096)
        LD3 LD3_asisdlsop_B3_i3b -> encode_F194
                                      (encode_inner_F194 232726528)
        LD3 LD3_asisdlsop_BX3_r3b -> encode_F198
                                       (encode_inner_F198 230694912)
        LD3 LD3_asisdlsop_H3_i3h -> encode_F195
                                      (encode_inner_F195 232742912)
        LD3 LD3_asisdlsop_HX3_r3h -> encode_F200
                                       (encode_inner_F200 230711296)
        LD3 LD3_asisdlsop_S3_i3s -> encode_F197
                                      (encode_inner_F197 232759296)
        LD3 LD3_asisdlsop_SX3_r3s -> encode_F201
                                       (encode_inner_F201 230727680)
        LD3 LD3_asisdlsop_D3_i3d -> encode_F196
                                      (encode_inner_F196 232760320)
        LD3 LD3_asisdlsop_DX3_r3d -> encode_F199
                                       (encode_inner_F199 230728704)
        LD3R LD3R_asisdlso_R3 -> encode_F176 (encode_inner_F176 222355456)
        LD3R LD3R_asisdlsop_R3_i -> encode_F193
                                      (encode_inner_F193 232775680)
        LD3R LD3R_asisdlsop_RX3_r -> encode_F192
                                       (encode_inner_F192 230744064)
        LD4 LD4_asisdlse_R4 -> encode_F202 (encode_inner_F202 205520896)
        LD4 LD4_asisdlsep_I4_i -> encode_F213 (encode_inner_F213 215941120)
        LD4 LD4_asisdlsep_R4_r -> encode_F210 (encode_inner_F210 213909504)
        LD4 LD4_asisdlso_B4_4b -> encode_F203 (encode_inner_F203 224403456)
        LD4 LD4_asisdlso_H4_4h -> encode_F205 (encode_inner_F205 224419840)
        LD4 LD4_asisdlso_S4_4s -> encode_F206 (encode_inner_F206 224436224)
        LD4 LD4_asisdlso_D4_4d -> encode_F204 (encode_inner_F204 224437248)
        LD4 LD4_asisdlsop_B4_i4b -> encode_F208
                                      (encode_inner_F208 234823680)
        LD4 LD4_asisdlsop_BX4_r4b -> encode_F214
                                       (encode_inner_F214 232792064)
        LD4 LD4_asisdlsop_H4_i4h -> encode_F209
                                      (encode_inner_F209 234840064)
        LD4 LD4_asisdlsop_HX4_r4h -> encode_F216
                                       (encode_inner_F216 232808448)
        LD4 LD4_asisdlsop_S4_i4s -> encode_F212
                                      (encode_inner_F212 234856448)
        LD4 LD4_asisdlsop_SX4_r4s -> encode_F217
                                       (encode_inner_F217 232824832)
        LD4 LD4_asisdlsop_D4_i4d -> encode_F211
                                      (encode_inner_F211 234857472)
        LD4 LD4_asisdlsop_DX4_r4d -> encode_F215
                                       (encode_inner_F215 232825856)
        LD4R LD4R_asisdlso_R4 -> encode_F202 (encode_inner_F202 224452608)
        LD4R LD4R_asisdlsop_R4_i -> encode_F213
                                      (encode_inner_F213 234872832)
        LD4R LD4R_asisdlsop_RX4_r -> encode_F210
                                       (encode_inner_F210 232841216)
        LDNP LDNP_S_ldstnapair_offs -> encode_F136
                                         (encode_inner_F136 742391808)
        LDNP LDNP_D_ldstnapair_offs -> encode_F134
                                         (encode_inner_F134 1816133632)
        LDNP LDNP_Q_ldstnapair_offs -> encode_F135
                                         (encode_inner_F135 2889875456)
        LDP LDP_S_ldstpair_post -> encode_F127
                                     (encode_inner_F127 750780416)
        LDP LDP_D_ldstpair_post -> encode_F125
                                     (encode_inner_F125 1824522240)
        LDP LDP_Q_ldstpair_post -> encode_F126
                                     (encode_inner_F126 2898264064)
        LDP LDP_S_ldstpair_pre -> encode_F131 (encode_inner_F131 767557632)
        LDP LDP_D_ldstpair_pre -> encode_F129
                                    (encode_inner_F129 1841299456)
        LDP LDP_Q_ldstpair_pre -> encode_F130
                                    (encode_inner_F130 2915041280)
        LDP LDP_S_ldstpair_off -> encode_F136 (encode_inner_F136 759169024)
        LDP LDP_D_ldstpair_off -> encode_F134
                                    (encode_inner_F134 1832910848)
        LDP LDP_Q_ldstpair_off -> encode_F135
                                    (encode_inner_F135 2906652672)
        LDR LDR_B_ldst_immpost -> encode_F75 (encode_inner_F75 1010828288)
        LDR LDR_H_ldst_immpost -> encode_F79 (encode_inner_F79 2084570112)
        LDR LDR_S_ldst_immpost -> encode_F82 (encode_inner_F82 3158311936)
        LDR LDR_D_ldst_immpost -> encode_F77 (encode_inner_F77 4232053760)
        LDR LDR_Q_ldst_immpost -> encode_F80 (encode_inner_F80 1019216896)
        LDR LDR_B_ldst_immpre -> encode_F88 (encode_inner_F88 1010830336)
        LDR LDR_H_ldst_immpre -> encode_F90 (encode_inner_F90 2084572160)
        LDR LDR_S_ldst_immpre -> encode_F92 (encode_inner_F92 3158313984)
        LDR LDR_D_ldst_immpre -> encode_F89 (encode_inner_F89 4232055808)
        LDR LDR_Q_ldst_immpre -> encode_F91 (encode_inner_F91 1019218944)
        LDR LDR_B_ldst_pos -> encode_F97 (encode_inner_F97 1027604480)
        LDR LDR_H_ldst_pos -> encode_F101 (encode_inner_F101 2101346304)
        LDR LDR_S_ldst_pos -> encode_F105 (encode_inner_F105 3175088128)
        LDR LDR_D_ldst_pos -> encode_F99 (encode_inner_F99 4248829952)
        LDR LDR_Q_ldst_pos -> encode_F103 (encode_inner_F103 1035993088)
        LDR LDR_S_loadlit -> encode_F32 (encode_inner_F32 469762048)
        LDR LDR_D_loadlit -> encode_F30 (encode_inner_F30 1543503872)
        LDR LDR_Q_loadlit -> encode_F31 (encode_inner_F31 2617245696)
        LDR LDR_B_ldst_regoff -> encode_F186 (encode_inner_F186 1012926464)
        LDR LDR_BL_ldst_regoff -> encode_F158
                                    (encode_inner_F158 1012951040)
        LDR LDR_H_ldst_regoff -> encode_F189 (encode_inner_F189 2086668288)
        LDR LDR_S_ldst_regoff -> encode_F191 (encode_inner_F191 3160410112)
        LDR LDR_D_ldst_regoff -> encode_F188 (encode_inner_F188 4234151936)
        LDR LDR_Q_ldst_regoff -> encode_F190 (encode_inner_F190 1021315072)
        LDUR LDUR_B_ldst_unscaled -> encode_F98
                                       (encode_inner_F98 1010827264)
        LDUR LDUR_H_ldst_unscaled -> encode_F102
                                       (encode_inner_F102 2084569088)
        LDUR LDUR_S_ldst_unscaled -> encode_F106
                                       (encode_inner_F106 3158310912)
        LDUR LDUR_D_ldst_unscaled -> encode_F100
                                       (encode_inner_F100 4232052736)
        LDUR LDUR_Q_ldst_unscaled -> encode_F104
                                       (encode_inner_F104 1019215872)
        MLA MLA_asimdelem_R -> encode_F161 (encode_inner_F161 788529152)
        MLA MLA_asimdsame_only -> encode_F116 (encode_inner_F116 237016064)
        MLS MLS_asimdelem_R -> encode_F161 (encode_inner_F161 788545536)
        MLS MLS_asimdsame_only -> encode_F116 (encode_inner_F116 773886976)
        MOVI MOVI_asimdimm_N_b -> encode_F113 (encode_inner_F113 251716608)
        MOVI MOVI_asimdimm_L_hl -> encode_F142
                                     (encode_inner_F142 251692032)
        MOVI MOVI_asimdimm_L_sl -> encode_F142
                                     (encode_inner_F142 251659264)
        MOVI MOVI_asimdimm_M_sm -> encode_F133
                                     (encode_inner_F133 251708416)
        MOVI MOVI_asimdimm_D_ds -> encode_F27 (encode_inner_F27 788587520)
        MOVI MOVI_asimdimm_D2_d -> encode_F34 (encode_inner_F34 1862329344)
        MUL MUL_asimdelem_R -> encode_F161 (encode_inner_F161 251691008)
        MUL MUL_asimdsame_only -> encode_F116 (encode_inner_F116 237018112)
        MVNI MVNI_asimdimm_L_hl -> encode_F142
                                     (encode_inner_F142 788562944)
        MVNI MVNI_asimdimm_L_sl -> encode_F142
                                     (encode_inner_F142 788530176)
        MVNI MVNI_asimdimm_M_sm -> encode_F133
                                     (encode_inner_F133 788579328)
        NEG NEG_asisdmisc_R -> encode_F33 (encode_inner_F33 2116073472)
        NEG NEG_asimdmisc_R -> encode_F49 (encode_inner_F49 773896192)
        NOT NOT_asimdmisc_R -> encode_F49 (encode_inner_F49 773871616)
        ORN ORN_asimdsame_only -> encode_F116 (encode_inner_F116 249568256)
        ORR ORR_asimdimm_L_hl -> encode_F142 (encode_inner_F142 251696128)
        ORR ORR_asimdimm_L_sl -> encode_F142 (encode_inner_F142 251663360)
        ORR ORR_asimdsame_only -> encode_F116 (encode_inner_F116 245373952)
        PMUL PMUL_asimdsame_only -> encode_F116
                                      (encode_inner_F116 773889024)
        PMULL PMULL_asimddiff_L -> encode_F150
                                     (encode_inner_F150 237035520)
        RADDHN RADDHN_asimddiff_N -> encode_F151
                                       (encode_inner_F151 773865472)
        RAX1 RAX1_VVV2_cryptosha512_3 -> encode_F95
                                           (encode_inner_F95 3462433792)
        RBIT RBIT_asimdmisc_R -> encode_F49 (encode_inner_F49 778065920)
        REV16 REV16_asimdmisc_R -> encode_F49 (encode_inner_F49 236984320)
        REV32 REV32_asimdmisc_R -> encode_F49 (encode_inner_F49 773851136)
        REV64 REV64_asimdmisc_R -> encode_F49 (encode_inner_F49 236980224)
        RSHRN RSHRN_asimdshf_N -> encode_F138 (encode_inner_F138 251694080)
        RSUBHN RSUBHN_asimddiff_N -> encode_F151
                                       (encode_inner_F151 773873664)
        SABA SABA_asimdsame_only -> encode_F116
                                      (encode_inner_F116 237009920)
        SABAL SABAL_asimddiff_L -> encode_F150
                                     (encode_inner_F150 236998656)
        SABD SABD_asimdsame_only -> encode_F116
                                      (encode_inner_F116 237007872)
        SABDL SABDL_asimddiff_L -> encode_F150
                                     (encode_inner_F150 237006848)
        SADALP SADALP_asimdmisc_P -> encode_F60
                                       (encode_inner_F60 237004800)
        SADDL SADDL_asimddiff_L -> encode_F150
                                     (encode_inner_F150 236978176)
        SADDLP SADDLP_asimdmisc_P -> encode_F60
                                       (encode_inner_F60 236988416)
        SADDLV SADDLV_asimdall_only -> encode_F41
                                         (encode_inner_F41 238041088)
        SADDW SADDW_asimddiff_W -> encode_F149
                                     (encode_inner_F149 236982272)
        SCVTF SCVTF_H32_float2fix -> encode_F55
                                       (encode_inner_F55 516030464)
        SCVTF SCVTF_S32_float2fix -> encode_F57
                                       (encode_inner_F57 503447552)
        SCVTF SCVTF_D32_float2fix -> encode_F53
                                       (encode_inner_F53 507641856)
        SCVTF SCVTF_H64_float2fix -> encode_F56
                                       (encode_inner_F56 2663514112)
        SCVTF SCVTF_S64_float2fix -> encode_F58
                                       (encode_inner_F58 2650931200)
        SCVTF SCVTF_D64_float2fix -> encode_F54
                                       (encode_inner_F54 2655125504)
        SCVTF SCVTF_H32_float2int -> encode_F10
                                       (encode_inner_F10 518127616)
        SCVTF SCVTF_S32_float2int -> encode_F17
                                       (encode_inner_F17 505544704)
        SCVTF SCVTF_D32_float2int -> encode_F3 (encode_inner_F3 509739008)
        SCVTF SCVTF_H64_float2int -> encode_F11
                                       (encode_inner_F11 2665611264)
        SCVTF SCVTF_S64_float2int -> encode_F18
                                       (encode_inner_F18 2653028352)
        SCVTF SCVTF_D64_float2int -> encode_F4 (encode_inner_F4 2657222656)
        SCVTF SCVTF_asisdshf_C -> encode_F83 (encode_inner_F83 1593893888)
        SCVTF SCVTF_asimdshf_C -> encode_F114 (encode_inner_F114 251716608)
        SCVTF SCVTF_asisdmiscfp16_R -> encode_F8
                                         (encode_inner_F8 1585043456)
        SCVTF SCVTF_asisdmisc_R -> encode_F33 (encode_inner_F33 1579276288)
        SCVTF SCVTF_asimdmiscfp16_R -> encode_F49
                                         (encode_inner_F49 242866176)
        SCVTF SCVTF_asimdmisc_R -> encode_F49 (encode_inner_F49 237099008)
        SDOT SDOT_asimdelem_D -> encode_F162 (encode_inner_F162 251715584)
        SDOT SDOT_asimdsame2_D -> encode_F128 (encode_inner_F128 234918912)
        SHA1C SHA1C_QSV_cryptosha3 -> encode_F52
                                        (encode_inner_F52 1577058304)
        SHA1H SHA1H_SS_cryptosha2 -> encode_F16
                                       (encode_inner_F16 1579681792)
        SHA1M SHA1M_QSV_cryptosha3 -> encode_F52
                                        (encode_inner_F52 1577066496)
        SHA1P SHA1P_QSV_cryptosha3 -> encode_F52
                                        (encode_inner_F52 1577062400)
        SHA1SU0 SHA1SU0_VVV_cryptosha3 -> encode_F96
                                            (encode_inner_F96 1577070592)
        SHA1SU1 SHA1SU1_VV_cryptosha2 -> encode_F44
                                           (encode_inner_F44 1579685888)
        SHA256H SHA256H_QQV_cryptosha3 -> encode_F51
                                            (encode_inner_F51 1577074688)
        SHA256H2 SHA256H2_QQV_cryptosha3 -> encode_F51
                                              (encode_inner_F51 1577078784)
        SHA256SU0 SHA256SU0_VV_cryptosha2 -> encode_F44
                                               (encode_inner_F44 1579689984)
        SHA256SU1 SHA256SU1_VVV_cryptosha3 -> encode_F96
                                                (encode_inner_F96 1577082880)
        SHA512H SHA512H_QQV_cryptosha512_3 -> encode_F50
                                                (encode_inner_F50 3462430720)
        SHA512H2 SHA512H2_QQV_cryptosha512_3 -> encode_F50
                                                  (encode_inner_F50 3462431744)
        SHA512SU0 SHA512SU0_VV2_cryptosha512_2 -> encode_F43
                                                    (encode_inner_F43 3468722176)
        SHA512SU1 SHA512SU1_VVV2_cryptosha512_3 -> encode_F95
                                                     (encode_inner_F95 3462432768)
        SHADD SHADD_asimdsame_only -> encode_F116
                                        (encode_inner_F116 236979200)
        SHL SHL_asisdshf_R -> encode_F84 (encode_inner_F84 1593857024)
        SHL SHL_asimdshf_R -> encode_F115 (encode_inner_F115 251679744)
        SHLL SHLL_asimdmisc_S -> encode_F137 (encode_inner_F137 773928960)
        SHRN SHRN_asimdshf_N -> encode_F138 (encode_inner_F138 251692032)
        SHSUB SHSUB_asimdsame_only -> encode_F116
                                        (encode_inner_F116 236987392)
        SLI SLI_asisdshf_R -> encode_F84 (encode_inner_F84 2130727936)
        SLI SLI_asimdshf_R -> encode_F115 (encode_inner_F115 788550656)
        SM3PARTW1 SM3PARTW1_VVV4_cryptosha512_3 -> encode_F96
                                                     (encode_inner_F96 3462447104)
        SM3PARTW2 SM3PARTW2_VVV4_cryptosha512_3 -> encode_F96
                                                     (encode_inner_F96 3462448128)
        SM3SS1 SM3SS1_VVV4_crypto4 -> encode_F141
                                        (encode_inner_F141 3460300800)
        SM3TT1A SM3TT1A_VVV4_crypto3_imm2 -> encode_F132
                                               (encode_inner_F132 3460333568)
        SM3TT1B SM3TT1B_VVV4_crypto3_imm2 -> encode_F132
                                               (encode_inner_F132 3460334592)
        SM3TT2A SM3TT2A_VVV4_crypto3_imm2 -> encode_F132
                                               (encode_inner_F132 3460335616)
        SM3TT2B SM3TT2B_VVV_crypto3_imm2 -> encode_F119
                                              (encode_inner_F119 3460336640)
        SM4E SM4E_VV4_cryptosha512_2 -> encode_F44
                                          (encode_inner_F44 3468723200)
        SM4EKEY SM4EKEY_VVV4_cryptosha512_3 -> encode_F96
                                                 (encode_inner_F96 3462449152)
        SMAX SMAX_asimdsame_only -> encode_F116
                                      (encode_inner_F116 237003776)
        SMAXP SMAXP_asimdsame_only -> encode_F116
                                        (encode_inner_F116 237020160)
        SMAXV SMAXV_asimdall_only -> encode_F41
                                       (encode_inner_F41 238069760)
        SMIN SMIN_asimdsame_only -> encode_F116
                                      (encode_inner_F116 237005824)
        SMINP SMINP_asimdsame_only -> encode_F116
                                        (encode_inner_F116 237022208)
        SMINV SMINV_asimdall_only -> encode_F41
                                       (encode_inner_F41 238135296)
        SMLAL SMLAL_asimdelem_L -> encode_F174
                                     (encode_inner_F174 251666432)
        SMLAL SMLAL_asimddiff_L -> encode_F150
                                     (encode_inner_F150 237010944)
        SMLSL SMLSL_asimdelem_L -> encode_F174
                                     (encode_inner_F174 251682816)
        SMLSL SMLSL_asimddiff_L -> encode_F150
                                     (encode_inner_F150 237019136)
        SMOV SMOV_asimdins_W_w -> encode_F86 (encode_inner_F86 234892288)
        SMOV SMOV_asimdins_X_x -> encode_F87 (encode_inner_F87 1308634112)
        SMULL SMULL_asimdelem_L -> encode_F174
                                     (encode_inner_F174 251699200)
        SMULL SMULL_asimddiff_L -> encode_F150
                                     (encode_inner_F150 237027328)
        SQABS SQABS_asisdmisc_R -> encode_F33 (encode_inner_F33 1579186176)
        SQABS SQABS_asimdmisc_R -> encode_F49 (encode_inner_F49 237008896)
        SQADD SQADD_asisdsame_only -> encode_F70
                                        (encode_inner_F70 1579158528)
        SQADD SQADD_asimdsame_only -> encode_F116
                                        (encode_inner_F116 236981248)
        SQDMLAL SQDMLAL_asisdelem_L -> encode_F153
                                         (encode_inner_F153 1593847808)
        SQDMLAL SQDMLAL_asimdelem_L -> encode_F174
                                         (encode_inner_F174 251670528)
        SQDMLAL SQDMLAL_asisddiff_only -> encode_F94
                                            (encode_inner_F94 1579192320)
        SQDMLAL SQDMLAL_asimddiff_L -> encode_F150
                                         (encode_inner_F150 237015040)
        SQDMLSL SQDMLSL_asisdelem_L -> encode_F153
                                         (encode_inner_F153 1593864192)
        SQDMLSL SQDMLSL_asimdelem_L -> encode_F174
                                         (encode_inner_F174 251686912)
        SQDMLSL SQDMLSL_asisddiff_only -> encode_F94
                                            (encode_inner_F94 1579200512)
        SQDMLSL SQDMLSL_asimddiff_L -> encode_F150
                                         (encode_inner_F150 237023232)
        SQDMULH SQDMULH_asisdelem_R -> encode_F139
                                         (encode_inner_F139 1593884672)
        SQDMULH SQDMULH_asimdelem_R -> encode_F161
                                         (encode_inner_F161 251707392)
        SQDMULH SQDMULH_asisdsame_only -> encode_F70
                                            (encode_inner_F70 1579201536)
        SQDMULH SQDMULH_asimdsame_only -> encode_F116
                                            (encode_inner_F116 237024256)
        SQDMULL SQDMULL_asisdelem_L -> encode_F153
                                         (encode_inner_F153 1593880576)
        SQDMULL SQDMULL_asimdelem_L -> encode_F174
                                         (encode_inner_F174 251703296)
        SQDMULL SQDMULL_asisddiff_only -> encode_F94
                                            (encode_inner_F94 1579208704)
        SQDMULL SQDMULL_asimddiff_L -> encode_F150
                                         (encode_inner_F150 237031424)
        SQNEG SQNEG_asisdmisc_R -> encode_F33 (encode_inner_F33 2116057088)
        SQNEG SQNEG_asimdmisc_R -> encode_F49 (encode_inner_F49 773879808)
        SQRDMLAH SQRDMLAH_asisdelem_R -> encode_F139
                                           (encode_inner_F139 2130759680)
        SQRDMLAH SQRDMLAH_asimdelem_R -> encode_F161
                                           (encode_inner_F161 788582400)
        SQRDMLAH SQRDMLAH_asisdsame2_only -> encode_F70
                                               (encode_inner_F70 2113963008)
        SQRDMLAH SQRDMLAH_asimdsame2_only -> encode_F116
                                               (encode_inner_F116 771785728)
        SQRDMLSH SQRDMLSH_asisdelem_R -> encode_F139
                                           (encode_inner_F139 2130767872)
        SQRDMLSH SQRDMLSH_asimdelem_R -> encode_F161
                                           (encode_inner_F161 788590592)
        SQRDMLSH SQRDMLSH_asisdsame2_only -> encode_F70
                                               (encode_inner_F70 2113965056)
        SQRDMLSH SQRDMLSH_asimdsame2_only -> encode_F116
                                               (encode_inner_F116 771787776)
        SQRDMULH SQRDMULH_asisdelem_R -> encode_F139
                                           (encode_inner_F139 1593888768)
        SQRDMULH SQRDMULH_asimdelem_R -> encode_F161
                                           (encode_inner_F161 251711488)
        SQRDMULH SQRDMULH_asisdsame_only -> encode_F70
                                              (encode_inner_F70 2116072448)
        SQRDMULH SQRDMULH_asimdsame_only -> encode_F116
                                              (encode_inner_F116 773895168)
        SQRSHL SQRSHL_asisdsame_only -> encode_F70
                                          (encode_inner_F70 1579179008)
        SQRSHL SQRSHL_asimdsame_only -> encode_F116
                                          (encode_inner_F116 237001728)
        SQRSHRN SQRSHRN_asisdshf_N -> encode_F107
                                        (encode_inner_F107 1593875456)
        SQRSHRN SQRSHRN_asimdshf_N -> encode_F138
                                        (encode_inner_F138 251698176)
        SQRSHRUN SQRSHRUN_asisdshf_N -> encode_F107
                                          (encode_inner_F107 2130742272)
        SQRSHRUN SQRSHRUN_asimdshf_N -> encode_F138
                                          (encode_inner_F138 788564992)
        SQSHL SQSHL_asisdshf_R -> encode_F84 (encode_inner_F84 1593865216)
        SQSHL SQSHL_asimdshf_R -> encode_F115 (encode_inner_F115 251687936)
        SQSHL SQSHL_asisdsame_only -> encode_F70
                                        (encode_inner_F70 1579174912)
        SQSHL SQSHL_asimdsame_only -> encode_F116
                                        (encode_inner_F116 236997632)
        SQSHLU SQSHLU_asisdshf_R -> encode_F84
                                      (encode_inner_F84 2130732032)
        SQSHLU SQSHLU_asimdshf_R -> encode_F115
                                      (encode_inner_F115 788554752)
        SQSHRN SQSHRN_asisdshf_N -> encode_F107
                                      (encode_inner_F107 1593873408)
        SQSHRN SQSHRN_asimdshf_N -> encode_F138
                                      (encode_inner_F138 251696128)
        SQSHRUN SQSHRUN_asisdshf_N -> encode_F107
                                        (encode_inner_F107 2130740224)
        SQSHRUN SQSHRUN_asimdshf_N -> encode_F138
                                        (encode_inner_F138 788562944)
        SQSUB SQSUB_asisdsame_only -> encode_F70
                                        (encode_inner_F70 1579166720)
        SQSUB SQSUB_asimdsame_only -> encode_F116
                                        (encode_inner_F116 236989440)
        SQXTN SQXTN_asisdmisc_N -> encode_F42 (encode_inner_F42 1579239424)
        SQXTN SQXTN_asimdmisc_N -> encode_F74 (encode_inner_F74 237062144)
        SQXTUN SQXTUN_asisdmisc_N -> encode_F42
                                       (encode_inner_F42 2116102144)
        SQXTUN SQXTUN_asimdmisc_N -> encode_F74
                                       (encode_inner_F74 773924864)
        SRHADD SRHADD_asimdsame_only -> encode_F116
                                          (encode_inner_F116 236983296)
        SRI SRI_asisdshf_R -> encode_F84 (encode_inner_F84 2130723840)
        SRI SRI_asimdshf_R -> encode_F115 (encode_inner_F115 788546560)
        SRSHL SRSHL_asisdsame_only -> encode_F70
                                        (encode_inner_F70 1579176960)
        SRSHL SRSHL_asimdsame_only -> encode_F116
                                        (encode_inner_F116 236999680)
        SRSHR SRSHR_asisdshf_R -> encode_F84 (encode_inner_F84 1593844736)
        SRSHR SRSHR_asimdshf_R -> encode_F115 (encode_inner_F115 251667456)
        SRSRA SRSRA_asisdshf_R -> encode_F84 (encode_inner_F84 1593848832)
        SRSRA SRSRA_asimdshf_R -> encode_F115 (encode_inner_F115 251671552)
        SSHL SSHL_asisdsame_only -> encode_F70
                                      (encode_inner_F70 1579172864)
        SSHL SSHL_asimdsame_only -> encode_F116
                                      (encode_inner_F116 236995584)
        SSHLL SSHLL_asimdshf_L -> encode_F137 (encode_inner_F137 251700224)
        SSHR SSHR_asisdshf_R -> encode_F84 (encode_inner_F84 1593836544)
        SSHR SSHR_asimdshf_R -> encode_F115 (encode_inner_F115 251659264)
        SSRA SSRA_asisdshf_R -> encode_F84 (encode_inner_F84 1593840640)
        SSRA SSRA_asimdshf_R -> encode_F115 (encode_inner_F115 251663360)
        SSUBL SSUBL_asimddiff_L -> encode_F150
                                     (encode_inner_F150 236986368)
        SSUBW SSUBW_asimddiff_W -> encode_F149
                                     (encode_inner_F149 236990464)
        ST1 ST1_asisdlse_R1_1v -> encode_F72 (encode_inner_F72 201355264)
        ST1 ST1_asisdlse_R2_2v -> encode_F144 (encode_inner_F144 201367552)
        ST1 ST1_asisdlse_R3_3v -> encode_F176 (encode_inner_F176 201351168)
        ST1 ST1_asisdlse_R4_4v -> encode_F202 (encode_inner_F202 201334784)
        ST1 ST1_asisdlsep_I1_i1 -> encode_F120
                                     (encode_inner_F120 211775488)
        ST1 ST1_asisdlsep_R1_r1 -> encode_F118
                                     (encode_inner_F118 209743872)
        ST1 ST1_asisdlsep_I2_i2 -> encode_F170
                                     (encode_inner_F170 211787776)
        ST1 ST1_asisdlsep_R2_r2 -> encode_F169
                                     (encode_inner_F169 209756160)
        ST1 ST1_asisdlsep_I3_i3 -> encode_F193
                                     (encode_inner_F193 211771392)
        ST1 ST1_asisdlsep_R3_r3 -> encode_F192
                                     (encode_inner_F192 209739776)
        ST1 ST1_asisdlsep_I4_i4 -> encode_F213
                                     (encode_inner_F213 211755008)
        ST1 ST1_asisdlsep_R4_r4 -> encode_F210
                                     (encode_inner_F210 209723392)
        ST1 ST1_asisdlso_B1_1b -> encode_F121 (encode_inner_F121 218103808)
        ST1 ST1_asisdlso_H1_1h -> encode_F123 (encode_inner_F123 218120192)
        ST1 ST1_asisdlso_S1_1s -> encode_F124 (encode_inner_F124 218136576)
        ST1 ST1_asisdlso_D1_1d -> encode_F122 (encode_inner_F122 218137600)
        ST1 ST1_asisdlsop_B1_i1b -> encode_F145
                                      (encode_inner_F145 228524032)
        ST1 ST1_asisdlsop_BX1_r1b -> encode_F154
                                       (encode_inner_F154 226492416)
        ST1 ST1_asisdlsop_H1_i1h -> encode_F147
                                      (encode_inner_F147 228540416)
        ST1 ST1_asisdlsop_HX1_r1h -> encode_F156
                                       (encode_inner_F156 226508800)
        ST1 ST1_asisdlsop_S1_i1s -> encode_F148
                                      (encode_inner_F148 228556800)
        ST1 ST1_asisdlsop_SX1_r1s -> encode_F157
                                       (encode_inner_F157 226525184)
        ST1 ST1_asisdlsop_D1_i1d -> encode_F146
                                      (encode_inner_F146 228557824)
        ST1 ST1_asisdlsop_DX1_r1d -> encode_F155
                                       (encode_inner_F155 226526208)
        ST2 ST2_asisdlse_R2 -> encode_F144 (encode_inner_F144 201359360)
        ST2 ST2_asisdlsep_I2_i -> encode_F170 (encode_inner_F170 211779584)
        ST2 ST2_asisdlsep_R2_r -> encode_F169 (encode_inner_F169 209747968)
        ST2 ST2_asisdlso_B2_2b -> encode_F164 (encode_inner_F164 220200960)
        ST2 ST2_asisdlso_H2_2h -> encode_F166 (encode_inner_F166 220217344)
        ST2 ST2_asisdlso_S2_2s -> encode_F167 (encode_inner_F167 220233728)
        ST2 ST2_asisdlso_D2_2d -> encode_F165 (encode_inner_F165 220234752)
        ST2 ST2_asisdlsop_B2_i2b -> encode_F171
                                      (encode_inner_F171 230621184)
        ST2 ST2_asisdlsop_BX2_r2b -> encode_F177
                                       (encode_inner_F177 228589568)
        ST2 ST2_asisdlsop_H2_i2h -> encode_F172
                                      (encode_inner_F172 230637568)
        ST2 ST2_asisdlsop_HX2_r2h -> encode_F179
                                       (encode_inner_F179 228605952)
        ST2 ST2_asisdlsop_S2_i2s -> encode_F173
                                      (encode_inner_F173 230653952)
        ST2 ST2_asisdlsop_SX2_r2s -> encode_F180
                                       (encode_inner_F180 228622336)
        ST2 ST2_asisdlsop_D2_i2d -> encode_F175
                                      (encode_inner_F175 230654976)
        ST2 ST2_asisdlsop_DX2_r2d -> encode_F178
                                       (encode_inner_F178 228623360)
        ST3 ST3_asisdlse_R3 -> encode_F176 (encode_inner_F176 201342976)
        ST3 ST3_asisdlsep_I3_i -> encode_F193 (encode_inner_F193 211763200)
        ST3 ST3_asisdlsep_R3_r -> encode_F192 (encode_inner_F192 209731584)
        ST3 ST3_asisdlso_B3_3b -> encode_F182 (encode_inner_F182 218112000)
        ST3 ST3_asisdlso_H3_3h -> encode_F184 (encode_inner_F184 218128384)
        ST3 ST3_asisdlso_S3_3s -> encode_F185 (encode_inner_F185 218144768)
        ST3 ST3_asisdlso_D3_3d -> encode_F183 (encode_inner_F183 218145792)
        ST3 ST3_asisdlsop_B3_i3b -> encode_F194
                                      (encode_inner_F194 228532224)
        ST3 ST3_asisdlsop_BX3_r3b -> encode_F198
                                       (encode_inner_F198 226500608)
        ST3 ST3_asisdlsop_H3_i3h -> encode_F195
                                      (encode_inner_F195 228548608)
        ST3 ST3_asisdlsop_HX3_r3h -> encode_F200
                                       (encode_inner_F200 226516992)
        ST3 ST3_asisdlsop_S3_i3s -> encode_F197
                                      (encode_inner_F197 228564992)
        ST3 ST3_asisdlsop_SX3_r3s -> encode_F201
                                       (encode_inner_F201 226533376)
        ST3 ST3_asisdlsop_D3_i3d -> encode_F196
                                      (encode_inner_F196 228566016)
        ST3 ST3_asisdlsop_DX3_r3d -> encode_F199
                                       (encode_inner_F199 226534400)
        ST4 ST4_asisdlse_R4 -> encode_F202 (encode_inner_F202 201326592)
        ST4 ST4_asisdlsep_I4_i -> encode_F213 (encode_inner_F213 211746816)
        ST4 ST4_asisdlsep_R4_r -> encode_F210 (encode_inner_F210 209715200)
        ST4 ST4_asisdlso_B4_4b -> encode_F203 (encode_inner_F203 220209152)
        ST4 ST4_asisdlso_H4_4h -> encode_F205 (encode_inner_F205 220225536)
        ST4 ST4_asisdlso_S4_4s -> encode_F206 (encode_inner_F206 220241920)
        ST4 ST4_asisdlso_D4_4d -> encode_F204 (encode_inner_F204 220242944)
        ST4 ST4_asisdlsop_B4_i4b -> encode_F208
                                      (encode_inner_F208 230629376)
        ST4 ST4_asisdlsop_BX4_r4b -> encode_F214
                                       (encode_inner_F214 228597760)
        ST4 ST4_asisdlsop_H4_i4h -> encode_F209
                                      (encode_inner_F209 230645760)
        ST4 ST4_asisdlsop_HX4_r4h -> encode_F216
                                       (encode_inner_F216 228614144)
        ST4 ST4_asisdlsop_S4_i4s -> encode_F212
                                      (encode_inner_F212 230662144)
        ST4 ST4_asisdlsop_SX4_r4s -> encode_F217
                                       (encode_inner_F217 228630528)
        ST4 ST4_asisdlsop_D4_i4d -> encode_F211
                                      (encode_inner_F211 230663168)
        ST4 ST4_asisdlsop_DX4_r4d -> encode_F215
                                       (encode_inner_F215 228631552)
        STNP STNP_S_ldstnapair_offs -> encode_F136
                                         (encode_inner_F136 738197504)
        STNP STNP_D_ldstnapair_offs -> encode_F134
                                         (encode_inner_F134 1811939328)
        STNP STNP_Q_ldstnapair_offs -> encode_F135
                                         (encode_inner_F135 2885681152)
        STP STP_S_ldstpair_post -> encode_F127
                                     (encode_inner_F127 746586112)
        STP STP_D_ldstpair_post -> encode_F125
                                     (encode_inner_F125 1820327936)
        STP STP_Q_ldstpair_post -> encode_F126
                                     (encode_inner_F126 2894069760)
        STP STP_S_ldstpair_pre -> encode_F131 (encode_inner_F131 763363328)
        STP STP_D_ldstpair_pre -> encode_F129
                                    (encode_inner_F129 1837105152)
        STP STP_Q_ldstpair_pre -> encode_F130
                                    (encode_inner_F130 2910846976)
        STP STP_S_ldstpair_off -> encode_F136 (encode_inner_F136 754974720)
        STP STP_D_ldstpair_off -> encode_F134
                                    (encode_inner_F134 1828716544)
        STP STP_Q_ldstpair_off -> encode_F135
                                    (encode_inner_F135 2902458368)
        STR STR_B_ldst_immpost -> encode_F75 (encode_inner_F75 1006633984)
        STR STR_H_ldst_immpost -> encode_F79 (encode_inner_F79 2080375808)
        STR STR_S_ldst_immpost -> encode_F82 (encode_inner_F82 3154117632)
        STR STR_D_ldst_immpost -> encode_F77 (encode_inner_F77 4227859456)
        STR STR_Q_ldst_immpost -> encode_F80 (encode_inner_F80 1015022592)
        STR STR_B_ldst_immpre -> encode_F88 (encode_inner_F88 1006636032)
        STR STR_H_ldst_immpre -> encode_F90 (encode_inner_F90 2080377856)
        STR STR_S_ldst_immpre -> encode_F92 (encode_inner_F92 3154119680)
        STR STR_D_ldst_immpre -> encode_F89 (encode_inner_F89 4227861504)
        STR STR_Q_ldst_immpre -> encode_F91 (encode_inner_F91 1015024640)
        STR STR_B_ldst_pos -> encode_F97 (encode_inner_F97 1023410176)
        STR STR_H_ldst_pos -> encode_F101 (encode_inner_F101 2097152000)
        STR STR_S_ldst_pos -> encode_F105 (encode_inner_F105 3170893824)
        STR STR_D_ldst_pos -> encode_F99 (encode_inner_F99 4244635648)
        STR STR_Q_ldst_pos -> encode_F103 (encode_inner_F103 1031798784)
        STR STR_B_ldst_regoff -> encode_F186 (encode_inner_F186 1008732160)
        STR STR_BL_ldst_regoff -> encode_F158
                                    (encode_inner_F158 1008756736)
        STR STR_H_ldst_regoff -> encode_F189 (encode_inner_F189 2082473984)
        STR STR_S_ldst_regoff -> encode_F191 (encode_inner_F191 3156215808)
        STR STR_D_ldst_regoff -> encode_F188 (encode_inner_F188 4229957632)
        STR STR_Q_ldst_regoff -> encode_F190 (encode_inner_F190 1017120768)
        STUR STUR_B_ldst_unscaled -> encode_F98
                                       (encode_inner_F98 1006632960)
        STUR STUR_H_ldst_unscaled -> encode_F102
                                       (encode_inner_F102 2080374784)
        STUR STUR_S_ldst_unscaled -> encode_F106
                                       (encode_inner_F106 3154116608)
        STUR STUR_D_ldst_unscaled -> encode_F100
                                       (encode_inner_F100 4227858432)
        STUR STUR_Q_ldst_unscaled -> encode_F104
                                       (encode_inner_F104 1015021568)
        SUB SUB_asisdsame_only -> encode_F70 (encode_inner_F70 2116060160)
        SUB SUB_asimdsame_only -> encode_F116 (encode_inner_F116 773882880)
        SUBHN SUBHN_asimddiff_N -> encode_F151
                                     (encode_inner_F151 237002752)
        SUQADD SUQADD_asisdmisc_R -> encode_F33
                                       (encode_inner_F33 1579169792)
        SUQADD SUQADD_asimdmisc_R -> encode_F49
                                       (encode_inner_F49 236992512)
        TBL TBL_asimdtbl_L2_2 -> encode_F181 (encode_inner_F181 234889216)
        TBL TBL_asimdtbl_L3_3 -> encode_F207 (encode_inner_F207 234897408)
        TBL TBL_asimdtbl_L4_4 -> encode_F218 (encode_inner_F218 234905600)
        TBL TBL_asimdtbl_L1_1 -> encode_F143 (encode_inner_F143 234881024)
        TBX TBX_asimdtbl_L2_2 -> encode_F181 (encode_inner_F181 234893312)
        TBX TBX_asimdtbl_L3_3 -> encode_F207 (encode_inner_F207 234901504)
        TBX TBX_asimdtbl_L4_4 -> encode_F218 (encode_inner_F218 234909696)
        TBX TBX_asimdtbl_L1_1 -> encode_F143 (encode_inner_F143 234885120)
        TRN1 TRN1_asimdperm_only -> encode_F116
                                      (encode_inner_F116 234891264)
        TRN2 TRN2_asimdperm_only -> encode_F116
                                      (encode_inner_F116 234907648)
        UABA UABA_asimdsame_only -> encode_F116
                                      (encode_inner_F116 773880832)
        UABAL UABAL_asimddiff_L -> encode_F150
                                     (encode_inner_F150 773869568)
        UABD UABD_asimdsame_only -> encode_F116
                                      (encode_inner_F116 773878784)
        UABDL UABDL_asimddiff_L -> encode_F150
                                     (encode_inner_F150 773877760)
        UADALP UADALP_asimdmisc_P -> encode_F60
                                       (encode_inner_F60 773875712)
        UADDL UADDL_asimddiff_L -> encode_F150
                                     (encode_inner_F150 773849088)
        UADDLP UADDLP_asimdmisc_P -> encode_F60
                                       (encode_inner_F60 773859328)
        UADDLV UADDLV_asimdall_only -> encode_F41
                                         (encode_inner_F41 774912000)
        UADDW UADDW_asimddiff_W -> encode_F149
                                     (encode_inner_F149 773853184)
        UCVTF UCVTF_H32_float2fix -> encode_F55
                                       (encode_inner_F55 516096000)
        UCVTF UCVTF_S32_float2fix -> encode_F57
                                       (encode_inner_F57 503513088)
        UCVTF UCVTF_D32_float2fix -> encode_F53
                                       (encode_inner_F53 507707392)
        UCVTF UCVTF_H64_float2fix -> encode_F56
                                       (encode_inner_F56 2663579648)
        UCVTF UCVTF_S64_float2fix -> encode_F58
                                       (encode_inner_F58 2650996736)
        UCVTF UCVTF_D64_float2fix -> encode_F54
                                       (encode_inner_F54 2655191040)
        UCVTF UCVTF_H32_float2int -> encode_F10
                                       (encode_inner_F10 518193152)
        UCVTF UCVTF_S32_float2int -> encode_F17
                                       (encode_inner_F17 505610240)
        UCVTF UCVTF_D32_float2int -> encode_F3 (encode_inner_F3 509804544)
        UCVTF UCVTF_H64_float2int -> encode_F11
                                       (encode_inner_F11 2665676800)
        UCVTF UCVTF_S64_float2int -> encode_F18
                                       (encode_inner_F18 2653093888)
        UCVTF UCVTF_D64_float2int -> encode_F4 (encode_inner_F4 2657288192)
        UCVTF UCVTF_asisdshf_C -> encode_F83 (encode_inner_F83 2130764800)
        UCVTF UCVTF_asimdshf_C -> encode_F114 (encode_inner_F114 788587520)
        UCVTF UCVTF_asisdmiscfp16_R -> encode_F8
                                         (encode_inner_F8 2121914368)
        UCVTF UCVTF_asisdmisc_R -> encode_F33 (encode_inner_F33 2116147200)
        UCVTF UCVTF_asimdmiscfp16_R -> encode_F49
                                         (encode_inner_F49 779737088)
        UCVTF UCVTF_asimdmisc_R -> encode_F49 (encode_inner_F49 773969920)
        UDOT UDOT_asimdelem_D -> encode_F162 (encode_inner_F162 788586496)
        UDOT UDOT_asimdsame2_D -> encode_F128 (encode_inner_F128 771789824)
        UHADD UHADD_asimdsame_only -> encode_F116
                                        (encode_inner_F116 773850112)
        UHSUB UHSUB_asimdsame_only -> encode_F116
                                        (encode_inner_F116 773858304)
        UMAX UMAX_asimdsame_only -> encode_F116
                                      (encode_inner_F116 773874688)
        UMAXP UMAXP_asimdsame_only -> encode_F116
                                        (encode_inner_F116 773891072)
        UMAXV UMAXV_asimdall_only -> encode_F41
                                       (encode_inner_F41 774940672)
        UMIN UMIN_asimdsame_only -> encode_F116
                                      (encode_inner_F116 773876736)
        UMINP UMINP_asimdsame_only -> encode_F116
                                        (encode_inner_F116 773893120)
        UMINV UMINV_asimdall_only -> encode_F41
                                       (encode_inner_F41 775006208)
        UMLAL UMLAL_asimdelem_L -> encode_F174
                                     (encode_inner_F174 788537344)
        UMLAL UMLAL_asimddiff_L -> encode_F150
                                     (encode_inner_F150 773881856)
        UMLSL UMLSL_asimdelem_L -> encode_F174
                                     (encode_inner_F174 788553728)
        UMLSL UMLSL_asimddiff_L -> encode_F150
                                     (encode_inner_F150 773890048)
        UMOV UMOV_asimdins_W_w -> encode_F86 (encode_inner_F86 234896384)
        UMOV UMOV_asimdins_X_x -> encode_F87 (encode_inner_F87 1309162496)
        UMULL UMULL_asimdelem_L -> encode_F174
                                     (encode_inner_F174 788570112)
        UMULL UMULL_asimddiff_L -> encode_F150
                                     (encode_inner_F150 773898240)
        UQADD UQADD_asisdsame_only -> encode_F70
                                        (encode_inner_F70 2116029440)
        UQADD UQADD_asimdsame_only -> encode_F116
                                        (encode_inner_F116 773852160)
        UQRSHL UQRSHL_asisdsame_only -> encode_F70
                                          (encode_inner_F70 2116049920)
        UQRSHL UQRSHL_asimdsame_only -> encode_F116
                                          (encode_inner_F116 773872640)
        UQRSHRN UQRSHRN_asisdshf_N -> encode_F107
                                        (encode_inner_F107 2130746368)
        UQRSHRN UQRSHRN_asimdshf_N -> encode_F138
                                        (encode_inner_F138 788569088)
        UQSHL UQSHL_asisdshf_R -> encode_F84 (encode_inner_F84 2130736128)
        UQSHL UQSHL_asimdshf_R -> encode_F115 (encode_inner_F115 788558848)
        UQSHL UQSHL_asisdsame_only -> encode_F70
                                        (encode_inner_F70 2116045824)
        UQSHL UQSHL_asimdsame_only -> encode_F116
                                        (encode_inner_F116 773868544)
        UQSHRN UQSHRN_asisdshf_N -> encode_F107
                                      (encode_inner_F107 2130744320)
        UQSHRN UQSHRN_asimdshf_N -> encode_F138
                                      (encode_inner_F138 788567040)
        UQSUB UQSUB_asisdsame_only -> encode_F70
                                        (encode_inner_F70 2116037632)
        UQSUB UQSUB_asimdsame_only -> encode_F116
                                        (encode_inner_F116 773860352)
        UQXTN UQXTN_asisdmisc_N -> encode_F42 (encode_inner_F42 2116110336)
        UQXTN UQXTN_asimdmisc_N -> encode_F74 (encode_inner_F74 773933056)
        URECPE URECPE_asimdmisc_R -> encode_F49
                                       (encode_inner_F49 245483520)
        URHADD URHADD_asimdsame_only -> encode_F116
                                          (encode_inner_F116 773854208)
        URSHL URSHL_asisdsame_only -> encode_F70
                                        (encode_inner_F70 2116047872)
        URSHL URSHL_asimdsame_only -> encode_F116
                                        (encode_inner_F116 773870592)
        URSHR URSHR_asisdshf_R -> encode_F84 (encode_inner_F84 2130715648)
        URSHR URSHR_asimdshf_R -> encode_F115 (encode_inner_F115 788538368)
        URSQRTE URSQRTE_asimdmisc_R -> encode_F49
                                         (encode_inner_F49 782354432)
        URSRA URSRA_asisdshf_R -> encode_F84 (encode_inner_F84 2130719744)
        URSRA URSRA_asimdshf_R -> encode_F115 (encode_inner_F115 788542464)
        USHL USHL_asisdsame_only -> encode_F70
                                      (encode_inner_F70 2116043776)
        USHL USHL_asimdsame_only -> encode_F116
                                      (encode_inner_F116 773866496)
        USHLL USHLL_asimdshf_L -> encode_F137 (encode_inner_F137 788571136)
        USHR USHR_asisdshf_R -> encode_F84 (encode_inner_F84 2130707456)
        USHR USHR_asimdshf_R -> encode_F115 (encode_inner_F115 788530176)
        USQADD USQADD_asisdmisc_R -> encode_F33
                                       (encode_inner_F33 2116040704)
        USQADD USQADD_asimdmisc_R -> encode_F49
                                       (encode_inner_F49 773863424)
        USRA USRA_asisdshf_R -> encode_F84 (encode_inner_F84 2130711552)
        USRA USRA_asimdshf_R -> encode_F115 (encode_inner_F115 788534272)
        USUBL USUBL_asimddiff_L -> encode_F150
                                     (encode_inner_F150 773857280)
        USUBW USUBW_asimddiff_W -> encode_F149
                                     (encode_inner_F149 773861376)
        UZP1 UZP1_asimdperm_only -> encode_F116
                                      (encode_inner_F116 234887168)
        UZP2 UZP2_asimdperm_only -> encode_F116
                                      (encode_inner_F116 234903552)
        XAR XAR_VVV2_crypto3_imm6 -> encode_F140
                                       (encode_inner_F140 3464495104)
        XTN XTN_asimdmisc_N -> encode_F74 (encode_inner_F74 237053952)
        ZIP1 ZIP1_asimdperm_only -> encode_F116
                                      (encode_inner_F116 234895360)
        ZIP2 ZIP2_asimdperm_only -> encode_F116
                                      (encode_inner_F116 234911744)

encode_inner_B0 :: Word32 -> FnW Binary_B0 Word32
encode_inner_B0 w = w

encode_inner_B1 :: Word32 -> FnW Binary_B1 Word32
encode_inner_B1 w = w

encode_inner_B2 :: Word32 -> FnW Binary_B2 Word32
encode_inner_B2 w = w

encode_inner_B3 :: Word32 -> FnW Binary_B3 Word32
encode_inner_B3 w = w

encode_inner_B4 :: Word32 -> FnW Binary_B4 Word32
encode_inner_B4 w = w

encode_inner_B5 :: Word32 -> FnW Binary_B5 Word32
encode_inner_B5 w = w

encode_inner_B6 :: Word32 -> FnW Binary_B6 Word32
encode_inner_B6 w = w

encode_inner_B7 :: Word32 -> FnW Binary_B7 Word32
encode_inner_B7 w = w

encode_inner_B8 :: Word32 -> FnW Binary_B8 Word32
encode_inner_B8 w = w

encode_inner_B9 :: Word32 -> FnW Binary_B9 Word32
encode_inner_B9 w = w

encode_inner_B10 :: Word32 -> FnW Binary_B10 Word32
encode_inner_B10 w = w

encode_inner_B11 :: Word32 -> FnW Binary_B11 Word32
encode_inner_B11 w = w

encode_inner_B12 :: Word32 -> FnW Binary_B12 Word32
encode_inner_B12 w x1 x2 x3
  = unslice x1 0 .|. unslice x2 5 .|. unslice x3 29 .|. w

encode_inner_B13 :: Word32 -> FnW Binary_B13 Word32
encode_inner_B13 w = w

encode_inner_B14 :: Word32 -> FnW Binary_B14 Word32
encode_inner_B14 w = w

encode_inner_B15 :: Word32 -> FnW Binary_B15 Word32
encode_inner_B15 w = w

encode_inner_B16 :: Word32 -> FnW Binary_B16 Word32
encode_inner_B16 w = w

encode_inner_B17 :: Word32 -> FnW Binary_B17 Word32
encode_inner_B17 w = w

encode_inner_B18 :: Word32 -> FnW Binary_B18 Word32
encode_inner_B18 w = w

encode_inner_B19 :: Word32 -> FnW Binary_B19 Word32
encode_inner_B19 w = w

encode_inner_B20 :: Word32 -> FnW Binary_B20 Word32
encode_inner_B20 w = w

encode_inner_B21 :: Word32 -> FnW Binary_B21 Word32
encode_inner_B21 w = w

encode_inner_B22 :: Word32 -> FnW Binary_B22 Word32
encode_inner_B22 w = w

encode_inner_B23 :: Word32 -> FnW Binary_B23 Word32
encode_inner_B23 w = w

encode_inner_B24 :: Word32 -> FnW Binary_B24 Word32
encode_inner_B24 w = w

encode_inner_B25 :: Word32 -> FnW Binary_B25 Word32
encode_inner_B25 w = w

encode_inner_B26 :: Word32 -> FnW Binary_B26 Word32
encode_inner_B26 w = w

encode_inner_B27 :: Word32 -> FnW Binary_B27 Word32
encode_inner_B27 w = w

encode_inner_B28 :: Word32 -> FnW Binary_B28 Word32
encode_inner_B28 w = w

encode_inner_B29 :: Word32 -> FnW Binary_B29 Word32
encode_inner_B29 w = w

encode_inner_B30 :: Word32 -> FnW Binary_B30 Word32
encode_inner_B30 w = w

encode_inner_B31 :: Word32 -> FnW Binary_B31 Word32
encode_inner_B31 w = w

encode_inner_B32 :: Word32 -> FnW Binary_B32 Word32
encode_inner_B32 w = w

encode_inner_B33 :: Word32 -> FnW Binary_B33 Word32
encode_inner_B33 w = w

encode_inner_B34 :: Word32 -> FnW Binary_B34 Word32
encode_inner_B34 w = w

encode_inner_B35 :: Word32 -> FnW Binary_B35 Word32
encode_inner_B35 w = w

encode_inner_B36 :: Word32 -> FnW Binary_B36 Word32
encode_inner_B36 w = w

encode_inner_B37 :: Word32 -> FnW Binary_B37 Word32
encode_inner_B37 w = w

encode_inner_B38 :: Word32 -> FnW Binary_B38 Word32
encode_inner_B38 w x1 x2 x3 x4
  = unslice x1 0 .|.
      unslice x2 5 .|. unslice x3 16 .|. unslice x4 12 .|. w

encode_inner_B39 :: Word32 -> FnW Binary_B39 Word32
encode_inner_B39 w = w

encode_inner_B40 :: Word32 -> FnW Binary_B40 Word32
encode_inner_B40 w = w

encode_inner_B41 :: Word32 -> FnW Binary_B41 Word32
encode_inner_B41 w = w

encode_inner_B42 :: Word32 -> FnW Binary_B42 Word32
encode_inner_B42 w = w

encode_inner_B43 :: Word32 -> FnW Binary_B43 Word32
encode_inner_B43 w = w

encode_inner_B44 :: Word32 -> FnW Binary_B44 Word32
encode_inner_B44 w = w

encode_inner_B45 :: Word32 -> FnW Binary_B45 Word32
encode_inner_B45 w = w

encode_inner_B46 :: Word32 -> FnW Binary_B46 Word32
encode_inner_B46 w = w

encode_inner_B47 :: Word32 -> FnW Binary_B47 Word32
encode_inner_B47 w = w

encode_inner_B48 :: Word32 -> FnW Binary_B48 Word32
encode_inner_B48 w = w

encode_inner_B49 :: Word32 -> FnW Binary_B49 Word32
encode_inner_B49 w = w

encode_inner_B50 :: Word32 -> FnW Binary_B50 Word32
encode_inner_B50 w = w

encode_inner_B51 :: Word32 -> FnW Binary_B51 Word32
encode_inner_B51 w x1 x2 x3
  = unslice x1 0 .|. unslice x2 5 .|. unslice x3 10 .|. w

encode_inner_B52 :: Word32 -> FnW Binary_B52 Word32
encode_inner_B52 w = w

encode_inner_B53 :: Word32 -> FnW Binary_B53 Word32
encode_inner_B53 w = w

encode_inner_B54 :: Word32 -> FnW Binary_B54 Word32
encode_inner_B54 w = w

encode_inner_B55 :: Word32 -> FnW Binary_B55 Word32
encode_inner_B55 w = w

encode_inner_B56 :: Word32 -> FnW Binary_B56 Word32
encode_inner_B56 w = w

encode_inner_B57 :: Word32 -> FnW Binary_B57 Word32
encode_inner_B57 w = w

encode_inner_B58 :: Word32 -> FnW Binary_B58 Word32
encode_inner_B58 w = w

encode_inner_B59 :: Word32 -> FnW Binary_B59 Word32
encode_inner_B59 w = w

encode_inner_B60 :: Word32 -> FnW Binary_B60 Word32
encode_inner_B60 w = w

encode_inner_B61 :: Word32 -> FnW Binary_B61 Word32
encode_inner_B61 w = w

encode_inner_B62 :: Word32 -> FnW Binary_B62 Word32
encode_inner_B62 w = w

encode_inner_B63 :: Word32 -> FnW Binary_B63 Word32
encode_inner_B63 w = w

encode_inner_B64 :: Word32 -> FnW Binary_B64 Word32
encode_inner_B64 w = w

encode_inner_B65 :: Word32 -> FnW Binary_B65 Word32
encode_inner_B65 w = w

encode_inner_B66 :: Word32 -> FnW Binary_B66 Word32
encode_inner_B66 w = w

encode_inner_B67 :: Word32 -> FnW Binary_B67 Word32
encode_inner_B67 w x1 x2 x3 x4
  = unslice x1 0 .|.
      unslice x2 5 .|. unslice x3 10 .|. unslice x4 22 .|. w

encode_inner_B68 :: Word32 -> FnW Binary_B68 Word32
encode_inner_B68 w x1 x2 x3 x4
  = unslice x1 0 .|.
      unslice x2 10 .|. unslice x3 5 .|. unslice x4 15 .|. w

encode_inner_B69 :: Word32 -> FnW Binary_B69 Word32
encode_inner_B69 w = w

encode_inner_B70 :: Word32 -> FnW Binary_B70 Word32
encode_inner_B70 w x1 x2 x3 x4
  = unslice x1 0 .|.
      unslice x2 5 .|. unslice x3 10 .|. unslice x4 22 .|. w

encode_inner_B71 :: Word32 -> FnW Binary_B71 Word32
encode_inner_B71 w = w

encode_inner_B72 :: Word32 -> FnW Binary_B72 Word32
encode_inner_B72 w x1 x2 x3 x4
  = unslice x1 0 .|.
      unslice x2 10 .|. unslice x3 5 .|. unslice x4 15 .|. w

encode_inner_B73 :: Word32 -> FnW Binary_B73 Word32
encode_inner_B73 w = w

encode_inner_B74 :: Word32 -> FnW Binary_B74 Word32
encode_inner_B74 w = w

encode_inner_B75 :: Word32 -> FnW Binary_B75 Word32
encode_inner_B75 w = w

encode_inner_B76 :: Word32 -> FnW Binary_B76 Word32
encode_inner_B76 w x1 x2 x3 x4
  = unslice x1 0 .|.
      unslice x2 5 .|. unslice x3 10 .|. unslice x4 22 .|. w

encode_inner_B77 :: Word32 -> FnW Binary_B77 Word32
encode_inner_B77 w x1 x2 x3 x4 x5
  = unslice x1 0 .|.
      unslice x2 5 .|.
        unslice x3 16 .|. unslice x4 22 .|. unslice x5 10 .|. w

encode_inner_B78 :: Word32 -> FnW Binary_B78 Word32
encode_inner_B78 w = w

encode_inner_B79 :: Word32 -> FnW Binary_B79 Word32
encode_inner_B79 w = w

encode_inner_B80 :: Word32 -> FnW Binary_B80 Word32
encode_inner_B80 w = w

encode_inner_B81 :: Word32 -> FnW Binary_B81 Word32
encode_inner_B81 w = w

encode_inner_B82 :: Word32 -> FnW Binary_B82 Word32
encode_inner_B82 w = w

encode_inner_B83 :: Word32 -> FnW Binary_B83 Word32
encode_inner_B83 w = w

encode_inner_B84 :: Word32 -> FnW Binary_B84 Word32
encode_inner_B84 w = w

encode_inner_B85 :: Word32 -> FnW Binary_B85 Word32
encode_inner_B85 w = w

encode_inner_B86 :: Word32 -> FnW Binary_B86 Word32
encode_inner_B86 w = w

encode_inner_B87 :: Word32 -> FnW Binary_B87 Word32
encode_inner_B87 w = w

encode_inner_B88 :: Word32 -> FnW Binary_B88 Word32
encode_inner_B88 w = w

encode_inner_B89 :: Word32 -> FnW Binary_B89 Word32
encode_inner_B89 w = w

encode_inner_B90 :: Word32 -> FnW Binary_B90 Word32
encode_inner_B90 w = w

encode_inner_B91 :: Word32 -> FnW Binary_B91 Word32
encode_inner_B91 w = w

encode_inner_B92 :: Word32 -> FnW Binary_B92 Word32
encode_inner_B92 w = w

encode_inner_B93 :: Word32 -> FnW Binary_B93 Word32
encode_inner_B93 w = w

encode_inner_B94 :: Word32 -> FnW Binary_B94 Word32
encode_inner_B94 w = w

encode_inner_B95 :: Word32 -> FnW Binary_B95 Word32
encode_inner_B95 w = w

encode_inner_B96 :: Word32 -> FnW Binary_B96 Word32
encode_inner_B96 w = w

encode_inner_F0 :: Word32 -> FnW Binary_F0 Word32
encode_inner_F0 w = w

encode_inner_F1 :: Word32 -> FnW Binary_F1 Word32
encode_inner_F1 w = w

encode_inner_F2 :: Word32 -> FnW Binary_F2 Word32
encode_inner_F2 w = w

encode_inner_F3 :: Word32 -> FnW Binary_F3 Word32
encode_inner_F3 w = w

encode_inner_F4 :: Word32 -> FnW Binary_F4 Word32
encode_inner_F4 w = w

encode_inner_F5 :: Word32 -> FnW Binary_F5 Word32
encode_inner_F5 w = w

encode_inner_F6 :: Word32 -> FnW Binary_F6 Word32
encode_inner_F6 w = w

encode_inner_F7 :: Word32 -> FnW Binary_F7 Word32
encode_inner_F7 w = w

encode_inner_F8 :: Word32 -> FnW Binary_F8 Word32
encode_inner_F8 w = w

encode_inner_F9 :: Word32 -> FnW Binary_F9 Word32
encode_inner_F9 w = w

encode_inner_F10 :: Word32 -> FnW Binary_F10 Word32
encode_inner_F10 w = w

encode_inner_F11 :: Word32 -> FnW Binary_F11 Word32
encode_inner_F11 w = w

encode_inner_F12 :: Word32 -> FnW Binary_F12 Word32
encode_inner_F12 w = w

encode_inner_F13 :: Word32 -> FnW Binary_F13 Word32
encode_inner_F13 w = w

encode_inner_F14 :: Word32 -> FnW Binary_F14 Word32
encode_inner_F14 w = w

encode_inner_F15 :: Word32 -> FnW Binary_F15 Word32
encode_inner_F15 w = w

encode_inner_F16 :: Word32 -> FnW Binary_F16 Word32
encode_inner_F16 w = w

encode_inner_F17 :: Word32 -> FnW Binary_F17 Word32
encode_inner_F17 w = w

encode_inner_F18 :: Word32 -> FnW Binary_F18 Word32
encode_inner_F18 w = w

encode_inner_F19 :: Word32 -> FnW Binary_F19 Word32
encode_inner_F19 w = w

encode_inner_F20 :: Word32 -> FnW Binary_F20 Word32
encode_inner_F20 w = w

encode_inner_F21 :: Word32 -> FnW Binary_F21 Word32
encode_inner_F21 w = w

encode_inner_F22 :: Word32 -> FnW Binary_F22 Word32
encode_inner_F22 w = w

encode_inner_F23 :: Word32 -> FnW Binary_F23 Word32
encode_inner_F23 w = w

encode_inner_F24 :: Word32 -> FnW Binary_F24 Word32
encode_inner_F24 w = w

encode_inner_F25 :: Word32 -> FnW Binary_F25 Word32
encode_inner_F25 w = w

encode_inner_F26 :: Word32 -> FnW Binary_F26 Word32
encode_inner_F26 w = w

encode_inner_F27 :: Word32 -> FnW Binary_F27 Word32
encode_inner_F27 w = w

encode_inner_F28 :: Word32 -> FnW Binary_F28 Word32
encode_inner_F28 w = w

encode_inner_F29 :: Word32 -> FnW Binary_F29 Word32
encode_inner_F29 w = w

encode_inner_F30 :: Word32 -> FnW Binary_F30 Word32
encode_inner_F30 w = w

encode_inner_F31 :: Word32 -> FnW Binary_F31 Word32
encode_inner_F31 w = w

encode_inner_F32 :: Word32 -> FnW Binary_F32 Word32
encode_inner_F32 w = w

encode_inner_F33 :: Word32 -> FnW Binary_F33 Word32
encode_inner_F33 w = w

encode_inner_F34 :: Word32 -> FnW Binary_F34 Word32
encode_inner_F34 w = w

encode_inner_F35 :: Word32 -> FnW Binary_F35 Word32
encode_inner_F35 w = w

encode_inner_F36 :: Word32 -> FnW Binary_F36 Word32
encode_inner_F36 w = w

encode_inner_F37 :: Word32 -> FnW Binary_F37 Word32
encode_inner_F37 w = w

encode_inner_F38 :: Word32 -> FnW Binary_F38 Word32
encode_inner_F38 w = w

encode_inner_F39 :: Word32 -> FnW Binary_F39 Word32
encode_inner_F39 w = w

encode_inner_F40 :: Word32 -> FnW Binary_F40 Word32
encode_inner_F40 w = w

encode_inner_F41 :: Word32 -> FnW Binary_F41 Word32
encode_inner_F41 w = w

encode_inner_F42 :: Word32 -> FnW Binary_F42 Word32
encode_inner_F42 w = w

encode_inner_F43 :: Word32 -> FnW Binary_F43 Word32
encode_inner_F43 w = w

encode_inner_F44 :: Word32 -> FnW Binary_F44 Word32
encode_inner_F44 w = w

encode_inner_F45 :: Word32 -> FnW Binary_F45 Word32
encode_inner_F45 w = w

encode_inner_F46 :: Word32 -> FnW Binary_F46 Word32
encode_inner_F46 w = w

encode_inner_F47 :: Word32 -> FnW Binary_F47 Word32
encode_inner_F47 w = w

encode_inner_F48 :: Word32 -> FnW Binary_F48 Word32
encode_inner_F48 w = w

encode_inner_F49 :: Word32 -> FnW Binary_F49 Word32
encode_inner_F49 w = w

encode_inner_F50 :: Word32 -> FnW Binary_F50 Word32
encode_inner_F50 w = w

encode_inner_F51 :: Word32 -> FnW Binary_F51 Word32
encode_inner_F51 w = w

encode_inner_F52 :: Word32 -> FnW Binary_F52 Word32
encode_inner_F52 w = w

encode_inner_F53 :: Word32 -> FnW Binary_F53 Word32
encode_inner_F53 w = w

encode_inner_F54 :: Word32 -> FnW Binary_F54 Word32
encode_inner_F54 w = w

encode_inner_F55 :: Word32 -> FnW Binary_F55 Word32
encode_inner_F55 w = w

encode_inner_F56 :: Word32 -> FnW Binary_F56 Word32
encode_inner_F56 w = w

encode_inner_F57 :: Word32 -> FnW Binary_F57 Word32
encode_inner_F57 w = w

encode_inner_F58 :: Word32 -> FnW Binary_F58 Word32
encode_inner_F58 w = w

encode_inner_F59 :: Word32 -> FnW Binary_F59 Word32
encode_inner_F59 w = w

encode_inner_F60 :: Word32 -> FnW Binary_F60 Word32
encode_inner_F60 w = w

encode_inner_F61 :: Word32 -> FnW Binary_F61 Word32
encode_inner_F61 w = w

encode_inner_F62 :: Word32 -> FnW Binary_F62 Word32
encode_inner_F62 w = w

encode_inner_F63 :: Word32 -> FnW Binary_F63 Word32
encode_inner_F63 w = w

encode_inner_F64 :: Word32 -> FnW Binary_F64 Word32
encode_inner_F64 w = w

encode_inner_F65 :: Word32 -> FnW Binary_F65 Word32
encode_inner_F65 w = w

encode_inner_F66 :: Word32 -> FnW Binary_F66 Word32
encode_inner_F66 w = w

encode_inner_F67 :: Word32 -> FnW Binary_F67 Word32
encode_inner_F67 w = w

encode_inner_F68 :: Word32 -> FnW Binary_F68 Word32
encode_inner_F68 w = w

encode_inner_F69 :: Word32 -> FnW Binary_F69 Word32
encode_inner_F69 w = w

encode_inner_F70 :: Word32 -> FnW Binary_F70 Word32
encode_inner_F70 w = w

encode_inner_F71 :: Word32 -> FnW Binary_F71 Word32
encode_inner_F71 w = w

encode_inner_F72 :: Word32 -> FnW Binary_F72 Word32
encode_inner_F72 w = w

encode_inner_F73 :: Word32 -> FnW Binary_F73 Word32
encode_inner_F73 w = w

encode_inner_F74 :: Word32 -> FnW Binary_F74 Word32
encode_inner_F74 w = w

encode_inner_F75 :: Word32 -> FnW Binary_F75 Word32
encode_inner_F75 w = w

encode_inner_F76 :: Word32 -> FnW Binary_F76 Word32
encode_inner_F76 w = w

encode_inner_F77 :: Word32 -> FnW Binary_F77 Word32
encode_inner_F77 w = w

encode_inner_F78 :: Word32 -> FnW Binary_F78 Word32
encode_inner_F78 w = w

encode_inner_F79 :: Word32 -> FnW Binary_F79 Word32
encode_inner_F79 w = w

encode_inner_F80 :: Word32 -> FnW Binary_F80 Word32
encode_inner_F80 w = w

encode_inner_F81 :: Word32 -> FnW Binary_F81 Word32
encode_inner_F81 w = w

encode_inner_F82 :: Word32 -> FnW Binary_F82 Word32
encode_inner_F82 w = w

encode_inner_F83 :: Word32 -> FnW Binary_F83 Word32
encode_inner_F83 w = w

encode_inner_F84 :: Word32 -> FnW Binary_F84 Word32
encode_inner_F84 w = w

encode_inner_F85 :: Word32 -> FnW Binary_F85 Word32
encode_inner_F85 w = w

encode_inner_F86 :: Word32 -> FnW Binary_F86 Word32
encode_inner_F86 w = w

encode_inner_F87 :: Word32 -> FnW Binary_F87 Word32
encode_inner_F87 w = w

encode_inner_F88 :: Word32 -> FnW Binary_F88 Word32
encode_inner_F88 w = w

encode_inner_F89 :: Word32 -> FnW Binary_F89 Word32
encode_inner_F89 w = w

encode_inner_F90 :: Word32 -> FnW Binary_F90 Word32
encode_inner_F90 w = w

encode_inner_F91 :: Word32 -> FnW Binary_F91 Word32
encode_inner_F91 w = w

encode_inner_F92 :: Word32 -> FnW Binary_F92 Word32
encode_inner_F92 w = w

encode_inner_F93 :: Word32 -> FnW Binary_F93 Word32
encode_inner_F93 w = w

encode_inner_F94 :: Word32 -> FnW Binary_F94 Word32
encode_inner_F94 w = w

encode_inner_F95 :: Word32 -> FnW Binary_F95 Word32
encode_inner_F95 w = w

encode_inner_F96 :: Word32 -> FnW Binary_F96 Word32
encode_inner_F96 w = w

encode_inner_F97 :: Word32 -> FnW Binary_F97 Word32
encode_inner_F97 w = w

encode_inner_F98 :: Word32 -> FnW Binary_F98 Word32
encode_inner_F98 w = w

encode_inner_F99 :: Word32 -> FnW Binary_F99 Word32
encode_inner_F99 w = w

encode_inner_F100 :: Word32 -> FnW Binary_F100 Word32
encode_inner_F100 w = w

encode_inner_F101 :: Word32 -> FnW Binary_F101 Word32
encode_inner_F101 w = w

encode_inner_F102 :: Word32 -> FnW Binary_F102 Word32
encode_inner_F102 w = w

encode_inner_F103 :: Word32 -> FnW Binary_F103 Word32
encode_inner_F103 w = w

encode_inner_F104 :: Word32 -> FnW Binary_F104 Word32
encode_inner_F104 w = w

encode_inner_F105 :: Word32 -> FnW Binary_F105 Word32
encode_inner_F105 w = w

encode_inner_F106 :: Word32 -> FnW Binary_F106 Word32
encode_inner_F106 w = w

encode_inner_F107 :: Word32 -> FnW Binary_F107 Word32
encode_inner_F107 w = w

encode_inner_F108 :: Word32 -> FnW Binary_F108 Word32
encode_inner_F108 w = w

encode_inner_F109 :: Word32 -> FnW Binary_F109 Word32
encode_inner_F109 w = w

encode_inner_F110 :: Word32 -> FnW Binary_F110 Word32
encode_inner_F110 w = w

encode_inner_F111 :: Word32 -> FnW Binary_F111 Word32
encode_inner_F111 w = w

encode_inner_F112 :: Word32 -> FnW Binary_F112 Word32
encode_inner_F112 w = w

encode_inner_F113 :: Word32 -> FnW Binary_F113 Word32
encode_inner_F113 w = w

encode_inner_F114 :: Word32 -> FnW Binary_F114 Word32
encode_inner_F114 w = w

encode_inner_F115 :: Word32 -> FnW Binary_F115 Word32
encode_inner_F115 w = w

encode_inner_F116 :: Word32 -> FnW Binary_F116 Word32
encode_inner_F116 w = w

encode_inner_F117 :: Word32 -> FnW Binary_F117 Word32
encode_inner_F117 w = w

encode_inner_F118 :: Word32 -> FnW Binary_F118 Word32
encode_inner_F118 w = w

encode_inner_F119 :: Word32 -> FnW Binary_F119 Word32
encode_inner_F119 w = w

encode_inner_F120 :: Word32 -> FnW Binary_F120 Word32
encode_inner_F120 w = w

encode_inner_F121 :: Word32 -> FnW Binary_F121 Word32
encode_inner_F121 w = w

encode_inner_F122 :: Word32 -> FnW Binary_F122 Word32
encode_inner_F122 w = w

encode_inner_F123 :: Word32 -> FnW Binary_F123 Word32
encode_inner_F123 w = w

encode_inner_F124 :: Word32 -> FnW Binary_F124 Word32
encode_inner_F124 w = w

encode_inner_F125 :: Word32 -> FnW Binary_F125 Word32
encode_inner_F125 w = w

encode_inner_F126 :: Word32 -> FnW Binary_F126 Word32
encode_inner_F126 w = w

encode_inner_F127 :: Word32 -> FnW Binary_F127 Word32
encode_inner_F127 w = w

encode_inner_F128 :: Word32 -> FnW Binary_F128 Word32
encode_inner_F128 w = w

encode_inner_F129 :: Word32 -> FnW Binary_F129 Word32
encode_inner_F129 w = w

encode_inner_F130 :: Word32 -> FnW Binary_F130 Word32
encode_inner_F130 w = w

encode_inner_F131 :: Word32 -> FnW Binary_F131 Word32
encode_inner_F131 w = w

encode_inner_F132 :: Word32 -> FnW Binary_F132 Word32
encode_inner_F132 w = w

encode_inner_F133 :: Word32 -> FnW Binary_F133 Word32
encode_inner_F133 w = w

encode_inner_F134 :: Word32 -> FnW Binary_F134 Word32
encode_inner_F134 w = w

encode_inner_F135 :: Word32 -> FnW Binary_F135 Word32
encode_inner_F135 w = w

encode_inner_F136 :: Word32 -> FnW Binary_F136 Word32
encode_inner_F136 w = w

encode_inner_F137 :: Word32 -> FnW Binary_F137 Word32
encode_inner_F137 w = w

encode_inner_F138 :: Word32 -> FnW Binary_F138 Word32
encode_inner_F138 w = w

encode_inner_F139 :: Word32 -> FnW Binary_F139 Word32
encode_inner_F139 w = w

encode_inner_F140 :: Word32 -> FnW Binary_F140 Word32
encode_inner_F140 w = w

encode_inner_F141 :: Word32 -> FnW Binary_F141 Word32
encode_inner_F141 w = w

encode_inner_F142 :: Word32 -> FnW Binary_F142 Word32
encode_inner_F142 w = w

encode_inner_F143 :: Word32 -> FnW Binary_F143 Word32
encode_inner_F143 w = w

encode_inner_F144 :: Word32 -> FnW Binary_F144 Word32
encode_inner_F144 w = w

encode_inner_F145 :: Word32 -> FnW Binary_F145 Word32
encode_inner_F145 w = w

encode_inner_F146 :: Word32 -> FnW Binary_F146 Word32
encode_inner_F146 w = w

encode_inner_F147 :: Word32 -> FnW Binary_F147 Word32
encode_inner_F147 w = w

encode_inner_F148 :: Word32 -> FnW Binary_F148 Word32
encode_inner_F148 w = w

encode_inner_F149 :: Word32 -> FnW Binary_F149 Word32
encode_inner_F149 w = w

encode_inner_F150 :: Word32 -> FnW Binary_F150 Word32
encode_inner_F150 w = w

encode_inner_F151 :: Word32 -> FnW Binary_F151 Word32
encode_inner_F151 w = w

encode_inner_F152 :: Word32 -> FnW Binary_F152 Word32
encode_inner_F152 w = w

encode_inner_F153 :: Word32 -> FnW Binary_F153 Word32
encode_inner_F153 w = w

encode_inner_F154 :: Word32 -> FnW Binary_F154 Word32
encode_inner_F154 w = w

encode_inner_F155 :: Word32 -> FnW Binary_F155 Word32
encode_inner_F155 w = w

encode_inner_F156 :: Word32 -> FnW Binary_F156 Word32
encode_inner_F156 w = w

encode_inner_F157 :: Word32 -> FnW Binary_F157 Word32
encode_inner_F157 w = w

encode_inner_F158 :: Word32 -> FnW Binary_F158 Word32
encode_inner_F158 w = w

encode_inner_F159 :: Word32 -> FnW Binary_F159 Word32
encode_inner_F159 w = w

encode_inner_F160 :: Word32 -> FnW Binary_F160 Word32
encode_inner_F160 w = w

encode_inner_F161 :: Word32 -> FnW Binary_F161 Word32
encode_inner_F161 w = w

encode_inner_F162 :: Word32 -> FnW Binary_F162 Word32
encode_inner_F162 w = w

encode_inner_F163 :: Word32 -> FnW Binary_F163 Word32
encode_inner_F163 w = w

encode_inner_F164 :: Word32 -> FnW Binary_F164 Word32
encode_inner_F164 w = w

encode_inner_F165 :: Word32 -> FnW Binary_F165 Word32
encode_inner_F165 w = w

encode_inner_F166 :: Word32 -> FnW Binary_F166 Word32
encode_inner_F166 w = w

encode_inner_F167 :: Word32 -> FnW Binary_F167 Word32
encode_inner_F167 w = w

encode_inner_F168 :: Word32 -> FnW Binary_F168 Word32
encode_inner_F168 w = w

encode_inner_F169 :: Word32 -> FnW Binary_F169 Word32
encode_inner_F169 w = w

encode_inner_F170 :: Word32 -> FnW Binary_F170 Word32
encode_inner_F170 w = w

encode_inner_F171 :: Word32 -> FnW Binary_F171 Word32
encode_inner_F171 w = w

encode_inner_F172 :: Word32 -> FnW Binary_F172 Word32
encode_inner_F172 w = w

encode_inner_F173 :: Word32 -> FnW Binary_F173 Word32
encode_inner_F173 w = w

encode_inner_F174 :: Word32 -> FnW Binary_F174 Word32
encode_inner_F174 w = w

encode_inner_F175 :: Word32 -> FnW Binary_F175 Word32
encode_inner_F175 w = w

encode_inner_F176 :: Word32 -> FnW Binary_F176 Word32
encode_inner_F176 w = w

encode_inner_F177 :: Word32 -> FnW Binary_F177 Word32
encode_inner_F177 w = w

encode_inner_F178 :: Word32 -> FnW Binary_F178 Word32
encode_inner_F178 w = w

encode_inner_F179 :: Word32 -> FnW Binary_F179 Word32
encode_inner_F179 w = w

encode_inner_F180 :: Word32 -> FnW Binary_F180 Word32
encode_inner_F180 w = w

encode_inner_F181 :: Word32 -> FnW Binary_F181 Word32
encode_inner_F181 w = w

encode_inner_F182 :: Word32 -> FnW Binary_F182 Word32
encode_inner_F182 w = w

encode_inner_F183 :: Word32 -> FnW Binary_F183 Word32
encode_inner_F183 w = w

encode_inner_F184 :: Word32 -> FnW Binary_F184 Word32
encode_inner_F184 w = w

encode_inner_F185 :: Word32 -> FnW Binary_F185 Word32
encode_inner_F185 w = w

encode_inner_F186 :: Word32 -> FnW Binary_F186 Word32
encode_inner_F186 w = w

encode_inner_F187 :: Word32 -> FnW Binary_F187 Word32
encode_inner_F187 w = w

encode_inner_F188 :: Word32 -> FnW Binary_F188 Word32
encode_inner_F188 w = w

encode_inner_F189 :: Word32 -> FnW Binary_F189 Word32
encode_inner_F189 w = w

encode_inner_F190 :: Word32 -> FnW Binary_F190 Word32
encode_inner_F190 w = w

encode_inner_F191 :: Word32 -> FnW Binary_F191 Word32
encode_inner_F191 w = w

encode_inner_F192 :: Word32 -> FnW Binary_F192 Word32
encode_inner_F192 w = w

encode_inner_F193 :: Word32 -> FnW Binary_F193 Word32
encode_inner_F193 w = w

encode_inner_F194 :: Word32 -> FnW Binary_F194 Word32
encode_inner_F194 w = w

encode_inner_F195 :: Word32 -> FnW Binary_F195 Word32
encode_inner_F195 w = w

encode_inner_F196 :: Word32 -> FnW Binary_F196 Word32
encode_inner_F196 w = w

encode_inner_F197 :: Word32 -> FnW Binary_F197 Word32
encode_inner_F197 w = w

encode_inner_F198 :: Word32 -> FnW Binary_F198 Word32
encode_inner_F198 w = w

encode_inner_F199 :: Word32 -> FnW Binary_F199 Word32
encode_inner_F199 w = w

encode_inner_F200 :: Word32 -> FnW Binary_F200 Word32
encode_inner_F200 w = w

encode_inner_F201 :: Word32 -> FnW Binary_F201 Word32
encode_inner_F201 w = w

encode_inner_F202 :: Word32 -> FnW Binary_F202 Word32
encode_inner_F202 w = w

encode_inner_F203 :: Word32 -> FnW Binary_F203 Word32
encode_inner_F203 w = w

encode_inner_F204 :: Word32 -> FnW Binary_F204 Word32
encode_inner_F204 w = w

encode_inner_F205 :: Word32 -> FnW Binary_F205 Word32
encode_inner_F205 w = w

encode_inner_F206 :: Word32 -> FnW Binary_F206 Word32
encode_inner_F206 w = w

encode_inner_F207 :: Word32 -> FnW Binary_F207 Word32
encode_inner_F207 w = w

encode_inner_F208 :: Word32 -> FnW Binary_F208 Word32
encode_inner_F208 w = w

encode_inner_F209 :: Word32 -> FnW Binary_F209 Word32
encode_inner_F209 w = w

encode_inner_F210 :: Word32 -> FnW Binary_F210 Word32
encode_inner_F210 w = w

encode_inner_F211 :: Word32 -> FnW Binary_F211 Word32
encode_inner_F211 w = w

encode_inner_F212 :: Word32 -> FnW Binary_F212 Word32
encode_inner_F212 w = w

encode_inner_F213 :: Word32 -> FnW Binary_F213 Word32
encode_inner_F213 w = w

encode_inner_F214 :: Word32 -> FnW Binary_F214 Word32
encode_inner_F214 w = w

encode_inner_F215 :: Word32 -> FnW Binary_F215 Word32
encode_inner_F215 w = w

encode_inner_F216 :: Word32 -> FnW Binary_F216 Word32
encode_inner_F216 w = w

encode_inner_F217 :: Word32 -> FnW Binary_F217 Word32
encode_inner_F217 w = w

encode_inner_F218 :: Word32 -> FnW Binary_F218 Word32
encode_inner_F218 w = w
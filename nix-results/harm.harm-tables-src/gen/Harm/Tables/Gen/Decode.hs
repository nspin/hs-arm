{-# LANGUAGE DataKinds #-}
module Harm.Tables.Gen.Decode where
import Harm.Tables.Internal.Decode

decodeTable :: [(Pattern, Word32 -> Decode Insn)]
decodeTable
  = [(Pattern (Atom 436207616 4292934656) [],
      decode_inner_B17 adc_32_addsub_carry),
     (Pattern (Atom 2583691264 4292934656) [],
      decode_inner_B19 adc_64_addsub_carry),
     (Pattern (Atom 973078528 4292934656) [],
      decode_inner_B17 adcs_32_addsub_carry),
     (Pattern (Atom 3120562176 4292934656) [],
      decode_inner_B19 adcs_64_addsub_carry),
     (Pattern (Atom 186646528 4292870144) [],
      decode_inner_B89 add_32_addsub_ext),
     (Pattern (Atom 2334130176 4292870144) [],
      decode_inner_B90 add_64_addsub_ext),
     (Pattern (Atom 285212672 4278190080) [],
      decode_inner_B78 add_32_addsub_imm),
     (Pattern (Atom 2432696320 4278190080) [],
      decode_inner_B76 add_64_addsub_imm),
     (Pattern (Atom 184549376 4280287232) [],
      decode_inner_B77 add_32_addsub_shift),
     (Pattern (Atom 2332033024 4280287232) [],
      decode_inner_B80 add_64_addsub_shift),
     (Pattern (Atom 723517440 4292870144) [],
      decode_inner_B84 adds_32s_addsub_ext),
     (Pattern (Atom 2871001088 4292870144) [],
      decode_inner_B85 adds_64s_addsub_ext),
     (Pattern (Atom 822083584 4278190080) [],
      decode_inner_B70 adds_32s_addsub_imm),
     (Pattern (Atom 2969567232 4278190080) [],
      decode_inner_B67 adds_64s_addsub_imm),
     (Pattern (Atom 721420288 4280287232) [],
      decode_inner_B77 adds_32_addsub_shift),
     (Pattern (Atom 2868903936 4280287232) [],
      decode_inner_B80 adds_64_addsub_shift),
     (Pattern (Atom 268435456 2667577344) [],
      decode_inner_B12 adr_only_pcreladdr),
     (Pattern (Atom 2415919104 2667577344) [],
      decode_inner_B12 adrp_only_pcreladdr),
     (Pattern (Atom 301989888 4290772992) [],
      decode_inner_B33 and_32_log_imm),
     (Pattern (Atom 2449473536 4286578688) [],
      decode_inner_B28 and_64_log_imm),
     (Pattern (Atom 167772160 4280287232) [],
      decode_inner_B77 and_32_log_shift),
     (Pattern (Atom 2315255808 4280287232) [],
      decode_inner_B80 and_64_log_shift),
     (Pattern (Atom 1912602624 4290772992) [],
      decode_inner_B21 ands_32s_log_imm),
     (Pattern (Atom 4060086272 4286578688) [],
      decode_inner_B22 ands_64s_log_imm),
     (Pattern (Atom 1778384896 4280287232) [],
      decode_inner_B77 ands_32_log_shift),
     (Pattern (Atom 3925868544 4280287232) [],
      decode_inner_B80 ands_64_log_shift),
     (Pattern (Atom 448800768 4292934656) [],
      decode_inner_B17 asrv_32_dp_2src),
     (Pattern (Atom 2596284416 4292934656) [],
      decode_inner_B19 asrv_64_dp_2src),
     (Pattern (Atom 3670087680 4294966272) [],
      decode_inner_B11 autda_64p_dp_1src),
     (Pattern (Atom 3670096864 4294967264) [],
      decode_inner_B1 autdza_64z_dp_1src),
     (Pattern (Atom 3670088704 4294966272) [],
      decode_inner_B11 autdb_64p_dp_1src),
     (Pattern (Atom 3670097888 4294967264) [],
      decode_inner_B1 autdzb_64z_dp_1src),
     (Pattern (Atom 3670085632 4294966272) [],
      decode_inner_B11 autia_64p_dp_1src),
     (Pattern (Atom 3670094816 4294967264) [],
      decode_inner_B1 autiza_64z_dp_1src),
     (Pattern (Atom 3573752223 4294967295) [],
      decode_inner_B0 autia1716_hi_system),
     (Pattern (Atom 3573752767 4294967295) [],
      decode_inner_B0 autiasp_hi_system),
     (Pattern (Atom 3573752735 4294967295) [],
      decode_inner_B0 autiaz_hi_system),
     (Pattern (Atom 3670086656 4294966272) [],
      decode_inner_B11 autib_64p_dp_1src),
     (Pattern (Atom 3670095840 4294967264) [],
      decode_inner_B1 autizb_64z_dp_1src),
     (Pattern (Atom 3573752287 4294967295) [],
      decode_inner_B0 autib1716_hi_system),
     (Pattern (Atom 3573752831 4294967295) [],
      decode_inner_B0 autibsp_hi_system),
     (Pattern (Atom 3573752799 4294967295) [],
      decode_inner_B0 autibz_hi_system),
     (Pattern (Atom 335544320 4227858432) [],
      decode_inner_B6 b_only_branch_imm),
     (Pattern (Atom 1409286144 4278190096) [],
      decode_inner_B15 b_only_condbranch),
     (Pattern (Atom 855638016 4290772992) [],
      decode_inner_B57 bfm_32m_bitfield),
     (Pattern (Atom 3007315968 4290772992) [],
      decode_inner_B60 bfm_64m_bitfield),
     (Pattern (Atom 169869312 4280287232) [],
      decode_inner_B77 bic_32_log_shift),
     (Pattern (Atom 2317352960 4280287232) [],
      decode_inner_B80 bic_64_log_shift),
     (Pattern (Atom 1780482048 4280287232) [],
      decode_inner_B77 bics_32_log_shift),
     (Pattern (Atom 3927965696 4280287232) [],
      decode_inner_B80 bics_64_log_shift),
     (Pattern (Atom 2483027968 4227858432) [],
      decode_inner_B6 bl_only_branch_imm),
     (Pattern (Atom 3594452992 4294966303) [],
      decode_inner_B2 blr_64_branch_reg),
     (Pattern (Atom 3594455071 4294966303) [],
      decode_inner_B2 blraaz_64_branch_reg),
     (Pattern (Atom 3611232256 4294966272) [],
      decode_inner_B13 blraa_64p_branch_reg),
     (Pattern (Atom 3594456095 4294966303) [],
      decode_inner_B2 blrabz_64_branch_reg),
     (Pattern (Atom 3611233280 4294966272) [],
      decode_inner_B13 blrab_64p_branch_reg),
     (Pattern (Atom 3592355840 4294966303) [],
      decode_inner_B2 br_64_branch_reg),
     (Pattern (Atom 3592357919 4294966303) [],
      decode_inner_B2 braaz_64_branch_reg),
     (Pattern (Atom 3609135104 4294966272) [],
      decode_inner_B13 braa_64p_branch_reg),
     (Pattern (Atom 3592358943 4294966303) [],
      decode_inner_B2 brabz_64_branch_reg),
     (Pattern (Atom 3609136128 4294966272) [],
      decode_inner_B13 brab_64p_branch_reg),
     (Pattern (Atom 3558866944 4292870175) [],
      decode_inner_B4 brk_ex_exception),
     (Pattern (Atom 2292218880 4292934656) [],
      decode_inner_B46 cas_c32_ldstexcl),
     (Pattern (Atom 2296413184 4292934656) [],
      decode_inner_B46 casa_c32_ldstexcl),
     (Pattern (Atom 2296445952 4292934656) [],
      decode_inner_B46 casal_c32_ldstexcl),
     (Pattern (Atom 2292251648 4292934656) [],
      decode_inner_B46 casl_c32_ldstexcl),
     (Pattern (Atom 3365960704 4292934656) [],
      decode_inner_B50 cas_c64_ldstexcl),
     (Pattern (Atom 3370155008 4292934656) [],
      decode_inner_B50 casa_c64_ldstexcl),
     (Pattern (Atom 3370187776 4292934656) [],
      decode_inner_B50 casal_c64_ldstexcl),
     (Pattern (Atom 3365993472 4292934656) [],
      decode_inner_B50 casl_c64_ldstexcl),
     (Pattern (Atom 148929536 4292934656) [],
      decode_inner_B46 casab_c32_ldstexcl),
     (Pattern (Atom 148962304 4292934656) [],
      decode_inner_B46 casalb_c32_ldstexcl),
     (Pattern (Atom 144735232 4292934656) [],
      decode_inner_B46 casb_c32_ldstexcl),
     (Pattern (Atom 144768000 4292934656) [],
      decode_inner_B46 caslb_c32_ldstexcl),
     (Pattern (Atom 1222671360 4292934656) [],
      decode_inner_B46 casah_c32_ldstexcl),
     (Pattern (Atom 1222704128 4292934656) [],
      decode_inner_B46 casalh_c32_ldstexcl),
     (Pattern (Atom 1218477056 4292934656) [],
      decode_inner_B46 cash_c32_ldstexcl),
     (Pattern (Atom 1218509824 4292934656) [],
      decode_inner_B46 caslh_c32_ldstexcl),
     (Pattern (Atom 136346624 4292934656) [],
      decode_inner_B86 casp_cp32_ldstexcl),
     (Pattern (Atom 140540928 4292934656) [],
      decode_inner_B86 caspa_cp32_ldstexcl),
     (Pattern (Atom 140573696 4292934656) [],
      decode_inner_B86 caspal_cp32_ldstexcl),
     (Pattern (Atom 136379392 4292934656) [],
      decode_inner_B86 caspl_cp32_ldstexcl),
     (Pattern (Atom 1210088448 4292934656) [],
      decode_inner_B87 casp_cp64_ldstexcl),
     (Pattern (Atom 1214282752 4292934656) [],
      decode_inner_B87 caspa_cp64_ldstexcl),
     (Pattern (Atom 1214315520 4292934656) [],
      decode_inner_B87 caspal_cp64_ldstexcl),
     (Pattern (Atom 1210121216 4292934656) [],
      decode_inner_B87 caspl_cp64_ldstexcl),
     (Pattern (Atom 889192448 4278190080) [],
      decode_inner_B10 cbnz_32_compbranch),
     (Pattern (Atom 3036676096 4278190080) [],
      decode_inner_B14 cbnz_64_compbranch),
     (Pattern (Atom 872415232 4278190080) [],
      decode_inner_B10 cbz_32_compbranch),
     (Pattern (Atom 3019898880 4278190080) [],
      decode_inner_B14 cbz_64_compbranch),
     (Pattern (Atom 977274880 4292873232) [],
      decode_inner_B62 ccmn_32_condcmp_imm),
     (Pattern (Atom 3124758528 4292873232) [],
      decode_inner_B63 ccmn_64_condcmp_imm),
     (Pattern (Atom 977272832 4292873232) [],
      decode_inner_B53 ccmn_32_condcmp_reg),
     (Pattern (Atom 3124756480 4292873232) [],
      decode_inner_B54 ccmn_64_condcmp_reg),
     (Pattern (Atom 2051016704 4292873232) [],
      decode_inner_B62 ccmp_32_condcmp_imm),
     (Pattern (Atom 4198500352 4292873232) [],
      decode_inner_B63 ccmp_64_condcmp_imm),
     (Pattern (Atom 2051014656 4292873232) [],
      decode_inner_B53 ccmp_32_condcmp_reg),
     (Pattern (Atom 4198498304 4292873232) [],
      decode_inner_B54 ccmp_64_condcmp_reg),
     (Pattern (Atom 3573755999 4294963455) [],
      decode_inner_B7 clrex_bn_system),
     (Pattern (Atom 1522537472 4294966272) [],
      decode_inner_B8 cls_32_dp_1src),
     (Pattern (Atom 3670021120 4294966272) [],
      decode_inner_B9 cls_64_dp_1src),
     (Pattern (Atom 1522536448 4294966272) [],
      decode_inner_B8 clz_32_dp_1src),
     (Pattern (Atom 3670020096 4294966272) [],
      decode_inner_B9 clz_64_dp_1src),
     (Pattern (Atom 448806912 4292934656) [],
      decode_inner_B17 crc32b_32c_dp_2src),
     (Pattern (Atom 448807936 4292934656) [],
      decode_inner_B17 crc32h_32c_dp_2src),
     (Pattern (Atom 448808960 4292934656) [],
      decode_inner_B17 crc32w_32c_dp_2src),
     (Pattern (Atom 2596293632 4292934656) [],
      decode_inner_B18 crc32x_64c_dp_2src),
     (Pattern (Atom 448811008 4292934656) [],
      decode_inner_B17 crc32cb_32c_dp_2src),
     (Pattern (Atom 448812032 4292934656) [],
      decode_inner_B17 crc32ch_32c_dp_2src),
     (Pattern (Atom 448813056 4292934656) [],
      decode_inner_B17 crc32cw_32c_dp_2src),
     (Pattern (Atom 2596297728 4292934656) [],
      decode_inner_B18 crc32cx_64c_dp_2src),
     (Pattern (Atom 444596224 4292873216) [],
      decode_inner_B38 csel_32_condsel),
     (Pattern (Atom 2592079872 4292873216) [],
      decode_inner_B41 csel_64_condsel),
     (Pattern (Atom 444597248 4292873216) [],
      decode_inner_B38 csinc_32_condsel),
     (Pattern (Atom 2592080896 4292873216) [],
      decode_inner_B41 csinc_64_condsel),
     (Pattern (Atom 1518338048 4292873216) [],
      decode_inner_B38 csinv_32_condsel),
     (Pattern (Atom 3665821696 4292873216) [],
      decode_inner_B41 csinv_64_condsel),
     (Pattern (Atom 1518339072 4292873216) [],
      decode_inner_B38 csneg_32_condsel),
     (Pattern (Atom 3665822720 4292873216) [],
      decode_inner_B41 csneg_64_condsel),
     (Pattern (Atom 3567255553 4292870175) [],
      decode_inner_B7 dcps1_dc_exception),
     (Pattern (Atom 3567255554 4292870175) [],
      decode_inner_B7 dcps2_dc_exception),
     (Pattern (Atom 3567255555 4292870175) [],
      decode_inner_B7 dcps3_dc_exception),
     (Pattern (Atom 3573756095 4294963455) [],
      decode_inner_B16 dmb_bo_system),
     (Pattern (Atom 3602842592 4294967295) [],
      decode_inner_B0 drps_64e_branch_reg),
     (Pattern (Atom 3573756063 4294963455) [],
      decode_inner_B16 dsb_bo_system),
     (Pattern (Atom 1243611136 4280287232) [],
      decode_inner_B77 eon_32_log_shift),
     (Pattern (Atom 3391094784 4280287232) [],
      decode_inner_B80 eon_64_log_shift),
     (Pattern (Atom 1375731712 4290772992) [],
      decode_inner_B33 eor_32_log_imm),
     (Pattern (Atom 3523215360 4286578688) [],
      decode_inner_B28 eor_64_log_imm),
     (Pattern (Atom 1241513984 4280287232) [],
      decode_inner_B77 eor_32_log_shift),
     (Pattern (Atom 3388997632 4280287232) [],
      decode_inner_B80 eor_64_log_shift),
     (Pattern (Atom 3600745440 4294967295) [],
      decode_inner_B0 eret_64e_branch_reg),
     (Pattern (Atom 3600747519 4294967295) [],
      decode_inner_B0 eretaa_64e_branch_reg),
     (Pattern (Atom 3600748543 4294967295) [],
      decode_inner_B0 eretab_64e_branch_reg),
     (Pattern (Atom 3573752351 4294967295) [],
      decode_inner_B0 esb_hi_system),
     (Pattern (Atom 327155712 4292902912) [],
      decode_inner_B37 extr_32_extract),
     (Pattern (Atom 2478833664 4292870144) [],
      decode_inner_B40 extr_64_extract),
     (Pattern (Atom 3573752031 4294967263) [], decode_inner_B4 hint_1),
     (Pattern (Atom 3573751839 4294963231) [Atom 0 3328],
      decode_inner_B4 hint_2),
     (Pattern (Atom 3573752351 4294967071) [Atom 0 192],
      decode_inner_B4 hint_3),
     (Pattern (Atom 3560964096 4292870175) [],
      decode_inner_B4 hlt_ex_exception),
     (Pattern (Atom 3556769794 4292870175) [],
      decode_inner_B4 hvc_ex_exception),
     (Pattern (Atom 3573756127 4294963455) [],
      decode_inner_B20 isb_bi_system),
     (Pattern (Atom 3089104896 4292934656) [],
      decode_inner_B26 ldadd_32_memop),
     (Pattern (Atom 3097493504 4292934656) [],
      decode_inner_B26 ldadda_32_memop),
     (Pattern (Atom 3101687808 4292934656) [],
      decode_inner_B26 ldaddal_32_memop),
     (Pattern (Atom 3093299200 4292934656) [],
      decode_inner_B26 ldaddl_32_memop),
     (Pattern (Atom 4162846720 4292934656) [],
      decode_inner_B29 ldadd_64_memop),
     (Pattern (Atom 4171235328 4292934656) [],
      decode_inner_B29 ldadda_64_memop),
     (Pattern (Atom 4175429632 4292934656) [],
      decode_inner_B29 ldaddal_64_memop),
     (Pattern (Atom 4167041024 4292934656) [],
      decode_inner_B29 ldaddl_64_memop),
     (Pattern (Atom 950009856 4292934656) [],
      decode_inner_B26 ldaddab_32_memop),
     (Pattern (Atom 954204160 4292934656) [],
      decode_inner_B26 ldaddalb_32_memop),
     (Pattern (Atom 941621248 4292934656) [],
      decode_inner_B26 ldaddb_32_memop),
     (Pattern (Atom 945815552 4292934656) [],
      decode_inner_B26 ldaddlb_32_memop),
     (Pattern (Atom 2023751680 4292934656) [],
      decode_inner_B26 ldaddah_32_memop),
     (Pattern (Atom 2027945984 4292934656) [],
      decode_inner_B26 ldaddalh_32_memop),
     (Pattern (Atom 2015363072 4292934656) [],
      decode_inner_B26 ldaddh_32_memop),
     (Pattern (Atom 2019557376 4292934656) [],
      decode_inner_B26 ldaddlh_32_memop),
     (Pattern (Atom 3099574272 4294966272) [],
      decode_inner_B27 ldapr_32l_memop),
     (Pattern (Atom 4173316096 4294966272) [],
      decode_inner_B30 ldapr_64l_memop),
     (Pattern (Atom 952090624 4294966272) [],
      decode_inner_B27 ldaprb_32l_memop),
     (Pattern (Atom 2025832448 4294966272) [],
      decode_inner_B27 ldaprh_32l_memop),
     (Pattern (Atom 2296380416 4294966272) [],
      decode_inner_B24 ldar_lr32_ldstexcl),
     (Pattern (Atom 3370122240 4294966272) [],
      decode_inner_B25 ldar_lr64_ldstexcl),
     (Pattern (Atom 148896768 4294966272) [],
      decode_inner_B24 ldarb_lr32_ldstexcl),
     (Pattern (Atom 1222638592 4294966272) [],
      decode_inner_B24 ldarh_lr32_ldstexcl),
     (Pattern (Atom 2290057216 4294934528) [],
      decode_inner_B58 ldaxp_lp32_ldstexcl),
     (Pattern (Atom 3363799040 4294934528) [],
      decode_inner_B61 ldaxp_lp64_ldstexcl),
     (Pattern (Atom 2287991808 4294966272) [],
      decode_inner_B24 ldaxr_lr32_ldstexcl),
     (Pattern (Atom 3361733632 4294966272) [],
      decode_inner_B25 ldaxr_lr64_ldstexcl),
     (Pattern (Atom 140508160 4294966272) [],
      decode_inner_B24 ldaxrb_lr32_ldstexcl),
     (Pattern (Atom 1214249984 4294966272) [],
      decode_inner_B24 ldaxrh_lr32_ldstexcl),
     (Pattern (Atom 3089108992 4292934656) [],
      decode_inner_B26 ldclr_32_memop),
     (Pattern (Atom 3097497600 4292934656) [],
      decode_inner_B26 ldclra_32_memop),
     (Pattern (Atom 3101691904 4292934656) [],
      decode_inner_B26 ldclral_32_memop),
     (Pattern (Atom 3093303296 4292934656) [],
      decode_inner_B26 ldclrl_32_memop),
     (Pattern (Atom 4162850816 4292934656) [],
      decode_inner_B29 ldclr_64_memop),
     (Pattern (Atom 4171239424 4292934656) [],
      decode_inner_B29 ldclra_64_memop),
     (Pattern (Atom 4175433728 4292934656) [],
      decode_inner_B29 ldclral_64_memop),
     (Pattern (Atom 4167045120 4292934656) [],
      decode_inner_B29 ldclrl_64_memop),
     (Pattern (Atom 950013952 4292934656) [],
      decode_inner_B26 ldclrab_32_memop),
     (Pattern (Atom 954208256 4292934656) [],
      decode_inner_B26 ldclralb_32_memop),
     (Pattern (Atom 941625344 4292934656) [],
      decode_inner_B26 ldclrb_32_memop),
     (Pattern (Atom 945819648 4292934656) [],
      decode_inner_B26 ldclrlb_32_memop),
     (Pattern (Atom 2023755776 4292934656) [],
      decode_inner_B26 ldclrah_32_memop),
     (Pattern (Atom 2027950080 4292934656) [],
      decode_inner_B26 ldclralh_32_memop),
     (Pattern (Atom 2015367168 4292934656) [],
      decode_inner_B26 ldclrh_32_memop),
     (Pattern (Atom 2019561472 4292934656) [],
      decode_inner_B26 ldclrlh_32_memop),
     (Pattern (Atom 3089113088 4292934656) [],
      decode_inner_B26 ldeor_32_memop),
     (Pattern (Atom 3097501696 4292934656) [],
      decode_inner_B26 ldeora_32_memop),
     (Pattern (Atom 3101696000 4292934656) [],
      decode_inner_B26 ldeoral_32_memop),
     (Pattern (Atom 3093307392 4292934656) [],
      decode_inner_B26 ldeorl_32_memop),
     (Pattern (Atom 4162854912 4292934656) [],
      decode_inner_B29 ldeor_64_memop),
     (Pattern (Atom 4171243520 4292934656) [],
      decode_inner_B29 ldeora_64_memop),
     (Pattern (Atom 4175437824 4292934656) [],
      decode_inner_B29 ldeoral_64_memop),
     (Pattern (Atom 4167049216 4292934656) [],
      decode_inner_B29 ldeorl_64_memop),
     (Pattern (Atom 950018048 4292934656) [],
      decode_inner_B26 ldeorab_32_memop),
     (Pattern (Atom 954212352 4292934656) [],
      decode_inner_B26 ldeoralb_32_memop),
     (Pattern (Atom 941629440 4292934656) [],
      decode_inner_B26 ldeorb_32_memop),
     (Pattern (Atom 945823744 4292934656) [],
      decode_inner_B26 ldeorlb_32_memop),
     (Pattern (Atom 2023759872 4292934656) [],
      decode_inner_B26 ldeorah_32_memop),
     (Pattern (Atom 2027954176 4292934656) [],
      decode_inner_B26 ldeoralh_32_memop),
     (Pattern (Atom 2015371264 4292934656) [],
      decode_inner_B26 ldeorh_32_memop),
     (Pattern (Atom 2019565568 4292934656) [],
      decode_inner_B26 ldeorlh_32_memop),
     (Pattern (Atom 2296347648 4294966272) [],
      decode_inner_B24 ldlar_lr32_ldstexcl),
     (Pattern (Atom 3370089472 4294966272) [],
      decode_inner_B25 ldlar_lr64_ldstexcl),
     (Pattern (Atom 148864000 4294966272) [],
      decode_inner_B24 ldlarb_lr32_ldstexcl),
     (Pattern (Atom 1222605824 4294966272) [],
      decode_inner_B24 ldlarh_lr32_ldstexcl),
     (Pattern (Atom 675282944 4290772992) [],
      decode_inner_B71 ldnp_32_ldstnapair_offs),
     (Pattern (Atom 2822766592 4290772992) [],
      decode_inner_B72 ldnp_64_ldstnapair_offs),
     (Pattern (Atom 683671552 4290772992) [],
      decode_inner_B64 ldp_32_ldstpair_post),
     (Pattern (Atom 2831155200 4290772992) [],
      decode_inner_B65 ldp_64_ldstpair_post),
     (Pattern (Atom 700448768 4290772992) [],
      decode_inner_B66 ldp_32_ldstpair_pre),
     (Pattern (Atom 2847932416 4290772992) [],
      decode_inner_B68 ldp_64_ldstpair_pre),
     (Pattern (Atom 692060160 4290772992) [],
      decode_inner_B71 ldp_32_ldstpair_off),
     (Pattern (Atom 2839543808 4290772992) [],
      decode_inner_B72 ldp_64_ldstpair_off),
     (Pattern (Atom 1757413376 4290772992) [],
      decode_inner_B65 ldpsw_64_ldstpair_post),
     (Pattern (Atom 1774190592 4290772992) [],
      decode_inner_B68 ldpsw_64_ldstpair_pre),
     (Pattern (Atom 1765801984 4290772992) [],
      decode_inner_B72 ldpsw_64_ldstpair_off),
     (Pattern (Atom 3091203072 4292873216) [],
      decode_inner_B39 ldr_32_ldst_immpost),
     (Pattern (Atom 4164944896 4292873216) [],
      decode_inner_B42 ldr_64_ldst_immpost),
     (Pattern (Atom 3091205120 4292873216) [],
      decode_inner_B43 ldr_32_ldst_immpre),
     (Pattern (Atom 4164946944 4292873216) [],
      decode_inner_B44 ldr_64_ldst_immpre),
     (Pattern (Atom 3107979264 4290772992) [],
      decode_inner_B48 ldr_32_ldst_pos),
     (Pattern (Atom 4181721088 4290772992) [],
      decode_inner_B51 ldr_64_ldst_pos),
     (Pattern (Atom 402653184 4278190080) [],
      decode_inner_B10 ldr_32_loadlit),
     (Pattern (Atom 1476395008 4278190080) [],
      decode_inner_B14 ldr_64_loadlit),
     (Pattern (Atom 3093301248 4292873216) [],
      decode_inner_B94 ldr_32_ldst_regoff),
     (Pattern (Atom 4167043072 4292873216) [],
      decode_inner_B95 ldr_64_ldst_regoff),
     (Pattern (Atom 4162847744 4288678912) [],
      decode_inner_B52 ldraa_64_ldst_pac),
     (Pattern (Atom 4162849792 4288678912) [],
      decode_inner_B55 ldraa_64w_ldst_pac),
     (Pattern (Atom 4171236352 4288678912) [],
      decode_inner_B52 ldrab_64_ldst_pac),
     (Pattern (Atom 4171238400 4288678912) [],
      decode_inner_B55 ldrab_64w_ldst_pac),
     (Pattern (Atom 943719424 4292873216) [],
      decode_inner_B39 ldrb_32_ldst_immpost),
     (Pattern (Atom 943721472 4292873216) [],
      decode_inner_B43 ldrb_32_ldst_immpre),
     (Pattern (Atom 960495616 4290772992) [],
      decode_inner_B48 ldrb_32_ldst_pos),
     (Pattern (Atom 945817600 4292873216) [Atom 24576 57344],
      decode_inner_B92 ldrb_32b_ldst_regoff),
     (Pattern (Atom 945842176 4292930560) [],
      decode_inner_B79 ldrb_32bl_ldst_regoff),
     (Pattern (Atom 2017461248 4292873216) [],
      decode_inner_B39 ldrh_32_ldst_immpost),
     (Pattern (Atom 2017463296 4292873216) [],
      decode_inner_B43 ldrh_32_ldst_immpre),
     (Pattern (Atom 2034237440 4290772992) [],
      decode_inner_B48 ldrh_32_ldst_pos),
     (Pattern (Atom 2019559424 4292873216) [],
      decode_inner_B94 ldrh_32_ldst_regoff),
     (Pattern (Atom 952108032 4292873216) [],
      decode_inner_B39 ldrsb_32_ldst_immpost),
     (Pattern (Atom 947913728 4292873216) [],
      decode_inner_B42 ldrsb_64_ldst_immpost),
     (Pattern (Atom 952110080 4292873216) [],
      decode_inner_B43 ldrsb_32_ldst_immpre),
     (Pattern (Atom 947915776 4292873216) [],
      decode_inner_B44 ldrsb_64_ldst_immpre),
     (Pattern (Atom 968884224 4290772992) [],
      decode_inner_B48 ldrsb_32_ldst_pos),
     (Pattern (Atom 964689920 4290772992) [],
      decode_inner_B51 ldrsb_64_ldst_pos),
     (Pattern (Atom 954206208 4292873216) [Atom 24576 57344],
      decode_inner_B92 ldrsb_32b_ldst_regoff),
     (Pattern (Atom 954230784 4292930560) [],
      decode_inner_B79 ldrsb_32bl_ldst_regoff),
     (Pattern (Atom 950011904 4292873216) [Atom 24576 57344],
      decode_inner_B93 ldrsb_64b_ldst_regoff),
     (Pattern (Atom 950036480 4292930560) [],
      decode_inner_B81 ldrsb_64bl_ldst_regoff),
     (Pattern (Atom 2025849856 4292873216) [],
      decode_inner_B39 ldrsh_32_ldst_immpost),
     (Pattern (Atom 2021655552 4292873216) [],
      decode_inner_B42 ldrsh_64_ldst_immpost),
     (Pattern (Atom 2025851904 4292873216) [],
      decode_inner_B43 ldrsh_32_ldst_immpre),
     (Pattern (Atom 2021657600 4292873216) [],
      decode_inner_B44 ldrsh_64_ldst_immpre),
     (Pattern (Atom 2042626048 4290772992) [],
      decode_inner_B48 ldrsh_32_ldst_pos),
     (Pattern (Atom 2038431744 4290772992) [],
      decode_inner_B51 ldrsh_64_ldst_pos),
     (Pattern (Atom 2027948032 4292873216) [],
      decode_inner_B94 ldrsh_32_ldst_regoff),
     (Pattern (Atom 2023753728 4292873216) [],
      decode_inner_B95 ldrsh_64_ldst_regoff),
     (Pattern (Atom 3095397376 4292873216) [],
      decode_inner_B42 ldrsw_64_ldst_immpost),
     (Pattern (Atom 3095399424 4292873216) [],
      decode_inner_B44 ldrsw_64_ldst_immpre),
     (Pattern (Atom 3112173568 4290772992) [],
      decode_inner_B51 ldrsw_64_ldst_pos),
     (Pattern (Atom 2550136832 4278190080) [],
      decode_inner_B14 ldrsw_64_loadlit),
     (Pattern (Atom 3097495552 4292873216) [],
      decode_inner_B95 ldrsw_64_ldst_regoff),
     (Pattern (Atom 3089117184 4292934656) [],
      decode_inner_B26 ldset_32_memop),
     (Pattern (Atom 3097505792 4292934656) [],
      decode_inner_B26 ldseta_32_memop),
     (Pattern (Atom 3101700096 4292934656) [],
      decode_inner_B26 ldsetal_32_memop),
     (Pattern (Atom 3093311488 4292934656) [],
      decode_inner_B26 ldsetl_32_memop),
     (Pattern (Atom 4162859008 4292934656) [],
      decode_inner_B29 ldset_64_memop),
     (Pattern (Atom 4171247616 4292934656) [],
      decode_inner_B29 ldseta_64_memop),
     (Pattern (Atom 4175441920 4292934656) [],
      decode_inner_B29 ldsetal_64_memop),
     (Pattern (Atom 4167053312 4292934656) [],
      decode_inner_B29 ldsetl_64_memop),
     (Pattern (Atom 950022144 4292934656) [],
      decode_inner_B26 ldsetab_32_memop),
     (Pattern (Atom 954216448 4292934656) [],
      decode_inner_B26 ldsetalb_32_memop),
     (Pattern (Atom 941633536 4292934656) [],
      decode_inner_B26 ldsetb_32_memop),
     (Pattern (Atom 945827840 4292934656) [],
      decode_inner_B26 ldsetlb_32_memop),
     (Pattern (Atom 2023763968 4292934656) [],
      decode_inner_B26 ldsetah_32_memop),
     (Pattern (Atom 2027958272 4292934656) [],
      decode_inner_B26 ldsetalh_32_memop),
     (Pattern (Atom 2015375360 4292934656) [],
      decode_inner_B26 ldseth_32_memop),
     (Pattern (Atom 2019569664 4292934656) [],
      decode_inner_B26 ldsetlh_32_memop),
     (Pattern (Atom 3089121280 4292934656) [],
      decode_inner_B26 ldsmax_32_memop),
     (Pattern (Atom 3097509888 4292934656) [],
      decode_inner_B26 ldsmaxa_32_memop),
     (Pattern (Atom 3101704192 4292934656) [],
      decode_inner_B26 ldsmaxal_32_memop),
     (Pattern (Atom 3093315584 4292934656) [],
      decode_inner_B26 ldsmaxl_32_memop),
     (Pattern (Atom 4162863104 4292934656) [],
      decode_inner_B29 ldsmax_64_memop),
     (Pattern (Atom 4171251712 4292934656) [],
      decode_inner_B29 ldsmaxa_64_memop),
     (Pattern (Atom 4175446016 4292934656) [],
      decode_inner_B29 ldsmaxal_64_memop),
     (Pattern (Atom 4167057408 4292934656) [],
      decode_inner_B29 ldsmaxl_64_memop),
     (Pattern (Atom 950026240 4292934656) [],
      decode_inner_B26 ldsmaxab_32_memop),
     (Pattern (Atom 954220544 4292934656) [],
      decode_inner_B26 ldsmaxalb_32_memop),
     (Pattern (Atom 941637632 4292934656) [],
      decode_inner_B26 ldsmaxb_32_memop),
     (Pattern (Atom 945831936 4292934656) [],
      decode_inner_B26 ldsmaxlb_32_memop),
     (Pattern (Atom 2023768064 4292934656) [],
      decode_inner_B26 ldsmaxah_32_memop),
     (Pattern (Atom 2027962368 4292934656) [],
      decode_inner_B26 ldsmaxalh_32_memop),
     (Pattern (Atom 2015379456 4292934656) [],
      decode_inner_B26 ldsmaxh_32_memop),
     (Pattern (Atom 2019573760 4292934656) [],
      decode_inner_B26 ldsmaxlh_32_memop),
     (Pattern (Atom 3089125376 4292934656) [],
      decode_inner_B26 ldsmin_32_memop),
     (Pattern (Atom 3097513984 4292934656) [],
      decode_inner_B26 ldsmina_32_memop),
     (Pattern (Atom 3101708288 4292934656) [],
      decode_inner_B26 ldsminal_32_memop),
     (Pattern (Atom 3093319680 4292934656) [],
      decode_inner_B26 ldsminl_32_memop),
     (Pattern (Atom 4162867200 4292934656) [],
      decode_inner_B29 ldsmin_64_memop),
     (Pattern (Atom 4171255808 4292934656) [],
      decode_inner_B29 ldsmina_64_memop),
     (Pattern (Atom 4175450112 4292934656) [],
      decode_inner_B29 ldsminal_64_memop),
     (Pattern (Atom 4167061504 4292934656) [],
      decode_inner_B29 ldsminl_64_memop),
     (Pattern (Atom 950030336 4292934656) [],
      decode_inner_B26 ldsminab_32_memop),
     (Pattern (Atom 954224640 4292934656) [],
      decode_inner_B26 ldsminalb_32_memop),
     (Pattern (Atom 941641728 4292934656) [],
      decode_inner_B26 ldsminb_32_memop),
     (Pattern (Atom 945836032 4292934656) [],
      decode_inner_B26 ldsminlb_32_memop),
     (Pattern (Atom 2023772160 4292934656) [],
      decode_inner_B26 ldsminah_32_memop),
     (Pattern (Atom 2027966464 4292934656) [],
      decode_inner_B26 ldsminalh_32_memop),
     (Pattern (Atom 2015383552 4292934656) [],
      decode_inner_B26 ldsminh_32_memop),
     (Pattern (Atom 2019577856 4292934656) [],
      decode_inner_B26 ldsminlh_32_memop),
     (Pattern (Atom 3091204096 4292873216) [],
      decode_inner_B49 ldtr_32_ldst_unpriv),
     (Pattern (Atom 4164945920 4292873216) [],
      decode_inner_B52 ldtr_64_ldst_unpriv),
     (Pattern (Atom 943720448 4292873216) [],
      decode_inner_B49 ldtrb_32_ldst_unpriv),
     (Pattern (Atom 2017462272 4292873216) [],
      decode_inner_B49 ldtrh_32_ldst_unpriv),
     (Pattern (Atom 952109056 4292873216) [],
      decode_inner_B49 ldtrsb_32_ldst_unpriv),
     (Pattern (Atom 947914752 4292873216) [],
      decode_inner_B52 ldtrsb_64_ldst_unpriv),
     (Pattern (Atom 2025850880 4292873216) [],
      decode_inner_B49 ldtrsh_32_ldst_unpriv),
     (Pattern (Atom 2021656576 4292873216) [],
      decode_inner_B52 ldtrsh_64_ldst_unpriv),
     (Pattern (Atom 3095398400 4292873216) [],
      decode_inner_B52 ldtrsw_64_ldst_unpriv),
     (Pattern (Atom 3089129472 4292934656) [],
      decode_inner_B26 ldumax_32_memop),
     (Pattern (Atom 3097518080 4292934656) [],
      decode_inner_B26 ldumaxa_32_memop),
     (Pattern (Atom 3101712384 4292934656) [],
      decode_inner_B26 ldumaxal_32_memop),
     (Pattern (Atom 3093323776 4292934656) [],
      decode_inner_B26 ldumaxl_32_memop),
     (Pattern (Atom 4162871296 4292934656) [],
      decode_inner_B29 ldumax_64_memop),
     (Pattern (Atom 4171259904 4292934656) [],
      decode_inner_B29 ldumaxa_64_memop),
     (Pattern (Atom 4175454208 4292934656) [],
      decode_inner_B29 ldumaxal_64_memop),
     (Pattern (Atom 4167065600 4292934656) [],
      decode_inner_B29 ldumaxl_64_memop),
     (Pattern (Atom 950034432 4292934656) [],
      decode_inner_B26 ldumaxab_32_memop),
     (Pattern (Atom 954228736 4292934656) [],
      decode_inner_B26 ldumaxalb_32_memop),
     (Pattern (Atom 941645824 4292934656) [],
      decode_inner_B26 ldumaxb_32_memop),
     (Pattern (Atom 945840128 4292934656) [],
      decode_inner_B26 ldumaxlb_32_memop),
     (Pattern (Atom 2023776256 4292934656) [],
      decode_inner_B26 ldumaxah_32_memop),
     (Pattern (Atom 2027970560 4292934656) [],
      decode_inner_B26 ldumaxalh_32_memop),
     (Pattern (Atom 2015387648 4292934656) [],
      decode_inner_B26 ldumaxh_32_memop),
     (Pattern (Atom 2019581952 4292934656) [],
      decode_inner_B26 ldumaxlh_32_memop),
     (Pattern (Atom 3089133568 4292934656) [],
      decode_inner_B26 ldumin_32_memop),
     (Pattern (Atom 3097522176 4292934656) [],
      decode_inner_B26 ldumina_32_memop),
     (Pattern (Atom 3101716480 4292934656) [],
      decode_inner_B26 lduminal_32_memop),
     (Pattern (Atom 3093327872 4292934656) [],
      decode_inner_B26 lduminl_32_memop),
     (Pattern (Atom 4162875392 4292934656) [],
      decode_inner_B29 ldumin_64_memop),
     (Pattern (Atom 4171264000 4292934656) [],
      decode_inner_B29 ldumina_64_memop),
     (Pattern (Atom 4175458304 4292934656) [],
      decode_inner_B29 lduminal_64_memop),
     (Pattern (Atom 4167069696 4292934656) [],
      decode_inner_B29 lduminl_64_memop),
     (Pattern (Atom 950038528 4292934656) [],
      decode_inner_B26 lduminab_32_memop),
     (Pattern (Atom 954232832 4292934656) [],
      decode_inner_B26 lduminalb_32_memop),
     (Pattern (Atom 941649920 4292934656) [],
      decode_inner_B26 lduminb_32_memop),
     (Pattern (Atom 945844224 4292934656) [],
      decode_inner_B26 lduminlb_32_memop),
     (Pattern (Atom 2023780352 4292934656) [],
      decode_inner_B26 lduminah_32_memop),
     (Pattern (Atom 2027974656 4292934656) [],
      decode_inner_B26 lduminalh_32_memop),
     (Pattern (Atom 2015391744 4292934656) [],
      decode_inner_B26 lduminh_32_memop),
     (Pattern (Atom 2019586048 4292934656) [],
      decode_inner_B26 lduminlh_32_memop),
     (Pattern (Atom 3091202048 4292873216) [],
      decode_inner_B49 ldur_32_ldst_unscaled),
     (Pattern (Atom 4164943872 4292873216) [],
      decode_inner_B52 ldur_64_ldst_unscaled),
     (Pattern (Atom 943718400 4292873216) [],
      decode_inner_B49 ldurb_32_ldst_unscaled),
     (Pattern (Atom 2017460224 4292873216) [],
      decode_inner_B49 ldurh_32_ldst_unscaled),
     (Pattern (Atom 952107008 4292873216) [],
      decode_inner_B49 ldursb_32_ldst_unscaled),
     (Pattern (Atom 947912704 4292873216) [],
      decode_inner_B52 ldursb_64_ldst_unscaled),
     (Pattern (Atom 2025848832 4292873216) [],
      decode_inner_B49 ldursh_32_ldst_unscaled),
     (Pattern (Atom 2021654528 4292873216) [],
      decode_inner_B52 ldursh_64_ldst_unscaled),
     (Pattern (Atom 3095396352 4292873216) [],
      decode_inner_B52 ldursw_64_ldst_unscaled),
     (Pattern (Atom 2290024448 4294934528) [],
      decode_inner_B58 ldxp_lp32_ldstexcl),
     (Pattern (Atom 3363766272 4294934528) [],
      decode_inner_B61 ldxp_lp64_ldstexcl),
     (Pattern (Atom 2287959040 4294966272) [],
      decode_inner_B24 ldxr_lr32_ldstexcl),
     (Pattern (Atom 3361700864 4294966272) [],
      decode_inner_B25 ldxr_lr64_ldstexcl),
     (Pattern (Atom 140475392 4294966272) [],
      decode_inner_B24 ldxrb_lr32_ldstexcl),
     (Pattern (Atom 1214217216 4294966272) [],
      decode_inner_B24 ldxrh_lr32_ldstexcl),
     (Pattern (Atom 448798720 4292934656) [],
      decode_inner_B17 lslv_32_dp_2src),
     (Pattern (Atom 2596282368 4292934656) [],
      decode_inner_B19 lslv_64_dp_2src),
     (Pattern (Atom 448799744 4292934656) [],
      decode_inner_B17 lsrv_32_dp_2src),
     (Pattern (Atom 2596283392 4292934656) [],
      decode_inner_B19 lsrv_64_dp_2src),
     (Pattern (Atom 452984832 4292902912) [],
      decode_inner_B32 madd_32a_dp_3src),
     (Pattern (Atom 2600468480 4292902912) [],
      decode_inner_B35 madd_64a_dp_3src),
     (Pattern (Atom 1920991232 4286578688) [],
      decode_inner_B56 movk_32_movewide),
     (Pattern (Atom 4068474880 4286578688) [],
      decode_inner_B59 movk_64_movewide),
     (Pattern (Atom 310378496 4286578688) [],
      decode_inner_B56 movn_32_movewide),
     (Pattern (Atom 2457862144 4286578688) [],
      decode_inner_B59 movn_64_movewide),
     (Pattern (Atom 1384120320 4286578688) [],
      decode_inner_B56 movz_32_movewide),
     (Pattern (Atom 3531603968 4286578688) [],
      decode_inner_B59 movz_64_movewide),
     (Pattern (Atom 3576692736 4293918720) [],
      decode_inner_B91 mrs_rs_system),
     (Pattern (Atom 3573563423 4294504479) [],
      decode_inner_B31 msr_si_system),
     (Pattern (Atom 3574595584 4293918720) [],
      decode_inner_B88 msr_sr_system),
     (Pattern (Atom 453017600 4292902912) [],
      decode_inner_B32 msub_32a_dp_3src),
     (Pattern (Atom 2600501248 4292902912) [],
      decode_inner_B35 msub_64a_dp_3src),
     (Pattern (Atom 3573751839 4294967295) [],
      decode_inner_B0 nop_hi_system),
     (Pattern (Atom 706740224 4280287232) [],
      decode_inner_B77 orn_32_log_shift),
     (Pattern (Atom 2854223872 4280287232) [],
      decode_inner_B80 orn_64_log_shift),
     (Pattern (Atom 838860800 4290772992) [],
      decode_inner_B33 orr_32_log_imm),
     (Pattern (Atom 2986344448 4286578688) [],
      decode_inner_B28 orr_64_log_imm),
     (Pattern (Atom 704643072 4280287232) [],
      decode_inner_B77 orr_32_log_shift),
     (Pattern (Atom 2852126720 4280287232) [],
      decode_inner_B80 orr_64_log_shift),
     (Pattern (Atom 3670083584 4294966272) [],
      decode_inner_B11 pacda_64p_dp_1src),
     (Pattern (Atom 3670092768 4294967264) [],
      decode_inner_B1 pacdza_64z_dp_1src),
     (Pattern (Atom 3670084608 4294966272) [],
      decode_inner_B11 pacdb_64p_dp_1src),
     (Pattern (Atom 3670093792 4294967264) [],
      decode_inner_B1 pacdzb_64z_dp_1src),
     (Pattern (Atom 2596286464 4292934656) [],
      decode_inner_B23 pacga_64p_dp_2src),
     (Pattern (Atom 3670081536 4294966272) [],
      decode_inner_B11 pacia_64p_dp_1src),
     (Pattern (Atom 3670090720 4294967264) [],
      decode_inner_B1 paciza_64z_dp_1src),
     (Pattern (Atom 3573752095 4294967295) [],
      decode_inner_B0 pacia1716_hi_system),
     (Pattern (Atom 3573752639 4294967295) [],
      decode_inner_B0 paciasp_hi_system),
     (Pattern (Atom 3573752607 4294967295) [],
      decode_inner_B0 paciaz_hi_system),
     (Pattern (Atom 3670082560 4294966272) [],
      decode_inner_B11 pacib_64p_dp_1src),
     (Pattern (Atom 3670091744 4294967264) [],
      decode_inner_B1 pacizb_64z_dp_1src),
     (Pattern (Atom 3573752159 4294967295) [],
      decode_inner_B0 pacib1716_hi_system),
     (Pattern (Atom 3573752703 4294967295) [],
      decode_inner_B0 pacibsp_hi_system),
     (Pattern (Atom 3573752671 4294967295) [],
      decode_inner_B0 pacibz_hi_system),
     (Pattern (Atom 4185915392 4290772992) [],
      decode_inner_B83 prfm_p_ldst_pos),
     (Pattern (Atom 3623878656 4278190080) [],
      decode_inner_B45 prfm_p_loadlit),
     (Pattern (Atom 4171237376 4292873216) [],
      decode_inner_B96 prfm_p_ldst_regoff),
     (Pattern (Atom 4169138176 4292873216) [],
      decode_inner_B82 prfum_p_ldst_unscaled),
     (Pattern (Atom 3573752383 4294967295) [],
      decode_inner_B3 psb_hc_system),
     (Pattern (Atom 1522532352 4294966272) [],
      decode_inner_B8 rbit_32_dp_1src),
     (Pattern (Atom 3670016000 4294966272) [],
      decode_inner_B9 rbit_64_dp_1src),
     (Pattern (Atom 3596550144 4294966303) [],
      decode_inner_B5 ret_64r_branch_reg),
     (Pattern (Atom 3596553215 4294967295) [],
      decode_inner_B0 retaa_64e_branch_reg),
     (Pattern (Atom 3596554239 4294967295) [],
      decode_inner_B0 retab_64e_branch_reg),
     (Pattern (Atom 1522534400 4294966272) [],
      decode_inner_B8 rev_32_dp_1src),
     (Pattern (Atom 3670019072 4294966272) [],
      decode_inner_B9 rev_64_dp_1src),
     (Pattern (Atom 1522533376 4294966272) [],
      decode_inner_B8 rev16_32_dp_1src),
     (Pattern (Atom 3670017024 4294966272) [],
      decode_inner_B9 rev16_64_dp_1src),
     (Pattern (Atom 3670018048 4294966272) [],
      decode_inner_B9 rev32_64_dp_1src),
     (Pattern (Atom 448801792 4292934656) [],
      decode_inner_B17 rorv_32_dp_2src),
     (Pattern (Atom 2596285440 4292934656) [],
      decode_inner_B19 rorv_64_dp_2src),
     (Pattern (Atom 1509949440 4292934656) [],
      decode_inner_B17 sbc_32_addsub_carry),
     (Pattern (Atom 3657433088 4292934656) [],
      decode_inner_B19 sbc_64_addsub_carry),
     (Pattern (Atom 2046820352 4292934656) [],
      decode_inner_B17 sbcs_32_addsub_carry),
     (Pattern (Atom 4194304000 4292934656) [],
      decode_inner_B19 sbcs_64_addsub_carry),
     (Pattern (Atom 318767104 4290772992) [],
      decode_inner_B57 sbfm_32m_bitfield),
     (Pattern (Atom 2470445056 4290772992) [],
      decode_inner_B60 sbfm_64m_bitfield),
     (Pattern (Atom 448793600 4292934656) [],
      decode_inner_B17 sdiv_32_dp_2src),
     (Pattern (Atom 2596277248 4292934656) [],
      decode_inner_B19 sdiv_64_dp_2src),
     (Pattern (Atom 3573751967 4294967295) [],
      decode_inner_B0 sev_hi_system),
     (Pattern (Atom 3573751999 4294967295) [],
      decode_inner_B0 sevl_hi_system),
     (Pattern (Atom 2602565632 4292902912) [],
      decode_inner_B34 smaddl_64wa_dp_3src),
     (Pattern (Atom 3556769795 4292870175) [],
      decode_inner_B4 smc_ex_exception),
     (Pattern (Atom 2602598400 4292902912) [],
      decode_inner_B34 smsubl_64wa_dp_3src),
     (Pattern (Atom 2604694528 4292934656) [],
      decode_inner_B19 smulh_64_dp_3src),
     (Pattern (Atom 2292153344 4294966272) [],
      decode_inner_B24 stllr_sl32_ldstexcl),
     (Pattern (Atom 3365895168 4294966272) [],
      decode_inner_B25 stllr_sl64_ldstexcl),
     (Pattern (Atom 144669696 4294966272) [],
      decode_inner_B24 stllrb_sl32_ldstexcl),
     (Pattern (Atom 1218411520 4294966272) [],
      decode_inner_B24 stllrh_sl32_ldstexcl),
     (Pattern (Atom 2292186112 4294966272) [],
      decode_inner_B24 stlr_sl32_ldstexcl),
     (Pattern (Atom 3365927936 4294966272) [],
      decode_inner_B25 stlr_sl64_ldstexcl),
     (Pattern (Atom 144702464 4294966272) [],
      decode_inner_B24 stlrb_sl32_ldstexcl),
     (Pattern (Atom 1218444288 4294966272) [],
      decode_inner_B24 stlrh_sl32_ldstexcl),
     (Pattern (Atom 2283831296 4292902912) [],
      decode_inner_B74 stlxp_sp32_ldstexcl),
     (Pattern (Atom 3357573120 4292902912) [],
      decode_inner_B75 stlxp_sp64_ldstexcl),
     (Pattern (Atom 2281765888 4292934656) [],
      decode_inner_B46 stlxr_sr32_ldstexcl),
     (Pattern (Atom 3355507712 4292934656) [],
      decode_inner_B47 stlxr_sr64_ldstexcl),
     (Pattern (Atom 134282240 4292934656) [],
      decode_inner_B46 stlxrb_sr32_ldstexcl),
     (Pattern (Atom 1208024064 4292934656) [],
      decode_inner_B46 stlxrh_sr32_ldstexcl),
     (Pattern (Atom 671088640 4290772992) [],
      decode_inner_B71 stnp_32_ldstnapair_offs),
     (Pattern (Atom 2818572288 4290772992) [],
      decode_inner_B72 stnp_64_ldstnapair_offs),
     (Pattern (Atom 679477248 4290772992) [],
      decode_inner_B64 stp_32_ldstpair_post),
     (Pattern (Atom 2826960896 4290772992) [],
      decode_inner_B65 stp_64_ldstpair_post),
     (Pattern (Atom 696254464 4290772992) [],
      decode_inner_B66 stp_32_ldstpair_pre),
     (Pattern (Atom 2843738112 4290772992) [],
      decode_inner_B68 stp_64_ldstpair_pre),
     (Pattern (Atom 687865856 4290772992) [],
      decode_inner_B71 stp_32_ldstpair_off),
     (Pattern (Atom 2835349504 4290772992) [],
      decode_inner_B72 stp_64_ldstpair_off),
     (Pattern (Atom 3087008768 4292873216) [],
      decode_inner_B39 str_32_ldst_immpost),
     (Pattern (Atom 4160750592 4292873216) [],
      decode_inner_B42 str_64_ldst_immpost),
     (Pattern (Atom 3087010816 4292873216) [],
      decode_inner_B43 str_32_ldst_immpre),
     (Pattern (Atom 4160752640 4292873216) [],
      decode_inner_B44 str_64_ldst_immpre),
     (Pattern (Atom 3103784960 4290772992) [],
      decode_inner_B48 str_32_ldst_pos),
     (Pattern (Atom 4177526784 4290772992) [],
      decode_inner_B51 str_64_ldst_pos),
     (Pattern (Atom 3089106944 4292873216) [],
      decode_inner_B94 str_32_ldst_regoff),
     (Pattern (Atom 4162848768 4292873216) [],
      decode_inner_B95 str_64_ldst_regoff),
     (Pattern (Atom 939525120 4292873216) [],
      decode_inner_B39 strb_32_ldst_immpost),
     (Pattern (Atom 939527168 4292873216) [],
      decode_inner_B43 strb_32_ldst_immpre),
     (Pattern (Atom 956301312 4290772992) [],
      decode_inner_B48 strb_32_ldst_pos),
     (Pattern (Atom 941623296 4292873216) [Atom 24576 57344],
      decode_inner_B92 strb_32b_ldst_regoff),
     (Pattern (Atom 941647872 4292930560) [],
      decode_inner_B79 strb_32bl_ldst_regoff),
     (Pattern (Atom 2013266944 4292873216) [],
      decode_inner_B39 strh_32_ldst_immpost),
     (Pattern (Atom 2013268992 4292873216) [],
      decode_inner_B43 strh_32_ldst_immpre),
     (Pattern (Atom 2030043136 4290772992) [],
      decode_inner_B48 strh_32_ldst_pos),
     (Pattern (Atom 2015365120 4292873216) [],
      decode_inner_B94 strh_32_ldst_regoff),
     (Pattern (Atom 3087009792 4292873216) [],
      decode_inner_B49 sttr_32_ldst_unpriv),
     (Pattern (Atom 4160751616 4292873216) [],
      decode_inner_B52 sttr_64_ldst_unpriv),
     (Pattern (Atom 939526144 4292873216) [],
      decode_inner_B49 sttrb_32_ldst_unpriv),
     (Pattern (Atom 2013267968 4292873216) [],
      decode_inner_B49 sttrh_32_ldst_unpriv),
     (Pattern (Atom 3087007744 4292873216) [],
      decode_inner_B49 stur_32_ldst_unscaled),
     (Pattern (Atom 4160749568 4292873216) [],
      decode_inner_B52 stur_64_ldst_unscaled),
     (Pattern (Atom 939524096 4292873216) [],
      decode_inner_B49 sturb_32_ldst_unscaled),
     (Pattern (Atom 2013265920 4292873216) [],
      decode_inner_B49 sturh_32_ldst_unscaled),
     (Pattern (Atom 2283798528 4292902912) [],
      decode_inner_B74 stxp_sp32_ldstexcl),
     (Pattern (Atom 3357540352 4292902912) [],
      decode_inner_B75 stxp_sp64_ldstexcl),
     (Pattern (Atom 2281733120 4292934656) [],
      decode_inner_B46 stxr_sr32_ldstexcl),
     (Pattern (Atom 3355474944 4292934656) [],
      decode_inner_B47 stxr_sr64_ldstexcl),
     (Pattern (Atom 134249472 4292934656) [],
      decode_inner_B46 stxrb_sr32_ldstexcl),
     (Pattern (Atom 1207991296 4292934656) [],
      decode_inner_B46 stxrh_sr32_ldstexcl),
     (Pattern (Atom 1260388352 4292870144) [],
      decode_inner_B89 sub_32_addsub_ext),
     (Pattern (Atom 3407872000 4292870144) [],
      decode_inner_B90 sub_64_addsub_ext),
     (Pattern (Atom 1358954496 4278190080) [],
      decode_inner_B78 sub_32_addsub_imm),
     (Pattern (Atom 3506438144 4278190080) [],
      decode_inner_B76 sub_64_addsub_imm),
     (Pattern (Atom 1258291200 4280287232) [],
      decode_inner_B77 sub_32_addsub_shift),
     (Pattern (Atom 3405774848 4280287232) [],
      decode_inner_B80 sub_64_addsub_shift),
     (Pattern (Atom 1797259264 4292870144) [],
      decode_inner_B84 subs_32s_addsub_ext),
     (Pattern (Atom 3944742912 4292870144) [],
      decode_inner_B85 subs_64s_addsub_ext),
     (Pattern (Atom 1895825408 4278190080) [],
      decode_inner_B70 subs_32s_addsub_imm),
     (Pattern (Atom 4043309056 4278190080) [],
      decode_inner_B67 subs_64s_addsub_imm),
     (Pattern (Atom 1795162112 4280287232) [],
      decode_inner_B77 subs_32_addsub_shift),
     (Pattern (Atom 3942645760 4280287232) [],
      decode_inner_B80 subs_64_addsub_shift),
     (Pattern (Atom 3556769793 4292870175) [],
      decode_inner_B4 svc_ex_exception),
     (Pattern (Atom 3089137664 4292934656) [],
      decode_inner_B26 swp_32_memop),
     (Pattern (Atom 3097526272 4292934656) [],
      decode_inner_B26 swpa_32_memop),
     (Pattern (Atom 3101720576 4292934656) [],
      decode_inner_B26 swpal_32_memop),
     (Pattern (Atom 3093331968 4292934656) [],
      decode_inner_B26 swpl_32_memop),
     (Pattern (Atom 4162879488 4292934656) [],
      decode_inner_B29 swp_64_memop),
     (Pattern (Atom 4171268096 4292934656) [],
      decode_inner_B29 swpa_64_memop),
     (Pattern (Atom 4175462400 4292934656) [],
      decode_inner_B29 swpal_64_memop),
     (Pattern (Atom 4167073792 4292934656) [],
      decode_inner_B29 swpl_64_memop),
     (Pattern (Atom 950042624 4292934656) [],
      decode_inner_B26 swpab_32_memop),
     (Pattern (Atom 954236928 4292934656) [],
      decode_inner_B26 swpalb_32_memop),
     (Pattern (Atom 941654016 4292934656) [],
      decode_inner_B26 swpb_32_memop),
     (Pattern (Atom 945848320 4292934656) [],
      decode_inner_B26 swplb_32_memop),
     (Pattern (Atom 2023784448 4292934656) [],
      decode_inner_B26 swpah_32_memop),
     (Pattern (Atom 2027978752 4292934656) [],
      decode_inner_B26 swpalh_32_memop),
     (Pattern (Atom 2015395840 4292934656) [],
      decode_inner_B26 swph_32_memop),
     (Pattern (Atom 2019590144 4292934656) [],
      decode_inner_B26 swplh_32_memop),
     (Pattern (Atom 3574071296 4294443008) [],
      decode_inner_B73 sys_cr_system),
     (Pattern (Atom 3576168448 4294443008) [],
      decode_inner_B69 sysl_rc_system),
     (Pattern (Atom 922746880 2130706432) [],
      decode_inner_B36 tbnz_only_testbranch),
     (Pattern (Atom 905969664 2130706432) [],
      decode_inner_B36 tbz_only_testbranch),
     (Pattern (Atom 1392508928 4290772992) [],
      decode_inner_B57 ubfm_32m_bitfield),
     (Pattern (Atom 3544186880 4290772992) [],
      decode_inner_B60 ubfm_64m_bitfield),
     (Pattern (Atom 448792576 4292934656) [],
      decode_inner_B17 udiv_32_dp_2src),
     (Pattern (Atom 2596276224 4292934656) [],
      decode_inner_B19 udiv_64_dp_2src),
     (Pattern (Atom 2610954240 4292902912) [],
      decode_inner_B34 umaddl_64wa_dp_3src),
     (Pattern (Atom 2610987008 4292902912) [],
      decode_inner_B34 umsubl_64wa_dp_3src),
     (Pattern (Atom 2613083136 4292934656) [],
      decode_inner_B19 umulh_64_dp_3src),
     (Pattern (Atom 3573751903 4294967295) [],
      decode_inner_B0 wfe_hi_system),
     (Pattern (Atom 3573751935 4294967295) [],
      decode_inner_B0 wfi_hi_system),
     (Pattern (Atom 3670099936 4294967264) [],
      decode_inner_B1 xpacd_64z_dp_1src),
     (Pattern (Atom 3670098912 4294967264) [],
      decode_inner_B1 xpaci_64z_dp_1src),
     (Pattern (Atom 3573752063 4294967295) [],
      decode_inner_B0 xpaclri_hi_system),
     (Pattern (Atom 3573751871 4294967295) [],
      decode_inner_B0 yield_hi_system),
     (Pattern (Atom 1579202560 4282383360) [],
      decode_inner_F33 abs_asisdmisc_r),
     (Pattern (Atom 237025280 3208641536) [],
      decode_inner_F49 abs_asimdmisc_r),
     (Pattern (Atom 1579189248 4280351744) [],
      decode_inner_F70 add_asisdsame_only),
     (Pattern (Atom 237011968 3206609920) [],
      decode_inner_F116 add_asimdsame_only),
     (Pattern (Atom 236994560 3206609920) [],
      decode_inner_F151 addhn_asimddiff_n),
     (Pattern (Atom 1580316672 4282383360) [],
      decode_inner_F41 addp_asisdpair_only),
     (Pattern (Atom 237026304 3206609920) [],
      decode_inner_F116 addp_asimdsame_only),
     (Pattern (Atom 238139392 3208641536) [],
      decode_inner_F41 addv_asimdall_only),
     (Pattern (Atom 1311266816 4294966272) [],
      decode_inner_F48 aesd_b_cryptoaes),
     (Pattern (Atom 1311262720 4294966272) [],
      decode_inner_F48 aese_b_cryptoaes),
     (Pattern (Atom 1311275008 4294966272) [],
      decode_inner_F48 aesimc_b_cryptoaes),
     (Pattern (Atom 1311270912 4294966272) [],
      decode_inner_F48 aesmc_b_cryptoaes),
     (Pattern (Atom 236985344 3219192832) [],
      decode_inner_F116 and_asimdsame_only),
     (Pattern (Atom 3458203648 4292902912) [],
      decode_inner_F159 bcax_vvv16_crypto4),
     (Pattern (Atom 788567040 3220757504) [],
      decode_inner_F142 bic_asimdimm_l_hl),
     (Pattern (Atom 788534272 3220741120) [],
      decode_inner_F142 bic_asimdimm_l_sl),
     (Pattern (Atom 241179648 3219192832) [],
      decode_inner_F116 bic_asimdsame_only),
     (Pattern (Atom 786439168 3219192832) [],
      decode_inner_F116 bif_asimdsame_only),
     (Pattern (Atom 782244864 3219192832) [],
      decode_inner_F116 bit_asimdsame_only),
     (Pattern (Atom 778050560 3219192832) [],
      decode_inner_F116 bsl_asimdsame_only),
     (Pattern (Atom 236996608 3208641536) [],
      decode_inner_F49 cls_asimdmisc_r),
     (Pattern (Atom 773867520 3208641536) [],
      decode_inner_F49 clz_asimdmisc_r),
     (Pattern (Atom 2116062208 4280351744) [],
      decode_inner_F70 cmeq_asisdsame_only),
     (Pattern (Atom 773884928 3206609920) [],
      decode_inner_F116 cmeq_asimdsame_only),
     (Pattern (Atom 1579194368 4282383360) [],
      decode_inner_F47 cmeq_asisdmisc_z),
     (Pattern (Atom 237017088 3208641536) [],
      decode_inner_F71 cmeq_asimdmisc_z),
     (Pattern (Atom 1579170816 4280351744) [],
      decode_inner_F70 cmge_asisdsame_only),
     (Pattern (Atom 236993536 3206609920) [],
      decode_inner_F116 cmge_asimdsame_only),
     (Pattern (Atom 2116061184 4282383360) [],
      decode_inner_F47 cmge_asisdmisc_z),
     (Pattern (Atom 773883904 3208641536) [],
      decode_inner_F71 cmge_asimdmisc_z),
     (Pattern (Atom 1579168768 4280351744) [],
      decode_inner_F70 cmgt_asisdsame_only),
     (Pattern (Atom 236991488 3206609920) [],
      decode_inner_F116 cmgt_asimdsame_only),
     (Pattern (Atom 1579190272 4282383360) [],
      decode_inner_F47 cmgt_asisdmisc_z),
     (Pattern (Atom 237012992 3208641536) [],
      decode_inner_F71 cmgt_asimdmisc_z),
     (Pattern (Atom 2116039680 4280351744) [],
      decode_inner_F70 cmhi_asisdsame_only),
     (Pattern (Atom 773862400 3206609920) [],
      decode_inner_F116 cmhi_asimdsame_only),
     (Pattern (Atom 2116041728 4280351744) [],
      decode_inner_F70 cmhs_asisdsame_only),
     (Pattern (Atom 773864448 3206609920) [],
      decode_inner_F116 cmhs_asimdsame_only),
     (Pattern (Atom 2116065280 4282383360) [],
      decode_inner_F47 cmle_asisdmisc_z),
     (Pattern (Atom 773888000 3208641536) [],
      decode_inner_F71 cmle_asimdmisc_z),
     (Pattern (Atom 1579198464 4282383360) [],
      decode_inner_F47 cmlt_asisdmisc_z),
     (Pattern (Atom 237021184 3208641536) [],
      decode_inner_F71 cmlt_asimdmisc_z),
     (Pattern (Atom 1579191296 4280351744) [],
      decode_inner_F70 cmtst_asisdsame_only),
     (Pattern (Atom 237014016 3206609920) [],
      decode_inner_F116 cmtst_asimdsame_only),
     (Pattern (Atom 237000704 3208641536) [],
      decode_inner_F49 cnt_asimdmisc_r),
     (Pattern (Atom 1577059328 4292934656) [],
      decode_inner_F93 dup_asisdone_only),
     (Pattern (Atom 234882048 3219192832) [],
      decode_inner_F117 dup_asimdins_dv_v),
     (Pattern (Atom 234884096 3219192832) [],
      decode_inner_F46 dup_asimdins_dr_r),
     (Pattern (Atom 773856256 3219192832) [],
      decode_inner_F116 eor_asimdsame_only),
     (Pattern (Atom 3456106496 4292902912) [],
      decode_inner_F159 eor3_vvv16_crypto4),
     (Pattern (Atom 771751936 3219162112) [],
      decode_inner_F160 ext_asimdext_only),
     (Pattern (Atom 2126517248 4292934656) [],
      decode_inner_F39 fabd_asisdsamefp16_only),
     (Pattern (Atom 2124469248 4288740352) [],
      decode_inner_F70 fabd_asisdsame_only),
     (Pattern (Atom 784339968 3219192832) [],
      decode_inner_F116 fabd_asimdsamefp16_only),
     (Pattern (Atom 782291968 3214998528) [],
      decode_inner_F116 fabd_asimdsame_only),
     (Pattern (Atom 518045696 4294966272) [],
      decode_inner_F8 fabs_h_floatdp1),
     (Pattern (Atom 505462784 4294966272) [],
      decode_inner_F16 fabs_s_floatdp1),
     (Pattern (Atom 509657088 4294966272) [],
      decode_inner_F0 fabs_d_floatdp1),
     (Pattern (Atom 251197440 3221224448) [],
      decode_inner_F49 fabs_asimdmiscfp16_r),
     (Pattern (Atom 245430272 3217030144) [],
      decode_inner_F49 fabs_asimdmisc_r),
     (Pattern (Atom 2118134784 4292934656) [],
      decode_inner_F39 facge_asisdsamefp16_only),
     (Pattern (Atom 2116086784 4288740352) [],
      decode_inner_F70 facge_asisdsame_only),
     (Pattern (Atom 775957504 3219192832) [],
      decode_inner_F116 facge_asimdsamefp16_only),
     (Pattern (Atom 773909504 3214998528) [],
      decode_inner_F116 facge_asimdsame_only),
     (Pattern (Atom 2126523392 4292934656) [],
      decode_inner_F39 facgt_asisdsamefp16_only),
     (Pattern (Atom 2124475392 4288740352) [],
      decode_inner_F70 facgt_asisdsame_only),
     (Pattern (Atom 784346112 3219192832) [],
      decode_inner_F116 facgt_asimdsamefp16_only),
     (Pattern (Atom 782298112 3214998528) [],
      decode_inner_F116 facgt_asimdsame_only),
     (Pattern (Atom 518006784 4292934656) [],
      decode_inner_F39 fadd_h_floatdp2),
     (Pattern (Atom 505423872 4292934656) [],
      decode_inner_F40 fadd_s_floatdp2),
     (Pattern (Atom 509618176 4292934656) [],
      decode_inner_F37 fadd_d_floatdp2),
     (Pattern (Atom 239080448 3219192832) [],
      decode_inner_F116 fadd_asimdsamefp16_only),
     (Pattern (Atom 237032448 3214998528) [],
      decode_inner_F116 fadd_asimdsame_only),
     (Pattern (Atom 1580259328 4294966272) [],
      decode_inner_F41 faddp_asisdpair_only_h),
     (Pattern (Atom 2117130240 4290771968) [],
      decode_inner_F41 faddp_asisdpair_only_sd),
     (Pattern (Atom 775951360 3219192832) [],
      decode_inner_F116 faddp_asimdsamefp16_only),
     (Pattern (Atom 773903360 3214998528) [],
      decode_inner_F116 faddp_asimdsame_only),
     (Pattern (Atom 771810304 3206605824) [],
      decode_inner_F163 fcadd_asimdsame2_c),
     (Pattern (Atom 517997568 4292873232) [],
      decode_inner_F111 fccmp_h_floatccmp),
     (Pattern (Atom 505414656 4292873232) [],
      decode_inner_F112 fccmp_s_floatccmp),
     (Pattern (Atom 509608960 4292873232) [],
      decode_inner_F109 fccmp_d_floatccmp),
     (Pattern (Atom 517997584 4292873232) [],
      decode_inner_F111 fccmpe_h_floatccmp),
     (Pattern (Atom 505414672 4292873232) [],
      decode_inner_F112 fccmpe_s_floatccmp),
     (Pattern (Atom 509608976 4292873232) [],
      decode_inner_F109 fccmpe_d_floatccmp),
     (Pattern (Atom 1581261824 4292934656) [],
      decode_inner_F39 fcmeq_asisdsamefp16_only),
     (Pattern (Atom 1579213824 4288740352) [],
      decode_inner_F70 fcmeq_asisdsame_only),
     (Pattern (Atom 239084544 3219192832) [],
      decode_inner_F116 fcmeq_asimdsamefp16_only),
     (Pattern (Atom 237036544 3214998528) [],
      decode_inner_F116 fcmeq_asimdsame_only),
     (Pattern (Atom 1593366528 4294966272) [],
      decode_inner_F38 fcmeq_asisdmiscfp16_fz),
     (Pattern (Atom 1587599360 4290771968) [],
      decode_inner_F59 fcmeq_asisdmisc_fz),
     (Pattern (Atom 251189248 3221224448) [],
      decode_inner_F85 fcmeq_asimdmiscfp16_fz),
     (Pattern (Atom 245422080 3217030144) [],
      decode_inner_F85 fcmeq_asimdmisc_fz),
     (Pattern (Atom 2118132736 4292934656) [],
      decode_inner_F39 fcmge_asisdsamefp16_only),
     (Pattern (Atom 2116084736 4288740352) [],
      decode_inner_F70 fcmge_asisdsame_only),
     (Pattern (Atom 775955456 3219192832) [],
      decode_inner_F116 fcmge_asimdsamefp16_only),
     (Pattern (Atom 773907456 3214998528) [],
      decode_inner_F116 fcmge_asimdsame_only),
     (Pattern (Atom 2130233344 4294966272) [],
      decode_inner_F38 fcmge_asisdmiscfp16_fz),
     (Pattern (Atom 2124466176 4290771968) [],
      decode_inner_F59 fcmge_asisdmisc_fz),
     (Pattern (Atom 788056064 3221224448) [],
      decode_inner_F85 fcmge_asimdmiscfp16_fz),
     (Pattern (Atom 782288896 3217030144) [],
      decode_inner_F85 fcmge_asimdmisc_fz),
     (Pattern (Atom 2126521344 4292934656) [],
      decode_inner_F39 fcmgt_asisdsamefp16_only),
     (Pattern (Atom 2124473344 4288740352) [],
      decode_inner_F70 fcmgt_asisdsame_only),
     (Pattern (Atom 784344064 3219192832) [],
      decode_inner_F116 fcmgt_asimdsamefp16_only),
     (Pattern (Atom 782296064 3214998528) [],
      decode_inner_F116 fcmgt_asimdsame_only),
     (Pattern (Atom 1593362432 4294966272) [],
      decode_inner_F38 fcmgt_asisdmiscfp16_fz),
     (Pattern (Atom 1587595264 4290771968) [],
      decode_inner_F59 fcmgt_asisdmisc_fz),
     (Pattern (Atom 251185152 3221224448) [],
      decode_inner_F85 fcmgt_asimdmiscfp16_fz),
     (Pattern (Atom 245417984 3217030144) [],
      decode_inner_F85 fcmgt_asimdmisc_fz),
     (Pattern (Atom 771802112 3206603776) [],
      decode_inner_F163 fcmla_asimdsame2_c),
     (Pattern (Atom 792727552 3217069056) [],
      decode_inner_F187 fcmla_asimdelem_c_h),
     (Pattern (Atom 796921856 3217069056) [],
      decode_inner_F187 fcmla_asimdelem_c_s),
     (Pattern (Atom 2130237440 4294966272) [],
      decode_inner_F38 fcmle_asisdmiscfp16_fz),
     (Pattern (Atom 2124470272 4290771968) [],
      decode_inner_F59 fcmle_asisdmisc_fz),
     (Pattern (Atom 788060160 3221224448) [],
      decode_inner_F85 fcmle_asimdmiscfp16_fz),
     (Pattern (Atom 782292992 3217030144) [],
      decode_inner_F85 fcmle_asimdmisc_fz),
     (Pattern (Atom 1593370624 4294966272) [],
      decode_inner_F38 fcmlt_asisdmiscfp16_fz),
     (Pattern (Atom 1587603456 4290771968) [],
      decode_inner_F59 fcmlt_asisdmisc_fz),
     (Pattern (Atom 251193344 3221224448) [],
      decode_inner_F85 fcmlt_asimdmiscfp16_fz),
     (Pattern (Atom 245426176 3217030144) [],
      decode_inner_F85 fcmlt_asimdmisc_fz),
     (Pattern (Atom 518004736 4292934687) [],
      decode_inner_F13 fcmp_h_floatcmp),
     (Pattern (Atom 518004744 4292934687) [Atom 0 2031616],
      decode_inner_F12 fcmp_hz_floatcmp),
     (Pattern (Atom 505421824 4292934687) [],
      decode_inner_F20 fcmp_s_floatcmp),
     (Pattern (Atom 505421832 4292934687) [Atom 0 2031616],
      decode_inner_F19 fcmp_sz_floatcmp),
     (Pattern (Atom 509616128 4292934687) [],
      decode_inner_F6 fcmp_d_floatcmp),
     (Pattern (Atom 509616136 4292934687) [Atom 0 2031616],
      decode_inner_F5 fcmp_dz_floatcmp),
     (Pattern (Atom 518004752 4292934687) [],
      decode_inner_F13 fcmpe_h_floatcmp),
     (Pattern (Atom 518004760 4292934687) [Atom 0 2031616],
      decode_inner_F12 fcmpe_hz_floatcmp),
     (Pattern (Atom 505421840 4292934687) [],
      decode_inner_F20 fcmpe_s_floatcmp),
     (Pattern (Atom 505421848 4292934687) [Atom 0 2031616],
      decode_inner_F19 fcmpe_sz_floatcmp),
     (Pattern (Atom 509616144 4292934687) [],
      decode_inner_F6 fcmpe_d_floatcmp),
     (Pattern (Atom 509616152 4292934687) [Atom 0 2031616],
      decode_inner_F5 fcmpe_dz_floatcmp),
     (Pattern (Atom 517999616 4292873216) [],
      decode_inner_F78 fcsel_h_floatsel),
     (Pattern (Atom 505416704 4292873216) [],
      decode_inner_F81 fcsel_s_floatsel),
     (Pattern (Atom 509611008 4292873216) [],
      decode_inner_F76 fcsel_d_floatsel),
     (Pattern (Atom 518144000 4294966272) [],
      decode_inner_F15 fcvt_sh_floatdp1),
     (Pattern (Atom 518176768 4294966272) [],
      decode_inner_F1 fcvt_dh_floatdp1),
     (Pattern (Atom 505659392 4294966272) [],
      decode_inner_F9 fcvt_hs_floatdp1),
     (Pattern (Atom 505593856 4294966272) [],
      decode_inner_F2 fcvt_ds_floatdp1),
     (Pattern (Atom 509853696 4294966272) [],
      decode_inner_F7 fcvt_hd_floatdp1),
     (Pattern (Atom 509755392 4294966272) [],
      decode_inner_F14 fcvt_sd_floatdp1),
     (Pattern (Atom 518258688 4294966272) [],
      decode_inner_F22 fcvtas_32h_float2int),
     (Pattern (Atom 2665742336 4294966272) [],
      decode_inner_F25 fcvtas_64h_float2int),
     (Pattern (Atom 505675776 4294966272) [],
      decode_inner_F23 fcvtas_32s_float2int),
     (Pattern (Atom 2653159424 4294966272) [],
      decode_inner_F26 fcvtas_64s_float2int),
     (Pattern (Atom 509870080 4294966272) [],
      decode_inner_F21 fcvtas_32d_float2int),
     (Pattern (Atom 2657353728 4294966272) [],
      decode_inner_F24 fcvtas_64d_float2int),
     (Pattern (Atom 1585039360 4294966272) [],
      decode_inner_F8 fcvtas_asisdmiscfp16_r),
     (Pattern (Atom 1579272192 4290771968) [],
      decode_inner_F33 fcvtas_asisdmisc_r),
     (Pattern (Atom 242862080 3221224448) [],
      decode_inner_F49 fcvtas_asimdmiscfp16_r),
     (Pattern (Atom 237094912 3217030144) [],
      decode_inner_F49 fcvtas_asimdmisc_r),
     (Pattern (Atom 518324224 4294966272) [],
      decode_inner_F22 fcvtau_32h_float2int),
     (Pattern (Atom 2665807872 4294966272) [],
      decode_inner_F25 fcvtau_64h_float2int),
     (Pattern (Atom 505741312 4294966272) [],
      decode_inner_F23 fcvtau_32s_float2int),
     (Pattern (Atom 2653224960 4294966272) [],
      decode_inner_F26 fcvtau_64s_float2int),
     (Pattern (Atom 509935616 4294966272) [],
      decode_inner_F21 fcvtau_32d_float2int),
     (Pattern (Atom 2657419264 4294966272) [],
      decode_inner_F24 fcvtau_64d_float2int),
     (Pattern (Atom 2121910272 4294966272) [],
      decode_inner_F8 fcvtau_asisdmiscfp16_r),
     (Pattern (Atom 2116143104 4290771968) [],
      decode_inner_F33 fcvtau_asisdmisc_r),
     (Pattern (Atom 779732992 3221224448) [],
      decode_inner_F49 fcvtau_asimdmiscfp16_r),
     (Pattern (Atom 773965824 3217030144) [],
      decode_inner_F49 fcvtau_asimdmisc_r),
     (Pattern (Atom 237074432 3217030144) [],
      decode_inner_F73 fcvtl_asimdmisc_l),
     (Pattern (Atom 519045120 4294966272) [],
      decode_inner_F22 fcvtms_32h_float2int),
     (Pattern (Atom 2666528768 4294966272) [],
      decode_inner_F25 fcvtms_64h_float2int),
     (Pattern (Atom 506462208 4294966272) [],
      decode_inner_F23 fcvtms_32s_float2int),
     (Pattern (Atom 2653945856 4294966272) [],
      decode_inner_F26 fcvtms_64s_float2int),
     (Pattern (Atom 510656512 4294966272) [],
      decode_inner_F21 fcvtms_32d_float2int),
     (Pattern (Atom 2658140160 4294966272) [],
      decode_inner_F24 fcvtms_64d_float2int),
     (Pattern (Atom 1585035264 4294966272) [],
      decode_inner_F8 fcvtms_asisdmiscfp16_r),
     (Pattern (Atom 1579268096 4290771968) [],
      decode_inner_F33 fcvtms_asisdmisc_r),
     (Pattern (Atom 242857984 3221224448) [],
      decode_inner_F49 fcvtms_asimdmiscfp16_r),
     (Pattern (Atom 237090816 3217030144) [],
      decode_inner_F49 fcvtms_asimdmisc_r),
     (Pattern (Atom 519110656 4294966272) [],
      decode_inner_F22 fcvtmu_32h_float2int),
     (Pattern (Atom 2666594304 4294966272) [],
      decode_inner_F25 fcvtmu_64h_float2int),
     (Pattern (Atom 506527744 4294966272) [],
      decode_inner_F23 fcvtmu_32s_float2int),
     (Pattern (Atom 2654011392 4294966272) [],
      decode_inner_F26 fcvtmu_64s_float2int),
     (Pattern (Atom 510722048 4294966272) [],
      decode_inner_F21 fcvtmu_32d_float2int),
     (Pattern (Atom 2658205696 4294966272) [],
      decode_inner_F24 fcvtmu_64d_float2int),
     (Pattern (Atom 2121906176 4294966272) [],
      decode_inner_F8 fcvtmu_asisdmiscfp16_r),
     (Pattern (Atom 2116139008 4290771968) [],
      decode_inner_F33 fcvtmu_asisdmisc_r),
     (Pattern (Atom 779728896 3221224448) [],
      decode_inner_F49 fcvtmu_asimdmiscfp16_r),
     (Pattern (Atom 773961728 3217030144) [],
      decode_inner_F49 fcvtmu_asimdmisc_r),
     (Pattern (Atom 237070336 3217030144) [],
      decode_inner_F74 fcvtn_asimdmisc_n),
     (Pattern (Atom 517996544 4294966272) [],
      decode_inner_F22 fcvtns_32h_float2int),
     (Pattern (Atom 2665480192 4294966272) [],
      decode_inner_F25 fcvtns_64h_float2int),
     (Pattern (Atom 505413632 4294966272) [],
      decode_inner_F23 fcvtns_32s_float2int),
     (Pattern (Atom 2652897280 4294966272) [],
      decode_inner_F26 fcvtns_64s_float2int),
     (Pattern (Atom 509607936 4294966272) [],
      decode_inner_F21 fcvtns_32d_float2int),
     (Pattern (Atom 2657091584 4294966272) [],
      decode_inner_F24 fcvtns_64d_float2int),
     (Pattern (Atom 1585031168 4294966272) [],
      decode_inner_F8 fcvtns_asisdmiscfp16_r),
     (Pattern (Atom 1579264000 4290771968) [],
      decode_inner_F33 fcvtns_asisdmisc_r),
     (Pattern (Atom 242853888 3221224448) [],
      decode_inner_F49 fcvtns_asimdmiscfp16_r),
     (Pattern (Atom 237086720 3217030144) [],
      decode_inner_F49 fcvtns_asimdmisc_r),
     (Pattern (Atom 518062080 4294966272) [],
      decode_inner_F22 fcvtnu_32h_float2int),
     (Pattern (Atom 2665545728 4294966272) [],
      decode_inner_F25 fcvtnu_64h_float2int),
     (Pattern (Atom 505479168 4294966272) [],
      decode_inner_F23 fcvtnu_32s_float2int),
     (Pattern (Atom 2652962816 4294966272) [],
      decode_inner_F26 fcvtnu_64s_float2int),
     (Pattern (Atom 509673472 4294966272) [],
      decode_inner_F21 fcvtnu_32d_float2int),
     (Pattern (Atom 2657157120 4294966272) [],
      decode_inner_F24 fcvtnu_64d_float2int),
     (Pattern (Atom 2121902080 4294966272) [],
      decode_inner_F8 fcvtnu_asisdmiscfp16_r),
     (Pattern (Atom 2116134912 4290771968) [],
      decode_inner_F33 fcvtnu_asisdmisc_r),
     (Pattern (Atom 779724800 3221224448) [],
      decode_inner_F49 fcvtnu_asimdmiscfp16_r),
     (Pattern (Atom 773957632 3217030144) [],
      decode_inner_F49 fcvtnu_asimdmisc_r),
     (Pattern (Atom 518520832 4294966272) [],
      decode_inner_F22 fcvtps_32h_float2int),
     (Pattern (Atom 2666004480 4294966272) [],
      decode_inner_F25 fcvtps_64h_float2int),
     (Pattern (Atom 505937920 4294966272) [],
      decode_inner_F23 fcvtps_32s_float2int),
     (Pattern (Atom 2653421568 4294966272) [],
      decode_inner_F26 fcvtps_64s_float2int),
     (Pattern (Atom 510132224 4294966272) [],
      decode_inner_F21 fcvtps_32d_float2int),
     (Pattern (Atom 2657615872 4294966272) [],
      decode_inner_F24 fcvtps_64d_float2int),
     (Pattern (Atom 1593419776 4294966272) [],
      decode_inner_F8 fcvtps_asisdmiscfp16_r),
     (Pattern (Atom 1587652608 4290771968) [],
      decode_inner_F33 fcvtps_asisdmisc_r),
     (Pattern (Atom 251242496 3221224448) [],
      decode_inner_F49 fcvtps_asimdmiscfp16_r),
     (Pattern (Atom 245475328 3217030144) [],
      decode_inner_F49 fcvtps_asimdmisc_r),
     (Pattern (Atom 518586368 4294966272) [],
      decode_inner_F22 fcvtpu_32h_float2int),
     (Pattern (Atom 2666070016 4294966272) [],
      decode_inner_F25 fcvtpu_64h_float2int),
     (Pattern (Atom 506003456 4294966272) [],
      decode_inner_F23 fcvtpu_32s_float2int),
     (Pattern (Atom 2653487104 4294966272) [],
      decode_inner_F26 fcvtpu_64s_float2int),
     (Pattern (Atom 510197760 4294966272) [],
      decode_inner_F21 fcvtpu_32d_float2int),
     (Pattern (Atom 2657681408 4294966272) [],
      decode_inner_F24 fcvtpu_64d_float2int),
     (Pattern (Atom 2130290688 4294966272) [],
      decode_inner_F8 fcvtpu_asisdmiscfp16_r),
     (Pattern (Atom 2124523520 4290771968) [],
      decode_inner_F33 fcvtpu_asisdmisc_r),
     (Pattern (Atom 788113408 3221224448) [],
      decode_inner_F49 fcvtpu_asimdmiscfp16_r),
     (Pattern (Atom 782346240 3217030144) [],
      decode_inner_F49 fcvtpu_asimdmisc_r),
     (Pattern (Atom 2116118528 4290771968) [],
      decode_inner_F42 fcvtxn_asisdmisc_n),
     (Pattern (Atom 773941248 3217030144) [],
      decode_inner_F74 fcvtxn_asimdmisc_n),
     (Pattern (Atom 517472256 4294901760) [],
      decode_inner_F62 fcvtzs_32h_float2fix),
     (Pattern (Atom 2664955904 4294901760) [],
      decode_inner_F65 fcvtzs_64h_float2fix),
     (Pattern (Atom 504889344 4294901760) [],
      decode_inner_F63 fcvtzs_32s_float2fix),
     (Pattern (Atom 2652372992 4294901760) [],
      decode_inner_F66 fcvtzs_64s_float2fix),
     (Pattern (Atom 509083648 4294901760) [],
      decode_inner_F61 fcvtzs_32d_float2fix),
     (Pattern (Atom 2656567296 4294901760) [],
      decode_inner_F64 fcvtzs_64d_float2fix),
     (Pattern (Atom 519569408 4294966272) [],
      decode_inner_F22 fcvtzs_32h_float2int),
     (Pattern (Atom 2667053056 4294966272) [],
      decode_inner_F25 fcvtzs_64h_float2int),
     (Pattern (Atom 506986496 4294966272) [],
      decode_inner_F23 fcvtzs_32s_float2int),
     (Pattern (Atom 2654470144 4294966272) [],
      decode_inner_F26 fcvtzs_64s_float2int),
     (Pattern (Atom 511180800 4294966272) [],
      decode_inner_F21 fcvtzs_32d_float2int),
     (Pattern (Atom 2658664448 4294966272) [],
      decode_inner_F24 fcvtzs_64d_float2int),
     (Pattern (Atom 1593900032 4286643200) [Atom 0 7864320],
      decode_inner_F83 fcvtzs_asisdshf_c),
     (Pattern (Atom 251722752 3212901376) [Atom 0 7864320],
      decode_inner_F114 fcvtzs_asimdshf_c),
     (Pattern (Atom 1593423872 4294966272) [],
      decode_inner_F8 fcvtzs_asisdmiscfp16_r),
     (Pattern (Atom 1587656704 4290771968) [],
      decode_inner_F33 fcvtzs_asisdmisc_r),
     (Pattern (Atom 251246592 3221224448) [],
      decode_inner_F49 fcvtzs_asimdmiscfp16_r),
     (Pattern (Atom 245479424 3217030144) [],
      decode_inner_F49 fcvtzs_asimdmisc_r),
     (Pattern (Atom 517537792 4294901760) [],
      decode_inner_F62 fcvtzu_32h_float2fix),
     (Pattern (Atom 2665021440 4294901760) [],
      decode_inner_F65 fcvtzu_64h_float2fix),
     (Pattern (Atom 504954880 4294901760) [],
      decode_inner_F63 fcvtzu_32s_float2fix),
     (Pattern (Atom 2652438528 4294901760) [],
      decode_inner_F66 fcvtzu_64s_float2fix),
     (Pattern (Atom 509149184 4294901760) [],
      decode_inner_F61 fcvtzu_32d_float2fix),
     (Pattern (Atom 2656632832 4294901760) [],
      decode_inner_F64 fcvtzu_64d_float2fix),
     (Pattern (Atom 519634944 4294966272) [],
      decode_inner_F22 fcvtzu_32h_float2int),
     (Pattern (Atom 2667118592 4294966272) [],
      decode_inner_F25 fcvtzu_64h_float2int),
     (Pattern (Atom 507052032 4294966272) [],
      decode_inner_F23 fcvtzu_32s_float2int),
     (Pattern (Atom 2654535680 4294966272) [],
      decode_inner_F26 fcvtzu_64s_float2int),
     (Pattern (Atom 511246336 4294966272) [],
      decode_inner_F21 fcvtzu_32d_float2int),
     (Pattern (Atom 2658729984 4294966272) [],
      decode_inner_F24 fcvtzu_64d_float2int),
     (Pattern (Atom 2130770944 4286643200) [Atom 0 7864320],
      decode_inner_F83 fcvtzu_asisdshf_c),
     (Pattern (Atom 788593664 3212901376) [Atom 0 7864320],
      decode_inner_F114 fcvtzu_asimdshf_c),
     (Pattern (Atom 2130294784 4294966272) [],
      decode_inner_F8 fcvtzu_asisdmiscfp16_r),
     (Pattern (Atom 2124527616 4290771968) [],
      decode_inner_F33 fcvtzu_asisdmisc_r),
     (Pattern (Atom 788117504 3221224448) [],
      decode_inner_F49 fcvtzu_asimdmiscfp16_r),
     (Pattern (Atom 782350336 3217030144) [],
      decode_inner_F49 fcvtzu_asimdmisc_r),
     (Pattern (Atom 518002688 4292934656) [],
      decode_inner_F39 fdiv_h_floatdp2),
     (Pattern (Atom 505419776 4292934656) [],
      decode_inner_F40 fdiv_s_floatdp2),
     (Pattern (Atom 509614080 4292934656) [],
      decode_inner_F37 fdiv_d_floatdp2),
     (Pattern (Atom 775961600 3219192832) [],
      decode_inner_F116 fdiv_asimdsamefp16_only),
     (Pattern (Atom 773913600 3214998528) [],
      decode_inner_F116 fdiv_asimdsame_only),
     (Pattern (Atom 511574016 4294966272) [],
      decode_inner_F21 fjcvtzs_32d_float2int),
     (Pattern (Atom 532676608 4292902912) [],
      decode_inner_F68 fmadd_h_floatdp3),
     (Pattern (Atom 520093696 4292902912) [],
      decode_inner_F69 fmadd_s_floatdp3),
     (Pattern (Atom 524288000 4292902912) [],
      decode_inner_F67 fmadd_d_floatdp3),
     (Pattern (Atom 518014976 4292934656) [],
      decode_inner_F39 fmax_h_floatdp2),
     (Pattern (Atom 505432064 4292934656) [],
      decode_inner_F40 fmax_s_floatdp2),
     (Pattern (Atom 509626368 4292934656) [],
      decode_inner_F37 fmax_d_floatdp2),
     (Pattern (Atom 239088640 3219192832) [],
      decode_inner_F116 fmax_asimdsamefp16_only),
     (Pattern (Atom 237040640 3214998528) [],
      decode_inner_F116 fmax_asimdsame_only),
     (Pattern (Atom 518023168 4292934656) [],
      decode_inner_F39 fmaxnm_h_floatdp2),
     (Pattern (Atom 505440256 4292934656) [],
      decode_inner_F40 fmaxnm_s_floatdp2),
     (Pattern (Atom 509634560 4292934656) [],
      decode_inner_F37 fmaxnm_d_floatdp2),
     (Pattern (Atom 239076352 3219192832) [],
      decode_inner_F116 fmaxnm_asimdsamefp16_only),
     (Pattern (Atom 237028352 3214998528) [],
      decode_inner_F116 fmaxnm_asimdsame_only),
     (Pattern (Atom 1580255232 4294966272) [],
      decode_inner_F41 fmaxnmp_asisdpair_only_h),
     (Pattern (Atom 2117126144 4290771968) [],
      decode_inner_F41 fmaxnmp_asisdpair_only_sd),
     (Pattern (Atom 775947264 3219192832) [],
      decode_inner_F116 fmaxnmp_asimdsamefp16_only),
     (Pattern (Atom 773899264 3214998528) [],
      decode_inner_F116 fmaxnmp_asimdsame_only),
     (Pattern (Atom 238077952 3221224448) [],
      decode_inner_F41 fmaxnmv_asimdall_only_h),
     (Pattern (Atom 774948864 3217030144) [],
      decode_inner_F41 fmaxnmv_asimdall_only_sd),
     (Pattern (Atom 1580267520 4294966272) [],
      decode_inner_F41 fmaxp_asisdpair_only_h),
     (Pattern (Atom 2117138432 4290771968) [],
      decode_inner_F41 fmaxp_asisdpair_only_sd),
     (Pattern (Atom 775959552 3219192832) [],
      decode_inner_F116 fmaxp_asimdsamefp16_only),
     (Pattern (Atom 773911552 3214998528) [],
      decode_inner_F116 fmaxp_asimdsame_only),
     (Pattern (Atom 238090240 3221224448) [],
      decode_inner_F41 fmaxv_asimdall_only_h),
     (Pattern (Atom 774961152 3217030144) [],
      decode_inner_F41 fmaxv_asimdall_only_sd),
     (Pattern (Atom 518019072 4292934656) [],
      decode_inner_F39 fmin_h_floatdp2),
     (Pattern (Atom 505436160 4292934656) [],
      decode_inner_F40 fmin_s_floatdp2),
     (Pattern (Atom 509630464 4292934656) [],
      decode_inner_F37 fmin_d_floatdp2),
     (Pattern (Atom 247477248 3219192832) [],
      decode_inner_F116 fmin_asimdsamefp16_only),
     (Pattern (Atom 245429248 3214998528) [],
      decode_inner_F116 fmin_asimdsame_only),
     (Pattern (Atom 518027264 4292934656) [],
      decode_inner_F39 fminnm_h_floatdp2),
     (Pattern (Atom 505444352 4292934656) [],
      decode_inner_F40 fminnm_s_floatdp2),
     (Pattern (Atom 509638656 4292934656) [],
      decode_inner_F37 fminnm_d_floatdp2),
     (Pattern (Atom 247464960 3219192832) [],
      decode_inner_F116 fminnm_asimdsamefp16_only),
     (Pattern (Atom 245416960 3214998528) [],
      decode_inner_F116 fminnm_asimdsame_only),
     (Pattern (Atom 1588643840 4294966272) [],
      decode_inner_F41 fminnmp_asisdpair_only_h),
     (Pattern (Atom 2125514752 4290771968) [],
      decode_inner_F41 fminnmp_asisdpair_only_sd),
     (Pattern (Atom 784335872 3219192832) [],
      decode_inner_F116 fminnmp_asimdsamefp16_only),
     (Pattern (Atom 782287872 3214998528) [],
      decode_inner_F116 fminnmp_asimdsame_only),
     (Pattern (Atom 246466560 3221224448) [],
      decode_inner_F41 fminnmv_asimdall_only_h),
     (Pattern (Atom 783337472 3217030144) [],
      decode_inner_F41 fminnmv_asimdall_only_sd),
     (Pattern (Atom 1588656128 4294966272) [],
      decode_inner_F41 fminp_asisdpair_only_h),
     (Pattern (Atom 2125527040 4290771968) [],
      decode_inner_F41 fminp_asisdpair_only_sd),
     (Pattern (Atom 784348160 3219192832) [],
      decode_inner_F116 fminp_asimdsamefp16_only),
     (Pattern (Atom 782300160 3214998528) [],
      decode_inner_F116 fminp_asimdsame_only),
     (Pattern (Atom 246478848 3221224448) [],
      decode_inner_F41 fminv_asimdall_only_h),
     (Pattern (Atom 783349760 3217030144) [],
      decode_inner_F41 fminv_asimdall_only_sd),
     (Pattern (Atom 1593839616 4290835456) [],
      decode_inner_F110 fmla_asisdelem_rh_h),
     (Pattern (Atom 1602228224 4286641152) [],
      decode_inner_F139 fmla_asisdelem_r_sd),
     (Pattern (Atom 251662336 3217093632) [],
      decode_inner_F152 fmla_asimdelem_rh_h),
     (Pattern (Atom 260050944 3212899328) [],
      decode_inner_F161 fmla_asimdelem_r_sd),
     (Pattern (Atom 239078400 3219192832) [],
      decode_inner_F116 fmla_asimdsamefp16_only),
     (Pattern (Atom 237030400 3214998528) [],
      decode_inner_F116 fmla_asimdsame_only),
     (Pattern (Atom 1593856000 4290835456) [],
      decode_inner_F110 fmls_asisdelem_rh_h),
     (Pattern (Atom 1602244608 4286641152) [],
      decode_inner_F139 fmls_asisdelem_r_sd),
     (Pattern (Atom 251678720 3217093632) [],
      decode_inner_F152 fmls_asimdelem_rh_h),
     (Pattern (Atom 260067328 3212899328) [],
      decode_inner_F161 fmls_asimdelem_r_sd),
     (Pattern (Atom 247467008 3219192832) [],
      decode_inner_F116 fmls_asimdsamefp16_only),
     (Pattern (Atom 245419008 3214998528) [],
      decode_inner_F116 fmls_asimdsame_only),
     (Pattern (Atom 518389760 4294966272) [],
      decode_inner_F22 fmov_32h_float2int),
     (Pattern (Atom 2665873408 4294966272) [],
      decode_inner_F25 fmov_64h_float2int),
     (Pattern (Atom 518455296 4294966272) [],
      decode_inner_F10 fmov_h32_float2int),
     (Pattern (Atom 505872384 4294966272) [],
      decode_inner_F17 fmov_s32_float2int),
     (Pattern (Atom 505806848 4294966272) [],
      decode_inner_F23 fmov_32s_float2int),
     (Pattern (Atom 2665938944 4294966272) [],
      decode_inner_F11 fmov_h64_float2int),
     (Pattern (Atom 2657550336 4294966272) [],
      decode_inner_F4 fmov_d64_float2int),
     (Pattern (Atom 2662268928 4294966272) [],
      decode_inner_F35 fmov_v64i_float2int),
     (Pattern (Atom 2657484800 4294966272) [],
      decode_inner_F24 fmov_64d_float2int),
     (Pattern (Atom 2662203392 4294966272) [],
      decode_inner_F36 fmov_64vx_float2int),
     (Pattern (Atom 518012928 4294966272) [],
      decode_inner_F8 fmov_h_floatdp1),
     (Pattern (Atom 505430016 4294966272) [],
      decode_inner_F16 fmov_s_floatdp1),
     (Pattern (Atom 509624320 4294966272) [],
      decode_inner_F0 fmov_d_floatdp1),
     (Pattern (Atom 518000640 4292878304) [],
      decode_inner_F28 fmov_h_floatimm),
     (Pattern (Atom 505417728 4292878304) [],
      decode_inner_F29 fmov_s_floatimm),
     (Pattern (Atom 509612032 4292878304) [],
      decode_inner_F27 fmov_d_floatimm),
     (Pattern (Atom 251722752 3220765696) [],
      decode_inner_F45 fmov_asimdimm_h_h),
     (Pattern (Atom 251720704 3220765696) [],
      decode_inner_F45 fmov_asimdimm_s_s),
     (Pattern (Atom 1862333440 4294507520) [],
      decode_inner_F34 fmov_asimdimm_d2_d),
     (Pattern (Atom 532709376 4292902912) [],
      decode_inner_F68 fmsub_h_floatdp3),
     (Pattern (Atom 520126464 4292902912) [],
      decode_inner_F69 fmsub_s_floatdp3),
     (Pattern (Atom 524320768 4292902912) [],
      decode_inner_F67 fmsub_d_floatdp3),
     (Pattern (Atom 1593872384 4290835456) [],
      decode_inner_F110 fmul_asisdelem_rh_h),
     (Pattern (Atom 1602260992 4286641152) [],
      decode_inner_F139 fmul_asisdelem_r_sd),
     (Pattern (Atom 251695104 3217093632) [],
      decode_inner_F152 fmul_asimdelem_rh_h),
     (Pattern (Atom 260083712 3212899328) [],
      decode_inner_F161 fmul_asimdelem_r_sd),
     (Pattern (Atom 517998592 4292934656) [],
      decode_inner_F39 fmul_h_floatdp2),
     (Pattern (Atom 505415680 4292934656) [],
      decode_inner_F40 fmul_s_floatdp2),
     (Pattern (Atom 509609984 4292934656) [],
      decode_inner_F37 fmul_d_floatdp2),
     (Pattern (Atom 775953408 3219192832) [],
      decode_inner_F116 fmul_asimdsamefp16_only),
     (Pattern (Atom 773905408 3214998528) [],
      decode_inner_F116 fmul_asimdsame_only),
     (Pattern (Atom 1581259776 4292934656) [],
      decode_inner_F39 fmulx_asisdsamefp16_only),
     (Pattern (Atom 1579211776 4288740352) [],
      decode_inner_F70 fmulx_asisdsame_only),
     (Pattern (Atom 239082496 3219192832) [],
      decode_inner_F116 fmulx_asimdsamefp16_only),
     (Pattern (Atom 237034496 3214998528) [],
      decode_inner_F116 fmulx_asimdsame_only),
     (Pattern (Atom 2130743296 4290835456) [],
      decode_inner_F110 fmulx_asisdelem_rh_h),
     (Pattern (Atom 2139131904 4286641152) [],
      decode_inner_F139 fmulx_asisdelem_r_sd),
     (Pattern (Atom 788566016 3217093632) [],
      decode_inner_F152 fmulx_asimdelem_rh_h),
     (Pattern (Atom 796954624 3212899328) [],
      decode_inner_F161 fmulx_asimdelem_r_sd),
     (Pattern (Atom 518078464 4294966272) [],
      decode_inner_F8 fneg_h_floatdp1),
     (Pattern (Atom 505495552 4294966272) [],
      decode_inner_F16 fneg_s_floatdp1),
     (Pattern (Atom 509689856 4294966272) [],
      decode_inner_F0 fneg_d_floatdp1),
     (Pattern (Atom 788068352 3221224448) [],
      decode_inner_F49 fneg_asimdmiscfp16_r),
     (Pattern (Atom 782301184 3217030144) [],
      decode_inner_F49 fneg_asimdmisc_r),
     (Pattern (Atom 534773760 4292902912) [],
      decode_inner_F68 fnmadd_h_floatdp3),
     (Pattern (Atom 522190848 4292902912) [],
      decode_inner_F69 fnmadd_s_floatdp3),
     (Pattern (Atom 526385152 4292902912) [],
      decode_inner_F67 fnmadd_d_floatdp3),
     (Pattern (Atom 534806528 4292902912) [],
      decode_inner_F68 fnmsub_h_floatdp3),
     (Pattern (Atom 522223616 4292902912) [],
      decode_inner_F69 fnmsub_s_floatdp3),
     (Pattern (Atom 526417920 4292902912) [],
      decode_inner_F67 fnmsub_d_floatdp3),
     (Pattern (Atom 518031360 4292934656) [],
      decode_inner_F39 fnmul_h_floatdp2),
     (Pattern (Atom 505448448 4292934656) [],
      decode_inner_F40 fnmul_s_floatdp2),
     (Pattern (Atom 509642752 4292934656) [],
      decode_inner_F37 fnmul_d_floatdp2),
     (Pattern (Atom 1593432064 4294966272) [],
      decode_inner_F8 frecpe_asisdmiscfp16_r),
     (Pattern (Atom 1587664896 4290771968) [],
      decode_inner_F33 frecpe_asisdmisc_r),
     (Pattern (Atom 251254784 3221224448) [],
      decode_inner_F49 frecpe_asimdmiscfp16_r),
     (Pattern (Atom 245487616 3217030144) [],
      decode_inner_F49 frecpe_asimdmisc_r),
     (Pattern (Atom 1581267968 4292934656) [],
      decode_inner_F39 frecps_asisdsamefp16_only),
     (Pattern (Atom 1579219968 4288740352) [],
      decode_inner_F70 frecps_asisdsame_only),
     (Pattern (Atom 239090688 3219192832) [],
      decode_inner_F116 frecps_asimdsamefp16_only),
     (Pattern (Atom 237042688 3214998528) [],
      decode_inner_F116 frecps_asimdsame_only),
     (Pattern (Atom 1593440256 4294966272) [],
      decode_inner_F8 frecpx_asisdmiscfp16_r),
     (Pattern (Atom 1587673088 4290771968) [],
      decode_inner_F33 frecpx_asisdmisc_r),
     (Pattern (Atom 518406144 4294966272) [],
      decode_inner_F8 frinta_h_floatdp1),
     (Pattern (Atom 505823232 4294966272) [],
      decode_inner_F16 frinta_s_floatdp1),
     (Pattern (Atom 510017536 4294966272) [],
      decode_inner_F0 frinta_d_floatdp1),
     (Pattern (Atom 779716608 3221224448) [],
      decode_inner_F49 frinta_asimdmiscfp16_r),
     (Pattern (Atom 773949440 3217030144) [],
      decode_inner_F49 frinta_asimdmisc_r),
     (Pattern (Atom 518504448 4294966272) [],
      decode_inner_F8 frinti_h_floatdp1),
     (Pattern (Atom 505921536 4294966272) [],
      decode_inner_F16 frinti_s_floatdp1),
     (Pattern (Atom 510115840 4294966272) [],
      decode_inner_F0 frinti_d_floatdp1),
     (Pattern (Atom 788109312 3221224448) [],
      decode_inner_F49 frinti_asimdmiscfp16_r),
     (Pattern (Atom 782342144 3217030144) [],
      decode_inner_F49 frinti_asimdmisc_r),
     (Pattern (Atom 518340608 4294966272) [],
      decode_inner_F8 frintm_h_floatdp1),
     (Pattern (Atom 505757696 4294966272) [],
      decode_inner_F16 frintm_s_floatdp1),
     (Pattern (Atom 509952000 4294966272) [],
      decode_inner_F0 frintm_d_floatdp1),
     (Pattern (Atom 242849792 3221224448) [],
      decode_inner_F49 frintm_asimdmiscfp16_r),
     (Pattern (Atom 237082624 3217030144) [],
      decode_inner_F49 frintm_asimdmisc_r),
     (Pattern (Atom 518275072 4294966272) [],
      decode_inner_F8 frintn_h_floatdp1),
     (Pattern (Atom 505692160 4294966272) [],
      decode_inner_F16 frintn_s_floatdp1),
     (Pattern (Atom 509886464 4294966272) [],
      decode_inner_F0 frintn_d_floatdp1),
     (Pattern (Atom 242845696 3221224448) [],
      decode_inner_F49 frintn_asimdmiscfp16_r),
     (Pattern (Atom 237078528 3217030144) [],
      decode_inner_F49 frintn_asimdmisc_r),
     (Pattern (Atom 518307840 4294966272) [],
      decode_inner_F8 frintp_h_floatdp1),
     (Pattern (Atom 505724928 4294966272) [],
      decode_inner_F16 frintp_s_floatdp1),
     (Pattern (Atom 509919232 4294966272) [],
      decode_inner_F0 frintp_d_floatdp1),
     (Pattern (Atom 251234304 3221224448) [],
      decode_inner_F49 frintp_asimdmiscfp16_r),
     (Pattern (Atom 245467136 3217030144) [],
      decode_inner_F49 frintp_asimdmisc_r),
     (Pattern (Atom 518471680 4294966272) [],
      decode_inner_F8 frintx_h_floatdp1),
     (Pattern (Atom 505888768 4294966272) [],
      decode_inner_F16 frintx_s_floatdp1),
     (Pattern (Atom 510083072 4294966272) [],
      decode_inner_F0 frintx_d_floatdp1),
     (Pattern (Atom 779720704 3221224448) [],
      decode_inner_F49 frintx_asimdmiscfp16_r),
     (Pattern (Atom 773953536 3217030144) [],
      decode_inner_F49 frintx_asimdmisc_r),
     (Pattern (Atom 518373376 4294966272) [],
      decode_inner_F8 frintz_h_floatdp1),
     (Pattern (Atom 505790464 4294966272) [],
      decode_inner_F16 frintz_s_floatdp1),
     (Pattern (Atom 509984768 4294966272) [],
      decode_inner_F0 frintz_d_floatdp1),
     (Pattern (Atom 251238400 3221224448) [],
      decode_inner_F49 frintz_asimdmiscfp16_r),
     (Pattern (Atom 245471232 3217030144) [],
      decode_inner_F49 frintz_asimdmisc_r),
     (Pattern (Atom 2130302976 4294966272) [],
      decode_inner_F8 frsqrte_asisdmiscfp16_r),
     (Pattern (Atom 2124535808 4290771968) [],
      decode_inner_F33 frsqrte_asisdmisc_r),
     (Pattern (Atom 788125696 3221224448) [],
      decode_inner_F49 frsqrte_asimdmiscfp16_r),
     (Pattern (Atom 782358528 3217030144) [],
      decode_inner_F49 frsqrte_asimdmisc_r),
     (Pattern (Atom 1589656576 4292934656) [],
      decode_inner_F39 frsqrts_asisdsamefp16_only),
     (Pattern (Atom 1587608576 4288740352) [],
      decode_inner_F70 frsqrts_asisdsame_only),
     (Pattern (Atom 247479296 3219192832) [],
      decode_inner_F116 frsqrts_asimdsamefp16_only),
     (Pattern (Atom 245431296 3214998528) [],
      decode_inner_F116 frsqrts_asimdsame_only),
     (Pattern (Atom 518111232 4294966272) [],
      decode_inner_F8 fsqrt_h_floatdp1),
     (Pattern (Atom 505528320 4294966272) [],
      decode_inner_F16 fsqrt_s_floatdp1),
     (Pattern (Atom 509722624 4294966272) [],
      decode_inner_F0 fsqrt_d_floatdp1),
     (Pattern (Atom 788133888 3221224448) [],
      decode_inner_F49 fsqrt_asimdmiscfp16_r),
     (Pattern (Atom 782366720 3217030144) [],
      decode_inner_F49 fsqrt_asimdmisc_r),
     (Pattern (Atom 518010880 4292934656) [],
      decode_inner_F39 fsub_h_floatdp2),
     (Pattern (Atom 505427968 4292934656) [],
      decode_inner_F40 fsub_s_floatdp2),
     (Pattern (Atom 509622272 4292934656) [],
      decode_inner_F37 fsub_d_floatdp2),
     (Pattern (Atom 247469056 3219192832) [],
      decode_inner_F116 fsub_asimdsamefp16_only),
     (Pattern (Atom 245421056 3214998528) [],
      decode_inner_F116 fsub_asimdsame_only),
     (Pattern (Atom 1845494784 4292903936) [],
      decode_inner_F168 ins_asimdins_iv_v),
     (Pattern (Atom 1308630016 4292934656) [],
      decode_inner_F108 ins_asimdins_ir_r),
     (Pattern (Atom 205549568 3221221376) [],
      decode_inner_F72 ld1_asisdlse_r1_1v),
     (Pattern (Atom 205561856 3221221376) [],
      decode_inner_F144 ld1_asisdlse_r2_2v),
     (Pattern (Atom 205545472 3221221376) [],
      decode_inner_F176 ld1_asisdlse_r3_3v),
     (Pattern (Atom 205529088 3221221376) [],
      decode_inner_F202 ld1_asisdlse_r4_4v),
     (Pattern (Atom 215969792 3221221376) [],
      decode_inner_F120 ld1_asisdlsep_i1_i1),
     (Pattern (Atom 213938176 3219189760) [Atom 2031616 2031616],
      decode_inner_F118 ld1_asisdlsep_r1_r1),
     (Pattern (Atom 215982080 3221221376) [],
      decode_inner_F170 ld1_asisdlsep_i2_i2),
     (Pattern (Atom 213950464 3219189760) [Atom 2031616 2031616],
      decode_inner_F169 ld1_asisdlsep_r2_r2),
     (Pattern (Atom 215965696 3221221376) [],
      decode_inner_F193 ld1_asisdlsep_i3_i3),
     (Pattern (Atom 213934080 3219189760) [Atom 2031616 2031616],
      decode_inner_F192 ld1_asisdlsep_r3_r3),
     (Pattern (Atom 215949312 3221221376) [],
      decode_inner_F213 ld1_asisdlsep_i4_i4),
     (Pattern (Atom 213917696 3219189760) [Atom 2031616 2031616],
      decode_inner_F210 ld1_asisdlsep_r4_r4),
     (Pattern (Atom 222298112 3221217280) [],
      decode_inner_F121 ld1_asisdlso_b1_1b),
     (Pattern (Atom 222314496 3221218304) [],
      decode_inner_F123 ld1_asisdlso_h1_1h),
     (Pattern (Atom 222330880 3221220352) [],
      decode_inner_F124 ld1_asisdlso_s1_1s),
     (Pattern (Atom 222331904 3221224448) [],
      decode_inner_F122 ld1_asisdlso_d1_1d),
     (Pattern (Atom 232718336 3221217280) [],
      decode_inner_F145 ld1_asisdlsop_b1_i1b),
     (Pattern (Atom 230686720 3219185664) [Atom 2031616 2031616],
      decode_inner_F154 ld1_asisdlsop_bx1_r1b),
     (Pattern (Atom 232734720 3221218304) [],
      decode_inner_F147 ld1_asisdlsop_h1_i1h),
     (Pattern (Atom 230703104 3219186688) [Atom 2031616 2031616],
      decode_inner_F156 ld1_asisdlsop_hx1_r1h),
     (Pattern (Atom 232751104 3221220352) [],
      decode_inner_F148 ld1_asisdlsop_s1_i1s),
     (Pattern (Atom 230719488 3219188736) [Atom 2031616 2031616],
      decode_inner_F157 ld1_asisdlsop_sx1_r1s),
     (Pattern (Atom 232752128 3221224448) [],
      decode_inner_F146 ld1_asisdlsop_d1_i1d),
     (Pattern (Atom 230720512 3219192832) [Atom 2031616 2031616],
      decode_inner_F155 ld1_asisdlsop_dx1_r1d),
     (Pattern (Atom 222347264 3221221376) [],
      decode_inner_F72 ld1r_asisdlso_r1),
     (Pattern (Atom 232767488 3221221376) [],
      decode_inner_F120 ld1r_asisdlsop_r1_i),
     (Pattern (Atom 230735872 3219189760) [Atom 2031616 2031616],
      decode_inner_F118 ld1r_asisdlsop_rx1_r),
     (Pattern (Atom 205553664 3221221376) [],
      decode_inner_F144 ld2_asisdlse_r2),
     (Pattern (Atom 215973888 3221221376) [],
      decode_inner_F170 ld2_asisdlsep_i2_i),
     (Pattern (Atom 213942272 3219189760) [Atom 2031616 2031616],
      decode_inner_F169 ld2_asisdlsep_r2_r),
     (Pattern (Atom 224395264 3221217280) [],
      decode_inner_F164 ld2_asisdlso_b2_2b),
     (Pattern (Atom 224411648 3221218304) [],
      decode_inner_F166 ld2_asisdlso_h2_2h),
     (Pattern (Atom 224428032 3221220352) [],
      decode_inner_F167 ld2_asisdlso_s2_2s),
     (Pattern (Atom 224429056 3221224448) [],
      decode_inner_F165 ld2_asisdlso_d2_2d),
     (Pattern (Atom 234815488 3221217280) [],
      decode_inner_F171 ld2_asisdlsop_b2_i2b),
     (Pattern (Atom 232783872 3219185664) [Atom 2031616 2031616],
      decode_inner_F177 ld2_asisdlsop_bx2_r2b),
     (Pattern (Atom 234831872 3221218304) [],
      decode_inner_F172 ld2_asisdlsop_h2_i2h),
     (Pattern (Atom 232800256 3219186688) [Atom 2031616 2031616],
      decode_inner_F179 ld2_asisdlsop_hx2_r2h),
     (Pattern (Atom 234848256 3221220352) [],
      decode_inner_F173 ld2_asisdlsop_s2_i2s),
     (Pattern (Atom 232816640 3219188736) [Atom 2031616 2031616],
      decode_inner_F180 ld2_asisdlsop_sx2_r2s),
     (Pattern (Atom 234849280 3221224448) [],
      decode_inner_F175 ld2_asisdlsop_d2_i2d),
     (Pattern (Atom 232817664 3219192832) [Atom 2031616 2031616],
      decode_inner_F178 ld2_asisdlsop_dx2_r2d),
     (Pattern (Atom 224444416 3221221376) [],
      decode_inner_F144 ld2r_asisdlso_r2),
     (Pattern (Atom 234864640 3221221376) [],
      decode_inner_F170 ld2r_asisdlsop_r2_i),
     (Pattern (Atom 232833024 3219189760) [Atom 2031616 2031616],
      decode_inner_F169 ld2r_asisdlsop_rx2_r),
     (Pattern (Atom 205537280 3221221376) [],
      decode_inner_F176 ld3_asisdlse_r3),
     (Pattern (Atom 215957504 3221221376) [],
      decode_inner_F193 ld3_asisdlsep_i3_i),
     (Pattern (Atom 213925888 3219189760) [Atom 2031616 2031616],
      decode_inner_F192 ld3_asisdlsep_r3_r),
     (Pattern (Atom 222306304 3221217280) [],
      decode_inner_F182 ld3_asisdlso_b3_3b),
     (Pattern (Atom 222322688 3221218304) [],
      decode_inner_F184 ld3_asisdlso_h3_3h),
     (Pattern (Atom 222339072 3221220352) [],
      decode_inner_F185 ld3_asisdlso_s3_3s),
     (Pattern (Atom 222340096 3221224448) [],
      decode_inner_F183 ld3_asisdlso_d3_3d),
     (Pattern (Atom 232726528 3221217280) [],
      decode_inner_F194 ld3_asisdlsop_b3_i3b),
     (Pattern (Atom 230694912 3219185664) [Atom 2031616 2031616],
      decode_inner_F198 ld3_asisdlsop_bx3_r3b),
     (Pattern (Atom 232742912 3221218304) [],
      decode_inner_F195 ld3_asisdlsop_h3_i3h),
     (Pattern (Atom 230711296 3219186688) [Atom 2031616 2031616],
      decode_inner_F200 ld3_asisdlsop_hx3_r3h),
     (Pattern (Atom 232759296 3221220352) [],
      decode_inner_F197 ld3_asisdlsop_s3_i3s),
     (Pattern (Atom 230727680 3219188736) [Atom 2031616 2031616],
      decode_inner_F201 ld3_asisdlsop_sx3_r3s),
     (Pattern (Atom 232760320 3221224448) [],
      decode_inner_F196 ld3_asisdlsop_d3_i3d),
     (Pattern (Atom 230728704 3219192832) [Atom 2031616 2031616],
      decode_inner_F199 ld3_asisdlsop_dx3_r3d),
     (Pattern (Atom 222355456 3221221376) [],
      decode_inner_F176 ld3r_asisdlso_r3),
     (Pattern (Atom 232775680 3221221376) [],
      decode_inner_F193 ld3r_asisdlsop_r3_i),
     (Pattern (Atom 230744064 3219189760) [Atom 2031616 2031616],
      decode_inner_F192 ld3r_asisdlsop_rx3_r),
     (Pattern (Atom 205520896 3221221376) [],
      decode_inner_F202 ld4_asisdlse_r4),
     (Pattern (Atom 215941120 3221221376) [],
      decode_inner_F213 ld4_asisdlsep_i4_i),
     (Pattern (Atom 213909504 3219189760) [Atom 2031616 2031616],
      decode_inner_F210 ld4_asisdlsep_r4_r),
     (Pattern (Atom 224403456 3221217280) [],
      decode_inner_F203 ld4_asisdlso_b4_4b),
     (Pattern (Atom 224419840 3221218304) [],
      decode_inner_F205 ld4_asisdlso_h4_4h),
     (Pattern (Atom 224436224 3221220352) [],
      decode_inner_F206 ld4_asisdlso_s4_4s),
     (Pattern (Atom 224437248 3221224448) [],
      decode_inner_F204 ld4_asisdlso_d4_4d),
     (Pattern (Atom 234823680 3221217280) [],
      decode_inner_F208 ld4_asisdlsop_b4_i4b),
     (Pattern (Atom 232792064 3219185664) [Atom 2031616 2031616],
      decode_inner_F214 ld4_asisdlsop_bx4_r4b),
     (Pattern (Atom 234840064 3221218304) [],
      decode_inner_F209 ld4_asisdlsop_h4_i4h),
     (Pattern (Atom 232808448 3219186688) [Atom 2031616 2031616],
      decode_inner_F216 ld4_asisdlsop_hx4_r4h),
     (Pattern (Atom 234856448 3221220352) [],
      decode_inner_F212 ld4_asisdlsop_s4_i4s),
     (Pattern (Atom 232824832 3219188736) [Atom 2031616 2031616],
      decode_inner_F217 ld4_asisdlsop_sx4_r4s),
     (Pattern (Atom 234857472 3221224448) [],
      decode_inner_F211 ld4_asisdlsop_d4_i4d),
     (Pattern (Atom 232825856 3219192832) [Atom 2031616 2031616],
      decode_inner_F215 ld4_asisdlsop_dx4_r4d),
     (Pattern (Atom 224452608 3221221376) [],
      decode_inner_F202 ld4r_asisdlso_r4),
     (Pattern (Atom 234872832 3221221376) [],
      decode_inner_F213 ld4r_asisdlsop_r4_i),
     (Pattern (Atom 232841216 3219189760) [Atom 2031616 2031616],
      decode_inner_F210 ld4r_asisdlsop_rx4_r),
     (Pattern (Atom 742391808 4290772992) [],
      decode_inner_F136 ldnp_s_ldstnapair_offs),
     (Pattern (Atom 1816133632 4290772992) [],
      decode_inner_F134 ldnp_d_ldstnapair_offs),
     (Pattern (Atom 2889875456 4290772992) [],
      decode_inner_F135 ldnp_q_ldstnapair_offs),
     (Pattern (Atom 750780416 4290772992) [],
      decode_inner_F127 ldp_s_ldstpair_post),
     (Pattern (Atom 1824522240 4290772992) [],
      decode_inner_F125 ldp_d_ldstpair_post),
     (Pattern (Atom 2898264064 4290772992) [],
      decode_inner_F126 ldp_q_ldstpair_post),
     (Pattern (Atom 767557632 4290772992) [],
      decode_inner_F131 ldp_s_ldstpair_pre),
     (Pattern (Atom 1841299456 4290772992) [],
      decode_inner_F129 ldp_d_ldstpair_pre),
     (Pattern (Atom 2915041280 4290772992) [],
      decode_inner_F130 ldp_q_ldstpair_pre),
     (Pattern (Atom 759169024 4290772992) [],
      decode_inner_F136 ldp_s_ldstpair_off),
     (Pattern (Atom 1832910848 4290772992) [],
      decode_inner_F134 ldp_d_ldstpair_off),
     (Pattern (Atom 2906652672 4290772992) [],
      decode_inner_F135 ldp_q_ldstpair_off),
     (Pattern (Atom 1010828288 4292873216) [],
      decode_inner_F75 ldr_b_ldst_immpost),
     (Pattern (Atom 2084570112 4292873216) [],
      decode_inner_F79 ldr_h_ldst_immpost),
     (Pattern (Atom 3158311936 4292873216) [],
      decode_inner_F82 ldr_s_ldst_immpost),
     (Pattern (Atom 4232053760 4292873216) [],
      decode_inner_F77 ldr_d_ldst_immpost),
     (Pattern (Atom 1019216896 4292873216) [],
      decode_inner_F80 ldr_q_ldst_immpost),
     (Pattern (Atom 1010830336 4292873216) [],
      decode_inner_F88 ldr_b_ldst_immpre),
     (Pattern (Atom 2084572160 4292873216) [],
      decode_inner_F90 ldr_h_ldst_immpre),
     (Pattern (Atom 3158313984 4292873216) [],
      decode_inner_F92 ldr_s_ldst_immpre),
     (Pattern (Atom 4232055808 4292873216) [],
      decode_inner_F89 ldr_d_ldst_immpre),
     (Pattern (Atom 1019218944 4292873216) [],
      decode_inner_F91 ldr_q_ldst_immpre),
     (Pattern (Atom 1027604480 4290772992) [],
      decode_inner_F97 ldr_b_ldst_pos),
     (Pattern (Atom 2101346304 4290772992) [],
      decode_inner_F101 ldr_h_ldst_pos),
     (Pattern (Atom 3175088128 4290772992) [],
      decode_inner_F105 ldr_s_ldst_pos),
     (Pattern (Atom 4248829952 4290772992) [],
      decode_inner_F99 ldr_d_ldst_pos),
     (Pattern (Atom 1035993088 4290772992) [],
      decode_inner_F103 ldr_q_ldst_pos),
     (Pattern (Atom 469762048 4278190080) [],
      decode_inner_F32 ldr_s_loadlit),
     (Pattern (Atom 1543503872 4278190080) [],
      decode_inner_F30 ldr_d_loadlit),
     (Pattern (Atom 2617245696 4278190080) [],
      decode_inner_F31 ldr_q_loadlit),
     (Pattern (Atom 1012926464 4292873216) [Atom 24576 57344],
      decode_inner_F186 ldr_b_ldst_regoff),
     (Pattern (Atom 1012951040 4292930560) [],
      decode_inner_F158 ldr_bl_ldst_regoff),
     (Pattern (Atom 2086668288 4292873216) [],
      decode_inner_F189 ldr_h_ldst_regoff),
     (Pattern (Atom 3160410112 4292873216) [],
      decode_inner_F191 ldr_s_ldst_regoff),
     (Pattern (Atom 4234151936 4292873216) [],
      decode_inner_F188 ldr_d_ldst_regoff),
     (Pattern (Atom 1021315072 4292873216) [],
      decode_inner_F190 ldr_q_ldst_regoff),
     (Pattern (Atom 1010827264 4292873216) [],
      decode_inner_F98 ldur_b_ldst_unscaled),
     (Pattern (Atom 2084569088 4292873216) [],
      decode_inner_F102 ldur_h_ldst_unscaled),
     (Pattern (Atom 3158310912 4292873216) [],
      decode_inner_F106 ldur_s_ldst_unscaled),
     (Pattern (Atom 4232052736 4292873216) [],
      decode_inner_F100 ldur_d_ldst_unscaled),
     (Pattern (Atom 1019215872 4292873216) [],
      decode_inner_F104 ldur_q_ldst_unscaled),
     (Pattern (Atom 788529152 3204510720) [],
      decode_inner_F161 mla_asimdelem_r),
     (Pattern (Atom 237016064 3206609920) [],
      decode_inner_F116 mla_asimdsame_only),
     (Pattern (Atom 788545536 3204510720) [],
      decode_inner_F161 mls_asimdelem_r),
     (Pattern (Atom 773886976 3206609920) [],
      decode_inner_F116 mls_asimdsame_only),
     (Pattern (Atom 251716608 3220765696) [],
      decode_inner_F113 movi_asimdimm_n_b),
     (Pattern (Atom 251692032 3220757504) [],
      decode_inner_F142 movi_asimdimm_l_hl),
     (Pattern (Atom 251659264 3220741120) [],
      decode_inner_F142 movi_asimdimm_l_sl),
     (Pattern (Atom 251708416 3220761600) [],
      decode_inner_F133 movi_asimdimm_m_sm),
     (Pattern (Atom 788587520 4294507520) [],
      decode_inner_F27 movi_asimdimm_d_ds),
     (Pattern (Atom 1862329344 4294507520) [],
      decode_inner_F34 movi_asimdimm_d2_d),
     (Pattern (Atom 251691008 3204510720) [],
      decode_inner_F161 mul_asimdelem_r),
     (Pattern (Atom 237018112 3206609920) [],
      decode_inner_F116 mul_asimdsame_only),
     (Pattern (Atom 788562944 3220757504) [],
      decode_inner_F142 mvni_asimdimm_l_hl),
     (Pattern (Atom 788530176 3220741120) [],
      decode_inner_F142 mvni_asimdimm_l_sl),
     (Pattern (Atom 788579328 3220761600) [],
      decode_inner_F133 mvni_asimdimm_m_sm),
     (Pattern (Atom 2116073472 4282383360) [],
      decode_inner_F33 neg_asisdmisc_r),
     (Pattern (Atom 773896192 3208641536) [],
      decode_inner_F49 neg_asimdmisc_r),
     (Pattern (Atom 773871616 3221224448) [],
      decode_inner_F49 not_asimdmisc_r),
     (Pattern (Atom 249568256 3219192832) [],
      decode_inner_F116 orn_asimdsame_only),
     (Pattern (Atom 251696128 3220757504) [],
      decode_inner_F142 orr_asimdimm_l_hl),
     (Pattern (Atom 251663360 3220741120) [],
      decode_inner_F142 orr_asimdimm_l_sl),
     (Pattern (Atom 245373952 3219192832) [],
      decode_inner_F116 orr_asimdsame_only),
     (Pattern (Atom 773889024 3206609920) [],
      decode_inner_F116 pmul_asimdsame_only),
     (Pattern (Atom 237035520 3206609920) [],
      decode_inner_F150 pmull_asimddiff_l),
     (Pattern (Atom 773865472 3206609920) [],
      decode_inner_F151 raddhn_asimddiff_n),
     (Pattern (Atom 3462433792 4292934656) [],
      decode_inner_F95 rax1_vvv2_cryptosha512_3),
     (Pattern (Atom 778065920 3221224448) [],
      decode_inner_F49 rbit_asimdmisc_r),
     (Pattern (Atom 236984320 3208641536) [],
      decode_inner_F49 rev16_asimdmisc_r),
     (Pattern (Atom 773851136 3208641536) [],
      decode_inner_F49 rev32_asimdmisc_r),
     (Pattern (Atom 236980224 3208641536) [],
      decode_inner_F49 rev64_asimdmisc_r),
     (Pattern (Atom 251694080 3212901376) [Atom 0 7864320],
      decode_inner_F138 rshrn_asimdshf_n),
     (Pattern (Atom 773873664 3206609920) [],
      decode_inner_F151 rsubhn_asimddiff_n),
     (Pattern (Atom 237009920 3206609920) [],
      decode_inner_F116 saba_asimdsame_only),
     (Pattern (Atom 236998656 3206609920) [],
      decode_inner_F150 sabal_asimddiff_l),
     (Pattern (Atom 237007872 3206609920) [],
      decode_inner_F116 sabd_asimdsame_only),
     (Pattern (Atom 237006848 3206609920) [],
      decode_inner_F150 sabdl_asimddiff_l),
     (Pattern (Atom 237004800 3208641536) [],
      decode_inner_F60 sadalp_asimdmisc_p),
     (Pattern (Atom 236978176 3206609920) [],
      decode_inner_F150 saddl_asimddiff_l),
     (Pattern (Atom 236988416 3208641536) [],
      decode_inner_F60 saddlp_asimdmisc_p),
     (Pattern (Atom 238041088 3208641536) [],
      decode_inner_F41 saddlv_asimdall_only),
     (Pattern (Atom 236982272 3206609920) [],
      decode_inner_F149 saddw_asimddiff_w),
     (Pattern (Atom 516030464 4294901760) [],
      decode_inner_F55 scvtf_h32_float2fix),
     (Pattern (Atom 503447552 4294901760) [],
      decode_inner_F57 scvtf_s32_float2fix),
     (Pattern (Atom 507641856 4294901760) [],
      decode_inner_F53 scvtf_d32_float2fix),
     (Pattern (Atom 2663514112 4294901760) [],
      decode_inner_F56 scvtf_h64_float2fix),
     (Pattern (Atom 2650931200 4294901760) [],
      decode_inner_F58 scvtf_s64_float2fix),
     (Pattern (Atom 2655125504 4294901760) [],
      decode_inner_F54 scvtf_d64_float2fix),
     (Pattern (Atom 518127616 4294966272) [],
      decode_inner_F10 scvtf_h32_float2int),
     (Pattern (Atom 505544704 4294966272) [],
      decode_inner_F17 scvtf_s32_float2int),
     (Pattern (Atom 509739008 4294966272) [],
      decode_inner_F3 scvtf_d32_float2int),
     (Pattern (Atom 2665611264 4294966272) [],
      decode_inner_F11 scvtf_h64_float2int),
     (Pattern (Atom 2653028352 4294966272) [],
      decode_inner_F18 scvtf_s64_float2int),
     (Pattern (Atom 2657222656 4294966272) [],
      decode_inner_F4 scvtf_d64_float2int),
     (Pattern (Atom 1593893888 4286643200) [Atom 0 7864320],
      decode_inner_F83 scvtf_asisdshf_c),
     (Pattern (Atom 251716608 3212901376) [Atom 0 7864320],
      decode_inner_F114 scvtf_asimdshf_c),
     (Pattern (Atom 1585043456 4294966272) [],
      decode_inner_F8 scvtf_asisdmiscfp16_r),
     (Pattern (Atom 1579276288 4290771968) [],
      decode_inner_F33 scvtf_asisdmisc_r),
     (Pattern (Atom 242866176 3221224448) [],
      decode_inner_F49 scvtf_asimdmiscfp16_r),
     (Pattern (Atom 237099008 3217030144) [],
      decode_inner_F49 scvtf_asimdmisc_r),
     (Pattern (Atom 251715584 3204510720) [],
      decode_inner_F162 sdot_asimdelem_d),
     (Pattern (Atom 234918912 3206609920) [],
      decode_inner_F128 sdot_asimdsame2_d),
     (Pattern (Atom 1577058304 4292934656) [],
      decode_inner_F52 sha1c_qsv_cryptosha3),
     (Pattern (Atom 1579681792 4294966272) [],
      decode_inner_F16 sha1h_ss_cryptosha2),
     (Pattern (Atom 1577066496 4292934656) [],
      decode_inner_F52 sha1m_qsv_cryptosha3),
     (Pattern (Atom 1577062400 4292934656) [],
      decode_inner_F52 sha1p_qsv_cryptosha3),
     (Pattern (Atom 1577070592 4292934656) [],
      decode_inner_F96 sha1su0_vvv_cryptosha3),
     (Pattern (Atom 1579685888 4294966272) [],
      decode_inner_F44 sha1su1_vv_cryptosha2),
     (Pattern (Atom 1577074688 4292934656) [],
      decode_inner_F51 sha256h_qqv_cryptosha3),
     (Pattern (Atom 1577078784 4292934656) [],
      decode_inner_F51 sha256h2_qqv_cryptosha3),
     (Pattern (Atom 1579689984 4294966272) [],
      decode_inner_F44 sha256su0_vv_cryptosha2),
     (Pattern (Atom 1577082880 4292934656) [],
      decode_inner_F96 sha256su1_vvv_cryptosha3),
     (Pattern (Atom 3462430720 4292934656) [],
      decode_inner_F50 sha512h_qqv_cryptosha512_3),
     (Pattern (Atom 3462431744 4292934656) [],
      decode_inner_F50 sha512h2_qqv_cryptosha512_3),
     (Pattern (Atom 3468722176 4294966272) [],
      decode_inner_F43 sha512su0_vv2_cryptosha512_2),
     (Pattern (Atom 3462432768 4292934656) [],
      decode_inner_F95 sha512su1_vvv2_cryptosha512_3),
     (Pattern (Atom 236979200 3206609920) [],
      decode_inner_F116 shadd_asimdsame_only),
     (Pattern (Atom 1593857024 4286643200) [Atom 0 7864320],
      decode_inner_F84 shl_asisdshf_r),
     (Pattern (Atom 251679744 3212901376) [Atom 0 7864320],
      decode_inner_F115 shl_asimdshf_r),
     (Pattern (Atom 773928960 3208641536) [],
      decode_inner_F137 shll_asimdmisc_s),
     (Pattern (Atom 251692032 3212901376) [Atom 0 7864320],
      decode_inner_F138 shrn_asimdshf_n),
     (Pattern (Atom 236987392 3206609920) [],
      decode_inner_F116 shsub_asimdsame_only),
     (Pattern (Atom 2130727936 4286643200) [Atom 0 7864320],
      decode_inner_F84 sli_asisdshf_r),
     (Pattern (Atom 788550656 3212901376) [Atom 0 7864320],
      decode_inner_F115 sli_asimdshf_r),
     (Pattern (Atom 3462447104 4292934656) [],
      decode_inner_F96 sm3partw1_vvv4_cryptosha512_3),
     (Pattern (Atom 3462448128 4292934656) [],
      decode_inner_F96 sm3partw2_vvv4_cryptosha512_3),
     (Pattern (Atom 3460300800 4292902912) [],
      decode_inner_F141 sm3ss1_vvv4_crypto4),
     (Pattern (Atom 3460333568 4292922368) [],
      decode_inner_F132 sm3tt1a_vvv4_crypto3_imm2),
     (Pattern (Atom 3460334592 4292922368) [],
      decode_inner_F132 sm3tt1b_vvv4_crypto3_imm2),
     (Pattern (Atom 3460335616 4292922368) [],
      decode_inner_F132 sm3tt2a_vvv4_crypto3_imm2),
     (Pattern (Atom 3460336640 4292922368) [],
      decode_inner_F119 sm3tt2b_vvv_crypto3_imm2),
     (Pattern (Atom 3468723200 4294966272) [],
      decode_inner_F44 sm4e_vv4_cryptosha512_2),
     (Pattern (Atom 3462449152 4292934656) [],
      decode_inner_F96 sm4ekey_vvv4_cryptosha512_3),
     (Pattern (Atom 237003776 3206609920) [],
      decode_inner_F116 smax_asimdsame_only),
     (Pattern (Atom 237020160 3206609920) [],
      decode_inner_F116 smaxp_asimdsame_only),
     (Pattern (Atom 238069760 3208641536) [],
      decode_inner_F41 smaxv_asimdall_only),
     (Pattern (Atom 237005824 3206609920) [],
      decode_inner_F116 smin_asimdsame_only),
     (Pattern (Atom 237022208 3206609920) [],
      decode_inner_F116 sminp_asimdsame_only),
     (Pattern (Atom 238135296 3208641536) [],
      decode_inner_F41 sminv_asimdall_only),
     (Pattern (Atom 251666432 3204510720) [],
      decode_inner_F174 smlal_asimdelem_l),
     (Pattern (Atom 237010944 3206609920) [],
      decode_inner_F150 smlal_asimddiff_l),
     (Pattern (Atom 251682816 3204510720) [],
      decode_inner_F174 smlsl_asimdelem_l),
     (Pattern (Atom 237019136 3206609920) [],
      decode_inner_F150 smlsl_asimddiff_l),
     (Pattern (Atom 234892288 4292934656) [],
      decode_inner_F86 smov_asimdins_w_w),
     (Pattern (Atom 1308634112 4292934656) [],
      decode_inner_F87 smov_asimdins_x_x),
     (Pattern (Atom 251699200 3204510720) [],
      decode_inner_F174 smull_asimdelem_l),
     (Pattern (Atom 237027328 3206609920) [],
      decode_inner_F150 smull_asimddiff_l),
     (Pattern (Atom 1579186176 4282383360) [],
      decode_inner_F33 sqabs_asisdmisc_r),
     (Pattern (Atom 237008896 3208641536) [],
      decode_inner_F49 sqabs_asimdmisc_r),
     (Pattern (Atom 1579158528 4280351744) [],
      decode_inner_F70 sqadd_asisdsame_only),
     (Pattern (Atom 236981248 3206609920) [],
      decode_inner_F116 sqadd_asimdsame_only),
     (Pattern (Atom 1593847808 4278252544) [],
      decode_inner_F153 sqdmlal_asisdelem_l),
     (Pattern (Atom 251670528 3204510720) [],
      decode_inner_F174 sqdmlal_asimdelem_l),
     (Pattern (Atom 1579192320 4280351744) [],
      decode_inner_F94 sqdmlal_asisddiff_only),
     (Pattern (Atom 237015040 3206609920) [],
      decode_inner_F150 sqdmlal_asimddiff_l),
     (Pattern (Atom 1593864192 4278252544) [],
      decode_inner_F153 sqdmlsl_asisdelem_l),
     (Pattern (Atom 251686912 3204510720) [],
      decode_inner_F174 sqdmlsl_asimdelem_l),
     (Pattern (Atom 1579200512 4280351744) [],
      decode_inner_F94 sqdmlsl_asisddiff_only),
     (Pattern (Atom 237023232 3206609920) [],
      decode_inner_F150 sqdmlsl_asimddiff_l),
     (Pattern (Atom 1593884672 4278252544) [],
      decode_inner_F139 sqdmulh_asisdelem_r),
     (Pattern (Atom 251707392 3204510720) [],
      decode_inner_F161 sqdmulh_asimdelem_r),
     (Pattern (Atom 1579201536 4280351744) [],
      decode_inner_F70 sqdmulh_asisdsame_only),
     (Pattern (Atom 237024256 3206609920) [],
      decode_inner_F116 sqdmulh_asimdsame_only),
     (Pattern (Atom 1593880576 4278252544) [],
      decode_inner_F153 sqdmull_asisdelem_l),
     (Pattern (Atom 251703296 3204510720) [],
      decode_inner_F174 sqdmull_asimdelem_l),
     (Pattern (Atom 1579208704 4280351744) [],
      decode_inner_F94 sqdmull_asisddiff_only),
     (Pattern (Atom 237031424 3206609920) [],
      decode_inner_F150 sqdmull_asimddiff_l),
     (Pattern (Atom 2116057088 4282383360) [],
      decode_inner_F33 sqneg_asisdmisc_r),
     (Pattern (Atom 773879808 3208641536) [],
      decode_inner_F49 sqneg_asimdmisc_r),
     (Pattern (Atom 2130759680 4278252544) [],
      decode_inner_F139 sqrdmlah_asisdelem_r),
     (Pattern (Atom 788582400 3204510720) [],
      decode_inner_F161 sqrdmlah_asimdelem_r),
     (Pattern (Atom 2113963008 4280351744) [],
      decode_inner_F70 sqrdmlah_asisdsame2_only),
     (Pattern (Atom 771785728 3206609920) [],
      decode_inner_F116 sqrdmlah_asimdsame2_only),
     (Pattern (Atom 2130767872 4278252544) [],
      decode_inner_F139 sqrdmlsh_asisdelem_r),
     (Pattern (Atom 788590592 3204510720) [],
      decode_inner_F161 sqrdmlsh_asimdelem_r),
     (Pattern (Atom 2113965056 4280351744) [],
      decode_inner_F70 sqrdmlsh_asisdsame2_only),
     (Pattern (Atom 771787776 3206609920) [],
      decode_inner_F116 sqrdmlsh_asimdsame2_only),
     (Pattern (Atom 1593888768 4278252544) [],
      decode_inner_F139 sqrdmulh_asisdelem_r),
     (Pattern (Atom 251711488 3204510720) [],
      decode_inner_F161 sqrdmulh_asimdelem_r),
     (Pattern (Atom 2116072448 4280351744) [],
      decode_inner_F70 sqrdmulh_asisdsame_only),
     (Pattern (Atom 773895168 3206609920) [],
      decode_inner_F116 sqrdmulh_asimdsame_only),
     (Pattern (Atom 1579179008 4280351744) [],
      decode_inner_F70 sqrshl_asisdsame_only),
     (Pattern (Atom 237001728 3206609920) [],
      decode_inner_F116 sqrshl_asimdsame_only),
     (Pattern (Atom 1593875456 4286643200) [Atom 0 7864320],
      decode_inner_F107 sqrshrn_asisdshf_n),
     (Pattern (Atom 251698176 3212901376) [Atom 0 7864320],
      decode_inner_F138 sqrshrn_asimdshf_n),
     (Pattern (Atom 2130742272 4286643200) [Atom 0 7864320],
      decode_inner_F107 sqrshrun_asisdshf_n),
     (Pattern (Atom 788564992 3212901376) [Atom 0 7864320],
      decode_inner_F138 sqrshrun_asimdshf_n),
     (Pattern (Atom 1593865216 4286643200) [Atom 0 7864320],
      decode_inner_F84 sqshl_asisdshf_r),
     (Pattern (Atom 251687936 3212901376) [Atom 0 7864320],
      decode_inner_F115 sqshl_asimdshf_r),
     (Pattern (Atom 1579174912 4280351744) [],
      decode_inner_F70 sqshl_asisdsame_only),
     (Pattern (Atom 236997632 3206609920) [],
      decode_inner_F116 sqshl_asimdsame_only),
     (Pattern (Atom 2130732032 4286643200) [Atom 0 7864320],
      decode_inner_F84 sqshlu_asisdshf_r),
     (Pattern (Atom 788554752 3212901376) [Atom 0 7864320],
      decode_inner_F115 sqshlu_asimdshf_r),
     (Pattern (Atom 1593873408 4286643200) [Atom 0 7864320],
      decode_inner_F107 sqshrn_asisdshf_n),
     (Pattern (Atom 251696128 3212901376) [Atom 0 7864320],
      decode_inner_F138 sqshrn_asimdshf_n),
     (Pattern (Atom 2130740224 4286643200) [Atom 0 7864320],
      decode_inner_F107 sqshrun_asisdshf_n),
     (Pattern (Atom 788562944 3212901376) [Atom 0 7864320],
      decode_inner_F138 sqshrun_asimdshf_n),
     (Pattern (Atom 1579166720 4280351744) [],
      decode_inner_F70 sqsub_asisdsame_only),
     (Pattern (Atom 236989440 3206609920) [],
      decode_inner_F116 sqsub_asimdsame_only),
     (Pattern (Atom 1579239424 4282383360) [],
      decode_inner_F42 sqxtn_asisdmisc_n),
     (Pattern (Atom 237062144 3208641536) [],
      decode_inner_F74 sqxtn_asimdmisc_n),
     (Pattern (Atom 2116102144 4282383360) [],
      decode_inner_F42 sqxtun_asisdmisc_n),
     (Pattern (Atom 773924864 3208641536) [],
      decode_inner_F74 sqxtun_asimdmisc_n),
     (Pattern (Atom 236983296 3206609920) [],
      decode_inner_F116 srhadd_asimdsame_only),
     (Pattern (Atom 2130723840 4286643200) [Atom 0 7864320],
      decode_inner_F84 sri_asisdshf_r),
     (Pattern (Atom 788546560 3212901376) [Atom 0 7864320],
      decode_inner_F115 sri_asimdshf_r),
     (Pattern (Atom 1579176960 4280351744) [],
      decode_inner_F70 srshl_asisdsame_only),
     (Pattern (Atom 236999680 3206609920) [],
      decode_inner_F116 srshl_asimdsame_only),
     (Pattern (Atom 1593844736 4286643200) [Atom 0 7864320],
      decode_inner_F84 srshr_asisdshf_r),
     (Pattern (Atom 251667456 3212901376) [Atom 0 7864320],
      decode_inner_F115 srshr_asimdshf_r),
     (Pattern (Atom 1593848832 4286643200) [Atom 0 7864320],
      decode_inner_F84 srsra_asisdshf_r),
     (Pattern (Atom 251671552 3212901376) [Atom 0 7864320],
      decode_inner_F115 srsra_asimdshf_r),
     (Pattern (Atom 1579172864 4280351744) [],
      decode_inner_F70 sshl_asisdsame_only),
     (Pattern (Atom 236995584 3206609920) [],
      decode_inner_F116 sshl_asimdsame_only),
     (Pattern (Atom 251700224 3212901376) [Atom 0 7864320],
      decode_inner_F137 sshll_asimdshf_l),
     (Pattern (Atom 1593836544 4286643200) [Atom 0 7864320],
      decode_inner_F84 sshr_asisdshf_r),
     (Pattern (Atom 251659264 3212901376) [Atom 0 7864320],
      decode_inner_F115 sshr_asimdshf_r),
     (Pattern (Atom 1593840640 4286643200) [Atom 0 7864320],
      decode_inner_F84 ssra_asisdshf_r),
     (Pattern (Atom 251663360 3212901376) [Atom 0 7864320],
      decode_inner_F115 ssra_asimdshf_r),
     (Pattern (Atom 236986368 3206609920) [],
      decode_inner_F150 ssubl_asimddiff_l),
     (Pattern (Atom 236990464 3206609920) [],
      decode_inner_F149 ssubw_asimddiff_w),
     (Pattern (Atom 201355264 3221221376) [],
      decode_inner_F72 st1_asisdlse_r1_1v),
     (Pattern (Atom 201367552 3221221376) [],
      decode_inner_F144 st1_asisdlse_r2_2v),
     (Pattern (Atom 201351168 3221221376) [],
      decode_inner_F176 st1_asisdlse_r3_3v),
     (Pattern (Atom 201334784 3221221376) [],
      decode_inner_F202 st1_asisdlse_r4_4v),
     (Pattern (Atom 211775488 3221221376) [],
      decode_inner_F120 st1_asisdlsep_i1_i1),
     (Pattern (Atom 209743872 3219189760) [Atom 2031616 2031616],
      decode_inner_F118 st1_asisdlsep_r1_r1),
     (Pattern (Atom 211787776 3221221376) [],
      decode_inner_F170 st1_asisdlsep_i2_i2),
     (Pattern (Atom 209756160 3219189760) [Atom 2031616 2031616],
      decode_inner_F169 st1_asisdlsep_r2_r2),
     (Pattern (Atom 211771392 3221221376) [],
      decode_inner_F193 st1_asisdlsep_i3_i3),
     (Pattern (Atom 209739776 3219189760) [Atom 2031616 2031616],
      decode_inner_F192 st1_asisdlsep_r3_r3),
     (Pattern (Atom 211755008 3221221376) [],
      decode_inner_F213 st1_asisdlsep_i4_i4),
     (Pattern (Atom 209723392 3219189760) [Atom 2031616 2031616],
      decode_inner_F210 st1_asisdlsep_r4_r4),
     (Pattern (Atom 218103808 3221217280) [],
      decode_inner_F121 st1_asisdlso_b1_1b),
     (Pattern (Atom 218120192 3221218304) [],
      decode_inner_F123 st1_asisdlso_h1_1h),
     (Pattern (Atom 218136576 3221220352) [],
      decode_inner_F124 st1_asisdlso_s1_1s),
     (Pattern (Atom 218137600 3221224448) [],
      decode_inner_F122 st1_asisdlso_d1_1d),
     (Pattern (Atom 228524032 3221217280) [],
      decode_inner_F145 st1_asisdlsop_b1_i1b),
     (Pattern (Atom 226492416 3219185664) [Atom 2031616 2031616],
      decode_inner_F154 st1_asisdlsop_bx1_r1b),
     (Pattern (Atom 228540416 3221218304) [],
      decode_inner_F147 st1_asisdlsop_h1_i1h),
     (Pattern (Atom 226508800 3219186688) [Atom 2031616 2031616],
      decode_inner_F156 st1_asisdlsop_hx1_r1h),
     (Pattern (Atom 228556800 3221220352) [],
      decode_inner_F148 st1_asisdlsop_s1_i1s),
     (Pattern (Atom 226525184 3219188736) [Atom 2031616 2031616],
      decode_inner_F157 st1_asisdlsop_sx1_r1s),
     (Pattern (Atom 228557824 3221224448) [],
      decode_inner_F146 st1_asisdlsop_d1_i1d),
     (Pattern (Atom 226526208 3219192832) [Atom 2031616 2031616],
      decode_inner_F155 st1_asisdlsop_dx1_r1d),
     (Pattern (Atom 201359360 3221221376) [],
      decode_inner_F144 st2_asisdlse_r2),
     (Pattern (Atom 211779584 3221221376) [],
      decode_inner_F170 st2_asisdlsep_i2_i),
     (Pattern (Atom 209747968 3219189760) [Atom 2031616 2031616],
      decode_inner_F169 st2_asisdlsep_r2_r),
     (Pattern (Atom 220200960 3221217280) [],
      decode_inner_F164 st2_asisdlso_b2_2b),
     (Pattern (Atom 220217344 3221218304) [],
      decode_inner_F166 st2_asisdlso_h2_2h),
     (Pattern (Atom 220233728 3221220352) [],
      decode_inner_F167 st2_asisdlso_s2_2s),
     (Pattern (Atom 220234752 3221224448) [],
      decode_inner_F165 st2_asisdlso_d2_2d),
     (Pattern (Atom 230621184 3221217280) [],
      decode_inner_F171 st2_asisdlsop_b2_i2b),
     (Pattern (Atom 228589568 3219185664) [Atom 2031616 2031616],
      decode_inner_F177 st2_asisdlsop_bx2_r2b),
     (Pattern (Atom 230637568 3221218304) [],
      decode_inner_F172 st2_asisdlsop_h2_i2h),
     (Pattern (Atom 228605952 3219186688) [Atom 2031616 2031616],
      decode_inner_F179 st2_asisdlsop_hx2_r2h),
     (Pattern (Atom 230653952 3221220352) [],
      decode_inner_F173 st2_asisdlsop_s2_i2s),
     (Pattern (Atom 228622336 3219188736) [Atom 2031616 2031616],
      decode_inner_F180 st2_asisdlsop_sx2_r2s),
     (Pattern (Atom 230654976 3221224448) [],
      decode_inner_F175 st2_asisdlsop_d2_i2d),
     (Pattern (Atom 228623360 3219192832) [Atom 2031616 2031616],
      decode_inner_F178 st2_asisdlsop_dx2_r2d),
     (Pattern (Atom 201342976 3221221376) [],
      decode_inner_F176 st3_asisdlse_r3),
     (Pattern (Atom 211763200 3221221376) [],
      decode_inner_F193 st3_asisdlsep_i3_i),
     (Pattern (Atom 209731584 3219189760) [Atom 2031616 2031616],
      decode_inner_F192 st3_asisdlsep_r3_r),
     (Pattern (Atom 218112000 3221217280) [],
      decode_inner_F182 st3_asisdlso_b3_3b),
     (Pattern (Atom 218128384 3221218304) [],
      decode_inner_F184 st3_asisdlso_h3_3h),
     (Pattern (Atom 218144768 3221220352) [],
      decode_inner_F185 st3_asisdlso_s3_3s),
     (Pattern (Atom 218145792 3221224448) [],
      decode_inner_F183 st3_asisdlso_d3_3d),
     (Pattern (Atom 228532224 3221217280) [],
      decode_inner_F194 st3_asisdlsop_b3_i3b),
     (Pattern (Atom 226500608 3219185664) [Atom 2031616 2031616],
      decode_inner_F198 st3_asisdlsop_bx3_r3b),
     (Pattern (Atom 228548608 3221218304) [],
      decode_inner_F195 st3_asisdlsop_h3_i3h),
     (Pattern (Atom 226516992 3219186688) [Atom 2031616 2031616],
      decode_inner_F200 st3_asisdlsop_hx3_r3h),
     (Pattern (Atom 228564992 3221220352) [],
      decode_inner_F197 st3_asisdlsop_s3_i3s),
     (Pattern (Atom 226533376 3219188736) [Atom 2031616 2031616],
      decode_inner_F201 st3_asisdlsop_sx3_r3s),
     (Pattern (Atom 228566016 3221224448) [],
      decode_inner_F196 st3_asisdlsop_d3_i3d),
     (Pattern (Atom 226534400 3219192832) [Atom 2031616 2031616],
      decode_inner_F199 st3_asisdlsop_dx3_r3d),
     (Pattern (Atom 201326592 3221221376) [],
      decode_inner_F202 st4_asisdlse_r4),
     (Pattern (Atom 211746816 3221221376) [],
      decode_inner_F213 st4_asisdlsep_i4_i),
     (Pattern (Atom 209715200 3219189760) [Atom 2031616 2031616],
      decode_inner_F210 st4_asisdlsep_r4_r),
     (Pattern (Atom 220209152 3221217280) [],
      decode_inner_F203 st4_asisdlso_b4_4b),
     (Pattern (Atom 220225536 3221218304) [],
      decode_inner_F205 st4_asisdlso_h4_4h),
     (Pattern (Atom 220241920 3221220352) [],
      decode_inner_F206 st4_asisdlso_s4_4s),
     (Pattern (Atom 220242944 3221224448) [],
      decode_inner_F204 st4_asisdlso_d4_4d),
     (Pattern (Atom 230629376 3221217280) [],
      decode_inner_F208 st4_asisdlsop_b4_i4b),
     (Pattern (Atom 228597760 3219185664) [Atom 2031616 2031616],
      decode_inner_F214 st4_asisdlsop_bx4_r4b),
     (Pattern (Atom 230645760 3221218304) [],
      decode_inner_F209 st4_asisdlsop_h4_i4h),
     (Pattern (Atom 228614144 3219186688) [Atom 2031616 2031616],
      decode_inner_F216 st4_asisdlsop_hx4_r4h),
     (Pattern (Atom 230662144 3221220352) [],
      decode_inner_F212 st4_asisdlsop_s4_i4s),
     (Pattern (Atom 228630528 3219188736) [Atom 2031616 2031616],
      decode_inner_F217 st4_asisdlsop_sx4_r4s),
     (Pattern (Atom 230663168 3221224448) [],
      decode_inner_F211 st4_asisdlsop_d4_i4d),
     (Pattern (Atom 228631552 3219192832) [Atom 2031616 2031616],
      decode_inner_F215 st4_asisdlsop_dx4_r4d),
     (Pattern (Atom 738197504 4290772992) [],
      decode_inner_F136 stnp_s_ldstnapair_offs),
     (Pattern (Atom 1811939328 4290772992) [],
      decode_inner_F134 stnp_d_ldstnapair_offs),
     (Pattern (Atom 2885681152 4290772992) [],
      decode_inner_F135 stnp_q_ldstnapair_offs),
     (Pattern (Atom 746586112 4290772992) [],
      decode_inner_F127 stp_s_ldstpair_post),
     (Pattern (Atom 1820327936 4290772992) [],
      decode_inner_F125 stp_d_ldstpair_post),
     (Pattern (Atom 2894069760 4290772992) [],
      decode_inner_F126 stp_q_ldstpair_post),
     (Pattern (Atom 763363328 4290772992) [],
      decode_inner_F131 stp_s_ldstpair_pre),
     (Pattern (Atom 1837105152 4290772992) [],
      decode_inner_F129 stp_d_ldstpair_pre),
     (Pattern (Atom 2910846976 4290772992) [],
      decode_inner_F130 stp_q_ldstpair_pre),
     (Pattern (Atom 754974720 4290772992) [],
      decode_inner_F136 stp_s_ldstpair_off),
     (Pattern (Atom 1828716544 4290772992) [],
      decode_inner_F134 stp_d_ldstpair_off),
     (Pattern (Atom 2902458368 4290772992) [],
      decode_inner_F135 stp_q_ldstpair_off),
     (Pattern (Atom 1006633984 4292873216) [],
      decode_inner_F75 str_b_ldst_immpost),
     (Pattern (Atom 2080375808 4292873216) [],
      decode_inner_F79 str_h_ldst_immpost),
     (Pattern (Atom 3154117632 4292873216) [],
      decode_inner_F82 str_s_ldst_immpost),
     (Pattern (Atom 4227859456 4292873216) [],
      decode_inner_F77 str_d_ldst_immpost),
     (Pattern (Atom 1015022592 4292873216) [],
      decode_inner_F80 str_q_ldst_immpost),
     (Pattern (Atom 1006636032 4292873216) [],
      decode_inner_F88 str_b_ldst_immpre),
     (Pattern (Atom 2080377856 4292873216) [],
      decode_inner_F90 str_h_ldst_immpre),
     (Pattern (Atom 3154119680 4292873216) [],
      decode_inner_F92 str_s_ldst_immpre),
     (Pattern (Atom 4227861504 4292873216) [],
      decode_inner_F89 str_d_ldst_immpre),
     (Pattern (Atom 1015024640 4292873216) [],
      decode_inner_F91 str_q_ldst_immpre),
     (Pattern (Atom 1023410176 4290772992) [],
      decode_inner_F97 str_b_ldst_pos),
     (Pattern (Atom 2097152000 4290772992) [],
      decode_inner_F101 str_h_ldst_pos),
     (Pattern (Atom 3170893824 4290772992) [],
      decode_inner_F105 str_s_ldst_pos),
     (Pattern (Atom 4244635648 4290772992) [],
      decode_inner_F99 str_d_ldst_pos),
     (Pattern (Atom 1031798784 4290772992) [],
      decode_inner_F103 str_q_ldst_pos),
     (Pattern (Atom 1008732160 4292873216) [Atom 24576 57344],
      decode_inner_F186 str_b_ldst_regoff),
     (Pattern (Atom 1008756736 4292930560) [],
      decode_inner_F158 str_bl_ldst_regoff),
     (Pattern (Atom 2082473984 4292873216) [],
      decode_inner_F189 str_h_ldst_regoff),
     (Pattern (Atom 3156215808 4292873216) [],
      decode_inner_F191 str_s_ldst_regoff),
     (Pattern (Atom 4229957632 4292873216) [],
      decode_inner_F188 str_d_ldst_regoff),
     (Pattern (Atom 1017120768 4292873216) [],
      decode_inner_F190 str_q_ldst_regoff),
     (Pattern (Atom 1006632960 4292873216) [],
      decode_inner_F98 stur_b_ldst_unscaled),
     (Pattern (Atom 2080374784 4292873216) [],
      decode_inner_F102 stur_h_ldst_unscaled),
     (Pattern (Atom 3154116608 4292873216) [],
      decode_inner_F106 stur_s_ldst_unscaled),
     (Pattern (Atom 4227858432 4292873216) [],
      decode_inner_F100 stur_d_ldst_unscaled),
     (Pattern (Atom 1015021568 4292873216) [],
      decode_inner_F104 stur_q_ldst_unscaled),
     (Pattern (Atom 2116060160 4280351744) [],
      decode_inner_F70 sub_asisdsame_only),
     (Pattern (Atom 773882880 3206609920) [],
      decode_inner_F116 sub_asimdsame_only),
     (Pattern (Atom 237002752 3206609920) [],
      decode_inner_F151 subhn_asimddiff_n),
     (Pattern (Atom 1579169792 4282383360) [],
      decode_inner_F33 suqadd_asisdmisc_r),
     (Pattern (Atom 236992512 3208641536) [],
      decode_inner_F49 suqadd_asimdmisc_r),
     (Pattern (Atom 234889216 3219192832) [],
      decode_inner_F181 tbl_asimdtbl_l2_2),
     (Pattern (Atom 234897408 3219192832) [],
      decode_inner_F207 tbl_asimdtbl_l3_3),
     (Pattern (Atom 234905600 3219192832) [],
      decode_inner_F218 tbl_asimdtbl_l4_4),
     (Pattern (Atom 234881024 3219192832) [],
      decode_inner_F143 tbl_asimdtbl_l1_1),
     (Pattern (Atom 234893312 3219192832) [],
      decode_inner_F181 tbx_asimdtbl_l2_2),
     (Pattern (Atom 234901504 3219192832) [],
      decode_inner_F207 tbx_asimdtbl_l3_3),
     (Pattern (Atom 234909696 3219192832) [],
      decode_inner_F218 tbx_asimdtbl_l4_4),
     (Pattern (Atom 234885120 3219192832) [],
      decode_inner_F143 tbx_asimdtbl_l1_1),
     (Pattern (Atom 234891264 3206609920) [],
      decode_inner_F116 trn1_asimdperm_only),
     (Pattern (Atom 234907648 3206609920) [],
      decode_inner_F116 trn2_asimdperm_only),
     (Pattern (Atom 773880832 3206609920) [],
      decode_inner_F116 uaba_asimdsame_only),
     (Pattern (Atom 773869568 3206609920) [],
      decode_inner_F150 uabal_asimddiff_l),
     (Pattern (Atom 773878784 3206609920) [],
      decode_inner_F116 uabd_asimdsame_only),
     (Pattern (Atom 773877760 3206609920) [],
      decode_inner_F150 uabdl_asimddiff_l),
     (Pattern (Atom 773875712 3208641536) [],
      decode_inner_F60 uadalp_asimdmisc_p),
     (Pattern (Atom 773849088 3206609920) [],
      decode_inner_F150 uaddl_asimddiff_l),
     (Pattern (Atom 773859328 3208641536) [],
      decode_inner_F60 uaddlp_asimdmisc_p),
     (Pattern (Atom 774912000 3208641536) [],
      decode_inner_F41 uaddlv_asimdall_only),
     (Pattern (Atom 773853184 3206609920) [],
      decode_inner_F149 uaddw_asimddiff_w),
     (Pattern (Atom 516096000 4294901760) [],
      decode_inner_F55 ucvtf_h32_float2fix),
     (Pattern (Atom 503513088 4294901760) [],
      decode_inner_F57 ucvtf_s32_float2fix),
     (Pattern (Atom 507707392 4294901760) [],
      decode_inner_F53 ucvtf_d32_float2fix),
     (Pattern (Atom 2663579648 4294901760) [],
      decode_inner_F56 ucvtf_h64_float2fix),
     (Pattern (Atom 2650996736 4294901760) [],
      decode_inner_F58 ucvtf_s64_float2fix),
     (Pattern (Atom 2655191040 4294901760) [],
      decode_inner_F54 ucvtf_d64_float2fix),
     (Pattern (Atom 518193152 4294966272) [],
      decode_inner_F10 ucvtf_h32_float2int),
     (Pattern (Atom 505610240 4294966272) [],
      decode_inner_F17 ucvtf_s32_float2int),
     (Pattern (Atom 509804544 4294966272) [],
      decode_inner_F3 ucvtf_d32_float2int),
     (Pattern (Atom 2665676800 4294966272) [],
      decode_inner_F11 ucvtf_h64_float2int),
     (Pattern (Atom 2653093888 4294966272) [],
      decode_inner_F18 ucvtf_s64_float2int),
     (Pattern (Atom 2657288192 4294966272) [],
      decode_inner_F4 ucvtf_d64_float2int),
     (Pattern (Atom 2130764800 4286643200) [Atom 0 7864320],
      decode_inner_F83 ucvtf_asisdshf_c),
     (Pattern (Atom 788587520 3212901376) [Atom 0 7864320],
      decode_inner_F114 ucvtf_asimdshf_c),
     (Pattern (Atom 2121914368 4294966272) [],
      decode_inner_F8 ucvtf_asisdmiscfp16_r),
     (Pattern (Atom 2116147200 4290771968) [],
      decode_inner_F33 ucvtf_asisdmisc_r),
     (Pattern (Atom 779737088 3221224448) [],
      decode_inner_F49 ucvtf_asimdmiscfp16_r),
     (Pattern (Atom 773969920 3217030144) [],
      decode_inner_F49 ucvtf_asimdmisc_r),
     (Pattern (Atom 788586496 3204510720) [],
      decode_inner_F162 udot_asimdelem_d),
     (Pattern (Atom 771789824 3206609920) [],
      decode_inner_F128 udot_asimdsame2_d),
     (Pattern (Atom 773850112 3206609920) [],
      decode_inner_F116 uhadd_asimdsame_only),
     (Pattern (Atom 773858304 3206609920) [],
      decode_inner_F116 uhsub_asimdsame_only),
     (Pattern (Atom 773874688 3206609920) [],
      decode_inner_F116 umax_asimdsame_only),
     (Pattern (Atom 773891072 3206609920) [],
      decode_inner_F116 umaxp_asimdsame_only),
     (Pattern (Atom 774940672 3208641536) [],
      decode_inner_F41 umaxv_asimdall_only),
     (Pattern (Atom 773876736 3206609920) [],
      decode_inner_F116 umin_asimdsame_only),
     (Pattern (Atom 773893120 3206609920) [],
      decode_inner_F116 uminp_asimdsame_only),
     (Pattern (Atom 775006208 3208641536) [],
      decode_inner_F41 uminv_asimdall_only),
     (Pattern (Atom 788537344 3204510720) [],
      decode_inner_F174 umlal_asimdelem_l),
     (Pattern (Atom 773881856 3206609920) [],
      decode_inner_F150 umlal_asimddiff_l),
     (Pattern (Atom 788553728 3204510720) [],
      decode_inner_F174 umlsl_asimdelem_l),
     (Pattern (Atom 773890048 3206609920) [],
      decode_inner_F150 umlsl_asimddiff_l),
     (Pattern (Atom 234896384 4292934656) [],
      decode_inner_F86 umov_asimdins_w_w),
     (Pattern (Atom 1309162496 4293917696) [],
      decode_inner_F87 umov_asimdins_x_x),
     (Pattern (Atom 788570112 3204510720) [],
      decode_inner_F174 umull_asimdelem_l),
     (Pattern (Atom 773898240 3206609920) [],
      decode_inner_F150 umull_asimddiff_l),
     (Pattern (Atom 2116029440 4280351744) [],
      decode_inner_F70 uqadd_asisdsame_only),
     (Pattern (Atom 773852160 3206609920) [],
      decode_inner_F116 uqadd_asimdsame_only),
     (Pattern (Atom 2116049920 4280351744) [],
      decode_inner_F70 uqrshl_asisdsame_only),
     (Pattern (Atom 773872640 3206609920) [],
      decode_inner_F116 uqrshl_asimdsame_only),
     (Pattern (Atom 2130746368 4286643200) [Atom 0 7864320],
      decode_inner_F107 uqrshrn_asisdshf_n),
     (Pattern (Atom 788569088 3212901376) [Atom 0 7864320],
      decode_inner_F138 uqrshrn_asimdshf_n),
     (Pattern (Atom 2130736128 4286643200) [Atom 0 7864320],
      decode_inner_F84 uqshl_asisdshf_r),
     (Pattern (Atom 788558848 3212901376) [Atom 0 7864320],
      decode_inner_F115 uqshl_asimdshf_r),
     (Pattern (Atom 2116045824 4280351744) [],
      decode_inner_F70 uqshl_asisdsame_only),
     (Pattern (Atom 773868544 3206609920) [],
      decode_inner_F116 uqshl_asimdsame_only),
     (Pattern (Atom 2130744320 4286643200) [Atom 0 7864320],
      decode_inner_F107 uqshrn_asisdshf_n),
     (Pattern (Atom 788567040 3212901376) [Atom 0 7864320],
      decode_inner_F138 uqshrn_asimdshf_n),
     (Pattern (Atom 2116037632 4280351744) [],
      decode_inner_F70 uqsub_asisdsame_only),
     (Pattern (Atom 773860352 3206609920) [],
      decode_inner_F116 uqsub_asimdsame_only),
     (Pattern (Atom 2116110336 4282383360) [],
      decode_inner_F42 uqxtn_asisdmisc_n),
     (Pattern (Atom 773933056 3208641536) [],
      decode_inner_F74 uqxtn_asimdmisc_n),
     (Pattern (Atom 245483520 3217030144) [],
      decode_inner_F49 urecpe_asimdmisc_r),
     (Pattern (Atom 773854208 3206609920) [],
      decode_inner_F116 urhadd_asimdsame_only),
     (Pattern (Atom 2116047872 4280351744) [],
      decode_inner_F70 urshl_asisdsame_only),
     (Pattern (Atom 773870592 3206609920) [],
      decode_inner_F116 urshl_asimdsame_only),
     (Pattern (Atom 2130715648 4286643200) [Atom 0 7864320],
      decode_inner_F84 urshr_asisdshf_r),
     (Pattern (Atom 788538368 3212901376) [Atom 0 7864320],
      decode_inner_F115 urshr_asimdshf_r),
     (Pattern (Atom 782354432 3217030144) [],
      decode_inner_F49 ursqrte_asimdmisc_r),
     (Pattern (Atom 2130719744 4286643200) [Atom 0 7864320],
      decode_inner_F84 ursra_asisdshf_r),
     (Pattern (Atom 788542464 3212901376) [Atom 0 7864320],
      decode_inner_F115 ursra_asimdshf_r),
     (Pattern (Atom 2116043776 4280351744) [],
      decode_inner_F70 ushl_asisdsame_only),
     (Pattern (Atom 773866496 3206609920) [],
      decode_inner_F116 ushl_asimdsame_only),
     (Pattern (Atom 788571136 3212901376) [Atom 0 7864320],
      decode_inner_F137 ushll_asimdshf_l),
     (Pattern (Atom 2130707456 4286643200) [Atom 0 7864320],
      decode_inner_F84 ushr_asisdshf_r),
     (Pattern (Atom 788530176 3212901376) [Atom 0 7864320],
      decode_inner_F115 ushr_asimdshf_r),
     (Pattern (Atom 2116040704 4282383360) [],
      decode_inner_F33 usqadd_asisdmisc_r),
     (Pattern (Atom 773863424 3208641536) [],
      decode_inner_F49 usqadd_asimdmisc_r),
     (Pattern (Atom 2130711552 4286643200) [Atom 0 7864320],
      decode_inner_F84 usra_asisdshf_r),
     (Pattern (Atom 788534272 3212901376) [Atom 0 7864320],
      decode_inner_F115 usra_asimdshf_r),
     (Pattern (Atom 773857280 3206609920) [],
      decode_inner_F150 usubl_asimddiff_l),
     (Pattern (Atom 773861376 3206609920) [],
      decode_inner_F149 usubw_asimddiff_w),
     (Pattern (Atom 234887168 3206609920) [],
      decode_inner_F116 uzp1_asimdperm_only),
     (Pattern (Atom 234903552 3206609920) [],
      decode_inner_F116 uzp2_asimdperm_only),
     (Pattern (Atom 3464495104 4292870144) [],
      decode_inner_F140 xar_vvv2_crypto3_imm6),
     (Pattern (Atom 237053952 3208641536) [],
      decode_inner_F74 xtn_asimdmisc_n),
     (Pattern (Atom 234895360 3206609920) [],
      decode_inner_F116 zip1_asimdperm_only),
     (Pattern (Atom 234911744 3206609920) [],
      decode_inner_F116 zip2_asimdperm_only)]

decode_inner_B0 :: Insn -> Word32 -> Decode Insn
decode_inner_B0 f w = decode_B0 f

decode_inner_B1 :: Insn -> Word32 -> Decode Insn
decode_inner_B1 f w = decode_B1 f

decode_inner_B2 :: Insn -> Word32 -> Decode Insn
decode_inner_B2 f w = decode_B2 f

decode_inner_B3 :: Insn -> Word32 -> Decode Insn
decode_inner_B3 f w = decode_B3 f

decode_inner_B4 :: Insn -> Word32 -> Decode Insn
decode_inner_B4 f w = decode_B4 f

decode_inner_B5 :: Insn -> Word32 -> Decode Insn
decode_inner_B5 f w = decode_B5 f

decode_inner_B6 :: Insn -> Word32 -> Decode Insn
decode_inner_B6 f w = decode_B6 f

decode_inner_B7 :: Insn -> Word32 -> Decode Insn
decode_inner_B7 f w = decode_B7 f

decode_inner_B8 :: Insn -> Word32 -> Decode Insn
decode_inner_B8 f w = decode_B8 f

decode_inner_B9 :: Insn -> Word32 -> Decode Insn
decode_inner_B9 f w = decode_B9 f

decode_inner_B10 :: Insn -> Word32 -> Decode Insn
decode_inner_B10 f w = decode_B10 f

decode_inner_B11 :: Insn -> Word32 -> Decode Insn
decode_inner_B11 f w = decode_B11 f

decode_inner_B12 :: (Xn -> I 21 -> Insn) -> Word32 -> Decode Insn
decode_inner_B12 f w
  = decode_B12 f (slice w 0) (slice w 5) (slice w 29)

decode_inner_B13 :: Insn -> Word32 -> Decode Insn
decode_inner_B13 f w = decode_B13 f

decode_inner_B14 :: Insn -> Word32 -> Decode Insn
decode_inner_B14 f w = decode_B14 f

decode_inner_B15 :: Insn -> Word32 -> Decode Insn
decode_inner_B15 f w = decode_B15 f

decode_inner_B16 :: Insn -> Word32 -> Decode Insn
decode_inner_B16 f w = decode_B16 f

decode_inner_B17 :: Insn -> Word32 -> Decode Insn
decode_inner_B17 f w = decode_B17 f

decode_inner_B18 :: Insn -> Word32 -> Decode Insn
decode_inner_B18 f w = decode_B18 f

decode_inner_B19 :: Insn -> Word32 -> Decode Insn
decode_inner_B19 f w = decode_B19 f

decode_inner_B20 :: Insn -> Word32 -> Decode Insn
decode_inner_B20 f w = decode_B20 f

decode_inner_B21 :: Insn -> Word32 -> Decode Insn
decode_inner_B21 f w = decode_B21 f

decode_inner_B22 :: Insn -> Word32 -> Decode Insn
decode_inner_B22 f w = decode_B22 f

decode_inner_B23 :: Insn -> Word32 -> Decode Insn
decode_inner_B23 f w = decode_B23 f

decode_inner_B24 :: Insn -> Word32 -> Decode Insn
decode_inner_B24 f w = decode_B24 f

decode_inner_B25 :: Insn -> Word32 -> Decode Insn
decode_inner_B25 f w = decode_B25 f

decode_inner_B26 :: Insn -> Word32 -> Decode Insn
decode_inner_B26 f w = decode_B26 f

decode_inner_B27 :: Insn -> Word32 -> Decode Insn
decode_inner_B27 f w = decode_B27 f

decode_inner_B28 :: Insn -> Word32 -> Decode Insn
decode_inner_B28 f w = decode_B28 f

decode_inner_B29 :: Insn -> Word32 -> Decode Insn
decode_inner_B29 f w = decode_B29 f

decode_inner_B30 :: Insn -> Word32 -> Decode Insn
decode_inner_B30 f w = decode_B30 f

decode_inner_B31 :: Insn -> Word32 -> Decode Insn
decode_inner_B31 f w = decode_B31 f

decode_inner_B32 :: Insn -> Word32 -> Decode Insn
decode_inner_B32 f w = decode_B32 f

decode_inner_B33 :: Insn -> Word32 -> Decode Insn
decode_inner_B33 f w = decode_B33 f

decode_inner_B34 :: Insn -> Word32 -> Decode Insn
decode_inner_B34 f w = decode_B34 f

decode_inner_B35 :: Insn -> Word32 -> Decode Insn
decode_inner_B35 f w = decode_B35 f

decode_inner_B36 :: Insn -> Word32 -> Decode Insn
decode_inner_B36 f w = decode_B36 f

decode_inner_B37 :: Insn -> Word32 -> Decode Insn
decode_inner_B37 f w = decode_B37 f

decode_inner_B38 ::
                 (Wn -> Wn -> Wn -> Cond -> Insn) -> Word32 -> Decode Insn
decode_inner_B38 f w
  = decode_B38 f (slice w 0) (slice w 5) (slice w 16) (slice w 12)

decode_inner_B39 :: Insn -> Word32 -> Decode Insn
decode_inner_B39 f w = decode_B39 f

decode_inner_B40 :: Insn -> Word32 -> Decode Insn
decode_inner_B40 f w = decode_B40 f

decode_inner_B41 :: Insn -> Word32 -> Decode Insn
decode_inner_B41 f w = decode_B41 f

decode_inner_B42 :: Insn -> Word32 -> Decode Insn
decode_inner_B42 f w = decode_B42 f

decode_inner_B43 :: Insn -> Word32 -> Decode Insn
decode_inner_B43 f w = decode_B43 f

decode_inner_B44 :: Insn -> Word32 -> Decode Insn
decode_inner_B44 f w = decode_B44 f

decode_inner_B45 :: Insn -> Word32 -> Decode Insn
decode_inner_B45 f w = decode_B45 f

decode_inner_B46 :: Insn -> Word32 -> Decode Insn
decode_inner_B46 f w = decode_B46 f

decode_inner_B47 :: Insn -> Word32 -> Decode Insn
decode_inner_B47 f w = decode_B47 f

decode_inner_B48 :: Insn -> Word32 -> Decode Insn
decode_inner_B48 f w = decode_B48 f

decode_inner_B49 :: Insn -> Word32 -> Decode Insn
decode_inner_B49 f w = decode_B49 f

decode_inner_B50 :: Insn -> Word32 -> Decode Insn
decode_inner_B50 f w = decode_B50 f

decode_inner_B51 ::
                 (Xn -> XnSP -> W 12 -> Insn) -> Word32 -> Decode Insn
decode_inner_B51 f w
  = decode_B51 f (slice w 0) (slice w 5) (slice w 10)

decode_inner_B52 :: Insn -> Word32 -> Decode Insn
decode_inner_B52 f w = decode_B52 f

decode_inner_B53 :: Insn -> Word32 -> Decode Insn
decode_inner_B53 f w = decode_B53 f

decode_inner_B54 :: Insn -> Word32 -> Decode Insn
decode_inner_B54 f w = decode_B54 f

decode_inner_B55 :: Insn -> Word32 -> Decode Insn
decode_inner_B55 f w = decode_B55 f

decode_inner_B56 :: Insn -> Word32 -> Decode Insn
decode_inner_B56 f w = decode_B56 f

decode_inner_B57 :: Insn -> Word32 -> Decode Insn
decode_inner_B57 f w = decode_B57 f

decode_inner_B58 :: Insn -> Word32 -> Decode Insn
decode_inner_B58 f w = decode_B58 f

decode_inner_B59 :: Insn -> Word32 -> Decode Insn
decode_inner_B59 f w = decode_B59 f

decode_inner_B60 :: Insn -> Word32 -> Decode Insn
decode_inner_B60 f w = decode_B60 f

decode_inner_B61 :: Insn -> Word32 -> Decode Insn
decode_inner_B61 f w = decode_B61 f

decode_inner_B62 :: Insn -> Word32 -> Decode Insn
decode_inner_B62 f w = decode_B62 f

decode_inner_B63 :: Insn -> Word32 -> Decode Insn
decode_inner_B63 f w = decode_B63 f

decode_inner_B64 :: Insn -> Word32 -> Decode Insn
decode_inner_B64 f w = decode_B64 f

decode_inner_B65 :: Insn -> Word32 -> Decode Insn
decode_inner_B65 f w = decode_B65 f

decode_inner_B66 :: Insn -> Word32 -> Decode Insn
decode_inner_B66 f w = decode_B66 f

decode_inner_B67 ::
                 (Xn -> XnSP -> W 12 -> LSL_12 -> Insn) -> Word32 -> Decode Insn
decode_inner_B67 f w
  = decode_B67 f (slice w 0) (slice w 5) (slice w 10) (slice w 22)

decode_inner_B68 ::
                 (Xn -> Xn -> XnSP -> I 7 -> Insn) -> Word32 -> Decode Insn
decode_inner_B68 f w
  = decode_B68 f (slice w 0) (slice w 10) (slice w 5) (slice w 15)

decode_inner_B69 :: Insn -> Word32 -> Decode Insn
decode_inner_B69 f w = decode_B69 f

decode_inner_B70 ::
                 (Wn -> WnSP -> W 12 -> LSL_12 -> Insn) -> Word32 -> Decode Insn
decode_inner_B70 f w
  = decode_B70 f (slice w 0) (slice w 5) (slice w 10) (slice w 22)

decode_inner_B71 :: Insn -> Word32 -> Decode Insn
decode_inner_B71 f w = decode_B71 f

decode_inner_B72 ::
                 (Xn -> Xn -> XnSP -> I 7 -> Insn) -> Word32 -> Decode Insn
decode_inner_B72 f w
  = decode_B72 f (slice w 0) (slice w 10) (slice w 5) (slice w 15)

decode_inner_B73 :: Insn -> Word32 -> Decode Insn
decode_inner_B73 f w = decode_B73 f

decode_inner_B74 :: Insn -> Word32 -> Decode Insn
decode_inner_B74 f w = decode_B74 f

decode_inner_B75 :: Insn -> Word32 -> Decode Insn
decode_inner_B75 f w = decode_B75 f

decode_inner_B76 ::
                 (XnSP -> XnSP -> W 12 -> LSL_12 -> Insn) -> Word32 -> Decode Insn
decode_inner_B76 f w
  = decode_B76 f (slice w 0) (slice w 5) (slice w 10) (slice w 22)

decode_inner_B77 ::
                 (Wn -> Wn -> Wn -> Shift32 -> Insn) -> Word32 -> Decode Insn
decode_inner_B77 f w
  = decode_B77 f (slice w 0) (slice w 5) (slice w 16) (slice w 22)
      (slice w 10)

decode_inner_B78 :: Insn -> Word32 -> Decode Insn
decode_inner_B78 f w = decode_B78 f

decode_inner_B79 :: Insn -> Word32 -> Decode Insn
decode_inner_B79 f w = decode_B79 f

decode_inner_B80 :: Insn -> Word32 -> Decode Insn
decode_inner_B80 f w = decode_B80 f

decode_inner_B81 :: Insn -> Word32 -> Decode Insn
decode_inner_B81 f w = decode_B81 f

decode_inner_B82 :: Insn -> Word32 -> Decode Insn
decode_inner_B82 f w = decode_B82 f

decode_inner_B83 :: Insn -> Word32 -> Decode Insn
decode_inner_B83 f w = decode_B83 f

decode_inner_B84 :: Insn -> Word32 -> Decode Insn
decode_inner_B84 f w = decode_B84 f

decode_inner_B85 :: Insn -> Word32 -> Decode Insn
decode_inner_B85 f w = decode_B85 f

decode_inner_B86 :: Insn -> Word32 -> Decode Insn
decode_inner_B86 f w = decode_B86 f

decode_inner_B87 :: Insn -> Word32 -> Decode Insn
decode_inner_B87 f w = decode_B87 f

decode_inner_B88 :: Insn -> Word32 -> Decode Insn
decode_inner_B88 f w = decode_B88 f

decode_inner_B89 :: Insn -> Word32 -> Decode Insn
decode_inner_B89 f w = decode_B89 f

decode_inner_B90 :: Insn -> Word32 -> Decode Insn
decode_inner_B90 f w = decode_B90 f

decode_inner_B91 :: Insn -> Word32 -> Decode Insn
decode_inner_B91 f w = decode_B91 f

decode_inner_B92 :: Insn -> Word32 -> Decode Insn
decode_inner_B92 f w = decode_B92 f

decode_inner_B93 :: Insn -> Word32 -> Decode Insn
decode_inner_B93 f w = decode_B93 f

decode_inner_B94 :: Insn -> Word32 -> Decode Insn
decode_inner_B94 f w = decode_B94 f

decode_inner_B95 :: Insn -> Word32 -> Decode Insn
decode_inner_B95 f w = decode_B95 f

decode_inner_B96 :: Insn -> Word32 -> Decode Insn
decode_inner_B96 f w = decode_B96 f

decode_inner_F0 :: Insn -> Word32 -> Decode Insn
decode_inner_F0 f w = decode_F0 f

decode_inner_F1 :: Insn -> Word32 -> Decode Insn
decode_inner_F1 f w = decode_F1 f

decode_inner_F2 :: Insn -> Word32 -> Decode Insn
decode_inner_F2 f w = decode_F2 f

decode_inner_F3 :: Insn -> Word32 -> Decode Insn
decode_inner_F3 f w = decode_F3 f

decode_inner_F4 :: Insn -> Word32 -> Decode Insn
decode_inner_F4 f w = decode_F4 f

decode_inner_F5 :: Insn -> Word32 -> Decode Insn
decode_inner_F5 f w = decode_F5 f

decode_inner_F6 :: Insn -> Word32 -> Decode Insn
decode_inner_F6 f w = decode_F6 f

decode_inner_F7 :: Insn -> Word32 -> Decode Insn
decode_inner_F7 f w = decode_F7 f

decode_inner_F8 :: Insn -> Word32 -> Decode Insn
decode_inner_F8 f w = decode_F8 f

decode_inner_F9 :: Insn -> Word32 -> Decode Insn
decode_inner_F9 f w = decode_F9 f

decode_inner_F10 :: Insn -> Word32 -> Decode Insn
decode_inner_F10 f w = decode_F10 f

decode_inner_F11 :: Insn -> Word32 -> Decode Insn
decode_inner_F11 f w = decode_F11 f

decode_inner_F12 :: Insn -> Word32 -> Decode Insn
decode_inner_F12 f w = decode_F12 f

decode_inner_F13 :: Insn -> Word32 -> Decode Insn
decode_inner_F13 f w = decode_F13 f

decode_inner_F14 :: Insn -> Word32 -> Decode Insn
decode_inner_F14 f w = decode_F14 f

decode_inner_F15 :: Insn -> Word32 -> Decode Insn
decode_inner_F15 f w = decode_F15 f

decode_inner_F16 :: Insn -> Word32 -> Decode Insn
decode_inner_F16 f w = decode_F16 f

decode_inner_F17 :: Insn -> Word32 -> Decode Insn
decode_inner_F17 f w = decode_F17 f

decode_inner_F18 :: Insn -> Word32 -> Decode Insn
decode_inner_F18 f w = decode_F18 f

decode_inner_F19 :: Insn -> Word32 -> Decode Insn
decode_inner_F19 f w = decode_F19 f

decode_inner_F20 :: Insn -> Word32 -> Decode Insn
decode_inner_F20 f w = decode_F20 f

decode_inner_F21 :: Insn -> Word32 -> Decode Insn
decode_inner_F21 f w = decode_F21 f

decode_inner_F22 :: Insn -> Word32 -> Decode Insn
decode_inner_F22 f w = decode_F22 f

decode_inner_F23 :: Insn -> Word32 -> Decode Insn
decode_inner_F23 f w = decode_F23 f

decode_inner_F24 :: Insn -> Word32 -> Decode Insn
decode_inner_F24 f w = decode_F24 f

decode_inner_F25 :: Insn -> Word32 -> Decode Insn
decode_inner_F25 f w = decode_F25 f

decode_inner_F26 :: Insn -> Word32 -> Decode Insn
decode_inner_F26 f w = decode_F26 f

decode_inner_F27 :: Insn -> Word32 -> Decode Insn
decode_inner_F27 f w = decode_F27 f

decode_inner_F28 :: Insn -> Word32 -> Decode Insn
decode_inner_F28 f w = decode_F28 f

decode_inner_F29 :: Insn -> Word32 -> Decode Insn
decode_inner_F29 f w = decode_F29 f

decode_inner_F30 :: Insn -> Word32 -> Decode Insn
decode_inner_F30 f w = decode_F30 f

decode_inner_F31 :: Insn -> Word32 -> Decode Insn
decode_inner_F31 f w = decode_F31 f

decode_inner_F32 :: Insn -> Word32 -> Decode Insn
decode_inner_F32 f w = decode_F32 f

decode_inner_F33 :: Insn -> Word32 -> Decode Insn
decode_inner_F33 f w = decode_F33 f

decode_inner_F34 :: Insn -> Word32 -> Decode Insn
decode_inner_F34 f w = decode_F34 f

decode_inner_F35 :: Insn -> Word32 -> Decode Insn
decode_inner_F35 f w = decode_F35 f

decode_inner_F36 :: Insn -> Word32 -> Decode Insn
decode_inner_F36 f w = decode_F36 f

decode_inner_F37 :: Insn -> Word32 -> Decode Insn
decode_inner_F37 f w = decode_F37 f

decode_inner_F38 :: Insn -> Word32 -> Decode Insn
decode_inner_F38 f w = decode_F38 f

decode_inner_F39 :: Insn -> Word32 -> Decode Insn
decode_inner_F39 f w = decode_F39 f

decode_inner_F40 :: Insn -> Word32 -> Decode Insn
decode_inner_F40 f w = decode_F40 f

decode_inner_F41 :: Insn -> Word32 -> Decode Insn
decode_inner_F41 f w = decode_F41 f

decode_inner_F42 :: Insn -> Word32 -> Decode Insn
decode_inner_F42 f w = decode_F42 f

decode_inner_F43 :: Insn -> Word32 -> Decode Insn
decode_inner_F43 f w = decode_F43 f

decode_inner_F44 :: Insn -> Word32 -> Decode Insn
decode_inner_F44 f w = decode_F44 f

decode_inner_F45 :: Insn -> Word32 -> Decode Insn
decode_inner_F45 f w = decode_F45 f

decode_inner_F46 :: Insn -> Word32 -> Decode Insn
decode_inner_F46 f w = decode_F46 f

decode_inner_F47 :: Insn -> Word32 -> Decode Insn
decode_inner_F47 f w = decode_F47 f

decode_inner_F48 :: Insn -> Word32 -> Decode Insn
decode_inner_F48 f w = decode_F48 f

decode_inner_F49 :: Insn -> Word32 -> Decode Insn
decode_inner_F49 f w = decode_F49 f

decode_inner_F50 :: Insn -> Word32 -> Decode Insn
decode_inner_F50 f w = decode_F50 f

decode_inner_F51 :: Insn -> Word32 -> Decode Insn
decode_inner_F51 f w = decode_F51 f

decode_inner_F52 :: Insn -> Word32 -> Decode Insn
decode_inner_F52 f w = decode_F52 f

decode_inner_F53 :: Insn -> Word32 -> Decode Insn
decode_inner_F53 f w = decode_F53 f

decode_inner_F54 :: Insn -> Word32 -> Decode Insn
decode_inner_F54 f w = decode_F54 f

decode_inner_F55 :: Insn -> Word32 -> Decode Insn
decode_inner_F55 f w = decode_F55 f

decode_inner_F56 :: Insn -> Word32 -> Decode Insn
decode_inner_F56 f w = decode_F56 f

decode_inner_F57 :: Insn -> Word32 -> Decode Insn
decode_inner_F57 f w = decode_F57 f

decode_inner_F58 :: Insn -> Word32 -> Decode Insn
decode_inner_F58 f w = decode_F58 f

decode_inner_F59 :: Insn -> Word32 -> Decode Insn
decode_inner_F59 f w = decode_F59 f

decode_inner_F60 :: Insn -> Word32 -> Decode Insn
decode_inner_F60 f w = decode_F60 f

decode_inner_F61 :: Insn -> Word32 -> Decode Insn
decode_inner_F61 f w = decode_F61 f

decode_inner_F62 :: Insn -> Word32 -> Decode Insn
decode_inner_F62 f w = decode_F62 f

decode_inner_F63 :: Insn -> Word32 -> Decode Insn
decode_inner_F63 f w = decode_F63 f

decode_inner_F64 :: Insn -> Word32 -> Decode Insn
decode_inner_F64 f w = decode_F64 f

decode_inner_F65 :: Insn -> Word32 -> Decode Insn
decode_inner_F65 f w = decode_F65 f

decode_inner_F66 :: Insn -> Word32 -> Decode Insn
decode_inner_F66 f w = decode_F66 f

decode_inner_F67 :: Insn -> Word32 -> Decode Insn
decode_inner_F67 f w = decode_F67 f

decode_inner_F68 :: Insn -> Word32 -> Decode Insn
decode_inner_F68 f w = decode_F68 f

decode_inner_F69 :: Insn -> Word32 -> Decode Insn
decode_inner_F69 f w = decode_F69 f

decode_inner_F70 :: Insn -> Word32 -> Decode Insn
decode_inner_F70 f w = decode_F70 f

decode_inner_F71 :: Insn -> Word32 -> Decode Insn
decode_inner_F71 f w = decode_F71 f

decode_inner_F72 :: Insn -> Word32 -> Decode Insn
decode_inner_F72 f w = decode_F72 f

decode_inner_F73 :: Insn -> Word32 -> Decode Insn
decode_inner_F73 f w = decode_F73 f

decode_inner_F74 :: Insn -> Word32 -> Decode Insn
decode_inner_F74 f w = decode_F74 f

decode_inner_F75 :: Insn -> Word32 -> Decode Insn
decode_inner_F75 f w = decode_F75 f

decode_inner_F76 :: Insn -> Word32 -> Decode Insn
decode_inner_F76 f w = decode_F76 f

decode_inner_F77 :: Insn -> Word32 -> Decode Insn
decode_inner_F77 f w = decode_F77 f

decode_inner_F78 :: Insn -> Word32 -> Decode Insn
decode_inner_F78 f w = decode_F78 f

decode_inner_F79 :: Insn -> Word32 -> Decode Insn
decode_inner_F79 f w = decode_F79 f

decode_inner_F80 :: Insn -> Word32 -> Decode Insn
decode_inner_F80 f w = decode_F80 f

decode_inner_F81 :: Insn -> Word32 -> Decode Insn
decode_inner_F81 f w = decode_F81 f

decode_inner_F82 :: Insn -> Word32 -> Decode Insn
decode_inner_F82 f w = decode_F82 f

decode_inner_F83 :: Insn -> Word32 -> Decode Insn
decode_inner_F83 f w = decode_F83 f

decode_inner_F84 :: Insn -> Word32 -> Decode Insn
decode_inner_F84 f w = decode_F84 f

decode_inner_F85 :: Insn -> Word32 -> Decode Insn
decode_inner_F85 f w = decode_F85 f

decode_inner_F86 :: Insn -> Word32 -> Decode Insn
decode_inner_F86 f w = decode_F86 f

decode_inner_F87 :: Insn -> Word32 -> Decode Insn
decode_inner_F87 f w = decode_F87 f

decode_inner_F88 :: Insn -> Word32 -> Decode Insn
decode_inner_F88 f w = decode_F88 f

decode_inner_F89 :: Insn -> Word32 -> Decode Insn
decode_inner_F89 f w = decode_F89 f

decode_inner_F90 :: Insn -> Word32 -> Decode Insn
decode_inner_F90 f w = decode_F90 f

decode_inner_F91 :: Insn -> Word32 -> Decode Insn
decode_inner_F91 f w = decode_F91 f

decode_inner_F92 :: Insn -> Word32 -> Decode Insn
decode_inner_F92 f w = decode_F92 f

decode_inner_F93 :: Insn -> Word32 -> Decode Insn
decode_inner_F93 f w = decode_F93 f

decode_inner_F94 :: Insn -> Word32 -> Decode Insn
decode_inner_F94 f w = decode_F94 f

decode_inner_F95 :: Insn -> Word32 -> Decode Insn
decode_inner_F95 f w = decode_F95 f

decode_inner_F96 :: Insn -> Word32 -> Decode Insn
decode_inner_F96 f w = decode_F96 f

decode_inner_F97 :: Insn -> Word32 -> Decode Insn
decode_inner_F97 f w = decode_F97 f

decode_inner_F98 :: Insn -> Word32 -> Decode Insn
decode_inner_F98 f w = decode_F98 f

decode_inner_F99 :: Insn -> Word32 -> Decode Insn
decode_inner_F99 f w = decode_F99 f

decode_inner_F100 :: Insn -> Word32 -> Decode Insn
decode_inner_F100 f w = decode_F100 f

decode_inner_F101 :: Insn -> Word32 -> Decode Insn
decode_inner_F101 f w = decode_F101 f

decode_inner_F102 :: Insn -> Word32 -> Decode Insn
decode_inner_F102 f w = decode_F102 f

decode_inner_F103 :: Insn -> Word32 -> Decode Insn
decode_inner_F103 f w = decode_F103 f

decode_inner_F104 :: Insn -> Word32 -> Decode Insn
decode_inner_F104 f w = decode_F104 f

decode_inner_F105 :: Insn -> Word32 -> Decode Insn
decode_inner_F105 f w = decode_F105 f

decode_inner_F106 :: Insn -> Word32 -> Decode Insn
decode_inner_F106 f w = decode_F106 f

decode_inner_F107 :: Insn -> Word32 -> Decode Insn
decode_inner_F107 f w = decode_F107 f

decode_inner_F108 :: Insn -> Word32 -> Decode Insn
decode_inner_F108 f w = decode_F108 f

decode_inner_F109 :: Insn -> Word32 -> Decode Insn
decode_inner_F109 f w = decode_F109 f

decode_inner_F110 :: Insn -> Word32 -> Decode Insn
decode_inner_F110 f w = decode_F110 f

decode_inner_F111 :: Insn -> Word32 -> Decode Insn
decode_inner_F111 f w = decode_F111 f

decode_inner_F112 :: Insn -> Word32 -> Decode Insn
decode_inner_F112 f w = decode_F112 f

decode_inner_F113 :: Insn -> Word32 -> Decode Insn
decode_inner_F113 f w = decode_F113 f

decode_inner_F114 :: Insn -> Word32 -> Decode Insn
decode_inner_F114 f w = decode_F114 f

decode_inner_F115 :: Insn -> Word32 -> Decode Insn
decode_inner_F115 f w = decode_F115 f

decode_inner_F116 :: Insn -> Word32 -> Decode Insn
decode_inner_F116 f w = decode_F116 f

decode_inner_F117 :: Insn -> Word32 -> Decode Insn
decode_inner_F117 f w = decode_F117 f

decode_inner_F118 :: Insn -> Word32 -> Decode Insn
decode_inner_F118 f w = decode_F118 f

decode_inner_F119 :: Insn -> Word32 -> Decode Insn
decode_inner_F119 f w = decode_F119 f

decode_inner_F120 :: Insn -> Word32 -> Decode Insn
decode_inner_F120 f w = decode_F120 f

decode_inner_F121 :: Insn -> Word32 -> Decode Insn
decode_inner_F121 f w = decode_F121 f

decode_inner_F122 :: Insn -> Word32 -> Decode Insn
decode_inner_F122 f w = decode_F122 f

decode_inner_F123 :: Insn -> Word32 -> Decode Insn
decode_inner_F123 f w = decode_F123 f

decode_inner_F124 :: Insn -> Word32 -> Decode Insn
decode_inner_F124 f w = decode_F124 f

decode_inner_F125 :: Insn -> Word32 -> Decode Insn
decode_inner_F125 f w = decode_F125 f

decode_inner_F126 :: Insn -> Word32 -> Decode Insn
decode_inner_F126 f w = decode_F126 f

decode_inner_F127 :: Insn -> Word32 -> Decode Insn
decode_inner_F127 f w = decode_F127 f

decode_inner_F128 :: Insn -> Word32 -> Decode Insn
decode_inner_F128 f w = decode_F128 f

decode_inner_F129 :: Insn -> Word32 -> Decode Insn
decode_inner_F129 f w = decode_F129 f

decode_inner_F130 :: Insn -> Word32 -> Decode Insn
decode_inner_F130 f w = decode_F130 f

decode_inner_F131 :: Insn -> Word32 -> Decode Insn
decode_inner_F131 f w = decode_F131 f

decode_inner_F132 :: Insn -> Word32 -> Decode Insn
decode_inner_F132 f w = decode_F132 f

decode_inner_F133 :: Insn -> Word32 -> Decode Insn
decode_inner_F133 f w = decode_F133 f

decode_inner_F134 :: Insn -> Word32 -> Decode Insn
decode_inner_F134 f w = decode_F134 f

decode_inner_F135 :: Insn -> Word32 -> Decode Insn
decode_inner_F135 f w = decode_F135 f

decode_inner_F136 :: Insn -> Word32 -> Decode Insn
decode_inner_F136 f w = decode_F136 f

decode_inner_F137 :: Insn -> Word32 -> Decode Insn
decode_inner_F137 f w = decode_F137 f

decode_inner_F138 :: Insn -> Word32 -> Decode Insn
decode_inner_F138 f w = decode_F138 f

decode_inner_F139 :: Insn -> Word32 -> Decode Insn
decode_inner_F139 f w = decode_F139 f

decode_inner_F140 :: Insn -> Word32 -> Decode Insn
decode_inner_F140 f w = decode_F140 f

decode_inner_F141 :: Insn -> Word32 -> Decode Insn
decode_inner_F141 f w = decode_F141 f

decode_inner_F142 :: Insn -> Word32 -> Decode Insn
decode_inner_F142 f w = decode_F142 f

decode_inner_F143 :: Insn -> Word32 -> Decode Insn
decode_inner_F143 f w = decode_F143 f

decode_inner_F144 :: Insn -> Word32 -> Decode Insn
decode_inner_F144 f w = decode_F144 f

decode_inner_F145 :: Insn -> Word32 -> Decode Insn
decode_inner_F145 f w = decode_F145 f

decode_inner_F146 :: Insn -> Word32 -> Decode Insn
decode_inner_F146 f w = decode_F146 f

decode_inner_F147 :: Insn -> Word32 -> Decode Insn
decode_inner_F147 f w = decode_F147 f

decode_inner_F148 :: Insn -> Word32 -> Decode Insn
decode_inner_F148 f w = decode_F148 f

decode_inner_F149 :: Insn -> Word32 -> Decode Insn
decode_inner_F149 f w = decode_F149 f

decode_inner_F150 :: Insn -> Word32 -> Decode Insn
decode_inner_F150 f w = decode_F150 f

decode_inner_F151 :: Insn -> Word32 -> Decode Insn
decode_inner_F151 f w = decode_F151 f

decode_inner_F152 :: Insn -> Word32 -> Decode Insn
decode_inner_F152 f w = decode_F152 f

decode_inner_F153 :: Insn -> Word32 -> Decode Insn
decode_inner_F153 f w = decode_F153 f

decode_inner_F154 :: Insn -> Word32 -> Decode Insn
decode_inner_F154 f w = decode_F154 f

decode_inner_F155 :: Insn -> Word32 -> Decode Insn
decode_inner_F155 f w = decode_F155 f

decode_inner_F156 :: Insn -> Word32 -> Decode Insn
decode_inner_F156 f w = decode_F156 f

decode_inner_F157 :: Insn -> Word32 -> Decode Insn
decode_inner_F157 f w = decode_F157 f

decode_inner_F158 :: Insn -> Word32 -> Decode Insn
decode_inner_F158 f w = decode_F158 f

decode_inner_F159 :: Insn -> Word32 -> Decode Insn
decode_inner_F159 f w = decode_F159 f

decode_inner_F160 :: Insn -> Word32 -> Decode Insn
decode_inner_F160 f w = decode_F160 f

decode_inner_F161 :: Insn -> Word32 -> Decode Insn
decode_inner_F161 f w = decode_F161 f

decode_inner_F162 :: Insn -> Word32 -> Decode Insn
decode_inner_F162 f w = decode_F162 f

decode_inner_F163 :: Insn -> Word32 -> Decode Insn
decode_inner_F163 f w = decode_F163 f

decode_inner_F164 :: Insn -> Word32 -> Decode Insn
decode_inner_F164 f w = decode_F164 f

decode_inner_F165 :: Insn -> Word32 -> Decode Insn
decode_inner_F165 f w = decode_F165 f

decode_inner_F166 :: Insn -> Word32 -> Decode Insn
decode_inner_F166 f w = decode_F166 f

decode_inner_F167 :: Insn -> Word32 -> Decode Insn
decode_inner_F167 f w = decode_F167 f

decode_inner_F168 :: Insn -> Word32 -> Decode Insn
decode_inner_F168 f w = decode_F168 f

decode_inner_F169 :: Insn -> Word32 -> Decode Insn
decode_inner_F169 f w = decode_F169 f

decode_inner_F170 :: Insn -> Word32 -> Decode Insn
decode_inner_F170 f w = decode_F170 f

decode_inner_F171 :: Insn -> Word32 -> Decode Insn
decode_inner_F171 f w = decode_F171 f

decode_inner_F172 :: Insn -> Word32 -> Decode Insn
decode_inner_F172 f w = decode_F172 f

decode_inner_F173 :: Insn -> Word32 -> Decode Insn
decode_inner_F173 f w = decode_F173 f

decode_inner_F174 :: Insn -> Word32 -> Decode Insn
decode_inner_F174 f w = decode_F174 f

decode_inner_F175 :: Insn -> Word32 -> Decode Insn
decode_inner_F175 f w = decode_F175 f

decode_inner_F176 :: Insn -> Word32 -> Decode Insn
decode_inner_F176 f w = decode_F176 f

decode_inner_F177 :: Insn -> Word32 -> Decode Insn
decode_inner_F177 f w = decode_F177 f

decode_inner_F178 :: Insn -> Word32 -> Decode Insn
decode_inner_F178 f w = decode_F178 f

decode_inner_F179 :: Insn -> Word32 -> Decode Insn
decode_inner_F179 f w = decode_F179 f

decode_inner_F180 :: Insn -> Word32 -> Decode Insn
decode_inner_F180 f w = decode_F180 f

decode_inner_F181 :: Insn -> Word32 -> Decode Insn
decode_inner_F181 f w = decode_F181 f

decode_inner_F182 :: Insn -> Word32 -> Decode Insn
decode_inner_F182 f w = decode_F182 f

decode_inner_F183 :: Insn -> Word32 -> Decode Insn
decode_inner_F183 f w = decode_F183 f

decode_inner_F184 :: Insn -> Word32 -> Decode Insn
decode_inner_F184 f w = decode_F184 f

decode_inner_F185 :: Insn -> Word32 -> Decode Insn
decode_inner_F185 f w = decode_F185 f

decode_inner_F186 :: Insn -> Word32 -> Decode Insn
decode_inner_F186 f w = decode_F186 f

decode_inner_F187 :: Insn -> Word32 -> Decode Insn
decode_inner_F187 f w = decode_F187 f

decode_inner_F188 :: Insn -> Word32 -> Decode Insn
decode_inner_F188 f w = decode_F188 f

decode_inner_F189 :: Insn -> Word32 -> Decode Insn
decode_inner_F189 f w = decode_F189 f

decode_inner_F190 :: Insn -> Word32 -> Decode Insn
decode_inner_F190 f w = decode_F190 f

decode_inner_F191 :: Insn -> Word32 -> Decode Insn
decode_inner_F191 f w = decode_F191 f

decode_inner_F192 :: Insn -> Word32 -> Decode Insn
decode_inner_F192 f w = decode_F192 f

decode_inner_F193 :: Insn -> Word32 -> Decode Insn
decode_inner_F193 f w = decode_F193 f

decode_inner_F194 :: Insn -> Word32 -> Decode Insn
decode_inner_F194 f w = decode_F194 f

decode_inner_F195 :: Insn -> Word32 -> Decode Insn
decode_inner_F195 f w = decode_F195 f

decode_inner_F196 :: Insn -> Word32 -> Decode Insn
decode_inner_F196 f w = decode_F196 f

decode_inner_F197 :: Insn -> Word32 -> Decode Insn
decode_inner_F197 f w = decode_F197 f

decode_inner_F198 :: Insn -> Word32 -> Decode Insn
decode_inner_F198 f w = decode_F198 f

decode_inner_F199 :: Insn -> Word32 -> Decode Insn
decode_inner_F199 f w = decode_F199 f

decode_inner_F200 :: Insn -> Word32 -> Decode Insn
decode_inner_F200 f w = decode_F200 f

decode_inner_F201 :: Insn -> Word32 -> Decode Insn
decode_inner_F201 f w = decode_F201 f

decode_inner_F202 :: Insn -> Word32 -> Decode Insn
decode_inner_F202 f w = decode_F202 f

decode_inner_F203 :: Insn -> Word32 -> Decode Insn
decode_inner_F203 f w = decode_F203 f

decode_inner_F204 :: Insn -> Word32 -> Decode Insn
decode_inner_F204 f w = decode_F204 f

decode_inner_F205 :: Insn -> Word32 -> Decode Insn
decode_inner_F205 f w = decode_F205 f

decode_inner_F206 :: Insn -> Word32 -> Decode Insn
decode_inner_F206 f w = decode_F206 f

decode_inner_F207 :: Insn -> Word32 -> Decode Insn
decode_inner_F207 f w = decode_F207 f

decode_inner_F208 :: Insn -> Word32 -> Decode Insn
decode_inner_F208 f w = decode_F208 f

decode_inner_F209 :: Insn -> Word32 -> Decode Insn
decode_inner_F209 f w = decode_F209 f

decode_inner_F210 :: Insn -> Word32 -> Decode Insn
decode_inner_F210 f w = decode_F210 f

decode_inner_F211 :: Insn -> Word32 -> Decode Insn
decode_inner_F211 f w = decode_F211 f

decode_inner_F212 :: Insn -> Word32 -> Decode Insn
decode_inner_F212 f w = decode_F212 f

decode_inner_F213 :: Insn -> Word32 -> Decode Insn
decode_inner_F213 f w = decode_F213 f

decode_inner_F214 :: Insn -> Word32 -> Decode Insn
decode_inner_F214 f w = decode_F214 f

decode_inner_F215 :: Insn -> Word32 -> Decode Insn
decode_inner_F215 f w = decode_F215 f

decode_inner_F216 :: Insn -> Word32 -> Decode Insn
decode_inner_F216 f w = decode_F216 f

decode_inner_F217 :: Insn -> Word32 -> Decode Insn
decode_inner_F217 f w = decode_F217 f

decode_inner_F218 :: Insn -> Word32 -> Decode Insn
decode_inner_F218 f w = decode_F218 f
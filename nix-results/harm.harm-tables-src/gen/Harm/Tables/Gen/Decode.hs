module Harm.Tables.Gen.Decode where
import Harm.Types
import Harm.Tables.Gen.Insn
import Harm.Tables.Logic
import Harm.Tables.Logic.Binary
import Harm.Types.Pattern
import Data.Word

decodeTable :: [(Pattern, Word32 -> Decode Insn)]
decodeTable
  = [(Pattern (Atom 436207616 4292934656) [],
      decode_inner_64 adc_32_addsub_carry),
     (Pattern (Atom 2583691264 4292934656) [],
      decode_inner_66 adc_64_addsub_carry),
     (Pattern (Atom 973078528 4292934656) [],
      decode_inner_64 adcs_32_addsub_carry),
     (Pattern (Atom 3120562176 4292934656) [],
      decode_inner_66 adcs_64_addsub_carry),
     (Pattern (Atom 186646528 4292870144) [],
      decode_inner_271 add_32_addsub_ext),
     (Pattern (Atom 2334130176 4292870144) [],
      decode_inner_272 add_64_addsub_ext),
     (Pattern (Atom 285212672 4278190080) [],
      decode_inner_237 add_32_addsub_imm),
     (Pattern (Atom 2432696320 4278190080) [],
      decode_inner_229 add_64_addsub_imm),
     (Pattern (Atom 184549376 4280287232) [],
      decode_inner_236 add_32_addsub_shift),
     (Pattern (Atom 2332033024 4280287232) [],
      decode_inner_239 add_64_addsub_shift),
     (Pattern (Atom 723517440 4292870144) [],
      decode_inner_259 adds_32s_addsub_ext),
     (Pattern (Atom 2871001088 4292870144) [],
      decode_inner_261 adds_64s_addsub_ext),
     (Pattern (Atom 822083584 4278190080) [],
      decode_inner_207 adds_32s_addsub_imm),
     (Pattern (Atom 2969567232 4278190080) [],
      decode_inner_201 adds_64s_addsub_imm),
     (Pattern (Atom 721420288 4280287232) [],
      decode_inner_236 adds_32_addsub_shift),
     (Pattern (Atom 2868903936 4280287232) [],
      decode_inner_239 adds_64_addsub_shift),
     (Pattern (Atom 268435456 2667577344) [],
      decode_inner_45 adr_only_pcreladdr),
     (Pattern (Atom 2415919104 2667577344) [],
      decode_inner_45 adrp_only_pcreladdr),
     (Pattern (Atom 301989888 4290772992) [],
      decode_inner_105 and_32_log_imm),
     (Pattern (Atom 2449473536 4286578688) [],
      decode_inner_95 and_64_log_imm),
     (Pattern (Atom 167772160 4280287232) [],
      decode_inner_236 and_32_log_shift),
     (Pattern (Atom 2315255808 4280287232) [],
      decode_inner_239 and_64_log_shift),
     (Pattern (Atom 1912602624 4290772992) [],
      decode_inner_71 ands_32s_log_imm),
     (Pattern (Atom 4060086272 4286578688) [],
      decode_inner_72 ands_64s_log_imm),
     (Pattern (Atom 1778384896 4280287232) [],
      decode_inner_236 ands_32_log_shift),
     (Pattern (Atom 3925868544 4280287232) [],
      decode_inner_239 ands_64_log_shift),
     (Pattern (Atom 448800768 4292934656) [],
      decode_inner_64 asrv_32_dp_2src),
     (Pattern (Atom 2596284416 4292934656) [],
      decode_inner_66 asrv_64_dp_2src),
     (Pattern (Atom 3670087680 4294966272) [],
      decode_inner_44 autda_64p_dp_1src),
     (Pattern (Atom 3670096864 4294967264) [],
      decode_inner_1 autdza_64z_dp_1src),
     (Pattern (Atom 3670088704 4294966272) [],
      decode_inner_44 autdb_64p_dp_1src),
     (Pattern (Atom 3670097888 4294967264) [],
      decode_inner_1 autdzb_64z_dp_1src),
     (Pattern (Atom 3670085632 4294966272) [],
      decode_inner_44 autia_64p_dp_1src),
     (Pattern (Atom 3670094816 4294967264) [],
      decode_inner_1 autiza_64z_dp_1src),
     (Pattern (Atom 3573752223 4294967295) [],
      decode_inner_0 autia1716_hi_system),
     (Pattern (Atom 3573752767 4294967295) [],
      decode_inner_0 autiasp_hi_system),
     (Pattern (Atom 3573752735 4294967295) [],
      decode_inner_0 autiaz_hi_system),
     (Pattern (Atom 3670086656 4294966272) [],
      decode_inner_44 autib_64p_dp_1src),
     (Pattern (Atom 3670095840 4294967264) [],
      decode_inner_1 autizb_64z_dp_1src),
     (Pattern (Atom 3573752287 4294967295) [],
      decode_inner_0 autib1716_hi_system),
     (Pattern (Atom 3573752831 4294967295) [],
      decode_inner_0 autibsp_hi_system),
     (Pattern (Atom 3573752799 4294967295) [],
      decode_inner_0 autibz_hi_system),
     (Pattern (Atom 335544320 4227858432) [],
      decode_inner_6 b_only_branch_imm),
     (Pattern (Atom 1409286144 4278190096) [],
      decode_inner_49 b_only_condbranch),
     (Pattern (Atom 855638016 4290772992) [],
      decode_inner_175 bfm_32m_bitfield),
     (Pattern (Atom 3007315968 4290772992) [],
      decode_inner_178 bfm_64m_bitfield),
     (Pattern (Atom 169869312 4280287232) [],
      decode_inner_236 bic_32_log_shift),
     (Pattern (Atom 2317352960 4280287232) [],
      decode_inner_239 bic_64_log_shift),
     (Pattern (Atom 1780482048 4280287232) [],
      decode_inner_236 bics_32_log_shift),
     (Pattern (Atom 3927965696 4280287232) [],
      decode_inner_239 bics_64_log_shift),
     (Pattern (Atom 2483027968 4227858432) [],
      decode_inner_6 bl_only_branch_imm),
     (Pattern (Atom 3594452992 4294966303) [],
      decode_inner_2 blr_64_branch_reg),
     (Pattern (Atom 3594455071 4294966303) [],
      decode_inner_2 blraaz_64_branch_reg),
     (Pattern (Atom 3611232256 4294966272) [],
      decode_inner_46 blraa_64p_branch_reg),
     (Pattern (Atom 3594456095 4294966303) [],
      decode_inner_2 blrabz_64_branch_reg),
     (Pattern (Atom 3611233280 4294966272) [],
      decode_inner_46 blrab_64p_branch_reg),
     (Pattern (Atom 3592355840 4294966303) [],
      decode_inner_2 br_64_branch_reg),
     (Pattern (Atom 3592357919 4294966303) [],
      decode_inner_2 braaz_64_branch_reg),
     (Pattern (Atom 3609135104 4294966272) [],
      decode_inner_46 braa_64p_branch_reg),
     (Pattern (Atom 3592358943 4294966303) [],
      decode_inner_2 brabz_64_branch_reg),
     (Pattern (Atom 3609136128 4294966272) [],
      decode_inner_46 brab_64p_branch_reg),
     (Pattern (Atom 3558866944 4292870175) [],
      decode_inner_4 brk_ex_exception),
     (Pattern (Atom 2292218880 4292934656) [],
      decode_inner_155 cas_c32_ldstexcl),
     (Pattern (Atom 2296413184 4292934656) [],
      decode_inner_155 casa_c32_ldstexcl),
     (Pattern (Atom 2296445952 4292934656) [],
      decode_inner_155 casal_c32_ldstexcl),
     (Pattern (Atom 2292251648 4292934656) [],
      decode_inner_155 casl_c32_ldstexcl),
     (Pattern (Atom 3365960704 4292934656) [],
      decode_inner_159 cas_c64_ldstexcl),
     (Pattern (Atom 3370155008 4292934656) [],
      decode_inner_159 casa_c64_ldstexcl),
     (Pattern (Atom 3370187776 4292934656) [],
      decode_inner_159 casal_c64_ldstexcl),
     (Pattern (Atom 3365993472 4292934656) [],
      decode_inner_159 casl_c64_ldstexcl),
     (Pattern (Atom 148929536 4292934656) [],
      decode_inner_155 casab_c32_ldstexcl),
     (Pattern (Atom 148962304 4292934656) [],
      decode_inner_155 casalb_c32_ldstexcl),
     (Pattern (Atom 144735232 4292934656) [],
      decode_inner_155 casb_c32_ldstexcl),
     (Pattern (Atom 144768000 4292934656) [],
      decode_inner_155 caslb_c32_ldstexcl),
     (Pattern (Atom 1222671360 4292934656) [],
      decode_inner_155 casah_c32_ldstexcl),
     (Pattern (Atom 1222704128 4292934656) [],
      decode_inner_155 casalh_c32_ldstexcl),
     (Pattern (Atom 1218477056 4292934656) [],
      decode_inner_155 cash_c32_ldstexcl),
     (Pattern (Atom 1218509824 4292934656) [],
      decode_inner_155 caslh_c32_ldstexcl),
     (Pattern (Atom 136346624 4292934656) [],
      decode_inner_268 casp_cp32_ldstexcl),
     (Pattern (Atom 140540928 4292934656) [],
      decode_inner_268 caspa_cp32_ldstexcl),
     (Pattern (Atom 140573696 4292934656) [],
      decode_inner_268 caspal_cp32_ldstexcl),
     (Pattern (Atom 136379392 4292934656) [],
      decode_inner_268 caspl_cp32_ldstexcl),
     (Pattern (Atom 1210088448 4292934656) [],
      decode_inner_269 casp_cp64_ldstexcl),
     (Pattern (Atom 1214282752 4292934656) [],
      decode_inner_269 caspa_cp64_ldstexcl),
     (Pattern (Atom 1214315520 4292934656) [],
      decode_inner_269 caspal_cp64_ldstexcl),
     (Pattern (Atom 1210121216 4292934656) [],
      decode_inner_269 caspl_cp64_ldstexcl),
     (Pattern (Atom 889192448 4278190080) [],
      decode_inner_43 cbnz_32_compbranch),
     (Pattern (Atom 3036676096 4278190080) [],
      decode_inner_47 cbnz_64_compbranch),
     (Pattern (Atom 872415232 4278190080) [],
      decode_inner_43 cbz_32_compbranch),
     (Pattern (Atom 3019898880 4278190080) [],
      decode_inner_47 cbz_64_compbranch),
     (Pattern (Atom 977274880 4292873232) [],
      decode_inner_180 ccmn_32_condcmp_imm),
     (Pattern (Atom 3124758528 4292873232) [],
      decode_inner_181 ccmn_64_condcmp_imm),
     (Pattern (Atom 977272832 4292873232) [],
      decode_inner_167 ccmn_32_condcmp_reg),
     (Pattern (Atom 3124756480 4292873232) [],
      decode_inner_168 ccmn_64_condcmp_reg),
     (Pattern (Atom 2051016704 4292873232) [],
      decode_inner_180 ccmp_32_condcmp_imm),
     (Pattern (Atom 4198500352 4292873232) [],
      decode_inner_181 ccmp_64_condcmp_imm),
     (Pattern (Atom 2051014656 4292873232) [],
      decode_inner_167 ccmp_32_condcmp_reg),
     (Pattern (Atom 4198498304 4292873232) [],
      decode_inner_168 ccmp_64_condcmp_reg),
     (Pattern (Atom 3573755999 4294963455) [],
      decode_inner_7 clrex_bn_system),
     (Pattern (Atom 1522537472 4294966272) [],
      decode_inner_32 cls_32_dp_1src),
     (Pattern (Atom 3670021120 4294966272) [],
      decode_inner_36 cls_64_dp_1src),
     (Pattern (Atom 1522536448 4294966272) [],
      decode_inner_32 clz_32_dp_1src),
     (Pattern (Atom 3670020096 4294966272) [],
      decode_inner_36 clz_64_dp_1src),
     (Pattern (Atom 448806912 4292934656) [],
      decode_inner_64 crc32b_32c_dp_2src),
     (Pattern (Atom 448807936 4292934656) [],
      decode_inner_64 crc32h_32c_dp_2src),
     (Pattern (Atom 448808960 4292934656) [],
      decode_inner_64 crc32w_32c_dp_2src),
     (Pattern (Atom 2596293632 4292934656) [],
      decode_inner_65 crc32x_64c_dp_2src),
     (Pattern (Atom 448811008 4292934656) [],
      decode_inner_64 crc32cb_32c_dp_2src),
     (Pattern (Atom 448812032 4292934656) [],
      decode_inner_64 crc32ch_32c_dp_2src),
     (Pattern (Atom 448813056 4292934656) [],
      decode_inner_64 crc32cw_32c_dp_2src),
     (Pattern (Atom 2596297728 4292934656) [],
      decode_inner_65 crc32cx_64c_dp_2src),
     (Pattern (Atom 444596224 4292873216) [],
      decode_inner_125 csel_32_condsel),
     (Pattern (Atom 2592079872 4292873216) [],
      decode_inner_129 csel_64_condsel),
     (Pattern (Atom 444597248 4292873216) [],
      decode_inner_125 csinc_32_condsel),
     (Pattern (Atom 2592080896 4292873216) [],
      decode_inner_129 csinc_64_condsel),
     (Pattern (Atom 1518338048 4292873216) [],
      decode_inner_125 csinv_32_condsel),
     (Pattern (Atom 3665821696 4292873216) [],
      decode_inner_129 csinv_64_condsel),
     (Pattern (Atom 1518339072 4292873216) [],
      decode_inner_125 csneg_32_condsel),
     (Pattern (Atom 3665822720 4292873216) [],
      decode_inner_129 csneg_64_condsel),
     (Pattern (Atom 3567255553 4292870175) [],
      decode_inner_7 dcps1_dc_exception),
     (Pattern (Atom 3567255554 4292870175) [],
      decode_inner_7 dcps2_dc_exception),
     (Pattern (Atom 3567255555 4292870175) [],
      decode_inner_7 dcps3_dc_exception),
     (Pattern (Atom 3573756095 4294963455) [],
      decode_inner_53 dmb_bo_system),
     (Pattern (Atom 3602842592 4294967295) [],
      decode_inner_0 drps_64e_branch_reg),
     (Pattern (Atom 3573756063 4294963455) [],
      decode_inner_53 dsb_bo_system),
     (Pattern (Atom 1243611136 4280287232) [],
      decode_inner_236 eon_32_log_shift),
     (Pattern (Atom 3391094784 4280287232) [],
      decode_inner_239 eon_64_log_shift),
     (Pattern (Atom 1375731712 4290772992) [],
      decode_inner_105 eor_32_log_imm),
     (Pattern (Atom 3523215360 4286578688) [],
      decode_inner_95 eor_64_log_imm),
     (Pattern (Atom 1241513984 4280287232) [],
      decode_inner_236 eor_32_log_shift),
     (Pattern (Atom 3388997632 4280287232) [],
      decode_inner_239 eor_64_log_shift),
     (Pattern (Atom 3600745440 4294967295) [],
      decode_inner_0 eret_64e_branch_reg),
     (Pattern (Atom 3600747519 4294967295) [],
      decode_inner_0 eretaa_64e_branch_reg),
     (Pattern (Atom 3600748543 4294967295) [],
      decode_inner_0 eretab_64e_branch_reg),
     (Pattern (Atom 3573752351 4294967295) [],
      decode_inner_0 esb_hi_system),
     (Pattern (Atom 327155712 4292902912) [],
      decode_inner_124 extr_32_extract),
     (Pattern (Atom 2478833664 4292870144) [],
      decode_inner_128 extr_64_extract),
     (Pattern (Atom 3573752031 4294967263) [], decode_inner_4 hint_1),
     (Pattern (Atom 3573751839 4294963231) [Atom 0 3328],
      decode_inner_4 hint_2),
     (Pattern (Atom 3573752351 4294967071) [Atom 0 192],
      decode_inner_4 hint_3),
     (Pattern (Atom 3560964096 4292870175) [],
      decode_inner_4 hlt_ex_exception),
     (Pattern (Atom 3556769794 4292870175) [],
      decode_inner_4 hvc_ex_exception),
     (Pattern (Atom 3573756127 4294963455) [],
      decode_inner_67 isb_bi_system),
     (Pattern (Atom 3089104896 4292934656) [],
      decode_inner_93 ldadd_32_memop),
     (Pattern (Atom 3097493504 4292934656) [],
      decode_inner_93 ldadda_32_memop),
     (Pattern (Atom 3101687808 4292934656) [],
      decode_inner_93 ldaddal_32_memop),
     (Pattern (Atom 3093299200 4292934656) [],
      decode_inner_93 ldaddl_32_memop),
     (Pattern (Atom 4162846720 4292934656) [],
      decode_inner_96 ldadd_64_memop),
     (Pattern (Atom 4171235328 4292934656) [],
      decode_inner_96 ldadda_64_memop),
     (Pattern (Atom 4175429632 4292934656) [],
      decode_inner_96 ldaddal_64_memop),
     (Pattern (Atom 4167041024 4292934656) [],
      decode_inner_96 ldaddl_64_memop),
     (Pattern (Atom 950009856 4292934656) [],
      decode_inner_93 ldaddab_32_memop),
     (Pattern (Atom 954204160 4292934656) [],
      decode_inner_93 ldaddalb_32_memop),
     (Pattern (Atom 941621248 4292934656) [],
      decode_inner_93 ldaddb_32_memop),
     (Pattern (Atom 945815552 4292934656) [],
      decode_inner_93 ldaddlb_32_memop),
     (Pattern (Atom 2023751680 4292934656) [],
      decode_inner_93 ldaddah_32_memop),
     (Pattern (Atom 2027945984 4292934656) [],
      decode_inner_93 ldaddalh_32_memop),
     (Pattern (Atom 2015363072 4292934656) [],
      decode_inner_93 ldaddh_32_memop),
     (Pattern (Atom 2019557376 4292934656) [],
      decode_inner_93 ldaddlh_32_memop),
     (Pattern (Atom 3099574272 4294966272) [],
      decode_inner_94 ldapr_32l_memop),
     (Pattern (Atom 4173316096 4294966272) [],
      decode_inner_97 ldapr_64l_memop),
     (Pattern (Atom 952090624 4294966272) [],
      decode_inner_94 ldaprb_32l_memop),
     (Pattern (Atom 2025832448 4294966272) [],
      decode_inner_94 ldaprh_32l_memop),
     (Pattern (Atom 2296380416 4294966272) [],
      decode_inner_88 ldar_lr32_ldstexcl),
     (Pattern (Atom 3370122240 4294966272) [],
      decode_inner_92 ldar_lr64_ldstexcl),
     (Pattern (Atom 148896768 4294966272) [],
      decode_inner_88 ldarb_lr32_ldstexcl),
     (Pattern (Atom 1222638592 4294966272) [],
      decode_inner_88 ldarh_lr32_ldstexcl),
     (Pattern (Atom 2290057216 4294934528) [],
      decode_inner_176 ldaxp_lp32_ldstexcl),
     (Pattern (Atom 3363799040 4294934528) [],
      decode_inner_179 ldaxp_lp64_ldstexcl),
     (Pattern (Atom 2287991808 4294966272) [],
      decode_inner_88 ldaxr_lr32_ldstexcl),
     (Pattern (Atom 3361733632 4294966272) [],
      decode_inner_92 ldaxr_lr64_ldstexcl),
     (Pattern (Atom 140508160 4294966272) [],
      decode_inner_88 ldaxrb_lr32_ldstexcl),
     (Pattern (Atom 1214249984 4294966272) [],
      decode_inner_88 ldaxrh_lr32_ldstexcl),
     (Pattern (Atom 3089108992 4292934656) [],
      decode_inner_93 ldclr_32_memop),
     (Pattern (Atom 3097497600 4292934656) [],
      decode_inner_93 ldclra_32_memop),
     (Pattern (Atom 3101691904 4292934656) [],
      decode_inner_93 ldclral_32_memop),
     (Pattern (Atom 3093303296 4292934656) [],
      decode_inner_93 ldclrl_32_memop),
     (Pattern (Atom 4162850816 4292934656) [],
      decode_inner_96 ldclr_64_memop),
     (Pattern (Atom 4171239424 4292934656) [],
      decode_inner_96 ldclra_64_memop),
     (Pattern (Atom 4175433728 4292934656) [],
      decode_inner_96 ldclral_64_memop),
     (Pattern (Atom 4167045120 4292934656) [],
      decode_inner_96 ldclrl_64_memop),
     (Pattern (Atom 950013952 4292934656) [],
      decode_inner_93 ldclrab_32_memop),
     (Pattern (Atom 954208256 4292934656) [],
      decode_inner_93 ldclralb_32_memop),
     (Pattern (Atom 941625344 4292934656) [],
      decode_inner_93 ldclrb_32_memop),
     (Pattern (Atom 945819648 4292934656) [],
      decode_inner_93 ldclrlb_32_memop),
     (Pattern (Atom 2023755776 4292934656) [],
      decode_inner_93 ldclrah_32_memop),
     (Pattern (Atom 2027950080 4292934656) [],
      decode_inner_93 ldclralh_32_memop),
     (Pattern (Atom 2015367168 4292934656) [],
      decode_inner_93 ldclrh_32_memop),
     (Pattern (Atom 2019561472 4292934656) [],
      decode_inner_93 ldclrlh_32_memop),
     (Pattern (Atom 3089113088 4292934656) [],
      decode_inner_93 ldeor_32_memop),
     (Pattern (Atom 3097501696 4292934656) [],
      decode_inner_93 ldeora_32_memop),
     (Pattern (Atom 3101696000 4292934656) [],
      decode_inner_93 ldeoral_32_memop),
     (Pattern (Atom 3093307392 4292934656) [],
      decode_inner_93 ldeorl_32_memop),
     (Pattern (Atom 4162854912 4292934656) [],
      decode_inner_96 ldeor_64_memop),
     (Pattern (Atom 4171243520 4292934656) [],
      decode_inner_96 ldeora_64_memop),
     (Pattern (Atom 4175437824 4292934656) [],
      decode_inner_96 ldeoral_64_memop),
     (Pattern (Atom 4167049216 4292934656) [],
      decode_inner_96 ldeorl_64_memop),
     (Pattern (Atom 950018048 4292934656) [],
      decode_inner_93 ldeorab_32_memop),
     (Pattern (Atom 954212352 4292934656) [],
      decode_inner_93 ldeoralb_32_memop),
     (Pattern (Atom 941629440 4292934656) [],
      decode_inner_93 ldeorb_32_memop),
     (Pattern (Atom 945823744 4292934656) [],
      decode_inner_93 ldeorlb_32_memop),
     (Pattern (Atom 2023759872 4292934656) [],
      decode_inner_93 ldeorah_32_memop),
     (Pattern (Atom 2027954176 4292934656) [],
      decode_inner_93 ldeoralh_32_memop),
     (Pattern (Atom 2015371264 4292934656) [],
      decode_inner_93 ldeorh_32_memop),
     (Pattern (Atom 2019565568 4292934656) [],
      decode_inner_93 ldeorlh_32_memop),
     (Pattern (Atom 2296347648 4294966272) [],
      decode_inner_88 ldlar_lr32_ldstexcl),
     (Pattern (Atom 3370089472 4294966272) [],
      decode_inner_92 ldlar_lr64_ldstexcl),
     (Pattern (Atom 148864000 4294966272) [],
      decode_inner_88 ldlarb_lr32_ldstexcl),
     (Pattern (Atom 1222605824 4294966272) [],
      decode_inner_88 ldlarh_lr32_ldstexcl),
     (Pattern (Atom 675282944 4290772992) [],
      decode_inner_208 ldnp_32_ldstnapair_offs),
     (Pattern (Atom 2822766592 4290772992) [],
      decode_inner_209 ldnp_64_ldstnapair_offs),
     (Pattern (Atom 683671552 4290772992) [],
      decode_inner_193 ldp_32_ldstpair_post),
     (Pattern (Atom 2831155200 4290772992) [],
      decode_inner_194 ldp_64_ldstpair_post),
     (Pattern (Atom 700448768 4290772992) [],
      decode_inner_200 ldp_32_ldstpair_pre),
     (Pattern (Atom 2847932416 4290772992) [],
      decode_inner_202 ldp_64_ldstpair_pre),
     (Pattern (Atom 692060160 4290772992) [],
      decode_inner_208 ldp_32_ldstpair_off),
     (Pattern (Atom 2839543808 4290772992) [],
      decode_inner_209 ldp_64_ldstpair_off),
     (Pattern (Atom 1757413376 4290772992) [],
      decode_inner_194 ldpsw_64_ldstpair_post),
     (Pattern (Atom 1774190592 4290772992) [],
      decode_inner_202 ldpsw_64_ldstpair_pre),
     (Pattern (Atom 1765801984 4290772992) [],
      decode_inner_209 ldpsw_64_ldstpair_off),
     (Pattern (Atom 3091203072 4292873216) [],
      decode_inner_126 ldr_32_ldst_immpost),
     (Pattern (Atom 4164944896 4292873216) [],
      decode_inner_130 ldr_64_ldst_immpost),
     (Pattern (Atom 3091205120 4292873216) [],
      decode_inner_140 ldr_32_ldst_immpre),
     (Pattern (Atom 4164946944 4292873216) [],
      decode_inner_141 ldr_64_ldst_immpre),
     (Pattern (Atom 3107979264 4290772992) [],
      decode_inner_157 ldr_32_ldst_pos),
     (Pattern (Atom 4181721088 4290772992) [],
      decode_inner_160 ldr_64_ldst_pos),
     (Pattern (Atom 402653184 4278190080) [],
      decode_inner_43 ldr_32_loadlit),
     (Pattern (Atom 1476395008 4278190080) [],
      decode_inner_47 ldr_64_loadlit),
     (Pattern (Atom 3093301248 4292873216) [],
      decode_inner_286 ldr_32_ldst_regoff),
     (Pattern (Atom 4167043072 4292873216) [],
      decode_inner_287 ldr_64_ldst_regoff),
     (Pattern (Atom 4162847744 4288678912) [],
      decode_inner_161 ldraa_64_ldst_pac),
     (Pattern (Atom 4162849792 4288678912) [],
      decode_inner_169 ldraa_64w_ldst_pac),
     (Pattern (Atom 4171236352 4288678912) [],
      decode_inner_161 ldrab_64_ldst_pac),
     (Pattern (Atom 4171238400 4288678912) [],
      decode_inner_169 ldrab_64w_ldst_pac),
     (Pattern (Atom 943719424 4292873216) [],
      decode_inner_126 ldrb_32_ldst_immpost),
     (Pattern (Atom 943721472 4292873216) [],
      decode_inner_140 ldrb_32_ldst_immpre),
     (Pattern (Atom 960495616 4290772992) [],
      decode_inner_157 ldrb_32_ldst_pos),
     (Pattern (Atom 945817600 4292873216) [Atom 24576 57344],
      decode_inner_280 ldrb_32b_ldst_regoff),
     (Pattern (Atom 945842176 4292930560) [],
      decode_inner_238 ldrb_32bl_ldst_regoff),
     (Pattern (Atom 2017461248 4292873216) [],
      decode_inner_126 ldrh_32_ldst_immpost),
     (Pattern (Atom 2017463296 4292873216) [],
      decode_inner_140 ldrh_32_ldst_immpre),
     (Pattern (Atom 2034237440 4290772992) [],
      decode_inner_157 ldrh_32_ldst_pos),
     (Pattern (Atom 2019559424 4292873216) [],
      decode_inner_286 ldrh_32_ldst_regoff),
     (Pattern (Atom 952108032 4292873216) [],
      decode_inner_126 ldrsb_32_ldst_immpost),
     (Pattern (Atom 947913728 4292873216) [],
      decode_inner_130 ldrsb_64_ldst_immpost),
     (Pattern (Atom 952110080 4292873216) [],
      decode_inner_140 ldrsb_32_ldst_immpre),
     (Pattern (Atom 947915776 4292873216) [],
      decode_inner_141 ldrsb_64_ldst_immpre),
     (Pattern (Atom 968884224 4290772992) [],
      decode_inner_157 ldrsb_32_ldst_pos),
     (Pattern (Atom 964689920 4290772992) [],
      decode_inner_160 ldrsb_64_ldst_pos),
     (Pattern (Atom 954206208 4292873216) [Atom 24576 57344],
      decode_inner_280 ldrsb_32b_ldst_regoff),
     (Pattern (Atom 954230784 4292930560) [],
      decode_inner_238 ldrsb_32bl_ldst_regoff),
     (Pattern (Atom 950011904 4292873216) [Atom 24576 57344],
      decode_inner_281 ldrsb_64b_ldst_regoff),
     (Pattern (Atom 950036480 4292930560) [],
      decode_inner_240 ldrsb_64bl_ldst_regoff),
     (Pattern (Atom 2025849856 4292873216) [],
      decode_inner_126 ldrsh_32_ldst_immpost),
     (Pattern (Atom 2021655552 4292873216) [],
      decode_inner_130 ldrsh_64_ldst_immpost),
     (Pattern (Atom 2025851904 4292873216) [],
      decode_inner_140 ldrsh_32_ldst_immpre),
     (Pattern (Atom 2021657600 4292873216) [],
      decode_inner_141 ldrsh_64_ldst_immpre),
     (Pattern (Atom 2042626048 4290772992) [],
      decode_inner_157 ldrsh_32_ldst_pos),
     (Pattern (Atom 2038431744 4290772992) [],
      decode_inner_160 ldrsh_64_ldst_pos),
     (Pattern (Atom 2027948032 4292873216) [],
      decode_inner_286 ldrsh_32_ldst_regoff),
     (Pattern (Atom 2023753728 4292873216) [],
      decode_inner_287 ldrsh_64_ldst_regoff),
     (Pattern (Atom 3095397376 4292873216) [],
      decode_inner_130 ldrsw_64_ldst_immpost),
     (Pattern (Atom 3095399424 4292873216) [],
      decode_inner_141 ldrsw_64_ldst_immpre),
     (Pattern (Atom 3112173568 4290772992) [],
      decode_inner_160 ldrsw_64_ldst_pos),
     (Pattern (Atom 2550136832 4278190080) [],
      decode_inner_47 ldrsw_64_loadlit),
     (Pattern (Atom 3097495552 4292873216) [],
      decode_inner_287 ldrsw_64_ldst_regoff),
     (Pattern (Atom 3089117184 4292934656) [],
      decode_inner_93 ldset_32_memop),
     (Pattern (Atom 3097505792 4292934656) [],
      decode_inner_93 ldseta_32_memop),
     (Pattern (Atom 3101700096 4292934656) [],
      decode_inner_93 ldsetal_32_memop),
     (Pattern (Atom 3093311488 4292934656) [],
      decode_inner_93 ldsetl_32_memop),
     (Pattern (Atom 4162859008 4292934656) [],
      decode_inner_96 ldset_64_memop),
     (Pattern (Atom 4171247616 4292934656) [],
      decode_inner_96 ldseta_64_memop),
     (Pattern (Atom 4175441920 4292934656) [],
      decode_inner_96 ldsetal_64_memop),
     (Pattern (Atom 4167053312 4292934656) [],
      decode_inner_96 ldsetl_64_memop),
     (Pattern (Atom 950022144 4292934656) [],
      decode_inner_93 ldsetab_32_memop),
     (Pattern (Atom 954216448 4292934656) [],
      decode_inner_93 ldsetalb_32_memop),
     (Pattern (Atom 941633536 4292934656) [],
      decode_inner_93 ldsetb_32_memop),
     (Pattern (Atom 945827840 4292934656) [],
      decode_inner_93 ldsetlb_32_memop),
     (Pattern (Atom 2023763968 4292934656) [],
      decode_inner_93 ldsetah_32_memop),
     (Pattern (Atom 2027958272 4292934656) [],
      decode_inner_93 ldsetalh_32_memop),
     (Pattern (Atom 2015375360 4292934656) [],
      decode_inner_93 ldseth_32_memop),
     (Pattern (Atom 2019569664 4292934656) [],
      decode_inner_93 ldsetlh_32_memop),
     (Pattern (Atom 3089121280 4292934656) [],
      decode_inner_93 ldsmax_32_memop),
     (Pattern (Atom 3097509888 4292934656) [],
      decode_inner_93 ldsmaxa_32_memop),
     (Pattern (Atom 3101704192 4292934656) [],
      decode_inner_93 ldsmaxal_32_memop),
     (Pattern (Atom 3093315584 4292934656) [],
      decode_inner_93 ldsmaxl_32_memop),
     (Pattern (Atom 4162863104 4292934656) [],
      decode_inner_96 ldsmax_64_memop),
     (Pattern (Atom 4171251712 4292934656) [],
      decode_inner_96 ldsmaxa_64_memop),
     (Pattern (Atom 4175446016 4292934656) [],
      decode_inner_96 ldsmaxal_64_memop),
     (Pattern (Atom 4167057408 4292934656) [],
      decode_inner_96 ldsmaxl_64_memop),
     (Pattern (Atom 950026240 4292934656) [],
      decode_inner_93 ldsmaxab_32_memop),
     (Pattern (Atom 954220544 4292934656) [],
      decode_inner_93 ldsmaxalb_32_memop),
     (Pattern (Atom 941637632 4292934656) [],
      decode_inner_93 ldsmaxb_32_memop),
     (Pattern (Atom 945831936 4292934656) [],
      decode_inner_93 ldsmaxlb_32_memop),
     (Pattern (Atom 2023768064 4292934656) [],
      decode_inner_93 ldsmaxah_32_memop),
     (Pattern (Atom 2027962368 4292934656) [],
      decode_inner_93 ldsmaxalh_32_memop),
     (Pattern (Atom 2015379456 4292934656) [],
      decode_inner_93 ldsmaxh_32_memop),
     (Pattern (Atom 2019573760 4292934656) [],
      decode_inner_93 ldsmaxlh_32_memop),
     (Pattern (Atom 3089125376 4292934656) [],
      decode_inner_93 ldsmin_32_memop),
     (Pattern (Atom 3097513984 4292934656) [],
      decode_inner_93 ldsmina_32_memop),
     (Pattern (Atom 3101708288 4292934656) [],
      decode_inner_93 ldsminal_32_memop),
     (Pattern (Atom 3093319680 4292934656) [],
      decode_inner_93 ldsminl_32_memop),
     (Pattern (Atom 4162867200 4292934656) [],
      decode_inner_96 ldsmin_64_memop),
     (Pattern (Atom 4171255808 4292934656) [],
      decode_inner_96 ldsmina_64_memop),
     (Pattern (Atom 4175450112 4292934656) [],
      decode_inner_96 ldsminal_64_memop),
     (Pattern (Atom 4167061504 4292934656) [],
      decode_inner_96 ldsminl_64_memop),
     (Pattern (Atom 950030336 4292934656) [],
      decode_inner_93 ldsminab_32_memop),
     (Pattern (Atom 954224640 4292934656) [],
      decode_inner_93 ldsminalb_32_memop),
     (Pattern (Atom 941641728 4292934656) [],
      decode_inner_93 ldsminb_32_memop),
     (Pattern (Atom 945836032 4292934656) [],
      decode_inner_93 ldsminlb_32_memop),
     (Pattern (Atom 2023772160 4292934656) [],
      decode_inner_93 ldsminah_32_memop),
     (Pattern (Atom 2027966464 4292934656) [],
      decode_inner_93 ldsminalh_32_memop),
     (Pattern (Atom 2015383552 4292934656) [],
      decode_inner_93 ldsminh_32_memop),
     (Pattern (Atom 2019577856 4292934656) [],
      decode_inner_93 ldsminlh_32_memop),
     (Pattern (Atom 3091204096 4292873216) [],
      decode_inner_158 ldtr_32_ldst_unpriv),
     (Pattern (Atom 4164945920 4292873216) [],
      decode_inner_161 ldtr_64_ldst_unpriv),
     (Pattern (Atom 943720448 4292873216) [],
      decode_inner_158 ldtrb_32_ldst_unpriv),
     (Pattern (Atom 2017462272 4292873216) [],
      decode_inner_158 ldtrh_32_ldst_unpriv),
     (Pattern (Atom 952109056 4292873216) [],
      decode_inner_158 ldtrsb_32_ldst_unpriv),
     (Pattern (Atom 947914752 4292873216) [],
      decode_inner_161 ldtrsb_64_ldst_unpriv),
     (Pattern (Atom 2025850880 4292873216) [],
      decode_inner_158 ldtrsh_32_ldst_unpriv),
     (Pattern (Atom 2021656576 4292873216) [],
      decode_inner_161 ldtrsh_64_ldst_unpriv),
     (Pattern (Atom 3095398400 4292873216) [],
      decode_inner_161 ldtrsw_64_ldst_unpriv),
     (Pattern (Atom 3089129472 4292934656) [],
      decode_inner_93 ldumax_32_memop),
     (Pattern (Atom 3097518080 4292934656) [],
      decode_inner_93 ldumaxa_32_memop),
     (Pattern (Atom 3101712384 4292934656) [],
      decode_inner_93 ldumaxal_32_memop),
     (Pattern (Atom 3093323776 4292934656) [],
      decode_inner_93 ldumaxl_32_memop),
     (Pattern (Atom 4162871296 4292934656) [],
      decode_inner_96 ldumax_64_memop),
     (Pattern (Atom 4171259904 4292934656) [],
      decode_inner_96 ldumaxa_64_memop),
     (Pattern (Atom 4175454208 4292934656) [],
      decode_inner_96 ldumaxal_64_memop),
     (Pattern (Atom 4167065600 4292934656) [],
      decode_inner_96 ldumaxl_64_memop),
     (Pattern (Atom 950034432 4292934656) [],
      decode_inner_93 ldumaxab_32_memop),
     (Pattern (Atom 954228736 4292934656) [],
      decode_inner_93 ldumaxalb_32_memop),
     (Pattern (Atom 941645824 4292934656) [],
      decode_inner_93 ldumaxb_32_memop),
     (Pattern (Atom 945840128 4292934656) [],
      decode_inner_93 ldumaxlb_32_memop),
     (Pattern (Atom 2023776256 4292934656) [],
      decode_inner_93 ldumaxah_32_memop),
     (Pattern (Atom 2027970560 4292934656) [],
      decode_inner_93 ldumaxalh_32_memop),
     (Pattern (Atom 2015387648 4292934656) [],
      decode_inner_93 ldumaxh_32_memop),
     (Pattern (Atom 2019581952 4292934656) [],
      decode_inner_93 ldumaxlh_32_memop),
     (Pattern (Atom 3089133568 4292934656) [],
      decode_inner_93 ldumin_32_memop),
     (Pattern (Atom 3097522176 4292934656) [],
      decode_inner_93 ldumina_32_memop),
     (Pattern (Atom 3101716480 4292934656) [],
      decode_inner_93 lduminal_32_memop),
     (Pattern (Atom 3093327872 4292934656) [],
      decode_inner_93 lduminl_32_memop),
     (Pattern (Atom 4162875392 4292934656) [],
      decode_inner_96 ldumin_64_memop),
     (Pattern (Atom 4171264000 4292934656) [],
      decode_inner_96 ldumina_64_memop),
     (Pattern (Atom 4175458304 4292934656) [],
      decode_inner_96 lduminal_64_memop),
     (Pattern (Atom 4167069696 4292934656) [],
      decode_inner_96 lduminl_64_memop),
     (Pattern (Atom 950038528 4292934656) [],
      decode_inner_93 lduminab_32_memop),
     (Pattern (Atom 954232832 4292934656) [],
      decode_inner_93 lduminalb_32_memop),
     (Pattern (Atom 941649920 4292934656) [],
      decode_inner_93 lduminb_32_memop),
     (Pattern (Atom 945844224 4292934656) [],
      decode_inner_93 lduminlb_32_memop),
     (Pattern (Atom 2023780352 4292934656) [],
      decode_inner_93 lduminah_32_memop),
     (Pattern (Atom 2027974656 4292934656) [],
      decode_inner_93 lduminalh_32_memop),
     (Pattern (Atom 2015391744 4292934656) [],
      decode_inner_93 lduminh_32_memop),
     (Pattern (Atom 2019586048 4292934656) [],
      decode_inner_93 lduminlh_32_memop),
     (Pattern (Atom 3091202048 4292873216) [],
      decode_inner_158 ldur_32_ldst_unscaled),
     (Pattern (Atom 4164943872 4292873216) [],
      decode_inner_161 ldur_64_ldst_unscaled),
     (Pattern (Atom 943718400 4292873216) [],
      decode_inner_158 ldurb_32_ldst_unscaled),
     (Pattern (Atom 2017460224 4292873216) [],
      decode_inner_158 ldurh_32_ldst_unscaled),
     (Pattern (Atom 952107008 4292873216) [],
      decode_inner_158 ldursb_32_ldst_unscaled),
     (Pattern (Atom 947912704 4292873216) [],
      decode_inner_161 ldursb_64_ldst_unscaled),
     (Pattern (Atom 2025848832 4292873216) [],
      decode_inner_158 ldursh_32_ldst_unscaled),
     (Pattern (Atom 2021654528 4292873216) [],
      decode_inner_161 ldursh_64_ldst_unscaled),
     (Pattern (Atom 3095396352 4292873216) [],
      decode_inner_161 ldursw_64_ldst_unscaled),
     (Pattern (Atom 2290024448 4294934528) [],
      decode_inner_176 ldxp_lp32_ldstexcl),
     (Pattern (Atom 3363766272 4294934528) [],
      decode_inner_179 ldxp_lp64_ldstexcl),
     (Pattern (Atom 2287959040 4294966272) [],
      decode_inner_88 ldxr_lr32_ldstexcl),
     (Pattern (Atom 3361700864 4294966272) [],
      decode_inner_92 ldxr_lr64_ldstexcl),
     (Pattern (Atom 140475392 4294966272) [],
      decode_inner_88 ldxrb_lr32_ldstexcl),
     (Pattern (Atom 1214217216 4294966272) [],
      decode_inner_88 ldxrh_lr32_ldstexcl),
     (Pattern (Atom 448798720 4292934656) [],
      decode_inner_64 lslv_32_dp_2src),
     (Pattern (Atom 2596282368 4292934656) [],
      decode_inner_66 lslv_64_dp_2src),
     (Pattern (Atom 448799744 4292934656) [],
      decode_inner_64 lsrv_32_dp_2src),
     (Pattern (Atom 2596283392 4292934656) [],
      decode_inner_66 lsrv_64_dp_2src),
     (Pattern (Atom 452984832 4292902912) [],
      decode_inner_104 madd_32a_dp_3src),
     (Pattern (Atom 2600468480 4292902912) [],
      decode_inner_107 madd_64a_dp_3src),
     (Pattern (Atom 1920991232 4286578688) [],
      decode_inner_174 movk_32_movewide),
     (Pattern (Atom 4068474880 4286578688) [],
      decode_inner_177 movk_64_movewide),
     (Pattern (Atom 310378496 4286578688) [],
      decode_inner_174 movn_32_movewide),
     (Pattern (Atom 2457862144 4286578688) [],
      decode_inner_177 movn_64_movewide),
     (Pattern (Atom 1384120320 4286578688) [],
      decode_inner_174 movz_32_movewide),
     (Pattern (Atom 3531603968 4286578688) [],
      decode_inner_177 movz_64_movewide),
     (Pattern (Atom 3576692736 4293918720) [],
      decode_inner_273 mrs_rs_system),
     (Pattern (Atom 3573563423 4294504479) [],
      decode_inner_98 msr_si_system),
     (Pattern (Atom 3574595584 4293918720) [],
      decode_inner_270 msr_sr_system),
     (Pattern (Atom 453017600 4292902912) [],
      decode_inner_104 msub_32a_dp_3src),
     (Pattern (Atom 2600501248 4292902912) [],
      decode_inner_107 msub_64a_dp_3src),
     (Pattern (Atom 3573751839 4294967295) [],
      decode_inner_0 nop_hi_system),
     (Pattern (Atom 706740224 4280287232) [],
      decode_inner_236 orn_32_log_shift),
     (Pattern (Atom 2854223872 4280287232) [],
      decode_inner_239 orn_64_log_shift),
     (Pattern (Atom 838860800 4290772992) [],
      decode_inner_105 orr_32_log_imm),
     (Pattern (Atom 2986344448 4286578688) [],
      decode_inner_95 orr_64_log_imm),
     (Pattern (Atom 704643072 4280287232) [],
      decode_inner_236 orr_32_log_shift),
     (Pattern (Atom 2852126720 4280287232) [],
      decode_inner_239 orr_64_log_shift),
     (Pattern (Atom 3670083584 4294966272) [],
      decode_inner_44 pacda_64p_dp_1src),
     (Pattern (Atom 3670092768 4294967264) [],
      decode_inner_1 pacdza_64z_dp_1src),
     (Pattern (Atom 3670084608 4294966272) [],
      decode_inner_44 pacdb_64p_dp_1src),
     (Pattern (Atom 3670093792 4294967264) [],
      decode_inner_1 pacdzb_64z_dp_1src),
     (Pattern (Atom 2596286464 4292934656) [],
      decode_inner_76 pacga_64p_dp_2src),
     (Pattern (Atom 3670081536 4294966272) [],
      decode_inner_44 pacia_64p_dp_1src),
     (Pattern (Atom 3670090720 4294967264) [],
      decode_inner_1 paciza_64z_dp_1src),
     (Pattern (Atom 3573752095 4294967295) [],
      decode_inner_0 pacia1716_hi_system),
     (Pattern (Atom 3573752639 4294967295) [],
      decode_inner_0 paciasp_hi_system),
     (Pattern (Atom 3573752607 4294967295) [],
      decode_inner_0 paciaz_hi_system),
     (Pattern (Atom 3670082560 4294966272) [],
      decode_inner_44 pacib_64p_dp_1src),
     (Pattern (Atom 3670091744 4294967264) [],
      decode_inner_1 pacizb_64z_dp_1src),
     (Pattern (Atom 3573752159 4294967295) [],
      decode_inner_0 pacib1716_hi_system),
     (Pattern (Atom 3573752703 4294967295) [],
      decode_inner_0 pacibsp_hi_system),
     (Pattern (Atom 3573752671 4294967295) [],
      decode_inner_0 pacibz_hi_system),
     (Pattern (Atom 4185915392 4290772992) [],
      decode_inner_246 prfm_p_ldst_pos),
     (Pattern (Atom 3623878656 4278190080) [],
      decode_inner_142 prfm_p_loadlit),
     (Pattern (Atom 4171237376 4292873216) [],
      decode_inner_314 prfm_p_ldst_regoff),
     (Pattern (Atom 4169138176 4292873216) [],
      decode_inner_245 prfum_p_ldst_unscaled),
     (Pattern (Atom 3573752383 4294967295) [],
      decode_inner_3 psb_hc_system),
     (Pattern (Atom 1522532352 4294966272) [],
      decode_inner_32 rbit_32_dp_1src),
     (Pattern (Atom 3670016000 4294966272) [],
      decode_inner_36 rbit_64_dp_1src),
     (Pattern (Atom 3596550144 4294966303) [],
      decode_inner_5 ret_64r_branch_reg),
     (Pattern (Atom 3596553215 4294967295) [],
      decode_inner_0 retaa_64e_branch_reg),
     (Pattern (Atom 3596554239 4294967295) [],
      decode_inner_0 retab_64e_branch_reg),
     (Pattern (Atom 1522534400 4294966272) [],
      decode_inner_32 rev_32_dp_1src),
     (Pattern (Atom 3670019072 4294966272) [],
      decode_inner_36 rev_64_dp_1src),
     (Pattern (Atom 1522533376 4294966272) [],
      decode_inner_32 rev16_32_dp_1src),
     (Pattern (Atom 3670017024 4294966272) [],
      decode_inner_36 rev16_64_dp_1src),
     (Pattern (Atom 3670018048 4294966272) [],
      decode_inner_36 rev32_64_dp_1src),
     (Pattern (Atom 448801792 4292934656) [],
      decode_inner_64 rorv_32_dp_2src),
     (Pattern (Atom 2596285440 4292934656) [],
      decode_inner_66 rorv_64_dp_2src),
     (Pattern (Atom 1509949440 4292934656) [],
      decode_inner_64 sbc_32_addsub_carry),
     (Pattern (Atom 3657433088 4292934656) [],
      decode_inner_66 sbc_64_addsub_carry),
     (Pattern (Atom 2046820352 4292934656) [],
      decode_inner_64 sbcs_32_addsub_carry),
     (Pattern (Atom 4194304000 4292934656) [],
      decode_inner_66 sbcs_64_addsub_carry),
     (Pattern (Atom 318767104 4290772992) [],
      decode_inner_175 sbfm_32m_bitfield),
     (Pattern (Atom 2470445056 4290772992) [],
      decode_inner_178 sbfm_64m_bitfield),
     (Pattern (Atom 448793600 4292934656) [],
      decode_inner_64 sdiv_32_dp_2src),
     (Pattern (Atom 2596277248 4292934656) [],
      decode_inner_66 sdiv_64_dp_2src),
     (Pattern (Atom 3573751967 4294967295) [],
      decode_inner_0 sev_hi_system),
     (Pattern (Atom 3573751999 4294967295) [],
      decode_inner_0 sevl_hi_system),
     (Pattern (Atom 2602565632 4292902912) [],
      decode_inner_106 smaddl_64wa_dp_3src),
     (Pattern (Atom 3556769795 4292870175) [],
      decode_inner_4 smc_ex_exception),
     (Pattern (Atom 2602598400 4292902912) [],
      decode_inner_106 smsubl_64wa_dp_3src),
     (Pattern (Atom 2604694528 4292934656) [],
      decode_inner_66 smulh_64_dp_3src),
     (Pattern (Atom 2292153344 4294966272) [],
      decode_inner_88 stllr_sl32_ldstexcl),
     (Pattern (Atom 3365895168 4294966272) [],
      decode_inner_92 stllr_sl64_ldstexcl),
     (Pattern (Atom 144669696 4294966272) [],
      decode_inner_88 stllrb_sl32_ldstexcl),
     (Pattern (Atom 1218411520 4294966272) [],
      decode_inner_88 stllrh_sl32_ldstexcl),
     (Pattern (Atom 2292186112 4294966272) [],
      decode_inner_88 stlr_sl32_ldstexcl),
     (Pattern (Atom 3365927936 4294966272) [],
      decode_inner_92 stlr_sl64_ldstexcl),
     (Pattern (Atom 144702464 4294966272) [],
      decode_inner_88 stlrb_sl32_ldstexcl),
     (Pattern (Atom 1218444288 4294966272) [],
      decode_inner_88 stlrh_sl32_ldstexcl),
     (Pattern (Atom 2283831296 4292902912) [],
      decode_inner_218 stlxp_sp32_ldstexcl),
     (Pattern (Atom 3357573120 4292902912) [],
      decode_inner_219 stlxp_sp64_ldstexcl),
     (Pattern (Atom 2281765888 4292934656) [],
      decode_inner_155 stlxr_sr32_ldstexcl),
     (Pattern (Atom 3355507712 4292934656) [],
      decode_inner_156 stlxr_sr64_ldstexcl),
     (Pattern (Atom 134282240 4292934656) [],
      decode_inner_155 stlxrb_sr32_ldstexcl),
     (Pattern (Atom 1208024064 4292934656) [],
      decode_inner_155 stlxrh_sr32_ldstexcl),
     (Pattern (Atom 671088640 4290772992) [],
      decode_inner_208 stnp_32_ldstnapair_offs),
     (Pattern (Atom 2818572288 4290772992) [],
      decode_inner_209 stnp_64_ldstnapair_offs),
     (Pattern (Atom 679477248 4290772992) [],
      decode_inner_193 stp_32_ldstpair_post),
     (Pattern (Atom 2826960896 4290772992) [],
      decode_inner_194 stp_64_ldstpair_post),
     (Pattern (Atom 696254464 4290772992) [],
      decode_inner_200 stp_32_ldstpair_pre),
     (Pattern (Atom 2843738112 4290772992) [],
      decode_inner_202 stp_64_ldstpair_pre),
     (Pattern (Atom 687865856 4290772992) [],
      decode_inner_208 stp_32_ldstpair_off),
     (Pattern (Atom 2835349504 4290772992) [],
      decode_inner_209 stp_64_ldstpair_off),
     (Pattern (Atom 3087008768 4292873216) [],
      decode_inner_126 str_32_ldst_immpost),
     (Pattern (Atom 4160750592 4292873216) [],
      decode_inner_130 str_64_ldst_immpost),
     (Pattern (Atom 3087010816 4292873216) [],
      decode_inner_140 str_32_ldst_immpre),
     (Pattern (Atom 4160752640 4292873216) [],
      decode_inner_141 str_64_ldst_immpre),
     (Pattern (Atom 3103784960 4290772992) [],
      decode_inner_157 str_32_ldst_pos),
     (Pattern (Atom 4177526784 4290772992) [],
      decode_inner_160 str_64_ldst_pos),
     (Pattern (Atom 3089106944 4292873216) [],
      decode_inner_286 str_32_ldst_regoff),
     (Pattern (Atom 4162848768 4292873216) [],
      decode_inner_287 str_64_ldst_regoff),
     (Pattern (Atom 939525120 4292873216) [],
      decode_inner_126 strb_32_ldst_immpost),
     (Pattern (Atom 939527168 4292873216) [],
      decode_inner_140 strb_32_ldst_immpre),
     (Pattern (Atom 956301312 4290772992) [],
      decode_inner_157 strb_32_ldst_pos),
     (Pattern (Atom 941623296 4292873216) [Atom 24576 57344],
      decode_inner_280 strb_32b_ldst_regoff),
     (Pattern (Atom 941647872 4292930560) [],
      decode_inner_238 strb_32bl_ldst_regoff),
     (Pattern (Atom 2013266944 4292873216) [],
      decode_inner_126 strh_32_ldst_immpost),
     (Pattern (Atom 2013268992 4292873216) [],
      decode_inner_140 strh_32_ldst_immpre),
     (Pattern (Atom 2030043136 4290772992) [],
      decode_inner_157 strh_32_ldst_pos),
     (Pattern (Atom 2015365120 4292873216) [],
      decode_inner_286 strh_32_ldst_regoff),
     (Pattern (Atom 3087009792 4292873216) [],
      decode_inner_158 sttr_32_ldst_unpriv),
     (Pattern (Atom 4160751616 4292873216) [],
      decode_inner_161 sttr_64_ldst_unpriv),
     (Pattern (Atom 939526144 4292873216) [],
      decode_inner_158 sttrb_32_ldst_unpriv),
     (Pattern (Atom 2013267968 4292873216) [],
      decode_inner_158 sttrh_32_ldst_unpriv),
     (Pattern (Atom 3087007744 4292873216) [],
      decode_inner_158 stur_32_ldst_unscaled),
     (Pattern (Atom 4160749568 4292873216) [],
      decode_inner_161 stur_64_ldst_unscaled),
     (Pattern (Atom 939524096 4292873216) [],
      decode_inner_158 sturb_32_ldst_unscaled),
     (Pattern (Atom 2013265920 4292873216) [],
      decode_inner_158 sturh_32_ldst_unscaled),
     (Pattern (Atom 2283798528 4292902912) [],
      decode_inner_218 stxp_sp32_ldstexcl),
     (Pattern (Atom 3357540352 4292902912) [],
      decode_inner_219 stxp_sp64_ldstexcl),
     (Pattern (Atom 2281733120 4292934656) [],
      decode_inner_155 stxr_sr32_ldstexcl),
     (Pattern (Atom 3355474944 4292934656) [],
      decode_inner_156 stxr_sr64_ldstexcl),
     (Pattern (Atom 134249472 4292934656) [],
      decode_inner_155 stxrb_sr32_ldstexcl),
     (Pattern (Atom 1207991296 4292934656) [],
      decode_inner_155 stxrh_sr32_ldstexcl),
     (Pattern (Atom 1260388352 4292870144) [],
      decode_inner_271 sub_32_addsub_ext),
     (Pattern (Atom 3407872000 4292870144) [],
      decode_inner_272 sub_64_addsub_ext),
     (Pattern (Atom 1358954496 4278190080) [],
      decode_inner_237 sub_32_addsub_imm),
     (Pattern (Atom 3506438144 4278190080) [],
      decode_inner_229 sub_64_addsub_imm),
     (Pattern (Atom 1258291200 4280287232) [],
      decode_inner_236 sub_32_addsub_shift),
     (Pattern (Atom 3405774848 4280287232) [],
      decode_inner_239 sub_64_addsub_shift),
     (Pattern (Atom 1797259264 4292870144) [],
      decode_inner_259 subs_32s_addsub_ext),
     (Pattern (Atom 3944742912 4292870144) [],
      decode_inner_261 subs_64s_addsub_ext),
     (Pattern (Atom 1895825408 4278190080) [],
      decode_inner_207 subs_32s_addsub_imm),
     (Pattern (Atom 4043309056 4278190080) [],
      decode_inner_201 subs_64s_addsub_imm),
     (Pattern (Atom 1795162112 4280287232) [],
      decode_inner_236 subs_32_addsub_shift),
     (Pattern (Atom 3942645760 4280287232) [],
      decode_inner_239 subs_64_addsub_shift),
     (Pattern (Atom 3556769793 4292870175) [],
      decode_inner_4 svc_ex_exception),
     (Pattern (Atom 3089137664 4292934656) [],
      decode_inner_93 swp_32_memop),
     (Pattern (Atom 3097526272 4292934656) [],
      decode_inner_93 swpa_32_memop),
     (Pattern (Atom 3101720576 4292934656) [],
      decode_inner_93 swpal_32_memop),
     (Pattern (Atom 3093331968 4292934656) [],
      decode_inner_93 swpl_32_memop),
     (Pattern (Atom 4162879488 4292934656) [],
      decode_inner_96 swp_64_memop),
     (Pattern (Atom 4171268096 4292934656) [],
      decode_inner_96 swpa_64_memop),
     (Pattern (Atom 4175462400 4292934656) [],
      decode_inner_96 swpal_64_memop),
     (Pattern (Atom 4167073792 4292934656) [],
      decode_inner_96 swpl_64_memop),
     (Pattern (Atom 950042624 4292934656) [],
      decode_inner_93 swpab_32_memop),
     (Pattern (Atom 954236928 4292934656) [],
      decode_inner_93 swpalb_32_memop),
     (Pattern (Atom 941654016 4292934656) [],
      decode_inner_93 swpb_32_memop),
     (Pattern (Atom 945848320 4292934656) [],
      decode_inner_93 swplb_32_memop),
     (Pattern (Atom 2023784448 4292934656) [],
      decode_inner_93 swpah_32_memop),
     (Pattern (Atom 2027978752 4292934656) [],
      decode_inner_93 swpalh_32_memop),
     (Pattern (Atom 2015395840 4292934656) [],
      decode_inner_93 swph_32_memop),
     (Pattern (Atom 2019590144 4292934656) [],
      decode_inner_93 swplh_32_memop),
     (Pattern (Atom 3574071296 4294443008) [],
      decode_inner_212 sys_cr_system),
     (Pattern (Atom 3576168448 4294443008) [],
      decode_inner_203 sysl_rc_system),
     (Pattern (Atom 922746880 2130706432) [],
      decode_inner_108 tbnz_only_testbranch),
     (Pattern (Atom 905969664 2130706432) [],
      decode_inner_108 tbz_only_testbranch),
     (Pattern (Atom 1392508928 4290772992) [],
      decode_inner_175 ubfm_32m_bitfield),
     (Pattern (Atom 3544186880 4290772992) [],
      decode_inner_178 ubfm_64m_bitfield),
     (Pattern (Atom 448792576 4292934656) [],
      decode_inner_64 udiv_32_dp_2src),
     (Pattern (Atom 2596276224 4292934656) [],
      decode_inner_66 udiv_64_dp_2src),
     (Pattern (Atom 2610954240 4292902912) [],
      decode_inner_106 umaddl_64wa_dp_3src),
     (Pattern (Atom 2610987008 4292902912) [],
      decode_inner_106 umsubl_64wa_dp_3src),
     (Pattern (Atom 2613083136 4292934656) [],
      decode_inner_66 umulh_64_dp_3src),
     (Pattern (Atom 3573751903 4294967295) [],
      decode_inner_0 wfe_hi_system),
     (Pattern (Atom 3573751935 4294967295) [],
      decode_inner_0 wfi_hi_system),
     (Pattern (Atom 3670099936 4294967264) [],
      decode_inner_1 xpacd_64z_dp_1src),
     (Pattern (Atom 3670098912 4294967264) [],
      decode_inner_1 xpaci_64z_dp_1src),
     (Pattern (Atom 3573752063 4294967295) [],
      decode_inner_0 xpaclri_hi_system),
     (Pattern (Atom 3573751871 4294967295) [],
      decode_inner_0 yield_hi_system),
     (Pattern (Atom 1579202560 4282383360) [],
      decode_inner_48 abs_asisdmisc_r),
     (Pattern (Atom 237025280 3208641536) [],
      decode_inner_70 abs_asimdmisc_r),
     (Pattern (Atom 1579189248 4280351744) [],
      decode_inner_102 add_asisdsame_only),
     (Pattern (Atom 237011968 3206609920) [],
      decode_inner_172 add_asimdsame_only),
     (Pattern (Atom 236994560 3206609920) [],
      decode_inner_227 addhn_asimddiff_n),
     (Pattern (Atom 1580316672 4282383360) [],
      decode_inner_58 addp_asisdpair_only),
     (Pattern (Atom 237026304 3206609920) [],
      decode_inner_172 addp_asimdsame_only),
     (Pattern (Atom 238139392 3208641536) [],
      decode_inner_58 addv_asimdall_only),
     (Pattern (Atom 1311266816 4294966272) [],
      decode_inner_69 aesd_b_cryptoaes),
     (Pattern (Atom 1311262720 4294966272) [],
      decode_inner_69 aese_b_cryptoaes),
     (Pattern (Atom 1311275008 4294966272) [],
      decode_inner_69 aesimc_b_cryptoaes),
     (Pattern (Atom 1311270912 4294966272) [],
      decode_inner_69 aesmc_b_cryptoaes),
     (Pattern (Atom 236985344 3219192832) [],
      decode_inner_172 and_asimdsame_only),
     (Pattern (Atom 3458203648 4292902912) [],
      decode_inner_241 bcax_vvv16_crypto4),
     (Pattern (Atom 788567040 3220757504) [],
      decode_inner_216 bic_asimdimm_l_hl),
     (Pattern (Atom 788534272 3220741120) [],
      decode_inner_216 bic_asimdimm_l_sl),
     (Pattern (Atom 241179648 3219192832) [],
      decode_inner_172 bic_asimdsame_only),
     (Pattern (Atom 786439168 3219192832) [],
      decode_inner_172 bif_asimdsame_only),
     (Pattern (Atom 782244864 3219192832) [],
      decode_inner_172 bit_asimdsame_only),
     (Pattern (Atom 778050560 3219192832) [],
      decode_inner_172 bsl_asimdsame_only),
     (Pattern (Atom 236996608 3208641536) [],
      decode_inner_70 cls_asimdmisc_r),
     (Pattern (Atom 773867520 3208641536) [],
      decode_inner_70 clz_asimdmisc_r),
     (Pattern (Atom 2116062208 4280351744) [],
      decode_inner_102 cmeq_asisdsame_only),
     (Pattern (Atom 773884928 3206609920) [],
      decode_inner_172 cmeq_asimdsame_only),
     (Pattern (Atom 1579194368 4282383360) [],
      decode_inner_68 cmeq_asisdmisc_z),
     (Pattern (Atom 237017088 3208641536) [],
      decode_inner_103 cmeq_asimdmisc_z),
     (Pattern (Atom 1579170816 4280351744) [],
      decode_inner_102 cmge_asisdsame_only),
     (Pattern (Atom 236993536 3206609920) [],
      decode_inner_172 cmge_asimdsame_only),
     (Pattern (Atom 2116061184 4282383360) [],
      decode_inner_68 cmge_asisdmisc_z),
     (Pattern (Atom 773883904 3208641536) [],
      decode_inner_103 cmge_asimdmisc_z),
     (Pattern (Atom 1579168768 4280351744) [],
      decode_inner_102 cmgt_asisdsame_only),
     (Pattern (Atom 236991488 3206609920) [],
      decode_inner_172 cmgt_asimdsame_only),
     (Pattern (Atom 1579190272 4282383360) [],
      decode_inner_68 cmgt_asisdmisc_z),
     (Pattern (Atom 237012992 3208641536) [],
      decode_inner_103 cmgt_asimdmisc_z),
     (Pattern (Atom 2116039680 4280351744) [],
      decode_inner_102 cmhi_asisdsame_only),
     (Pattern (Atom 773862400 3206609920) [],
      decode_inner_172 cmhi_asimdsame_only),
     (Pattern (Atom 2116041728 4280351744) [],
      decode_inner_102 cmhs_asisdsame_only),
     (Pattern (Atom 773864448 3206609920) [],
      decode_inner_172 cmhs_asimdsame_only),
     (Pattern (Atom 2116065280 4282383360) [],
      decode_inner_68 cmle_asisdmisc_z),
     (Pattern (Atom 773888000 3208641536) [],
      decode_inner_103 cmle_asimdmisc_z),
     (Pattern (Atom 1579198464 4282383360) [],
      decode_inner_68 cmlt_asisdmisc_z),
     (Pattern (Atom 237021184 3208641536) [],
      decode_inner_103 cmlt_asimdmisc_z),
     (Pattern (Atom 1579191296 4280351744) [],
      decode_inner_102 cmtst_asisdsame_only),
     (Pattern (Atom 237014016 3206609920) [],
      decode_inner_172 cmtst_asimdsame_only),
     (Pattern (Atom 237000704 3208641536) [],
      decode_inner_70 cnt_asimdmisc_r),
     (Pattern (Atom 1577059328 4292934656) [],
      decode_inner_136 dup_asisdone_only),
     (Pattern (Atom 234882048 3219192832) [],
      decode_inner_173 dup_asimdins_dv_v),
     (Pattern (Atom 234884096 3219192832) [],
      decode_inner_63 dup_asimdins_dr_r),
     (Pattern (Atom 773856256 3219192832) [],
      decode_inner_172 eor_asimdsame_only),
     (Pattern (Atom 3456106496 4292902912) [],
      decode_inner_241 eor3_vvv16_crypto4),
     (Pattern (Atom 771751936 3219162112) [],
      decode_inner_242 ext_asimdext_only),
     (Pattern (Atom 2126517248 4292934656) [],
      decode_inner_56 fabd_asisdsamefp16_only),
     (Pattern (Atom 2124469248 4288740352) [],
      decode_inner_102 fabd_asisdsame_only),
     (Pattern (Atom 784339968 3219192832) [],
      decode_inner_172 fabd_asimdsamefp16_only),
     (Pattern (Atom 782291968 3214998528) [],
      decode_inner_172 fabd_asimdsame_only),
     (Pattern (Atom 518045696 4294966272) [],
      decode_inner_16 fabs_h_floatdp1),
     (Pattern (Atom 505462784 4294966272) [],
      decode_inner_24 fabs_s_floatdp1),
     (Pattern (Atom 509657088 4294966272) [],
      decode_inner_8 fabs_d_floatdp1),
     (Pattern (Atom 251197440 3221224448) [],
      decode_inner_70 fabs_asimdmiscfp16_r),
     (Pattern (Atom 245430272 3217030144) [],
      decode_inner_70 fabs_asimdmisc_r),
     (Pattern (Atom 2118134784 4292934656) [],
      decode_inner_56 facge_asisdsamefp16_only),
     (Pattern (Atom 2116086784 4288740352) [],
      decode_inner_102 facge_asisdsame_only),
     (Pattern (Atom 775957504 3219192832) [],
      decode_inner_172 facge_asimdsamefp16_only),
     (Pattern (Atom 773909504 3214998528) [],
      decode_inner_172 facge_asimdsame_only),
     (Pattern (Atom 2126523392 4292934656) [],
      decode_inner_56 facgt_asisdsamefp16_only),
     (Pattern (Atom 2124475392 4288740352) [],
      decode_inner_102 facgt_asisdsame_only),
     (Pattern (Atom 784346112 3219192832) [],
      decode_inner_172 facgt_asimdsamefp16_only),
     (Pattern (Atom 782298112 3214998528) [],
      decode_inner_172 facgt_asimdsame_only),
     (Pattern (Atom 518006784 4292934656) [],
      decode_inner_56 fadd_h_floatdp2),
     (Pattern (Atom 505423872 4292934656) [],
      decode_inner_57 fadd_s_floatdp2),
     (Pattern (Atom 509618176 4292934656) [],
      decode_inner_54 fadd_d_floatdp2),
     (Pattern (Atom 239080448 3219192832) [],
      decode_inner_172 fadd_asimdsamefp16_only),
     (Pattern (Atom 237032448 3214998528) [],
      decode_inner_172 fadd_asimdsame_only),
     (Pattern (Atom 1580259328 4294966272) [],
      decode_inner_58 faddp_asisdpair_only_h),
     (Pattern (Atom 2117130240 4290771968) [],
      decode_inner_58 faddp_asisdpair_only_sd),
     (Pattern (Atom 775951360 3219192832) [],
      decode_inner_172 faddp_asimdsamefp16_only),
     (Pattern (Atom 773903360 3214998528) [],
      decode_inner_172 faddp_asimdsame_only),
     (Pattern (Atom 771810304 3206605824) [],
      decode_inner_247 fcadd_asimdsame2_c),
     (Pattern (Atom 517997568 4292873232) [],
      decode_inner_164 fccmp_h_floatccmp),
     (Pattern (Atom 505414656 4292873232) [],
      decode_inner_165 fccmp_s_floatccmp),
     (Pattern (Atom 509608960 4292873232) [],
      decode_inner_162 fccmp_d_floatccmp),
     (Pattern (Atom 517997584 4292873232) [],
      decode_inner_164 fccmpe_h_floatccmp),
     (Pattern (Atom 505414672 4292873232) [],
      decode_inner_165 fccmpe_s_floatccmp),
     (Pattern (Atom 509608976 4292873232) [],
      decode_inner_162 fccmpe_d_floatccmp),
     (Pattern (Atom 1581261824 4292934656) [],
      decode_inner_56 fcmeq_asisdsamefp16_only),
     (Pattern (Atom 1579213824 4288740352) [],
      decode_inner_102 fcmeq_asisdsame_only),
     (Pattern (Atom 239084544 3219192832) [],
      decode_inner_172 fcmeq_asimdsamefp16_only),
     (Pattern (Atom 237036544 3214998528) [],
      decode_inner_172 fcmeq_asimdsame_only),
     (Pattern (Atom 1593366528 4294966272) [],
      decode_inner_55 fcmeq_asisdmiscfp16_fz),
     (Pattern (Atom 1587599360 4290771968) [],
      decode_inner_83 fcmeq_asisdmisc_fz),
     (Pattern (Atom 251189248 3221224448) [],
      decode_inner_122 fcmeq_asimdmiscfp16_fz),
     (Pattern (Atom 245422080 3217030144) [],
      decode_inner_122 fcmeq_asimdmisc_fz),
     (Pattern (Atom 2118132736 4292934656) [],
      decode_inner_56 fcmge_asisdsamefp16_only),
     (Pattern (Atom 2116084736 4288740352) [],
      decode_inner_102 fcmge_asisdsame_only),
     (Pattern (Atom 775955456 3219192832) [],
      decode_inner_172 fcmge_asimdsamefp16_only),
     (Pattern (Atom 773907456 3214998528) [],
      decode_inner_172 fcmge_asimdsame_only),
     (Pattern (Atom 2130233344 4294966272) [],
      decode_inner_55 fcmge_asisdmiscfp16_fz),
     (Pattern (Atom 2124466176 4290771968) [],
      decode_inner_83 fcmge_asisdmisc_fz),
     (Pattern (Atom 788056064 3221224448) [],
      decode_inner_122 fcmge_asimdmiscfp16_fz),
     (Pattern (Atom 782288896 3217030144) [],
      decode_inner_122 fcmge_asimdmisc_fz),
     (Pattern (Atom 2126521344 4292934656) [],
      decode_inner_56 fcmgt_asisdsamefp16_only),
     (Pattern (Atom 2124473344 4288740352) [],
      decode_inner_102 fcmgt_asisdsame_only),
     (Pattern (Atom 784344064 3219192832) [],
      decode_inner_172 fcmgt_asimdsamefp16_only),
     (Pattern (Atom 782296064 3214998528) [],
      decode_inner_172 fcmgt_asimdsame_only),
     (Pattern (Atom 1593362432 4294966272) [],
      decode_inner_55 fcmgt_asisdmiscfp16_fz),
     (Pattern (Atom 1587595264 4290771968) [],
      decode_inner_83 fcmgt_asisdmisc_fz),
     (Pattern (Atom 251185152 3221224448) [],
      decode_inner_122 fcmgt_asimdmiscfp16_fz),
     (Pattern (Atom 245417984 3217030144) [],
      decode_inner_122 fcmgt_asimdmisc_fz),
     (Pattern (Atom 771802112 3206603776) [],
      decode_inner_247 fcmla_asimdsame2_c),
     (Pattern (Atom 792727552 3217069056) [],
      decode_inner_279 fcmla_asimdelem_c_h),
     (Pattern (Atom 796921856 3217069056) [],
      decode_inner_279 fcmla_asimdelem_c_s),
     (Pattern (Atom 2130237440 4294966272) [],
      decode_inner_55 fcmle_asisdmiscfp16_fz),
     (Pattern (Atom 2124470272 4290771968) [],
      decode_inner_83 fcmle_asisdmisc_fz),
     (Pattern (Atom 788060160 3221224448) [],
      decode_inner_122 fcmle_asimdmiscfp16_fz),
     (Pattern (Atom 782292992 3217030144) [],
      decode_inner_122 fcmle_asimdmisc_fz),
     (Pattern (Atom 1593370624 4294966272) [],
      decode_inner_55 fcmlt_asisdmiscfp16_fz),
     (Pattern (Atom 1587603456 4290771968) [],
      decode_inner_83 fcmlt_asisdmisc_fz),
     (Pattern (Atom 251193344 3221224448) [],
      decode_inner_122 fcmlt_asimdmiscfp16_fz),
     (Pattern (Atom 245426176 3217030144) [],
      decode_inner_122 fcmlt_asimdmisc_fz),
     (Pattern (Atom 518004736 4292934687) [],
      decode_inner_21 fcmp_h_floatcmp),
     (Pattern (Atom 518004744 4292934687) [Atom 0 2031616],
      decode_inner_20 fcmp_hz_floatcmp),
     (Pattern (Atom 505421824 4292934687) [],
      decode_inner_28 fcmp_s_floatcmp),
     (Pattern (Atom 505421832 4292934687) [Atom 0 2031616],
      decode_inner_27 fcmp_sz_floatcmp),
     (Pattern (Atom 509616128 4292934687) [],
      decode_inner_14 fcmp_d_floatcmp),
     (Pattern (Atom 509616136 4292934687) [Atom 0 2031616],
      decode_inner_13 fcmp_dz_floatcmp),
     (Pattern (Atom 518004752 4292934687) [],
      decode_inner_21 fcmpe_h_floatcmp),
     (Pattern (Atom 518004760 4292934687) [Atom 0 2031616],
      decode_inner_20 fcmpe_hz_floatcmp),
     (Pattern (Atom 505421840 4292934687) [],
      decode_inner_28 fcmpe_s_floatcmp),
     (Pattern (Atom 505421848 4292934687) [Atom 0 2031616],
      decode_inner_27 fcmpe_sz_floatcmp),
     (Pattern (Atom 509616144 4292934687) [],
      decode_inner_14 fcmpe_d_floatcmp),
     (Pattern (Atom 509616152 4292934687) [Atom 0 2031616],
      decode_inner_13 fcmpe_dz_floatcmp),
     (Pattern (Atom 517999616 4292873216) [],
      decode_inner_115 fcsel_h_floatsel),
     (Pattern (Atom 505416704 4292873216) [],
      decode_inner_118 fcsel_s_floatsel),
     (Pattern (Atom 509611008 4292873216) [],
      decode_inner_113 fcsel_d_floatsel),
     (Pattern (Atom 518144000 4294966272) [],
      decode_inner_23 fcvt_sh_floatdp1),
     (Pattern (Atom 518176768 4294966272) [],
      decode_inner_9 fcvt_dh_floatdp1),
     (Pattern (Atom 505659392 4294966272) [],
      decode_inner_17 fcvt_hs_floatdp1),
     (Pattern (Atom 505593856 4294966272) [],
      decode_inner_10 fcvt_ds_floatdp1),
     (Pattern (Atom 509853696 4294966272) [],
      decode_inner_15 fcvt_hd_floatdp1),
     (Pattern (Atom 509755392 4294966272) [],
      decode_inner_22 fcvt_sd_floatdp1),
     (Pattern (Atom 518258688 4294966272) [],
      decode_inner_30 fcvtas_32h_float2int),
     (Pattern (Atom 2665742336 4294966272) [],
      decode_inner_34 fcvtas_64h_float2int),
     (Pattern (Atom 505675776 4294966272) [],
      decode_inner_31 fcvtas_32s_float2int),
     (Pattern (Atom 2653159424 4294966272) [],
      decode_inner_35 fcvtas_64s_float2int),
     (Pattern (Atom 509870080 4294966272) [],
      decode_inner_29 fcvtas_32d_float2int),
     (Pattern (Atom 2657353728 4294966272) [],
      decode_inner_33 fcvtas_64d_float2int),
     (Pattern (Atom 1585039360 4294966272) [],
      decode_inner_16 fcvtas_asisdmiscfp16_r),
     (Pattern (Atom 1579272192 4290771968) [],
      decode_inner_48 fcvtas_asisdmisc_r),
     (Pattern (Atom 242862080 3221224448) [],
      decode_inner_70 fcvtas_asimdmiscfp16_r),
     (Pattern (Atom 237094912 3217030144) [],
      decode_inner_70 fcvtas_asimdmisc_r),
     (Pattern (Atom 518324224 4294966272) [],
      decode_inner_30 fcvtau_32h_float2int),
     (Pattern (Atom 2665807872 4294966272) [],
      decode_inner_34 fcvtau_64h_float2int),
     (Pattern (Atom 505741312 4294966272) [],
      decode_inner_31 fcvtau_32s_float2int),
     (Pattern (Atom 2653224960 4294966272) [],
      decode_inner_35 fcvtau_64s_float2int),
     (Pattern (Atom 509935616 4294966272) [],
      decode_inner_29 fcvtau_32d_float2int),
     (Pattern (Atom 2657419264 4294966272) [],
      decode_inner_33 fcvtau_64d_float2int),
     (Pattern (Atom 2121910272 4294966272) [],
      decode_inner_16 fcvtau_asisdmiscfp16_r),
     (Pattern (Atom 2116143104 4290771968) [],
      decode_inner_48 fcvtau_asisdmisc_r),
     (Pattern (Atom 779732992 3221224448) [],
      decode_inner_70 fcvtau_asimdmiscfp16_r),
     (Pattern (Atom 773965824 3217030144) [],
      decode_inner_70 fcvtau_asimdmisc_r),
     (Pattern (Atom 237074432 3217030144) [],
      decode_inner_110 fcvtl_asimdmisc_l),
     (Pattern (Atom 519045120 4294966272) [],
      decode_inner_30 fcvtms_32h_float2int),
     (Pattern (Atom 2666528768 4294966272) [],
      decode_inner_34 fcvtms_64h_float2int),
     (Pattern (Atom 506462208 4294966272) [],
      decode_inner_31 fcvtms_32s_float2int),
     (Pattern (Atom 2653945856 4294966272) [],
      decode_inner_35 fcvtms_64s_float2int),
     (Pattern (Atom 510656512 4294966272) [],
      decode_inner_29 fcvtms_32d_float2int),
     (Pattern (Atom 2658140160 4294966272) [],
      decode_inner_33 fcvtms_64d_float2int),
     (Pattern (Atom 1585035264 4294966272) [],
      decode_inner_16 fcvtms_asisdmiscfp16_r),
     (Pattern (Atom 1579268096 4290771968) [],
      decode_inner_48 fcvtms_asisdmisc_r),
     (Pattern (Atom 242857984 3221224448) [],
      decode_inner_70 fcvtms_asimdmiscfp16_r),
     (Pattern (Atom 237090816 3217030144) [],
      decode_inner_70 fcvtms_asimdmisc_r),
     (Pattern (Atom 519110656 4294966272) [],
      decode_inner_30 fcvtmu_32h_float2int),
     (Pattern (Atom 2666594304 4294966272) [],
      decode_inner_34 fcvtmu_64h_float2int),
     (Pattern (Atom 506527744 4294966272) [],
      decode_inner_31 fcvtmu_32s_float2int),
     (Pattern (Atom 2654011392 4294966272) [],
      decode_inner_35 fcvtmu_64s_float2int),
     (Pattern (Atom 510722048 4294966272) [],
      decode_inner_29 fcvtmu_32d_float2int),
     (Pattern (Atom 2658205696 4294966272) [],
      decode_inner_33 fcvtmu_64d_float2int),
     (Pattern (Atom 2121906176 4294966272) [],
      decode_inner_16 fcvtmu_asisdmiscfp16_r),
     (Pattern (Atom 2116139008 4290771968) [],
      decode_inner_48 fcvtmu_asisdmisc_r),
     (Pattern (Atom 779728896 3221224448) [],
      decode_inner_70 fcvtmu_asimdmiscfp16_r),
     (Pattern (Atom 773961728 3217030144) [],
      decode_inner_70 fcvtmu_asimdmisc_r),
     (Pattern (Atom 237070336 3217030144) [],
      decode_inner_111 fcvtn_asimdmisc_n),
     (Pattern (Atom 517996544 4294966272) [],
      decode_inner_30 fcvtns_32h_float2int),
     (Pattern (Atom 2665480192 4294966272) [],
      decode_inner_34 fcvtns_64h_float2int),
     (Pattern (Atom 505413632 4294966272) [],
      decode_inner_31 fcvtns_32s_float2int),
     (Pattern (Atom 2652897280 4294966272) [],
      decode_inner_35 fcvtns_64s_float2int),
     (Pattern (Atom 509607936 4294966272) [],
      decode_inner_29 fcvtns_32d_float2int),
     (Pattern (Atom 2657091584 4294966272) [],
      decode_inner_33 fcvtns_64d_float2int),
     (Pattern (Atom 1585031168 4294966272) [],
      decode_inner_16 fcvtns_asisdmiscfp16_r),
     (Pattern (Atom 1579264000 4290771968) [],
      decode_inner_48 fcvtns_asisdmisc_r),
     (Pattern (Atom 242853888 3221224448) [],
      decode_inner_70 fcvtns_asimdmiscfp16_r),
     (Pattern (Atom 237086720 3217030144) [],
      decode_inner_70 fcvtns_asimdmisc_r),
     (Pattern (Atom 518062080 4294966272) [],
      decode_inner_30 fcvtnu_32h_float2int),
     (Pattern (Atom 2665545728 4294966272) [],
      decode_inner_34 fcvtnu_64h_float2int),
     (Pattern (Atom 505479168 4294966272) [],
      decode_inner_31 fcvtnu_32s_float2int),
     (Pattern (Atom 2652962816 4294966272) [],
      decode_inner_35 fcvtnu_64s_float2int),
     (Pattern (Atom 509673472 4294966272) [],
      decode_inner_29 fcvtnu_32d_float2int),
     (Pattern (Atom 2657157120 4294966272) [],
      decode_inner_33 fcvtnu_64d_float2int),
     (Pattern (Atom 2121902080 4294966272) [],
      decode_inner_16 fcvtnu_asisdmiscfp16_r),
     (Pattern (Atom 2116134912 4290771968) [],
      decode_inner_48 fcvtnu_asisdmisc_r),
     (Pattern (Atom 779724800 3221224448) [],
      decode_inner_70 fcvtnu_asimdmiscfp16_r),
     (Pattern (Atom 773957632 3217030144) [],
      decode_inner_70 fcvtnu_asimdmisc_r),
     (Pattern (Atom 518520832 4294966272) [],
      decode_inner_30 fcvtps_32h_float2int),
     (Pattern (Atom 2666004480 4294966272) [],
      decode_inner_34 fcvtps_64h_float2int),
     (Pattern (Atom 505937920 4294966272) [],
      decode_inner_31 fcvtps_32s_float2int),
     (Pattern (Atom 2653421568 4294966272) [],
      decode_inner_35 fcvtps_64s_float2int),
     (Pattern (Atom 510132224 4294966272) [],
      decode_inner_29 fcvtps_32d_float2int),
     (Pattern (Atom 2657615872 4294966272) [],
      decode_inner_33 fcvtps_64d_float2int),
     (Pattern (Atom 1593419776 4294966272) [],
      decode_inner_16 fcvtps_asisdmiscfp16_r),
     (Pattern (Atom 1587652608 4290771968) [],
      decode_inner_48 fcvtps_asisdmisc_r),
     (Pattern (Atom 251242496 3221224448) [],
      decode_inner_70 fcvtps_asimdmiscfp16_r),
     (Pattern (Atom 245475328 3217030144) [],
      decode_inner_70 fcvtps_asimdmisc_r),
     (Pattern (Atom 518586368 4294966272) [],
      decode_inner_30 fcvtpu_32h_float2int),
     (Pattern (Atom 2666070016 4294966272) [],
      decode_inner_34 fcvtpu_64h_float2int),
     (Pattern (Atom 506003456 4294966272) [],
      decode_inner_31 fcvtpu_32s_float2int),
     (Pattern (Atom 2653487104 4294966272) [],
      decode_inner_35 fcvtpu_64s_float2int),
     (Pattern (Atom 510197760 4294966272) [],
      decode_inner_29 fcvtpu_32d_float2int),
     (Pattern (Atom 2657681408 4294966272) [],
      decode_inner_33 fcvtpu_64d_float2int),
     (Pattern (Atom 2130290688 4294966272) [],
      decode_inner_16 fcvtpu_asisdmiscfp16_r),
     (Pattern (Atom 2124523520 4290771968) [],
      decode_inner_48 fcvtpu_asisdmisc_r),
     (Pattern (Atom 788113408 3221224448) [],
      decode_inner_70 fcvtpu_asimdmiscfp16_r),
     (Pattern (Atom 782346240 3217030144) [],
      decode_inner_70 fcvtpu_asimdmisc_r),
     (Pattern (Atom 2116118528 4290771968) [],
      decode_inner_59 fcvtxn_asisdmisc_n),
     (Pattern (Atom 773941248 3217030144) [],
      decode_inner_111 fcvtxn_asimdmisc_n),
     (Pattern (Atom 517472256 4294901760) [],
      decode_inner_86 fcvtzs_32h_float2fix),
     (Pattern (Atom 2664955904 4294901760) [],
      decode_inner_90 fcvtzs_64h_float2fix),
     (Pattern (Atom 504889344 4294901760) [],
      decode_inner_87 fcvtzs_32s_float2fix),
     (Pattern (Atom 2652372992 4294901760) [],
      decode_inner_91 fcvtzs_64s_float2fix),
     (Pattern (Atom 509083648 4294901760) [],
      decode_inner_85 fcvtzs_32d_float2fix),
     (Pattern (Atom 2656567296 4294901760) [],
      decode_inner_89 fcvtzs_64d_float2fix),
     (Pattern (Atom 519569408 4294966272) [],
      decode_inner_30 fcvtzs_32h_float2int),
     (Pattern (Atom 2667053056 4294966272) [],
      decode_inner_34 fcvtzs_64h_float2int),
     (Pattern (Atom 506986496 4294966272) [],
      decode_inner_31 fcvtzs_32s_float2int),
     (Pattern (Atom 2654470144 4294966272) [],
      decode_inner_35 fcvtzs_64s_float2int),
     (Pattern (Atom 511180800 4294966272) [],
      decode_inner_29 fcvtzs_32d_float2int),
     (Pattern (Atom 2658664448 4294966272) [],
      decode_inner_33 fcvtzs_64d_float2int),
     (Pattern (Atom 1593900032 4286643200) [Atom 0 7864320],
      decode_inner_120 fcvtzs_asisdshf_c),
     (Pattern (Atom 251722752 3212901376) [Atom 0 7864320],
      decode_inner_170 fcvtzs_asimdshf_c),
     (Pattern (Atom 1593423872 4294966272) [],
      decode_inner_16 fcvtzs_asisdmiscfp16_r),
     (Pattern (Atom 1587656704 4290771968) [],
      decode_inner_48 fcvtzs_asisdmisc_r),
     (Pattern (Atom 251246592 3221224448) [],
      decode_inner_70 fcvtzs_asimdmiscfp16_r),
     (Pattern (Atom 245479424 3217030144) [],
      decode_inner_70 fcvtzs_asimdmisc_r),
     (Pattern (Atom 517537792 4294901760) [],
      decode_inner_86 fcvtzu_32h_float2fix),
     (Pattern (Atom 2665021440 4294901760) [],
      decode_inner_90 fcvtzu_64h_float2fix),
     (Pattern (Atom 504954880 4294901760) [],
      decode_inner_87 fcvtzu_32s_float2fix),
     (Pattern (Atom 2652438528 4294901760) [],
      decode_inner_91 fcvtzu_64s_float2fix),
     (Pattern (Atom 509149184 4294901760) [],
      decode_inner_85 fcvtzu_32d_float2fix),
     (Pattern (Atom 2656632832 4294901760) [],
      decode_inner_89 fcvtzu_64d_float2fix),
     (Pattern (Atom 519634944 4294966272) [],
      decode_inner_30 fcvtzu_32h_float2int),
     (Pattern (Atom 2667118592 4294966272) [],
      decode_inner_34 fcvtzu_64h_float2int),
     (Pattern (Atom 507052032 4294966272) [],
      decode_inner_31 fcvtzu_32s_float2int),
     (Pattern (Atom 2654535680 4294966272) [],
      decode_inner_35 fcvtzu_64s_float2int),
     (Pattern (Atom 511246336 4294966272) [],
      decode_inner_29 fcvtzu_32d_float2int),
     (Pattern (Atom 2658729984 4294966272) [],
      decode_inner_33 fcvtzu_64d_float2int),
     (Pattern (Atom 2130770944 4286643200) [Atom 0 7864320],
      decode_inner_120 fcvtzu_asisdshf_c),
     (Pattern (Atom 788593664 3212901376) [Atom 0 7864320],
      decode_inner_170 fcvtzu_asimdshf_c),
     (Pattern (Atom 2130294784 4294966272) [],
      decode_inner_16 fcvtzu_asisdmiscfp16_r),
     (Pattern (Atom 2124527616 4290771968) [],
      decode_inner_48 fcvtzu_asisdmisc_r),
     (Pattern (Atom 788117504 3221224448) [],
      decode_inner_70 fcvtzu_asimdmiscfp16_r),
     (Pattern (Atom 782350336 3217030144) [],
      decode_inner_70 fcvtzu_asimdmisc_r),
     (Pattern (Atom 518002688 4292934656) [],
      decode_inner_56 fdiv_h_floatdp2),
     (Pattern (Atom 505419776 4292934656) [],
      decode_inner_57 fdiv_s_floatdp2),
     (Pattern (Atom 509614080 4292934656) [],
      decode_inner_54 fdiv_d_floatdp2),
     (Pattern (Atom 775961600 3219192832) [],
      decode_inner_172 fdiv_asimdsamefp16_only),
     (Pattern (Atom 773913600 3214998528) [],
      decode_inner_172 fdiv_asimdsame_only),
     (Pattern (Atom 511574016 4294966272) [],
      decode_inner_29 fjcvtzs_32d_float2int),
     (Pattern (Atom 532676608 4292902912) [],
      decode_inner_100 fmadd_h_floatdp3),
     (Pattern (Atom 520093696 4292902912) [],
      decode_inner_101 fmadd_s_floatdp3),
     (Pattern (Atom 524288000 4292902912) [],
      decode_inner_99 fmadd_d_floatdp3),
     (Pattern (Atom 518014976 4292934656) [],
      decode_inner_56 fmax_h_floatdp2),
     (Pattern (Atom 505432064 4292934656) [],
      decode_inner_57 fmax_s_floatdp2),
     (Pattern (Atom 509626368 4292934656) [],
      decode_inner_54 fmax_d_floatdp2),
     (Pattern (Atom 239088640 3219192832) [],
      decode_inner_172 fmax_asimdsamefp16_only),
     (Pattern (Atom 237040640 3214998528) [],
      decode_inner_172 fmax_asimdsame_only),
     (Pattern (Atom 518023168 4292934656) [],
      decode_inner_56 fmaxnm_h_floatdp2),
     (Pattern (Atom 505440256 4292934656) [],
      decode_inner_57 fmaxnm_s_floatdp2),
     (Pattern (Atom 509634560 4292934656) [],
      decode_inner_54 fmaxnm_d_floatdp2),
     (Pattern (Atom 239076352 3219192832) [],
      decode_inner_172 fmaxnm_asimdsamefp16_only),
     (Pattern (Atom 237028352 3214998528) [],
      decode_inner_172 fmaxnm_asimdsame_only),
     (Pattern (Atom 1580255232 4294966272) [],
      decode_inner_58 fmaxnmp_asisdpair_only_h),
     (Pattern (Atom 2117126144 4290771968) [],
      decode_inner_58 fmaxnmp_asisdpair_only_sd),
     (Pattern (Atom 775947264 3219192832) [],
      decode_inner_172 fmaxnmp_asimdsamefp16_only),
     (Pattern (Atom 773899264 3214998528) [],
      decode_inner_172 fmaxnmp_asimdsame_only),
     (Pattern (Atom 238077952 3221224448) [],
      decode_inner_58 fmaxnmv_asimdall_only_h),
     (Pattern (Atom 774948864 3217030144) [],
      decode_inner_58 fmaxnmv_asimdall_only_sd),
     (Pattern (Atom 1580267520 4294966272) [],
      decode_inner_58 fmaxp_asisdpair_only_h),
     (Pattern (Atom 2117138432 4290771968) [],
      decode_inner_58 fmaxp_asisdpair_only_sd),
     (Pattern (Atom 775959552 3219192832) [],
      decode_inner_172 fmaxp_asimdsamefp16_only),
     (Pattern (Atom 773911552 3214998528) [],
      decode_inner_172 fmaxp_asimdsame_only),
     (Pattern (Atom 238090240 3221224448) [],
      decode_inner_58 fmaxv_asimdall_only_h),
     (Pattern (Atom 774961152 3217030144) [],
      decode_inner_58 fmaxv_asimdall_only_sd),
     (Pattern (Atom 518019072 4292934656) [],
      decode_inner_56 fmin_h_floatdp2),
     (Pattern (Atom 505436160 4292934656) [],
      decode_inner_57 fmin_s_floatdp2),
     (Pattern (Atom 509630464 4292934656) [],
      decode_inner_54 fmin_d_floatdp2),
     (Pattern (Atom 247477248 3219192832) [],
      decode_inner_172 fmin_asimdsamefp16_only),
     (Pattern (Atom 245429248 3214998528) [],
      decode_inner_172 fmin_asimdsame_only),
     (Pattern (Atom 518027264 4292934656) [],
      decode_inner_56 fminnm_h_floatdp2),
     (Pattern (Atom 505444352 4292934656) [],
      decode_inner_57 fminnm_s_floatdp2),
     (Pattern (Atom 509638656 4292934656) [],
      decode_inner_54 fminnm_d_floatdp2),
     (Pattern (Atom 247464960 3219192832) [],
      decode_inner_172 fminnm_asimdsamefp16_only),
     (Pattern (Atom 245416960 3214998528) [],
      decode_inner_172 fminnm_asimdsame_only),
     (Pattern (Atom 1588643840 4294966272) [],
      decode_inner_58 fminnmp_asisdpair_only_h),
     (Pattern (Atom 2125514752 4290771968) [],
      decode_inner_58 fminnmp_asisdpair_only_sd),
     (Pattern (Atom 784335872 3219192832) [],
      decode_inner_172 fminnmp_asimdsamefp16_only),
     (Pattern (Atom 782287872 3214998528) [],
      decode_inner_172 fminnmp_asimdsame_only),
     (Pattern (Atom 246466560 3221224448) [],
      decode_inner_58 fminnmv_asimdall_only_h),
     (Pattern (Atom 783337472 3217030144) [],
      decode_inner_58 fminnmv_asimdall_only_sd),
     (Pattern (Atom 1588656128 4294966272) [],
      decode_inner_58 fminp_asisdpair_only_h),
     (Pattern (Atom 2125527040 4290771968) [],
      decode_inner_58 fminp_asisdpair_only_sd),
     (Pattern (Atom 784348160 3219192832) [],
      decode_inner_172 fminp_asimdsamefp16_only),
     (Pattern (Atom 782300160 3214998528) [],
      decode_inner_172 fminp_asimdsame_only),
     (Pattern (Atom 246478848 3221224448) [],
      decode_inner_58 fminv_asimdall_only_h),
     (Pattern (Atom 783349760 3217030144) [],
      decode_inner_58 fminv_asimdall_only_sd),
     (Pattern (Atom 1593839616 4290835456) [],
      decode_inner_163 fmla_asisdelem_rh_h),
     (Pattern (Atom 1602228224 4286641152) [],
      decode_inner_213 fmla_asisdelem_r_sd),
     (Pattern (Atom 251662336 3217093632) [],
      decode_inner_228 fmla_asimdelem_rh_h),
     (Pattern (Atom 260050944 3212899328) [],
      decode_inner_243 fmla_asimdelem_r_sd),
     (Pattern (Atom 239078400 3219192832) [],
      decode_inner_172 fmla_asimdsamefp16_only),
     (Pattern (Atom 237030400 3214998528) [],
      decode_inner_172 fmla_asimdsame_only),
     (Pattern (Atom 1593856000 4290835456) [],
      decode_inner_163 fmls_asisdelem_rh_h),
     (Pattern (Atom 1602244608 4286641152) [],
      decode_inner_213 fmls_asisdelem_r_sd),
     (Pattern (Atom 251678720 3217093632) [],
      decode_inner_228 fmls_asimdelem_rh_h),
     (Pattern (Atom 260067328 3212899328) [],
      decode_inner_243 fmls_asimdelem_r_sd),
     (Pattern (Atom 247467008 3219192832) [],
      decode_inner_172 fmls_asimdsamefp16_only),
     (Pattern (Atom 245419008 3214998528) [],
      decode_inner_172 fmls_asimdsame_only),
     (Pattern (Atom 518389760 4294966272) [],
      decode_inner_30 fmov_32h_float2int),
     (Pattern (Atom 2665873408 4294966272) [],
      decode_inner_34 fmov_64h_float2int),
     (Pattern (Atom 518455296 4294966272) [],
      decode_inner_18 fmov_h32_float2int),
     (Pattern (Atom 505872384 4294966272) [],
      decode_inner_25 fmov_s32_float2int),
     (Pattern (Atom 505806848 4294966272) [],
      decode_inner_31 fmov_32s_float2int),
     (Pattern (Atom 2665938944 4294966272) [],
      decode_inner_19 fmov_h64_float2int),
     (Pattern (Atom 2657550336 4294966272) [],
      decode_inner_12 fmov_d64_float2int),
     (Pattern (Atom 2662268928 4294966272) [],
      decode_inner_51 fmov_v64i_float2int),
     (Pattern (Atom 2657484800 4294966272) [],
      decode_inner_33 fmov_64d_float2int),
     (Pattern (Atom 2662203392 4294966272) [],
      decode_inner_52 fmov_64vx_float2int),
     (Pattern (Atom 518012928 4294966272) [],
      decode_inner_16 fmov_h_floatdp1),
     (Pattern (Atom 505430016 4294966272) [],
      decode_inner_24 fmov_s_floatdp1),
     (Pattern (Atom 509624320 4294966272) [],
      decode_inner_8 fmov_d_floatdp1),
     (Pattern (Atom 518000640 4292878304) [],
      decode_inner_38 fmov_h_floatimm),
     (Pattern (Atom 505417728 4292878304) [],
      decode_inner_39 fmov_s_floatimm),
     (Pattern (Atom 509612032 4292878304) [],
      decode_inner_37 fmov_d_floatimm),
     (Pattern (Atom 251722752 3220765696) [],
      decode_inner_62 fmov_asimdimm_h_h),
     (Pattern (Atom 251720704 3220765696) [],
      decode_inner_62 fmov_asimdimm_s_s),
     (Pattern (Atom 1862333440 4294507520) [],
      decode_inner_50 fmov_asimdimm_d2_d),
     (Pattern (Atom 532709376 4292902912) [],
      decode_inner_100 fmsub_h_floatdp3),
     (Pattern (Atom 520126464 4292902912) [],
      decode_inner_101 fmsub_s_floatdp3),
     (Pattern (Atom 524320768 4292902912) [],
      decode_inner_99 fmsub_d_floatdp3),
     (Pattern (Atom 1593872384 4290835456) [],
      decode_inner_163 fmul_asisdelem_rh_h),
     (Pattern (Atom 1602260992 4286641152) [],
      decode_inner_213 fmul_asisdelem_r_sd),
     (Pattern (Atom 251695104 3217093632) [],
      decode_inner_228 fmul_asimdelem_rh_h),
     (Pattern (Atom 260083712 3212899328) [],
      decode_inner_243 fmul_asimdelem_r_sd),
     (Pattern (Atom 517998592 4292934656) [],
      decode_inner_56 fmul_h_floatdp2),
     (Pattern (Atom 505415680 4292934656) [],
      decode_inner_57 fmul_s_floatdp2),
     (Pattern (Atom 509609984 4292934656) [],
      decode_inner_54 fmul_d_floatdp2),
     (Pattern (Atom 775953408 3219192832) [],
      decode_inner_172 fmul_asimdsamefp16_only),
     (Pattern (Atom 773905408 3214998528) [],
      decode_inner_172 fmul_asimdsame_only),
     (Pattern (Atom 1581259776 4292934656) [],
      decode_inner_56 fmulx_asisdsamefp16_only),
     (Pattern (Atom 1579211776 4288740352) [],
      decode_inner_102 fmulx_asisdsame_only),
     (Pattern (Atom 239082496 3219192832) [],
      decode_inner_172 fmulx_asimdsamefp16_only),
     (Pattern (Atom 237034496 3214998528) [],
      decode_inner_172 fmulx_asimdsame_only),
     (Pattern (Atom 2130743296 4290835456) [],
      decode_inner_163 fmulx_asisdelem_rh_h),
     (Pattern (Atom 2139131904 4286641152) [],
      decode_inner_213 fmulx_asisdelem_r_sd),
     (Pattern (Atom 788566016 3217093632) [],
      decode_inner_228 fmulx_asimdelem_rh_h),
     (Pattern (Atom 796954624 3212899328) [],
      decode_inner_243 fmulx_asimdelem_r_sd),
     (Pattern (Atom 518078464 4294966272) [],
      decode_inner_16 fneg_h_floatdp1),
     (Pattern (Atom 505495552 4294966272) [],
      decode_inner_24 fneg_s_floatdp1),
     (Pattern (Atom 509689856 4294966272) [],
      decode_inner_8 fneg_d_floatdp1),
     (Pattern (Atom 788068352 3221224448) [],
      decode_inner_70 fneg_asimdmiscfp16_r),
     (Pattern (Atom 782301184 3217030144) [],
      decode_inner_70 fneg_asimdmisc_r),
     (Pattern (Atom 534773760 4292902912) [],
      decode_inner_100 fnmadd_h_floatdp3),
     (Pattern (Atom 522190848 4292902912) [],
      decode_inner_101 fnmadd_s_floatdp3),
     (Pattern (Atom 526385152 4292902912) [],
      decode_inner_99 fnmadd_d_floatdp3),
     (Pattern (Atom 534806528 4292902912) [],
      decode_inner_100 fnmsub_h_floatdp3),
     (Pattern (Atom 522223616 4292902912) [],
      decode_inner_101 fnmsub_s_floatdp3),
     (Pattern (Atom 526417920 4292902912) [],
      decode_inner_99 fnmsub_d_floatdp3),
     (Pattern (Atom 518031360 4292934656) [],
      decode_inner_56 fnmul_h_floatdp2),
     (Pattern (Atom 505448448 4292934656) [],
      decode_inner_57 fnmul_s_floatdp2),
     (Pattern (Atom 509642752 4292934656) [],
      decode_inner_54 fnmul_d_floatdp2),
     (Pattern (Atom 1593432064 4294966272) [],
      decode_inner_16 frecpe_asisdmiscfp16_r),
     (Pattern (Atom 1587664896 4290771968) [],
      decode_inner_48 frecpe_asisdmisc_r),
     (Pattern (Atom 251254784 3221224448) [],
      decode_inner_70 frecpe_asimdmiscfp16_r),
     (Pattern (Atom 245487616 3217030144) [],
      decode_inner_70 frecpe_asimdmisc_r),
     (Pattern (Atom 1581267968 4292934656) [],
      decode_inner_56 frecps_asisdsamefp16_only),
     (Pattern (Atom 1579219968 4288740352) [],
      decode_inner_102 frecps_asisdsame_only),
     (Pattern (Atom 239090688 3219192832) [],
      decode_inner_172 frecps_asimdsamefp16_only),
     (Pattern (Atom 237042688 3214998528) [],
      decode_inner_172 frecps_asimdsame_only),
     (Pattern (Atom 1593440256 4294966272) [],
      decode_inner_16 frecpx_asisdmiscfp16_r),
     (Pattern (Atom 1587673088 4290771968) [],
      decode_inner_48 frecpx_asisdmisc_r),
     (Pattern (Atom 518406144 4294966272) [],
      decode_inner_16 frinta_h_floatdp1),
     (Pattern (Atom 505823232 4294966272) [],
      decode_inner_24 frinta_s_floatdp1),
     (Pattern (Atom 510017536 4294966272) [],
      decode_inner_8 frinta_d_floatdp1),
     (Pattern (Atom 779716608 3221224448) [],
      decode_inner_70 frinta_asimdmiscfp16_r),
     (Pattern (Atom 773949440 3217030144) [],
      decode_inner_70 frinta_asimdmisc_r),
     (Pattern (Atom 518504448 4294966272) [],
      decode_inner_16 frinti_h_floatdp1),
     (Pattern (Atom 505921536 4294966272) [],
      decode_inner_24 frinti_s_floatdp1),
     (Pattern (Atom 510115840 4294966272) [],
      decode_inner_8 frinti_d_floatdp1),
     (Pattern (Atom 788109312 3221224448) [],
      decode_inner_70 frinti_asimdmiscfp16_r),
     (Pattern (Atom 782342144 3217030144) [],
      decode_inner_70 frinti_asimdmisc_r),
     (Pattern (Atom 518340608 4294966272) [],
      decode_inner_16 frintm_h_floatdp1),
     (Pattern (Atom 505757696 4294966272) [],
      decode_inner_24 frintm_s_floatdp1),
     (Pattern (Atom 509952000 4294966272) [],
      decode_inner_8 frintm_d_floatdp1),
     (Pattern (Atom 242849792 3221224448) [],
      decode_inner_70 frintm_asimdmiscfp16_r),
     (Pattern (Atom 237082624 3217030144) [],
      decode_inner_70 frintm_asimdmisc_r),
     (Pattern (Atom 518275072 4294966272) [],
      decode_inner_16 frintn_h_floatdp1),
     (Pattern (Atom 505692160 4294966272) [],
      decode_inner_24 frintn_s_floatdp1),
     (Pattern (Atom 509886464 4294966272) [],
      decode_inner_8 frintn_d_floatdp1),
     (Pattern (Atom 242845696 3221224448) [],
      decode_inner_70 frintn_asimdmiscfp16_r),
     (Pattern (Atom 237078528 3217030144) [],
      decode_inner_70 frintn_asimdmisc_r),
     (Pattern (Atom 518307840 4294966272) [],
      decode_inner_16 frintp_h_floatdp1),
     (Pattern (Atom 505724928 4294966272) [],
      decode_inner_24 frintp_s_floatdp1),
     (Pattern (Atom 509919232 4294966272) [],
      decode_inner_8 frintp_d_floatdp1),
     (Pattern (Atom 251234304 3221224448) [],
      decode_inner_70 frintp_asimdmiscfp16_r),
     (Pattern (Atom 245467136 3217030144) [],
      decode_inner_70 frintp_asimdmisc_r),
     (Pattern (Atom 518471680 4294966272) [],
      decode_inner_16 frintx_h_floatdp1),
     (Pattern (Atom 505888768 4294966272) [],
      decode_inner_24 frintx_s_floatdp1),
     (Pattern (Atom 510083072 4294966272) [],
      decode_inner_8 frintx_d_floatdp1),
     (Pattern (Atom 779720704 3221224448) [],
      decode_inner_70 frintx_asimdmiscfp16_r),
     (Pattern (Atom 773953536 3217030144) [],
      decode_inner_70 frintx_asimdmisc_r),
     (Pattern (Atom 518373376 4294966272) [],
      decode_inner_16 frintz_h_floatdp1),
     (Pattern (Atom 505790464 4294966272) [],
      decode_inner_24 frintz_s_floatdp1),
     (Pattern (Atom 509984768 4294966272) [],
      decode_inner_8 frintz_d_floatdp1),
     (Pattern (Atom 251238400 3221224448) [],
      decode_inner_70 frintz_asimdmiscfp16_r),
     (Pattern (Atom 245471232 3217030144) [],
      decode_inner_70 frintz_asimdmisc_r),
     (Pattern (Atom 2130302976 4294966272) [],
      decode_inner_16 frsqrte_asisdmiscfp16_r),
     (Pattern (Atom 2124535808 4290771968) [],
      decode_inner_48 frsqrte_asisdmisc_r),
     (Pattern (Atom 788125696 3221224448) [],
      decode_inner_70 frsqrte_asimdmiscfp16_r),
     (Pattern (Atom 782358528 3217030144) [],
      decode_inner_70 frsqrte_asimdmisc_r),
     (Pattern (Atom 1589656576 4292934656) [],
      decode_inner_56 frsqrts_asisdsamefp16_only),
     (Pattern (Atom 1587608576 4288740352) [],
      decode_inner_102 frsqrts_asisdsame_only),
     (Pattern (Atom 247479296 3219192832) [],
      decode_inner_172 frsqrts_asimdsamefp16_only),
     (Pattern (Atom 245431296 3214998528) [],
      decode_inner_172 frsqrts_asimdsame_only),
     (Pattern (Atom 518111232 4294966272) [],
      decode_inner_16 fsqrt_h_floatdp1),
     (Pattern (Atom 505528320 4294966272) [],
      decode_inner_24 fsqrt_s_floatdp1),
     (Pattern (Atom 509722624 4294966272) [],
      decode_inner_8 fsqrt_d_floatdp1),
     (Pattern (Atom 788133888 3221224448) [],
      decode_inner_70 fsqrt_asimdmiscfp16_r),
     (Pattern (Atom 782366720 3217030144) [],
      decode_inner_70 fsqrt_asimdmisc_r),
     (Pattern (Atom 518010880 4292934656) [],
      decode_inner_56 fsub_h_floatdp2),
     (Pattern (Atom 505427968 4292934656) [],
      decode_inner_57 fsub_s_floatdp2),
     (Pattern (Atom 509622272 4292934656) [],
      decode_inner_54 fsub_d_floatdp2),
     (Pattern (Atom 247469056 3219192832) [],
      decode_inner_172 fsub_asimdsamefp16_only),
     (Pattern (Atom 245421056 3214998528) [],
      decode_inner_172 fsub_asimdsame_only),
     (Pattern (Atom 1845494784 4292903936) [],
      decode_inner_252 ins_asimdins_iv_v),
     (Pattern (Atom 1308630016 4292934656) [],
      decode_inner_154 ins_asimdins_ir_r),
     (Pattern (Atom 205549568 3221221376) [],
      decode_inner_109 ld1_asisdlse_r1_1v),
     (Pattern (Atom 205561856 3221221376) [],
      decode_inner_220 ld1_asisdlse_r2_2v),
     (Pattern (Atom 205545472 3221221376) [],
      decode_inner_262 ld1_asisdlse_r3_3v),
     (Pattern (Atom 205529088 3221221376) [],
      decode_inner_298 ld1_asisdlse_r4_4v),
     (Pattern (Atom 215969792 3221221376) [],
      decode_inner_184 ld1_asisdlsep_i1_i1),
     (Pattern (Atom 213938176 3219189760) [Atom 2031616 2031616],
      decode_inner_182 ld1_asisdlsep_r1_r1),
     (Pattern (Atom 215982080 3221221376) [],
      decode_inner_254 ld1_asisdlsep_i2_i2),
     (Pattern (Atom 213950464 3219189760) [Atom 2031616 2031616],
      decode_inner_253 ld1_asisdlsep_r2_r2),
     (Pattern (Atom 215965696 3221221376) [],
      decode_inner_289 ld1_asisdlsep_i3_i3),
     (Pattern (Atom 213934080 3219189760) [Atom 2031616 2031616],
      decode_inner_288 ld1_asisdlsep_r3_r3),
     (Pattern (Atom 215949312 3221221376) [],
      decode_inner_309 ld1_asisdlsep_i4_i4),
     (Pattern (Atom 213917696 3219189760) [Atom 2031616 2031616],
      decode_inner_306 ld1_asisdlsep_r4_r4),
     (Pattern (Atom 222298112 3221217280) [],
      decode_inner_185 ld1_asisdlso_b1_1b),
     (Pattern (Atom 222314496 3221218304) [],
      decode_inner_187 ld1_asisdlso_h1_1h),
     (Pattern (Atom 222330880 3221220352) [],
      decode_inner_188 ld1_asisdlso_s1_1s),
     (Pattern (Atom 222331904 3221224448) [],
      decode_inner_186 ld1_asisdlso_d1_1d),
     (Pattern (Atom 232718336 3221217280) [],
      decode_inner_221 ld1_asisdlsop_b1_i1b),
     (Pattern (Atom 230686720 3219185664) [Atom 2031616 2031616],
      decode_inner_231 ld1_asisdlsop_bx1_r1b),
     (Pattern (Atom 232734720 3221218304) [],
      decode_inner_223 ld1_asisdlsop_h1_i1h),
     (Pattern (Atom 230703104 3219186688) [Atom 2031616 2031616],
      decode_inner_233 ld1_asisdlsop_hx1_r1h),
     (Pattern (Atom 232751104 3221220352) [],
      decode_inner_224 ld1_asisdlsop_s1_i1s),
     (Pattern (Atom 230719488 3219188736) [Atom 2031616 2031616],
      decode_inner_234 ld1_asisdlsop_sx1_r1s),
     (Pattern (Atom 232752128 3221224448) [],
      decode_inner_222 ld1_asisdlsop_d1_i1d),
     (Pattern (Atom 230720512 3219192832) [Atom 2031616 2031616],
      decode_inner_232 ld1_asisdlsop_dx1_r1d),
     (Pattern (Atom 222347264 3221221376) [],
      decode_inner_109 ld1r_asisdlso_r1),
     (Pattern (Atom 232767488 3221221376) [],
      decode_inner_184 ld1r_asisdlsop_r1_i),
     (Pattern (Atom 230735872 3219189760) [Atom 2031616 2031616],
      decode_inner_182 ld1r_asisdlsop_rx1_r),
     (Pattern (Atom 205553664 3221221376) [],
      decode_inner_220 ld2_asisdlse_r2),
     (Pattern (Atom 215973888 3221221376) [],
      decode_inner_254 ld2_asisdlsep_i2_i),
     (Pattern (Atom 213942272 3219189760) [Atom 2031616 2031616],
      decode_inner_253 ld2_asisdlsep_r2_r),
     (Pattern (Atom 224395264 3221217280) [],
      decode_inner_248 ld2_asisdlso_b2_2b),
     (Pattern (Atom 224411648 3221218304) [],
      decode_inner_250 ld2_asisdlso_h2_2h),
     (Pattern (Atom 224428032 3221220352) [],
      decode_inner_251 ld2_asisdlso_s2_2s),
     (Pattern (Atom 224429056 3221224448) [],
      decode_inner_249 ld2_asisdlso_d2_2d),
     (Pattern (Atom 234815488 3221217280) [],
      decode_inner_255 ld2_asisdlsop_b2_i2b),
     (Pattern (Atom 232783872 3219185664) [Atom 2031616 2031616],
      decode_inner_263 ld2_asisdlsop_bx2_r2b),
     (Pattern (Atom 234831872 3221218304) [],
      decode_inner_256 ld2_asisdlsop_h2_i2h),
     (Pattern (Atom 232800256 3219186688) [Atom 2031616 2031616],
      decode_inner_265 ld2_asisdlsop_hx2_r2h),
     (Pattern (Atom 234848256 3221220352) [],
      decode_inner_257 ld2_asisdlsop_s2_i2s),
     (Pattern (Atom 232816640 3219188736) [Atom 2031616 2031616],
      decode_inner_266 ld2_asisdlsop_sx2_r2s),
     (Pattern (Atom 234849280 3221224448) [],
      decode_inner_260 ld2_asisdlsop_d2_i2d),
     (Pattern (Atom 232817664 3219192832) [Atom 2031616 2031616],
      decode_inner_264 ld2_asisdlsop_dx2_r2d),
     (Pattern (Atom 224444416 3221221376) [],
      decode_inner_220 ld2r_asisdlso_r2),
     (Pattern (Atom 234864640 3221221376) [],
      decode_inner_254 ld2r_asisdlsop_r2_i),
     (Pattern (Atom 232833024 3219189760) [Atom 2031616 2031616],
      decode_inner_253 ld2r_asisdlsop_rx2_r),
     (Pattern (Atom 205537280 3221221376) [],
      decode_inner_262 ld3_asisdlse_r3),
     (Pattern (Atom 215957504 3221221376) [],
      decode_inner_289 ld3_asisdlsep_i3_i),
     (Pattern (Atom 213925888 3219189760) [Atom 2031616 2031616],
      decode_inner_288 ld3_asisdlsep_r3_r),
     (Pattern (Atom 222306304 3221217280) [],
      decode_inner_274 ld3_asisdlso_b3_3b),
     (Pattern (Atom 222322688 3221218304) [],
      decode_inner_276 ld3_asisdlso_h3_3h),
     (Pattern (Atom 222339072 3221220352) [],
      decode_inner_277 ld3_asisdlso_s3_3s),
     (Pattern (Atom 222340096 3221224448) [],
      decode_inner_275 ld3_asisdlso_d3_3d),
     (Pattern (Atom 232726528 3221217280) [],
      decode_inner_290 ld3_asisdlsop_b3_i3b),
     (Pattern (Atom 230694912 3219185664) [Atom 2031616 2031616],
      decode_inner_294 ld3_asisdlsop_bx3_r3b),
     (Pattern (Atom 232742912 3221218304) [],
      decode_inner_291 ld3_asisdlsop_h3_i3h),
     (Pattern (Atom 230711296 3219186688) [Atom 2031616 2031616],
      decode_inner_296 ld3_asisdlsop_hx3_r3h),
     (Pattern (Atom 232759296 3221220352) [],
      decode_inner_293 ld3_asisdlsop_s3_i3s),
     (Pattern (Atom 230727680 3219188736) [Atom 2031616 2031616],
      decode_inner_297 ld3_asisdlsop_sx3_r3s),
     (Pattern (Atom 232760320 3221224448) [],
      decode_inner_292 ld3_asisdlsop_d3_i3d),
     (Pattern (Atom 230728704 3219192832) [Atom 2031616 2031616],
      decode_inner_295 ld3_asisdlsop_dx3_r3d),
     (Pattern (Atom 222355456 3221221376) [],
      decode_inner_262 ld3r_asisdlso_r3),
     (Pattern (Atom 232775680 3221221376) [],
      decode_inner_289 ld3r_asisdlsop_r3_i),
     (Pattern (Atom 230744064 3219189760) [Atom 2031616 2031616],
      decode_inner_288 ld3r_asisdlsop_rx3_r),
     (Pattern (Atom 205520896 3221221376) [],
      decode_inner_298 ld4_asisdlse_r4),
     (Pattern (Atom 215941120 3221221376) [],
      decode_inner_309 ld4_asisdlsep_i4_i),
     (Pattern (Atom 213909504 3219189760) [Atom 2031616 2031616],
      decode_inner_306 ld4_asisdlsep_r4_r),
     (Pattern (Atom 224403456 3221217280) [],
      decode_inner_299 ld4_asisdlso_b4_4b),
     (Pattern (Atom 224419840 3221218304) [],
      decode_inner_301 ld4_asisdlso_h4_4h),
     (Pattern (Atom 224436224 3221220352) [],
      decode_inner_302 ld4_asisdlso_s4_4s),
     (Pattern (Atom 224437248 3221224448) [],
      decode_inner_300 ld4_asisdlso_d4_4d),
     (Pattern (Atom 234823680 3221217280) [],
      decode_inner_304 ld4_asisdlsop_b4_i4b),
     (Pattern (Atom 232792064 3219185664) [Atom 2031616 2031616],
      decode_inner_310 ld4_asisdlsop_bx4_r4b),
     (Pattern (Atom 234840064 3221218304) [],
      decode_inner_305 ld4_asisdlsop_h4_i4h),
     (Pattern (Atom 232808448 3219186688) [Atom 2031616 2031616],
      decode_inner_312 ld4_asisdlsop_hx4_r4h),
     (Pattern (Atom 234856448 3221220352) [],
      decode_inner_308 ld4_asisdlsop_s4_i4s),
     (Pattern (Atom 232824832 3219188736) [Atom 2031616 2031616],
      decode_inner_313 ld4_asisdlsop_sx4_r4s),
     (Pattern (Atom 234857472 3221224448) [],
      decode_inner_307 ld4_asisdlsop_d4_i4d),
     (Pattern (Atom 232825856 3219192832) [Atom 2031616 2031616],
      decode_inner_311 ld4_asisdlsop_dx4_r4d),
     (Pattern (Atom 224452608 3221221376) [],
      decode_inner_298 ld4r_asisdlso_r4),
     (Pattern (Atom 234872832 3221221376) [],
      decode_inner_309 ld4r_asisdlsop_r4_i),
     (Pattern (Atom 232841216 3219189760) [Atom 2031616 2031616],
      decode_inner_306 ld4r_asisdlsop_rx4_r),
     (Pattern (Atom 742391808 4290772992) [],
      decode_inner_206 ldnp_s_ldstnapair_offs),
     (Pattern (Atom 1816133632 4290772992) [],
      decode_inner_204 ldnp_d_ldstnapair_offs),
     (Pattern (Atom 2889875456 4290772992) [],
      decode_inner_205 ldnp_q_ldstnapair_offs),
     (Pattern (Atom 750780416 4290772992) [],
      decode_inner_191 ldp_s_ldstpair_post),
     (Pattern (Atom 1824522240 4290772992) [],
      decode_inner_189 ldp_d_ldstpair_post),
     (Pattern (Atom 2898264064 4290772992) [],
      decode_inner_190 ldp_q_ldstpair_post),
     (Pattern (Atom 767557632 4290772992) [],
      decode_inner_197 ldp_s_ldstpair_pre),
     (Pattern (Atom 1841299456 4290772992) [],
      decode_inner_195 ldp_d_ldstpair_pre),
     (Pattern (Atom 2915041280 4290772992) [],
      decode_inner_196 ldp_q_ldstpair_pre),
     (Pattern (Atom 759169024 4290772992) [],
      decode_inner_206 ldp_s_ldstpair_off),
     (Pattern (Atom 1832910848 4290772992) [],
      decode_inner_204 ldp_d_ldstpair_off),
     (Pattern (Atom 2906652672 4290772992) [],
      decode_inner_205 ldp_q_ldstpair_off),
     (Pattern (Atom 1010828288 4292873216) [],
      decode_inner_112 ldr_b_ldst_immpost),
     (Pattern (Atom 2084570112 4292873216) [],
      decode_inner_116 ldr_h_ldst_immpost),
     (Pattern (Atom 3158311936 4292873216) [],
      decode_inner_119 ldr_s_ldst_immpost),
     (Pattern (Atom 4232053760 4292873216) [],
      decode_inner_114 ldr_d_ldst_immpost),
     (Pattern (Atom 1019216896 4292873216) [],
      decode_inner_117 ldr_q_ldst_immpost),
     (Pattern (Atom 1010830336 4292873216) [],
      decode_inner_131 ldr_b_ldst_immpre),
     (Pattern (Atom 2084572160 4292873216) [],
      decode_inner_133 ldr_h_ldst_immpre),
     (Pattern (Atom 3158313984 4292873216) [],
      decode_inner_135 ldr_s_ldst_immpre),
     (Pattern (Atom 4232055808 4292873216) [],
      decode_inner_132 ldr_d_ldst_immpre),
     (Pattern (Atom 1019218944 4292873216) [],
      decode_inner_134 ldr_q_ldst_immpre),
     (Pattern (Atom 1027604480 4290772992) [],
      decode_inner_143 ldr_b_ldst_pos),
     (Pattern (Atom 2101346304 4290772992) [],
      decode_inner_147 ldr_h_ldst_pos),
     (Pattern (Atom 3175088128 4290772992) [],
      decode_inner_151 ldr_s_ldst_pos),
     (Pattern (Atom 4248829952 4290772992) [],
      decode_inner_145 ldr_d_ldst_pos),
     (Pattern (Atom 1035993088 4290772992) [],
      decode_inner_149 ldr_q_ldst_pos),
     (Pattern (Atom 469762048 4278190080) [],
      decode_inner_42 ldr_s_loadlit),
     (Pattern (Atom 1543503872 4278190080) [],
      decode_inner_40 ldr_d_loadlit),
     (Pattern (Atom 2617245696 4278190080) [],
      decode_inner_41 ldr_q_loadlit),
     (Pattern (Atom 1012926464 4292873216) [Atom 24576 57344],
      decode_inner_278 ldr_b_ldst_regoff),
     (Pattern (Atom 1012951040 4292930560) [],
      decode_inner_235 ldr_bl_ldst_regoff),
     (Pattern (Atom 2086668288 4292873216) [],
      decode_inner_283 ldr_h_ldst_regoff),
     (Pattern (Atom 3160410112 4292873216) [],
      decode_inner_285 ldr_s_ldst_regoff),
     (Pattern (Atom 4234151936 4292873216) [],
      decode_inner_282 ldr_d_ldst_regoff),
     (Pattern (Atom 1021315072 4292873216) [],
      decode_inner_284 ldr_q_ldst_regoff),
     (Pattern (Atom 1010827264 4292873216) [],
      decode_inner_144 ldur_b_ldst_unscaled),
     (Pattern (Atom 2084569088 4292873216) [],
      decode_inner_148 ldur_h_ldst_unscaled),
     (Pattern (Atom 3158310912 4292873216) [],
      decode_inner_152 ldur_s_ldst_unscaled),
     (Pattern (Atom 4232052736 4292873216) [],
      decode_inner_146 ldur_d_ldst_unscaled),
     (Pattern (Atom 1019215872 4292873216) [],
      decode_inner_150 ldur_q_ldst_unscaled),
     (Pattern (Atom 788529152 3204510720) [],
      decode_inner_243 mla_asimdelem_r),
     (Pattern (Atom 237016064 3206609920) [],
      decode_inner_172 mla_asimdsame_only),
     (Pattern (Atom 788545536 3204510720) [],
      decode_inner_243 mls_asimdelem_r),
     (Pattern (Atom 773886976 3206609920) [],
      decode_inner_172 mls_asimdsame_only),
     (Pattern (Atom 251716608 3220765696) [],
      decode_inner_166 movi_asimdimm_n_b),
     (Pattern (Atom 251692032 3220757504) [],
      decode_inner_216 movi_asimdimm_l_hl),
     (Pattern (Atom 251659264 3220741120) [],
      decode_inner_216 movi_asimdimm_l_sl),
     (Pattern (Atom 251708416 3220761600) [],
      decode_inner_199 movi_asimdimm_m_sm),
     (Pattern (Atom 788587520 4294507520) [],
      decode_inner_37 movi_asimdimm_d_ds),
     (Pattern (Atom 1862329344 4294507520) [],
      decode_inner_50 movi_asimdimm_d2_d),
     (Pattern (Atom 251691008 3204510720) [],
      decode_inner_243 mul_asimdelem_r),
     (Pattern (Atom 237018112 3206609920) [],
      decode_inner_172 mul_asimdsame_only),
     (Pattern (Atom 788562944 3220757504) [],
      decode_inner_216 mvni_asimdimm_l_hl),
     (Pattern (Atom 788530176 3220741120) [],
      decode_inner_216 mvni_asimdimm_l_sl),
     (Pattern (Atom 788579328 3220761600) [],
      decode_inner_199 mvni_asimdimm_m_sm),
     (Pattern (Atom 2116073472 4282383360) [],
      decode_inner_48 neg_asisdmisc_r),
     (Pattern (Atom 773896192 3208641536) [],
      decode_inner_70 neg_asimdmisc_r),
     (Pattern (Atom 773871616 3221224448) [],
      decode_inner_70 not_asimdmisc_r),
     (Pattern (Atom 249568256 3219192832) [],
      decode_inner_172 orn_asimdsame_only),
     (Pattern (Atom 251696128 3220757504) [],
      decode_inner_216 orr_asimdimm_l_hl),
     (Pattern (Atom 251663360 3220741120) [],
      decode_inner_216 orr_asimdimm_l_sl),
     (Pattern (Atom 245373952 3219192832) [],
      decode_inner_172 orr_asimdsame_only),
     (Pattern (Atom 773889024 3206609920) [],
      decode_inner_172 pmul_asimdsame_only),
     (Pattern (Atom 237035520 3206609920) [],
      decode_inner_226 pmull_asimddiff_l),
     (Pattern (Atom 773865472 3206609920) [],
      decode_inner_227 raddhn_asimddiff_n),
     (Pattern (Atom 3462433792 4292934656) [],
      decode_inner_138 rax1_vvv2_cryptosha512_3),
     (Pattern (Atom 778065920 3221224448) [],
      decode_inner_70 rbit_asimdmisc_r),
     (Pattern (Atom 236984320 3208641536) [],
      decode_inner_70 rev16_asimdmisc_r),
     (Pattern (Atom 773851136 3208641536) [],
      decode_inner_70 rev32_asimdmisc_r),
     (Pattern (Atom 236980224 3208641536) [],
      decode_inner_70 rev64_asimdmisc_r),
     (Pattern (Atom 251694080 3212901376) [Atom 0 7864320],
      decode_inner_211 rshrn_asimdshf_n),
     (Pattern (Atom 773873664 3206609920) [],
      decode_inner_227 rsubhn_asimddiff_n),
     (Pattern (Atom 237009920 3206609920) [],
      decode_inner_172 saba_asimdsame_only),
     (Pattern (Atom 236998656 3206609920) [],
      decode_inner_226 sabal_asimddiff_l),
     (Pattern (Atom 237007872 3206609920) [],
      decode_inner_172 sabd_asimdsame_only),
     (Pattern (Atom 237006848 3206609920) [],
      decode_inner_226 sabdl_asimddiff_l),
     (Pattern (Atom 237004800 3208641536) [],
      decode_inner_84 sadalp_asimdmisc_p),
     (Pattern (Atom 236978176 3206609920) [],
      decode_inner_226 saddl_asimddiff_l),
     (Pattern (Atom 236988416 3208641536) [],
      decode_inner_84 saddlp_asimdmisc_p),
     (Pattern (Atom 238041088 3208641536) [],
      decode_inner_58 saddlv_asimdall_only),
     (Pattern (Atom 236982272 3206609920) [],
      decode_inner_225 saddw_asimddiff_w),
     (Pattern (Atom 516030464 4294901760) [],
      decode_inner_79 scvtf_h32_float2fix),
     (Pattern (Atom 503447552 4294901760) [],
      decode_inner_81 scvtf_s32_float2fix),
     (Pattern (Atom 507641856 4294901760) [],
      decode_inner_77 scvtf_d32_float2fix),
     (Pattern (Atom 2663514112 4294901760) [],
      decode_inner_80 scvtf_h64_float2fix),
     (Pattern (Atom 2650931200 4294901760) [],
      decode_inner_82 scvtf_s64_float2fix),
     (Pattern (Atom 2655125504 4294901760) [],
      decode_inner_78 scvtf_d64_float2fix),
     (Pattern (Atom 518127616 4294966272) [],
      decode_inner_18 scvtf_h32_float2int),
     (Pattern (Atom 505544704 4294966272) [],
      decode_inner_25 scvtf_s32_float2int),
     (Pattern (Atom 509739008 4294966272) [],
      decode_inner_11 scvtf_d32_float2int),
     (Pattern (Atom 2665611264 4294966272) [],
      decode_inner_19 scvtf_h64_float2int),
     (Pattern (Atom 2653028352 4294966272) [],
      decode_inner_26 scvtf_s64_float2int),
     (Pattern (Atom 2657222656 4294966272) [],
      decode_inner_12 scvtf_d64_float2int),
     (Pattern (Atom 1593893888 4286643200) [Atom 0 7864320],
      decode_inner_120 scvtf_asisdshf_c),
     (Pattern (Atom 251716608 3212901376) [Atom 0 7864320],
      decode_inner_170 scvtf_asimdshf_c),
     (Pattern (Atom 1585043456 4294966272) [],
      decode_inner_16 scvtf_asisdmiscfp16_r),
     (Pattern (Atom 1579276288 4290771968) [],
      decode_inner_48 scvtf_asisdmisc_r),
     (Pattern (Atom 242866176 3221224448) [],
      decode_inner_70 scvtf_asimdmiscfp16_r),
     (Pattern (Atom 237099008 3217030144) [],
      decode_inner_70 scvtf_asimdmisc_r),
     (Pattern (Atom 251715584 3204510720) [],
      decode_inner_244 sdot_asimdelem_d),
     (Pattern (Atom 234918912 3206609920) [],
      decode_inner_192 sdot_asimdsame2_d),
     (Pattern (Atom 1577058304 4292934656) [],
      decode_inner_75 sha1c_qsv_cryptosha3),
     (Pattern (Atom 1579681792 4294966272) [],
      decode_inner_24 sha1h_ss_cryptosha2),
     (Pattern (Atom 1577066496 4292934656) [],
      decode_inner_75 sha1m_qsv_cryptosha3),
     (Pattern (Atom 1577062400 4292934656) [],
      decode_inner_75 sha1p_qsv_cryptosha3),
     (Pattern (Atom 1577070592 4292934656) [],
      decode_inner_139 sha1su0_vvv_cryptosha3),
     (Pattern (Atom 1579685888 4294966272) [],
      decode_inner_61 sha1su1_vv_cryptosha2),
     (Pattern (Atom 1577074688 4292934656) [],
      decode_inner_74 sha256h_qqv_cryptosha3),
     (Pattern (Atom 1577078784 4292934656) [],
      decode_inner_74 sha256h2_qqv_cryptosha3),
     (Pattern (Atom 1579689984 4294966272) [],
      decode_inner_61 sha256su0_vv_cryptosha2),
     (Pattern (Atom 1577082880 4292934656) [],
      decode_inner_139 sha256su1_vvv_cryptosha3),
     (Pattern (Atom 3462430720 4292934656) [],
      decode_inner_73 sha512h_qqv_cryptosha512_3),
     (Pattern (Atom 3462431744 4292934656) [],
      decode_inner_73 sha512h2_qqv_cryptosha512_3),
     (Pattern (Atom 3468722176 4294966272) [],
      decode_inner_60 sha512su0_vv2_cryptosha512_2),
     (Pattern (Atom 3462432768 4292934656) [],
      decode_inner_138 sha512su1_vvv2_cryptosha512_3),
     (Pattern (Atom 236979200 3206609920) [],
      decode_inner_172 shadd_asimdsame_only),
     (Pattern (Atom 1593857024 4286643200) [Atom 0 7864320],
      decode_inner_121 shl_asisdshf_r),
     (Pattern (Atom 251679744 3212901376) [Atom 0 7864320],
      decode_inner_171 shl_asimdshf_r),
     (Pattern (Atom 773928960 3208641536) [],
      decode_inner_210 shll_asimdmisc_s),
     (Pattern (Atom 251692032 3212901376) [Atom 0 7864320],
      decode_inner_211 shrn_asimdshf_n),
     (Pattern (Atom 236987392 3206609920) [],
      decode_inner_172 shsub_asimdsame_only),
     (Pattern (Atom 2130727936 4286643200) [Atom 0 7864320],
      decode_inner_121 sli_asisdshf_r),
     (Pattern (Atom 788550656 3212901376) [Atom 0 7864320],
      decode_inner_171 sli_asimdshf_r),
     (Pattern (Atom 3462447104 4292934656) [],
      decode_inner_139 sm3partw1_vvv4_cryptosha512_3),
     (Pattern (Atom 3462448128 4292934656) [],
      decode_inner_139 sm3partw2_vvv4_cryptosha512_3),
     (Pattern (Atom 3460300800 4292902912) [],
      decode_inner_215 sm3ss1_vvv4_crypto4),
     (Pattern (Atom 3460333568 4292922368) [],
      decode_inner_198 sm3tt1a_vvv4_crypto3_imm2),
     (Pattern (Atom 3460334592 4292922368) [],
      decode_inner_198 sm3tt1b_vvv4_crypto3_imm2),
     (Pattern (Atom 3460335616 4292922368) [],
      decode_inner_198 sm3tt2a_vvv4_crypto3_imm2),
     (Pattern (Atom 3460336640 4292922368) [],
      decode_inner_183 sm3tt2b_vvv_crypto3_imm2),
     (Pattern (Atom 3468723200 4294966272) [],
      decode_inner_61 sm4e_vv4_cryptosha512_2),
     (Pattern (Atom 3462449152 4292934656) [],
      decode_inner_139 sm4ekey_vvv4_cryptosha512_3),
     (Pattern (Atom 237003776 3206609920) [],
      decode_inner_172 smax_asimdsame_only),
     (Pattern (Atom 237020160 3206609920) [],
      decode_inner_172 smaxp_asimdsame_only),
     (Pattern (Atom 238069760 3208641536) [],
      decode_inner_58 smaxv_asimdall_only),
     (Pattern (Atom 237005824 3206609920) [],
      decode_inner_172 smin_asimdsame_only),
     (Pattern (Atom 237022208 3206609920) [],
      decode_inner_172 sminp_asimdsame_only),
     (Pattern (Atom 238135296 3208641536) [],
      decode_inner_58 sminv_asimdall_only),
     (Pattern (Atom 251666432 3204510720) [],
      decode_inner_258 smlal_asimdelem_l),
     (Pattern (Atom 237010944 3206609920) [],
      decode_inner_226 smlal_asimddiff_l),
     (Pattern (Atom 251682816 3204510720) [],
      decode_inner_258 smlsl_asimdelem_l),
     (Pattern (Atom 237019136 3206609920) [],
      decode_inner_226 smlsl_asimddiff_l),
     (Pattern (Atom 234892288 4292934656) [],
      decode_inner_123 smov_asimdins_w_w),
     (Pattern (Atom 1308634112 4292934656) [],
      decode_inner_127 smov_asimdins_x_x),
     (Pattern (Atom 251699200 3204510720) [],
      decode_inner_258 smull_asimdelem_l),
     (Pattern (Atom 237027328 3206609920) [],
      decode_inner_226 smull_asimddiff_l),
     (Pattern (Atom 1579186176 4282383360) [],
      decode_inner_48 sqabs_asisdmisc_r),
     (Pattern (Atom 237008896 3208641536) [],
      decode_inner_70 sqabs_asimdmisc_r),
     (Pattern (Atom 1579158528 4280351744) [],
      decode_inner_102 sqadd_asisdsame_only),
     (Pattern (Atom 236981248 3206609920) [],
      decode_inner_172 sqadd_asimdsame_only),
     (Pattern (Atom 1593847808 4278252544) [],
      decode_inner_230 sqdmlal_asisdelem_l),
     (Pattern (Atom 251670528 3204510720) [],
      decode_inner_258 sqdmlal_asimdelem_l),
     (Pattern (Atom 1579192320 4280351744) [],
      decode_inner_137 sqdmlal_asisddiff_only),
     (Pattern (Atom 237015040 3206609920) [],
      decode_inner_226 sqdmlal_asimddiff_l),
     (Pattern (Atom 1593864192 4278252544) [],
      decode_inner_230 sqdmlsl_asisdelem_l),
     (Pattern (Atom 251686912 3204510720) [],
      decode_inner_258 sqdmlsl_asimdelem_l),
     (Pattern (Atom 1579200512 4280351744) [],
      decode_inner_137 sqdmlsl_asisddiff_only),
     (Pattern (Atom 237023232 3206609920) [],
      decode_inner_226 sqdmlsl_asimddiff_l),
     (Pattern (Atom 1593884672 4278252544) [],
      decode_inner_213 sqdmulh_asisdelem_r),
     (Pattern (Atom 251707392 3204510720) [],
      decode_inner_243 sqdmulh_asimdelem_r),
     (Pattern (Atom 1579201536 4280351744) [],
      decode_inner_102 sqdmulh_asisdsame_only),
     (Pattern (Atom 237024256 3206609920) [],
      decode_inner_172 sqdmulh_asimdsame_only),
     (Pattern (Atom 1593880576 4278252544) [],
      decode_inner_230 sqdmull_asisdelem_l),
     (Pattern (Atom 251703296 3204510720) [],
      decode_inner_258 sqdmull_asimdelem_l),
     (Pattern (Atom 1579208704 4280351744) [],
      decode_inner_137 sqdmull_asisddiff_only),
     (Pattern (Atom 237031424 3206609920) [],
      decode_inner_226 sqdmull_asimddiff_l),
     (Pattern (Atom 2116057088 4282383360) [],
      decode_inner_48 sqneg_asisdmisc_r),
     (Pattern (Atom 773879808 3208641536) [],
      decode_inner_70 sqneg_asimdmisc_r),
     (Pattern (Atom 2130759680 4278252544) [],
      decode_inner_213 sqrdmlah_asisdelem_r),
     (Pattern (Atom 788582400 3204510720) [],
      decode_inner_243 sqrdmlah_asimdelem_r),
     (Pattern (Atom 2113963008 4280351744) [],
      decode_inner_102 sqrdmlah_asisdsame2_only),
     (Pattern (Atom 771785728 3206609920) [],
      decode_inner_172 sqrdmlah_asimdsame2_only),
     (Pattern (Atom 2130767872 4278252544) [],
      decode_inner_213 sqrdmlsh_asisdelem_r),
     (Pattern (Atom 788590592 3204510720) [],
      decode_inner_243 sqrdmlsh_asimdelem_r),
     (Pattern (Atom 2113965056 4280351744) [],
      decode_inner_102 sqrdmlsh_asisdsame2_only),
     (Pattern (Atom 771787776 3206609920) [],
      decode_inner_172 sqrdmlsh_asimdsame2_only),
     (Pattern (Atom 1593888768 4278252544) [],
      decode_inner_213 sqrdmulh_asisdelem_r),
     (Pattern (Atom 251711488 3204510720) [],
      decode_inner_243 sqrdmulh_asimdelem_r),
     (Pattern (Atom 2116072448 4280351744) [],
      decode_inner_102 sqrdmulh_asisdsame_only),
     (Pattern (Atom 773895168 3206609920) [],
      decode_inner_172 sqrdmulh_asimdsame_only),
     (Pattern (Atom 1579179008 4280351744) [],
      decode_inner_102 sqrshl_asisdsame_only),
     (Pattern (Atom 237001728 3206609920) [],
      decode_inner_172 sqrshl_asimdsame_only),
     (Pattern (Atom 1593875456 4286643200) [Atom 0 7864320],
      decode_inner_153 sqrshrn_asisdshf_n),
     (Pattern (Atom 251698176 3212901376) [Atom 0 7864320],
      decode_inner_211 sqrshrn_asimdshf_n),
     (Pattern (Atom 2130742272 4286643200) [Atom 0 7864320],
      decode_inner_153 sqrshrun_asisdshf_n),
     (Pattern (Atom 788564992 3212901376) [Atom 0 7864320],
      decode_inner_211 sqrshrun_asimdshf_n),
     (Pattern (Atom 1593865216 4286643200) [Atom 0 7864320],
      decode_inner_121 sqshl_asisdshf_r),
     (Pattern (Atom 251687936 3212901376) [Atom 0 7864320],
      decode_inner_171 sqshl_asimdshf_r),
     (Pattern (Atom 1579174912 4280351744) [],
      decode_inner_102 sqshl_asisdsame_only),
     (Pattern (Atom 236997632 3206609920) [],
      decode_inner_172 sqshl_asimdsame_only),
     (Pattern (Atom 2130732032 4286643200) [Atom 0 7864320],
      decode_inner_121 sqshlu_asisdshf_r),
     (Pattern (Atom 788554752 3212901376) [Atom 0 7864320],
      decode_inner_171 sqshlu_asimdshf_r),
     (Pattern (Atom 1593873408 4286643200) [Atom 0 7864320],
      decode_inner_153 sqshrn_asisdshf_n),
     (Pattern (Atom 251696128 3212901376) [Atom 0 7864320],
      decode_inner_211 sqshrn_asimdshf_n),
     (Pattern (Atom 2130740224 4286643200) [Atom 0 7864320],
      decode_inner_153 sqshrun_asisdshf_n),
     (Pattern (Atom 788562944 3212901376) [Atom 0 7864320],
      decode_inner_211 sqshrun_asimdshf_n),
     (Pattern (Atom 1579166720 4280351744) [],
      decode_inner_102 sqsub_asisdsame_only),
     (Pattern (Atom 236989440 3206609920) [],
      decode_inner_172 sqsub_asimdsame_only),
     (Pattern (Atom 1579239424 4282383360) [],
      decode_inner_59 sqxtn_asisdmisc_n),
     (Pattern (Atom 237062144 3208641536) [],
      decode_inner_111 sqxtn_asimdmisc_n),
     (Pattern (Atom 2116102144 4282383360) [],
      decode_inner_59 sqxtun_asisdmisc_n),
     (Pattern (Atom 773924864 3208641536) [],
      decode_inner_111 sqxtun_asimdmisc_n),
     (Pattern (Atom 236983296 3206609920) [],
      decode_inner_172 srhadd_asimdsame_only),
     (Pattern (Atom 2130723840 4286643200) [Atom 0 7864320],
      decode_inner_121 sri_asisdshf_r),
     (Pattern (Atom 788546560 3212901376) [Atom 0 7864320],
      decode_inner_171 sri_asimdshf_r),
     (Pattern (Atom 1579176960 4280351744) [],
      decode_inner_102 srshl_asisdsame_only),
     (Pattern (Atom 236999680 3206609920) [],
      decode_inner_172 srshl_asimdsame_only),
     (Pattern (Atom 1593844736 4286643200) [Atom 0 7864320],
      decode_inner_121 srshr_asisdshf_r),
     (Pattern (Atom 251667456 3212901376) [Atom 0 7864320],
      decode_inner_171 srshr_asimdshf_r),
     (Pattern (Atom 1593848832 4286643200) [Atom 0 7864320],
      decode_inner_121 srsra_asisdshf_r),
     (Pattern (Atom 251671552 3212901376) [Atom 0 7864320],
      decode_inner_171 srsra_asimdshf_r),
     (Pattern (Atom 1579172864 4280351744) [],
      decode_inner_102 sshl_asisdsame_only),
     (Pattern (Atom 236995584 3206609920) [],
      decode_inner_172 sshl_asimdsame_only),
     (Pattern (Atom 251700224 3212901376) [Atom 0 7864320],
      decode_inner_210 sshll_asimdshf_l),
     (Pattern (Atom 1593836544 4286643200) [Atom 0 7864320],
      decode_inner_121 sshr_asisdshf_r),
     (Pattern (Atom 251659264 3212901376) [Atom 0 7864320],
      decode_inner_171 sshr_asimdshf_r),
     (Pattern (Atom 1593840640 4286643200) [Atom 0 7864320],
      decode_inner_121 ssra_asisdshf_r),
     (Pattern (Atom 251663360 3212901376) [Atom 0 7864320],
      decode_inner_171 ssra_asimdshf_r),
     (Pattern (Atom 236986368 3206609920) [],
      decode_inner_226 ssubl_asimddiff_l),
     (Pattern (Atom 236990464 3206609920) [],
      decode_inner_225 ssubw_asimddiff_w),
     (Pattern (Atom 201355264 3221221376) [],
      decode_inner_109 st1_asisdlse_r1_1v),
     (Pattern (Atom 201367552 3221221376) [],
      decode_inner_220 st1_asisdlse_r2_2v),
     (Pattern (Atom 201351168 3221221376) [],
      decode_inner_262 st1_asisdlse_r3_3v),
     (Pattern (Atom 201334784 3221221376) [],
      decode_inner_298 st1_asisdlse_r4_4v),
     (Pattern (Atom 211775488 3221221376) [],
      decode_inner_184 st1_asisdlsep_i1_i1),
     (Pattern (Atom 209743872 3219189760) [Atom 2031616 2031616],
      decode_inner_182 st1_asisdlsep_r1_r1),
     (Pattern (Atom 211787776 3221221376) [],
      decode_inner_254 st1_asisdlsep_i2_i2),
     (Pattern (Atom 209756160 3219189760) [Atom 2031616 2031616],
      decode_inner_253 st1_asisdlsep_r2_r2),
     (Pattern (Atom 211771392 3221221376) [],
      decode_inner_289 st1_asisdlsep_i3_i3),
     (Pattern (Atom 209739776 3219189760) [Atom 2031616 2031616],
      decode_inner_288 st1_asisdlsep_r3_r3),
     (Pattern (Atom 211755008 3221221376) [],
      decode_inner_309 st1_asisdlsep_i4_i4),
     (Pattern (Atom 209723392 3219189760) [Atom 2031616 2031616],
      decode_inner_306 st1_asisdlsep_r4_r4),
     (Pattern (Atom 218103808 3221217280) [],
      decode_inner_185 st1_asisdlso_b1_1b),
     (Pattern (Atom 218120192 3221218304) [],
      decode_inner_187 st1_asisdlso_h1_1h),
     (Pattern (Atom 218136576 3221220352) [],
      decode_inner_188 st1_asisdlso_s1_1s),
     (Pattern (Atom 218137600 3221224448) [],
      decode_inner_186 st1_asisdlso_d1_1d),
     (Pattern (Atom 228524032 3221217280) [],
      decode_inner_221 st1_asisdlsop_b1_i1b),
     (Pattern (Atom 226492416 3219185664) [Atom 2031616 2031616],
      decode_inner_231 st1_asisdlsop_bx1_r1b),
     (Pattern (Atom 228540416 3221218304) [],
      decode_inner_223 st1_asisdlsop_h1_i1h),
     (Pattern (Atom 226508800 3219186688) [Atom 2031616 2031616],
      decode_inner_233 st1_asisdlsop_hx1_r1h),
     (Pattern (Atom 228556800 3221220352) [],
      decode_inner_224 st1_asisdlsop_s1_i1s),
     (Pattern (Atom 226525184 3219188736) [Atom 2031616 2031616],
      decode_inner_234 st1_asisdlsop_sx1_r1s),
     (Pattern (Atom 228557824 3221224448) [],
      decode_inner_222 st1_asisdlsop_d1_i1d),
     (Pattern (Atom 226526208 3219192832) [Atom 2031616 2031616],
      decode_inner_232 st1_asisdlsop_dx1_r1d),
     (Pattern (Atom 201359360 3221221376) [],
      decode_inner_220 st2_asisdlse_r2),
     (Pattern (Atom 211779584 3221221376) [],
      decode_inner_254 st2_asisdlsep_i2_i),
     (Pattern (Atom 209747968 3219189760) [Atom 2031616 2031616],
      decode_inner_253 st2_asisdlsep_r2_r),
     (Pattern (Atom 220200960 3221217280) [],
      decode_inner_248 st2_asisdlso_b2_2b),
     (Pattern (Atom 220217344 3221218304) [],
      decode_inner_250 st2_asisdlso_h2_2h),
     (Pattern (Atom 220233728 3221220352) [],
      decode_inner_251 st2_asisdlso_s2_2s),
     (Pattern (Atom 220234752 3221224448) [],
      decode_inner_249 st2_asisdlso_d2_2d),
     (Pattern (Atom 230621184 3221217280) [],
      decode_inner_255 st2_asisdlsop_b2_i2b),
     (Pattern (Atom 228589568 3219185664) [Atom 2031616 2031616],
      decode_inner_263 st2_asisdlsop_bx2_r2b),
     (Pattern (Atom 230637568 3221218304) [],
      decode_inner_256 st2_asisdlsop_h2_i2h),
     (Pattern (Atom 228605952 3219186688) [Atom 2031616 2031616],
      decode_inner_265 st2_asisdlsop_hx2_r2h),
     (Pattern (Atom 230653952 3221220352) [],
      decode_inner_257 st2_asisdlsop_s2_i2s),
     (Pattern (Atom 228622336 3219188736) [Atom 2031616 2031616],
      decode_inner_266 st2_asisdlsop_sx2_r2s),
     (Pattern (Atom 230654976 3221224448) [],
      decode_inner_260 st2_asisdlsop_d2_i2d),
     (Pattern (Atom 228623360 3219192832) [Atom 2031616 2031616],
      decode_inner_264 st2_asisdlsop_dx2_r2d),
     (Pattern (Atom 201342976 3221221376) [],
      decode_inner_262 st3_asisdlse_r3),
     (Pattern (Atom 211763200 3221221376) [],
      decode_inner_289 st3_asisdlsep_i3_i),
     (Pattern (Atom 209731584 3219189760) [Atom 2031616 2031616],
      decode_inner_288 st3_asisdlsep_r3_r),
     (Pattern (Atom 218112000 3221217280) [],
      decode_inner_274 st3_asisdlso_b3_3b),
     (Pattern (Atom 218128384 3221218304) [],
      decode_inner_276 st3_asisdlso_h3_3h),
     (Pattern (Atom 218144768 3221220352) [],
      decode_inner_277 st3_asisdlso_s3_3s),
     (Pattern (Atom 218145792 3221224448) [],
      decode_inner_275 st3_asisdlso_d3_3d),
     (Pattern (Atom 228532224 3221217280) [],
      decode_inner_290 st3_asisdlsop_b3_i3b),
     (Pattern (Atom 226500608 3219185664) [Atom 2031616 2031616],
      decode_inner_294 st3_asisdlsop_bx3_r3b),
     (Pattern (Atom 228548608 3221218304) [],
      decode_inner_291 st3_asisdlsop_h3_i3h),
     (Pattern (Atom 226516992 3219186688) [Atom 2031616 2031616],
      decode_inner_296 st3_asisdlsop_hx3_r3h),
     (Pattern (Atom 228564992 3221220352) [],
      decode_inner_293 st3_asisdlsop_s3_i3s),
     (Pattern (Atom 226533376 3219188736) [Atom 2031616 2031616],
      decode_inner_297 st3_asisdlsop_sx3_r3s),
     (Pattern (Atom 228566016 3221224448) [],
      decode_inner_292 st3_asisdlsop_d3_i3d),
     (Pattern (Atom 226534400 3219192832) [Atom 2031616 2031616],
      decode_inner_295 st3_asisdlsop_dx3_r3d),
     (Pattern (Atom 201326592 3221221376) [],
      decode_inner_298 st4_asisdlse_r4),
     (Pattern (Atom 211746816 3221221376) [],
      decode_inner_309 st4_asisdlsep_i4_i),
     (Pattern (Atom 209715200 3219189760) [Atom 2031616 2031616],
      decode_inner_306 st4_asisdlsep_r4_r),
     (Pattern (Atom 220209152 3221217280) [],
      decode_inner_299 st4_asisdlso_b4_4b),
     (Pattern (Atom 220225536 3221218304) [],
      decode_inner_301 st4_asisdlso_h4_4h),
     (Pattern (Atom 220241920 3221220352) [],
      decode_inner_302 st4_asisdlso_s4_4s),
     (Pattern (Atom 220242944 3221224448) [],
      decode_inner_300 st4_asisdlso_d4_4d),
     (Pattern (Atom 230629376 3221217280) [],
      decode_inner_304 st4_asisdlsop_b4_i4b),
     (Pattern (Atom 228597760 3219185664) [Atom 2031616 2031616],
      decode_inner_310 st4_asisdlsop_bx4_r4b),
     (Pattern (Atom 230645760 3221218304) [],
      decode_inner_305 st4_asisdlsop_h4_i4h),
     (Pattern (Atom 228614144 3219186688) [Atom 2031616 2031616],
      decode_inner_312 st4_asisdlsop_hx4_r4h),
     (Pattern (Atom 230662144 3221220352) [],
      decode_inner_308 st4_asisdlsop_s4_i4s),
     (Pattern (Atom 228630528 3219188736) [Atom 2031616 2031616],
      decode_inner_313 st4_asisdlsop_sx4_r4s),
     (Pattern (Atom 230663168 3221224448) [],
      decode_inner_307 st4_asisdlsop_d4_i4d),
     (Pattern (Atom 228631552 3219192832) [Atom 2031616 2031616],
      decode_inner_311 st4_asisdlsop_dx4_r4d),
     (Pattern (Atom 738197504 4290772992) [],
      decode_inner_206 stnp_s_ldstnapair_offs),
     (Pattern (Atom 1811939328 4290772992) [],
      decode_inner_204 stnp_d_ldstnapair_offs),
     (Pattern (Atom 2885681152 4290772992) [],
      decode_inner_205 stnp_q_ldstnapair_offs),
     (Pattern (Atom 746586112 4290772992) [],
      decode_inner_191 stp_s_ldstpair_post),
     (Pattern (Atom 1820327936 4290772992) [],
      decode_inner_189 stp_d_ldstpair_post),
     (Pattern (Atom 2894069760 4290772992) [],
      decode_inner_190 stp_q_ldstpair_post),
     (Pattern (Atom 763363328 4290772992) [],
      decode_inner_197 stp_s_ldstpair_pre),
     (Pattern (Atom 1837105152 4290772992) [],
      decode_inner_195 stp_d_ldstpair_pre),
     (Pattern (Atom 2910846976 4290772992) [],
      decode_inner_196 stp_q_ldstpair_pre),
     (Pattern (Atom 754974720 4290772992) [],
      decode_inner_206 stp_s_ldstpair_off),
     (Pattern (Atom 1828716544 4290772992) [],
      decode_inner_204 stp_d_ldstpair_off),
     (Pattern (Atom 2902458368 4290772992) [],
      decode_inner_205 stp_q_ldstpair_off),
     (Pattern (Atom 1006633984 4292873216) [],
      decode_inner_112 str_b_ldst_immpost),
     (Pattern (Atom 2080375808 4292873216) [],
      decode_inner_116 str_h_ldst_immpost),
     (Pattern (Atom 3154117632 4292873216) [],
      decode_inner_119 str_s_ldst_immpost),
     (Pattern (Atom 4227859456 4292873216) [],
      decode_inner_114 str_d_ldst_immpost),
     (Pattern (Atom 1015022592 4292873216) [],
      decode_inner_117 str_q_ldst_immpost),
     (Pattern (Atom 1006636032 4292873216) [],
      decode_inner_131 str_b_ldst_immpre),
     (Pattern (Atom 2080377856 4292873216) [],
      decode_inner_133 str_h_ldst_immpre),
     (Pattern (Atom 3154119680 4292873216) [],
      decode_inner_135 str_s_ldst_immpre),
     (Pattern (Atom 4227861504 4292873216) [],
      decode_inner_132 str_d_ldst_immpre),
     (Pattern (Atom 1015024640 4292873216) [],
      decode_inner_134 str_q_ldst_immpre),
     (Pattern (Atom 1023410176 4290772992) [],
      decode_inner_143 str_b_ldst_pos),
     (Pattern (Atom 2097152000 4290772992) [],
      decode_inner_147 str_h_ldst_pos),
     (Pattern (Atom 3170893824 4290772992) [],
      decode_inner_151 str_s_ldst_pos),
     (Pattern (Atom 4244635648 4290772992) [],
      decode_inner_145 str_d_ldst_pos),
     (Pattern (Atom 1031798784 4290772992) [],
      decode_inner_149 str_q_ldst_pos),
     (Pattern (Atom 1008732160 4292873216) [Atom 24576 57344],
      decode_inner_278 str_b_ldst_regoff),
     (Pattern (Atom 1008756736 4292930560) [],
      decode_inner_235 str_bl_ldst_regoff),
     (Pattern (Atom 2082473984 4292873216) [],
      decode_inner_283 str_h_ldst_regoff),
     (Pattern (Atom 3156215808 4292873216) [],
      decode_inner_285 str_s_ldst_regoff),
     (Pattern (Atom 4229957632 4292873216) [],
      decode_inner_282 str_d_ldst_regoff),
     (Pattern (Atom 1017120768 4292873216) [],
      decode_inner_284 str_q_ldst_regoff),
     (Pattern (Atom 1006632960 4292873216) [],
      decode_inner_144 stur_b_ldst_unscaled),
     (Pattern (Atom 2080374784 4292873216) [],
      decode_inner_148 stur_h_ldst_unscaled),
     (Pattern (Atom 3154116608 4292873216) [],
      decode_inner_152 stur_s_ldst_unscaled),
     (Pattern (Atom 4227858432 4292873216) [],
      decode_inner_146 stur_d_ldst_unscaled),
     (Pattern (Atom 1015021568 4292873216) [],
      decode_inner_150 stur_q_ldst_unscaled),
     (Pattern (Atom 2116060160 4280351744) [],
      decode_inner_102 sub_asisdsame_only),
     (Pattern (Atom 773882880 3206609920) [],
      decode_inner_172 sub_asimdsame_only),
     (Pattern (Atom 237002752 3206609920) [],
      decode_inner_227 subhn_asimddiff_n),
     (Pattern (Atom 1579169792 4282383360) [],
      decode_inner_48 suqadd_asisdmisc_r),
     (Pattern (Atom 236992512 3208641536) [],
      decode_inner_70 suqadd_asimdmisc_r),
     (Pattern (Atom 234889216 3219192832) [],
      decode_inner_267 tbl_asimdtbl_l2_2),
     (Pattern (Atom 234897408 3219192832) [],
      decode_inner_303 tbl_asimdtbl_l3_3),
     (Pattern (Atom 234905600 3219192832) [],
      decode_inner_315 tbl_asimdtbl_l4_4),
     (Pattern (Atom 234881024 3219192832) [],
      decode_inner_217 tbl_asimdtbl_l1_1),
     (Pattern (Atom 234893312 3219192832) [],
      decode_inner_267 tbx_asimdtbl_l2_2),
     (Pattern (Atom 234901504 3219192832) [],
      decode_inner_303 tbx_asimdtbl_l3_3),
     (Pattern (Atom 234909696 3219192832) [],
      decode_inner_315 tbx_asimdtbl_l4_4),
     (Pattern (Atom 234885120 3219192832) [],
      decode_inner_217 tbx_asimdtbl_l1_1),
     (Pattern (Atom 234891264 3206609920) [],
      decode_inner_172 trn1_asimdperm_only),
     (Pattern (Atom 234907648 3206609920) [],
      decode_inner_172 trn2_asimdperm_only),
     (Pattern (Atom 773880832 3206609920) [],
      decode_inner_172 uaba_asimdsame_only),
     (Pattern (Atom 773869568 3206609920) [],
      decode_inner_226 uabal_asimddiff_l),
     (Pattern (Atom 773878784 3206609920) [],
      decode_inner_172 uabd_asimdsame_only),
     (Pattern (Atom 773877760 3206609920) [],
      decode_inner_226 uabdl_asimddiff_l),
     (Pattern (Atom 773875712 3208641536) [],
      decode_inner_84 uadalp_asimdmisc_p),
     (Pattern (Atom 773849088 3206609920) [],
      decode_inner_226 uaddl_asimddiff_l),
     (Pattern (Atom 773859328 3208641536) [],
      decode_inner_84 uaddlp_asimdmisc_p),
     (Pattern (Atom 774912000 3208641536) [],
      decode_inner_58 uaddlv_asimdall_only),
     (Pattern (Atom 773853184 3206609920) [],
      decode_inner_225 uaddw_asimddiff_w),
     (Pattern (Atom 516096000 4294901760) [],
      decode_inner_79 ucvtf_h32_float2fix),
     (Pattern (Atom 503513088 4294901760) [],
      decode_inner_81 ucvtf_s32_float2fix),
     (Pattern (Atom 507707392 4294901760) [],
      decode_inner_77 ucvtf_d32_float2fix),
     (Pattern (Atom 2663579648 4294901760) [],
      decode_inner_80 ucvtf_h64_float2fix),
     (Pattern (Atom 2650996736 4294901760) [],
      decode_inner_82 ucvtf_s64_float2fix),
     (Pattern (Atom 2655191040 4294901760) [],
      decode_inner_78 ucvtf_d64_float2fix),
     (Pattern (Atom 518193152 4294966272) [],
      decode_inner_18 ucvtf_h32_float2int),
     (Pattern (Atom 505610240 4294966272) [],
      decode_inner_25 ucvtf_s32_float2int),
     (Pattern (Atom 509804544 4294966272) [],
      decode_inner_11 ucvtf_d32_float2int),
     (Pattern (Atom 2665676800 4294966272) [],
      decode_inner_19 ucvtf_h64_float2int),
     (Pattern (Atom 2653093888 4294966272) [],
      decode_inner_26 ucvtf_s64_float2int),
     (Pattern (Atom 2657288192 4294966272) [],
      decode_inner_12 ucvtf_d64_float2int),
     (Pattern (Atom 2130764800 4286643200) [Atom 0 7864320],
      decode_inner_120 ucvtf_asisdshf_c),
     (Pattern (Atom 788587520 3212901376) [Atom 0 7864320],
      decode_inner_170 ucvtf_asimdshf_c),
     (Pattern (Atom 2121914368 4294966272) [],
      decode_inner_16 ucvtf_asisdmiscfp16_r),
     (Pattern (Atom 2116147200 4290771968) [],
      decode_inner_48 ucvtf_asisdmisc_r),
     (Pattern (Atom 779737088 3221224448) [],
      decode_inner_70 ucvtf_asimdmiscfp16_r),
     (Pattern (Atom 773969920 3217030144) [],
      decode_inner_70 ucvtf_asimdmisc_r),
     (Pattern (Atom 788586496 3204510720) [],
      decode_inner_244 udot_asimdelem_d),
     (Pattern (Atom 771789824 3206609920) [],
      decode_inner_192 udot_asimdsame2_d),
     (Pattern (Atom 773850112 3206609920) [],
      decode_inner_172 uhadd_asimdsame_only),
     (Pattern (Atom 773858304 3206609920) [],
      decode_inner_172 uhsub_asimdsame_only),
     (Pattern (Atom 773874688 3206609920) [],
      decode_inner_172 umax_asimdsame_only),
     (Pattern (Atom 773891072 3206609920) [],
      decode_inner_172 umaxp_asimdsame_only),
     (Pattern (Atom 774940672 3208641536) [],
      decode_inner_58 umaxv_asimdall_only),
     (Pattern (Atom 773876736 3206609920) [],
      decode_inner_172 umin_asimdsame_only),
     (Pattern (Atom 773893120 3206609920) [],
      decode_inner_172 uminp_asimdsame_only),
     (Pattern (Atom 775006208 3208641536) [],
      decode_inner_58 uminv_asimdall_only),
     (Pattern (Atom 788537344 3204510720) [],
      decode_inner_258 umlal_asimdelem_l),
     (Pattern (Atom 773881856 3206609920) [],
      decode_inner_226 umlal_asimddiff_l),
     (Pattern (Atom 788553728 3204510720) [],
      decode_inner_258 umlsl_asimdelem_l),
     (Pattern (Atom 773890048 3206609920) [],
      decode_inner_226 umlsl_asimddiff_l),
     (Pattern (Atom 234896384 4292934656) [],
      decode_inner_123 umov_asimdins_w_w),
     (Pattern (Atom 1309162496 4293917696) [],
      decode_inner_127 umov_asimdins_x_x),
     (Pattern (Atom 788570112 3204510720) [],
      decode_inner_258 umull_asimdelem_l),
     (Pattern (Atom 773898240 3206609920) [],
      decode_inner_226 umull_asimddiff_l),
     (Pattern (Atom 2116029440 4280351744) [],
      decode_inner_102 uqadd_asisdsame_only),
     (Pattern (Atom 773852160 3206609920) [],
      decode_inner_172 uqadd_asimdsame_only),
     (Pattern (Atom 2116049920 4280351744) [],
      decode_inner_102 uqrshl_asisdsame_only),
     (Pattern (Atom 773872640 3206609920) [],
      decode_inner_172 uqrshl_asimdsame_only),
     (Pattern (Atom 2130746368 4286643200) [Atom 0 7864320],
      decode_inner_153 uqrshrn_asisdshf_n),
     (Pattern (Atom 788569088 3212901376) [Atom 0 7864320],
      decode_inner_211 uqrshrn_asimdshf_n),
     (Pattern (Atom 2130736128 4286643200) [Atom 0 7864320],
      decode_inner_121 uqshl_asisdshf_r),
     (Pattern (Atom 788558848 3212901376) [Atom 0 7864320],
      decode_inner_171 uqshl_asimdshf_r),
     (Pattern (Atom 2116045824 4280351744) [],
      decode_inner_102 uqshl_asisdsame_only),
     (Pattern (Atom 773868544 3206609920) [],
      decode_inner_172 uqshl_asimdsame_only),
     (Pattern (Atom 2130744320 4286643200) [Atom 0 7864320],
      decode_inner_153 uqshrn_asisdshf_n),
     (Pattern (Atom 788567040 3212901376) [Atom 0 7864320],
      decode_inner_211 uqshrn_asimdshf_n),
     (Pattern (Atom 2116037632 4280351744) [],
      decode_inner_102 uqsub_asisdsame_only),
     (Pattern (Atom 773860352 3206609920) [],
      decode_inner_172 uqsub_asimdsame_only),
     (Pattern (Atom 2116110336 4282383360) [],
      decode_inner_59 uqxtn_asisdmisc_n),
     (Pattern (Atom 773933056 3208641536) [],
      decode_inner_111 uqxtn_asimdmisc_n),
     (Pattern (Atom 245483520 3217030144) [],
      decode_inner_70 urecpe_asimdmisc_r),
     (Pattern (Atom 773854208 3206609920) [],
      decode_inner_172 urhadd_asimdsame_only),
     (Pattern (Atom 2116047872 4280351744) [],
      decode_inner_102 urshl_asisdsame_only),
     (Pattern (Atom 773870592 3206609920) [],
      decode_inner_172 urshl_asimdsame_only),
     (Pattern (Atom 2130715648 4286643200) [Atom 0 7864320],
      decode_inner_121 urshr_asisdshf_r),
     (Pattern (Atom 788538368 3212901376) [Atom 0 7864320],
      decode_inner_171 urshr_asimdshf_r),
     (Pattern (Atom 782354432 3217030144) [],
      decode_inner_70 ursqrte_asimdmisc_r),
     (Pattern (Atom 2130719744 4286643200) [Atom 0 7864320],
      decode_inner_121 ursra_asisdshf_r),
     (Pattern (Atom 788542464 3212901376) [Atom 0 7864320],
      decode_inner_171 ursra_asimdshf_r),
     (Pattern (Atom 2116043776 4280351744) [],
      decode_inner_102 ushl_asisdsame_only),
     (Pattern (Atom 773866496 3206609920) [],
      decode_inner_172 ushl_asimdsame_only),
     (Pattern (Atom 788571136 3212901376) [Atom 0 7864320],
      decode_inner_210 ushll_asimdshf_l),
     (Pattern (Atom 2130707456 4286643200) [Atom 0 7864320],
      decode_inner_121 ushr_asisdshf_r),
     (Pattern (Atom 788530176 3212901376) [Atom 0 7864320],
      decode_inner_171 ushr_asimdshf_r),
     (Pattern (Atom 2116040704 4282383360) [],
      decode_inner_48 usqadd_asisdmisc_r),
     (Pattern (Atom 773863424 3208641536) [],
      decode_inner_70 usqadd_asimdmisc_r),
     (Pattern (Atom 2130711552 4286643200) [Atom 0 7864320],
      decode_inner_121 usra_asisdshf_r),
     (Pattern (Atom 788534272 3212901376) [Atom 0 7864320],
      decode_inner_171 usra_asimdshf_r),
     (Pattern (Atom 773857280 3206609920) [],
      decode_inner_226 usubl_asimddiff_l),
     (Pattern (Atom 773861376 3206609920) [],
      decode_inner_225 usubw_asimddiff_w),
     (Pattern (Atom 234887168 3206609920) [],
      decode_inner_172 uzp1_asimdperm_only),
     (Pattern (Atom 234903552 3206609920) [],
      decode_inner_172 uzp2_asimdperm_only),
     (Pattern (Atom 3464495104 4292870144) [],
      decode_inner_214 xar_vvv2_crypto3_imm6),
     (Pattern (Atom 237053952 3208641536) [],
      decode_inner_111 xtn_asimdmisc_n),
     (Pattern (Atom 234895360 3206609920) [],
      decode_inner_172 zip1_asimdperm_only),
     (Pattern (Atom 234911744 3206609920) [],
      decode_inner_172 zip2_asimdperm_only)]

decode_inner_0 :: Insn -> Word32 -> Decode Insn
decode_inner_0 f w = decode_0 f

decode_inner_1 :: Insn -> Word32 -> Decode Insn
decode_inner_1 f w = decode_1 f

decode_inner_2 :: Insn -> Word32 -> Decode Insn
decode_inner_2 f w = decode_2 f

decode_inner_3 :: Insn -> Word32 -> Decode Insn
decode_inner_3 f w = decode_3 f

decode_inner_4 :: Insn -> Word32 -> Decode Insn
decode_inner_4 f w = decode_4 f

decode_inner_5 :: Insn -> Word32 -> Decode Insn
decode_inner_5 f w = decode_5 f

decode_inner_6 :: Insn -> Word32 -> Decode Insn
decode_inner_6 f w = decode_6 f

decode_inner_7 :: Insn -> Word32 -> Decode Insn
decode_inner_7 f w = decode_7 f

decode_inner_8 :: Insn -> Word32 -> Decode Insn
decode_inner_8 f w = decode_8 f

decode_inner_9 :: Insn -> Word32 -> Decode Insn
decode_inner_9 f w = decode_9 f

decode_inner_10 :: Insn -> Word32 -> Decode Insn
decode_inner_10 f w = decode_10 f

decode_inner_11 :: Insn -> Word32 -> Decode Insn
decode_inner_11 f w = decode_11 f

decode_inner_12 :: Insn -> Word32 -> Decode Insn
decode_inner_12 f w = decode_12 f

decode_inner_13 :: Insn -> Word32 -> Decode Insn
decode_inner_13 f w = decode_13 f

decode_inner_14 :: Insn -> Word32 -> Decode Insn
decode_inner_14 f w = decode_14 f

decode_inner_15 :: Insn -> Word32 -> Decode Insn
decode_inner_15 f w = decode_15 f

decode_inner_16 :: Insn -> Word32 -> Decode Insn
decode_inner_16 f w = decode_16 f

decode_inner_17 :: Insn -> Word32 -> Decode Insn
decode_inner_17 f w = decode_17 f

decode_inner_18 :: Insn -> Word32 -> Decode Insn
decode_inner_18 f w = decode_18 f

decode_inner_19 :: Insn -> Word32 -> Decode Insn
decode_inner_19 f w = decode_19 f

decode_inner_20 :: Insn -> Word32 -> Decode Insn
decode_inner_20 f w = decode_20 f

decode_inner_21 :: Insn -> Word32 -> Decode Insn
decode_inner_21 f w = decode_21 f

decode_inner_22 :: Insn -> Word32 -> Decode Insn
decode_inner_22 f w = decode_22 f

decode_inner_23 :: Insn -> Word32 -> Decode Insn
decode_inner_23 f w = decode_23 f

decode_inner_24 :: Insn -> Word32 -> Decode Insn
decode_inner_24 f w = decode_24 f

decode_inner_25 :: Insn -> Word32 -> Decode Insn
decode_inner_25 f w = decode_25 f

decode_inner_26 :: Insn -> Word32 -> Decode Insn
decode_inner_26 f w = decode_26 f

decode_inner_27 :: Insn -> Word32 -> Decode Insn
decode_inner_27 f w = decode_27 f

decode_inner_28 :: Insn -> Word32 -> Decode Insn
decode_inner_28 f w = decode_28 f

decode_inner_29 :: Insn -> Word32 -> Decode Insn
decode_inner_29 f w = decode_29 f

decode_inner_30 :: Insn -> Word32 -> Decode Insn
decode_inner_30 f w = decode_30 f

decode_inner_31 :: Insn -> Word32 -> Decode Insn
decode_inner_31 f w = decode_31 f

decode_inner_32 :: Insn -> Word32 -> Decode Insn
decode_inner_32 f w = decode_32 f

decode_inner_33 :: Insn -> Word32 -> Decode Insn
decode_inner_33 f w = decode_33 f

decode_inner_34 :: Insn -> Word32 -> Decode Insn
decode_inner_34 f w = decode_34 f

decode_inner_35 :: Insn -> Word32 -> Decode Insn
decode_inner_35 f w = decode_35 f

decode_inner_36 :: Insn -> Word32 -> Decode Insn
decode_inner_36 f w = decode_36 f

decode_inner_37 :: Insn -> Word32 -> Decode Insn
decode_inner_37 f w = decode_37 f

decode_inner_38 :: Insn -> Word32 -> Decode Insn
decode_inner_38 f w = decode_38 f

decode_inner_39 :: Insn -> Word32 -> Decode Insn
decode_inner_39 f w = decode_39 f

decode_inner_40 :: Insn -> Word32 -> Decode Insn
decode_inner_40 f w = decode_40 f

decode_inner_41 :: Insn -> Word32 -> Decode Insn
decode_inner_41 f w = decode_41 f

decode_inner_42 :: Insn -> Word32 -> Decode Insn
decode_inner_42 f w = decode_42 f

decode_inner_43 :: Insn -> Word32 -> Decode Insn
decode_inner_43 f w = decode_43 f

decode_inner_44 :: Insn -> Word32 -> Decode Insn
decode_inner_44 f w = decode_44 f

decode_inner_45 :: Insn -> Word32 -> Decode Insn
decode_inner_45 f w = decode_45 f

decode_inner_46 :: Insn -> Word32 -> Decode Insn
decode_inner_46 f w = decode_46 f

decode_inner_47 :: Insn -> Word32 -> Decode Insn
decode_inner_47 f w = decode_47 f

decode_inner_48 :: Insn -> Word32 -> Decode Insn
decode_inner_48 f w = decode_48 f

decode_inner_49 :: (Cond -> Insn) -> Word32 -> Decode Insn
decode_inner_49 f w = decode_49 (f (toCond (slice w 0)))

decode_inner_50 :: Insn -> Word32 -> Decode Insn
decode_inner_50 f w = decode_50 f

decode_inner_51 :: Insn -> Word32 -> Decode Insn
decode_inner_51 f w = decode_51 f

decode_inner_52 :: Insn -> Word32 -> Decode Insn
decode_inner_52 f w = decode_52 f

decode_inner_53 :: Insn -> Word32 -> Decode Insn
decode_inner_53 f w = decode_53 f

decode_inner_54 :: Insn -> Word32 -> Decode Insn
decode_inner_54 f w = decode_54 f

decode_inner_55 :: Insn -> Word32 -> Decode Insn
decode_inner_55 f w = decode_55 f

decode_inner_56 :: Insn -> Word32 -> Decode Insn
decode_inner_56 f w = decode_56 f

decode_inner_57 :: Insn -> Word32 -> Decode Insn
decode_inner_57 f w = decode_57 f

decode_inner_58 :: Insn -> Word32 -> Decode Insn
decode_inner_58 f w = decode_58 f

decode_inner_59 :: Insn -> Word32 -> Decode Insn
decode_inner_59 f w = decode_59 f

decode_inner_60 :: Insn -> Word32 -> Decode Insn
decode_inner_60 f w = decode_60 f

decode_inner_61 :: Insn -> Word32 -> Decode Insn
decode_inner_61 f w = decode_61 f

decode_inner_62 :: Insn -> Word32 -> Decode Insn
decode_inner_62 f w = decode_62 f

decode_inner_63 :: Insn -> Word32 -> Decode Insn
decode_inner_63 f w = decode_63 f

decode_inner_64 :: Insn -> Word32 -> Decode Insn
decode_inner_64 f w = decode_64 f

decode_inner_65 :: Insn -> Word32 -> Decode Insn
decode_inner_65 f w = decode_65 f

decode_inner_66 :: Insn -> Word32 -> Decode Insn
decode_inner_66 f w = decode_66 f

decode_inner_67 :: Insn -> Word32 -> Decode Insn
decode_inner_67 f w = decode_67 f

decode_inner_68 :: Insn -> Word32 -> Decode Insn
decode_inner_68 f w = decode_68 f

decode_inner_69 :: Insn -> Word32 -> Decode Insn
decode_inner_69 f w = decode_69 f

decode_inner_70 :: Insn -> Word32 -> Decode Insn
decode_inner_70 f w = decode_70 f

decode_inner_71 :: Insn -> Word32 -> Decode Insn
decode_inner_71 f w = decode_71 f

decode_inner_72 :: Insn -> Word32 -> Decode Insn
decode_inner_72 f w = decode_72 f

decode_inner_73 :: Insn -> Word32 -> Decode Insn
decode_inner_73 f w = decode_73 f

decode_inner_74 :: Insn -> Word32 -> Decode Insn
decode_inner_74 f w = decode_74 f

decode_inner_75 :: Insn -> Word32 -> Decode Insn
decode_inner_75 f w = decode_75 f

decode_inner_76 :: Insn -> Word32 -> Decode Insn
decode_inner_76 f w = decode_76 f

decode_inner_77 :: Insn -> Word32 -> Decode Insn
decode_inner_77 f w = decode_77 f

decode_inner_78 :: Insn -> Word32 -> Decode Insn
decode_inner_78 f w = decode_78 f

decode_inner_79 :: Insn -> Word32 -> Decode Insn
decode_inner_79 f w = decode_79 f

decode_inner_80 :: Insn -> Word32 -> Decode Insn
decode_inner_80 f w = decode_80 f

decode_inner_81 :: Insn -> Word32 -> Decode Insn
decode_inner_81 f w = decode_81 f

decode_inner_82 :: Insn -> Word32 -> Decode Insn
decode_inner_82 f w = decode_82 f

decode_inner_83 :: Insn -> Word32 -> Decode Insn
decode_inner_83 f w = decode_83 f

decode_inner_84 :: Insn -> Word32 -> Decode Insn
decode_inner_84 f w = decode_84 f

decode_inner_85 :: Insn -> Word32 -> Decode Insn
decode_inner_85 f w = decode_85 f

decode_inner_86 :: Insn -> Word32 -> Decode Insn
decode_inner_86 f w = decode_86 f

decode_inner_87 :: Insn -> Word32 -> Decode Insn
decode_inner_87 f w = decode_87 f

decode_inner_88 :: Insn -> Word32 -> Decode Insn
decode_inner_88 f w = decode_88 f

decode_inner_89 :: Insn -> Word32 -> Decode Insn
decode_inner_89 f w = decode_89 f

decode_inner_90 :: Insn -> Word32 -> Decode Insn
decode_inner_90 f w = decode_90 f

decode_inner_91 :: Insn -> Word32 -> Decode Insn
decode_inner_91 f w = decode_91 f

decode_inner_92 :: Insn -> Word32 -> Decode Insn
decode_inner_92 f w = decode_92 f

decode_inner_93 :: Insn -> Word32 -> Decode Insn
decode_inner_93 f w = decode_93 f

decode_inner_94 :: Insn -> Word32 -> Decode Insn
decode_inner_94 f w = decode_94 f

decode_inner_95 :: Insn -> Word32 -> Decode Insn
decode_inner_95 f w = decode_95 f

decode_inner_96 :: Insn -> Word32 -> Decode Insn
decode_inner_96 f w = decode_96 f

decode_inner_97 :: Insn -> Word32 -> Decode Insn
decode_inner_97 f w = decode_97 f

decode_inner_98 :: Insn -> Word32 -> Decode Insn
decode_inner_98 f w = decode_98 f

decode_inner_99 :: Insn -> Word32 -> Decode Insn
decode_inner_99 f w = decode_99 f

decode_inner_100 :: Insn -> Word32 -> Decode Insn
decode_inner_100 f w = decode_100 f

decode_inner_101 :: Insn -> Word32 -> Decode Insn
decode_inner_101 f w = decode_101 f

decode_inner_102 :: Insn -> Word32 -> Decode Insn
decode_inner_102 f w = decode_102 f

decode_inner_103 :: Insn -> Word32 -> Decode Insn
decode_inner_103 f w = decode_103 f

decode_inner_104 :: Insn -> Word32 -> Decode Insn
decode_inner_104 f w = decode_104 f

decode_inner_105 :: Insn -> Word32 -> Decode Insn
decode_inner_105 f w = decode_105 f

decode_inner_106 :: Insn -> Word32 -> Decode Insn
decode_inner_106 f w = decode_106 f

decode_inner_107 :: Insn -> Word32 -> Decode Insn
decode_inner_107 f w = decode_107 f

decode_inner_108 :: Insn -> Word32 -> Decode Insn
decode_inner_108 f w = decode_108 f

decode_inner_109 :: Insn -> Word32 -> Decode Insn
decode_inner_109 f w = decode_109 f

decode_inner_110 :: (Half -> Insn) -> Word32 -> Decode Insn
decode_inner_110 f w = decode_110 (f (toHalf (slice w 30)))

decode_inner_111 :: (Half -> Insn) -> Word32 -> Decode Insn
decode_inner_111 f w = decode_111 (f (toHalf (slice w 30)))

decode_inner_112 :: Insn -> Word32 -> Decode Insn
decode_inner_112 f w = decode_112 f

decode_inner_113 :: Insn -> Word32 -> Decode Insn
decode_inner_113 f w = decode_113 f

decode_inner_114 :: Insn -> Word32 -> Decode Insn
decode_inner_114 f w = decode_114 f

decode_inner_115 :: Insn -> Word32 -> Decode Insn
decode_inner_115 f w = decode_115 f

decode_inner_116 :: Insn -> Word32 -> Decode Insn
decode_inner_116 f w = decode_116 f

decode_inner_117 :: Insn -> Word32 -> Decode Insn
decode_inner_117 f w = decode_117 f

decode_inner_118 :: Insn -> Word32 -> Decode Insn
decode_inner_118 f w = decode_118 f

decode_inner_119 :: Insn -> Word32 -> Decode Insn
decode_inner_119 f w = decode_119 f

decode_inner_120 :: Insn -> Word32 -> Decode Insn
decode_inner_120 f w = decode_120 f

decode_inner_121 :: Insn -> Word32 -> Decode Insn
decode_inner_121 f w = decode_121 f

decode_inner_122 :: Insn -> Word32 -> Decode Insn
decode_inner_122 f w = decode_122 f

decode_inner_123 :: Insn -> Word32 -> Decode Insn
decode_inner_123 f w = decode_123 f

decode_inner_124 :: Insn -> Word32 -> Decode Insn
decode_inner_124 f w = decode_124 f

decode_inner_125 :: Insn -> Word32 -> Decode Insn
decode_inner_125 f w = decode_125 f

decode_inner_126 :: Insn -> Word32 -> Decode Insn
decode_inner_126 f w = decode_126 f

decode_inner_127 :: Insn -> Word32 -> Decode Insn
decode_inner_127 f w = decode_127 f

decode_inner_128 :: Insn -> Word32 -> Decode Insn
decode_inner_128 f w = decode_128 f

decode_inner_129 :: Insn -> Word32 -> Decode Insn
decode_inner_129 f w = decode_129 f

decode_inner_130 :: Insn -> Word32 -> Decode Insn
decode_inner_130 f w = decode_130 f

decode_inner_131 :: Insn -> Word32 -> Decode Insn
decode_inner_131 f w = decode_131 f

decode_inner_132 :: Insn -> Word32 -> Decode Insn
decode_inner_132 f w = decode_132 f

decode_inner_133 :: Insn -> Word32 -> Decode Insn
decode_inner_133 f w = decode_133 f

decode_inner_134 :: Insn -> Word32 -> Decode Insn
decode_inner_134 f w = decode_134 f

decode_inner_135 :: Insn -> Word32 -> Decode Insn
decode_inner_135 f w = decode_135 f

decode_inner_136 :: Insn -> Word32 -> Decode Insn
decode_inner_136 f w = decode_136 f

decode_inner_137 :: Insn -> Word32 -> Decode Insn
decode_inner_137 f w = decode_137 f

decode_inner_138 :: Insn -> Word32 -> Decode Insn
decode_inner_138 f w = decode_138 f

decode_inner_139 :: Insn -> Word32 -> Decode Insn
decode_inner_139 f w = decode_139 f

decode_inner_140 :: Insn -> Word32 -> Decode Insn
decode_inner_140 f w = decode_140 f

decode_inner_141 :: Insn -> Word32 -> Decode Insn
decode_inner_141 f w = decode_141 f

decode_inner_142 :: Insn -> Word32 -> Decode Insn
decode_inner_142 f w = decode_142 f

decode_inner_143 :: Insn -> Word32 -> Decode Insn
decode_inner_143 f w = decode_143 f

decode_inner_144 :: Insn -> Word32 -> Decode Insn
decode_inner_144 f w = decode_144 f

decode_inner_145 :: Insn -> Word32 -> Decode Insn
decode_inner_145 f w = decode_145 f

decode_inner_146 :: Insn -> Word32 -> Decode Insn
decode_inner_146 f w = decode_146 f

decode_inner_147 :: Insn -> Word32 -> Decode Insn
decode_inner_147 f w = decode_147 f

decode_inner_148 :: Insn -> Word32 -> Decode Insn
decode_inner_148 f w = decode_148 f

decode_inner_149 :: Insn -> Word32 -> Decode Insn
decode_inner_149 f w = decode_149 f

decode_inner_150 :: Insn -> Word32 -> Decode Insn
decode_inner_150 f w = decode_150 f

decode_inner_151 :: Insn -> Word32 -> Decode Insn
decode_inner_151 f w = decode_151 f

decode_inner_152 :: Insn -> Word32 -> Decode Insn
decode_inner_152 f w = decode_152 f

decode_inner_153 :: Insn -> Word32 -> Decode Insn
decode_inner_153 f w = decode_153 f

decode_inner_154 :: Insn -> Word32 -> Decode Insn
decode_inner_154 f w = decode_154 f

decode_inner_155 :: Insn -> Word32 -> Decode Insn
decode_inner_155 f w = decode_155 f

decode_inner_156 :: Insn -> Word32 -> Decode Insn
decode_inner_156 f w = decode_156 f

decode_inner_157 :: Insn -> Word32 -> Decode Insn
decode_inner_157 f w = decode_157 f

decode_inner_158 :: Insn -> Word32 -> Decode Insn
decode_inner_158 f w = decode_158 f

decode_inner_159 :: Insn -> Word32 -> Decode Insn
decode_inner_159 f w = decode_159 f

decode_inner_160 :: Insn -> Word32 -> Decode Insn
decode_inner_160 f w = decode_160 f

decode_inner_161 :: Insn -> Word32 -> Decode Insn
decode_inner_161 f w = decode_161 f

decode_inner_162 :: Insn -> Word32 -> Decode Insn
decode_inner_162 f w = decode_162 f

decode_inner_163 :: Insn -> Word32 -> Decode Insn
decode_inner_163 f w = decode_163 f

decode_inner_164 :: Insn -> Word32 -> Decode Insn
decode_inner_164 f w = decode_164 f

decode_inner_165 :: Insn -> Word32 -> Decode Insn
decode_inner_165 f w = decode_165 f

decode_inner_166 :: Insn -> Word32 -> Decode Insn
decode_inner_166 f w = decode_166 f

decode_inner_167 :: Insn -> Word32 -> Decode Insn
decode_inner_167 f w = decode_167 f

decode_inner_168 :: Insn -> Word32 -> Decode Insn
decode_inner_168 f w = decode_168 f

decode_inner_169 :: Insn -> Word32 -> Decode Insn
decode_inner_169 f w = decode_169 f

decode_inner_170 :: Insn -> Word32 -> Decode Insn
decode_inner_170 f w = decode_170 f

decode_inner_171 :: Insn -> Word32 -> Decode Insn
decode_inner_171 f w = decode_171 f

decode_inner_172 :: Insn -> Word32 -> Decode Insn
decode_inner_172 f w = decode_172 f

decode_inner_173 :: Insn -> Word32 -> Decode Insn
decode_inner_173 f w = decode_173 f

decode_inner_174 :: Insn -> Word32 -> Decode Insn
decode_inner_174 f w = decode_174 f

decode_inner_175 :: Insn -> Word32 -> Decode Insn
decode_inner_175 f w = decode_175 f

decode_inner_176 :: Insn -> Word32 -> Decode Insn
decode_inner_176 f w = decode_176 f

decode_inner_177 :: Insn -> Word32 -> Decode Insn
decode_inner_177 f w = decode_177 f

decode_inner_178 :: Insn -> Word32 -> Decode Insn
decode_inner_178 f w = decode_178 f

decode_inner_179 :: Insn -> Word32 -> Decode Insn
decode_inner_179 f w = decode_179 f

decode_inner_180 :: Insn -> Word32 -> Decode Insn
decode_inner_180 f w = decode_180 f

decode_inner_181 :: Insn -> Word32 -> Decode Insn
decode_inner_181 f w = decode_181 f

decode_inner_182 :: Insn -> Word32 -> Decode Insn
decode_inner_182 f w = decode_182 f

decode_inner_183 :: Insn -> Word32 -> Decode Insn
decode_inner_183 f w = decode_183 f

decode_inner_184 :: Insn -> Word32 -> Decode Insn
decode_inner_184 f w = decode_184 f

decode_inner_185 :: Insn -> Word32 -> Decode Insn
decode_inner_185 f w = decode_185 f

decode_inner_186 :: Insn -> Word32 -> Decode Insn
decode_inner_186 f w = decode_186 f

decode_inner_187 :: Insn -> Word32 -> Decode Insn
decode_inner_187 f w = decode_187 f

decode_inner_188 :: Insn -> Word32 -> Decode Insn
decode_inner_188 f w = decode_188 f

decode_inner_189 :: Insn -> Word32 -> Decode Insn
decode_inner_189 f w = decode_189 f

decode_inner_190 :: Insn -> Word32 -> Decode Insn
decode_inner_190 f w = decode_190 f

decode_inner_191 :: Insn -> Word32 -> Decode Insn
decode_inner_191 f w = decode_191 f

decode_inner_192 :: Insn -> Word32 -> Decode Insn
decode_inner_192 f w = decode_192 f

decode_inner_193 :: Insn -> Word32 -> Decode Insn
decode_inner_193 f w = decode_193 f

decode_inner_194 :: Insn -> Word32 -> Decode Insn
decode_inner_194 f w = decode_194 f

decode_inner_195 :: Insn -> Word32 -> Decode Insn
decode_inner_195 f w = decode_195 f

decode_inner_196 :: Insn -> Word32 -> Decode Insn
decode_inner_196 f w = decode_196 f

decode_inner_197 :: Insn -> Word32 -> Decode Insn
decode_inner_197 f w = decode_197 f

decode_inner_198 :: Insn -> Word32 -> Decode Insn
decode_inner_198 f w = decode_198 f

decode_inner_199 :: Insn -> Word32 -> Decode Insn
decode_inner_199 f w = decode_199 f

decode_inner_200 :: Insn -> Word32 -> Decode Insn
decode_inner_200 f w = decode_200 f

decode_inner_201 :: Insn -> Word32 -> Decode Insn
decode_inner_201 f w = decode_201 f

decode_inner_202 :: Insn -> Word32 -> Decode Insn
decode_inner_202 f w = decode_202 f

decode_inner_203 :: Insn -> Word32 -> Decode Insn
decode_inner_203 f w = decode_203 f

decode_inner_204 :: Insn -> Word32 -> Decode Insn
decode_inner_204 f w = decode_204 f

decode_inner_205 :: Insn -> Word32 -> Decode Insn
decode_inner_205 f w = decode_205 f

decode_inner_206 :: Insn -> Word32 -> Decode Insn
decode_inner_206 f w = decode_206 f

decode_inner_207 :: Insn -> Word32 -> Decode Insn
decode_inner_207 f w = decode_207 f

decode_inner_208 :: Insn -> Word32 -> Decode Insn
decode_inner_208 f w = decode_208 f

decode_inner_209 :: Insn -> Word32 -> Decode Insn
decode_inner_209 f w = decode_209 f

decode_inner_210 :: (Half -> Insn) -> Word32 -> Decode Insn
decode_inner_210 f w = decode_210 (f (toHalf (slice w 30)))

decode_inner_211 :: (Half -> Insn) -> Word32 -> Decode Insn
decode_inner_211 f w = decode_211 (f (toHalf (slice w 30)))

decode_inner_212 :: Insn -> Word32 -> Decode Insn
decode_inner_212 f w = decode_212 f

decode_inner_213 :: Insn -> Word32 -> Decode Insn
decode_inner_213 f w = decode_213 f

decode_inner_214 :: Insn -> Word32 -> Decode Insn
decode_inner_214 f w = decode_214 f

decode_inner_215 :: Insn -> Word32 -> Decode Insn
decode_inner_215 f w = decode_215 f

decode_inner_216 :: Insn -> Word32 -> Decode Insn
decode_inner_216 f w = decode_216 f

decode_inner_217 :: Insn -> Word32 -> Decode Insn
decode_inner_217 f w = decode_217 f

decode_inner_218 :: Insn -> Word32 -> Decode Insn
decode_inner_218 f w = decode_218 f

decode_inner_219 :: Insn -> Word32 -> Decode Insn
decode_inner_219 f w = decode_219 f

decode_inner_220 :: Insn -> Word32 -> Decode Insn
decode_inner_220 f w = decode_220 f

decode_inner_221 :: Insn -> Word32 -> Decode Insn
decode_inner_221 f w = decode_221 f

decode_inner_222 :: Insn -> Word32 -> Decode Insn
decode_inner_222 f w = decode_222 f

decode_inner_223 :: Insn -> Word32 -> Decode Insn
decode_inner_223 f w = decode_223 f

decode_inner_224 :: Insn -> Word32 -> Decode Insn
decode_inner_224 f w = decode_224 f

decode_inner_225 :: (Half -> Insn) -> Word32 -> Decode Insn
decode_inner_225 f w = decode_225 (f (toHalf (slice w 30)))

decode_inner_226 :: (Half -> Insn) -> Word32 -> Decode Insn
decode_inner_226 f w = decode_226 (f (toHalf (slice w 30)))

decode_inner_227 :: (Half -> Insn) -> Word32 -> Decode Insn
decode_inner_227 f w = decode_227 (f (toHalf (slice w 30)))

decode_inner_228 :: Insn -> Word32 -> Decode Insn
decode_inner_228 f w = decode_228 f

decode_inner_229 :: Insn -> Word32 -> Decode Insn
decode_inner_229 f w = decode_229 f

decode_inner_230 :: Insn -> Word32 -> Decode Insn
decode_inner_230 f w = decode_230 f

decode_inner_231 :: Insn -> Word32 -> Decode Insn
decode_inner_231 f w = decode_231 f

decode_inner_232 :: Insn -> Word32 -> Decode Insn
decode_inner_232 f w = decode_232 f

decode_inner_233 :: Insn -> Word32 -> Decode Insn
decode_inner_233 f w = decode_233 f

decode_inner_234 :: Insn -> Word32 -> Decode Insn
decode_inner_234 f w = decode_234 f

decode_inner_235 :: Insn -> Word32 -> Decode Insn
decode_inner_235 f w = decode_235 f

decode_inner_236 :: Insn -> Word32 -> Decode Insn
decode_inner_236 f w = decode_236 f

decode_inner_237 :: Insn -> Word32 -> Decode Insn
decode_inner_237 f w = decode_237 f

decode_inner_238 :: Insn -> Word32 -> Decode Insn
decode_inner_238 f w = decode_238 f

decode_inner_239 :: Insn -> Word32 -> Decode Insn
decode_inner_239 f w = decode_239 f

decode_inner_240 :: Insn -> Word32 -> Decode Insn
decode_inner_240 f w = decode_240 f

decode_inner_241 :: Insn -> Word32 -> Decode Insn
decode_inner_241 f w = decode_241 f

decode_inner_242 :: Insn -> Word32 -> Decode Insn
decode_inner_242 f w = decode_242 f

decode_inner_243 :: Insn -> Word32 -> Decode Insn
decode_inner_243 f w = decode_243 f

decode_inner_244 :: Insn -> Word32 -> Decode Insn
decode_inner_244 f w = decode_244 f

decode_inner_245 :: Insn -> Word32 -> Decode Insn
decode_inner_245 f w = decode_245 f

decode_inner_246 :: Insn -> Word32 -> Decode Insn
decode_inner_246 f w = decode_246 f

decode_inner_247 :: Insn -> Word32 -> Decode Insn
decode_inner_247 f w = decode_247 f

decode_inner_248 :: Insn -> Word32 -> Decode Insn
decode_inner_248 f w = decode_248 f

decode_inner_249 :: Insn -> Word32 -> Decode Insn
decode_inner_249 f w = decode_249 f

decode_inner_250 :: Insn -> Word32 -> Decode Insn
decode_inner_250 f w = decode_250 f

decode_inner_251 :: Insn -> Word32 -> Decode Insn
decode_inner_251 f w = decode_251 f

decode_inner_252 :: Insn -> Word32 -> Decode Insn
decode_inner_252 f w = decode_252 f

decode_inner_253 :: Insn -> Word32 -> Decode Insn
decode_inner_253 f w = decode_253 f

decode_inner_254 :: Insn -> Word32 -> Decode Insn
decode_inner_254 f w = decode_254 f

decode_inner_255 :: Insn -> Word32 -> Decode Insn
decode_inner_255 f w = decode_255 f

decode_inner_256 :: Insn -> Word32 -> Decode Insn
decode_inner_256 f w = decode_256 f

decode_inner_257 :: Insn -> Word32 -> Decode Insn
decode_inner_257 f w = decode_257 f

decode_inner_258 :: (Half -> Insn) -> Word32 -> Decode Insn
decode_inner_258 f w = decode_258 (f (toHalf (slice w 30)))

decode_inner_259 :: Insn -> Word32 -> Decode Insn
decode_inner_259 f w = decode_259 f

decode_inner_260 :: Insn -> Word32 -> Decode Insn
decode_inner_260 f w = decode_260 f

decode_inner_261 :: Insn -> Word32 -> Decode Insn
decode_inner_261 f w = decode_261 f

decode_inner_262 :: Insn -> Word32 -> Decode Insn
decode_inner_262 f w = decode_262 f

decode_inner_263 :: Insn -> Word32 -> Decode Insn
decode_inner_263 f w = decode_263 f

decode_inner_264 :: Insn -> Word32 -> Decode Insn
decode_inner_264 f w = decode_264 f

decode_inner_265 :: Insn -> Word32 -> Decode Insn
decode_inner_265 f w = decode_265 f

decode_inner_266 :: Insn -> Word32 -> Decode Insn
decode_inner_266 f w = decode_266 f

decode_inner_267 :: Insn -> Word32 -> Decode Insn
decode_inner_267 f w = decode_267 f

decode_inner_268 :: Insn -> Word32 -> Decode Insn
decode_inner_268 f w = decode_268 f

decode_inner_269 :: Insn -> Word32 -> Decode Insn
decode_inner_269 f w = decode_269 f

decode_inner_270 :: Insn -> Word32 -> Decode Insn
decode_inner_270 f w = decode_270 f

decode_inner_271 :: Insn -> Word32 -> Decode Insn
decode_inner_271 f w = decode_271 f

decode_inner_272 :: Insn -> Word32 -> Decode Insn
decode_inner_272 f w = decode_272 f

decode_inner_273 :: Insn -> Word32 -> Decode Insn
decode_inner_273 f w = decode_273 f

decode_inner_274 :: Insn -> Word32 -> Decode Insn
decode_inner_274 f w = decode_274 f

decode_inner_275 :: Insn -> Word32 -> Decode Insn
decode_inner_275 f w = decode_275 f

decode_inner_276 :: Insn -> Word32 -> Decode Insn
decode_inner_276 f w = decode_276 f

decode_inner_277 :: Insn -> Word32 -> Decode Insn
decode_inner_277 f w = decode_277 f

decode_inner_278 :: Insn -> Word32 -> Decode Insn
decode_inner_278 f w = decode_278 f

decode_inner_279 :: Insn -> Word32 -> Decode Insn
decode_inner_279 f w = decode_279 f

decode_inner_280 :: Insn -> Word32 -> Decode Insn
decode_inner_280 f w = decode_280 f

decode_inner_281 :: Insn -> Word32 -> Decode Insn
decode_inner_281 f w = decode_281 f

decode_inner_282 :: Insn -> Word32 -> Decode Insn
decode_inner_282 f w = decode_282 f

decode_inner_283 :: Insn -> Word32 -> Decode Insn
decode_inner_283 f w = decode_283 f

decode_inner_284 :: Insn -> Word32 -> Decode Insn
decode_inner_284 f w = decode_284 f

decode_inner_285 :: Insn -> Word32 -> Decode Insn
decode_inner_285 f w = decode_285 f

decode_inner_286 :: Insn -> Word32 -> Decode Insn
decode_inner_286 f w = decode_286 f

decode_inner_287 :: Insn -> Word32 -> Decode Insn
decode_inner_287 f w = decode_287 f

decode_inner_288 :: Insn -> Word32 -> Decode Insn
decode_inner_288 f w = decode_288 f

decode_inner_289 :: Insn -> Word32 -> Decode Insn
decode_inner_289 f w = decode_289 f

decode_inner_290 :: Insn -> Word32 -> Decode Insn
decode_inner_290 f w = decode_290 f

decode_inner_291 :: Insn -> Word32 -> Decode Insn
decode_inner_291 f w = decode_291 f

decode_inner_292 :: Insn -> Word32 -> Decode Insn
decode_inner_292 f w = decode_292 f

decode_inner_293 :: Insn -> Word32 -> Decode Insn
decode_inner_293 f w = decode_293 f

decode_inner_294 :: Insn -> Word32 -> Decode Insn
decode_inner_294 f w = decode_294 f

decode_inner_295 :: Insn -> Word32 -> Decode Insn
decode_inner_295 f w = decode_295 f

decode_inner_296 :: Insn -> Word32 -> Decode Insn
decode_inner_296 f w = decode_296 f

decode_inner_297 :: Insn -> Word32 -> Decode Insn
decode_inner_297 f w = decode_297 f

decode_inner_298 :: Insn -> Word32 -> Decode Insn
decode_inner_298 f w = decode_298 f

decode_inner_299 :: Insn -> Word32 -> Decode Insn
decode_inner_299 f w = decode_299 f

decode_inner_300 :: Insn -> Word32 -> Decode Insn
decode_inner_300 f w = decode_300 f

decode_inner_301 :: Insn -> Word32 -> Decode Insn
decode_inner_301 f w = decode_301 f

decode_inner_302 :: Insn -> Word32 -> Decode Insn
decode_inner_302 f w = decode_302 f

decode_inner_303 :: Insn -> Word32 -> Decode Insn
decode_inner_303 f w = decode_303 f

decode_inner_304 :: Insn -> Word32 -> Decode Insn
decode_inner_304 f w = decode_304 f

decode_inner_305 :: Insn -> Word32 -> Decode Insn
decode_inner_305 f w = decode_305 f

decode_inner_306 :: Insn -> Word32 -> Decode Insn
decode_inner_306 f w = decode_306 f

decode_inner_307 :: Insn -> Word32 -> Decode Insn
decode_inner_307 f w = decode_307 f

decode_inner_308 :: Insn -> Word32 -> Decode Insn
decode_inner_308 f w = decode_308 f

decode_inner_309 :: Insn -> Word32 -> Decode Insn
decode_inner_309 f w = decode_309 f

decode_inner_310 :: Insn -> Word32 -> Decode Insn
decode_inner_310 f w = decode_310 f

decode_inner_311 :: Insn -> Word32 -> Decode Insn
decode_inner_311 f w = decode_311 f

decode_inner_312 :: Insn -> Word32 -> Decode Insn
decode_inner_312 f w = decode_312 f

decode_inner_313 :: Insn -> Word32 -> Decode Insn
decode_inner_313 f w = decode_313 f

decode_inner_314 :: Insn -> Word32 -> Decode Insn
decode_inner_314 f w = decode_314 f

decode_inner_315 :: Insn -> Word32 -> Decode Insn
decode_inner_315 f w = decode_315 f
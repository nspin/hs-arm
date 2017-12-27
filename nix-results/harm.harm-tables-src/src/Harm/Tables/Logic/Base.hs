{-# LANGUAGE DataKinds #-}
{-# LANGUAGE KindSignatures #-}
{-# LANGUAGE PolyKinds #-}

module Harm.Tables.Logic.Base where

import Harm.Types
import Harm.Tables.Types
import Harm.Tables.Binary
import Harm.Tables.Assembly

import Data.Attoparsec.ByteString.Char8


--- B0: ''
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

type Logical_B0 = '[]
type Binary_B0  = '[]

decode_B0 :: Fn Logical_B0 a -> FnW Binary_B0 (Decode a)
decode_B0 f = return f

encode_B0 :: FnW Binary_B0 a -> Fn Logical_B0 (Encode a)
encode_B0 f = return f

parse_B0 :: Fn Logical_B0 a -> Parser a
parse_B0 f = ws >> return f

show_B0 :: Fn Logical_B0 (String, String)
show_B0 = simple $ ""


--- B1: '  <Xd>'
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

type Logical_B1 = '[]
type Binary_B1  = '[]

decode_B1 :: Fn Logical_B1 a -> FnW Binary_B1 (Decode a)
decode_B1 f = return f

encode_B1 :: FnW Binary_B1 a -> Fn Logical_B1 (Encode a)
encode_B1 f = return f

parse_B1 :: Fn Logical_B1 a -> Parser a
parse_B1 f = ws >> return f

show_B1 :: Fn Logical_B1 (String, String)
show_B1 = simple $ ""


--- B2: '  <Xn>'
--- BLR_64_branch_reg             blr.xml
--- BLRAAZ_64_branch_reg          blra.xml
--- BLRABZ_64_branch_reg          blra.xml
--- BR_64_branch_reg              br.xml
--- BRAAZ_64_branch_reg           bra.xml
--- BRABZ_64_branch_reg           bra.xml

type Logical_B2 = '[]
type Binary_B2  = '[]

decode_B2 :: Fn Logical_B2 a -> FnW Binary_B2 (Decode a)
decode_B2 f = return f

encode_B2 :: FnW Binary_B2 a -> Fn Logical_B2 (Encode a)
encode_B2 f = return f

parse_B2 :: Fn Logical_B2 a -> Parser a
parse_B2 f = ws >> return f

show_B2 :: Fn Logical_B2 (String, String)
show_B2 = simple $ ""


--- B3: ' CSYNC'
--- PSB_HC_system                 psb.xml

type Logical_B3 = '[]
type Binary_B3  = '[]

decode_B3 :: Fn Logical_B3 a -> FnW Binary_B3 (Decode a)
decode_B3 f = return f

encode_B3 :: FnW Binary_B3 a -> Fn Logical_B3 (Encode a)
encode_B3 f = return f

parse_B3 :: Fn Logical_B3 a -> Parser a
parse_B3 f = ws >> return f

show_B3 :: Fn Logical_B3 (String, String)
show_B3 = simple $ ""


--- B4: '  #<imm>'
--- BRK_EX_exception              brk.xml
--- HINT_1                        hint.xml
--- HINT_2                        hint.xml
--- HINT_3                        hint.xml
--- HLT_EX_exception              hlt.xml
--- HVC_EX_exception              hvc.xml
--- SMC_EX_exception              smc.xml
--- SVC_EX_exception              svc.xml

type Logical_B4 = '[]
type Binary_B4  = '[]

decode_B4 :: Fn Logical_B4 a -> FnW Binary_B4 (Decode a)
decode_B4 f = return f

encode_B4 :: FnW Binary_B4 a -> Fn Logical_B4 (Encode a)
encode_B4 f = return f

parse_B4 :: Fn Logical_B4 a -> Parser a
parse_B4 f = ws >> return f

show_B4 :: Fn Logical_B4 (String, String)
show_B4 = simple $ ""


--- B5: '  {<Xn>}'
--- RET_64R_branch_reg            ret.xml

type Logical_B5 = '[]
type Binary_B5  = '[]

decode_B5 :: Fn Logical_B5 a -> FnW Binary_B5 (Decode a)
decode_B5 f = return f

encode_B5 :: FnW Binary_B5 a -> Fn Logical_B5 (Encode a)
encode_B5 f = return f

parse_B5 :: Fn Logical_B5 a -> Parser a
parse_B5 f = ws >> return f

show_B5 :: Fn Logical_B5 (String, String)
show_B5 = simple $ ""


--- B6: '  <label>'
--- B_only_branch_imm             b_uncond.xml
--- BL_only_branch_imm            bl.xml

type Logical_B6 = '[]
type Binary_B6  = '[]

decode_B6 :: Fn Logical_B6 a -> FnW Binary_B6 (Decode a)
decode_B6 f = return f

encode_B6 :: FnW Binary_B6 a -> Fn Logical_B6 (Encode a)
encode_B6 f = return f

parse_B6 :: Fn Logical_B6 a -> Parser a
parse_B6 f = ws >> return f

show_B6 :: Fn Logical_B6 (String, String)
show_B6 = simple $ ""


--- B7: '  {#<imm>}'
--- CLREX_BN_system               clrex.xml
--- DCPS1_DC_exception            dcps1.xml
--- DCPS2_DC_exception            dcps2.xml
--- DCPS3_DC_exception            dcps3.xml

type Logical_B7 = '[]
type Binary_B7  = '[]

decode_B7 :: Fn Logical_B7 a -> FnW Binary_B7 (Decode a)
decode_B7 f = return f

encode_B7 :: FnW Binary_B7 a -> Fn Logical_B7 (Encode a)
encode_B7 f = return f

parse_B7 :: Fn Logical_B7 a -> Parser a
parse_B7 f = ws >> return f

show_B7 :: Fn Logical_B7 (String, String)
show_B7 = simple $ ""


--- B8: '  <Wd>, <Wn>'
--- CLS_32_dp_1src                cls_int.xml
--- CLZ_32_dp_1src                clz_int.xml
--- RBIT_32_dp_1src               rbit_int.xml
--- REV_32_dp_1src                rev.xml
--- REV16_32_dp_1src              rev16_int.xml

type Logical_B8 = '[]
type Binary_B8  = '[]

decode_B8 :: Fn Logical_B8 a -> FnW Binary_B8 (Decode a)
decode_B8 f = return f

encode_B8 :: FnW Binary_B8 a -> Fn Logical_B8 (Encode a)
encode_B8 f = return f

parse_B8 :: Fn Logical_B8 a -> Parser a
parse_B8 f = ws >> return f

show_B8 :: Fn Logical_B8 (String, String)
show_B8 = simple $ ""


--- B9: '  <Xd>, <Xn>'
--- CLS_64_dp_1src                cls_int.xml
--- CLZ_64_dp_1src                clz_int.xml
--- RBIT_64_dp_1src               rbit_int.xml
--- REV_64_dp_1src                rev.xml
--- REV16_64_dp_1src              rev16_int.xml
--- REV32_64_dp_1src              rev32_int.xml

type Logical_B9 = '[]
type Binary_B9  = '[]

decode_B9 :: Fn Logical_B9 a -> FnW Binary_B9 (Decode a)
decode_B9 f = return f

encode_B9 :: FnW Binary_B9 a -> Fn Logical_B9 (Encode a)
encode_B9 f = return f

parse_B9 :: Fn Logical_B9 a -> Parser a
parse_B9 f = ws >> return f

show_B9 :: Fn Logical_B9 (String, String)
show_B9 = simple $ ""


--- B10: '  <Wt>, <label>'
--- CBNZ_32_compbranch            cbnz.xml
--- CBZ_32_compbranch             cbz.xml
--- LDR_32_loadlit                ldr_lit_gen.xml

type Logical_B10 = '[]
type Binary_B10  = '[]

decode_B10 :: Fn Logical_B10 a -> FnW Binary_B10 (Decode a)
decode_B10 f = return f

encode_B10 :: FnW Binary_B10 a -> Fn Logical_B10 (Encode a)
encode_B10 f = return f

parse_B10 :: Fn Logical_B10 a -> Parser a
parse_B10 f = ws >> return f

show_B10 :: Fn Logical_B10 (String, String)
show_B10 = simple $ ""


--- B11: '  <Xd>, <Xn|SP>'
--- AUTDA_64P_dp_1src             autda.xml
--- AUTDB_64P_dp_1src             autdb.xml
--- AUTIA_64P_dp_1src             autia.xml
--- AUTIB_64P_dp_1src             autib.xml
--- PACDA_64P_dp_1src             pacda.xml
--- PACDB_64P_dp_1src             pacdb.xml
--- PACIA_64P_dp_1src             pacia.xml
--- PACIB_64P_dp_1src             pacib.xml

type Logical_B11 = '[]
type Binary_B11  = '[]

decode_B11 :: Fn Logical_B11 a -> FnW Binary_B11 (Decode a)
decode_B11 f = return f

encode_B11 :: FnW Binary_B11 a -> Fn Logical_B11 (Encode a)
encode_B11 f = return f

parse_B11 :: Fn Logical_B11 a -> Parser a
parse_B11 f = ws >> return f

show_B11 :: Fn Logical_B11 (String, String)
show_B11 = simple $ ""


--- B12: '  <Xd>, <label>'
--- ADR_only_pcreladdr            adr.xml
--- ADRP_only_pcreladdr           adrp.xml

type Logical_B12 = '[Xn, I 21]
type Binary_B12  = '[5, 19, 2]

decode_B12 :: Fn Logical_B12 a -> FnW Binary_B12 (Decode a)
decode_B12 f rd immhi immlo = f <$> dec rd <*> dec (immhi .: immlo)

encode_B12 :: FnW Binary_B12 a -> Fn Logical_B12 (Encode a)
encode_B12 f xn label = split (viewW label) $ \immhi immlo ->
    f <$> enc xn <*> enc immhi <*> enc immlo

parse_B12 :: Fn Logical_B12 a -> Parser a
parse_B12 f = ws >> f <$> prs <+> (viewI <$> prshex)

show_B12 :: Fn Logical_B12 (String, String)
show_B12 xn label = simple $ asm xn +> asmhex (viewW label)


--- B13: '  <Xn>, <Xm|SP>'
--- BLRAA_64P_branch_reg          blra.xml
--- BLRAB_64P_branch_reg          blra.xml
--- BRAA_64P_branch_reg           bra.xml
--- BRAB_64P_branch_reg           bra.xml

type Logical_B13 = '[]
type Binary_B13  = '[]

decode_B13 :: Fn Logical_B13 a -> FnW Binary_B13 (Decode a)
decode_B13 f = return f

encode_B13 :: FnW Binary_B13 a -> Fn Logical_B13 (Encode a)
encode_B13 f = return f

parse_B13 :: Fn Logical_B13 a -> Parser a
parse_B13 f = ws >> return f

show_B13 :: Fn Logical_B13 (String, String)
show_B13 = simple $ ""


--- B14: '  <Xt>, <label>'
--- CBNZ_64_compbranch            cbnz.xml
--- CBZ_64_compbranch             cbz.xml
--- LDR_64_loadlit                ldr_lit_gen.xml
--- LDRSW_64_loadlit              ldrsw_lit.xml

type Logical_B14 = '[]
type Binary_B14  = '[]

decode_B14 :: Fn Logical_B14 a -> FnW Binary_B14 (Decode a)
decode_B14 f = return f

encode_B14 :: FnW Binary_B14 a -> Fn Logical_B14 (Encode a)
encode_B14 f = return f

parse_B14 :: Fn Logical_B14 a -> Parser a
parse_B14 f = ws >> return f

show_B14 :: Fn Logical_B14 (String, String)
show_B14 = simple $ ""


--- B15: '.<cond>  <label>'
--- B_only_condbranch             b_cond.xml

type Logical_B15 = '[]
type Binary_B15  = '[]

decode_B15 :: Fn Logical_B15 a -> FnW Binary_B15 (Decode a)
decode_B15 f = return f

encode_B15 :: FnW Binary_B15 a -> Fn Logical_B15 (Encode a)
encode_B15 f = return f

parse_B15 :: Fn Logical_B15 a -> Parser a
parse_B15 f = ws >> return f

show_B15 :: Fn Logical_B15 (String, String)
show_B15 = simple $ ""


--- B16: '  <option>|#<imm>'
--- DMB_BO_system                 dmb.xml
--- DSB_BO_system                 dsb.xml

type Logical_B16 = '[]
type Binary_B16  = '[]

decode_B16 :: Fn Logical_B16 a -> FnW Binary_B16 (Decode a)
decode_B16 f = return f

encode_B16 :: FnW Binary_B16 a -> Fn Logical_B16 (Encode a)
encode_B16 f = return f

parse_B16 :: Fn Logical_B16 a -> Parser a
parse_B16 f = ws >> return f

show_B16 :: Fn Logical_B16 (String, String)
show_B16 = simple $ ""


--- B17: '  <Wd>, <Wn>, <Wm>'
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

type Logical_B17 = '[]
type Binary_B17  = '[]

decode_B17 :: Fn Logical_B17 a -> FnW Binary_B17 (Decode a)
decode_B17 f = return f

encode_B17 :: FnW Binary_B17 a -> Fn Logical_B17 (Encode a)
encode_B17 f = return f

parse_B17 :: Fn Logical_B17 a -> Parser a
parse_B17 f = ws >> return f

show_B17 :: Fn Logical_B17 (String, String)
show_B17 = simple $ ""


--- B18: '  <Wd>, <Wn>, <Xm>'
--- CRC32X_64C_dp_2src            crc32.xml
--- CRC32CX_64C_dp_2src           crc32c.xml

type Logical_B18 = '[]
type Binary_B18  = '[]

decode_B18 :: Fn Logical_B18 a -> FnW Binary_B18 (Decode a)
decode_B18 f = return f

encode_B18 :: FnW Binary_B18 a -> Fn Logical_B18 (Encode a)
encode_B18 f = return f

parse_B18 :: Fn Logical_B18 a -> Parser a
parse_B18 f = ws >> return f

show_B18 :: Fn Logical_B18 (String, String)
show_B18 = simple $ ""


--- B19: '  <Xd>, <Xn>, <Xm>'
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

type Logical_B19 = '[]
type Binary_B19  = '[]

decode_B19 :: Fn Logical_B19 a -> FnW Binary_B19 (Decode a)
decode_B19 f = return f

encode_B19 :: FnW Binary_B19 a -> Fn Logical_B19 (Encode a)
encode_B19 f = return f

parse_B19 :: Fn Logical_B19 a -> Parser a
parse_B19 f = ws >> return f

show_B19 :: Fn Logical_B19 (String, String)
show_B19 = simple $ ""


--- B20: '  {<option>|#<imm>}'
--- ISB_BI_system                 isb.xml

type Logical_B20 = '[]
type Binary_B20  = '[]

decode_B20 :: Fn Logical_B20 a -> FnW Binary_B20 (Decode a)
decode_B20 f = return f

encode_B20 :: FnW Binary_B20 a -> Fn Logical_B20 (Encode a)
encode_B20 f = return f

parse_B20 :: Fn Logical_B20 a -> Parser a
parse_B20 f = ws >> return f

show_B20 :: Fn Logical_B20 (String, String)
show_B20 = simple $ ""


--- B21: '  <Wd>, <Wn>, #<imm>'
--- ANDS_32S_log_imm              ands_log_imm.xml

type Logical_B21 = '[]
type Binary_B21  = '[]

decode_B21 :: Fn Logical_B21 a -> FnW Binary_B21 (Decode a)
decode_B21 f = return f

encode_B21 :: FnW Binary_B21 a -> Fn Logical_B21 (Encode a)
encode_B21 f = return f

parse_B21 :: Fn Logical_B21 a -> Parser a
parse_B21 f = ws >> return f

show_B21 :: Fn Logical_B21 (String, String)
show_B21 = simple $ ""


--- B22: '  <Xd>, <Xn>, #<imm>'
--- ANDS_64S_log_imm              ands_log_imm.xml

type Logical_B22 = '[]
type Binary_B22  = '[]

decode_B22 :: Fn Logical_B22 a -> FnW Binary_B22 (Decode a)
decode_B22 f = return f

encode_B22 :: FnW Binary_B22 a -> Fn Logical_B22 (Encode a)
encode_B22 f = return f

parse_B22 :: Fn Logical_B22 a -> Parser a
parse_B22 f = ws >> return f

show_B22 :: Fn Logical_B22 (String, String)
show_B22 = simple $ ""


--- B23: '  <Xd>, <Xn>, <Xm|SP>'
--- PACGA_64P_dp_2src             pacga.xml

type Logical_B23 = '[]
type Binary_B23  = '[]

decode_B23 :: Fn Logical_B23 a -> FnW Binary_B23 (Decode a)
decode_B23 f = return f

encode_B23 :: FnW Binary_B23 a -> Fn Logical_B23 (Encode a)
encode_B23 f = return f

parse_B23 :: Fn Logical_B23 a -> Parser a
parse_B23 f = ws >> return f

show_B23 :: Fn Logical_B23 (String, String)
show_B23 = simple $ ""


--- B24: '  <Wt>, [<Xn|SP>{,#0}]'
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

type Logical_B24 = '[]
type Binary_B24  = '[]

decode_B24 :: Fn Logical_B24 a -> FnW Binary_B24 (Decode a)
decode_B24 f = return f

encode_B24 :: FnW Binary_B24 a -> Fn Logical_B24 (Encode a)
encode_B24 f = return f

parse_B24 :: Fn Logical_B24 a -> Parser a
parse_B24 f = ws >> return f

show_B24 :: Fn Logical_B24 (String, String)
show_B24 = simple $ ""


--- B25: '  <Xt>, [<Xn|SP>{,#0}]'
--- LDAR_LR64_ldstexcl            ldar.xml
--- LDAXR_LR64_ldstexcl           ldaxr.xml
--- LDLAR_LR64_ldstexcl           ldlar.xml
--- LDXR_LR64_ldstexcl            ldxr.xml
--- STLLR_SL64_ldstexcl           stllr.xml
--- STLR_SL64_ldstexcl            stlr.xml

type Logical_B25 = '[]
type Binary_B25  = '[]

decode_B25 :: Fn Logical_B25 a -> FnW Binary_B25 (Decode a)
decode_B25 f = return f

encode_B25 :: FnW Binary_B25 a -> Fn Logical_B25 (Encode a)
encode_B25 f = return f

parse_B25 :: Fn Logical_B25 a -> Parser a
parse_B25 f = ws >> return f

show_B25 :: Fn Logical_B25 (String, String)
show_B25 = simple $ ""


--- B26: '  <Ws>, <Wt>, [<Xn|SP>]'
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

type Logical_B26 = '[]
type Binary_B26  = '[]

decode_B26 :: Fn Logical_B26 a -> FnW Binary_B26 (Decode a)
decode_B26 f = return f

encode_B26 :: FnW Binary_B26 a -> Fn Logical_B26 (Encode a)
encode_B26 f = return f

parse_B26 :: Fn Logical_B26 a -> Parser a
parse_B26 f = ws >> return f

show_B26 :: Fn Logical_B26 (String, String)
show_B26 = simple $ ""


--- B27: '  <Wt>, [<Xn|SP> {,#0}]'
--- LDAPR_32L_memop               ldapr.xml
--- LDAPRB_32L_memop              ldaprb.xml
--- LDAPRH_32L_memop              ldaprh.xml

type Logical_B27 = '[]
type Binary_B27  = '[]

decode_B27 :: Fn Logical_B27 a -> FnW Binary_B27 (Decode a)
decode_B27 f = return f

encode_B27 :: FnW Binary_B27 a -> Fn Logical_B27 (Encode a)
encode_B27 f = return f

parse_B27 :: Fn Logical_B27 a -> Parser a
parse_B27 f = ws >> return f

show_B27 :: Fn Logical_B27 (String, String)
show_B27 = simple $ ""


--- B28: '  <Xd|SP>, <Xn>, #<imm>'
--- AND_64_log_imm                and_log_imm.xml
--- EOR_64_log_imm                eor_log_imm.xml
--- ORR_64_log_imm                orr_log_imm.xml

type Logical_B28 = '[]
type Binary_B28  = '[]

decode_B28 :: Fn Logical_B28 a -> FnW Binary_B28 (Decode a)
decode_B28 f = return f

encode_B28 :: FnW Binary_B28 a -> Fn Logical_B28 (Encode a)
encode_B28 f = return f

parse_B28 :: Fn Logical_B28 a -> Parser a
parse_B28 f = ws >> return f

show_B28 :: Fn Logical_B28 (String, String)
show_B28 = simple $ ""


--- B29: '  <Xs>, <Xt>, [<Xn|SP>]'
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

type Logical_B29 = '[]
type Binary_B29  = '[]

decode_B29 :: Fn Logical_B29 a -> FnW Binary_B29 (Decode a)
decode_B29 f = return f

encode_B29 :: FnW Binary_B29 a -> Fn Logical_B29 (Encode a)
encode_B29 f = return f

parse_B29 :: Fn Logical_B29 a -> Parser a
parse_B29 f = ws >> return f

show_B29 :: Fn Logical_B29 (String, String)
show_B29 = simple $ ""


--- B30: '  <Xt>, [<Xn|SP> {,#0}]'
--- LDAPR_64L_memop               ldapr.xml

type Logical_B30 = '[]
type Binary_B30  = '[]

decode_B30 :: Fn Logical_B30 a -> FnW Binary_B30 (Decode a)
decode_B30 f = return f

encode_B30 :: FnW Binary_B30 a -> Fn Logical_B30 (Encode a)
encode_B30 f = return f

parse_B30 :: Fn Logical_B30 a -> Parser a
parse_B30 f = ws >> return f

show_B30 :: Fn Logical_B30 (String, String)
show_B30 = simple $ ""


--- B31: '  <pstatefield>, #<imm>'
--- MSR_SI_system                 msr_imm.xml

type Logical_B31 = '[]
type Binary_B31  = '[]

decode_B31 :: Fn Logical_B31 a -> FnW Binary_B31 (Decode a)
decode_B31 f = return f

encode_B31 :: FnW Binary_B31 a -> Fn Logical_B31 (Encode a)
encode_B31 f = return f

parse_B31 :: Fn Logical_B31 a -> Parser a
parse_B31 f = ws >> return f

show_B31 :: Fn Logical_B31 (String, String)
show_B31 = simple $ ""


--- B32: '  <Wd>, <Wn>, <Wm>, <Wa>'
--- MADD_32A_dp_3src              madd.xml
--- MSUB_32A_dp_3src              msub.xml

type Logical_B32 = '[]
type Binary_B32  = '[]

decode_B32 :: Fn Logical_B32 a -> FnW Binary_B32 (Decode a)
decode_B32 f = return f

encode_B32 :: FnW Binary_B32 a -> Fn Logical_B32 (Encode a)
encode_B32 f = return f

parse_B32 :: Fn Logical_B32 a -> Parser a
parse_B32 f = ws >> return f

show_B32 :: Fn Logical_B32 (String, String)
show_B32 = simple $ ""


--- B33: '  <Wd|WSP>, <Wn>, #<imm>'
--- AND_32_log_imm                and_log_imm.xml
--- EOR_32_log_imm                eor_log_imm.xml
--- ORR_32_log_imm                orr_log_imm.xml

type Logical_B33 = '[]
type Binary_B33  = '[]

decode_B33 :: Fn Logical_B33 a -> FnW Binary_B33 (Decode a)
decode_B33 f = return f

encode_B33 :: FnW Binary_B33 a -> Fn Logical_B33 (Encode a)
encode_B33 f = return f

parse_B33 :: Fn Logical_B33 a -> Parser a
parse_B33 f = ws >> return f

show_B33 :: Fn Logical_B33 (String, String)
show_B33 = simple $ ""


--- B34: '  <Xd>, <Wn>, <Wm>, <Xa>'
--- SMADDL_64WA_dp_3src           smaddl.xml
--- SMSUBL_64WA_dp_3src           smsubl.xml
--- UMADDL_64WA_dp_3src           umaddl.xml
--- UMSUBL_64WA_dp_3src           umsubl.xml

type Logical_B34 = '[]
type Binary_B34  = '[]

decode_B34 :: Fn Logical_B34 a -> FnW Binary_B34 (Decode a)
decode_B34 f = return f

encode_B34 :: FnW Binary_B34 a -> Fn Logical_B34 (Encode a)
encode_B34 f = return f

parse_B34 :: Fn Logical_B34 a -> Parser a
parse_B34 f = ws >> return f

show_B34 :: Fn Logical_B34 (String, String)
show_B34 = simple $ ""


--- B35: '  <Xd>, <Xn>, <Xm>, <Xa>'
--- MADD_64A_dp_3src              madd.xml
--- MSUB_64A_dp_3src              msub.xml

type Logical_B35 = '[]
type Binary_B35  = '[]

decode_B35 :: Fn Logical_B35 a -> FnW Binary_B35 (Decode a)
decode_B35 f = return f

encode_B35 :: FnW Binary_B35 a -> Fn Logical_B35 (Encode a)
encode_B35 f = return f

parse_B35 :: Fn Logical_B35 a -> Parser a
parse_B35 f = ws >> return f

show_B35 :: Fn Logical_B35 (String, String)
show_B35 = simple $ ""


--- B36: '  <R><t>, #<imm>, <label>'
--- TBNZ_only_testbranch          tbnz.xml
--- TBZ_only_testbranch           tbz.xml

type Logical_B36 = '[]
type Binary_B36  = '[]

decode_B36 :: Fn Logical_B36 a -> FnW Binary_B36 (Decode a)
decode_B36 f = return f

encode_B36 :: FnW Binary_B36 a -> Fn Logical_B36 (Encode a)
encode_B36 f = return f

parse_B36 :: Fn Logical_B36 a -> Parser a
parse_B36 f = ws >> return f

show_B36 :: Fn Logical_B36 (String, String)
show_B36 = simple $ ""


--- B37: '  <Wd>, <Wn>, <Wm>, #<lsb>'
--- EXTR_32_extract               extr.xml

type Logical_B37 = '[]
type Binary_B37  = '[]

decode_B37 :: Fn Logical_B37 a -> FnW Binary_B37 (Decode a)
decode_B37 f = return f

encode_B37 :: FnW Binary_B37 a -> Fn Logical_B37 (Encode a)
encode_B37 f = return f

parse_B37 :: Fn Logical_B37 a -> Parser a
parse_B37 f = ws >> return f

show_B37 :: Fn Logical_B37 (String, String)
show_B37 = simple $ ""


--- B38: '  <Wd>, <Wn>, <Wm>, <cond>'
--- CSEL_32_condsel               csel.xml
--- CSINC_32_condsel              csinc.xml
--- CSINV_32_condsel              csinv.xml
--- CSNEG_32_condsel              csneg.xml

type Logical_B38 = '[Wn, Wn, Wn, Cond]
type Binary_B38  = '[5, 5, 5, 4]

decode_B38 :: Fn Logical_B38 a -> FnW Binary_B38 (Decode a)
decode_B38 f rd rn rm cond = f <$> dec rd <*> dec rn <*> dec rm <*> dec cond

encode_B38 :: FnW Binary_B38 a -> Fn Logical_B38 (Encode a)
encode_B38 f wd wn wm cond = f <$> enc wd <*> enc wn <*> enc wm <*> enc cond

parse_B38 :: Fn Logical_B38 a -> Parser a
parse_B38 f = ws >> f <$> prs <*> prs <*> prs <*> prs

show_B38 :: Fn Logical_B38 (String, String)
show_B38 wd wn wm cond = simple $ asm wd +> asm wn +> asm wm +> asm cond


--- B39: '  <Wt>, [<Xn|SP>], #<simm>'
--- LDR_32_ldst_immpost           ldr_imm_gen.xml
--- LDRB_32_ldst_immpost          ldrb_imm.xml
--- LDRH_32_ldst_immpost          ldrh_imm.xml
--- LDRSB_32_ldst_immpost         ldrsb_imm.xml
--- LDRSH_32_ldst_immpost         ldrsh_imm.xml
--- STR_32_ldst_immpost           str_imm_gen.xml
--- STRB_32_ldst_immpost          strb_imm.xml
--- STRH_32_ldst_immpost          strh_imm.xml

type Logical_B39 = '[]
type Binary_B39  = '[]

decode_B39 :: Fn Logical_B39 a -> FnW Binary_B39 (Decode a)
decode_B39 f = return f

encode_B39 :: FnW Binary_B39 a -> Fn Logical_B39 (Encode a)
encode_B39 f = return f

parse_B39 :: Fn Logical_B39 a -> Parser a
parse_B39 f = ws >> return f

show_B39 :: Fn Logical_B39 (String, String)
show_B39 = simple $ ""


--- B40: '  <Xd>, <Xn>, <Xm>, #<lsb>'
--- EXTR_64_extract               extr.xml

type Logical_B40 = '[]
type Binary_B40  = '[]

decode_B40 :: Fn Logical_B40 a -> FnW Binary_B40 (Decode a)
decode_B40 f = return f

encode_B40 :: FnW Binary_B40 a -> Fn Logical_B40 (Encode a)
encode_B40 f = return f

parse_B40 :: Fn Logical_B40 a -> Parser a
parse_B40 f = ws >> return f

show_B40 :: Fn Logical_B40 (String, String)
show_B40 = simple $ ""


--- B41: '  <Xd>, <Xn>, <Xm>, <cond>'
--- CSEL_64_condsel               csel.xml
--- CSINC_64_condsel              csinc.xml
--- CSINV_64_condsel              csinv.xml
--- CSNEG_64_condsel              csneg.xml

type Logical_B41 = '[]
type Binary_B41  = '[]

decode_B41 :: Fn Logical_B41 a -> FnW Binary_B41 (Decode a)
decode_B41 f = return f

encode_B41 :: FnW Binary_B41 a -> Fn Logical_B41 (Encode a)
encode_B41 f = return f

parse_B41 :: Fn Logical_B41 a -> Parser a
parse_B41 f = ws >> return f

show_B41 :: Fn Logical_B41 (String, String)
show_B41 = simple $ ""


--- B42: '  <Xt>, [<Xn|SP>], #<simm>'
--- LDR_64_ldst_immpost           ldr_imm_gen.xml
--- LDRSB_64_ldst_immpost         ldrsb_imm.xml
--- LDRSH_64_ldst_immpost         ldrsh_imm.xml
--- LDRSW_64_ldst_immpost         ldrsw_imm.xml
--- STR_64_ldst_immpost           str_imm_gen.xml

type Logical_B42 = '[]
type Binary_B42  = '[]

decode_B42 :: Fn Logical_B42 a -> FnW Binary_B42 (Decode a)
decode_B42 f = return f

encode_B42 :: FnW Binary_B42 a -> Fn Logical_B42 (Encode a)
encode_B42 f = return f

parse_B42 :: Fn Logical_B42 a -> Parser a
parse_B42 f = ws >> return f

show_B42 :: Fn Logical_B42 (String, String)
show_B42 = simple $ ""


--- B43: '  <Wt>, [<Xn|SP>, #<simm>]!'
--- LDR_32_ldst_immpre            ldr_imm_gen.xml
--- LDRB_32_ldst_immpre           ldrb_imm.xml
--- LDRH_32_ldst_immpre           ldrh_imm.xml
--- LDRSB_32_ldst_immpre          ldrsb_imm.xml
--- LDRSH_32_ldst_immpre          ldrsh_imm.xml
--- STR_32_ldst_immpre            str_imm_gen.xml
--- STRB_32_ldst_immpre           strb_imm.xml
--- STRH_32_ldst_immpre           strh_imm.xml

type Logical_B43 = '[]
type Binary_B43  = '[]

decode_B43 :: Fn Logical_B43 a -> FnW Binary_B43 (Decode a)
decode_B43 f = return f

encode_B43 :: FnW Binary_B43 a -> Fn Logical_B43 (Encode a)
encode_B43 f = return f

parse_B43 :: Fn Logical_B43 a -> Parser a
parse_B43 f = ws >> return f

show_B43 :: Fn Logical_B43 (String, String)
show_B43 = simple $ ""


--- B44: '  <Xt>, [<Xn|SP>, #<simm>]!'
--- LDR_64_ldst_immpre            ldr_imm_gen.xml
--- LDRSB_64_ldst_immpre          ldrsb_imm.xml
--- LDRSH_64_ldst_immpre          ldrsh_imm.xml
--- LDRSW_64_ldst_immpre          ldrsw_imm.xml
--- STR_64_ldst_immpre            str_imm_gen.xml

type Logical_B44 = '[]
type Binary_B44  = '[]

decode_B44 :: Fn Logical_B44 a -> FnW Binary_B44 (Decode a)
decode_B44 f = return f

encode_B44 :: FnW Binary_B44 a -> Fn Logical_B44 (Encode a)
encode_B44 f = return f

parse_B44 :: Fn Logical_B44 a -> Parser a
parse_B44 f = ws >> return f

show_B44 :: Fn Logical_B44 (String, String)
show_B44 = simple $ ""


--- B45: '  (<prfop>|#<imm5>), <label>'
--- PRFM_P_loadlit                prfm_lit.xml

type Logical_B45 = '[]
type Binary_B45  = '[]

decode_B45 :: Fn Logical_B45 a -> FnW Binary_B45 (Decode a)
decode_B45 f = return f

encode_B45 :: FnW Binary_B45 a -> Fn Logical_B45 (Encode a)
encode_B45 f = return f

parse_B45 :: Fn Logical_B45 a -> Parser a
parse_B45 f = ws >> return f

show_B45 :: Fn Logical_B45 (String, String)
show_B45 = simple $ ""


--- B46: '  <Ws>, <Wt>, [<Xn|SP>{,#0}]'
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

type Logical_B46 = '[]
type Binary_B46  = '[]

decode_B46 :: Fn Logical_B46 a -> FnW Binary_B46 (Decode a)
decode_B46 f = return f

encode_B46 :: FnW Binary_B46 a -> Fn Logical_B46 (Encode a)
encode_B46 f = return f

parse_B46 :: Fn Logical_B46 a -> Parser a
parse_B46 f = ws >> return f

show_B46 :: Fn Logical_B46 (String, String)
show_B46 = simple $ ""


--- B47: '  <Ws>, <Xt>, [<Xn|SP>{,#0}]'
--- STLXR_SR64_ldstexcl           stlxr.xml
--- STXR_SR64_ldstexcl            stxr.xml

type Logical_B47 = '[]
type Binary_B47  = '[]

decode_B47 :: Fn Logical_B47 a -> FnW Binary_B47 (Decode a)
decode_B47 f = return f

encode_B47 :: FnW Binary_B47 a -> Fn Logical_B47 (Encode a)
encode_B47 f = return f

parse_B47 :: Fn Logical_B47 a -> Parser a
parse_B47 f = ws >> return f

show_B47 :: Fn Logical_B47 (String, String)
show_B47 = simple $ ""


--- B48: '  <Wt>, [<Xn|SP>{, #<pimm>}]'
--- LDR_32_ldst_pos               ldr_imm_gen.xml
--- LDRB_32_ldst_pos              ldrb_imm.xml
--- LDRH_32_ldst_pos              ldrh_imm.xml
--- LDRSB_32_ldst_pos             ldrsb_imm.xml
--- LDRSH_32_ldst_pos             ldrsh_imm.xml
--- STR_32_ldst_pos               str_imm_gen.xml
--- STRB_32_ldst_pos              strb_imm.xml
--- STRH_32_ldst_pos              strh_imm.xml

type Logical_B48 = '[]
type Binary_B48  = '[]

decode_B48 :: Fn Logical_B48 a -> FnW Binary_B48 (Decode a)
decode_B48 f = return f

encode_B48 :: FnW Binary_B48 a -> Fn Logical_B48 (Encode a)
encode_B48 f = return f

parse_B48 :: Fn Logical_B48 a -> Parser a
parse_B48 f = ws >> return f

show_B48 :: Fn Logical_B48 (String, String)
show_B48 = simple $ ""


--- B49: '  <Wt>, [<Xn|SP>{, #<simm>}]'
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

type Logical_B49 = '[]
type Binary_B49  = '[]

decode_B49 :: Fn Logical_B49 a -> FnW Binary_B49 (Decode a)
decode_B49 f = return f

encode_B49 :: FnW Binary_B49 a -> Fn Logical_B49 (Encode a)
encode_B49 f = return f

parse_B49 :: Fn Logical_B49 a -> Parser a
parse_B49 f = ws >> return f

show_B49 :: Fn Logical_B49 (String, String)
show_B49 = simple $ ""


--- B50: '  <Xs>, <Xt>, [<Xn|SP>{,#0}]'
--- CAS_C64_ldstexcl              cas.xml
--- CASA_C64_ldstexcl             cas.xml
--- CASAL_C64_ldstexcl            cas.xml
--- CASL_C64_ldstexcl             cas.xml

type Logical_B50 = '[]
type Binary_B50  = '[]

decode_B50 :: Fn Logical_B50 a -> FnW Binary_B50 (Decode a)
decode_B50 f = return f

encode_B50 :: FnW Binary_B50 a -> Fn Logical_B50 (Encode a)
encode_B50 f = return f

parse_B50 :: Fn Logical_B50 a -> Parser a
parse_B50 f = ws >> return f

show_B50 :: Fn Logical_B50 (String, String)
show_B50 = simple $ ""


--- B51: '  <Xt>, [<Xn|SP>{, #<pimm>}]'
--- LDR_64_ldst_pos               ldr_imm_gen.xml
--- LDRSB_64_ldst_pos             ldrsb_imm.xml
--- LDRSH_64_ldst_pos             ldrsh_imm.xml
--- LDRSW_64_ldst_pos             ldrsw_imm.xml
--- STR_64_ldst_pos               str_imm_gen.xml

type Logical_B51 = '[Xn, XnSP, W 12]
type Binary_B51  = '[5, 5, 12]

decode_B51 :: Fn Logical_B51 a -> FnW Binary_B51 (Decode a)
decode_B51 f rt rn imm12 = f <$> dec rt <*> dec rn <*> dec imm12

encode_B51 :: FnW Binary_B51 a -> Fn Logical_B51 (Encode a)
encode_B51 f xt xn imm = f <$> enc xt <*> enc xn <*> enc imm

parse_B51 :: Fn Logical_B51 a -> Parser a
parse_B51 f = ws >> uncurry <$> (f <$> prs) <+> prsPosPreIndex64

show_B51 :: Fn Logical_B51 (String, String)
show_B51 xt xn imm = simple $ asm xt +> asmPosPreIndex64 xn imm


--- B52: '  <Xt>, [<Xn|SP>{, #<simm>}]'
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

type Logical_B52 = '[]
type Binary_B52  = '[]

decode_B52 :: Fn Logical_B52 a -> FnW Binary_B52 (Decode a)
decode_B52 f = return f

encode_B52 :: FnW Binary_B52 a -> Fn Logical_B52 (Encode a)
encode_B52 f = return f

parse_B52 :: Fn Logical_B52 a -> Parser a
parse_B52 f = ws >> return f

show_B52 :: Fn Logical_B52 (String, String)
show_B52 = simple $ ""


--- B53: '  <Wn>, <Wm>, #<nzcv>, <cond>'
--- CCMN_32_condcmp_reg           ccmn_reg.xml
--- CCMP_32_condcmp_reg           ccmp_reg.xml

type Logical_B53 = '[]
type Binary_B53  = '[]

decode_B53 :: Fn Logical_B53 a -> FnW Binary_B53 (Decode a)
decode_B53 f = return f

encode_B53 :: FnW Binary_B53 a -> Fn Logical_B53 (Encode a)
encode_B53 f = return f

parse_B53 :: Fn Logical_B53 a -> Parser a
parse_B53 f = ws >> return f

show_B53 :: Fn Logical_B53 (String, String)
show_B53 = simple $ ""


--- B54: '  <Xn>, <Xm>, #<nzcv>, <cond>'
--- CCMN_64_condcmp_reg           ccmn_reg.xml
--- CCMP_64_condcmp_reg           ccmp_reg.xml

type Logical_B54 = '[]
type Binary_B54  = '[]

decode_B54 :: Fn Logical_B54 a -> FnW Binary_B54 (Decode a)
decode_B54 f = return f

encode_B54 :: FnW Binary_B54 a -> Fn Logical_B54 (Encode a)
encode_B54 f = return f

parse_B54 :: Fn Logical_B54 a -> Parser a
parse_B54 f = ws >> return f

show_B54 :: Fn Logical_B54 (String, String)
show_B54 = simple $ ""


--- B55: '  <Xt>, [<Xn|SP>{, #<simm>}]!'
--- LDRAA_64W_ldst_pac            ldra.xml
--- LDRAB_64W_ldst_pac            ldra.xml

type Logical_B55 = '[]
type Binary_B55  = '[]

decode_B55 :: Fn Logical_B55 a -> FnW Binary_B55 (Decode a)
decode_B55 f = return f

encode_B55 :: FnW Binary_B55 a -> Fn Logical_B55 (Encode a)
encode_B55 f = return f

parse_B55 :: Fn Logical_B55 a -> Parser a
parse_B55 f = ws >> return f

show_B55 :: Fn Logical_B55 (String, String)
show_B55 = simple $ ""


--- B56: '  <Wd>, #<imm>{, LSL #<shift>}'
--- MOVK_32_movewide              movk.xml
--- MOVN_32_movewide              movn.xml
--- MOVZ_32_movewide              movz.xml

type Logical_B56 = '[]
type Binary_B56  = '[]

decode_B56 :: Fn Logical_B56 a -> FnW Binary_B56 (Decode a)
decode_B56 f = return f

encode_B56 :: FnW Binary_B56 a -> Fn Logical_B56 (Encode a)
encode_B56 f = return f

parse_B56 :: Fn Logical_B56 a -> Parser a
parse_B56 f = ws >> return f

show_B56 :: Fn Logical_B56 (String, String)
show_B56 = simple $ ""


--- B57: '  <Wd>, <Wn>, #<immr>, #<imms>'
--- BFM_32M_bitfield              bfm.xml
--- SBFM_32M_bitfield             sbfm.xml
--- UBFM_32M_bitfield             ubfm.xml

type Logical_B57 = '[]
type Binary_B57  = '[]

decode_B57 :: Fn Logical_B57 a -> FnW Binary_B57 (Decode a)
decode_B57 f = return f

encode_B57 :: FnW Binary_B57 a -> Fn Logical_B57 (Encode a)
encode_B57 f = return f

parse_B57 :: Fn Logical_B57 a -> Parser a
parse_B57 f = ws >> return f

show_B57 :: Fn Logical_B57 (String, String)
show_B57 = simple $ ""


--- B58: '  <Wt1>, <Wt2>, [<Xn|SP>{,#0}]'
--- LDAXP_LP32_ldstexcl           ldaxp.xml
--- LDXP_LP32_ldstexcl            ldxp.xml

type Logical_B58 = '[]
type Binary_B58  = '[]

decode_B58 :: Fn Logical_B58 a -> FnW Binary_B58 (Decode a)
decode_B58 f = return f

encode_B58 :: FnW Binary_B58 a -> Fn Logical_B58 (Encode a)
encode_B58 f = return f

parse_B58 :: Fn Logical_B58 a -> Parser a
parse_B58 f = ws >> return f

show_B58 :: Fn Logical_B58 (String, String)
show_B58 = simple $ ""


--- B59: '  <Xd>, #<imm>{, LSL #<shift>}'
--- MOVK_64_movewide              movk.xml
--- MOVN_64_movewide              movn.xml
--- MOVZ_64_movewide              movz.xml

type Logical_B59 = '[]
type Binary_B59  = '[]

decode_B59 :: Fn Logical_B59 a -> FnW Binary_B59 (Decode a)
decode_B59 f = return f

encode_B59 :: FnW Binary_B59 a -> Fn Logical_B59 (Encode a)
encode_B59 f = return f

parse_B59 :: Fn Logical_B59 a -> Parser a
parse_B59 f = ws >> return f

show_B59 :: Fn Logical_B59 (String, String)
show_B59 = simple $ ""


--- B60: '  <Xd>, <Xn>, #<immr>, #<imms>'
--- BFM_64M_bitfield              bfm.xml
--- SBFM_64M_bitfield             sbfm.xml
--- UBFM_64M_bitfield             ubfm.xml

type Logical_B60 = '[]
type Binary_B60  = '[]

decode_B60 :: Fn Logical_B60 a -> FnW Binary_B60 (Decode a)
decode_B60 f = return f

encode_B60 :: FnW Binary_B60 a -> Fn Logical_B60 (Encode a)
encode_B60 f = return f

parse_B60 :: Fn Logical_B60 a -> Parser a
parse_B60 f = ws >> return f

show_B60 :: Fn Logical_B60 (String, String)
show_B60 = simple $ ""


--- B61: '  <Xt1>, <Xt2>, [<Xn|SP>{,#0}]'
--- LDAXP_LP64_ldstexcl           ldaxp.xml
--- LDXP_LP64_ldstexcl            ldxp.xml

type Logical_B61 = '[]
type Binary_B61  = '[]

decode_B61 :: Fn Logical_B61 a -> FnW Binary_B61 (Decode a)
decode_B61 f = return f

encode_B61 :: FnW Binary_B61 a -> Fn Logical_B61 (Encode a)
encode_B61 f = return f

parse_B61 :: Fn Logical_B61 a -> Parser a
parse_B61 f = ws >> return f

show_B61 :: Fn Logical_B61 (String, String)
show_B61 = simple $ ""


--- B62: '  <Wn>, #<imm>, #<nzcv>, <cond>'
--- CCMN_32_condcmp_imm           ccmn_imm.xml
--- CCMP_32_condcmp_imm           ccmp_imm.xml

type Logical_B62 = '[]
type Binary_B62  = '[]

decode_B62 :: Fn Logical_B62 a -> FnW Binary_B62 (Decode a)
decode_B62 f = return f

encode_B62 :: FnW Binary_B62 a -> Fn Logical_B62 (Encode a)
encode_B62 f = return f

parse_B62 :: Fn Logical_B62 a -> Parser a
parse_B62 f = ws >> return f

show_B62 :: Fn Logical_B62 (String, String)
show_B62 = simple $ ""


--- B63: '  <Xn>, #<imm>, #<nzcv>, <cond>'
--- CCMN_64_condcmp_imm           ccmn_imm.xml
--- CCMP_64_condcmp_imm           ccmp_imm.xml

type Logical_B63 = '[]
type Binary_B63  = '[]

decode_B63 :: Fn Logical_B63 a -> FnW Binary_B63 (Decode a)
decode_B63 f = return f

encode_B63 :: FnW Binary_B63 a -> Fn Logical_B63 (Encode a)
encode_B63 f = return f

parse_B63 :: Fn Logical_B63 a -> Parser a
parse_B63 f = ws >> return f

show_B63 :: Fn Logical_B63 (String, String)
show_B63 = simple $ ""


--- B64: '  <Wt1>, <Wt2>, [<Xn|SP>], #<imm>'
--- LDP_32_ldstpair_post          ldp_gen.xml
--- STP_32_ldstpair_post          stp_gen.xml

type Logical_B64 = '[]
type Binary_B64  = '[]

decode_B64 :: Fn Logical_B64 a -> FnW Binary_B64 (Decode a)
decode_B64 f = return f

encode_B64 :: FnW Binary_B64 a -> Fn Logical_B64 (Encode a)
encode_B64 f = return f

parse_B64 :: Fn Logical_B64 a -> Parser a
parse_B64 f = ws >> return f

show_B64 :: Fn Logical_B64 (String, String)
show_B64 = simple $ ""


--- B65: '  <Xt1>, <Xt2>, [<Xn|SP>], #<imm>'
--- LDP_64_ldstpair_post          ldp_gen.xml
--- LDPSW_64_ldstpair_post        ldpsw.xml
--- STP_64_ldstpair_post          stp_gen.xml

type Logical_B65 = '[]
type Binary_B65  = '[]

decode_B65 :: Fn Logical_B65 a -> FnW Binary_B65 (Decode a)
decode_B65 f = return f

encode_B65 :: FnW Binary_B65 a -> Fn Logical_B65 (Encode a)
encode_B65 f = return f

parse_B65 :: Fn Logical_B65 a -> Parser a
parse_B65 f = ws >> return f

show_B65 :: Fn Logical_B65 (String, String)
show_B65 = simple $ ""


--- B66: '  <Wt1>, <Wt2>, [<Xn|SP>, #<imm>]!'
--- LDP_32_ldstpair_pre           ldp_gen.xml
--- STP_32_ldstpair_pre           stp_gen.xml

type Logical_B66 = '[]
type Binary_B66  = '[]

decode_B66 :: Fn Logical_B66 a -> FnW Binary_B66 (Decode a)
decode_B66 f = return f

encode_B66 :: FnW Binary_B66 a -> Fn Logical_B66 (Encode a)
encode_B66 f = return f

parse_B66 :: Fn Logical_B66 a -> Parser a
parse_B66 f = ws >> return f

show_B66 :: Fn Logical_B66 (String, String)
show_B66 = simple $ ""


--- B67: '  <Xd>, <Xn|SP>, #<imm>{, <shift>}'
--- ADDS_64S_addsub_imm           adds_addsub_imm.xml
--- SUBS_64S_addsub_imm           subs_addsub_imm.xml

type Logical_B67 = '[Xn, XnSP, W 12, LSL_12]
type Binary_B67  = '[5, 5, 12, 2]

decode_B67 :: Fn Logical_B67 a -> FnW Binary_B67 (Decode a)
decode_B67 f rd rn imm12 shift = f
    <$> dec rd
    <*> dec rn
    <*> dec imm12
    <*> dec shift

encode_B67 :: FnW Binary_B67 a -> Fn Logical_B67 (Encode a)
encode_B67 f xd xn imm shift = f
    <$> enc xd
    <*> enc xn
    <*> enc imm
    <*> enc shift

parse_B67 :: Fn Logical_B67 a -> Parser a
parse_B67 f = ws >> f <$> prs <+> prs <+> prs <*> prs

show_B67 :: Fn Logical_B67 (String, String)
show_B67 xd xn imm shift = simple $ asm xd +> asm xn +> asm imm ++ asm shift


--- B68: '  <Xt1>, <Xt2>, [<Xn|SP>, #<imm>]!'
--- LDP_64_ldstpair_pre           ldp_gen.xml
--- LDPSW_64_ldstpair_pre         ldpsw.xml
--- STP_64_ldstpair_pre           stp_gen.xml

type Logical_B68 = '[Xn, Xn, XnSP, I 7]
type Binary_B68  = '[5, 5, 5, 7]

decode_B68 :: Fn Logical_B68 a -> FnW Binary_B68 (Decode a)
decode_B68 f rt rt2 rn imm7 = f <$> dec rt <*> dec rt2 <*> dec rn <*> dec imm7

encode_B68 :: FnW Binary_B68 a -> Fn Logical_B68 (Encode a)
encode_B68 f xt1 xt2 xn imm = f <$> enc xt1 <*> enc xt2 <*> enc xn <*> enc imm

parse_B68 :: Fn Logical_B68 a -> Parser a
parse_B68 f = ws >> uncurry <$> (f <$> prs <+> prs) <+> prsPreIndexBang64

show_B68 :: Fn Logical_B68 (String, String)
show_B68 xt1 xt2 xn imm = simple $ asm xt1 +> asm xt2 +> asmPreIndexBang64 xn imm


--- B69: '  <Xt>, #<op1>, <Cn>, <Cm>, #<op2>'
--- SYSL_RC_system                sysl.xml

type Logical_B69 = '[]
type Binary_B69  = '[]

decode_B69 :: Fn Logical_B69 a -> FnW Binary_B69 (Decode a)
decode_B69 f = return f

encode_B69 :: FnW Binary_B69 a -> Fn Logical_B69 (Encode a)
encode_B69 f = return f

parse_B69 :: Fn Logical_B69 a -> Parser a
parse_B69 f = ws >> return f

show_B69 :: Fn Logical_B69 (String, String)
show_B69 = simple $ ""


--- B70: '  <Wd>, <Wn|WSP>, #<imm>{, <shift>}'
--- ADDS_32S_addsub_imm           adds_addsub_imm.xml
--- SUBS_32S_addsub_imm           subs_addsub_imm.xml

type Logical_B70 = '[Wn, WnSP, W 12, LSL_12]
type Binary_B70  = '[5, 5, 12, 2]

decode_B70 :: Fn Logical_B70 a -> FnW Binary_B70 (Decode a)
decode_B70 f rd rn imm12 shift = f
    <$> dec rd
    <*> dec rn
    <*> dec imm12
    <*> dec shift

encode_B70 :: FnW Binary_B70 a -> Fn Logical_B70 (Encode a)
encode_B70 f wd wn imm shift = f
    <$> enc wd
    <*> enc wn
    <*> enc imm
    <*> enc shift

parse_B70 :: Fn Logical_B70 a -> Parser a
parse_B70 f = ws >> f <$> prs <+> prs <+> prs <*> prs

show_B70 :: Fn Logical_B70 (String, String)
show_B70 wd wn imm shift = simple $ asm wd +> asm wn +> asm imm ++ asm shift


--- B71: '  <Wt1>, <Wt2>, [<Xn|SP>{, #<imm>}]'
--- LDNP_32_ldstnapair_offs       ldnp_gen.xml
--- LDP_32_ldstpair_off           ldp_gen.xml
--- STNP_32_ldstnapair_offs       stnp_gen.xml
--- STP_32_ldstpair_off           stp_gen.xml

type Logical_B71 = '[]
type Binary_B71  = '[]

decode_B71 :: Fn Logical_B71 a -> FnW Binary_B71 (Decode a)
decode_B71 f = return f

encode_B71 :: FnW Binary_B71 a -> Fn Logical_B71 (Encode a)
encode_B71 f = return f

parse_B71 :: Fn Logical_B71 a -> Parser a
parse_B71 f = ws >> return f

show_B71 :: Fn Logical_B71 (String, String)
show_B71 = simple $ ""


--- B72: '  <Xt1>, <Xt2>, [<Xn|SP>{, #<imm>}]'
--- LDNP_64_ldstnapair_offs       ldnp_gen.xml
--- LDP_64_ldstpair_off           ldp_gen.xml
--- LDPSW_64_ldstpair_off         ldpsw.xml
--- STNP_64_ldstnapair_offs       stnp_gen.xml
--- STP_64_ldstpair_off           stp_gen.xml

type Logical_B72 = '[Xn, Xn, XnSP, I 7]
type Binary_B72  = '[5, 5, 5, 7]

decode_B72 :: Fn Logical_B72 a -> FnW Binary_B72 (Decode a)
decode_B72 f rt rt2 rn imm7 = f <$> dec rt <*> dec rt2 <*> dec rn <*> dec imm7

encode_B72 :: FnW Binary_B72 a -> Fn Logical_B72 (Encode a)
encode_B72 f xt1 xt2 xn imm = f <$> enc xt1 <*> enc xt2 <*> enc xn <*> enc imm

parse_B72 :: Fn Logical_B72 a -> Parser a
parse_B72 f = ws >> uncurry <$> (f <$> prs <+> prs) <+> prsPreIndex64

show_B72 :: Fn Logical_B72 (String, String)
show_B72 xt1 xt2 xn imm = simple $ asm xt1 +> asm xt2 +> asmPreIndex64 xn imm


--- B73: '  #<op1>, <Cn>, <Cm>, #<op2>{, <Xt>}'
--- SYS_CR_system                 sys.xml

type Logical_B73 = '[]
type Binary_B73  = '[]

decode_B73 :: Fn Logical_B73 a -> FnW Binary_B73 (Decode a)
decode_B73 f = return f

encode_B73 :: FnW Binary_B73 a -> Fn Logical_B73 (Encode a)
encode_B73 f = return f

parse_B73 :: Fn Logical_B73 a -> Parser a
parse_B73 f = ws >> return f

show_B73 :: Fn Logical_B73 (String, String)
show_B73 = simple $ ""


--- B74: '  <Ws>, <Wt1>, <Wt2>, [<Xn|SP>{,#0}]'
--- STLXP_SP32_ldstexcl           stlxp.xml
--- STXP_SP32_ldstexcl            stxp.xml

type Logical_B74 = '[]
type Binary_B74  = '[]

decode_B74 :: Fn Logical_B74 a -> FnW Binary_B74 (Decode a)
decode_B74 f = return f

encode_B74 :: FnW Binary_B74 a -> Fn Logical_B74 (Encode a)
encode_B74 f = return f

parse_B74 :: Fn Logical_B74 a -> Parser a
parse_B74 f = ws >> return f

show_B74 :: Fn Logical_B74 (String, String)
show_B74 = simple $ ""


--- B75: '  <Ws>, <Xt1>, <Xt2>, [<Xn|SP>{,#0}]'
--- STLXP_SP64_ldstexcl           stlxp.xml
--- STXP_SP64_ldstexcl            stxp.xml

type Logical_B75 = '[]
type Binary_B75  = '[]

decode_B75 :: Fn Logical_B75 a -> FnW Binary_B75 (Decode a)
decode_B75 f = return f

encode_B75 :: FnW Binary_B75 a -> Fn Logical_B75 (Encode a)
encode_B75 f = return f

parse_B75 :: Fn Logical_B75 a -> Parser a
parse_B75 f = ws >> return f

show_B75 :: Fn Logical_B75 (String, String)
show_B75 = simple $ ""


--- B76: '  <Xd|SP>, <Xn|SP>, #<imm>{, <shift>}'
--- ADD_64_addsub_imm             add_addsub_imm.xml
--- SUB_64_addsub_imm             sub_addsub_imm.xml

type Logical_B76 = '[XnSP, XnSP, W 12, LSL_12]
type Binary_B76  = '[5, 5, 12, 2]

decode_B76 :: Fn Logical_B76 a -> FnW Binary_B76 (Decode a)
decode_B76 f rd rn imm12 shift = f
    <$> dec rd
    <*> dec rn
    <*> dec imm12
    <*> dec shift

encode_B76 :: FnW Binary_B76 a -> Fn Logical_B76 (Encode a)
encode_B76 f xd xn imm shift = f
    <$> enc xd
    <*> enc xn
    <*> enc imm
    <*> enc shift

parse_B76 :: Fn Logical_B76 a -> Parser a
parse_B76 f = ws >> f <$> prs <+> prs <+> prs <*> prs

show_B76 :: Fn Logical_B76 (String, String)
show_B76 xd xn imm shift = simple $ asm xd +> asm xn +> asm imm ++ asm shift


--- B77: '  <Wd>, <Wn>, <Wm>{, <shift> #<amount>}'
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

type Logical_B77 = '[Wn, Wn, Wn, Shift32]
type Binary_B77  = '[5, 5, 5, 2, 6]

decode_B77 :: Fn Logical_B77 a -> FnW Binary_B77 (Decode a)
decode_B77 f rd rn rm shift imm6 = f
    <$> dec rd <*> dec rn <*> dec rm
    <*> decShift32 shift imm6

encode_B77 :: FnW Binary_B77 a -> Fn Logical_B77 (Encode a)
encode_B77 f wd wn wm (Shift32 ty amnt) = f
    <$> enc wd <*> enc wn <*> enc wm
    <*> enc ty <*> enc (slide amnt)

parse_B77 :: Fn Logical_B77 a -> Parser a
parse_B77 f = ws >> f <$> prs <+> prs <+> prs <*> prs

show_B77 :: Fn Logical_B77 (String, String)
show_B77 wd wn wm sh = simple $ asm wd +> asm wn +> asm wm ++ asm sh


--- B78: '  <Wd|WSP>, <Wn|WSP>, #<imm>{, <shift>}'
--- ADD_32_addsub_imm             add_addsub_imm.xml
--- SUB_32_addsub_imm             sub_addsub_imm.xml

type Logical_B78 = '[]
type Binary_B78  = '[]

decode_B78 :: Fn Logical_B78 a -> FnW Binary_B78 (Decode a)
decode_B78 f = return f

encode_B78 :: FnW Binary_B78 a -> Fn Logical_B78 (Encode a)
encode_B78 f = return f

parse_B78 :: Fn Logical_B78 a -> Parser a
parse_B78 f = ws >> return f

show_B78 :: Fn Logical_B78 (String, String)
show_B78 = simple $ ""


--- B79: '  <Wt>, [<Xn|SP>, <Xm>{, LSL <amount>}]'
--- LDRB_32BL_ldst_regoff         ldrb_reg.xml
--- LDRSB_32BL_ldst_regoff        ldrsb_reg.xml
--- STRB_32BL_ldst_regoff         strb_reg.xml

type Logical_B79 = '[]
type Binary_B79  = '[]

decode_B79 :: Fn Logical_B79 a -> FnW Binary_B79 (Decode a)
decode_B79 f = return f

encode_B79 :: FnW Binary_B79 a -> Fn Logical_B79 (Encode a)
encode_B79 f = return f

parse_B79 :: Fn Logical_B79 a -> Parser a
parse_B79 f = ws >> return f

show_B79 :: Fn Logical_B79 (String, String)
show_B79 = simple $ ""


--- B80: '  <Xd>, <Xn>, <Xm>{, <shift> #<amount>}'
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

type Logical_B80 = '[]
type Binary_B80  = '[]

decode_B80 :: Fn Logical_B80 a -> FnW Binary_B80 (Decode a)
decode_B80 f = return f

encode_B80 :: FnW Binary_B80 a -> Fn Logical_B80 (Encode a)
encode_B80 f = return f

parse_B80 :: Fn Logical_B80 a -> Parser a
parse_B80 f = ws >> return f

show_B80 :: Fn Logical_B80 (String, String)
show_B80 = simple $ ""


--- B81: '  <Xt>, [<Xn|SP>, <Xm>{, LSL <amount>}]'
--- LDRSB_64BL_ldst_regoff        ldrsb_reg.xml

type Logical_B81 = '[]
type Binary_B81  = '[]

decode_B81 :: Fn Logical_B81 a -> FnW Binary_B81 (Decode a)
decode_B81 f = return f

encode_B81 :: FnW Binary_B81 a -> Fn Logical_B81 (Encode a)
encode_B81 f = return f

parse_B81 :: Fn Logical_B81 a -> Parser a
parse_B81 f = ws >> return f

show_B81 :: Fn Logical_B81 (String, String)
show_B81 = simple $ ""


--- B82: ' (<prfop>|#<imm5>), [<Xn|SP>{, #<simm>}]'
--- PRFUM_P_ldst_unscaled         prfum.xml

type Logical_B82 = '[]
type Binary_B82  = '[]

decode_B82 :: Fn Logical_B82 a -> FnW Binary_B82 (Decode a)
decode_B82 f = return f

encode_B82 :: FnW Binary_B82 a -> Fn Logical_B82 (Encode a)
encode_B82 f = return f

parse_B82 :: Fn Logical_B82 a -> Parser a
parse_B82 f = ws >> return f

show_B82 :: Fn Logical_B82 (String, String)
show_B82 = simple $ ""


--- B83: '  (<prfop>|#<imm5>), [<Xn|SP>{, #<pimm>}]'
--- PRFM_P_ldst_pos               prfm_imm.xml

type Logical_B83 = '[]
type Binary_B83  = '[]

decode_B83 :: Fn Logical_B83 a -> FnW Binary_B83 (Decode a)
decode_B83 f = return f

encode_B83 :: FnW Binary_B83 a -> Fn Logical_B83 (Encode a)
encode_B83 f = return f

parse_B83 :: Fn Logical_B83 a -> Parser a
parse_B83 f = ws >> return f

show_B83 :: Fn Logical_B83 (String, String)
show_B83 = simple $ ""


--- B84: '  <Wd>, <Wn|WSP>, <Wm>{, <extend> {#<amount>}}'
--- ADDS_32S_addsub_ext           adds_addsub_ext.xml
--- SUBS_32S_addsub_ext           subs_addsub_ext.xml

type Logical_B84 = '[]
type Binary_B84  = '[]

decode_B84 :: Fn Logical_B84 a -> FnW Binary_B84 (Decode a)
decode_B84 f = return f

encode_B84 :: FnW Binary_B84 a -> Fn Logical_B84 (Encode a)
encode_B84 f = return f

parse_B84 :: Fn Logical_B84 a -> Parser a
parse_B84 f = ws >> return f

show_B84 :: Fn Logical_B84 (String, String)
show_B84 = simple $ ""


--- B85: '  <Xd>, <Xn|SP>, <R><m>{, <extend> {#<amount>}}'
--- ADDS_64S_addsub_ext           adds_addsub_ext.xml
--- SUBS_64S_addsub_ext           subs_addsub_ext.xml

type Logical_B85 = '[]
type Binary_B85  = '[]

decode_B85 :: Fn Logical_B85 a -> FnW Binary_B85 (Decode a)
decode_B85 f = return f

encode_B85 :: FnW Binary_B85 a -> Fn Logical_B85 (Encode a)
encode_B85 f = return f

parse_B85 :: Fn Logical_B85 a -> Parser a
parse_B85 f = ws >> return f

show_B85 :: Fn Logical_B85 (String, String)
show_B85 = simple $ ""


--- B86: '  <Ws>, <W(s+1)>, <Wt>, <W(t+1)>, [<Xn|SP>{,#0}]'
--- CASP_CP32_ldstexcl            casp.xml
--- CASPA_CP32_ldstexcl           casp.xml
--- CASPAL_CP32_ldstexcl          casp.xml
--- CASPL_CP32_ldstexcl           casp.xml

type Logical_B86 = '[]
type Binary_B86  = '[]

decode_B86 :: Fn Logical_B86 a -> FnW Binary_B86 (Decode a)
decode_B86 f = return f

encode_B86 :: FnW Binary_B86 a -> Fn Logical_B86 (Encode a)
encode_B86 f = return f

parse_B86 :: Fn Logical_B86 a -> Parser a
parse_B86 f = ws >> return f

show_B86 :: Fn Logical_B86 (String, String)
show_B86 = simple $ ""


--- B87: '  <Xs>, <X(s+1)>, <Xt>, <X(t+1)>, [<Xn|SP>{,#0}]'
--- CASP_CP64_ldstexcl            casp.xml
--- CASPA_CP64_ldstexcl           casp.xml
--- CASPAL_CP64_ldstexcl          casp.xml
--- CASPL_CP64_ldstexcl           casp.xml

type Logical_B87 = '[]
type Binary_B87  = '[]

decode_B87 :: Fn Logical_B87 a -> FnW Binary_B87 (Decode a)
decode_B87 f = return f

encode_B87 :: FnW Binary_B87 a -> Fn Logical_B87 (Encode a)
encode_B87 f = return f

parse_B87 :: Fn Logical_B87 a -> Parser a
parse_B87 f = ws >> return f

show_B87 :: Fn Logical_B87 (String, String)
show_B87 = simple $ ""


--- B88: '  (<systemreg>|S<op0>_<op1>_<Cn>_<Cm>_<op2>), <Xt>'
--- MSR_SR_system                 msr_reg.xml

type Logical_B88 = '[]
type Binary_B88  = '[]

decode_B88 :: Fn Logical_B88 a -> FnW Binary_B88 (Decode a)
decode_B88 f = return f

encode_B88 :: FnW Binary_B88 a -> Fn Logical_B88 (Encode a)
encode_B88 f = return f

parse_B88 :: Fn Logical_B88 a -> Parser a
parse_B88 f = ws >> return f

show_B88 :: Fn Logical_B88 (String, String)
show_B88 = simple $ ""


--- B89: '  <Wd|WSP>, <Wn|WSP>, <Wm>{, <extend> {#<amount>}}'
--- ADD_32_addsub_ext             add_addsub_ext.xml
--- SUB_32_addsub_ext             sub_addsub_ext.xml

type Logical_B89 = '[]
type Binary_B89  = '[]

decode_B89 :: Fn Logical_B89 a -> FnW Binary_B89 (Decode a)
decode_B89 f = return f

encode_B89 :: FnW Binary_B89 a -> Fn Logical_B89 (Encode a)
encode_B89 f = return f

parse_B89 :: Fn Logical_B89 a -> Parser a
parse_B89 f = ws >> return f

show_B89 :: Fn Logical_B89 (String, String)
show_B89 = simple $ ""


--- B90: '  <Xd|SP>, <Xn|SP>, <R><m>{, <extend> {#<amount>}}'
--- ADD_64_addsub_ext             add_addsub_ext.xml
--- SUB_64_addsub_ext             sub_addsub_ext.xml

type Logical_B90 = '[]
type Binary_B90  = '[]

decode_B90 :: Fn Logical_B90 a -> FnW Binary_B90 (Decode a)
decode_B90 f = return f

encode_B90 :: FnW Binary_B90 a -> Fn Logical_B90 (Encode a)
encode_B90 f = return f

parse_B90 :: Fn Logical_B90 a -> Parser a
parse_B90 f = ws >> return f

show_B90 :: Fn Logical_B90 (String, String)
show_B90 = simple $ ""


--- B91: '  <Xt>, (<systemreg>|S<op0>_<op1>_<Cn>_<Cm>_<op2>)'
--- MRS_RS_system                 mrs.xml

type Logical_B91 = '[]
type Binary_B91  = '[]

decode_B91 :: Fn Logical_B91 a -> FnW Binary_B91 (Decode a)
decode_B91 f = return f

encode_B91 :: FnW Binary_B91 a -> Fn Logical_B91 (Encode a)
encode_B91 f = return f

parse_B91 :: Fn Logical_B91 a -> Parser a
parse_B91 f = ws >> return f

show_B91 :: Fn Logical_B91 (String, String)
show_B91 = simple $ ""


--- B92: '  <Wt>, [<Xn|SP>, (<Wm>|<Xm>), <extend> {<amount>}]'
--- LDRB_32B_ldst_regoff          ldrb_reg.xml
--- LDRSB_32B_ldst_regoff         ldrsb_reg.xml
--- STRB_32B_ldst_regoff          strb_reg.xml

type Logical_B92 = '[]
type Binary_B92  = '[]

decode_B92 :: Fn Logical_B92 a -> FnW Binary_B92 (Decode a)
decode_B92 f = return f

encode_B92 :: FnW Binary_B92 a -> Fn Logical_B92 (Encode a)
encode_B92 f = return f

parse_B92 :: Fn Logical_B92 a -> Parser a
parse_B92 f = ws >> return f

show_B92 :: Fn Logical_B92 (String, String)
show_B92 = simple $ ""


--- B93: '  <Xt>, [<Xn|SP>, (<Wm>|<Xm>), <extend> {<amount>}]'
--- LDRSB_64B_ldst_regoff         ldrsb_reg.xml

type Logical_B93 = '[]
type Binary_B93  = '[]

decode_B93 :: Fn Logical_B93 a -> FnW Binary_B93 (Decode a)
decode_B93 f = return f

encode_B93 :: FnW Binary_B93 a -> Fn Logical_B93 (Encode a)
encode_B93 f = return f

parse_B93 :: Fn Logical_B93 a -> Parser a
parse_B93 f = ws >> return f

show_B93 :: Fn Logical_B93 (String, String)
show_B93 = simple $ ""


--- B94: '  <Wt>, [<Xn|SP>, (<Wm>|<Xm>){, <extend> {<amount>}}]'
--- LDR_32_ldst_regoff            ldr_reg_gen.xml
--- LDRH_32_ldst_regoff           ldrh_reg.xml
--- LDRSH_32_ldst_regoff          ldrsh_reg.xml
--- STR_32_ldst_regoff            str_reg_gen.xml
--- STRH_32_ldst_regoff           strh_reg.xml

type Logical_B94 = '[]
type Binary_B94  = '[]

decode_B94 :: Fn Logical_B94 a -> FnW Binary_B94 (Decode a)
decode_B94 f = return f

encode_B94 :: FnW Binary_B94 a -> Fn Logical_B94 (Encode a)
encode_B94 f = return f

parse_B94 :: Fn Logical_B94 a -> Parser a
parse_B94 f = ws >> return f

show_B94 :: Fn Logical_B94 (String, String)
show_B94 = simple $ ""


--- B95: '  <Xt>, [<Xn|SP>, (<Wm>|<Xm>){, <extend> {<amount>}}]'
--- LDR_64_ldst_regoff            ldr_reg_gen.xml
--- LDRSH_64_ldst_regoff          ldrsh_reg.xml
--- LDRSW_64_ldst_regoff          ldrsw_reg.xml
--- STR_64_ldst_regoff            str_reg_gen.xml

type Logical_B95 = '[]
type Binary_B95  = '[]

decode_B95 :: Fn Logical_B95 a -> FnW Binary_B95 (Decode a)
decode_B95 f = return f

encode_B95 :: FnW Binary_B95 a -> Fn Logical_B95 (Encode a)
encode_B95 f = return f

parse_B95 :: Fn Logical_B95 a -> Parser a
parse_B95 f = ws >> return f

show_B95 :: Fn Logical_B95 (String, String)
show_B95 = simple $ ""


--- B96: '  (<prfop>|#<imm5>), [<Xn|SP>, (<Wm>|<Xm>){, <extend> {<amount>}}]'
--- PRFM_P_ldst_regoff            prfm_reg.xml

type Logical_B96 = '[]
type Binary_B96  = '[]

decode_B96 :: Fn Logical_B96 a -> FnW Binary_B96 (Decode a)
decode_B96 f = return f

encode_B96 :: FnW Binary_B96 a -> Fn Logical_B96 (Encode a)
encode_B96 f = return f

parse_B96 :: Fn Logical_B96 a -> Parser a
parse_B96 f = ws >> return f

show_B96 :: Fn Logical_B96 (String, String)
show_B96 = simple $ ""

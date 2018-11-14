--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: SDRAM_synthesis.vhd
-- /___/   /\     Timestamp: Mon Oct 01 15:15:23 2018
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm SDRAM -w -dir netgen/synthesis -ofmt vhdl -sim SDRAM.ngc SDRAM_synthesis.vhd 
-- Device	: xc3s400-5-ft256
-- Input file	: SDRAM.ngc
-- Output file	: \\mac\home\Desktop\DesignPJ1\SDRAMtest\netgen\synthesis\SDRAM_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: SDRAM
-- Xilinx	: C:\Xilinx\14.7\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity SDRAM is
  port (
    CLK : in STD_LOGIC := 'X'; 
    PWR : in STD_LOGIC := 'X'; 
    RamCLK : out STD_LOGIC; 
    BTN : in STD_LOGIC := 'X'; 
    PWAIT : out STD_LOGIC; 
    RamUB : out STD_LOGIC; 
    RamCRE : out STD_LOGIC; 
    DSTB : in STD_LOGIC := 'X'; 
    ASTB : in STD_LOGIC := 'X'; 
    FlashCS : out STD_LOGIC; 
    MemOE : out STD_LOGIC; 
    RamWAIT : in STD_LOGIC := 'X'; 
    MemWR : out STD_LOGIC; 
    RamADV : out STD_LOGIC; 
    RamCS : out STD_LOGIC; 
    FlashRP : out STD_LOGIC; 
    RamLB : out STD_LOGIC; 
    FlashStSts : in STD_LOGIC := 'X'; 
    PDATA : inout STD_LOGIC_VECTOR ( 7 downto 0 ); 
    MemDB : inout STD_LOGIC_VECTOR ( 15 downto 0 ); 
    MemAdr : out STD_LOGIC_VECTOR ( 23 downto 1 ) 
  );
end SDRAM;

architecture Structure of SDRAM is
  signal ASTB_IBUF_1 : STD_LOGIC; 
  signal BTN_IBUF_3 : STD_LOGIC; 
  signal CLK_BUFGP_5 : STD_LOGIC; 
  signal DSTB_IBUF_7 : STD_LOGIC; 
  signal N0 : STD_LOGIC; 
  signal N01 : STD_LOGIC; 
  signal N02 : STD_LOGIC; 
  signal N1 : STD_LOGIC; 
  signal N116 : STD_LOGIC; 
  signal N12 : STD_LOGIC; 
  signal N120 : STD_LOGIC; 
  signal N121 : STD_LOGIC; 
  signal N123 : STD_LOGIC; 
  signal N125 : STD_LOGIC; 
  signal N13 : STD_LOGIC; 
  signal N130 : STD_LOGIC; 
  signal N131 : STD_LOGIC; 
  signal N132 : STD_LOGIC; 
  signal N136 : STD_LOGIC; 
  signal N14 : STD_LOGIC; 
  signal N141 : STD_LOGIC; 
  signal N143 : STD_LOGIC; 
  signal N145 : STD_LOGIC; 
  signal N147 : STD_LOGIC; 
  signal N15 : STD_LOGIC; 
  signal N150 : STD_LOGIC; 
  signal N151 : STD_LOGIC; 
  signal N152 : STD_LOGIC; 
  signal N154 : STD_LOGIC; 
  signal N156 : STD_LOGIC; 
  signal N158 : STD_LOGIC; 
  signal N160 : STD_LOGIC; 
  signal N162 : STD_LOGIC; 
  signal N164 : STD_LOGIC; 
  signal N165 : STD_LOGIC; 
  signal N167 : STD_LOGIC; 
  signal N169 : STD_LOGIC; 
  signal N17 : STD_LOGIC; 
  signal N171 : STD_LOGIC; 
  signal N1711 : STD_LOGIC; 
  signal N172 : STD_LOGIC; 
  signal N173 : STD_LOGIC; 
  signal N174 : STD_LOGIC; 
  signal N177 : STD_LOGIC; 
  signal N178 : STD_LOGIC; 
  signal N179 : STD_LOGIC; 
  signal N180 : STD_LOGIC; 
  signal N181 : STD_LOGIC; 
  signal N182 : STD_LOGIC; 
  signal N183 : STD_LOGIC; 
  signal N184 : STD_LOGIC; 
  signal N185 : STD_LOGIC; 
  signal N187 : STD_LOGIC; 
  signal N189 : STD_LOGIC; 
  signal N19 : STD_LOGIC; 
  signal N191 : STD_LOGIC; 
  signal N1911 : STD_LOGIC; 
  signal N193 : STD_LOGIC; 
  signal N195 : STD_LOGIC; 
  signal N197 : STD_LOGIC; 
  signal N199 : STD_LOGIC; 
  signal N2 : STD_LOGIC; 
  signal N201 : STD_LOGIC; 
  signal N203 : STD_LOGIC; 
  signal N205 : STD_LOGIC; 
  signal N207 : STD_LOGIC; 
  signal N209 : STD_LOGIC; 
  signal N21 : STD_LOGIC; 
  signal N211 : STD_LOGIC; 
  signal N213 : STD_LOGIC; 
  signal N215 : STD_LOGIC; 
  signal N217 : STD_LOGIC; 
  signal N22 : STD_LOGIC; 
  signal N221 : STD_LOGIC; 
  signal N222 : STD_LOGIC; 
  signal N223 : STD_LOGIC; 
  signal N224 : STD_LOGIC; 
  signal N225 : STD_LOGIC; 
  signal N226 : STD_LOGIC; 
  signal N227 : STD_LOGIC; 
  signal N228 : STD_LOGIC; 
  signal N229 : STD_LOGIC; 
  signal N230 : STD_LOGIC; 
  signal N231 : STD_LOGIC; 
  signal N232 : STD_LOGIC; 
  signal N233 : STD_LOGIC; 
  signal N234 : STD_LOGIC; 
  signal N235 : STD_LOGIC; 
  signal N236 : STD_LOGIC; 
  signal N237 : STD_LOGIC; 
  signal N238 : STD_LOGIC; 
  signal N239 : STD_LOGIC; 
  signal N240 : STD_LOGIC; 
  signal N241 : STD_LOGIC; 
  signal N242 : STD_LOGIC; 
  signal N243 : STD_LOGIC; 
  signal N244 : STD_LOGIC; 
  signal N245 : STD_LOGIC; 
  signal N246 : STD_LOGIC; 
  signal N247 : STD_LOGIC; 
  signal N248 : STD_LOGIC; 
  signal N249 : STD_LOGIC; 
  signal N250 : STD_LOGIC; 
  signal N29 : STD_LOGIC; 
  signal N33 : STD_LOGIC; 
  signal N40 : STD_LOGIC; 
  signal N401 : STD_LOGIC; 
  signal N411 : STD_LOGIC; 
  signal N42 : STD_LOGIC; 
  signal N44 : STD_LOGIC; 
  signal N46 : STD_LOGIC; 
  signal N48 : STD_LOGIC; 
  signal N50 : STD_LOGIC; 
  signal N52 : STD_LOGIC; 
  signal N54 : STD_LOGIC; 
  signal N56 : STD_LOGIC; 
  signal N58 : STD_LOGIC; 
  signal N60 : STD_LOGIC; 
  signal N62 : STD_LOGIC; 
  signal N64 : STD_LOGIC; 
  signal N66 : STD_LOGIC; 
  signal N68 : STD_LOGIC; 
  signal N69 : STD_LOGIC; 
  signal N7 : STD_LOGIC; 
  signal N70 : STD_LOGIC; 
  signal N71 : STD_LOGIC; 
  signal N72 : STD_LOGIC; 
  signal N73 : STD_LOGIC; 
  signal N74 : STD_LOGIC; 
  signal N75 : STD_LOGIC; 
  signal N76 : STD_LOGIC; 
  signal N77 : STD_LOGIC; 
  signal N78 : STD_LOGIC; 
  signal N79 : STD_LOGIC; 
  signal N80 : STD_LOGIC; 
  signal N81 : STD_LOGIC; 
  signal N82 : STD_LOGIC; 
  signal N83 : STD_LOGIC; 
  signal N84 : STD_LOGIC; 
  signal N85 : STD_LOGIC; 
  signal N86 : STD_LOGIC; 
  signal N87 : STD_LOGIC; 
  signal N88 : STD_LOGIC; 
  signal N89 : STD_LOGIC; 
  signal N9 : STD_LOGIC; 
  signal N90 : STD_LOGIC; 
  signal N91 : STD_LOGIC; 
  signal PWAIT_OBUF_203 : STD_LOGIC; 
  signal PWR_IBUF_205 : STD_LOGIC; 
  signal eppctroller_XLXN_1266 : STD_LOGIC; 
  signal eppctroller_XLXN_1560 : STD_LOGIC; 
  signal eppctroller_instEppCtrl_EppRst_inv : STD_LOGIC; 
  signal eppctroller_instEppCtrl_busEppInternal_0_33_216 : STD_LOGIC; 
  signal eppctroller_instEppCtrl_busEppInternal_0_36_217 : STD_LOGIC; 
  signal eppctroller_instEppCtrl_busEppInternal_0_4_218 : STD_LOGIC; 
  signal eppctroller_instEppCtrl_busEppInternal_0_47_219 : STD_LOGIC; 
  signal eppctroller_instEppCtrl_busEppInternal_0_9_220 : STD_LOGIC; 
  signal eppctroller_instEppCtrl_busEppInternal_1_33_222 : STD_LOGIC; 
  signal eppctroller_instEppCtrl_busEppInternal_1_36_223 : STD_LOGIC; 
  signal eppctroller_instEppCtrl_busEppInternal_1_4_224 : STD_LOGIC; 
  signal eppctroller_instEppCtrl_busEppInternal_1_47_225 : STD_LOGIC; 
  signal eppctroller_instEppCtrl_busEppInternal_1_9_226 : STD_LOGIC; 
  signal eppctroller_instEppCtrl_busEppInternal_2_33_228 : STD_LOGIC; 
  signal eppctroller_instEppCtrl_busEppInternal_2_36_229 : STD_LOGIC; 
  signal eppctroller_instEppCtrl_busEppInternal_2_4_230 : STD_LOGIC; 
  signal eppctroller_instEppCtrl_busEppInternal_2_47_231 : STD_LOGIC; 
  signal eppctroller_instEppCtrl_busEppInternal_2_9_232 : STD_LOGIC; 
  signal eppctroller_instEppCtrl_busEppInternal_3_33_234 : STD_LOGIC; 
  signal eppctroller_instEppCtrl_busEppInternal_3_36_235 : STD_LOGIC; 
  signal eppctroller_instEppCtrl_busEppInternal_3_4_236 : STD_LOGIC; 
  signal eppctroller_instEppCtrl_busEppInternal_3_47_237 : STD_LOGIC; 
  signal eppctroller_instEppCtrl_busEppInternal_3_9_238 : STD_LOGIC; 
  signal eppctroller_instEppCtrl_busEppInternal_4_33_240 : STD_LOGIC; 
  signal eppctroller_instEppCtrl_busEppInternal_4_36_241 : STD_LOGIC; 
  signal eppctroller_instEppCtrl_busEppInternal_4_4_242 : STD_LOGIC; 
  signal eppctroller_instEppCtrl_busEppInternal_4_47_243 : STD_LOGIC; 
  signal eppctroller_instEppCtrl_busEppInternal_4_9_244 : STD_LOGIC; 
  signal eppctroller_instEppCtrl_busEppInternal_5_33_246 : STD_LOGIC; 
  signal eppctroller_instEppCtrl_busEppInternal_5_36_247 : STD_LOGIC; 
  signal eppctroller_instEppCtrl_busEppInternal_5_4_248 : STD_LOGIC; 
  signal eppctroller_instEppCtrl_busEppInternal_5_47_249 : STD_LOGIC; 
  signal eppctroller_instEppCtrl_busEppInternal_5_9_250 : STD_LOGIC; 
  signal eppctroller_instEppCtrl_busEppInternal_6_33_252 : STD_LOGIC; 
  signal eppctroller_instEppCtrl_busEppInternal_6_36_253 : STD_LOGIC; 
  signal eppctroller_instEppCtrl_busEppInternal_6_4_254 : STD_LOGIC; 
  signal eppctroller_instEppCtrl_busEppInternal_6_47_255 : STD_LOGIC; 
  signal eppctroller_instEppCtrl_busEppInternal_6_9_256 : STD_LOGIC; 
  signal eppctroller_instEppCtrl_busEppInternal_7_33_258 : STD_LOGIC; 
  signal eppctroller_instEppCtrl_busEppInternal_7_36_259 : STD_LOGIC; 
  signal eppctroller_instEppCtrl_busEppInternal_7_4_260 : STD_LOGIC; 
  signal eppctroller_instEppCtrl_busEppInternal_7_47_261 : STD_LOGIC; 
  signal eppctroller_instEppCtrl_busEppInternal_7_9_262 : STD_LOGIC; 
  signal eppctroller_instEppCtrl_ctlEppAwr : STD_LOGIC; 
  signal eppctroller_instEppCtrl_ctlEppRdCycleOut_264 : STD_LOGIC; 
  signal eppctroller_instEppCtrl_ctlEppRdCycleOut_inv : STD_LOGIC; 
  signal eppctroller_instEppCtrl_ctlEppRdCycleOut_mux0000_266 : STD_LOGIC; 
  signal eppctroller_instNexysOnBoardMemCtrl_DelayCnt_not0001_inv : STD_LOGIC; 
  signal eppctroller_instNexysOnBoardMemCtrl_EppRdDataOut_and0000 : STD_LOGIC; 
  signal eppctroller_instNexysOnBoardMemCtrl_EppRdDataOut_and0001 : STD_LOGIC; 
  signal eppctroller_instNexysOnBoardMemCtrl_EppRdDataOut_and0002 : STD_LOGIC; 
  signal eppctroller_instNexysOnBoardMemCtrl_EppRdDataOut_and0003 : STD_LOGIC; 
  signal eppctroller_instNexysOnBoardMemCtrl_FlashCS_mux0000 : STD_LOGIC; 
  signal eppctroller_instNexysOnBoardMemCtrl_FlashCS_mux000014_292 : STD_LOGIC; 
  signal eppctroller_instNexysOnBoardMemCtrl_Madd_regMemAdr_15_8_add0000_cy_3_Q : STD_LOGIC; 
  signal eppctroller_instNexysOnBoardMemCtrl_Madd_regMemAdr_15_8_add0000_cy_5_Q : STD_LOGIC; 
  signal eppctroller_instNexysOnBoardMemCtrl_Madd_regMemAdr_23_16_add0000_cy_3_Q : STD_LOGIC; 
  signal eppctroller_instNexysOnBoardMemCtrl_Madd_regMemAdr_23_16_add0000_cy_5_Q : STD_LOGIC; 
  signal eppctroller_instNexysOnBoardMemCtrl_Madd_regMemAdr_7_0_add0000_cy_3_Q : STD_LOGIC; 
  signal eppctroller_instNexysOnBoardMemCtrl_Madd_regMemAdr_7_0_add0000_cy_5_Q : STD_LOGIC; 
  signal eppctroller_instNexysOnBoardMemCtrl_MemDB_and0000_inv : STD_LOGIC; 
  signal eppctroller_instNexysOnBoardMemCtrl_MemDB_and0000_inv13_300 : STD_LOGIC; 
  signal eppctroller_instNexysOnBoardMemCtrl_MemDB_and0000_inv18_301 : STD_LOGIC; 
  signal eppctroller_instNexysOnBoardMemCtrl_MemOE_mux0000_302 : STD_LOGIC; 
  signal eppctroller_instNexysOnBoardMemCtrl_MemWR_mux0000_303 : STD_LOGIC; 
  signal eppctroller_instNexysOnBoardMemCtrl_Mmux_stMsmNext_5_f51 : STD_LOGIC; 
  signal eppctroller_instNexysOnBoardMemCtrl_Mmux_stMsmNext_6_305 : STD_LOGIC; 
  signal eppctroller_instNexysOnBoardMemCtrl_Mmux_stMsmNext_61_306 : STD_LOGIC; 
  signal eppctroller_instNexysOnBoardMemCtrl_Mmux_stMsmNext_6_f5_307 : STD_LOGIC; 
  signal eppctroller_instNexysOnBoardMemCtrl_Mmux_stMsmNext_71_308 : STD_LOGIC; 
  signal eppctroller_instNexysOnBoardMemCtrl_Mmux_stMsmNext_72_309 : STD_LOGIC; 
  signal eppctroller_instNexysOnBoardMemCtrl_Mmux_stMsmNext_8_310 : STD_LOGIC; 
  signal eppctroller_instNexysOnBoardMemCtrl_Mmux_stMsmNext_81_311 : STD_LOGIC; 
  signal eppctroller_instNexysOnBoardMemCtrl_Mmux_stMsmNext_9_312 : STD_LOGIC; 
  signal eppctroller_instNexysOnBoardMemCtrl_RamCS_mux0000_313 : STD_LOGIC; 
  signal eppctroller_instNexysOnBoardMemCtrl_RamLB_mux0000 : STD_LOGIC; 
  signal eppctroller_instNexysOnBoardMemCtrl_RamUB_mux0000 : STD_LOGIC; 
  signal eppctroller_instNexysOnBoardMemCtrl_busMemOut_and0000 : STD_LOGIC; 
  signal eppctroller_instNexysOnBoardMemCtrl_carryoutL : STD_LOGIC; 
  signal eppctroller_instNexysOnBoardMemCtrl_carryoutL_cmp_eq00009_339 : STD_LOGIC; 
  signal eppctroller_instNexysOnBoardMemCtrl_ctlMsmAdrInc : STD_LOGIC; 
  signal eppctroller_instNexysOnBoardMemCtrl_ctlMsmWrCmd : STD_LOGIC; 
  signal eppctroller_instNexysOnBoardMemCtrl_flagBlindCycle_and0002 : STD_LOGIC; 
  signal eppctroller_instNexysOnBoardMemCtrl_flagFlashAutoWr_cmp_eq0000 : STD_LOGIC; 
  signal eppctroller_instNexysOnBoardMemCtrl_flagMsmCycle_and0000 : STD_LOGIC; 
  signal eppctroller_instNexysOnBoardMemCtrl_regMemAdr_0_1_346 : STD_LOGIC; 
  signal eppctroller_instNexysOnBoardMemCtrl_regMemAdr_0_mux0000 : STD_LOGIC; 
  signal eppctroller_instNexysOnBoardMemCtrl_regMemAdr_0_not0001_348 : STD_LOGIC; 
  signal eppctroller_instNexysOnBoardMemCtrl_regMemAdr_10_mux0000_351 : STD_LOGIC; 
  signal eppctroller_instNexysOnBoardMemCtrl_regMemAdr_11_mux0000_353 : STD_LOGIC; 
  signal eppctroller_instNexysOnBoardMemCtrl_regMemAdr_12_mux0000 : STD_LOGIC; 
  signal eppctroller_instNexysOnBoardMemCtrl_regMemAdr_13_mux0000_357 : STD_LOGIC; 
  signal eppctroller_instNexysOnBoardMemCtrl_regMemAdr_14_mux0000 : STD_LOGIC; 
  signal eppctroller_instNexysOnBoardMemCtrl_regMemAdr_15_mux0000_361 : STD_LOGIC; 
  signal eppctroller_instNexysOnBoardMemCtrl_regMemAdr_16_mux0000 : STD_LOGIC; 
  signal eppctroller_instNexysOnBoardMemCtrl_regMemAdr_17_mux0000 : STD_LOGIC; 
  signal eppctroller_instNexysOnBoardMemCtrl_regMemAdr_18_mux0000_367 : STD_LOGIC; 
  signal eppctroller_instNexysOnBoardMemCtrl_regMemAdr_19_mux0000_369 : STD_LOGIC; 
  signal eppctroller_instNexysOnBoardMemCtrl_regMemAdr_1_mux0000 : STD_LOGIC; 
  signal eppctroller_instNexysOnBoardMemCtrl_regMemAdr_20_mux0000 : STD_LOGIC; 
  signal eppctroller_instNexysOnBoardMemCtrl_regMemAdr_21_mux0000_375 : STD_LOGIC; 
  signal eppctroller_instNexysOnBoardMemCtrl_regMemAdr_22_mux0000 : STD_LOGIC; 
  signal eppctroller_instNexysOnBoardMemCtrl_regMemAdr_23_and0001 : STD_LOGIC; 
  signal eppctroller_instNexysOnBoardMemCtrl_regMemAdr_23_and000113_380 : STD_LOGIC; 
  signal eppctroller_instNexysOnBoardMemCtrl_regMemAdr_23_mux0000_381 : STD_LOGIC; 
  signal eppctroller_instNexysOnBoardMemCtrl_regMemAdr_23_not0001_382 : STD_LOGIC; 
  signal eppctroller_instNexysOnBoardMemCtrl_regMemAdr_2_mux0000_383 : STD_LOGIC; 
  signal eppctroller_instNexysOnBoardMemCtrl_regMemAdr_3_mux0000_385 : STD_LOGIC; 
  signal eppctroller_instNexysOnBoardMemCtrl_regMemAdr_4_mux0000 : STD_LOGIC; 
  signal eppctroller_instNexysOnBoardMemCtrl_regMemAdr_5_mux0000_389 : STD_LOGIC; 
  signal eppctroller_instNexysOnBoardMemCtrl_regMemAdr_6_mux0000 : STD_LOGIC; 
  signal eppctroller_instNexysOnBoardMemCtrl_regMemAdr_7_mux0000_393 : STD_LOGIC; 
  signal eppctroller_instNexysOnBoardMemCtrl_regMemAdr_8_and0001 : STD_LOGIC; 
  signal eppctroller_instNexysOnBoardMemCtrl_regMemAdr_8_mux0000 : STD_LOGIC; 
  signal eppctroller_instNexysOnBoardMemCtrl_regMemAdr_8_not0001_397 : STD_LOGIC; 
  signal eppctroller_instNexysOnBoardMemCtrl_regMemAdr_9_mux0000 : STD_LOGIC; 
  signal eppctroller_instNexysOnBoardMemCtrl_regMemCtl_4_inv : STD_LOGIC; 
  signal eppctroller_instNexysOnBoardMemCtrl_regMemCtl_and0000 : STD_LOGIC; 
  signal eppctroller_instNexysOnBoardMemCtrl_regMemRdDataAux_not0001 : STD_LOGIC; 
  signal eppctroller_instNexysOnBoardMemCtrl_regMemRdData_cmp_eq0000 : STD_LOGIC; 
  signal eppctroller_instNexysOnBoardMemCtrl_regMemRdData_mux0000_0_122_428 : STD_LOGIC; 
  signal eppctroller_instNexysOnBoardMemCtrl_regMemRdData_mux0000_0_4_429 : STD_LOGIC; 
  signal eppctroller_instNexysOnBoardMemCtrl_regMemRdData_mux0000_0_9_430 : STD_LOGIC; 
  signal eppctroller_instNexysOnBoardMemCtrl_regMemRdData_mux0000_1_4_431 : STD_LOGIC; 
  signal eppctroller_instNexysOnBoardMemCtrl_regMemRdData_mux0000_1_9_432 : STD_LOGIC; 
  signal eppctroller_instNexysOnBoardMemCtrl_regMemRdData_mux0000_2_4_433 : STD_LOGIC; 
  signal eppctroller_instNexysOnBoardMemCtrl_regMemRdData_mux0000_2_9_434 : STD_LOGIC; 
  signal eppctroller_instNexysOnBoardMemCtrl_regMemRdData_mux0000_3_4_435 : STD_LOGIC; 
  signal eppctroller_instNexysOnBoardMemCtrl_regMemRdData_mux0000_3_9_436 : STD_LOGIC; 
  signal eppctroller_instNexysOnBoardMemCtrl_regMemRdData_mux0000_4_4_437 : STD_LOGIC; 
  signal eppctroller_instNexysOnBoardMemCtrl_regMemRdData_mux0000_4_9_438 : STD_LOGIC; 
  signal eppctroller_instNexysOnBoardMemCtrl_regMemRdData_mux0000_5_4_439 : STD_LOGIC; 
  signal eppctroller_instNexysOnBoardMemCtrl_regMemRdData_mux0000_5_9_440 : STD_LOGIC; 
  signal eppctroller_instNexysOnBoardMemCtrl_regMemRdData_mux0000_6_4_441 : STD_LOGIC; 
  signal eppctroller_instNexysOnBoardMemCtrl_regMemRdData_mux0000_6_9_442 : STD_LOGIC; 
  signal eppctroller_instNexysOnBoardMemCtrl_regMemRdData_mux0000_7_4_443 : STD_LOGIC; 
  signal eppctroller_instNexysOnBoardMemCtrl_regMemRdData_mux0000_7_9_444 : STD_LOGIC; 
  signal eppctroller_instNexysOnBoardMemCtrl_regMemWrData_7_and0000 : STD_LOGIC; 
  signal eppctroller_instNexysOnBoardMemCtrl_regMemWrData_7_not0001 : STD_LOGIC; 
  signal eppctroller_instNexysOnBoardMemCtrl_regMemWrData_8_not0001 : STD_LOGIC; 
  signal eppctroller_instNexysOnBoardMemCtrl_stMsmCur_1_1 : STD_LOGIC; 
  signal eppctroller_instNexysOnBoardMemCtrl_stMsmCur_3_12_465 : STD_LOGIC; 
  signal eppctroller_instNexysOnBoardMemCtrl_stMsmCur_3_15_466 : STD_LOGIC; 
  signal eppctroller_instNexysOnBoardMemCtrl_stMsmNext_and0000 : STD_LOGIC; 
  signal eppctroller_instNexysOnBoardMemCtrl_stMsmNext_and0001 : STD_LOGIC; 
  signal eppctroller_instNexysOnBoardMemCtrl_stMsmNext_cmp_eq0000 : STD_LOGIC; 
  signal eppctroller_instNexysOnBoardMemCtrl_stMsmNext_cmp_eq0002 : STD_LOGIC; 
  signal eppctroller_instEppCtrl_busEppInternal : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal eppctroller_instEppCtrl_regEppAdrOut : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal eppctroller_instEppCtrl_stEppCur : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal eppctroller_instEppCtrl_stEppNext : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal eppctroller_instNexysOnBoardMemCtrl_DelayCnt : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal eppctroller_instNexysOnBoardMemCtrl_Result : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal eppctroller_instNexysOnBoardMemCtrl_busMemOut : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal eppctroller_instNexysOnBoardMemCtrl_regMemAdr : STD_LOGIC_VECTOR ( 23 downto 0 ); 
  signal eppctroller_instNexysOnBoardMemCtrl_regMemCtl : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal eppctroller_instNexysOnBoardMemCtrl_regMemRdDataAux : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal eppctroller_instNexysOnBoardMemCtrl_regMemRdData : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal eppctroller_instNexysOnBoardMemCtrl_regMemWrData : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal eppctroller_instNexysOnBoardMemCtrl_stMsmCur : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal eppctroller_instNexysOnBoardMemCtrl_stMsmNext : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal eppctroller_instNexysOnBoardMemCtrl_stMsmNext_mux0006 : STD_LOGIC_VECTOR ( 3 downto 3 ); 
begin
  XST_GND : GND
    port map (
      G => N0
    );
  XST_VCC : VCC
    port map (
      P => N1
    );
  eppctroller_instEppCtrl_regEppAdrOut_7 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_5,
      CE => eppctroller_instEppCtrl_ctlEppAwr,
      D => N68,
      Q => eppctroller_instEppCtrl_regEppAdrOut(7)
    );
  eppctroller_instEppCtrl_regEppAdrOut_6 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_5,
      CE => eppctroller_instEppCtrl_ctlEppAwr,
      D => N69,
      Q => eppctroller_instEppCtrl_regEppAdrOut(6)
    );
  eppctroller_instEppCtrl_regEppAdrOut_5 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_5,
      CE => eppctroller_instEppCtrl_ctlEppAwr,
      D => N70,
      Q => eppctroller_instEppCtrl_regEppAdrOut(5)
    );
  eppctroller_instEppCtrl_regEppAdrOut_4 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_5,
      CE => eppctroller_instEppCtrl_ctlEppAwr,
      D => N71,
      Q => eppctroller_instEppCtrl_regEppAdrOut(4)
    );
  eppctroller_instEppCtrl_regEppAdrOut_3 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_5,
      CE => eppctroller_instEppCtrl_ctlEppAwr,
      D => N72,
      Q => eppctroller_instEppCtrl_regEppAdrOut(3)
    );
  eppctroller_instEppCtrl_regEppAdrOut_2 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_5,
      CE => eppctroller_instEppCtrl_ctlEppAwr,
      D => N73,
      Q => eppctroller_instEppCtrl_regEppAdrOut(2)
    );
  eppctroller_instEppCtrl_regEppAdrOut_1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_5,
      CE => eppctroller_instEppCtrl_ctlEppAwr,
      D => N74,
      Q => eppctroller_instEppCtrl_regEppAdrOut(1)
    );
  eppctroller_instEppCtrl_regEppAdrOut_0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_5,
      CE => eppctroller_instEppCtrl_ctlEppAwr,
      D => N75,
      Q => eppctroller_instEppCtrl_regEppAdrOut(0)
    );
  eppctroller_instEppCtrl_stEppCur_2 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_5,
      D => eppctroller_instEppCtrl_stEppNext(2),
      R => eppctroller_instEppCtrl_EppRst_inv,
      Q => eppctroller_instEppCtrl_stEppCur(2)
    );
  eppctroller_instEppCtrl_stEppCur_1 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_5,
      D => eppctroller_instEppCtrl_stEppNext(1),
      R => eppctroller_instEppCtrl_EppRst_inv,
      Q => eppctroller_instEppCtrl_stEppCur(1)
    );
  eppctroller_instEppCtrl_stEppCur_0 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_5,
      D => eppctroller_instEppCtrl_stEppNext(0),
      R => eppctroller_instEppCtrl_EppRst_inv,
      Q => eppctroller_instEppCtrl_stEppCur(0)
    );
  eppctroller_instEppCtrl_ctlEppRdCycleOut : FD
    port map (
      C => CLK_BUFGP_5,
      D => eppctroller_instEppCtrl_ctlEppRdCycleOut_mux0000_266,
      Q => eppctroller_instEppCtrl_ctlEppRdCycleOut_264
    );
  eppctroller_instNexysOnBoardMemCtrl_Mmux_stMsmNext_6_f5 : MUXF5
    port map (
      I0 => eppctroller_instNexysOnBoardMemCtrl_Mmux_stMsmNext_8_310,
      I1 => eppctroller_instNexysOnBoardMemCtrl_Mmux_stMsmNext_71_308,
      S => eppctroller_instNexysOnBoardMemCtrl_stMsmCur(1),
      O => eppctroller_instNexysOnBoardMemCtrl_Mmux_stMsmNext_6_f5_307
    );
  eppctroller_instNexysOnBoardMemCtrl_Mmux_stMsmNext_61 : LUT4
    generic map(
      INIT => X"E545"
    )
    port map (
      I0 => eppctroller_instNexysOnBoardMemCtrl_stMsmCur(0),
      I1 => eppctroller_instNexysOnBoardMemCtrl_stMsmNext_and0001,
      I2 => eppctroller_instNexysOnBoardMemCtrl_stMsmCur(1),
      I3 => eppctroller_instNexysOnBoardMemCtrl_stMsmNext_cmp_eq0000,
      O => eppctroller_instNexysOnBoardMemCtrl_Mmux_stMsmNext_61_306
    );
  eppctroller_instNexysOnBoardMemCtrl_Mmux_stMsmNext_72 : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => eppctroller_instEppCtrl_ctlEppRdCycleOut_264,
      I1 => eppctroller_instNexysOnBoardMemCtrl_stMsmCur(0),
      I2 => eppctroller_instNexysOnBoardMemCtrl_stMsmCur(1),
      O => eppctroller_instNexysOnBoardMemCtrl_Mmux_stMsmNext_72_309
    );
  eppctroller_instNexysOnBoardMemCtrl_Mmux_stMsmNext_5_f5_0 : MUXF5
    port map (
      I0 => eppctroller_instNexysOnBoardMemCtrl_Mmux_stMsmNext_72_309,
      I1 => eppctroller_instNexysOnBoardMemCtrl_Mmux_stMsmNext_61_306,
      S => eppctroller_instNexysOnBoardMemCtrl_stMsmCur(2),
      O => eppctroller_instNexysOnBoardMemCtrl_Mmux_stMsmNext_5_f51
    );
  eppctroller_instNexysOnBoardMemCtrl_DelayCnt_4 : FDR
    port map (
      C => CLK_BUFGP_5,
      D => eppctroller_instNexysOnBoardMemCtrl_Result(4),
      R => eppctroller_instNexysOnBoardMemCtrl_DelayCnt_not0001_inv,
      Q => eppctroller_instNexysOnBoardMemCtrl_DelayCnt(4)
    );
  eppctroller_instNexysOnBoardMemCtrl_DelayCnt_3 : FDR
    port map (
      C => CLK_BUFGP_5,
      D => eppctroller_instNexysOnBoardMemCtrl_Result(3),
      R => eppctroller_instNexysOnBoardMemCtrl_DelayCnt_not0001_inv,
      Q => eppctroller_instNexysOnBoardMemCtrl_DelayCnt(3)
    );
  eppctroller_instNexysOnBoardMemCtrl_DelayCnt_2 : FDR
    port map (
      C => CLK_BUFGP_5,
      D => eppctroller_instNexysOnBoardMemCtrl_Result(2),
      R => eppctroller_instNexysOnBoardMemCtrl_DelayCnt_not0001_inv,
      Q => eppctroller_instNexysOnBoardMemCtrl_DelayCnt(2)
    );
  eppctroller_instNexysOnBoardMemCtrl_DelayCnt_1 : FDR
    port map (
      C => CLK_BUFGP_5,
      D => eppctroller_instNexysOnBoardMemCtrl_Result(1),
      R => eppctroller_instNexysOnBoardMemCtrl_DelayCnt_not0001_inv,
      Q => eppctroller_instNexysOnBoardMemCtrl_DelayCnt(1)
    );
  eppctroller_instNexysOnBoardMemCtrl_DelayCnt_0 : FDR
    port map (
      C => CLK_BUFGP_5,
      D => eppctroller_instNexysOnBoardMemCtrl_Result(0),
      R => eppctroller_instNexysOnBoardMemCtrl_DelayCnt_not0001_inv,
      Q => eppctroller_instNexysOnBoardMemCtrl_DelayCnt(0)
    );
  eppctroller_instNexysOnBoardMemCtrl_regMemRdDataAux_7 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_5,
      CE => eppctroller_instNexysOnBoardMemCtrl_regMemRdDataAux_not0001,
      D => N76,
      Q => eppctroller_instNexysOnBoardMemCtrl_regMemRdDataAux(7)
    );
  eppctroller_instNexysOnBoardMemCtrl_regMemRdDataAux_6 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_5,
      CE => eppctroller_instNexysOnBoardMemCtrl_regMemRdDataAux_not0001,
      D => N77,
      Q => eppctroller_instNexysOnBoardMemCtrl_regMemRdDataAux(6)
    );
  eppctroller_instNexysOnBoardMemCtrl_regMemRdDataAux_5 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_5,
      CE => eppctroller_instNexysOnBoardMemCtrl_regMemRdDataAux_not0001,
      D => N78,
      Q => eppctroller_instNexysOnBoardMemCtrl_regMemRdDataAux(5)
    );
  eppctroller_instNexysOnBoardMemCtrl_regMemRdDataAux_4 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_5,
      CE => eppctroller_instNexysOnBoardMemCtrl_regMemRdDataAux_not0001,
      D => N79,
      Q => eppctroller_instNexysOnBoardMemCtrl_regMemRdDataAux(4)
    );
  eppctroller_instNexysOnBoardMemCtrl_regMemRdDataAux_3 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_5,
      CE => eppctroller_instNexysOnBoardMemCtrl_regMemRdDataAux_not0001,
      D => N80,
      Q => eppctroller_instNexysOnBoardMemCtrl_regMemRdDataAux(3)
    );
  eppctroller_instNexysOnBoardMemCtrl_regMemRdDataAux_2 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_5,
      CE => eppctroller_instNexysOnBoardMemCtrl_regMemRdDataAux_not0001,
      D => N81,
      Q => eppctroller_instNexysOnBoardMemCtrl_regMemRdDataAux(2)
    );
  eppctroller_instNexysOnBoardMemCtrl_regMemRdDataAux_1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_5,
      CE => eppctroller_instNexysOnBoardMemCtrl_regMemRdDataAux_not0001,
      D => N82,
      Q => eppctroller_instNexysOnBoardMemCtrl_regMemRdDataAux(1)
    );
  eppctroller_instNexysOnBoardMemCtrl_regMemRdDataAux_0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_5,
      CE => eppctroller_instNexysOnBoardMemCtrl_regMemRdDataAux_not0001,
      D => N83,
      Q => eppctroller_instNexysOnBoardMemCtrl_regMemRdDataAux(0)
    );
  eppctroller_instNexysOnBoardMemCtrl_stMsmCur_3 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_5,
      D => eppctroller_instNexysOnBoardMemCtrl_stMsmNext(3),
      Q => eppctroller_instNexysOnBoardMemCtrl_stMsmCur(3)
    );
  eppctroller_instNexysOnBoardMemCtrl_stMsmCur_2 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_5,
      D => eppctroller_instNexysOnBoardMemCtrl_stMsmNext(2),
      Q => eppctroller_instNexysOnBoardMemCtrl_stMsmCur(2)
    );
  eppctroller_instNexysOnBoardMemCtrl_stMsmCur_1 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_5,
      D => eppctroller_instNexysOnBoardMemCtrl_stMsmNext(1),
      Q => eppctroller_instNexysOnBoardMemCtrl_stMsmCur(1)
    );
  eppctroller_instNexysOnBoardMemCtrl_stMsmCur_0 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_5,
      D => eppctroller_instNexysOnBoardMemCtrl_stMsmNext(0),
      Q => eppctroller_instNexysOnBoardMemCtrl_stMsmCur(0)
    );
  eppctroller_instNexysOnBoardMemCtrl_regMemAdr_17 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_5,
      CE => eppctroller_instNexysOnBoardMemCtrl_regMemAdr_23_not0001_382,
      D => eppctroller_instNexysOnBoardMemCtrl_regMemAdr_17_mux0000,
      Q => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(17)
    );
  eppctroller_instNexysOnBoardMemCtrl_regMemWrData_6 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_5,
      CE => eppctroller_instNexysOnBoardMemCtrl_regMemWrData_7_not0001,
      D => N69,
      Q => eppctroller_instNexysOnBoardMemCtrl_regMemWrData(6)
    );
  eppctroller_instNexysOnBoardMemCtrl_regMemAdr_22 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_5,
      CE => eppctroller_instNexysOnBoardMemCtrl_regMemAdr_23_not0001_382,
      D => eppctroller_instNexysOnBoardMemCtrl_regMemAdr_22_mux0000,
      Q => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(22)
    );
  eppctroller_instNexysOnBoardMemCtrl_regMemAdr_16 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_5,
      CE => eppctroller_instNexysOnBoardMemCtrl_regMemAdr_23_not0001_382,
      D => eppctroller_instNexysOnBoardMemCtrl_regMemAdr_16_mux0000,
      Q => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(16)
    );
  eppctroller_instNexysOnBoardMemCtrl_regMemWrData_5 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_5,
      CE => eppctroller_instNexysOnBoardMemCtrl_regMemWrData_7_not0001,
      D => N70,
      Q => eppctroller_instNexysOnBoardMemCtrl_regMemWrData(5)
    );
  eppctroller_instNexysOnBoardMemCtrl_regMemAdr_21 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_5,
      CE => eppctroller_instNexysOnBoardMemCtrl_regMemAdr_23_not0001_382,
      D => eppctroller_instNexysOnBoardMemCtrl_regMemAdr_21_mux0000_375,
      Q => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(21)
    );
  eppctroller_instNexysOnBoardMemCtrl_regMemAdr_20 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_5,
      CE => eppctroller_instNexysOnBoardMemCtrl_regMemAdr_23_not0001_382,
      D => eppctroller_instNexysOnBoardMemCtrl_regMemAdr_20_mux0000,
      Q => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(20)
    );
  eppctroller_instNexysOnBoardMemCtrl_regMemWrData_4 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_5,
      CE => eppctroller_instNexysOnBoardMemCtrl_regMemWrData_7_not0001,
      D => N71,
      Q => eppctroller_instNexysOnBoardMemCtrl_regMemWrData(4)
    );
  eppctroller_instNexysOnBoardMemCtrl_regMemAdr_15 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_5,
      CE => eppctroller_instNexysOnBoardMemCtrl_regMemAdr_8_not0001_397,
      D => eppctroller_instNexysOnBoardMemCtrl_regMemAdr_15_mux0000_361,
      Q => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(15)
    );
  eppctroller_instNexysOnBoardMemCtrl_regMemWrData_3 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_5,
      CE => eppctroller_instNexysOnBoardMemCtrl_regMemWrData_7_not0001,
      D => N72,
      Q => eppctroller_instNexysOnBoardMemCtrl_regMemWrData(3)
    );
  eppctroller_instNexysOnBoardMemCtrl_regMemAdr_14 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_5,
      CE => eppctroller_instNexysOnBoardMemCtrl_regMemAdr_8_not0001_397,
      D => eppctroller_instNexysOnBoardMemCtrl_regMemAdr_14_mux0000,
      Q => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(14)
    );
  eppctroller_instNexysOnBoardMemCtrl_regMemWrData_2 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_5,
      CE => eppctroller_instNexysOnBoardMemCtrl_regMemWrData_7_not0001,
      D => N73,
      Q => eppctroller_instNexysOnBoardMemCtrl_regMemWrData(2)
    );
  eppctroller_instNexysOnBoardMemCtrl_regMemAdr_13 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_5,
      CE => eppctroller_instNexysOnBoardMemCtrl_regMemAdr_8_not0001_397,
      D => eppctroller_instNexysOnBoardMemCtrl_regMemAdr_13_mux0000_357,
      Q => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(13)
    );
  eppctroller_instNexysOnBoardMemCtrl_regMemWrData_1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_5,
      CE => eppctroller_instNexysOnBoardMemCtrl_regMemWrData_7_not0001,
      D => N74,
      Q => eppctroller_instNexysOnBoardMemCtrl_regMemWrData(1)
    );
  eppctroller_instNexysOnBoardMemCtrl_regMemWrData_0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_5,
      CE => eppctroller_instNexysOnBoardMemCtrl_regMemWrData_7_not0001,
      D => N75,
      Q => eppctroller_instNexysOnBoardMemCtrl_regMemWrData(0)
    );
  eppctroller_instNexysOnBoardMemCtrl_regMemAdr_11 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_5,
      CE => eppctroller_instNexysOnBoardMemCtrl_regMemAdr_8_not0001_397,
      D => eppctroller_instNexysOnBoardMemCtrl_regMemAdr_11_mux0000_353,
      Q => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(11)
    );
  eppctroller_instNexysOnBoardMemCtrl_regMemAdr_12 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_5,
      CE => eppctroller_instNexysOnBoardMemCtrl_regMemAdr_8_not0001_397,
      D => eppctroller_instNexysOnBoardMemCtrl_regMemAdr_12_mux0000,
      Q => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(12)
    );
  eppctroller_instNexysOnBoardMemCtrl_regMemAdr_9 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_5,
      CE => eppctroller_instNexysOnBoardMemCtrl_regMemAdr_8_not0001_397,
      D => eppctroller_instNexysOnBoardMemCtrl_regMemAdr_9_mux0000,
      Q => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(9)
    );
  eppctroller_instNexysOnBoardMemCtrl_regMemAdr_10 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_5,
      CE => eppctroller_instNexysOnBoardMemCtrl_regMemAdr_8_not0001_397,
      D => eppctroller_instNexysOnBoardMemCtrl_regMemAdr_10_mux0000_351,
      Q => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(10)
    );
  eppctroller_instNexysOnBoardMemCtrl_regMemAdr_8 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_5,
      CE => eppctroller_instNexysOnBoardMemCtrl_regMemAdr_8_not0001_397,
      D => eppctroller_instNexysOnBoardMemCtrl_regMemAdr_8_mux0000,
      Q => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(8)
    );
  eppctroller_instNexysOnBoardMemCtrl_regMemAdr_7 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_5,
      CE => eppctroller_instNexysOnBoardMemCtrl_regMemAdr_0_not0001_348,
      D => eppctroller_instNexysOnBoardMemCtrl_regMemAdr_7_mux0000_393,
      Q => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(7)
    );
  eppctroller_instNexysOnBoardMemCtrl_regMemAdr_6 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_5,
      CE => eppctroller_instNexysOnBoardMemCtrl_regMemAdr_0_not0001_348,
      D => eppctroller_instNexysOnBoardMemCtrl_regMemAdr_6_mux0000,
      Q => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(6)
    );
  eppctroller_instNexysOnBoardMemCtrl_regMemAdr_5 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_5,
      CE => eppctroller_instNexysOnBoardMemCtrl_regMemAdr_0_not0001_348,
      D => eppctroller_instNexysOnBoardMemCtrl_regMemAdr_5_mux0000_389,
      Q => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(5)
    );
  eppctroller_instNexysOnBoardMemCtrl_regMemAdr_4 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_5,
      CE => eppctroller_instNexysOnBoardMemCtrl_regMemAdr_0_not0001_348,
      D => eppctroller_instNexysOnBoardMemCtrl_regMemAdr_4_mux0000,
      Q => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(4)
    );
  eppctroller_instNexysOnBoardMemCtrl_regMemAdr_3 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_5,
      CE => eppctroller_instNexysOnBoardMemCtrl_regMemAdr_0_not0001_348,
      D => eppctroller_instNexysOnBoardMemCtrl_regMemAdr_3_mux0000_385,
      Q => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(3)
    );
  eppctroller_instNexysOnBoardMemCtrl_regMemWrData_15 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_5,
      CE => eppctroller_instNexysOnBoardMemCtrl_regMemWrData_8_not0001,
      D => N68,
      Q => eppctroller_instNexysOnBoardMemCtrl_regMemWrData(15)
    );
  eppctroller_instNexysOnBoardMemCtrl_regMemAdr_2 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_5,
      CE => eppctroller_instNexysOnBoardMemCtrl_regMemAdr_0_not0001_348,
      D => eppctroller_instNexysOnBoardMemCtrl_regMemAdr_2_mux0000_383,
      Q => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(2)
    );
  eppctroller_instNexysOnBoardMemCtrl_regMemWrData_14 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_5,
      CE => eppctroller_instNexysOnBoardMemCtrl_regMemWrData_8_not0001,
      D => N69,
      Q => eppctroller_instNexysOnBoardMemCtrl_regMemWrData(14)
    );
  eppctroller_instNexysOnBoardMemCtrl_regMemAdr_1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_5,
      CE => eppctroller_instNexysOnBoardMemCtrl_regMemAdr_0_not0001_348,
      D => eppctroller_instNexysOnBoardMemCtrl_regMemAdr_1_mux0000,
      Q => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(1)
    );
  eppctroller_instNexysOnBoardMemCtrl_regMemWrData_13 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_5,
      CE => eppctroller_instNexysOnBoardMemCtrl_regMemWrData_8_not0001,
      D => N70,
      Q => eppctroller_instNexysOnBoardMemCtrl_regMemWrData(13)
    );
  eppctroller_instNexysOnBoardMemCtrl_regMemAdr_0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_5,
      CE => eppctroller_instNexysOnBoardMemCtrl_regMemAdr_0_not0001_348,
      D => eppctroller_instNexysOnBoardMemCtrl_regMemAdr_0_mux0000,
      Q => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(0)
    );
  eppctroller_instNexysOnBoardMemCtrl_regMemWrData_12 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_5,
      CE => eppctroller_instNexysOnBoardMemCtrl_regMemWrData_8_not0001,
      D => N71,
      Q => eppctroller_instNexysOnBoardMemCtrl_regMemWrData(12)
    );
  eppctroller_instNexysOnBoardMemCtrl_regMemWrData_11 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_5,
      CE => eppctroller_instNexysOnBoardMemCtrl_regMemWrData_8_not0001,
      D => N72,
      Q => eppctroller_instNexysOnBoardMemCtrl_regMemWrData(11)
    );
  eppctroller_instNexysOnBoardMemCtrl_regMemWrData_10 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_5,
      CE => eppctroller_instNexysOnBoardMemCtrl_regMemWrData_8_not0001,
      D => N73,
      Q => eppctroller_instNexysOnBoardMemCtrl_regMemWrData(10)
    );
  eppctroller_instNexysOnBoardMemCtrl_regMemCtl_7 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_5,
      CE => eppctroller_instNexysOnBoardMemCtrl_regMemCtl_and0000,
      D => N68,
      Q => eppctroller_instNexysOnBoardMemCtrl_regMemCtl(7)
    );
  eppctroller_instNexysOnBoardMemCtrl_regMemCtl_6 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_5,
      CE => eppctroller_instNexysOnBoardMemCtrl_regMemCtl_and0000,
      D => N69,
      Q => eppctroller_instNexysOnBoardMemCtrl_regMemCtl(6)
    );
  eppctroller_instNexysOnBoardMemCtrl_regMemCtl_5 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_5,
      CE => eppctroller_instNexysOnBoardMemCtrl_regMemCtl_and0000,
      D => N70,
      Q => eppctroller_instNexysOnBoardMemCtrl_regMemCtl(5)
    );
  eppctroller_instNexysOnBoardMemCtrl_regMemCtl_4 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_5,
      CE => eppctroller_instNexysOnBoardMemCtrl_regMemCtl_and0000,
      D => N71,
      Q => eppctroller_instNexysOnBoardMemCtrl_regMemCtl(4)
    );
  eppctroller_instNexysOnBoardMemCtrl_regMemCtl_3 : FDE
    generic map(
      INIT => '1'
    )
    port map (
      C => CLK_BUFGP_5,
      CE => eppctroller_instNexysOnBoardMemCtrl_regMemCtl_and0000,
      D => N72,
      Q => eppctroller_instNexysOnBoardMemCtrl_regMemCtl(3)
    );
  eppctroller_instNexysOnBoardMemCtrl_regMemCtl_2 : FDE
    generic map(
      INIT => '1'
    )
    port map (
      C => CLK_BUFGP_5,
      CE => eppctroller_instNexysOnBoardMemCtrl_regMemCtl_and0000,
      D => N73,
      Q => eppctroller_instNexysOnBoardMemCtrl_regMemCtl(2)
    );
  eppctroller_instNexysOnBoardMemCtrl_regMemCtl_1 : FDE
    generic map(
      INIT => '1'
    )
    port map (
      C => CLK_BUFGP_5,
      CE => eppctroller_instNexysOnBoardMemCtrl_regMemCtl_and0000,
      D => N74,
      Q => eppctroller_instNexysOnBoardMemCtrl_regMemCtl(1)
    );
  eppctroller_instNexysOnBoardMemCtrl_regMemCtl_0 : FDE
    generic map(
      INIT => '1'
    )
    port map (
      C => CLK_BUFGP_5,
      CE => eppctroller_instNexysOnBoardMemCtrl_regMemCtl_and0000,
      D => N75,
      Q => eppctroller_instNexysOnBoardMemCtrl_regMemCtl(0)
    );
  eppctroller_instNexysOnBoardMemCtrl_regMemWrData_9 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_5,
      CE => eppctroller_instNexysOnBoardMemCtrl_regMemWrData_8_not0001,
      D => N74,
      Q => eppctroller_instNexysOnBoardMemCtrl_regMemWrData(9)
    );
  eppctroller_instNexysOnBoardMemCtrl_regMemWrData_8 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_5,
      CE => eppctroller_instNexysOnBoardMemCtrl_regMemWrData_8_not0001,
      D => N75,
      Q => eppctroller_instNexysOnBoardMemCtrl_regMemWrData(8)
    );
  eppctroller_instNexysOnBoardMemCtrl_regMemAdr_19 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_5,
      CE => eppctroller_instNexysOnBoardMemCtrl_regMemAdr_23_not0001_382,
      D => eppctroller_instNexysOnBoardMemCtrl_regMemAdr_19_mux0000_369,
      Q => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(19)
    );
  eppctroller_instNexysOnBoardMemCtrl_regMemAdr_18 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_5,
      CE => eppctroller_instNexysOnBoardMemCtrl_regMemAdr_23_not0001_382,
      D => eppctroller_instNexysOnBoardMemCtrl_regMemAdr_18_mux0000_367,
      Q => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(18)
    );
  eppctroller_instNexysOnBoardMemCtrl_regMemWrData_7 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_5,
      CE => eppctroller_instNexysOnBoardMemCtrl_regMemWrData_7_not0001,
      D => N68,
      Q => eppctroller_instNexysOnBoardMemCtrl_regMemWrData(7)
    );
  eppctroller_instNexysOnBoardMemCtrl_regMemAdr_23 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_5,
      CE => eppctroller_instNexysOnBoardMemCtrl_regMemAdr_23_not0001_382,
      D => eppctroller_instNexysOnBoardMemCtrl_regMemAdr_23_mux0000_381,
      Q => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(23)
    );
  eppctroller_instNexysOnBoardMemCtrl_RamUB_mux00001 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => eppctroller_instNexysOnBoardMemCtrl_regMemCtl(5),
      I1 => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(0),
      O => eppctroller_instNexysOnBoardMemCtrl_RamUB_mux0000
    );
  eppctroller_instEppCtrl_EppWait_cmp_eq00001 : LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      I0 => eppctroller_instEppCtrl_stEppCur(0),
      I1 => eppctroller_instEppCtrl_stEppCur(2),
      I2 => eppctroller_instEppCtrl_stEppCur(1),
      O => PWAIT_OBUF_203
    );
  eppctroller_instNexysOnBoardMemCtrl_Mcount_DelayCnt_xor_1_11 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => eppctroller_instNexysOnBoardMemCtrl_DelayCnt(1),
      I1 => eppctroller_instNexysOnBoardMemCtrl_DelayCnt(0),
      O => eppctroller_instNexysOnBoardMemCtrl_Result(1)
    );
  eppctroller_instNexysOnBoardMemCtrl_Mcount_DelayCnt_xor_2_11 : LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      I0 => eppctroller_instNexysOnBoardMemCtrl_DelayCnt(2),
      I1 => eppctroller_instNexysOnBoardMemCtrl_DelayCnt(1),
      I2 => eppctroller_instNexysOnBoardMemCtrl_DelayCnt(0),
      O => eppctroller_instNexysOnBoardMemCtrl_Result(2)
    );
  eppctroller_instNexysOnBoardMemCtrl_Result_3_1 : LUT4
    generic map(
      INIT => X"6AAA"
    )
    port map (
      I0 => eppctroller_instNexysOnBoardMemCtrl_DelayCnt(3),
      I1 => eppctroller_instNexysOnBoardMemCtrl_DelayCnt(2),
      I2 => eppctroller_instNexysOnBoardMemCtrl_DelayCnt(1),
      I3 => eppctroller_instNexysOnBoardMemCtrl_DelayCnt(0),
      O => eppctroller_instNexysOnBoardMemCtrl_Result(3)
    );
  eppctroller_instEppCtrl_ctlEppAwr_and0000_SW0 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => PWR_IBUF_205,
      I1 => ASTB_IBUF_1,
      O => N02
    );
  eppctroller_instEppCtrl_ctlEppAwr_and0000 : LUT4
    generic map(
      INIT => X"0008"
    )
    port map (
      I0 => eppctroller_instEppCtrl_stEppCur(2),
      I1 => eppctroller_instEppCtrl_stEppCur(1),
      I2 => eppctroller_instEppCtrl_stEppCur(0),
      I3 => N02,
      O => eppctroller_instEppCtrl_ctlEppAwr
    );
  eppctroller_instEppCtrl_ctlEppRdCycleOut_mux0000_SW0 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => eppctroller_instEppCtrl_stEppCur(1),
      I1 => PWR_IBUF_205,
      O => N2
    );
  eppctroller_instEppCtrl_ctlEppRdCycleOut_mux0000 : LUT4
    generic map(
      INIT => X"ABA8"
    )
    port map (
      I0 => eppctroller_instEppCtrl_ctlEppRdCycleOut_264,
      I1 => eppctroller_instEppCtrl_stEppCur(2),
      I2 => eppctroller_instEppCtrl_stEppCur(0),
      I3 => N2,
      O => eppctroller_instEppCtrl_ctlEppRdCycleOut_mux0000_266
    );
  eppctroller_instNexysOnBoardMemCtrl_MemWR_mux0000_SW0 : LUT3
    generic map(
      INIT => X"45"
    )
    port map (
      I0 => eppctroller_instNexysOnBoardMemCtrl_stMsmCur(0),
      I1 => eppctroller_instNexysOnBoardMemCtrl_regMemCtl(1),
      I2 => eppctroller_instNexysOnBoardMemCtrl_regMemCtl(0),
      O => N7
    );
  eppctroller_instNexysOnBoardMemCtrl_MemWR_mux0000 : LUT4
    generic map(
      INIT => X"BFBE"
    )
    port map (
      I0 => eppctroller_instNexysOnBoardMemCtrl_stMsmCur(3),
      I1 => eppctroller_instNexysOnBoardMemCtrl_stMsmCur(2),
      I2 => eppctroller_instNexysOnBoardMemCtrl_stMsmCur(1),
      I3 => N7,
      O => eppctroller_instNexysOnBoardMemCtrl_MemWR_mux0000_303
    );
  eppctroller_instNexysOnBoardMemCtrl_regMemRdDataAux_not00011 : LUT4
    generic map(
      INIT => X"0008"
    )
    port map (
      I0 => N236,
      I1 => eppctroller_instNexysOnBoardMemCtrl_regMemCtl(5),
      I2 => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(0),
      I3 => eppctroller_instNexysOnBoardMemCtrl_stMsmCur(0),
      O => eppctroller_instNexysOnBoardMemCtrl_regMemRdDataAux_not0001
    );
  eppctroller_instNexysOnBoardMemCtrl_Result_4_SW0 : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => eppctroller_instNexysOnBoardMemCtrl_DelayCnt(0),
      I1 => eppctroller_instNexysOnBoardMemCtrl_DelayCnt(3),
      O => N9
    );
  eppctroller_instNexysOnBoardMemCtrl_Result_4_Q : LUT4
    generic map(
      INIT => X"CC6C"
    )
    port map (
      I0 => eppctroller_instNexysOnBoardMemCtrl_DelayCnt(2),
      I1 => eppctroller_instNexysOnBoardMemCtrl_DelayCnt(4),
      I2 => eppctroller_instNexysOnBoardMemCtrl_DelayCnt(1),
      I3 => N9,
      O => eppctroller_instNexysOnBoardMemCtrl_Result(4)
    );
  eppctroller_instNexysOnBoardMemCtrl_regMemRdData_mux0000_0_5 : LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      I0 => eppctroller_instNexysOnBoardMemCtrl_regMemCtl(5),
      I1 => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(0),
      I2 => eppctroller_instNexysOnBoardMemCtrl_stMsmCur(2),
      I3 => N131,
      O => N19
    );
  eppctroller_instNexysOnBoardMemCtrl_FlashCS_mux000014 : LUT4
    generic map(
      INIT => X"FFFB"
    )
    port map (
      I0 => eppctroller_instNexysOnBoardMemCtrl_regMemCtl(3),
      I1 => eppctroller_instNexysOnBoardMemCtrl_regMemCtl(2),
      I2 => eppctroller_instNexysOnBoardMemCtrl_stMsmCur(3),
      I3 => eppctroller_instNexysOnBoardMemCtrl_stMsmCur(2),
      O => eppctroller_instNexysOnBoardMemCtrl_FlashCS_mux000014_292
    );
  eppctroller_instNexysOnBoardMemCtrl_regMemAdr_23_not0001_SW0 : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => eppctroller_instEppCtrl_regEppAdrOut(1),
      I1 => eppctroller_instEppCtrl_regEppAdrOut(0),
      O => N172
    );
  eppctroller_instNexysOnBoardMemCtrl_regMemAdr_23_not0001 : LUT4
    generic map(
      INIT => X"FF02"
    )
    port map (
      I0 => N40,
      I1 => eppctroller_instEppCtrl_regEppAdrOut(2),
      I2 => N172,
      I3 => N240,
      O => eppctroller_instNexysOnBoardMemCtrl_regMemAdr_23_not0001_382
    );
  eppctroller_instNexysOnBoardMemCtrl_stMsmNext_and00011 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => eppctroller_instNexysOnBoardMemCtrl_DelayCnt(0),
      I1 => eppctroller_instNexysOnBoardMemCtrl_DelayCnt(1),
      I2 => eppctroller_instNexysOnBoardMemCtrl_DelayCnt(2),
      O => eppctroller_instNexysOnBoardMemCtrl_stMsmNext_and0001
    );
  eppctroller_instNexysOnBoardMemCtrl_DelayCnt_cmp_eq000011 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => eppctroller_instNexysOnBoardMemCtrl_stMsmCur(1),
      I1 => eppctroller_instNexysOnBoardMemCtrl_stMsmCur(0),
      I2 => eppctroller_instNexysOnBoardMemCtrl_stMsmCur(2),
      O => N33
    );
  eppctroller_instNexysOnBoardMemCtrl_regMemRdData_mux0000_0_3 : LUT4
    generic map(
      INIT => X"0008"
    )
    port map (
      I0 => eppctroller_instNexysOnBoardMemCtrl_RamLB_mux0000,
      I1 => N411,
      I2 => eppctroller_instNexysOnBoardMemCtrl_stMsmCur(0),
      I3 => N21,
      O => N12
    );
  eppctroller_instNexysOnBoardMemCtrl_carryoutL_cmp_eq000010 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => N238,
      I1 => eppctroller_instNexysOnBoardMemCtrl_Madd_regMemAdr_7_0_add0000_cy_3_Q,
      O => eppctroller_instNexysOnBoardMemCtrl_carryoutL
    );
  eppctroller_instNexysOnBoardMemCtrl_regMemAdr_23_and000113 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(15),
      I1 => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(14),
      I2 => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(13),
      I3 => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(12),
      O => eppctroller_instNexysOnBoardMemCtrl_regMemAdr_23_and000113_380
    );
  eppctroller_instNexysOnBoardMemCtrl_stMsmNext_cmp_eq00021 : LUT3
    generic map(
      INIT => X"10"
    )
    port map (
      I0 => eppctroller_instNexysOnBoardMemCtrl_DelayCnt(4),
      I1 => eppctroller_instNexysOnBoardMemCtrl_DelayCnt(3),
      I2 => eppctroller_instNexysOnBoardMemCtrl_stMsmNext_and0000,
      O => eppctroller_instNexysOnBoardMemCtrl_stMsmNext_cmp_eq0002
    );
  eppctroller_instNexysOnBoardMemCtrl_stMsmCur_3_12 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => eppctroller_instNexysOnBoardMemCtrl_stMsmCur(2),
      I1 => eppctroller_instNexysOnBoardMemCtrl_stMsmCur(1),
      I2 => eppctroller_instNexysOnBoardMemCtrl_stMsmCur(0),
      O => eppctroller_instNexysOnBoardMemCtrl_stMsmCur_3_12_465
    );
  eppctroller_instNexysOnBoardMemCtrl_stMsmCur_3_15 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => eppctroller_instEppCtrl_stEppCur(2),
      I1 => eppctroller_instEppCtrl_stEppCur(1),
      I2 => eppctroller_instEppCtrl_stEppCur(0),
      O => eppctroller_instNexysOnBoardMemCtrl_stMsmCur_3_15_466
    );
  eppctroller_instNexysOnBoardMemCtrl_stMsmCur_3_124 : LUT4
    generic map(
      INIT => X"FDA8"
    )
    port map (
      I0 => eppctroller_instNexysOnBoardMemCtrl_stMsmCur(3),
      I1 => eppctroller_instNexysOnBoardMemCtrl_stMsmCur_3_15_466,
      I2 => eppctroller_instNexysOnBoardMemCtrl_stMsmCur_3_12_465,
      I3 => eppctroller_instNexysOnBoardMemCtrl_Mmux_stMsmNext_5_f51,
      O => eppctroller_instNexysOnBoardMemCtrl_stMsmNext(3)
    );
  eppctroller_instNexysOnBoardMemCtrl_flagBlindCycle_and00021 : LUT3
    generic map(
      INIT => X"84"
    )
    port map (
      I0 => eppctroller_instEppCtrl_ctlEppRdCycleOut_264,
      I1 => eppctroller_instNexysOnBoardMemCtrl_regMemCtl(5),
      I2 => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(0),
      O => eppctroller_instNexysOnBoardMemCtrl_flagBlindCycle_and0002
    );
  eppctroller_instNexysOnBoardMemCtrl_Madd_regMemAdr_7_0_add0000_cy_5_11 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => N237,
      I1 => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(4),
      I2 => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(5),
      O => eppctroller_instNexysOnBoardMemCtrl_Madd_regMemAdr_7_0_add0000_cy_5_Q
    );
  eppctroller_instNexysOnBoardMemCtrl_Madd_regMemAdr_23_16_add0000_cy_5_11 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => N241,
      I1 => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(20),
      I2 => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(21),
      O => eppctroller_instNexysOnBoardMemCtrl_Madd_regMemAdr_23_16_add0000_cy_5_Q
    );
  eppctroller_instNexysOnBoardMemCtrl_Madd_regMemAdr_15_8_add0000_cy_5_11 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => N239,
      I1 => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(12),
      I2 => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(13),
      O => eppctroller_instNexysOnBoardMemCtrl_Madd_regMemAdr_15_8_add0000_cy_5_Q
    );
  eppctroller_instNexysOnBoardMemCtrl_regMemRdData_mux0000_7_4 : LUT4
    generic map(
      INIT => X"EAC0"
    )
    port map (
      I0 => N84,
      I1 => eppctroller_instNexysOnBoardMemCtrl_regMemRdDataAux(7),
      I2 => N19,
      I3 => N248,
      O => eppctroller_instNexysOnBoardMemCtrl_regMemRdData_mux0000_7_4_443
    );
  eppctroller_instNexysOnBoardMemCtrl_regMemRdData_mux0000_7_9 : LUT4
    generic map(
      INIT => X"ECA0"
    )
    port map (
      I0 => N76,
      I1 => eppctroller_instNexysOnBoardMemCtrl_regMemRdData(7),
      I2 => N12,
      I3 => N249,
      O => eppctroller_instNexysOnBoardMemCtrl_regMemRdData_mux0000_7_9_444
    );
  eppctroller_instNexysOnBoardMemCtrl_regMemRdData_mux0000_6_4 : LUT4
    generic map(
      INIT => X"EAC0"
    )
    port map (
      I0 => N85,
      I1 => eppctroller_instNexysOnBoardMemCtrl_regMemRdDataAux(6),
      I2 => N19,
      I3 => N15,
      O => eppctroller_instNexysOnBoardMemCtrl_regMemRdData_mux0000_6_4_441
    );
  eppctroller_instNexysOnBoardMemCtrl_regMemRdData_mux0000_6_9 : LUT4
    generic map(
      INIT => X"ECA0"
    )
    port map (
      I0 => N77,
      I1 => eppctroller_instNexysOnBoardMemCtrl_regMemRdData(6),
      I2 => N12,
      I3 => N01,
      O => eppctroller_instNexysOnBoardMemCtrl_regMemRdData_mux0000_6_9_442
    );
  eppctroller_instNexysOnBoardMemCtrl_regMemRdData_mux0000_5_4 : LUT4
    generic map(
      INIT => X"EAC0"
    )
    port map (
      I0 => N86,
      I1 => eppctroller_instNexysOnBoardMemCtrl_regMemRdDataAux(5),
      I2 => N19,
      I3 => N15,
      O => eppctroller_instNexysOnBoardMemCtrl_regMemRdData_mux0000_5_4_439
    );
  eppctroller_instNexysOnBoardMemCtrl_regMemRdData_mux0000_5_9 : LUT4
    generic map(
      INIT => X"ECA0"
    )
    port map (
      I0 => N78,
      I1 => eppctroller_instNexysOnBoardMemCtrl_regMemRdData(5),
      I2 => N12,
      I3 => N01,
      O => eppctroller_instNexysOnBoardMemCtrl_regMemRdData_mux0000_5_9_440
    );
  eppctroller_instNexysOnBoardMemCtrl_regMemRdData_mux0000_4_4 : LUT4
    generic map(
      INIT => X"EAC0"
    )
    port map (
      I0 => N87,
      I1 => eppctroller_instNexysOnBoardMemCtrl_regMemRdDataAux(4),
      I2 => N19,
      I3 => N15,
      O => eppctroller_instNexysOnBoardMemCtrl_regMemRdData_mux0000_4_4_437
    );
  eppctroller_instNexysOnBoardMemCtrl_regMemRdData_mux0000_4_9 : LUT4
    generic map(
      INIT => X"ECA0"
    )
    port map (
      I0 => N79,
      I1 => eppctroller_instNexysOnBoardMemCtrl_regMemRdData(4),
      I2 => N12,
      I3 => N01,
      O => eppctroller_instNexysOnBoardMemCtrl_regMemRdData_mux0000_4_9_438
    );
  eppctroller_instNexysOnBoardMemCtrl_regMemRdData_mux0000_3_4 : LUT4
    generic map(
      INIT => X"EAC0"
    )
    port map (
      I0 => N88,
      I1 => eppctroller_instNexysOnBoardMemCtrl_regMemRdDataAux(3),
      I2 => N19,
      I3 => N15,
      O => eppctroller_instNexysOnBoardMemCtrl_regMemRdData_mux0000_3_4_435
    );
  eppctroller_instNexysOnBoardMemCtrl_regMemRdData_mux0000_3_9 : LUT4
    generic map(
      INIT => X"ECA0"
    )
    port map (
      I0 => N80,
      I1 => eppctroller_instNexysOnBoardMemCtrl_regMemRdData(3),
      I2 => N12,
      I3 => N01,
      O => eppctroller_instNexysOnBoardMemCtrl_regMemRdData_mux0000_3_9_436
    );
  eppctroller_instNexysOnBoardMemCtrl_regMemRdData_mux0000_2_4 : LUT4
    generic map(
      INIT => X"EAC0"
    )
    port map (
      I0 => N89,
      I1 => eppctroller_instNexysOnBoardMemCtrl_regMemRdDataAux(2),
      I2 => N19,
      I3 => N15,
      O => eppctroller_instNexysOnBoardMemCtrl_regMemRdData_mux0000_2_4_433
    );
  eppctroller_instNexysOnBoardMemCtrl_regMemRdData_mux0000_2_9 : LUT4
    generic map(
      INIT => X"ECA0"
    )
    port map (
      I0 => N81,
      I1 => eppctroller_instNexysOnBoardMemCtrl_regMemRdData(2),
      I2 => N12,
      I3 => N01,
      O => eppctroller_instNexysOnBoardMemCtrl_regMemRdData_mux0000_2_9_434
    );
  eppctroller_instNexysOnBoardMemCtrl_regMemRdData_mux0000_1_9 : LUT4
    generic map(
      INIT => X"ECA0"
    )
    port map (
      I0 => N90,
      I1 => eppctroller_instNexysOnBoardMemCtrl_regMemRdData(1),
      I2 => N15,
      I3 => N01,
      O => eppctroller_instNexysOnBoardMemCtrl_regMemRdData_mux0000_1_9_432
    );
  eppctroller_instNexysOnBoardMemCtrl_regMemRdData_mux0000_0_9 : LUT4
    generic map(
      INIT => X"ECA0"
    )
    port map (
      I0 => N91,
      I1 => eppctroller_instNexysOnBoardMemCtrl_regMemRdData(0),
      I2 => N15,
      I3 => N01,
      O => eppctroller_instNexysOnBoardMemCtrl_regMemRdData_mux0000_0_9_430
    );
  eppctroller_instNexysOnBoardMemCtrl_stMsmCur_3_SW0 : LUT4
    generic map(
      INIT => X"E3F3"
    )
    port map (
      I0 => N84,
      I1 => eppctroller_instNexysOnBoardMemCtrl_stMsmCur(2),
      I2 => eppctroller_instNexysOnBoardMemCtrl_stMsmCur(0),
      I3 => N242,
      O => N401
    );
  eppctroller_instNexysOnBoardMemCtrl_ctlMsmWrCmd_or00001 : LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      I0 => eppctroller_instNexysOnBoardMemCtrl_stMsmCur(3),
      I1 => eppctroller_instNexysOnBoardMemCtrl_stMsmCur(0),
      I2 => eppctroller_instNexysOnBoardMemCtrl_stMsmCur(1),
      O => eppctroller_instNexysOnBoardMemCtrl_ctlMsmWrCmd
    );
  eppctroller_instNexysOnBoardMemCtrl_EppRdDataOut_0_311 : LUT4
    generic map(
      INIT => X"EFFF"
    )
    port map (
      I0 => eppctroller_instEppCtrl_regEppAdrOut(1),
      I1 => eppctroller_instEppCtrl_regEppAdrOut(0),
      I2 => eppctroller_XLXN_1560,
      I3 => eppctroller_instEppCtrl_regEppAdrOut(2),
      O => N171
    );
  eppctroller_instNexysOnBoardMemCtrl_busMemOut_7_1 : LUT4
    generic map(
      INIT => X"5410"
    )
    port map (
      I0 => eppctroller_instNexysOnBoardMemCtrl_ctlMsmWrCmd,
      I1 => eppctroller_instNexysOnBoardMemCtrl_busMemOut_and0000,
      I2 => eppctroller_instNexysOnBoardMemCtrl_regMemWrData(7),
      I3 => eppctroller_instNexysOnBoardMemCtrl_regMemWrData(15),
      O => eppctroller_instNexysOnBoardMemCtrl_busMemOut(7)
    );
  eppctroller_instNexysOnBoardMemCtrl_busMemOut_6_1 : LUT4
    generic map(
      INIT => X"FFB8"
    )
    port map (
      I0 => eppctroller_instNexysOnBoardMemCtrl_regMemWrData(14),
      I1 => eppctroller_instNexysOnBoardMemCtrl_busMemOut_and0000,
      I2 => eppctroller_instNexysOnBoardMemCtrl_regMemWrData(6),
      I3 => eppctroller_instNexysOnBoardMemCtrl_ctlMsmWrCmd,
      O => eppctroller_instNexysOnBoardMemCtrl_busMemOut(6)
    );
  eppctroller_instNexysOnBoardMemCtrl_busMemOut_5_1 : LUT4
    generic map(
      INIT => X"5410"
    )
    port map (
      I0 => eppctroller_instNexysOnBoardMemCtrl_ctlMsmWrCmd,
      I1 => eppctroller_instNexysOnBoardMemCtrl_busMemOut_and0000,
      I2 => eppctroller_instNexysOnBoardMemCtrl_regMemWrData(5),
      I3 => eppctroller_instNexysOnBoardMemCtrl_regMemWrData(13),
      O => eppctroller_instNexysOnBoardMemCtrl_busMemOut(5)
    );
  eppctroller_instNexysOnBoardMemCtrl_busMemOut_4_1 : LUT4
    generic map(
      INIT => X"5410"
    )
    port map (
      I0 => eppctroller_instNexysOnBoardMemCtrl_ctlMsmWrCmd,
      I1 => eppctroller_instNexysOnBoardMemCtrl_busMemOut_and0000,
      I2 => eppctroller_instNexysOnBoardMemCtrl_regMemWrData(4),
      I3 => eppctroller_instNexysOnBoardMemCtrl_regMemWrData(12),
      O => eppctroller_instNexysOnBoardMemCtrl_busMemOut(4)
    );
  eppctroller_instNexysOnBoardMemCtrl_busMemOut_3_1 : LUT4
    generic map(
      INIT => X"5410"
    )
    port map (
      I0 => eppctroller_instNexysOnBoardMemCtrl_ctlMsmWrCmd,
      I1 => eppctroller_instNexysOnBoardMemCtrl_busMemOut_and0000,
      I2 => eppctroller_instNexysOnBoardMemCtrl_regMemWrData(3),
      I3 => eppctroller_instNexysOnBoardMemCtrl_regMemWrData(11),
      O => eppctroller_instNexysOnBoardMemCtrl_busMemOut(3)
    );
  eppctroller_instNexysOnBoardMemCtrl_busMemOut_2_1 : LUT4
    generic map(
      INIT => X"5410"
    )
    port map (
      I0 => eppctroller_instNexysOnBoardMemCtrl_ctlMsmWrCmd,
      I1 => eppctroller_instNexysOnBoardMemCtrl_busMemOut_and0000,
      I2 => eppctroller_instNexysOnBoardMemCtrl_regMemWrData(2),
      I3 => eppctroller_instNexysOnBoardMemCtrl_regMemWrData(10),
      O => eppctroller_instNexysOnBoardMemCtrl_busMemOut(2)
    );
  eppctroller_instNexysOnBoardMemCtrl_busMemOut_1_1 : LUT4
    generic map(
      INIT => X"5410"
    )
    port map (
      I0 => eppctroller_instNexysOnBoardMemCtrl_ctlMsmWrCmd,
      I1 => eppctroller_instNexysOnBoardMemCtrl_busMemOut_and0000,
      I2 => eppctroller_instNexysOnBoardMemCtrl_regMemWrData(1),
      I3 => eppctroller_instNexysOnBoardMemCtrl_regMemWrData(9),
      O => eppctroller_instNexysOnBoardMemCtrl_busMemOut(1)
    );
  eppctroller_instNexysOnBoardMemCtrl_busMemOut_0_1 : LUT4
    generic map(
      INIT => X"5410"
    )
    port map (
      I0 => eppctroller_instNexysOnBoardMemCtrl_ctlMsmWrCmd,
      I1 => eppctroller_instNexysOnBoardMemCtrl_busMemOut_and0000,
      I2 => eppctroller_instNexysOnBoardMemCtrl_regMemWrData(0),
      I3 => eppctroller_instNexysOnBoardMemCtrl_regMemWrData(8),
      O => eppctroller_instNexysOnBoardMemCtrl_busMemOut(0)
    );
  eppctroller_instNexysOnBoardMemCtrl_MemDB_and0000_inv13 : LUT4
    generic map(
      INIT => X"FF13"
    )
    port map (
      I0 => eppctroller_instNexysOnBoardMemCtrl_stMsmCur(2),
      I1 => eppctroller_instNexysOnBoardMemCtrl_stMsmCur(0),
      I2 => eppctroller_instNexysOnBoardMemCtrl_stMsmCur(1),
      I3 => eppctroller_instNexysOnBoardMemCtrl_stMsmCur(3),
      O => eppctroller_instNexysOnBoardMemCtrl_MemDB_and0000_inv13_300
    );
  eppctroller_instNexysOnBoardMemCtrl_MemDB_and0000_inv18 : LUT3
    generic map(
      INIT => X"8F"
    )
    port map (
      I0 => eppctroller_instNexysOnBoardMemCtrl_regMemCtl(2),
      I1 => eppctroller_instNexysOnBoardMemCtrl_regMemCtl(3),
      I2 => eppctroller_instNexysOnBoardMemCtrl_regMemCtl(0),
      O => eppctroller_instNexysOnBoardMemCtrl_MemDB_and0000_inv18_301
    );
  eppctroller_instNexysOnBoardMemCtrl_MemDB_and0000_inv31 : LUT3
    generic map(
      INIT => X"8F"
    )
    port map (
      I0 => eppctroller_instNexysOnBoardMemCtrl_MemDB_and0000_inv13_300,
      I1 => eppctroller_instNexysOnBoardMemCtrl_MemDB_and0000_inv18_301,
      I2 => eppctroller_instNexysOnBoardMemCtrl_regMemCtl(4),
      O => eppctroller_instNexysOnBoardMemCtrl_MemDB_and0000_inv
    );
  eppctroller_instNexysOnBoardMemCtrl_regMemRdData_mux0000_0_311 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => eppctroller_instNexysOnBoardMemCtrl_regMemCtl(5),
      I1 => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(0),
      O => eppctroller_instNexysOnBoardMemCtrl_RamLB_mux0000
    );
  eppctroller_instNexysOnBoardMemCtrl_flagFlashAutoWr_cmp_eq000021 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => eppctroller_instEppCtrl_regEppAdrOut(1),
      I1 => eppctroller_instEppCtrl_regEppAdrOut(2),
      O => N411
    );
  eppctroller_instNexysOnBoardMemCtrl_busMemOut_9_1 : LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      I0 => eppctroller_instNexysOnBoardMemCtrl_busMemOut_and0000,
      I1 => eppctroller_instNexysOnBoardMemCtrl_regMemWrData(9),
      I2 => eppctroller_instNexysOnBoardMemCtrl_ctlMsmWrCmd,
      O => eppctroller_instNexysOnBoardMemCtrl_busMemOut(9)
    );
  eppctroller_instNexysOnBoardMemCtrl_busMemOut_8_1 : LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      I0 => eppctroller_instNexysOnBoardMemCtrl_busMemOut_and0000,
      I1 => eppctroller_instNexysOnBoardMemCtrl_regMemWrData(8),
      I2 => eppctroller_instNexysOnBoardMemCtrl_ctlMsmWrCmd,
      O => eppctroller_instNexysOnBoardMemCtrl_busMemOut(8)
    );
  eppctroller_instNexysOnBoardMemCtrl_busMemOut_15_1 : LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      I0 => eppctroller_instNexysOnBoardMemCtrl_busMemOut_and0000,
      I1 => eppctroller_instNexysOnBoardMemCtrl_regMemWrData(15),
      I2 => eppctroller_instNexysOnBoardMemCtrl_ctlMsmWrCmd,
      O => eppctroller_instNexysOnBoardMemCtrl_busMemOut(15)
    );
  eppctroller_instNexysOnBoardMemCtrl_busMemOut_14_1 : LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      I0 => eppctroller_instNexysOnBoardMemCtrl_busMemOut_and0000,
      I1 => eppctroller_instNexysOnBoardMemCtrl_regMemWrData(14),
      I2 => eppctroller_instNexysOnBoardMemCtrl_ctlMsmWrCmd,
      O => eppctroller_instNexysOnBoardMemCtrl_busMemOut(14)
    );
  eppctroller_instNexysOnBoardMemCtrl_busMemOut_13_1 : LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      I0 => eppctroller_instNexysOnBoardMemCtrl_busMemOut_and0000,
      I1 => eppctroller_instNexysOnBoardMemCtrl_regMemWrData(13),
      I2 => eppctroller_instNexysOnBoardMemCtrl_ctlMsmWrCmd,
      O => eppctroller_instNexysOnBoardMemCtrl_busMemOut(13)
    );
  eppctroller_instNexysOnBoardMemCtrl_busMemOut_12_1 : LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      I0 => eppctroller_instNexysOnBoardMemCtrl_busMemOut_and0000,
      I1 => eppctroller_instNexysOnBoardMemCtrl_regMemWrData(12),
      I2 => eppctroller_instNexysOnBoardMemCtrl_ctlMsmWrCmd,
      O => eppctroller_instNexysOnBoardMemCtrl_busMemOut(12)
    );
  eppctroller_instNexysOnBoardMemCtrl_busMemOut_11_1 : LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      I0 => eppctroller_instNexysOnBoardMemCtrl_busMemOut_and0000,
      I1 => eppctroller_instNexysOnBoardMemCtrl_regMemWrData(11),
      I2 => eppctroller_instNexysOnBoardMemCtrl_ctlMsmWrCmd,
      O => eppctroller_instNexysOnBoardMemCtrl_busMemOut(11)
    );
  eppctroller_instNexysOnBoardMemCtrl_busMemOut_10_1 : LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      I0 => eppctroller_instNexysOnBoardMemCtrl_busMemOut_and0000,
      I1 => eppctroller_instNexysOnBoardMemCtrl_regMemWrData(10),
      I2 => eppctroller_instNexysOnBoardMemCtrl_ctlMsmWrCmd,
      O => eppctroller_instNexysOnBoardMemCtrl_busMemOut(10)
    );
  eppctroller_instNexysOnBoardMemCtrl_EppRdDataOut_and00031 : LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      I0 => eppctroller_XLXN_1560,
      I1 => eppctroller_instEppCtrl_regEppAdrOut(0),
      I2 => eppctroller_instEppCtrl_regEppAdrOut(1),
      I3 => eppctroller_instEppCtrl_regEppAdrOut(2),
      O => eppctroller_instNexysOnBoardMemCtrl_EppRdDataOut_and0003
    );
  eppctroller_instNexysOnBoardMemCtrl_EppRdDataOut_and00021 : LUT4
    generic map(
      INIT => X"0008"
    )
    port map (
      I0 => eppctroller_instEppCtrl_regEppAdrOut(1),
      I1 => eppctroller_XLXN_1560,
      I2 => eppctroller_instEppCtrl_regEppAdrOut(0),
      I3 => eppctroller_instEppCtrl_regEppAdrOut(2),
      O => eppctroller_instNexysOnBoardMemCtrl_EppRdDataOut_and0002
    );
  eppctroller_instNexysOnBoardMemCtrl_EppRdDataOut_and00001 : LUT4
    generic map(
      INIT => X"0004"
    )
    port map (
      I0 => eppctroller_instEppCtrl_regEppAdrOut(0),
      I1 => eppctroller_XLXN_1560,
      I2 => eppctroller_instEppCtrl_regEppAdrOut(1),
      I3 => eppctroller_instEppCtrl_regEppAdrOut(2),
      O => eppctroller_instNexysOnBoardMemCtrl_EppRdDataOut_and0000
    );
  eppctroller_instNexysOnBoardMemCtrl_EppRdDataOut_0_41 : LUT4
    generic map(
      INIT => X"0008"
    )
    port map (
      I0 => eppctroller_XLXN_1560,
      I1 => eppctroller_instEppCtrl_regEppAdrOut(0),
      I2 => eppctroller_instEppCtrl_regEppAdrOut(1),
      I3 => eppctroller_instEppCtrl_regEppAdrOut(2),
      O => eppctroller_instNexysOnBoardMemCtrl_EppRdDataOut_and0001
    );
  eppctroller_instNexysOnBoardMemCtrl_EppRdDataOut_0_111 : LUT4
    generic map(
      INIT => X"0444"
    )
    port map (
      I0 => eppctroller_XLXN_1266,
      I1 => eppctroller_XLXN_1560,
      I2 => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(0),
      I3 => eppctroller_instNexysOnBoardMemCtrl_regMemCtl(5),
      O => N13
    );
  eppctroller_instNexysOnBoardMemCtrl_regMemAdr_8_mux00001 : LUT3
    generic map(
      INIT => X"3A"
    )
    port map (
      I0 => N75,
      I1 => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(8),
      I2 => eppctroller_instNexysOnBoardMemCtrl_regMemAdr_8_and0001,
      O => eppctroller_instNexysOnBoardMemCtrl_regMemAdr_8_mux0000
    );
  eppctroller_instNexysOnBoardMemCtrl_regMemAdr_16_mux00001 : LUT3
    generic map(
      INIT => X"3A"
    )
    port map (
      I0 => N75,
      I1 => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(16),
      I2 => eppctroller_instNexysOnBoardMemCtrl_regMemAdr_23_and0001,
      O => eppctroller_instNexysOnBoardMemCtrl_regMemAdr_16_mux0000
    );
  eppctroller_instNexysOnBoardMemCtrl_regMemAdr_0_mux00001 : LUT3
    generic map(
      INIT => X"4E"
    )
    port map (
      I0 => eppctroller_instNexysOnBoardMemCtrl_ctlMsmAdrInc,
      I1 => N75,
      I2 => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(0),
      O => eppctroller_instNexysOnBoardMemCtrl_regMemAdr_0_mux0000
    );
  eppctroller_instNexysOnBoardMemCtrl_regMemAdr_9_mux00001 : LUT4
    generic map(
      INIT => X"3CAA"
    )
    port map (
      I0 => N74,
      I1 => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(9),
      I2 => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(8),
      I3 => eppctroller_instNexysOnBoardMemCtrl_regMemAdr_8_and0001,
      O => eppctroller_instNexysOnBoardMemCtrl_regMemAdr_9_mux0000
    );
  eppctroller_instNexysOnBoardMemCtrl_regMemAdr_6_mux00001 : LUT4
    generic map(
      INIT => X"7D28"
    )
    port map (
      I0 => eppctroller_instNexysOnBoardMemCtrl_ctlMsmAdrInc,
      I1 => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(6),
      I2 => eppctroller_instNexysOnBoardMemCtrl_Madd_regMemAdr_7_0_add0000_cy_5_Q,
      I3 => N69,
      O => eppctroller_instNexysOnBoardMemCtrl_regMemAdr_6_mux0000
    );
  eppctroller_instNexysOnBoardMemCtrl_regMemAdr_4_mux00001 : LUT4
    generic map(
      INIT => X"7D28"
    )
    port map (
      I0 => eppctroller_instNexysOnBoardMemCtrl_ctlMsmAdrInc,
      I1 => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(4),
      I2 => eppctroller_instNexysOnBoardMemCtrl_Madd_regMemAdr_7_0_add0000_cy_3_Q,
      I3 => N71,
      O => eppctroller_instNexysOnBoardMemCtrl_regMemAdr_4_mux0000
    );
  eppctroller_instNexysOnBoardMemCtrl_regMemAdr_22_mux00001 : LUT4
    generic map(
      INIT => X"3CAA"
    )
    port map (
      I0 => N69,
      I1 => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(22),
      I2 => eppctroller_instNexysOnBoardMemCtrl_Madd_regMemAdr_23_16_add0000_cy_5_Q,
      I3 => eppctroller_instNexysOnBoardMemCtrl_regMemAdr_23_and0001,
      O => eppctroller_instNexysOnBoardMemCtrl_regMemAdr_22_mux0000
    );
  eppctroller_instNexysOnBoardMemCtrl_regMemAdr_20_mux00001 : LUT4
    generic map(
      INIT => X"3CAA"
    )
    port map (
      I0 => N71,
      I1 => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(20),
      I2 => eppctroller_instNexysOnBoardMemCtrl_Madd_regMemAdr_23_16_add0000_cy_3_Q,
      I3 => eppctroller_instNexysOnBoardMemCtrl_regMemAdr_23_and0001,
      O => eppctroller_instNexysOnBoardMemCtrl_regMemAdr_20_mux0000
    );
  eppctroller_instNexysOnBoardMemCtrl_regMemAdr_1_mux00001 : LUT4
    generic map(
      INIT => X"7D28"
    )
    port map (
      I0 => eppctroller_instNexysOnBoardMemCtrl_ctlMsmAdrInc,
      I1 => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(1),
      I2 => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(0),
      I3 => N74,
      O => eppctroller_instNexysOnBoardMemCtrl_regMemAdr_1_mux0000
    );
  eppctroller_instNexysOnBoardMemCtrl_regMemAdr_17_mux00001 : LUT4
    generic map(
      INIT => X"3CAA"
    )
    port map (
      I0 => N74,
      I1 => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(17),
      I2 => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(16),
      I3 => eppctroller_instNexysOnBoardMemCtrl_regMemAdr_23_and0001,
      O => eppctroller_instNexysOnBoardMemCtrl_regMemAdr_17_mux0000
    );
  eppctroller_instNexysOnBoardMemCtrl_regMemAdr_14_mux00001 : LUT4
    generic map(
      INIT => X"3CAA"
    )
    port map (
      I0 => N69,
      I1 => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(14),
      I2 => eppctroller_instNexysOnBoardMemCtrl_Madd_regMemAdr_15_8_add0000_cy_5_Q,
      I3 => eppctroller_instNexysOnBoardMemCtrl_regMemAdr_8_and0001,
      O => eppctroller_instNexysOnBoardMemCtrl_regMemAdr_14_mux0000
    );
  eppctroller_instNexysOnBoardMemCtrl_regMemAdr_12_mux00001 : LUT4
    generic map(
      INIT => X"3CAA"
    )
    port map (
      I0 => N71,
      I1 => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(12),
      I2 => eppctroller_instNexysOnBoardMemCtrl_Madd_regMemAdr_15_8_add0000_cy_3_Q,
      I3 => eppctroller_instNexysOnBoardMemCtrl_regMemAdr_8_and0001,
      O => eppctroller_instNexysOnBoardMemCtrl_regMemAdr_12_mux0000
    );
  eppctroller_instNexysOnBoardMemCtrl_flagFlashAutoWr_cmp_eq00001 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => eppctroller_instEppCtrl_regEppAdrOut(7),
      I1 => eppctroller_instEppCtrl_regEppAdrOut(4),
      I2 => eppctroller_instEppCtrl_regEppAdrOut(6),
      I3 => N244,
      O => eppctroller_XLXN_1560
    );
  eppctroller_instNexysOnBoardMemCtrl_regMemAdr_7_mux0000 : LUT4
    generic map(
      INIT => X"E22E"
    )
    port map (
      I0 => N68,
      I1 => eppctroller_instNexysOnBoardMemCtrl_ctlMsmAdrInc,
      I2 => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(7),
      I3 => N44,
      O => eppctroller_instNexysOnBoardMemCtrl_regMemAdr_7_mux0000_393
    );
  eppctroller_instNexysOnBoardMemCtrl_regMemAdr_5_mux0000 : LUT4
    generic map(
      INIT => X"E22E"
    )
    port map (
      I0 => N70,
      I1 => eppctroller_instNexysOnBoardMemCtrl_ctlMsmAdrInc,
      I2 => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(5),
      I3 => N46,
      O => eppctroller_instNexysOnBoardMemCtrl_regMemAdr_5_mux0000_389
    );
  eppctroller_instNexysOnBoardMemCtrl_regMemAdr_2_mux0000_SW0 : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(0),
      I1 => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(1),
      O => N48
    );
  eppctroller_instNexysOnBoardMemCtrl_regMemAdr_2_mux0000 : LUT4
    generic map(
      INIT => X"E22E"
    )
    port map (
      I0 => N73,
      I1 => eppctroller_instNexysOnBoardMemCtrl_ctlMsmAdrInc,
      I2 => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(2),
      I3 => N48,
      O => eppctroller_instNexysOnBoardMemCtrl_regMemAdr_2_mux0000_383
    );
  eppctroller_instNexysOnBoardMemCtrl_regMemAdr_23_mux0000 : LUT4
    generic map(
      INIT => X"C3AA"
    )
    port map (
      I0 => N68,
      I1 => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(23),
      I2 => N50,
      I3 => eppctroller_instNexysOnBoardMemCtrl_regMemAdr_23_and0001,
      O => eppctroller_instNexysOnBoardMemCtrl_regMemAdr_23_mux0000_381
    );
  eppctroller_instNexysOnBoardMemCtrl_regMemAdr_21_mux0000 : LUT4
    generic map(
      INIT => X"C3AA"
    )
    port map (
      I0 => N70,
      I1 => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(21),
      I2 => N52,
      I3 => eppctroller_instNexysOnBoardMemCtrl_regMemAdr_23_and0001,
      O => eppctroller_instNexysOnBoardMemCtrl_regMemAdr_21_mux0000_375
    );
  eppctroller_instNexysOnBoardMemCtrl_regMemAdr_18_mux0000_SW0 : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(17),
      I1 => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(16),
      O => N54
    );
  eppctroller_instNexysOnBoardMemCtrl_regMemAdr_18_mux0000 : LUT4
    generic map(
      INIT => X"C3AA"
    )
    port map (
      I0 => N73,
      I1 => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(18),
      I2 => N54,
      I3 => eppctroller_instNexysOnBoardMemCtrl_regMemAdr_23_and0001,
      O => eppctroller_instNexysOnBoardMemCtrl_regMemAdr_18_mux0000_367
    );
  eppctroller_instNexysOnBoardMemCtrl_regMemAdr_15_mux0000 : LUT4
    generic map(
      INIT => X"E22E"
    )
    port map (
      I0 => N68,
      I1 => eppctroller_instNexysOnBoardMemCtrl_regMemAdr_8_and0001,
      I2 => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(15),
      I3 => N56,
      O => eppctroller_instNexysOnBoardMemCtrl_regMemAdr_15_mux0000_361
    );
  eppctroller_instNexysOnBoardMemCtrl_regMemAdr_13_mux0000 : LUT4
    generic map(
      INIT => X"E22E"
    )
    port map (
      I0 => N70,
      I1 => eppctroller_instNexysOnBoardMemCtrl_regMemAdr_8_and0001,
      I2 => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(13),
      I3 => N58,
      O => eppctroller_instNexysOnBoardMemCtrl_regMemAdr_13_mux0000_357
    );
  eppctroller_instNexysOnBoardMemCtrl_regMemAdr_10_mux0000_SW0 : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(9),
      I1 => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(8),
      O => N60
    );
  eppctroller_instNexysOnBoardMemCtrl_regMemAdr_10_mux0000 : LUT4
    generic map(
      INIT => X"E22E"
    )
    port map (
      I0 => N73,
      I1 => eppctroller_instNexysOnBoardMemCtrl_regMemAdr_8_and0001,
      I2 => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(10),
      I3 => N60,
      O => eppctroller_instNexysOnBoardMemCtrl_regMemAdr_10_mux0000_351
    );
  eppctroller_instNexysOnBoardMemCtrl_regMemAdr_3_mux0000_SW0 : LUT3
    generic map(
      INIT => X"7F"
    )
    port map (
      I0 => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(0),
      I1 => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(2),
      I2 => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(1),
      O => N62
    );
  eppctroller_instNexysOnBoardMemCtrl_regMemAdr_3_mux0000 : LUT4
    generic map(
      INIT => X"E22E"
    )
    port map (
      I0 => N72,
      I1 => eppctroller_instNexysOnBoardMemCtrl_ctlMsmAdrInc,
      I2 => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(3),
      I3 => N62,
      O => eppctroller_instNexysOnBoardMemCtrl_regMemAdr_3_mux0000_385
    );
  eppctroller_instNexysOnBoardMemCtrl_regMemAdr_19_mux0000_SW0 : LUT3
    generic map(
      INIT => X"7F"
    )
    port map (
      I0 => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(18),
      I1 => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(17),
      I2 => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(16),
      O => N64
    );
  eppctroller_instNexysOnBoardMemCtrl_regMemAdr_19_mux0000 : LUT4
    generic map(
      INIT => X"C3AA"
    )
    port map (
      I0 => N72,
      I1 => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(19),
      I2 => N64,
      I3 => eppctroller_instNexysOnBoardMemCtrl_regMemAdr_23_and0001,
      O => eppctroller_instNexysOnBoardMemCtrl_regMemAdr_19_mux0000_369
    );
  eppctroller_instNexysOnBoardMemCtrl_regMemAdr_11_mux0000_SW0 : LUT3
    generic map(
      INIT => X"7F"
    )
    port map (
      I0 => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(10),
      I1 => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(9),
      I2 => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(8),
      O => N66
    );
  eppctroller_instNexysOnBoardMemCtrl_regMemAdr_11_mux0000 : LUT4
    generic map(
      INIT => X"E22E"
    )
    port map (
      I0 => N72,
      I1 => eppctroller_instNexysOnBoardMemCtrl_regMemAdr_8_and0001,
      I2 => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(11),
      I3 => N66,
      O => eppctroller_instNexysOnBoardMemCtrl_regMemAdr_11_mux0000_353
    );
  eppctroller_instEppCtrl_busEppInternal_7_4 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => eppctroller_instNexysOnBoardMemCtrl_EppRdDataOut_and0003,
      I1 => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(23),
      I2 => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(7),
      I3 => eppctroller_instNexysOnBoardMemCtrl_EppRdDataOut_and0001,
      O => eppctroller_instEppCtrl_busEppInternal_7_4_260
    );
  eppctroller_instEppCtrl_busEppInternal_7_9 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => eppctroller_instNexysOnBoardMemCtrl_EppRdDataOut_and0000,
      I1 => eppctroller_instNexysOnBoardMemCtrl_regMemCtl(7),
      I2 => eppctroller_instNexysOnBoardMemCtrl_EppRdDataOut_and0002,
      I3 => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(15),
      O => eppctroller_instEppCtrl_busEppInternal_7_9_262
    );
  eppctroller_instEppCtrl_busEppInternal_7_33 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => N84,
      I1 => N13,
      O => eppctroller_instEppCtrl_busEppInternal_7_33_258
    );
  eppctroller_instEppCtrl_busEppInternal_7_47 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => eppctroller_instNexysOnBoardMemCtrl_regMemWrData(7),
      I1 => N22,
      I2 => N17,
      I3 => eppctroller_instEppCtrl_busEppInternal_7_36_259,
      O => eppctroller_instEppCtrl_busEppInternal_7_47_261
    );
  eppctroller_instEppCtrl_busEppInternal_6_4 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => eppctroller_instNexysOnBoardMemCtrl_EppRdDataOut_and0003,
      I1 => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(22),
      I2 => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(6),
      I3 => eppctroller_instNexysOnBoardMemCtrl_EppRdDataOut_and0001,
      O => eppctroller_instEppCtrl_busEppInternal_6_4_254
    );
  eppctroller_instEppCtrl_busEppInternal_6_9 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => eppctroller_instNexysOnBoardMemCtrl_EppRdDataOut_and0000,
      I1 => eppctroller_instNexysOnBoardMemCtrl_regMemCtl(6),
      I2 => eppctroller_instNexysOnBoardMemCtrl_EppRdDataOut_and0002,
      I3 => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(14),
      O => eppctroller_instEppCtrl_busEppInternal_6_9_256
    );
  eppctroller_instEppCtrl_busEppInternal_6_33 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => N85,
      I1 => N13,
      O => eppctroller_instEppCtrl_busEppInternal_6_33_252
    );
  eppctroller_instEppCtrl_busEppInternal_6_47 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => eppctroller_instNexysOnBoardMemCtrl_regMemWrData(6),
      I1 => N22,
      I2 => N17,
      I3 => eppctroller_instEppCtrl_busEppInternal_6_36_253,
      O => eppctroller_instEppCtrl_busEppInternal_6_47_255
    );
  eppctroller_instEppCtrl_busEppInternal_5_4 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => eppctroller_instNexysOnBoardMemCtrl_EppRdDataOut_and0003,
      I1 => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(21),
      I2 => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(5),
      I3 => eppctroller_instNexysOnBoardMemCtrl_EppRdDataOut_and0001,
      O => eppctroller_instEppCtrl_busEppInternal_5_4_248
    );
  eppctroller_instEppCtrl_busEppInternal_5_9 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => eppctroller_instNexysOnBoardMemCtrl_EppRdDataOut_and0000,
      I1 => eppctroller_instNexysOnBoardMemCtrl_regMemCtl(5),
      I2 => eppctroller_instNexysOnBoardMemCtrl_EppRdDataOut_and0002,
      I3 => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(13),
      O => eppctroller_instEppCtrl_busEppInternal_5_9_250
    );
  eppctroller_instEppCtrl_busEppInternal_5_33 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => N86,
      I1 => N13,
      O => eppctroller_instEppCtrl_busEppInternal_5_33_246
    );
  eppctroller_instEppCtrl_busEppInternal_5_47 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => eppctroller_instNexysOnBoardMemCtrl_regMemWrData(5),
      I1 => N22,
      I2 => N17,
      I3 => eppctroller_instEppCtrl_busEppInternal_5_36_247,
      O => eppctroller_instEppCtrl_busEppInternal_5_47_249
    );
  eppctroller_instEppCtrl_busEppInternal_4_4 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => eppctroller_instNexysOnBoardMemCtrl_EppRdDataOut_and0003,
      I1 => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(20),
      I2 => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(4),
      I3 => eppctroller_instNexysOnBoardMemCtrl_EppRdDataOut_and0001,
      O => eppctroller_instEppCtrl_busEppInternal_4_4_242
    );
  eppctroller_instEppCtrl_busEppInternal_4_9 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => eppctroller_instNexysOnBoardMemCtrl_EppRdDataOut_and0000,
      I1 => eppctroller_instNexysOnBoardMemCtrl_regMemCtl(4),
      I2 => eppctroller_instNexysOnBoardMemCtrl_EppRdDataOut_and0002,
      I3 => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(12),
      O => eppctroller_instEppCtrl_busEppInternal_4_9_244
    );
  eppctroller_instEppCtrl_busEppInternal_4_33 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => N87,
      I1 => N13,
      O => eppctroller_instEppCtrl_busEppInternal_4_33_240
    );
  eppctroller_instEppCtrl_busEppInternal_4_47 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => eppctroller_instNexysOnBoardMemCtrl_regMemWrData(4),
      I1 => N22,
      I2 => N17,
      I3 => eppctroller_instEppCtrl_busEppInternal_4_36_241,
      O => eppctroller_instEppCtrl_busEppInternal_4_47_243
    );
  eppctroller_instEppCtrl_busEppInternal_3_4 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => eppctroller_instNexysOnBoardMemCtrl_EppRdDataOut_and0003,
      I1 => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(19),
      I2 => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(3),
      I3 => eppctroller_instNexysOnBoardMemCtrl_EppRdDataOut_and0001,
      O => eppctroller_instEppCtrl_busEppInternal_3_4_236
    );
  eppctroller_instEppCtrl_busEppInternal_3_9 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => eppctroller_instNexysOnBoardMemCtrl_EppRdDataOut_and0000,
      I1 => eppctroller_instNexysOnBoardMemCtrl_regMemCtl(3),
      I2 => eppctroller_instNexysOnBoardMemCtrl_EppRdDataOut_and0002,
      I3 => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(11),
      O => eppctroller_instEppCtrl_busEppInternal_3_9_238
    );
  eppctroller_instEppCtrl_busEppInternal_3_33 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => N88,
      I1 => N13,
      O => eppctroller_instEppCtrl_busEppInternal_3_33_234
    );
  eppctroller_instEppCtrl_busEppInternal_3_47 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => eppctroller_instNexysOnBoardMemCtrl_regMemWrData(3),
      I1 => N22,
      I2 => N17,
      I3 => eppctroller_instEppCtrl_busEppInternal_3_36_235,
      O => eppctroller_instEppCtrl_busEppInternal_3_47_237
    );
  eppctroller_instEppCtrl_busEppInternal_2_4 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => eppctroller_instNexysOnBoardMemCtrl_EppRdDataOut_and0003,
      I1 => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(18),
      I2 => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(2),
      I3 => eppctroller_instNexysOnBoardMemCtrl_EppRdDataOut_and0001,
      O => eppctroller_instEppCtrl_busEppInternal_2_4_230
    );
  eppctroller_instEppCtrl_busEppInternal_2_9 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => eppctroller_instNexysOnBoardMemCtrl_EppRdDataOut_and0000,
      I1 => eppctroller_instNexysOnBoardMemCtrl_regMemCtl(2),
      I2 => eppctroller_instNexysOnBoardMemCtrl_EppRdDataOut_and0002,
      I3 => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(10),
      O => eppctroller_instEppCtrl_busEppInternal_2_9_232
    );
  eppctroller_instEppCtrl_busEppInternal_2_33 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => N89,
      I1 => N13,
      O => eppctroller_instEppCtrl_busEppInternal_2_33_228
    );
  eppctroller_instEppCtrl_busEppInternal_2_47 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => eppctroller_instNexysOnBoardMemCtrl_regMemWrData(2),
      I1 => N22,
      I2 => N17,
      I3 => eppctroller_instEppCtrl_busEppInternal_2_36_229,
      O => eppctroller_instEppCtrl_busEppInternal_2_47_231
    );
  eppctroller_instEppCtrl_busEppInternal_1_4 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => eppctroller_instNexysOnBoardMemCtrl_EppRdDataOut_and0003,
      I1 => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(17),
      I2 => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(1),
      I3 => eppctroller_instNexysOnBoardMemCtrl_EppRdDataOut_and0001,
      O => eppctroller_instEppCtrl_busEppInternal_1_4_224
    );
  eppctroller_instEppCtrl_busEppInternal_1_9 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => eppctroller_instNexysOnBoardMemCtrl_EppRdDataOut_and0000,
      I1 => eppctroller_instNexysOnBoardMemCtrl_regMemCtl(1),
      I2 => eppctroller_instNexysOnBoardMemCtrl_EppRdDataOut_and0002,
      I3 => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(9),
      O => eppctroller_instEppCtrl_busEppInternal_1_9_226
    );
  eppctroller_instEppCtrl_busEppInternal_1_33 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => N90,
      I1 => N13,
      O => eppctroller_instEppCtrl_busEppInternal_1_33_222
    );
  eppctroller_instEppCtrl_busEppInternal_1_47 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => eppctroller_instNexysOnBoardMemCtrl_regMemWrData(1),
      I1 => N22,
      I2 => N17,
      I3 => eppctroller_instEppCtrl_busEppInternal_1_36_223,
      O => eppctroller_instEppCtrl_busEppInternal_1_47_225
    );
  eppctroller_instEppCtrl_busEppInternal_0_4 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => eppctroller_instNexysOnBoardMemCtrl_EppRdDataOut_and0003,
      I1 => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(16),
      I2 => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(0),
      I3 => eppctroller_instNexysOnBoardMemCtrl_EppRdDataOut_and0001,
      O => eppctroller_instEppCtrl_busEppInternal_0_4_218
    );
  eppctroller_instEppCtrl_busEppInternal_0_9 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => eppctroller_instNexysOnBoardMemCtrl_EppRdDataOut_and0000,
      I1 => eppctroller_instNexysOnBoardMemCtrl_regMemCtl(0),
      I2 => eppctroller_instNexysOnBoardMemCtrl_EppRdDataOut_and0002,
      I3 => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(8),
      O => eppctroller_instEppCtrl_busEppInternal_0_9_220
    );
  eppctroller_instEppCtrl_busEppInternal_0_33 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => N91,
      I1 => N13,
      O => eppctroller_instEppCtrl_busEppInternal_0_33_216
    );
  eppctroller_instEppCtrl_busEppInternal_0_47 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => eppctroller_instNexysOnBoardMemCtrl_regMemWrData(0),
      I1 => N22,
      I2 => N17,
      I3 => eppctroller_instEppCtrl_busEppInternal_0_36_217,
      O => eppctroller_instEppCtrl_busEppInternal_0_47_219
    );
  PWR_IBUF : IBUF
    port map (
      I => PWR,
      O => PWR_IBUF_205
    );
  BTN_IBUF : IBUF
    port map (
      I => BTN,
      O => BTN_IBUF_3
    );
  DSTB_IBUF : IBUF
    port map (
      I => DSTB,
      O => DSTB_IBUF_7
    );
  ASTB_IBUF : IBUF
    port map (
      I => ASTB,
      O => ASTB_IBUF_1
    );
  PDATA_7_IOBUF : IOBUF
    port map (
      I => eppctroller_instEppCtrl_busEppInternal(7),
      T => eppctroller_instEppCtrl_ctlEppRdCycleOut_inv,
      O => N68,
      IO => PDATA(7)
    );
  PDATA_6_IOBUF : IOBUF
    port map (
      I => eppctroller_instEppCtrl_busEppInternal(6),
      T => eppctroller_instEppCtrl_ctlEppRdCycleOut_inv,
      O => N69,
      IO => PDATA(6)
    );
  PDATA_5_IOBUF : IOBUF
    port map (
      I => eppctroller_instEppCtrl_busEppInternal(5),
      T => eppctroller_instEppCtrl_ctlEppRdCycleOut_inv,
      O => N70,
      IO => PDATA(5)
    );
  PDATA_4_IOBUF : IOBUF
    port map (
      I => eppctroller_instEppCtrl_busEppInternal(4),
      T => eppctroller_instEppCtrl_ctlEppRdCycleOut_inv,
      O => N71,
      IO => PDATA(4)
    );
  PDATA_3_IOBUF : IOBUF
    port map (
      I => eppctroller_instEppCtrl_busEppInternal(3),
      T => eppctroller_instEppCtrl_ctlEppRdCycleOut_inv,
      O => N72,
      IO => PDATA(3)
    );
  PDATA_2_IOBUF : IOBUF
    port map (
      I => eppctroller_instEppCtrl_busEppInternal(2),
      T => eppctroller_instEppCtrl_ctlEppRdCycleOut_inv,
      O => N73,
      IO => PDATA(2)
    );
  PDATA_1_IOBUF : IOBUF
    port map (
      I => eppctroller_instEppCtrl_busEppInternal(1),
      T => eppctroller_instEppCtrl_ctlEppRdCycleOut_inv,
      O => N74,
      IO => PDATA(1)
    );
  PDATA_0_IOBUF : IOBUF
    port map (
      I => eppctroller_instEppCtrl_busEppInternal(0),
      T => eppctroller_instEppCtrl_ctlEppRdCycleOut_inv,
      O => N75,
      IO => PDATA(0)
    );
  MemDB_15_IOBUF : IOBUF
    port map (
      I => eppctroller_instNexysOnBoardMemCtrl_busMemOut(15),
      T => eppctroller_instNexysOnBoardMemCtrl_MemDB_and0000_inv,
      O => N76,
      IO => MemDB(15)
    );
  MemDB_14_IOBUF : IOBUF
    port map (
      I => eppctroller_instNexysOnBoardMemCtrl_busMemOut(14),
      T => eppctroller_instNexysOnBoardMemCtrl_MemDB_and0000_inv,
      O => N77,
      IO => MemDB(14)
    );
  MemDB_13_IOBUF : IOBUF
    port map (
      I => eppctroller_instNexysOnBoardMemCtrl_busMemOut(13),
      T => eppctroller_instNexysOnBoardMemCtrl_MemDB_and0000_inv,
      O => N78,
      IO => MemDB(13)
    );
  MemDB_12_IOBUF : IOBUF
    port map (
      I => eppctroller_instNexysOnBoardMemCtrl_busMemOut(12),
      T => eppctroller_instNexysOnBoardMemCtrl_MemDB_and0000_inv,
      O => N79,
      IO => MemDB(12)
    );
  MemDB_11_IOBUF : IOBUF
    port map (
      I => eppctroller_instNexysOnBoardMemCtrl_busMemOut(11),
      T => eppctroller_instNexysOnBoardMemCtrl_MemDB_and0000_inv,
      O => N80,
      IO => MemDB(11)
    );
  MemDB_10_IOBUF : IOBUF
    port map (
      I => eppctroller_instNexysOnBoardMemCtrl_busMemOut(10),
      T => eppctroller_instNexysOnBoardMemCtrl_MemDB_and0000_inv,
      O => N81,
      IO => MemDB(10)
    );
  MemDB_9_IOBUF : IOBUF
    port map (
      I => eppctroller_instNexysOnBoardMemCtrl_busMemOut(9),
      T => eppctroller_instNexysOnBoardMemCtrl_MemDB_and0000_inv,
      O => N82,
      IO => MemDB(9)
    );
  MemDB_8_IOBUF : IOBUF
    port map (
      I => eppctroller_instNexysOnBoardMemCtrl_busMemOut(8),
      T => eppctroller_instNexysOnBoardMemCtrl_MemDB_and0000_inv,
      O => N83,
      IO => MemDB(8)
    );
  MemDB_7_IOBUF : IOBUF
    port map (
      I => eppctroller_instNexysOnBoardMemCtrl_busMemOut(7),
      T => eppctroller_instNexysOnBoardMemCtrl_MemDB_and0000_inv,
      O => N84,
      IO => MemDB(7)
    );
  MemDB_6_IOBUF : IOBUF
    port map (
      I => eppctroller_instNexysOnBoardMemCtrl_busMemOut(6),
      T => eppctroller_instNexysOnBoardMemCtrl_MemDB_and0000_inv,
      O => N85,
      IO => MemDB(6)
    );
  MemDB_5_IOBUF : IOBUF
    port map (
      I => eppctroller_instNexysOnBoardMemCtrl_busMemOut(5),
      T => eppctroller_instNexysOnBoardMemCtrl_MemDB_and0000_inv,
      O => N86,
      IO => MemDB(5)
    );
  MemDB_4_IOBUF : IOBUF
    port map (
      I => eppctroller_instNexysOnBoardMemCtrl_busMemOut(4),
      T => eppctroller_instNexysOnBoardMemCtrl_MemDB_and0000_inv,
      O => N87,
      IO => MemDB(4)
    );
  MemDB_3_IOBUF : IOBUF
    port map (
      I => eppctroller_instNexysOnBoardMemCtrl_busMemOut(3),
      T => eppctroller_instNexysOnBoardMemCtrl_MemDB_and0000_inv,
      O => N88,
      IO => MemDB(3)
    );
  MemDB_2_IOBUF : IOBUF
    port map (
      I => eppctroller_instNexysOnBoardMemCtrl_busMemOut(2),
      T => eppctroller_instNexysOnBoardMemCtrl_MemDB_and0000_inv,
      O => N89,
      IO => MemDB(2)
    );
  MemDB_1_IOBUF : IOBUF
    port map (
      I => eppctroller_instNexysOnBoardMemCtrl_busMemOut(1),
      T => eppctroller_instNexysOnBoardMemCtrl_MemDB_and0000_inv,
      O => N90,
      IO => MemDB(1)
    );
  MemDB_0_IOBUF : IOBUF
    port map (
      I => eppctroller_instNexysOnBoardMemCtrl_busMemOut(0),
      T => eppctroller_instNexysOnBoardMemCtrl_MemDB_and0000_inv,
      O => N91,
      IO => MemDB(0)
    );
  RamCLK_OBUFT : OBUFT
    port map (
      I => N0,
      T => eppctroller_instNexysOnBoardMemCtrl_regMemCtl_4_inv,
      O => RamCLK
    );
  PWAIT_OBUF : OBUF
    port map (
      I => PWAIT_OBUF_203,
      O => PWAIT
    );
  RamUB_OBUFT : OBUFT
    port map (
      I => eppctroller_instNexysOnBoardMemCtrl_RamUB_mux0000,
      T => eppctroller_instNexysOnBoardMemCtrl_regMemCtl_4_inv,
      O => RamUB
    );
  RamCRE_OBUFT : OBUFT
    port map (
      I => N0,
      T => eppctroller_instNexysOnBoardMemCtrl_regMemCtl_4_inv,
      O => RamCRE
    );
  FlashCS_OBUFT : OBUFT
    port map (
      I => eppctroller_instNexysOnBoardMemCtrl_FlashCS_mux0000,
      T => eppctroller_instNexysOnBoardMemCtrl_regMemCtl_4_inv,
      O => FlashCS
    );
  MemOE_OBUFT : OBUFT
    port map (
      I => eppctroller_instNexysOnBoardMemCtrl_MemOE_mux0000_302,
      T => eppctroller_instNexysOnBoardMemCtrl_regMemCtl_4_inv,
      O => MemOE
    );
  MemWR_OBUFT : OBUFT
    port map (
      I => eppctroller_instNexysOnBoardMemCtrl_MemWR_mux0000_303,
      T => eppctroller_instNexysOnBoardMemCtrl_regMemCtl_4_inv,
      O => MemWR
    );
  RamADV_OBUFT : OBUFT
    port map (
      I => N0,
      T => eppctroller_instNexysOnBoardMemCtrl_regMemCtl_4_inv,
      O => RamADV
    );
  RamCS_OBUFT : OBUFT
    port map (
      I => eppctroller_instNexysOnBoardMemCtrl_RamCS_mux0000_313,
      T => eppctroller_instNexysOnBoardMemCtrl_regMemCtl_4_inv,
      O => RamCS
    );
  FlashRP_OBUFT : OBUFT
    port map (
      I => N1,
      T => eppctroller_instNexysOnBoardMemCtrl_regMemCtl_4_inv,
      O => FlashRP
    );
  RamLB_OBUFT : OBUFT
    port map (
      I => eppctroller_instNexysOnBoardMemCtrl_RamLB_mux0000,
      T => eppctroller_instNexysOnBoardMemCtrl_regMemCtl_4_inv,
      O => RamLB
    );
  MemAdr_23_OBUFT : OBUFT
    port map (
      I => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(23),
      T => eppctroller_instNexysOnBoardMemCtrl_regMemCtl_4_inv,
      O => MemAdr(23)
    );
  MemAdr_22_OBUFT : OBUFT
    port map (
      I => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(22),
      T => eppctroller_instNexysOnBoardMemCtrl_regMemCtl_4_inv,
      O => MemAdr(22)
    );
  MemAdr_21_OBUFT : OBUFT
    port map (
      I => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(21),
      T => eppctroller_instNexysOnBoardMemCtrl_regMemCtl_4_inv,
      O => MemAdr(21)
    );
  MemAdr_20_OBUFT : OBUFT
    port map (
      I => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(20),
      T => eppctroller_instNexysOnBoardMemCtrl_regMemCtl_4_inv,
      O => MemAdr(20)
    );
  MemAdr_19_OBUFT : OBUFT
    port map (
      I => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(19),
      T => eppctroller_instNexysOnBoardMemCtrl_regMemCtl_4_inv,
      O => MemAdr(19)
    );
  MemAdr_18_OBUFT : OBUFT
    port map (
      I => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(18),
      T => eppctroller_instNexysOnBoardMemCtrl_regMemCtl_4_inv,
      O => MemAdr(18)
    );
  MemAdr_17_OBUFT : OBUFT
    port map (
      I => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(17),
      T => eppctroller_instNexysOnBoardMemCtrl_regMemCtl_4_inv,
      O => MemAdr(17)
    );
  MemAdr_16_OBUFT : OBUFT
    port map (
      I => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(16),
      T => eppctroller_instNexysOnBoardMemCtrl_regMemCtl_4_inv,
      O => MemAdr(16)
    );
  MemAdr_15_OBUFT : OBUFT
    port map (
      I => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(15),
      T => eppctroller_instNexysOnBoardMemCtrl_regMemCtl_4_inv,
      O => MemAdr(15)
    );
  MemAdr_14_OBUFT : OBUFT
    port map (
      I => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(14),
      T => eppctroller_instNexysOnBoardMemCtrl_regMemCtl_4_inv,
      O => MemAdr(14)
    );
  MemAdr_13_OBUFT : OBUFT
    port map (
      I => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(13),
      T => eppctroller_instNexysOnBoardMemCtrl_regMemCtl_4_inv,
      O => MemAdr(13)
    );
  MemAdr_12_OBUFT : OBUFT
    port map (
      I => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(12),
      T => eppctroller_instNexysOnBoardMemCtrl_regMemCtl_4_inv,
      O => MemAdr(12)
    );
  MemAdr_11_OBUFT : OBUFT
    port map (
      I => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(11),
      T => eppctroller_instNexysOnBoardMemCtrl_regMemCtl_4_inv,
      O => MemAdr(11)
    );
  MemAdr_10_OBUFT : OBUFT
    port map (
      I => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(10),
      T => eppctroller_instNexysOnBoardMemCtrl_regMemCtl_4_inv,
      O => MemAdr(10)
    );
  MemAdr_9_OBUFT : OBUFT
    port map (
      I => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(9),
      T => eppctroller_instNexysOnBoardMemCtrl_regMemCtl_4_inv,
      O => MemAdr(9)
    );
  MemAdr_8_OBUFT : OBUFT
    port map (
      I => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(8),
      T => eppctroller_instNexysOnBoardMemCtrl_regMemCtl_4_inv,
      O => MemAdr(8)
    );
  MemAdr_7_OBUFT : OBUFT
    port map (
      I => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(7),
      T => eppctroller_instNexysOnBoardMemCtrl_regMemCtl_4_inv,
      O => MemAdr(7)
    );
  MemAdr_6_OBUFT : OBUFT
    port map (
      I => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(6),
      T => eppctroller_instNexysOnBoardMemCtrl_regMemCtl_4_inv,
      O => MemAdr(6)
    );
  MemAdr_5_OBUFT : OBUFT
    port map (
      I => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(5),
      T => eppctroller_instNexysOnBoardMemCtrl_regMemCtl_4_inv,
      O => MemAdr(5)
    );
  MemAdr_4_OBUFT : OBUFT
    port map (
      I => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(4),
      T => eppctroller_instNexysOnBoardMemCtrl_regMemCtl_4_inv,
      O => MemAdr(4)
    );
  MemAdr_3_OBUFT : OBUFT
    port map (
      I => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(3),
      T => eppctroller_instNexysOnBoardMemCtrl_regMemCtl_4_inv,
      O => MemAdr(3)
    );
  MemAdr_2_OBUFT : OBUFT
    port map (
      I => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(2),
      T => eppctroller_instNexysOnBoardMemCtrl_regMemCtl_4_inv,
      O => MemAdr(2)
    );
  MemAdr_1_OBUFT : OBUFT
    port map (
      I => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(1),
      T => eppctroller_instNexysOnBoardMemCtrl_regMemCtl_4_inv,
      O => MemAdr(1)
    );
  eppctroller_instNexysOnBoardMemCtrl_regMemRdData_7 : FDS
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_5,
      D => eppctroller_instNexysOnBoardMemCtrl_regMemRdData_mux0000_7_9_444,
      S => eppctroller_instNexysOnBoardMemCtrl_regMemRdData_mux0000_7_4_443,
      Q => eppctroller_instNexysOnBoardMemCtrl_regMemRdData(7)
    );
  eppctroller_instNexysOnBoardMemCtrl_regMemRdData_6 : FDS
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_5,
      D => eppctroller_instNexysOnBoardMemCtrl_regMemRdData_mux0000_6_9_442,
      S => eppctroller_instNexysOnBoardMemCtrl_regMemRdData_mux0000_6_4_441,
      Q => eppctroller_instNexysOnBoardMemCtrl_regMemRdData(6)
    );
  eppctroller_instNexysOnBoardMemCtrl_regMemRdData_5 : FDS
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_5,
      D => eppctroller_instNexysOnBoardMemCtrl_regMemRdData_mux0000_5_9_440,
      S => eppctroller_instNexysOnBoardMemCtrl_regMemRdData_mux0000_5_4_439,
      Q => eppctroller_instNexysOnBoardMemCtrl_regMemRdData(5)
    );
  eppctroller_instNexysOnBoardMemCtrl_regMemRdData_4 : FDS
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_5,
      D => eppctroller_instNexysOnBoardMemCtrl_regMemRdData_mux0000_4_9_438,
      S => eppctroller_instNexysOnBoardMemCtrl_regMemRdData_mux0000_4_4_437,
      Q => eppctroller_instNexysOnBoardMemCtrl_regMemRdData(4)
    );
  eppctroller_instNexysOnBoardMemCtrl_regMemRdData_3 : FDS
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_5,
      D => eppctroller_instNexysOnBoardMemCtrl_regMemRdData_mux0000_3_9_436,
      S => eppctroller_instNexysOnBoardMemCtrl_regMemRdData_mux0000_3_4_435,
      Q => eppctroller_instNexysOnBoardMemCtrl_regMemRdData(3)
    );
  eppctroller_instNexysOnBoardMemCtrl_regMemRdData_2 : FDS
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_5,
      D => eppctroller_instNexysOnBoardMemCtrl_regMemRdData_mux0000_2_9_434,
      S => eppctroller_instNexysOnBoardMemCtrl_regMemRdData_mux0000_2_4_433,
      Q => eppctroller_instNexysOnBoardMemCtrl_regMemRdData(2)
    );
  eppctroller_instNexysOnBoardMemCtrl_regMemRdData_1 : FDS
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_5,
      D => eppctroller_instNexysOnBoardMemCtrl_regMemRdData_mux0000_1_9_432,
      S => eppctroller_instNexysOnBoardMemCtrl_regMemRdData_mux0000_1_4_431,
      Q => eppctroller_instNexysOnBoardMemCtrl_regMemRdData(1)
    );
  eppctroller_instNexysOnBoardMemCtrl_regMemRdData_0 : FDS
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_5,
      D => eppctroller_instNexysOnBoardMemCtrl_regMemRdData_mux0000_0_9_430,
      S => eppctroller_instNexysOnBoardMemCtrl_regMemRdData_mux0000_0_4_429,
      Q => eppctroller_instNexysOnBoardMemCtrl_regMemRdData(0)
    );
  eppctroller_instNexysOnBoardMemCtrl_Mmux_stMsmNext_81 : LUT4
    generic map(
      INIT => X"E4A0"
    )
    port map (
      I0 => eppctroller_instNexysOnBoardMemCtrl_stMsmCur(0),
      I1 => eppctroller_instNexysOnBoardMemCtrl_flagBlindCycle_and0002,
      I2 => eppctroller_instNexysOnBoardMemCtrl_stMsmNext_cmp_eq0002,
      I3 => N247,
      O => eppctroller_instNexysOnBoardMemCtrl_Mmux_stMsmNext_81_311
    );
  eppctroller_instNexysOnBoardMemCtrl_stMsmCur_1_SW2 : LUT4
    generic map(
      INIT => X"EFFF"
    )
    port map (
      I0 => eppctroller_instNexysOnBoardMemCtrl_DelayCnt(1),
      I1 => N84,
      I2 => eppctroller_instNexysOnBoardMemCtrl_DelayCnt(2),
      I3 => eppctroller_instNexysOnBoardMemCtrl_DelayCnt(0),
      O => N123
    );
  eppctroller_instNexysOnBoardMemCtrl_stMsmCur_1_Q : LUT4
    generic map(
      INIT => X"62EA"
    )
    port map (
      I0 => eppctroller_instNexysOnBoardMemCtrl_stMsmCur(1),
      I1 => eppctroller_instNexysOnBoardMemCtrl_stMsmCur(0),
      I2 => N123,
      I3 => N243,
      O => eppctroller_instNexysOnBoardMemCtrl_stMsmCur_1_1
    );
  eppctroller_instNexysOnBoardMemCtrl_flagFlashAutoWr_cmp_eq00003 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => N42,
      I1 => eppctroller_instEppCtrl_regEppAdrOut(6),
      I2 => eppctroller_instEppCtrl_regEppAdrOut(4),
      I3 => N245,
      O => eppctroller_instNexysOnBoardMemCtrl_flagFlashAutoWr_cmp_eq0000
    );
  eppctroller_instNexysOnBoardMemCtrl_flagMsmCycle_and000011 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => eppctroller_instEppCtrl_regEppAdrOut(5),
      I1 => eppctroller_instEppCtrl_regEppAdrOut(3),
      I2 => eppctroller_instEppCtrl_regEppAdrOut(6),
      I3 => N246,
      O => eppctroller_XLXN_1266
    );
  eppctroller_instNexysOnBoardMemCtrl_stMsmCur_3_SW1 : LUT3
    generic map(
      INIT => X"51"
    )
    port map (
      I0 => eppctroller_instNexysOnBoardMemCtrl_stMsmCur(1),
      I1 => eppctroller_instNexysOnBoardMemCtrl_flagMsmCycle_and0000,
      I2 => N116,
      O => N132
    );
  eppctroller_instNexysOnBoardMemCtrl_stMsmCur_3_Q : LUT4
    generic map(
      INIT => X"F0E4"
    )
    port map (
      I0 => eppctroller_instNexysOnBoardMemCtrl_stMsmCur(0),
      I1 => N121,
      I2 => N120,
      I3 => N132,
      O => eppctroller_instNexysOnBoardMemCtrl_stMsmNext(1)
    );
  eppctroller_instNexysOnBoardMemCtrl_flagMsmCycle_and00002_SW0 : LUT4
    generic map(
      INIT => X"DFFF"
    )
    port map (
      I0 => eppctroller_instEppCtrl_stEppCur(1),
      I1 => eppctroller_instEppCtrl_ctlEppRdCycleOut_264,
      I2 => eppctroller_instEppCtrl_stEppCur(2),
      I3 => eppctroller_instEppCtrl_stEppCur(0),
      O => N136
    );
  eppctroller_instNexysOnBoardMemCtrl_Mmux_stMsmNext_71 : LUT4
    generic map(
      INIT => X"B380"
    )
    port map (
      I0 => eppctroller_instNexysOnBoardMemCtrl_stMsmNext_and0000,
      I1 => eppctroller_instNexysOnBoardMemCtrl_stMsmCur(0),
      I2 => N84,
      I3 => eppctroller_instNexysOnBoardMemCtrl_stMsmNext_and0001,
      O => eppctroller_instNexysOnBoardMemCtrl_Mmux_stMsmNext_71_308
    );
  eppctroller_instNexysOnBoardMemCtrl_regMemRdData_mux0000_0_3_SW0 : LUT4
    generic map(
      INIT => X"FBFF"
    )
    port map (
      I0 => eppctroller_instEppCtrl_regEppAdrOut(0),
      I1 => eppctroller_instNexysOnBoardMemCtrl_stMsmCur(3),
      I2 => eppctroller_instNexysOnBoardMemCtrl_stMsmCur(2),
      I3 => eppctroller_instNexysOnBoardMemCtrl_stMsmCur(1),
      O => N21
    );
  eppctroller_instNexysOnBoardMemCtrl_flagMsmCycle_and000011_SW1 : LUT4
    generic map(
      INIT => X"BFFF"
    )
    port map (
      I0 => eppctroller_instEppCtrl_regEppAdrOut(6),
      I1 => eppctroller_instEppCtrl_stEppCur(1),
      I2 => eppctroller_instEppCtrl_stEppCur(0),
      I3 => eppctroller_instEppCtrl_stEppCur(2),
      O => N141
    );
  eppctroller_instNexysOnBoardMemCtrl_regMemRdData_mux0000_1_4 : LUT4
    generic map(
      INIT => X"AE0C"
    )
    port map (
      I0 => eppctroller_instNexysOnBoardMemCtrl_regMemRdDataAux(1),
      I1 => N411,
      I2 => N143,
      I3 => N19,
      O => eppctroller_instNexysOnBoardMemCtrl_regMemRdData_mux0000_1_4_431
    );
  eppctroller_instNexysOnBoardMemCtrl_regMemRdData_mux0000_0_41 : LUT4
    generic map(
      INIT => X"AE0C"
    )
    port map (
      I0 => eppctroller_instNexysOnBoardMemCtrl_regMemRdDataAux(0),
      I1 => N411,
      I2 => N145,
      I3 => N19,
      O => eppctroller_instNexysOnBoardMemCtrl_regMemRdData_mux0000_0_4_429
    );
  eppctroller_instNexysOnBoardMemCtrl_regMemAdr_8_and00011 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => eppctroller_instNexysOnBoardMemCtrl_carryoutL_cmp_eq00009_339,
      I1 => eppctroller_instNexysOnBoardMemCtrl_Madd_regMemAdr_7_0_add0000_cy_3_Q,
      I2 => N234,
      O => eppctroller_instNexysOnBoardMemCtrl_regMemAdr_8_and0001
    );
  eppctroller_instNexysOnBoardMemCtrl_regMemRdData_mux0000_0_4_SW0 : LUT4
    generic map(
      INIT => X"F7FF"
    )
    port map (
      I0 => eppctroller_instEppCtrl_regEppAdrOut(0),
      I1 => eppctroller_instEppCtrl_regEppAdrOut(1),
      I2 => eppctroller_instNexysOnBoardMemCtrl_regMemCtl(5),
      I3 => eppctroller_instEppCtrl_regEppAdrOut(2),
      O => N150
    );
  eppctroller_instNexysOnBoardMemCtrl_regMemRdData_mux0000_0_122 : LUT4
    generic map(
      INIT => X"FDF1"
    )
    port map (
      I0 => eppctroller_instNexysOnBoardMemCtrl_stMsmCur(3),
      I1 => eppctroller_instNexysOnBoardMemCtrl_stMsmCur(2),
      I2 => eppctroller_instNexysOnBoardMemCtrl_stMsmCur(0),
      I3 => N152,
      O => eppctroller_instNexysOnBoardMemCtrl_regMemRdData_mux0000_0_122_428
    );
  eppctroller_instNexysOnBoardMemCtrl_EppRdDataOut_0_41_SW0 : LUT4
    generic map(
      INIT => X"EFFF"
    )
    port map (
      I0 => eppctroller_instEppCtrl_regEppAdrOut(2),
      I1 => eppctroller_instEppCtrl_regEppAdrOut(1),
      I2 => eppctroller_instEppCtrl_regEppAdrOut(0),
      I3 => eppctroller_instEppCtrl_stEppCur(1),
      O => N154
    );
  eppctroller_instNexysOnBoardMemCtrl_regMemAdr_0_not0001 : LUT4
    generic map(
      INIT => X"F2F0"
    )
    port map (
      I0 => N29,
      I1 => N154,
      I2 => eppctroller_instNexysOnBoardMemCtrl_ctlMsmAdrInc,
      I3 => eppctroller_XLXN_1560,
      O => eppctroller_instNexysOnBoardMemCtrl_regMemAdr_0_not0001_348
    );
  eppctroller_instNexysOnBoardMemCtrl_regMemAdr_23_not00011_SW1 : LUT3
    generic map(
      INIT => X"9F"
    )
    port map (
      I0 => eppctroller_instEppCtrl_stEppCur(0),
      I1 => eppctroller_instEppCtrl_stEppCur(2),
      I2 => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(0),
      O => N156
    );
  eppctroller_instNexysOnBoardMemCtrl_regMemWrData_8_not00011 : LUT4
    generic map(
      INIT => X"0100"
    )
    port map (
      I0 => N191,
      I1 => N233,
      I2 => N156,
      I3 => eppctroller_XLXN_1560,
      O => eppctroller_instNexysOnBoardMemCtrl_regMemWrData_8_not0001
    );
  eppctroller_instNexysOnBoardMemCtrl_regMemWrData_7_not00011 : LUT4
    generic map(
      INIT => X"0100"
    )
    port map (
      I0 => N191,
      I1 => eppctroller_instNexysOnBoardMemCtrl_regMemWrData_7_and0000,
      I2 => N158,
      I3 => eppctroller_XLXN_1560,
      O => eppctroller_instNexysOnBoardMemCtrl_regMemWrData_7_not0001
    );
  eppctroller_instNexysOnBoardMemCtrl_regMemCtl_and00001 : LUT4
    generic map(
      INIT => X"0100"
    )
    port map (
      I0 => eppctroller_instEppCtrl_regEppAdrOut(2),
      I1 => N191,
      I2 => N160,
      I3 => eppctroller_XLXN_1560,
      O => eppctroller_instNexysOnBoardMemCtrl_regMemCtl_and0000
    );
  eppctroller_instNexysOnBoardMemCtrl_regMemAdr_23_not00011_SW4 : LUT4
    generic map(
      INIT => X"FFF9"
    )
    port map (
      I0 => eppctroller_instEppCtrl_stEppCur(0),
      I1 => eppctroller_instEppCtrl_stEppCur(2),
      I2 => eppctroller_instEppCtrl_regEppAdrOut(2),
      I3 => N151,
      O => N162
    );
  eppctroller_instNexysOnBoardMemCtrl_regMemAdr_8_not0001 : LUT4
    generic map(
      INIT => X"FF02"
    )
    port map (
      I0 => eppctroller_XLXN_1560,
      I1 => N191,
      I2 => N162,
      I3 => eppctroller_instNexysOnBoardMemCtrl_regMemAdr_8_and0001,
      O => eppctroller_instNexysOnBoardMemCtrl_regMemAdr_8_not0001_397
    );
  eppctroller_instNexysOnBoardMemCtrl_stMsmNext_mux0016_3_1_SW0 : LUT3
    generic map(
      INIT => X"A2"
    )
    port map (
      I0 => eppctroller_instNexysOnBoardMemCtrl_stMsmCur(0),
      I1 => eppctroller_instNexysOnBoardMemCtrl_stMsmCur(1),
      I2 => eppctroller_instNexysOnBoardMemCtrl_stMsmCur(2),
      O => N164
    );
  eppctroller_instNexysOnBoardMemCtrl_regMemRdData_mux0000_0_139_SW0 : LUT4
    generic map(
      INIT => X"AA2A"
    )
    port map (
      I0 => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(0),
      I1 => eppctroller_instEppCtrl_regEppAdrOut(1),
      I2 => eppctroller_instEppCtrl_regEppAdrOut(2),
      I3 => eppctroller_instNexysOnBoardMemCtrl_regMemCtl(5),
      O => N167
    );
  eppctroller_instNexysOnBoardMemCtrl_flagFlashAutoWr_cmp_eq00001_SW1 : LUT4
    generic map(
      INIT => X"FEEF"
    )
    port map (
      I0 => eppctroller_instEppCtrl_regEppAdrOut(7),
      I1 => eppctroller_instEppCtrl_regEppAdrOut(6),
      I2 => eppctroller_instEppCtrl_stEppCur(0),
      I3 => eppctroller_instEppCtrl_stEppCur(2),
      O => N169
    );
  eppctroller_instNexysOnBoardMemCtrl_regMemAdr_23_not00011 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => eppctroller_instEppCtrl_regEppAdrOut(4),
      I1 => N235,
      I2 => N42,
      I3 => N169,
      O => N40
    );
  eppctroller_instNexysOnBoardMemCtrl_Mmux_stMsmNext_8 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => eppctroller_instNexysOnBoardMemCtrl_DelayCnt(2),
      I1 => eppctroller_instNexysOnBoardMemCtrl_DelayCnt(1),
      I2 => eppctroller_instNexysOnBoardMemCtrl_DelayCnt(0),
      I3 => eppctroller_instNexysOnBoardMemCtrl_stMsmCur(0),
      O => eppctroller_instNexysOnBoardMemCtrl_Mmux_stMsmNext_8_310
    );
  eppctroller_instNexysOnBoardMemCtrl_stMsmNext_mux0006_3_1 : LUT4
    generic map(
      INIT => X"DFFF"
    )
    port map (
      I0 => eppctroller_instNexysOnBoardMemCtrl_DelayCnt(2),
      I1 => eppctroller_instNexysOnBoardMemCtrl_DelayCnt(1),
      I2 => eppctroller_instNexysOnBoardMemCtrl_DelayCnt(0),
      I3 => N84,
      O => eppctroller_instNexysOnBoardMemCtrl_stMsmNext_mux0006(3)
    );
  eppctroller_instNexysOnBoardMemCtrl_Mmux_stMsmNext_9 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => eppctroller_instEppCtrl_ctlEppRdCycleOut_264,
      I1 => eppctroller_instNexysOnBoardMemCtrl_stMsmCur(0),
      O => eppctroller_instNexysOnBoardMemCtrl_Mmux_stMsmNext_9_312
    );
  eppctroller_instNexysOnBoardMemCtrl_Mmux_stMsmNext_6 : LUT4
    generic map(
      INIT => X"EAAA"
    )
    port map (
      I0 => eppctroller_instNexysOnBoardMemCtrl_stMsmCur(1),
      I1 => eppctroller_instNexysOnBoardMemCtrl_DelayCnt(2),
      I2 => eppctroller_instNexysOnBoardMemCtrl_DelayCnt(1),
      I3 => N1711,
      O => eppctroller_instNexysOnBoardMemCtrl_Mmux_stMsmNext_6_305
    );
  eppctroller_instNexysOnBoardMemCtrl_Mmux_stMsmNext_5_f5_SW0 : MUXF5
    port map (
      I0 => N173,
      I1 => N174,
      S => eppctroller_instNexysOnBoardMemCtrl_Mmux_stMsmNext_6_305,
      O => N120
    );
  eppctroller_instNexysOnBoardMemCtrl_Mmux_stMsmNext_5_f5_SW0_F : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => eppctroller_instNexysOnBoardMemCtrl_stMsmCur(3),
      I1 => eppctroller_instNexysOnBoardMemCtrl_stMsmCur(1),
      I2 => N401,
      O => N173
    );
  eppctroller_instNexysOnBoardMemCtrl_Mmux_stMsmNext_5_f5_SW0_G : LUT4
    generic map(
      INIT => X"E222"
    )
    port map (
      I0 => eppctroller_instNexysOnBoardMemCtrl_stMsmCur(2),
      I1 => eppctroller_instNexysOnBoardMemCtrl_stMsmCur(3),
      I2 => eppctroller_instNexysOnBoardMemCtrl_stMsmCur(1),
      I3 => N401,
      O => N174
    );
  eppctroller_instNexysOnBoardMemCtrl_Mmux_stMsmNext_2_f5_0 : MUXF5
    port map (
      I0 => N177,
      I1 => N178,
      S => eppctroller_instNexysOnBoardMemCtrl_stMsmCur(3),
      O => eppctroller_instNexysOnBoardMemCtrl_stMsmNext(2)
    );
  eppctroller_instNexysOnBoardMemCtrl_Mmux_stMsmNext_2_f5_0_F : LUT4
    generic map(
      INIT => X"FBEA"
    )
    port map (
      I0 => eppctroller_instNexysOnBoardMemCtrl_stMsmCur(2),
      I1 => eppctroller_instNexysOnBoardMemCtrl_stMsmCur(1),
      I2 => eppctroller_instNexysOnBoardMemCtrl_Mmux_stMsmNext_9_312,
      I3 => eppctroller_instNexysOnBoardMemCtrl_Mmux_stMsmNext_81_311,
      O => N177
    );
  eppctroller_instNexysOnBoardMemCtrl_Mmux_stMsmNext_2_f5_0_G : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => eppctroller_instNexysOnBoardMemCtrl_stMsmCur(2),
      I1 => eppctroller_instNexysOnBoardMemCtrl_Mmux_stMsmNext_6_f5_307,
      I2 => eppctroller_instNexysOnBoardMemCtrl_stMsmCur_1_1,
      O => N178
    );
  eppctroller_instNexysOnBoardMemCtrl_flagFlashAutoWr_cmp_eq00003_SW1 : MUXF5
    port map (
      I0 => N179,
      I1 => N180,
      S => eppctroller_instNexysOnBoardMemCtrl_regMemCtl(5),
      O => N147
    );
  eppctroller_instNexysOnBoardMemCtrl_flagFlashAutoWr_cmp_eq00003_SW1_F : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => eppctroller_instEppCtrl_regEppAdrOut(4),
      I1 => eppctroller_instEppCtrl_regEppAdrOut(6),
      I2 => eppctroller_instEppCtrl_ctlEppRdCycleOut_264,
      O => N179
    );
  eppctroller_instNexysOnBoardMemCtrl_flagFlashAutoWr_cmp_eq00003_SW1_G : LUT4
    generic map(
      INIT => X"CD33"
    )
    port map (
      I0 => eppctroller_instEppCtrl_regEppAdrOut(4),
      I1 => eppctroller_instEppCtrl_ctlEppRdCycleOut_264,
      I2 => eppctroller_instEppCtrl_regEppAdrOut(6),
      I3 => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(0),
      O => N180
    );
  eppctroller_instNexysOnBoardMemCtrl_stMsmNext_mux0016_3_1_SW1 : MUXF5
    port map (
      I0 => N181,
      I1 => N182,
      S => eppctroller_instNexysOnBoardMemCtrl_flagBlindCycle_and0002,
      O => N165
    );
  eppctroller_instNexysOnBoardMemCtrl_stMsmNext_mux0016_3_1_SW1_F : LUT4
    generic map(
      INIT => X"AA23"
    )
    port map (
      I0 => eppctroller_instNexysOnBoardMemCtrl_stMsmCur(0),
      I1 => eppctroller_instNexysOnBoardMemCtrl_stMsmCur(1),
      I2 => N136,
      I3 => eppctroller_instNexysOnBoardMemCtrl_stMsmCur(2),
      O => N181
    );
  eppctroller_instNexysOnBoardMemCtrl_stMsmNext_mux0016_3_1_SW1_G : LUT3
    generic map(
      INIT => X"A2"
    )
    port map (
      I0 => eppctroller_instNexysOnBoardMemCtrl_stMsmCur(0),
      I1 => eppctroller_instNexysOnBoardMemCtrl_stMsmCur(1),
      I2 => eppctroller_instNexysOnBoardMemCtrl_stMsmCur(2),
      O => N182
    );
  eppctroller_instNexysOnBoardMemCtrl_Mmux_stMsmNext_2_f5 : MUXF5
    port map (
      I0 => N183,
      I1 => N184,
      S => eppctroller_instNexysOnBoardMemCtrl_stMsmCur(3),
      O => eppctroller_instNexysOnBoardMemCtrl_stMsmNext(0)
    );
  eppctroller_instNexysOnBoardMemCtrl_Mmux_stMsmNext_2_f5_F : LUT4
    generic map(
      INIT => X"EC4C"
    )
    port map (
      I0 => eppctroller_instNexysOnBoardMemCtrl_flagFlashAutoWr_cmp_eq0000,
      I1 => N164,
      I2 => eppctroller_XLXN_1266,
      I3 => N165,
      O => N183
    );
  eppctroller_instNexysOnBoardMemCtrl_Mmux_stMsmNext_2_f5_G : LUT4
    generic map(
      INIT => X"AA8A"
    )
    port map (
      I0 => eppctroller_instNexysOnBoardMemCtrl_stMsmCur(0),
      I1 => eppctroller_instNexysOnBoardMemCtrl_stMsmNext_mux0006(3),
      I2 => eppctroller_instNexysOnBoardMemCtrl_stMsmCur(2),
      I3 => eppctroller_instNexysOnBoardMemCtrl_stMsmCur(1),
      O => N184
    );
  eppctroller_instEppCtrl_busEppInternal_7_80_SW0 : LUT4
    generic map(
      INIT => X"FFEA"
    )
    port map (
      I0 => eppctroller_instEppCtrl_busEppInternal_7_9_262,
      I1 => N14,
      I2 => eppctroller_instNexysOnBoardMemCtrl_regMemWrData(15),
      I3 => eppctroller_instEppCtrl_busEppInternal_7_47_261,
      O => N185
    );
  eppctroller_instEppCtrl_busEppInternal_7_80 : LUT4
    generic map(
      INIT => X"FAD8"
    )
    port map (
      I0 => ASTB_IBUF_1,
      I1 => eppctroller_instEppCtrl_busEppInternal_7_4_260,
      I2 => eppctroller_instEppCtrl_regEppAdrOut(7),
      I3 => N185,
      O => eppctroller_instEppCtrl_busEppInternal(7)
    );
  eppctroller_instEppCtrl_busEppInternal_6_80_SW0 : LUT4
    generic map(
      INIT => X"FFEA"
    )
    port map (
      I0 => eppctroller_instEppCtrl_busEppInternal_6_9_256,
      I1 => N14,
      I2 => eppctroller_instNexysOnBoardMemCtrl_regMemWrData(14),
      I3 => eppctroller_instEppCtrl_busEppInternal_6_47_255,
      O => N187
    );
  eppctroller_instEppCtrl_busEppInternal_6_80 : LUT4
    generic map(
      INIT => X"FAD8"
    )
    port map (
      I0 => ASTB_IBUF_1,
      I1 => eppctroller_instEppCtrl_busEppInternal_6_4_254,
      I2 => eppctroller_instEppCtrl_regEppAdrOut(6),
      I3 => N187,
      O => eppctroller_instEppCtrl_busEppInternal(6)
    );
  eppctroller_instEppCtrl_busEppInternal_5_80_SW0 : LUT4
    generic map(
      INIT => X"FFEA"
    )
    port map (
      I0 => eppctroller_instEppCtrl_busEppInternal_5_9_250,
      I1 => N14,
      I2 => eppctroller_instNexysOnBoardMemCtrl_regMemWrData(13),
      I3 => eppctroller_instEppCtrl_busEppInternal_5_47_249,
      O => N189
    );
  eppctroller_instEppCtrl_busEppInternal_5_80 : LUT4
    generic map(
      INIT => X"FAD8"
    )
    port map (
      I0 => ASTB_IBUF_1,
      I1 => eppctroller_instEppCtrl_busEppInternal_5_4_248,
      I2 => eppctroller_instEppCtrl_regEppAdrOut(5),
      I3 => N189,
      O => eppctroller_instEppCtrl_busEppInternal(5)
    );
  eppctroller_instEppCtrl_busEppInternal_4_80_SW0 : LUT4
    generic map(
      INIT => X"FFEA"
    )
    port map (
      I0 => eppctroller_instEppCtrl_busEppInternal_4_9_244,
      I1 => N14,
      I2 => eppctroller_instNexysOnBoardMemCtrl_regMemWrData(12),
      I3 => eppctroller_instEppCtrl_busEppInternal_4_47_243,
      O => N1911
    );
  eppctroller_instEppCtrl_busEppInternal_4_80 : LUT4
    generic map(
      INIT => X"FAD8"
    )
    port map (
      I0 => ASTB_IBUF_1,
      I1 => eppctroller_instEppCtrl_busEppInternal_4_4_242,
      I2 => eppctroller_instEppCtrl_regEppAdrOut(4),
      I3 => N1911,
      O => eppctroller_instEppCtrl_busEppInternal(4)
    );
  eppctroller_instEppCtrl_busEppInternal_3_80_SW0 : LUT4
    generic map(
      INIT => X"FFEA"
    )
    port map (
      I0 => eppctroller_instEppCtrl_busEppInternal_3_9_238,
      I1 => N14,
      I2 => eppctroller_instNexysOnBoardMemCtrl_regMemWrData(11),
      I3 => eppctroller_instEppCtrl_busEppInternal_3_47_237,
      O => N193
    );
  eppctroller_instEppCtrl_busEppInternal_3_80 : LUT4
    generic map(
      INIT => X"FAD8"
    )
    port map (
      I0 => ASTB_IBUF_1,
      I1 => eppctroller_instEppCtrl_busEppInternal_3_4_236,
      I2 => eppctroller_instEppCtrl_regEppAdrOut(3),
      I3 => N193,
      O => eppctroller_instEppCtrl_busEppInternal(3)
    );
  eppctroller_instEppCtrl_busEppInternal_2_80_SW0 : LUT4
    generic map(
      INIT => X"FFEA"
    )
    port map (
      I0 => eppctroller_instEppCtrl_busEppInternal_2_9_232,
      I1 => N14,
      I2 => eppctroller_instNexysOnBoardMemCtrl_regMemWrData(10),
      I3 => eppctroller_instEppCtrl_busEppInternal_2_47_231,
      O => N195
    );
  eppctroller_instEppCtrl_busEppInternal_2_80 : LUT4
    generic map(
      INIT => X"FAD8"
    )
    port map (
      I0 => ASTB_IBUF_1,
      I1 => eppctroller_instEppCtrl_busEppInternal_2_4_230,
      I2 => eppctroller_instEppCtrl_regEppAdrOut(2),
      I3 => N195,
      O => eppctroller_instEppCtrl_busEppInternal(2)
    );
  eppctroller_instEppCtrl_busEppInternal_1_80_SW0 : LUT4
    generic map(
      INIT => X"FFEA"
    )
    port map (
      I0 => eppctroller_instEppCtrl_busEppInternal_1_9_226,
      I1 => N14,
      I2 => eppctroller_instNexysOnBoardMemCtrl_regMemWrData(9),
      I3 => eppctroller_instEppCtrl_busEppInternal_1_47_225,
      O => N197
    );
  eppctroller_instEppCtrl_busEppInternal_1_80 : LUT4
    generic map(
      INIT => X"FAD8"
    )
    port map (
      I0 => ASTB_IBUF_1,
      I1 => eppctroller_instEppCtrl_busEppInternal_1_4_224,
      I2 => eppctroller_instEppCtrl_regEppAdrOut(1),
      I3 => N197,
      O => eppctroller_instEppCtrl_busEppInternal(1)
    );
  eppctroller_instEppCtrl_busEppInternal_0_80_SW0 : LUT4
    generic map(
      INIT => X"FFEA"
    )
    port map (
      I0 => eppctroller_instEppCtrl_busEppInternal_0_9_220,
      I1 => N14,
      I2 => eppctroller_instNexysOnBoardMemCtrl_regMemWrData(8),
      I3 => eppctroller_instEppCtrl_busEppInternal_0_47_219,
      O => N199
    );
  eppctroller_instEppCtrl_busEppInternal_0_80 : LUT4
    generic map(
      INIT => X"FAD8"
    )
    port map (
      I0 => ASTB_IBUF_1,
      I1 => eppctroller_instEppCtrl_busEppInternal_0_4_218,
      I2 => eppctroller_instEppCtrl_regEppAdrOut(0),
      I3 => N199,
      O => eppctroller_instEppCtrl_busEppInternal(0)
    );
  eppctroller_instNexysOnBoardMemCtrl_DelayCnt_cmp_eq00002 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => eppctroller_instNexysOnBoardMemCtrl_stMsmCur(1),
      I1 => eppctroller_instNexysOnBoardMemCtrl_stMsmCur(0),
      I2 => eppctroller_instNexysOnBoardMemCtrl_stMsmCur(2),
      I3 => eppctroller_instNexysOnBoardMemCtrl_stMsmCur(3),
      O => eppctroller_instNexysOnBoardMemCtrl_DelayCnt_not0001_inv
    );
  eppctroller_instNexysOnBoardMemCtrl_Mmux_stMsmNext_5_f5_SW1_SW0 : LUT4
    generic map(
      INIT => X"70F0"
    )
    port map (
      I0 => eppctroller_instNexysOnBoardMemCtrl_DelayCnt(2),
      I1 => eppctroller_instNexysOnBoardMemCtrl_DelayCnt(1),
      I2 => eppctroller_instNexysOnBoardMemCtrl_stMsmCur(2),
      I3 => N250,
      O => N201
    );
  eppctroller_instEppCtrl_busEppInternal_7_36_SW0 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => N76,
      I1 => eppctroller_XLXN_1560,
      I2 => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(0),
      I3 => eppctroller_instNexysOnBoardMemCtrl_regMemCtl(5),
      O => N203
    );
  eppctroller_instEppCtrl_busEppInternal_7_36 : LUT4
    generic map(
      INIT => X"FFB8"
    )
    port map (
      I0 => eppctroller_instNexysOnBoardMemCtrl_regMemRdData(7),
      I1 => eppctroller_XLXN_1266,
      I2 => N203,
      I3 => eppctroller_instEppCtrl_busEppInternal_7_33_258,
      O => eppctroller_instEppCtrl_busEppInternal_7_36_259
    );
  eppctroller_instEppCtrl_busEppInternal_6_36_SW0 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => N77,
      I1 => eppctroller_XLXN_1560,
      I2 => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(0),
      I3 => eppctroller_instNexysOnBoardMemCtrl_regMemCtl(5),
      O => N205
    );
  eppctroller_instEppCtrl_busEppInternal_6_36 : LUT4
    generic map(
      INIT => X"FFB8"
    )
    port map (
      I0 => eppctroller_instNexysOnBoardMemCtrl_regMemRdData(6),
      I1 => eppctroller_XLXN_1266,
      I2 => N205,
      I3 => eppctroller_instEppCtrl_busEppInternal_6_33_252,
      O => eppctroller_instEppCtrl_busEppInternal_6_36_253
    );
  eppctroller_instEppCtrl_busEppInternal_5_36_SW0 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => N78,
      I1 => eppctroller_XLXN_1560,
      I2 => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(0),
      I3 => eppctroller_instNexysOnBoardMemCtrl_regMemCtl(5),
      O => N207
    );
  eppctroller_instEppCtrl_busEppInternal_5_36 : LUT4
    generic map(
      INIT => X"FFB8"
    )
    port map (
      I0 => eppctroller_instNexysOnBoardMemCtrl_regMemRdData(5),
      I1 => eppctroller_XLXN_1266,
      I2 => N207,
      I3 => eppctroller_instEppCtrl_busEppInternal_5_33_246,
      O => eppctroller_instEppCtrl_busEppInternal_5_36_247
    );
  eppctroller_instEppCtrl_busEppInternal_4_36_SW0 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => N79,
      I1 => eppctroller_XLXN_1560,
      I2 => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(0),
      I3 => eppctroller_instNexysOnBoardMemCtrl_regMemCtl(5),
      O => N209
    );
  eppctroller_instEppCtrl_busEppInternal_4_36 : LUT4
    generic map(
      INIT => X"FFB8"
    )
    port map (
      I0 => eppctroller_instNexysOnBoardMemCtrl_regMemRdData(4),
      I1 => eppctroller_XLXN_1266,
      I2 => N209,
      I3 => eppctroller_instEppCtrl_busEppInternal_4_33_240,
      O => eppctroller_instEppCtrl_busEppInternal_4_36_241
    );
  eppctroller_instEppCtrl_busEppInternal_3_36_SW0 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => N80,
      I1 => eppctroller_XLXN_1560,
      I2 => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(0),
      I3 => eppctroller_instNexysOnBoardMemCtrl_regMemCtl(5),
      O => N211
    );
  eppctroller_instEppCtrl_busEppInternal_3_36 : LUT4
    generic map(
      INIT => X"FFB8"
    )
    port map (
      I0 => eppctroller_instNexysOnBoardMemCtrl_regMemRdData(3),
      I1 => eppctroller_XLXN_1266,
      I2 => N211,
      I3 => eppctroller_instEppCtrl_busEppInternal_3_33_234,
      O => eppctroller_instEppCtrl_busEppInternal_3_36_235
    );
  eppctroller_instEppCtrl_busEppInternal_2_36_SW0 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => N81,
      I1 => eppctroller_XLXN_1560,
      I2 => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(0),
      I3 => eppctroller_instNexysOnBoardMemCtrl_regMemCtl(5),
      O => N213
    );
  eppctroller_instEppCtrl_busEppInternal_2_36 : LUT4
    generic map(
      INIT => X"FFB8"
    )
    port map (
      I0 => eppctroller_instNexysOnBoardMemCtrl_regMemRdData(2),
      I1 => eppctroller_XLXN_1266,
      I2 => N213,
      I3 => eppctroller_instEppCtrl_busEppInternal_2_33_228,
      O => eppctroller_instEppCtrl_busEppInternal_2_36_229
    );
  eppctroller_instEppCtrl_busEppInternal_1_36_SW0 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => N82,
      I1 => eppctroller_XLXN_1560,
      I2 => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(0),
      I3 => eppctroller_instNexysOnBoardMemCtrl_regMemCtl(5),
      O => N215
    );
  eppctroller_instEppCtrl_busEppInternal_1_36 : LUT4
    generic map(
      INIT => X"FFB8"
    )
    port map (
      I0 => eppctroller_instNexysOnBoardMemCtrl_regMemRdData(1),
      I1 => eppctroller_XLXN_1266,
      I2 => N215,
      I3 => eppctroller_instEppCtrl_busEppInternal_1_33_222,
      O => eppctroller_instEppCtrl_busEppInternal_1_36_223
    );
  eppctroller_instEppCtrl_busEppInternal_0_36_SW0 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => N83,
      I1 => eppctroller_XLXN_1560,
      I2 => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(0),
      I3 => eppctroller_instNexysOnBoardMemCtrl_regMemCtl(5),
      O => N217
    );
  eppctroller_instEppCtrl_busEppInternal_0_36 : LUT4
    generic map(
      INIT => X"FFB8"
    )
    port map (
      I0 => eppctroller_instNexysOnBoardMemCtrl_regMemRdData(0),
      I1 => eppctroller_XLXN_1266,
      I2 => N217,
      I3 => eppctroller_instEppCtrl_busEppInternal_0_33_216,
      O => eppctroller_instEppCtrl_busEppInternal_0_36_217
    );
  eppctroller_instNexysOnBoardMemCtrl_busMemOut_and00001 : LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      I0 => N411,
      I1 => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(0),
      I2 => eppctroller_instEppCtrl_regEppAdrOut(0),
      I3 => eppctroller_instNexysOnBoardMemCtrl_regMemCtl(5),
      O => eppctroller_instNexysOnBoardMemCtrl_busMemOut_and0000
    );
  eppctroller_instNexysOnBoardMemCtrl_EppRdDataOut_0_31 : LUT4
    generic map(
      INIT => X"AF8F"
    )
    port map (
      I0 => eppctroller_instEppCtrl_regEppAdrOut(2),
      I1 => eppctroller_instEppCtrl_regEppAdrOut(0),
      I2 => eppctroller_XLXN_1560,
      I3 => eppctroller_instEppCtrl_regEppAdrOut(1),
      O => N17
    );
  eppctroller_instNexysOnBoardMemCtrl_EppRdDataOut_0_51 : LUT4
    generic map(
      INIT => X"0203"
    )
    port map (
      I0 => eppctroller_instEppCtrl_regEppAdrOut(2),
      I1 => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(0),
      I2 => N171,
      I3 => eppctroller_XLXN_1560,
      O => N22
    );
  eppctroller_instNexysOnBoardMemCtrl_EppRdDataOut_0_21 : LUT4
    generic map(
      INIT => X"4404"
    )
    port map (
      I0 => N171,
      I1 => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(0),
      I2 => eppctroller_XLXN_1560,
      I3 => eppctroller_instEppCtrl_regEppAdrOut(2),
      O => N14
    );
  eppctroller_instNexysOnBoardMemCtrl_regMemAdr_0_1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_5,
      CE => eppctroller_instNexysOnBoardMemCtrl_regMemAdr_0_not0001_348,
      D => eppctroller_instNexysOnBoardMemCtrl_regMemAdr_0_mux0000,
      Q => eppctroller_instNexysOnBoardMemCtrl_regMemAdr_0_1_346
    );
  eppctroller_instEppCtrl_Mmux_stEppNext3 : MUXF5
    port map (
      I0 => N221,
      I1 => N222,
      S => eppctroller_instEppCtrl_stEppCur(0),
      O => eppctroller_instEppCtrl_stEppNext(1)
    );
  eppctroller_instEppCtrl_Mmux_stEppNext3_F : LUT4
    generic map(
      INIT => X"5155"
    )
    port map (
      I0 => eppctroller_instEppCtrl_stEppCur(2),
      I1 => DSTB_IBUF_7,
      I2 => eppctroller_instEppCtrl_stEppCur(1),
      I3 => ASTB_IBUF_1,
      O => N221
    );
  eppctroller_instEppCtrl_Mmux_stEppNext3_G : LUT4
    generic map(
      INIT => X"2AAA"
    )
    port map (
      I0 => eppctroller_instEppCtrl_stEppCur(1),
      I1 => N33,
      I2 => eppctroller_instNexysOnBoardMemCtrl_stMsmCur(3),
      I3 => eppctroller_instEppCtrl_stEppCur(2),
      O => N222
    );
  eppctroller_instNexysOnBoardMemCtrl_FlashCS_mux000056 : MUXF5
    port map (
      I0 => N223,
      I1 => N224,
      S => eppctroller_instNexysOnBoardMemCtrl_stMsmCur(0),
      O => eppctroller_instNexysOnBoardMemCtrl_FlashCS_mux0000
    );
  eppctroller_instNexysOnBoardMemCtrl_FlashCS_mux000056_F : LUT4
    generic map(
      INIT => X"72FA"
    )
    port map (
      I0 => eppctroller_instNexysOnBoardMemCtrl_stMsmCur(1),
      I1 => eppctroller_instEppCtrl_regEppAdrOut(0),
      I2 => eppctroller_instNexysOnBoardMemCtrl_FlashCS_mux000014_292,
      I3 => N411,
      O => N223
    );
  eppctroller_instNexysOnBoardMemCtrl_FlashCS_mux000056_G : LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      I0 => eppctroller_instNexysOnBoardMemCtrl_stMsmCur(3),
      I1 => eppctroller_instNexysOnBoardMemCtrl_stMsmCur(1),
      I2 => eppctroller_instNexysOnBoardMemCtrl_stMsmCur(2),
      O => N224
    );
  eppctroller_instNexysOnBoardMemCtrl_MemOE_mux0000 : MUXF5
    port map (
      I0 => N225,
      I1 => N226,
      S => eppctroller_instNexysOnBoardMemCtrl_stMsmCur(2),
      O => eppctroller_instNexysOnBoardMemCtrl_MemOE_mux0000_302
    );
  eppctroller_instNexysOnBoardMemCtrl_MemOE_mux0000_F : LUT4
    generic map(
      INIT => X"55FE"
    )
    port map (
      I0 => eppctroller_instNexysOnBoardMemCtrl_stMsmCur(1),
      I1 => eppctroller_instNexysOnBoardMemCtrl_regMemCtl(0),
      I2 => eppctroller_instNexysOnBoardMemCtrl_stMsmCur(0),
      I3 => eppctroller_instNexysOnBoardMemCtrl_stMsmCur(3),
      O => N225
    );
  eppctroller_instNexysOnBoardMemCtrl_MemOE_mux0000_G : LUT3
    generic map(
      INIT => X"F7"
    )
    port map (
      I0 => eppctroller_instNexysOnBoardMemCtrl_stMsmCur(3),
      I1 => eppctroller_instNexysOnBoardMemCtrl_stMsmCur(0),
      I2 => eppctroller_instNexysOnBoardMemCtrl_stMsmCur(1),
      O => N226
    );
  eppctroller_instEppCtrl_Mmux_stEppNext2 : MUXF5
    port map (
      I0 => N227,
      I1 => N228,
      S => eppctroller_instEppCtrl_stEppCur(0),
      O => eppctroller_instEppCtrl_stEppNext(0)
    );
  eppctroller_instEppCtrl_Mmux_stEppNext2_F : LUT4
    generic map(
      INIT => X"0008"
    )
    port map (
      I0 => eppctroller_instEppCtrl_stEppCur(1),
      I1 => eppctroller_XLXN_1266,
      I2 => eppctroller_instEppCtrl_stEppCur(2),
      I3 => DSTB_IBUF_7,
      O => N227
    );
  eppctroller_instEppCtrl_Mmux_stEppNext2_G : LUT4
    generic map(
      INIT => X"EAAA"
    )
    port map (
      I0 => eppctroller_instEppCtrl_stEppCur(1),
      I1 => eppctroller_instNexysOnBoardMemCtrl_stMsmCur(3),
      I2 => eppctroller_instEppCtrl_stEppCur(2),
      I3 => N33,
      O => N228
    );
  eppctroller_instEppCtrl_Mmux_stEppNext4 : MUXF5
    port map (
      I0 => N229,
      I1 => N230,
      S => eppctroller_instEppCtrl_stEppCur(1),
      O => eppctroller_instEppCtrl_stEppNext(2)
    );
  eppctroller_instEppCtrl_Mmux_stEppNext4_F : LUT4
    generic map(
      INIT => X"AA2A"
    )
    port map (
      I0 => eppctroller_instEppCtrl_stEppCur(2),
      I1 => DSTB_IBUF_7,
      I2 => ASTB_IBUF_1,
      I3 => eppctroller_instEppCtrl_stEppCur(0),
      O => N229
    );
  eppctroller_instEppCtrl_Mmux_stEppNext4_G : LUT4
    generic map(
      INIT => X"FFFB"
    )
    port map (
      I0 => eppctroller_instEppCtrl_stEppCur(2),
      I1 => eppctroller_XLXN_1266,
      I2 => eppctroller_instEppCtrl_stEppCur(0),
      I3 => DSTB_IBUF_7,
      O => N230
    );
  eppctroller_instNexysOnBoardMemCtrl_RamCS_mux0000 : MUXF5
    port map (
      I0 => N231,
      I1 => N232,
      S => eppctroller_instNexysOnBoardMemCtrl_stMsmCur(1),
      O => eppctroller_instNexysOnBoardMemCtrl_RamCS_mux0000_313
    );
  eppctroller_instNexysOnBoardMemCtrl_RamCS_mux0000_F : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => eppctroller_instNexysOnBoardMemCtrl_stMsmCur(0),
      I1 => eppctroller_instNexysOnBoardMemCtrl_stMsmCur(2),
      I2 => eppctroller_instNexysOnBoardMemCtrl_stMsmCur(3),
      I3 => eppctroller_instNexysOnBoardMemCtrl_regMemCtl(2),
      O => N231
    );
  eppctroller_instNexysOnBoardMemCtrl_RamCS_mux0000_G : LUT4
    generic map(
      INIT => X"EFFF"
    )
    port map (
      I0 => eppctroller_instNexysOnBoardMemCtrl_stMsmCur(0),
      I1 => eppctroller_instEppCtrl_regEppAdrOut(0),
      I2 => eppctroller_instEppCtrl_regEppAdrOut(1),
      I3 => eppctroller_instEppCtrl_regEppAdrOut(2),
      O => N232
    );
  CLK_BUFGP : BUFGP
    port map (
      I => CLK,
      O => CLK_BUFGP_5
    );
  eppctroller_instNexysOnBoardMemCtrl_regMemCtl_4_inv1_INV_0 : INV
    port map (
      I => eppctroller_instNexysOnBoardMemCtrl_regMemCtl(4),
      O => eppctroller_instNexysOnBoardMemCtrl_regMemCtl_4_inv
    );
  eppctroller_instNexysOnBoardMemCtrl_Mcount_DelayCnt_xor_0_11_INV_0 : INV
    port map (
      I => eppctroller_instNexysOnBoardMemCtrl_DelayCnt(0),
      O => eppctroller_instNexysOnBoardMemCtrl_Result(0)
    );
  eppctroller_instEppCtrl_EppRst_inv1_INV_0 : INV
    port map (
      I => BTN_IBUF_3,
      O => eppctroller_instEppCtrl_EppRst_inv
    );
  eppctroller_instEppCtrl_ctlEppRdCycleOut_inv1_INV_0 : INV
    port map (
      I => eppctroller_instEppCtrl_ctlEppRdCycleOut_264,
      O => eppctroller_instEppCtrl_ctlEppRdCycleOut_inv
    );
  eppctroller_instNexysOnBoardMemCtrl_regMemWrData_7_and00001 : LUT3_D
    generic map(
      INIT => X"2F"
    )
    port map (
      I0 => eppctroller_instEppCtrl_regEppAdrOut(0),
      I1 => eppctroller_instEppCtrl_regEppAdrOut(1),
      I2 => eppctroller_instEppCtrl_regEppAdrOut(2),
      LO => N233,
      O => eppctroller_instNexysOnBoardMemCtrl_regMemWrData_7_and0000
    );
  eppctroller_instNexysOnBoardMemCtrl_ctlMsmAdrInc_cmp_eq00001 : LUT4_D
    generic map(
      INIT => X"0008"
    )
    port map (
      I0 => eppctroller_instNexysOnBoardMemCtrl_stMsmCur(3),
      I1 => eppctroller_instNexysOnBoardMemCtrl_stMsmCur(2),
      I2 => eppctroller_instNexysOnBoardMemCtrl_stMsmCur(1),
      I3 => eppctroller_instNexysOnBoardMemCtrl_stMsmCur(0),
      LO => N234,
      O => eppctroller_instNexysOnBoardMemCtrl_ctlMsmAdrInc
    );
  eppctroller_instNexysOnBoardMemCtrl_regMemRdData_mux0000_0_5_SW0 : LUT3_L
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => eppctroller_instNexysOnBoardMemCtrl_stMsmCur(3),
      I1 => eppctroller_instNexysOnBoardMemCtrl_stMsmCur(1),
      I2 => eppctroller_instNexysOnBoardMemCtrl_stMsmCur(0),
      LO => N131
    );
  eppctroller_instNexysOnBoardMemCtrl_regMemAdr_8_not0001_SW0 : LUT2_L
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => eppctroller_instEppCtrl_regEppAdrOut(0),
      I1 => eppctroller_instEppCtrl_regEppAdrOut(1),
      LO => N151
    );
  eppctroller_instNexysOnBoardMemCtrl_regMemAdr_23_not00011_SW0 : LUT3_D
    generic map(
      INIT => X"EF"
    )
    port map (
      I0 => DSTB_IBUF_7,
      I1 => PWR_IBUF_205,
      I2 => eppctroller_instEppCtrl_stEppCur(1),
      LO => N235,
      O => N191
    );
  eppctroller_instNexysOnBoardMemCtrl_ctlMsmRAMCs_cmp_eq000111 : LUT3_D
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => eppctroller_instNexysOnBoardMemCtrl_stMsmCur(3),
      I1 => eppctroller_instNexysOnBoardMemCtrl_stMsmCur(2),
      I2 => eppctroller_instNexysOnBoardMemCtrl_stMsmCur(1),
      LO => N236,
      O => eppctroller_instNexysOnBoardMemCtrl_regMemRdData_cmp_eq0000
    );
  eppctroller_instNexysOnBoardMemCtrl_carryoutL_cmp_eq00004 : LUT4_D
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => eppctroller_instNexysOnBoardMemCtrl_regMemAdr_0_1_346,
      I1 => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(3),
      I2 => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(2),
      I3 => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(1),
      LO => N237,
      O => eppctroller_instNexysOnBoardMemCtrl_Madd_regMemAdr_7_0_add0000_cy_3_Q
    );
  eppctroller_instNexysOnBoardMemCtrl_carryoutL_cmp_eq00009 : LUT4_D
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(7),
      I1 => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(6),
      I2 => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(5),
      I3 => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(4),
      LO => N238,
      O => eppctroller_instNexysOnBoardMemCtrl_carryoutL_cmp_eq00009_339
    );
  eppctroller_instNexysOnBoardMemCtrl_regMemAdr_23_and00014 : LUT4_D
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(11),
      I1 => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(10),
      I2 => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(9),
      I3 => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(8),
      LO => N239,
      O => eppctroller_instNexysOnBoardMemCtrl_Madd_regMemAdr_15_8_add0000_cy_3_Q
    );
  eppctroller_instNexysOnBoardMemCtrl_regMemAdr_23_and000120 : LUT4_D
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => eppctroller_instNexysOnBoardMemCtrl_regMemAdr_23_and000113_380,
      I1 => eppctroller_instNexysOnBoardMemCtrl_Madd_regMemAdr_15_8_add0000_cy_3_Q,
      I2 => eppctroller_instNexysOnBoardMemCtrl_ctlMsmAdrInc,
      I3 => eppctroller_instNexysOnBoardMemCtrl_carryoutL,
      LO => N240,
      O => eppctroller_instNexysOnBoardMemCtrl_regMemAdr_23_and0001
    );
  eppctroller_instNexysOnBoardMemCtrl_regMemAdr_0_not0001_SW0 : LUT4_L
    generic map(
      INIT => X"0006"
    )
    port map (
      I0 => eppctroller_instEppCtrl_stEppCur(2),
      I1 => eppctroller_instEppCtrl_stEppCur(0),
      I2 => PWR_IBUF_205,
      I3 => DSTB_IBUF_7,
      LO => N29
    );
  eppctroller_instNexysOnBoardMemCtrl_Madd_regMemAdr_23_16_add0000_cy_3_11 : LUT4_D
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(18),
      I1 => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(19),
      I2 => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(16),
      I3 => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(17),
      LO => N241,
      O => eppctroller_instNexysOnBoardMemCtrl_Madd_regMemAdr_23_16_add0000_cy_3_Q
    );
  eppctroller_instNexysOnBoardMemCtrl_stMsmNext_cmp_eq000011 : LUT3_D
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => eppctroller_instNexysOnBoardMemCtrl_DelayCnt(2),
      I1 => eppctroller_instNexysOnBoardMemCtrl_DelayCnt(1),
      I2 => eppctroller_instNexysOnBoardMemCtrl_DelayCnt(0),
      LO => N242,
      O => eppctroller_instNexysOnBoardMemCtrl_stMsmNext_and0000
    );
  eppctroller_instNexysOnBoardMemCtrl_stMsmNext_cmp_eq00001 : LUT3_D
    generic map(
      INIT => X"40"
    )
    port map (
      I0 => eppctroller_instNexysOnBoardMemCtrl_DelayCnt(4),
      I1 => eppctroller_instNexysOnBoardMemCtrl_DelayCnt(3),
      I2 => eppctroller_instNexysOnBoardMemCtrl_stMsmNext_and0000,
      LO => N243,
      O => eppctroller_instNexysOnBoardMemCtrl_stMsmNext_cmp_eq0000
    );
  eppctroller_instNexysOnBoardMemCtrl_flagFlashAutoWr_cmp_eq00001_SW0 : LUT2_D
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => eppctroller_instEppCtrl_regEppAdrOut(5),
      I1 => eppctroller_instEppCtrl_regEppAdrOut(3),
      LO => N244,
      O => N42
    );
  eppctroller_instNexysOnBoardMemCtrl_regMemAdr_5_mux0000_SW0 : LUT2_L
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => eppctroller_instNexysOnBoardMemCtrl_Madd_regMemAdr_7_0_add0000_cy_3_Q,
      I1 => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(4),
      LO => N46
    );
  eppctroller_instNexysOnBoardMemCtrl_regMemAdr_21_mux0000_SW0 : LUT2_L
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => eppctroller_instNexysOnBoardMemCtrl_Madd_regMemAdr_23_16_add0000_cy_3_Q,
      I1 => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(20),
      LO => N52
    );
  eppctroller_instNexysOnBoardMemCtrl_regMemAdr_13_mux0000_SW0 : LUT2_L
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => eppctroller_instNexysOnBoardMemCtrl_Madd_regMemAdr_15_8_add0000_cy_3_Q,
      I1 => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(12),
      LO => N58
    );
  eppctroller_instNexysOnBoardMemCtrl_flagFlashAutoWr_cmp_eq00003_SW0 : LUT4_D
    generic map(
      INIT => X"BFFF"
    )
    port map (
      I0 => eppctroller_instEppCtrl_regEppAdrOut(7),
      I1 => eppctroller_instEppCtrl_regEppAdrOut(0),
      I2 => eppctroller_instEppCtrl_regEppAdrOut(1),
      I3 => eppctroller_instEppCtrl_regEppAdrOut(2),
      LO => N245,
      O => N125
    );
  eppctroller_instNexysOnBoardMemCtrl_flagMsmCycle_and000011_SW0 : LUT4_D
    generic map(
      INIT => X"EFFF"
    )
    port map (
      I0 => eppctroller_instEppCtrl_regEppAdrOut(7),
      I1 => eppctroller_instEppCtrl_regEppAdrOut(4),
      I2 => eppctroller_instEppCtrl_regEppAdrOut(1),
      I3 => eppctroller_instEppCtrl_regEppAdrOut(2),
      LO => N246,
      O => N130
    );
  eppctroller_instNexysOnBoardMemCtrl_flagMsmCycle_and00002 : LUT4_D
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => eppctroller_instEppCtrl_regEppAdrOut(3),
      I1 => eppctroller_instEppCtrl_regEppAdrOut(5),
      I2 => N141,
      I3 => N130,
      LO => N247,
      O => eppctroller_instNexysOnBoardMemCtrl_flagMsmCycle_and0000
    );
  eppctroller_instNexysOnBoardMemCtrl_regMemRdData_mux0000_0_3_SW1 : LUT4_L
    generic map(
      INIT => X"FDFF"
    )
    port map (
      I0 => N82,
      I1 => eppctroller_instNexysOnBoardMemCtrl_stMsmCur(0),
      I2 => N21,
      I3 => eppctroller_instNexysOnBoardMemCtrl_RamLB_mux0000,
      LO => N143
    );
  eppctroller_instNexysOnBoardMemCtrl_regMemRdData_mux0000_0_3_SW2 : LUT4_L
    generic map(
      INIT => X"FDFF"
    )
    port map (
      I0 => N83,
      I1 => eppctroller_instNexysOnBoardMemCtrl_stMsmCur(0),
      I2 => N21,
      I3 => eppctroller_instNexysOnBoardMemCtrl_RamLB_mux0000,
      LO => N145
    );
  eppctroller_instNexysOnBoardMemCtrl_stMsmNext_mux0016_2_1_SW0 : LUT4_L
    generic map(
      INIT => X"F1E0"
    )
    port map (
      I0 => N42,
      I1 => N125,
      I2 => eppctroller_instNexysOnBoardMemCtrl_flagBlindCycle_and0002,
      I3 => N147,
      LO => N116
    );
  eppctroller_instNexysOnBoardMemCtrl_regMemRdData_mux0000_0_4 : LUT4_D
    generic map(
      INIT => X"1300"
    )
    port map (
      I0 => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(0),
      I1 => eppctroller_instNexysOnBoardMemCtrl_stMsmCur(0),
      I2 => N150,
      I3 => eppctroller_instNexysOnBoardMemCtrl_regMemRdData_cmp_eq0000,
      LO => N248,
      O => N15
    );
  eppctroller_instNexysOnBoardMemCtrl_regMemRdData_mux0000_0_122_SW0 : LUT4_L
    generic map(
      INIT => X"FF13"
    )
    port map (
      I0 => eppctroller_instNexysOnBoardMemCtrl_regMemCtl(5),
      I1 => eppctroller_instNexysOnBoardMemCtrl_stMsmCur(3),
      I2 => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(0),
      I3 => eppctroller_instNexysOnBoardMemCtrl_stMsmCur(1),
      LO => N152
    );
  eppctroller_instNexysOnBoardMemCtrl_regMemAdr_7_mux0000_SW0 : LUT4_L
    generic map(
      INIT => X"7FFF"
    )
    port map (
      I0 => eppctroller_instNexysOnBoardMemCtrl_Madd_regMemAdr_7_0_add0000_cy_3_Q,
      I1 => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(4),
      I2 => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(5),
      I3 => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(6),
      LO => N44
    );
  eppctroller_instNexysOnBoardMemCtrl_regMemAdr_23_mux0000_SW0 : LUT4_L
    generic map(
      INIT => X"7FFF"
    )
    port map (
      I0 => eppctroller_instNexysOnBoardMemCtrl_Madd_regMemAdr_23_16_add0000_cy_3_Q,
      I1 => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(20),
      I2 => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(21),
      I3 => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(22),
      LO => N50
    );
  eppctroller_instNexysOnBoardMemCtrl_regMemAdr_15_mux0000_SW0 : LUT4_L
    generic map(
      INIT => X"7FFF"
    )
    port map (
      I0 => eppctroller_instNexysOnBoardMemCtrl_Madd_regMemAdr_15_8_add0000_cy_3_Q,
      I1 => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(12),
      I2 => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(13),
      I3 => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(14),
      LO => N56
    );
  eppctroller_instNexysOnBoardMemCtrl_regMemAdr_23_not00011_SW2 : LUT3_L
    generic map(
      INIT => X"F9"
    )
    port map (
      I0 => eppctroller_instEppCtrl_stEppCur(2),
      I1 => eppctroller_instEppCtrl_stEppCur(0),
      I2 => eppctroller_instNexysOnBoardMemCtrl_regMemAdr(0),
      LO => N158
    );
  eppctroller_instNexysOnBoardMemCtrl_regMemAdr_23_not00011_SW3 : LUT4_L
    generic map(
      INIT => X"FFEB"
    )
    port map (
      I0 => eppctroller_instEppCtrl_regEppAdrOut(1),
      I1 => eppctroller_instEppCtrl_stEppCur(2),
      I2 => eppctroller_instEppCtrl_stEppCur(0),
      I3 => eppctroller_instEppCtrl_regEppAdrOut(0),
      LO => N160
    );
  eppctroller_instNexysOnBoardMemCtrl_regMemRdData_mux0000_0_147 : LUT4_D
    generic map(
      INIT => X"FF8A"
    )
    port map (
      I0 => eppctroller_instNexysOnBoardMemCtrl_stMsmCur(3),
      I1 => N167,
      I2 => eppctroller_instNexysOnBoardMemCtrl_stMsmCur(1),
      I3 => eppctroller_instNexysOnBoardMemCtrl_regMemRdData_mux0000_0_122_428,
      LO => N249,
      O => N01
    );
  eppctroller_instNexysOnBoardMemCtrl_Mmux_stMsmNext_6_SW0 : LUT4_D
    generic map(
      INIT => X"1000"
    )
    port map (
      I0 => eppctroller_instNexysOnBoardMemCtrl_DelayCnt(4),
      I1 => eppctroller_instNexysOnBoardMemCtrl_DelayCnt(3),
      I2 => eppctroller_instNexysOnBoardMemCtrl_DelayCnt(0),
      I3 => eppctroller_instNexysOnBoardMemCtrl_stMsmCur(0),
      LO => N250,
      O => N1711
    );
  eppctroller_instNexysOnBoardMemCtrl_Mmux_stMsmNext_5_f5_SW1 : LUT4_L
    generic map(
      INIT => X"8A8F"
    )
    port map (
      I0 => eppctroller_instNexysOnBoardMemCtrl_stMsmCur(1),
      I1 => N401,
      I2 => eppctroller_instNexysOnBoardMemCtrl_stMsmCur(3),
      I3 => N201,
      LO => N121
    );

end Structure;


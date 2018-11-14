-- Vhdl instantiation template created from schematic Y:\Desktop\DesignPJ1\SDRAMtest\OnBoardMemCfg.sch - Mon Oct 01 02:15:29 2018
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module.
-- 2) To use this template to instantiate this component, cut-and-paste and then edit.
--

   COMPONENT OnBoardMemCfg
   PORT( RamUB	:	OUT	STD_LOGIC; 
          RamWait	:	IN	STD_LOGIC; 
          RamClk	:	OUT	STD_LOGIC; 
          RamAdv	:	OUT	STD_LOGIC; 
          RamCre	:	OUT	STD_LOGIC; 
          RamLB	:	OUT	STD_LOGIC; 
          FlashStSts	:	IN	STD_LOGIC; 
          FlashRp	:	OUT	STD_LOGIC; 
          MemDB	:	INOUT	STD_LOGIC_VECTOR (15 DOWNTO 0); 
          MemAdr	:	OUT	STD_LOGIC_VECTOR (23 DOWNTO 1); 
          MemOe	:	OUT	STD_LOGIC; 
          MemWr	:	OUT	STD_LOGIC; 
          FlashCS	:	OUT	STD_LOGIC; 
          RamCS	:	OUT	STD_LOGIC; 
          clk	:	IN	STD_LOGIC; 
          EppDstb	:	IN	STD_LOGIC; 
          EppAstb	:	IN	STD_LOGIC; 
          EppWr	:	IN	STD_LOGIC; 
          EppWait	:	OUT	STD_LOGIC; 
          EppDB	:	INOUT	STD_LOGIC_VECTOR (7 DOWNTO 0); 
          EppRst	:	IN	STD_LOGIC);
   END COMPONENT;

   UUT: OnBoardMemCfg PORT MAP(
		RamUB => , 
		RamWait => , 
		RamClk => , 
		RamAdv => , 
		RamCre => , 
		RamLB => , 
		FlashStSts => , 
		FlashRp => , 
		MemDB => , 
		MemAdr => , 
		MemOe => , 
		MemWr => , 
		FlashCS => , 
		RamCS => , 
		clk => , 
		EppDstb => , 
		EppAstb => , 
		EppWr => , 
		EppWait => , 
		EppDB => , 
		EppRst => 
   );

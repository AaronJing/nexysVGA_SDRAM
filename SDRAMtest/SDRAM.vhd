----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:49:12 10/01/2018 
-- Design Name: 
-- Module Name:    SDRAM - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity SDRAM is
    Port ( CLK : in  STD_LOGIC; --100mhz
			  main_clk : in std_logic;
			  BTN : in 	STD_LOGIC_vector(2 downto 0);
           ASTB : in  STD_LOGIC;
           DSTB : in  STD_LOGIC;
           PWR : in  STD_LOGIC;
           PWAIT : out  STD_LOGIC;
           PDATA : inout  STD_LOGIC_VECTOR (7 downto 0);
           RamCS : out  STD_LOGIC;
           FlashCS : out  STD_LOGIC;
           MemWR : out  STD_LOGIC;
           MemOE : out  STD_LOGIC;
           RamUB : out  STD_LOGIC;
           RamLB : out  STD_LOGIC;
           RamCRE : out  STD_LOGIC;
           RamADV : out  STD_LOGIC;
           RamCLK : out  STD_LOGIC;
           RamWAIT : in  STD_LOGIC;
           FlashRP : out  STD_LOGIC;
           FlashStSts : in  STD_LOGIC;
           MemAdr : out  STD_LOGIC_VECTOR (23 downto 1);
           MemDB : inout  STD_LOGIC_VECTOR (15 downto 0);
			  SW: in std_logic;
			  rgb: out std_logic_vector(7 downto 0);
			  vs: out std_logic;
			  hs: out std_logic;
			  FX2_IO: out STD_LOGIC
			  --			  hex : out std_logic_vector(7 downto 0);
			  --			  an: out std_logic_vector(3 downto 0)
			  
			  );
end SDRAM;

architecture Behavioral of SDRAM is

signal dataout: std_logic_vector(15 downto 0);

signal Sig_RamCS: std_logic;
signal Sig_MemWR: std_logic;
signal Sig_MemOE: std_logic;
signal Sig_RamUB: std_logic;
signal Sig_RamLB: std_logic;
signal Sig_RamCRE: std_logic;
signal Sig_RamADV: std_logic;
signal Sig_RamCLK: std_logic;
signal Sig_RamWAIT: std_logic;

signal Sig_RamCS1: std_logic;
signal Sig_MemWR1: std_logic;
signal Sig_MemOE1: std_logic;
signal Sig_RamUB1: std_logic;
signal Sig_RamLB1: std_logic;
signal Sig_RamCRE1: std_logic;
signal Sig_RamADV1: std_logic;
signal Sig_RamCLK1: std_logic;
signal Sig_RamWAIT1: std_logic;

signal clk_50: std_logic := '1';
signal clk_25: std_logic := '1';
signal counter: integer:= 0;
signal sig_read_next: std_logic := '0';
signal sig_full: std_logic;
signal sig_sel: std_logic ;

signal Sig_MemAdr: std_logic_vector(23 downto 1);
signal Sig_addr: std_logic_vector(23 downto 1):=(others => '0');
signal Sig_output_addr: std_logic_vector(23 downto 1);
signal sig_read_start: std_logic;
signal sig_dataValid: std_logic;

signal counter1: integer:=0;
signal db: integer:= 0;

signal hex_0: std_logic_vector(7 downto 0);
signal hex_1: std_logic_vector(7 downto 0);
signal counter2: integer := 0;
signal counter3: integer range 0 to 7:=0;

signal sig_row: std_logic_vector(9 downto 0);
signal sig_col: std_logic_vector(9 downto 0);
signal sig_rgb: std_logic_vector(7 downto 0);

signal counter4: integer:= 0;
signal sig_enable : std_logic;
signal sig_rd_addr:  std_logic_vector(9 downto 0);
signal sig_wr_addr:  std_logic_vector(9 downto 0);
--signal Sig_MemDB: std_logic(15 downto 0);
begin
--	process(clk,btn(0))
--	begin
--		if btn(0) = '1' then
--			counter2 <= 0;
--			counter3 <= 0;
--		elsif rising_edge(clk) then
--			if counter2 = 15000000 then
--				counter2 <= 0;
--				hex_0 <= mem(counter3);
--				hex_1 <= mem(counter3+1);
--				counter3 <= counter3 + 2;
--			 else
--				counter2 <= counter2 +1;
--				hex_0 <= hex_0;
--				hex_1 <= hex_1;
--			 end if;
--		end if;
--	end process;
--	
--	process(clk,btn(0))
--	begin
--		if (btn(0) = '1') then
--			mem <=(others =>(others => '0'));
--			counter1 <= 0;
--			db <= 0;
--			sig_full <= '0';
--			sig_enable <= '0';
--		elsif(rising_edge(clk)) then
--			
--			if btn(2) = '1' then
--			 if db = 15000000 then
--				db <= 0;
--				sig_enable <= not sig_enable;
--			 else
--				db <= db +1;
--			 end if;
--			else
--				db <= 0;
--			end if;
--			if sig_datavalid = '1' then
--				if(counter1 + 1 <= 7) then
--					mem(counter1) <= memDB(7 downto 0);
--					mem(counter1 + 1) <= memDB(15 downto 8);
--					counter1 <= counter1 + 2;
--					sig_full <= '0';
--				else
--					mem <= mem;
--					sig_full <= '1';
--				end if;
--			end if;
--		end if;
--	end process;
--	led_debugging: entity work.seg7driver
--							port map (
--								clk  => clk,
--								reset => '0',
--								hex1 => hex_0(3 downto 0),
--								hex2 => hex_0(7 downto 4),
--								hex3 => hex_1(3 downto 0),
--								hex4 => hex_1(7 downto 4),
--								seg => an,
--								led => hex
--							);
--	buffer_fifo: entity work.std_fifo
--							port map (
--								CLK		 => clk,
--								RST		 => btn(0),
--								WriteEn	 =>
--								-- RGB in
--								DataIn	 => 
--								ReadEn	 =>
--								-- RGB out
--								DataOut	 =>
--								Empty	    =>
--								Full		 =>
--							);

	line_buffer: entity work.vga_buffer
						port map (
							clk_100 => clk,
							rst => btn(0),

							input_data => MemDB,
	
							wr_addr=> sig_wr_addr, -- write addr : counter
							enable => sig_enable,
							rd_addr => sig_rd_addr,
							rgb_out => sig_rgb
						);
	fsm_sd: entity work.fsm
							port map (
								clk_100=> clk,
								rst=> btn(0),
								hc=> sig_col,
								vc=> sig_row,
								enable => sig_enable,
								rd_addr => sig_rd_addr,
								wr_addr => sig_wr_addr,
								data_valid=> sig_datavalid,
								read_start=> sig_read_start,
								ram_wait => ramWait,
								fill => sig_read_next,
								fulli => sig_full
							);
	vga_controller: entity work.display_controller
							port map (
								clk => main_clk,
								reset => btn(0),

								in_rgb => sig_rgb,
		
								out_rgb => rgb,
								out_hsync => hs,
								out_vsync => vs,
								out_row => sig_row,
								out_col => sig_col,
								out_valid => open
							);
	clk_division: process(clk,btn(0))
						begin
							if(btn(0) = '1') then
								counter <= 0;
							elsif rising_edge(clk) then
								counter <= counter + 1;
								
								if (counter = 2) then
									clk_50 <= not clk_50;
									counter <= 0;
								else
									clk_50 <= clk_50;
								end if;
							end if;
						end process;
	clk_division2: process(clk,btn(0))
						begin
							if(btn(0) = '1') then
								counter4 <= 0;
							elsif rising_edge(clk) then
								counter4 <= counter4 + 1;
								
								if (counter4 = 4) then
									clk_25 <= not clk_25;
									counter4 <= 0;
								else
									clk_25 <= clk_25;
								end if;
							end if;
						end process;
	eppctroller: entity work.memory
						port map (
								RamUB	=> sig_RamUB,
								RamWait	=> sig_RamWait, 
								RamClk	=> sig_RamCLK, 
								RamAdv	=> sig_RamAdv, 
								RamCre	=> sig_RamCre, 
								RamLB    => sig_RamLB,
								
								FlashStSts	=> FlashStSts,
								FlashRp	=> FlashRp,
								MemDB	 => MemDB,
								MemAdr	=> sig_MemAdr,
								
								MemOe	 => sig_MemOe, 
								MemWr	=> sig_MemWr,
								
								
								FlashCS	=> FlashCS,
								
								RamCS	 => sig_RamCS,
								
								clk	=> CLK_50, 
								EppDstb	=> DSTB, 
								EppAstb	=> ASTB, 
								EppWr	 => PWR, 
								EppWait	=> PWAIT, 
								EppDB	=> PDATA, 
								EppRst	=> '1'
			
						);
			SDRAM: entity work.InGameSdram
				port map(
					clk_100 => clk,
					enable => sw,
					read_next => sig_read_next,
					full => sig_full,
					sel => sig_sel,
					rst => btn(0),
					read_start => sig_read_start,
					data_valid => sig_datavalid,
					ram_cre => sig_RamCre1,
					ram_adv => sig_RamADV1,
					ram_cs => sig_RamCS1,
					ram_we => sig_MemWr1,
					ram_oe => sig_MemOE1,
					ram_lb => sig_RamLB1,
					ram_ub => sig_RamUB1,
					ram_wait => sig_ramwait,
					ram_clk => sig_RamCLk1,
					
					
					input_addr => sig_addr,
					output_addr => sig_output_addr
				);
		
--	fx2_io(0)<= clk;
--	
	memadr <= sig_memadr when sig_sel = '0' else
				 sig_output_addr;
	RamCS <= sig_RamCS when sig_sel = '0' else
				sig_RamCS1;
--	fx2_io(1)<= sig_RamCS;
--	
	MemOE <= sig_MemOE when sig_sel = '0' else
				sig_MemOE1;
--	fx2_io(2)<= sig_MemOE;
--	
	MemWR <= sig_MemWR when sig_sel = '0' else
	         sig_MemWr1;
--	fx2_io(3)<= sig_MemWR;
--	
	RamUB <= sig_RamUB when sig_sel = '0' else
				sig_RamUB1;
--	fx2_io(4)<= sig_RamUB;
--	
	RamLB <= sig_RamLB when sig_sel = '0' else
				sig_RamLB1;
--	fx2_io(5)<= sig_RamLB;
--	
	RamAdv <= sig_RamADV when sig_sel = '0' else
				 sig_RamADV1;
--	fx2_io(6)<= sig_RamADV;
--	
	RamClk <= sig_RamClk when sig_sel = '0' else
				 sig_RamCLk1;
--	
   sig_RamWait <= ramWait;
	fx2_io<= ramWait;
--	
	RamCre <= sig_RamCre when sig_sel = '0' else
				 sig_RamCre1;
--	fx2_io(8)<= sig_RamCre;


end Behavioral;


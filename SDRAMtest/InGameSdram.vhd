----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:41:44 10/04/2018 
-- Design Name: 
-- Module Name:    InGameSdram - Behavioral 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use ieee.numeric_std.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity InGameSdram is
	port(
		clk_100: in std_logic;
		-- enable InGameSdram controller
		enable: in std_logic;
		-- read_next
		read_next: in std_logic;
		-- Buffer is full
		full: in std_logic;
		
		sel: out std_logic;
		read_start: out std_logic;
		rst: in std_logic;
		
		ram_cre: out std_logic;
		ram_adv: out std_logic;
		ram_cs: out std_logic;
		ram_we: out std_logic;
		ram_oe: out std_logic;
		ram_lb: out std_logic;
		ram_ub: out std_logic;
		ram_wait: in std_logic;
		ram_clk : out std_logic;
		data_valid: out std_logic;
		
		input_addr: in std_logic_vector(23 downto 1);
		output_addr: out std_logic_vector(23 downto 1)
	);
end InGameSdram;

architecture Behavioral of InGameSdram is
--'R' means reserved bits							
--BCR bus configuration register
constant default_BCR: std_logic_vector(23 downto 1):=  
-- 'R'   Register    'R'   Op_Mode  latency  latency_counter  Wait_Polarity    'R'     Wait_configure   'R'     Drive_strength  Brust_wrap Brust_length
"000"&    "10"&      "00"&    '1'&     '0'&       "011"&          '1'&         '0'&  		'1'&			  "00"&		 "01"&			'1'&			"111";
constant continuous_brust_BCR: std_logic_vector(23 downto 1):= 
-- 'R'   Register    'R'   Op_Mode  latency  latency_counter  Wait_Polarity    'R'     Wait_configure   'R'     Drive_strength  Brust_wrap Brust_length
"000"&    "10"&      "00"&    '0'&     '1'&       "110"&          '0'&         '0'&  		'0'&			  "00"&		 "01"&			'1'&			"111";

type state_t is (idle,load_brust,brust_read,stand_by,load_default,update_addr,CS_refresh1,CS_refresh2);
signal state: state_t := idle;



-- counter for load setting states
signal counter: integer:=0;
signal brust_counter: integer:=0;
signal counter2 : integer:=0;

signal counter3:integer:= 0;
--signal sel1 : std_logic:= '0';
signal mul: integer:=0;
signal addr: std_logic_vector(23 downto 1);
begin
	process(clk_100,rst)
	begin
		if rst = '1' then
			state <= cs_refresh2;
			--counter3 <= 0;
		elsif rising_edge(clk_100) then
			case state is
				when idle =>
					if enable = '1'  and read_next = '1' then
						state <= load_brust;
					else
						state <= state;
					end if;
					--counter3 <= 0;
				when load_brust =>				
					if counter2 = 10 then
						state <= cs_refresh1;
					else
						state <= state;
					end if;
				when CS_refresh1 =>
					 state <= brust_read;
				when brust_read =>
					
					if enable = '0' then
						state <= CS_refresh2;
					elsif full = '1' then
						state <= update_addr;
					else	
						state <= state;
					end if;
				when update_addr =>
					
					if counter3 = 479 then
						counter3 <= 0;
					else
						counter3<= counter3+1;
					end if;
					if enable = '0' then
						state <= Cs_refresh2;
					else
						state <= stand_by;
					end if;
				when stand_by =>
					if enable = '0' then
						state <= CS_refresh2;
					elsif read_next = '1' then
						state <= brust_read;
					else	
						state <= state;
					end if;
				when CS_refresh2 =>
					state <= load_default;
				when load_default =>
					if ram_wait = '1' then 
						state <= state;
					else
						state <= idle;
					end if;
			end case;			
		end if;
	end process;
	read_start <= '1' when state = brust_read else
						'0';
	data_valid  <= '1' when (state = brust_read and brust_counter >= 8) else
						'0';
	output_addr <= (others => 'Z') when state = idle else
						default_BCR when state = load_default else
						continuous_brust_BCR when state = load_brust else
						addr;
	mul <= counter3*320;
	addr <= input_addr + mul;
	-- access the configuration registers by enable active_high CRE
	ram_cre <= 'Z' when state = idle else
				  '1' when (state = load_default and counter < 2) or (state = load_brust and counter2 < 3)else --2
				  '0';
	
	ram_adv <= 'Z' when state = idle else
				  '0' when ((state = load_brust and counter2 < 2) or( state = load_default and counter < 2) or (state = brust_read and brust_counter < 2))else --2
				  '1';
	-- write, active_low, use for configure BCR
	ram_we  <= 'Z' when state = idle else
				  '0' when (state = load_default and counter < 2) or (state = load_brust and counter2 >= 3)else --2
				  '1';
	-- read, active_low, use for brust read
	ram_oe  <= 'Z' when state = idle else
				  '0' when (state = brust_read and brust_counter >= 2) else
				  '1';
	-- word addressing,so always active_low lowerbyte and upperbyte
	ram_lb <= 'Z' when state = idle else
				 '0';
	ram_ub <= 'Z' when state = idle else
				 '0';
	-- chip select, when we in states except for stand-by and idle we should be active_low to enable sdram
	ram_cs <= 'Z' when state = idle else
				 '1' when state = stand_by or state = CS_refresh1 or state = CS_refresh2 else
				 '0';
	-- out side mux select signal
	sel <= '0' when state = idle else
			 '1';
	ram_clk <= clk_100 when state = brust_read or state =cs_refresh2 or state = load_default or state = stand_by else
					'0';
	process(clk_100,rst)
	begin
		if rst = '1' then
			counter <= 0;
			brust_counter <= 0;
		elsif rising_edge(clk_100) then
			if  state = load_default then
				counter <= counter + 1;
			else
				counter <= 0;
			end if;
			if state = load_brust then
				counter2 <= counter2 + 1;
			else
				counter2 <= 0;
			end if;
			if state = brust_read then
				brust_counter <= brust_counter + 1;
			else
				brust_counter <= 0;
			end if;
		end if;
	end process;
	
	
end Behavioral;


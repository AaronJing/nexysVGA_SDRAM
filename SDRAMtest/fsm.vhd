----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    05:19:21 10/07/2018 
-- Design Name: 
-- Module Name:    fsm - Behavioral 
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

entity fsm is
	port(
		
		clk_100: in std_logic;
		rst: in std_logic;
		hc: in std_logic_vector(9 downto 0);
		vc: in std_logic_vector(9 downto 0);
		enable: out std_logic;
		rd_addr :out std_logic_vector(9 downto 0);
		wr_addr :out std_logic_vector(9 downto 0);
		data_valid: in std_logic;
		read_start: in std_logic;
		ram_wait: in std_logic;
		fill: out std_logic;
		fulli: out std_logic
	);
end fsm;

architecture Behavioral of fsm is
signal counter: std_logic_vector(9 downto 0);
type state_t is (full,filling,readed);
signal state: state_t:= readed;


begin
 	process(state,data_valid,read_start)
	begin
		if (state = filling) and data_valid = '1' and read_start = '1' and counter <= 319 then
			enable <= '1';
		else
			enable <= '0';
		end if;
	end process;
	process(clk_100,rst)
	begin
		if rst = '1' then
			state <= readed;
			counter <= (others => '0');
		elsif rising_edge(clk_100) then
			case state is
				when readed =>	
					if vc >= 45 and hc = 0 	then
						state <= filling;
					else
						state <= state;
					end if;
				when filling =>
					if data_valid = '1' and read_start = '1'  then
						if ram_wait = '1' then
							counter <= counter + 1;
						else
							counter <= counter;
						end if;
					else
						counter <= (others => '0');
					end if;
					if counter = 319 then
						state <= full;
					else
						state <= state;
					end if;
				when full =>
					if hc = 799 then
						state <= readed;
					else
						state <= state;
					end if;
					counter <= (others => '0');
			end case;
			
		end if;
	end process;
	fulli <= '1' when state = full else			  
			  '0';
	fill <= '1' when state = filling else
	        '0';
	wr_addr <= counter;
	rd_addr <= hc-160 ;

end Behavioral;


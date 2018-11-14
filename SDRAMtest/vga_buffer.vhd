----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:57:08 10/06/2018 
-- Design Name: 
-- Module Name:    vga_buffer - Behavioral 
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

entity vga_buffer is
	port(
		clk_100: in std_logic;
		rst: in std_logic;
		input_data: in std_logic_vector(15 downto 0);
		wr_addr: in std_logic_vector(9 downto 0); -- write addr : counter
		enable: in std_logic;
		rd_addr: in std_logic_vector(9 downto 0); -- index
		rgb_out: out std_logic_vector(7 downto 0)
		
	);
end vga_buffer;

architecture Behavioral of vga_buffer is
	type ram_type is array (0 to 319) of std_logic_vector(15 downto 0);
   signal mem : ram_type;
	signal index1:integer;
	signal index2:integer;
	signal right_shift: std_logic_vector(9 downto 0);
begin
	index1 <= to_integer(unsigned(wr_addr));
	process(clk_100,rst)
	begin
--		if rst = '1' then
--			mem <= (others => (others => '0'));
		if rising_edge(clk_100) and enable = '1' then
			
				mem(index1) <= input_data;

		end if;
	end process;

   index2 <=  to_integer(unsigned('0' & rd_addr(9 downto 1)));	
	process(rd_addr,index2)
	begin
		if rd_addr(0) = '1' then
			rgb_out <= mem(index2)(15 downto 8);
		else
			rgb_out <= mem(index2)(7 downto 0);
		end if;
--		if to_integer(unsigned(mem(0))) = 256*256 then
--			rgb_out <= x"ff";
--		else
--			rgb_out <= x"00";
--		end if;
	end process;
--	rgb_out <= mem(128)(15 downto 8);
end Behavioral;


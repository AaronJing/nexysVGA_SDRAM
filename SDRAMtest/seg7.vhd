----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:51:39 08/20/2018 
-- Design Name: 
-- Module Name:    seg7 - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity seg7 is
    Port ( bcd : in  STD_LOGIC_VECTOR (3 downto 0);
           leds : out  STD_LOGIC_VECTOR (7 downto 0));
end seg7;

architecture Behavioral of seg7 is

begin
process(bcd)
	begin 
		case bcd is					 --PGFEDCBA
			WHEN "0000" => leds <= "01000000" ;
			WHEN "0001" => leds <= "11111001" ; 
			WHEN "0010" => leds <= "00100100" ;
			WHEN "0011" => leds <= "00110000" ;
			WHEN "0100" => leds <= "00011001" ;
			WHEN "0101" => leds <= "00010010" ;
			WHEN "0110" => leds <= "00000010" ;
			WHEN "0111" => leds <= "01111000" ;
			WHEN "1000" => leds <= "00000000" ;
			WHEN "1001" => leds <= "00010000" ;
			When "1010" => leds <= "00001000" ;
			When "1011" => leds <= "00000011" ;
			When "1100" => leds <= "01000110" ;
			When "1101" => leds <= "00100001" ;
			When "1110" => leds <= "00000110" ;
			When "1111" => leds <= "00001110" ;
			WHEN OTHERS => leds <= "--------" ;
		end case;	
	end process;
end Behavioral;


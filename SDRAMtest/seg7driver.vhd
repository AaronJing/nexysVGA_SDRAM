----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    05:34:14 08/20/2018 
-- Design Name: 
-- Module Name:    seg7driver - Behavioral 
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

entity seg7driver is
    Port ( 
			  clk  : in std_logic;
			  reset : in std_logic;
			  hex1 : in  STD_LOGIC_VECTOR (3 downto 0);
           hex2 : in  STD_LOGIC_VECTOR (3 downto 0);
           hex3 : in  STD_LOGIC_VECTOR (3 downto 0);
           hex4 : in  STD_LOGIC_VECTOR (3 downto 0);
           seg : out  STD_LOGIC_VECTOR (3 downto 0);
           led : out  STD_LOGIC_VECTOR (7 downto 0));
end seg7driver;

architecture Behavioral of seg7driver is
component seg7
	Port ( bcd : in  STD_LOGIC_VECTOR (3 downto 0);
           leds : out  STD_LOGIC_VECTOR (7 downto 0));
end component;
type state_t is (s1,s2,s3,s4);
signal state: state_t:=s1;
signal counter: integer:=0;
signal sig_encoding:std_logic_vector(3 downto 0):=(others=>'0');
begin

	process(clk,reset)
	begin
		if reset = '1' then
			counter <= 0;
			state <= s1;
		elsif rising_edge(clk) then
			if(counter = 41500) then
				case state is
					when s1 =>
						state <= s2;
					when s2 =>
						state <= s3;
					when s3 =>
						state <= s4;
					when s4 =>
						state <= s1;
				end case;
				counter <= 0;
			else
				state <= state;
				counter <= counter + 1;
			end if;
		end if;
	end process;
	

	process(state,hex1,hex2,hex3,hex4)
	
	begin

		case state is
			when s1 =>
					seg <="1110";
					sig_encoding <= hex1;
			when s2 =>
					seg <="1101";
					sig_encoding <= hex2;
			when s3 =>
					seg <="1011";
					sig_encoding <= hex3;
			when s4 =>
					seg <="0111";
					sig_encoding <= hex4;
		end case;
	end process;
	
	encoding: seg7
	port map(
		bcd => sig_encoding,
		leds => led
	);
end Behavioral;


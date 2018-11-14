----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:38:58 08/31/2018 
-- Design Name: 
-- Module Name:    rgb_finder - Behavioral 
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
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.NUMERIC_STD.ALL;
library work;
USE work.game_package.all;


-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity rgb_finder is
	port(
		in_x : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
		in_y : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
		
		-- outputs
		out_red :   OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
		out_green : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
		out_blue :  OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
		ship : in loc_object;
		asteroids: in array_asteroids
		);
end rgb_finder;

architecture Behavioral of rgb_finder is
SIGNAL pos_x : INTEGER;
SIGNAL pos_y : INTEGER;
signal object_colour : std_logic := '0';
begin
		-- convert the input co-ords
	pos_x <= CONV_INTEGER(UNSIGNED(in_x));
	pos_y <= CONV_INTEGER(UNSIGNED(in_y));
	-- controls colour output depending on the current pixel
	colourOut : PROCESS (pos_x, pos_y) -- might just put clk in sensitivity list ????
	BEGIN

		object_colour <= '0';
		IF (pos_x >= ship.x AND pos_x <= ship.x + ship.size AND pos_y >= ship.y AND pos_y <= ship.y + ship.size) THEN
			-- draw ship white
			out_red <= "111";
			out_green <= "111";
			out_blue <= "11";
			object_colour <= '1';
		ELSE
			FOR i IN loop_range_asteroids LOOP
				IF (pos_x + 40 >= asteroids(i).x AND pos_x + 40<= asteroids(i).x + asteroids(i).size
				    AND pos_y +40>= asteroids(i).y AND pos_y + 40<= asteroids(i).y + asteroids(i).size)
					THEN
					-- draw asteroids pink :D
					out_red <= "111";
					out_green <= "000";
					out_blue <= "11";					
					object_colour <= '1';
				END IF;
			END LOOP;			
		END IF;
		
		IF( object_colour = '0') THEN
			out_red <= "000";
			out_green <= "000";
			out_blue <= "00";
		END IF;
	
		-- IF (pos_x <= 0 OR pos_x >= 639 OR pos_y <= 0 OR pos_y >= 479)
			-- THEN -- white border
			-- out_red <= "111";
			-- out_green <= "111";
			-- out_blue <= "11";
		-- ELSE -- draw background black
			-- out_red <= "000";
			-- out_green <= "000";
			-- out_blue <= "00";
		-- END IF;
	END PROCESS;
end Behavioral;


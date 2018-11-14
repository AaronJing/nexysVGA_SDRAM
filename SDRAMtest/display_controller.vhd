LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY display_controller IS
	PORT (
		clk : IN STD_LOGIC;
		reset : IN STD_LOGIC;

		in_rgb: in std_logic_vector(7 downto 0);
		
		out_rgb : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		out_hsync : OUT STD_LOGIC;
		out_vsync : OUT STD_LOGIC;
		out_row : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
		out_col : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
		out_valid : OUT STD_LOGIC
	);
END display_controller;

ARCHITECTURE behavioural OF display_controller IS

CONSTANT hfp: INTEGER := 16; -- horizontal front porch
CONSTANT hbp: INTEGER := 48; -- horizontal back porch
CONSTANT hs: INTEGER := 96; -- horizontal sync pulse
CONSTANT hvisible: INTEGER := 640; -- horizontal visible area
CONSTANT hpixels: INTEGER := 800; -- horizontal total length

CONSTANT vfp: INTEGER := 10; -- vertical front porch
CONSTANT vbp: INTEGER := 33; -- vertical back porch
CONSTANT vs: INTEGER := 2; -- vertical sync pulse
CONSTANT vvisible: INTEGER:= 480; -- vertical visible area
CONSTANT vpixels: INTEGER := 525; -- vertical total length

SIGNAL hc: INTEGER:= 0; -- horizontal counter
SIGNAL vc: INTEGER:= 0; -- vertical counter
SIGNAL enable_vc: STD_LOGIC := '0';

BEGIN

	horizontal_pixels_counter : PROCESS(clk,reset)
	BEGIN
		IF (reset = '1') THEN
			hc <= 0; -- clear hcounter
		ELSIF (RISING_EDGE(clk)) THEN
			IF (hc = hpixels - 1) THEN
				hc <= 0;
				enable_vc <= '1';
			ELSE
				hc <= hc + 1;
				enable_vc <= '0';
			END IF;
		END IF;
	END PROCESS;

	vertical_pixels_counter : PROCESS(clk,reset)
	BEGIN
		IF (reset = '1') THEN
			vc <= 0;
		ELSIF (RISING_EDGE(clk) AND enable_vc = '1') THEN
			IF (vc = vpixels - 1) THEN
				vc <= 0;
			ELSE
				vc <= vc + 1;
			END IF;
		END IF;
	END PROCESS;
	
	out_hsync <= '0' WHEN (hc > hfp AND hc <= hfp + hs) ELSE '1';
	out_col <= STD_LOGIC_VECTOR(TO_UNSIGNED(hc, 10));
	out_vsync <= '0' WHEN (vc > vfp AND vc <= vfp + vs) ELSE '1';
	out_row <= STD_LOGIC_VECTOR(TO_UNSIGNED(vc, 10));

	
	ouput_colour : PROCESS(hc,vc,in_rgb)
	BEGIN
		IF (hc >= 0 AND hc < hfp+hbp+hs) OR (vc >= 0 AND vc < vfp+vbp+vs) THEN
			out_rgb <= (OTHERS => '0');
			out_valid <= '0';
		ELSE
			out_rgb <= in_rgb;
			out_valid <= '1';
		END IF;
	END PROCESS;
	
END behavioural;

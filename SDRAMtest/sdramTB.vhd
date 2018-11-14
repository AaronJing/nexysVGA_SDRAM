--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   01:32:22 10/05/2018
-- Design Name:   
-- Module Name:   Y:/Desktop/DesignPJ1/SDRAMtest/sdramTB.vhd
-- Project Name:  SDRAMtest
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: InGameSdram
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY sdramTB IS
END sdramTB;
 
ARCHITECTURE behavior OF sdramTB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT InGameSdram
    PORT(
         clk_100 : IN  std_logic;
         enable : IN  std_logic;
         read_next : IN  std_logic;
         full : IN  std_logic;
         sel : OUT  std_logic;
         rst : IN  std_logic;
         ram_clk : OUT  std_logic;
         ram_cre : OUT  std_logic;
         ram_adv : OUT  std_logic;
         ram_cs : OUT  std_logic;
         ram_we : OUT  std_logic;
         ram_oe : OUT  std_logic;
         ram_lb : OUT  std_logic;
         ram_ub : OUT  std_logic;
         ram_wait : IN  std_logic;
         data_valid : OUT  std_logic;
         input_addr : IN  std_logic_vector(22 downto 0);
         output_addr : OUT  std_logic_vector(22 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk_100 : std_logic := '0';
   signal enable : std_logic := '0';
   signal read_next : std_logic := '0';
   signal full : std_logic := '0';
   signal rst : std_logic := '0';
   signal ram_wait : std_logic := '0';
   signal input_addr : std_logic_vector(22 downto 0) := (others => '0');

 	--Outputs
   signal sel : std_logic;
   signal ram_clk : std_logic;
   signal ram_cre : std_logic;
   signal ram_adv : std_logic;
   signal ram_cs : std_logic;
   signal ram_we : std_logic;
   signal ram_oe : std_logic;
   signal ram_lb : std_logic;
   signal ram_ub : std_logic;
   signal data_valid : std_logic;
   signal output_addr : std_logic_vector(22 downto 0);

   -- Clock period definitions
   constant clk_100_period : time := 10 ns;
   constant ram_clk_period : time := 10 ns;
	
	signal counter: integer:=0;
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: InGameSdram PORT MAP (
          clk_100 => clk_100,
          enable => enable,
          read_next => read_next,
          full => full,
          sel => sel,
          rst => rst,
          ram_clk => ram_clk,
          ram_cre => ram_cre,
          ram_adv => ram_adv,
          ram_cs => ram_cs,
          ram_we => ram_we,
          ram_oe => ram_oe,
          ram_lb => ram_lb,
          ram_ub => ram_ub,
          ram_wait => ram_wait,
          
			 data_valid => data_valid,
          
			 input_addr => input_addr,
          output_addr => output_addr
        );
	
	process(clk_100,rst)
	begin
		if rst = '1' then
			counter <= 0;
		elsif	rising_edge(clk_100) then
			if data_valid  = '1' then
					counter <= counter+1;
			else
					counter <= 0;
			end if;
		end if;
	end process;
	process(counter)
	begin
		if (counter = 16) then
			full <= '1';
		else
			full <= '0';
		end if;
	end process;
   -- Clock process definitions
   clk_100_process :process
   begin
		clk_100 <= '0';
		wait for clk_100_period/2;
		clk_100 <= '1';
		wait for clk_100_period/2;
   end process;
 
   ram_clk <= clk_100;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		rst <= '1';
      wait for 100 ns;
		enable <= '1';
		rst <= '0';
		wait for 60 ns;
		ram_wait <= '1';
      wait for clk_100_period*10000;

      -- insert stimulus here 
		ASSERT (FALSE) REPORT
      "Simulation successful (not a failure).  No problems detected."
      SEVERITY FAILURE;
      wait;
   end process;

END;

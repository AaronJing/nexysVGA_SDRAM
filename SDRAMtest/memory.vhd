library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity memory is
   port ( clk        : in    std_logic; 
          EppAstb    : in    std_logic; 
          EppDstb    : in    std_logic; 
          EppRst     : in    std_logic; 
          EppWr      : in    std_logic; 
          FlashStSts : in    std_logic; 
          RamWait    : in    std_logic; 
          EppWait    : out   std_logic; 
          FlashCS    : out   std_logic; 
          FlashRp    : out   std_logic; 
          MemAdr     : out   std_logic_vector (23 downto 1); 
          MemOe      : out   std_logic; 
          MemWr      : out   std_logic; 
          RamAdv     : out   std_logic; 
          RamClk     : out   std_logic; 
          RamCre     : out   std_logic; 
          RamCS      : out   std_logic; 
          RamLB      : out   std_logic; 
          RamUB      : out   std_logic; 
          EppDB      : inout std_logic_vector (7 downto 0); 
          MemDB      : inout std_logic_vector (15 downto 0)
			 );
end memory;

architecture BEHAVIORAL of memory is
   signal XLXN_190   : std_logic;
   signal XLXN_1262  : std_logic_vector (7 downto 0);
   signal XLXN_1264  : std_logic;
   signal XLXN_1265  : std_logic;
   signal XLXN_1266  : std_logic;
   signal XLXN_1393  : std_logic_vector (7 downto 0);
   signal XLXN_1557  : std_logic_vector (7 downto 0);
   signal XLXN_1558  : std_logic;
   signal XLXN_1560  : std_logic;
   component EppCtrl
      port ( clk              : in    std_logic; 
             EppAstb          : in    std_logic; 
             EppDstb          : in    std_logic; 
             EppWr            : in    std_logic; 
             EppRst           : in    std_logic; 
             HandShakeReqIn   : in    std_logic; 
             ctlEppDoneIn     : in    std_logic; 
             busEppIn         : in    std_logic_vector (7 downto 0); 
             ctlEppRdCycleOut : inout std_logic; 
             regEppAdrOut     : inout std_logic_vector (7 downto 0); 
             EppWait          : out   std_logic; 
             ctlEppDwrOut     : out   std_logic; 
             ctlEppStartOut   : out   std_logic; 
             busEppOut        : out   std_logic_vector (7 downto 0); 
             EppDB            : inout std_logic_vector (7 downto 0));
   end component;
   
   component NexysOnBoardMemCtrl
      port ( MemCtrlEnabled  : out   std_logic; 
             RamCS           : out   std_logic; 
             FlashCS         : out   std_logic; 
             MemWR           : out   std_logic; 
             MemOE           : out   std_logic; 
             RamUB           : out   std_logic; 
             RamLB           : out   std_logic; 
             RamCre          : out   std_logic; 
             RamAdv          : out   std_logic; 
             RamClk          : out   std_logic; 
             RamWait         : in    std_logic; 
             FlashRp         : out   std_logic; 
             FlashStSts      : in    std_logic; 
             FlashByte       : out   std_logic; 
             MemAdr          : out   std_logic_vector (23 downto 1); 
             MemDB           : inout std_logic_vector (15 downto 0); 
             EppWrDataIn     : in    std_logic_vector (7 downto 0); 
             ctlEppRdCycleIn : in    std_logic; 
             clk             : in    std_logic; 
             regEppAdrIn     : in    std_logic_vector (7 downto 0); 
             HandShakeReqOut : out   std_logic; 
             ctlMsmDoneOut   : out   std_logic; 
             ctlMsmStartIn   : in    std_logic; 
             ctlMsmDwrIn     : in    std_logic; 
             EppRdDataOut    : out   std_logic_vector (7 downto 0); 
             ComponentSelect : in    std_logic
				 );
   end component;
   
   component CompSel
      port ( regEppAdrIn : in    std_logic_vector (7 downto 0); 
             CS0_7       : out   std_logic);
   end component;
	

	
begin
	


	
   instEppCtrl : EppCtrl
      port map (busEppIn(7 downto 0)=>XLXN_1557(7 downto 0),
                clk=>clk,
                ctlEppDoneIn=>XLXN_1264,
                EppAstb=>EppAstb,
                EppDstb=>EppDstb,
                EppRst=>EppRst,
                EppWr=>EppWr,
                HandShakeReqIn=>XLXN_1266,
                busEppOut(7 downto 0)=>XLXN_1393(7 downto 0),
                ctlEppDwrOut=>XLXN_1558,
                ctlEppStartOut=>XLXN_1265,
                EppWait=>EppWait,
                ctlEppRdCycleOut=>XLXN_190,
                EppDB(7 downto 0)=>EppDB(7 downto 0),
                regEppAdrOut(7 downto 0)=>XLXN_1262(7 downto 0));
   
   instNexysOnBoardMemCtrl : NexysOnBoardMemCtrl
      port map (clk=>clk,
                ComponentSelect=>XLXN_1560,
                ctlEppRdCycleIn=>XLXN_190,
                ctlMsmDwrIn=>XLXN_1558,
                ctlMsmStartIn=>XLXN_1265,
                EppWrDataIn(7 downto 0)=>XLXN_1393(7 downto 0),
                FlashStSts=>FlashStSts,
                RamWait=>RamWait,
                regEppAdrIn(7 downto 0)=>XLXN_1262(7 downto 0),
                ctlMsmDoneOut=>XLXN_1264,
                EppRdDataOut(7 downto 0)=>XLXN_1557(7 downto 0),
                FlashByte=>open,
                FlashCS=>FlashCS,
                FlashRp=>FlashRp,
                HandShakeReqOut=>XLXN_1266,
                MemAdr(23 downto 1)=>MemAdr(23 downto 1),
                MemCtrlEnabled=>open,
                MemOE=>MemOe,
                MemWR=>MemWr,
                RamAdv=>RamAdv,
                RamClk=>RamClk,
                RamCre=>RamCre,
                RamCS=>RamCS,
                RamLB=>RamLB,
                RamUB=>RamUB,
                MemDB(15 downto 0)=>MemDB(15 downto 0)

					 );
   
   XLXI_1 : CompSel
      port map (regEppAdrIn(7 downto 0)=>XLXN_1262(7 downto 0),
                CS0_7=>XLXN_1560);
   
end BEHAVIORAL;
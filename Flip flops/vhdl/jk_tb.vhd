LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE ieee.std_logic_arith.all;

--JK flip flop Testbench----------------------------
ENTITY jk_tb is 
END ENTITY jk_tb;

ARCHITECTURE jk_tb_arch of jk_tb is 
	COMPONENT jk is 
		PORT (
		J, K, clk :IN std_logic;
		Q, QNot : OUT std_logic);
	END COMPONENT jk;  
	SIGNAL J, K, clk, Q, Qnot : std_logic:='0';    
	
begin
	jk1 : jk port map (J, K, clk, Q, Qnot); 
	clk <= not clk after 4 ns;
	J <= not J after 6 ns;
	K <= not K after 12 ns;
end ARCHITECTURE jk_tb_arch;

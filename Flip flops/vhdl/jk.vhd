LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE ieee.std_logic_arith.all;
 
--JK flip flop-------------------------- 
ENTITY jk is 
	PORT (
	J, K, clk :IN std_logic;
	Q, QNot : OUT std_logic);
END ENTITY jk;

ARCHITECTURE jk_arch of jk is 
	signal temp : std_logic:='0';
	
begin 
	process(J, K, clk)
	begin 
	if(clk'event and clk='1') then 
		if(J='0' and K='1') then 
			temp <= '0';
		elsif (J='1' and K='0') then 
			temp <= '1';
		elsif (J='1' and K='1') then 
	   		temp <= not temp;
		end if ;
	end if ;
	end process;
	Q <= temp;
	Qnot <= not temp;
end ARCHITECTURE jk_arch;

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE ieee.std_logic_arith.all;

--SR flip flop------------------------------------
ENTITY sr IS
  PORT(
    S, R, clk   : IN     std_logic;
    Q, Qnot     : OUT    std_logic);
END ENTITY sr;

ARCHITECTURE sr_arc OF sr IS
	signal temp : std_logic:='0';
BEGIN
	process (S, R, clk)
	begin 
	if (clk'event and clk='1') then 
		if ( S = '1' and R = '0') then 
			temp <= '1';
		elsif ( S = '0' and R = '1') then 
			temp <= '0';
		elsif ( S = '0' and R = '0') then 
			temp <= temp;
		elsif ( S = '1' and R = '1') then 
			temp <= 'X';
		end if ;
	end if;
	end process;	
	Q<= temp;
	Qnot <= not temp;
END ARCHITECTURE sr_arc; 

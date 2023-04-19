LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE ieee.std_logic_arith.all;

--T flip flop----------------------------
ENTITY t_ff IS
  PORT(
    T, clk     : IN     std_logic;
    Q, Qnot    : OUT    std_logic);
END ENTITY t_ff;

ARCHITECTURE t_ff_arc OF t_ff IS
SIGNAL temp : std_logic:='0';
BEGIN
	process (clk,T)
	begin
		if (clk'event and clk='1') then 
			temp <= not T ;   
		end if;
	end process;
	Q <= temp;
	Qnot <= not temp;
END ARCHITECTURE t_ff_arc; 


LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE ieee.std_logic_arith.all;

-- D flip flop---------------------
ENTITY d_ff IS
  PORT(
    D, clk     : IN     std_logic;
    Q, Qnot    : OUT    std_logic);
END ENTITY d_ff;

ARCHITECTURE d_ff_arc OF d_ff IS
SIGNAL temp: std_logic:='0';
BEGIN
	process (clk,D)
	begin
	if (clk'event and clk='1') then 
		temp <= D ;   
	end if;
	end process;
	Q <= temp;
	Qnot <= not temp;
END ARCHITECTURE d_ff_arc; 

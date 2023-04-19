LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE ieee.std_logic_arith.all;

--T flip flop testbench--------------------
ENTITY t_ff_tb IS
END ENTITY t_ff_tb;

ARCHITECTURE t_ff_tb_arc OF t_ff_tb IS
	COMPONENT t_ff
	PORT(
    T, clk     : IN     std_logic;
    Q, Qnot    : OUT    std_logic);
	END COMPONENT t_ff;
	SIGNAL T, clk, Q, Qnot : std_logic := '0';

BEGIN
	dff : t_ff port map ( T, clk, Q, Qnot);
	clk <= not clk after 5 ns;
	T <= not T after 11 ns;
END ARCHITECTURE t_ff_tb_arc; 


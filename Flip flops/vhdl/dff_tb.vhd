LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE ieee.std_logic_arith.all;

--D flip flop Testbench------------------------
ENTITY d_ff_tb IS
END ENTITY d_ff_tb;

ARCHITECTURE d_ff_tb_arc OF d_ff_tb IS
	COMPONENT d_ff
	PORT(
    D, clk     : IN     std_logic;
    Q, Qnot    : OUT    std_logic);
	END COMPONENT d_ff;
	SIGNAL D,Qnot, clk, Q : std_logic := '0';

BEGIN
	dff : d_ff port map ( D, clk, Q,Qnot);
	clk <= not clk after 5 ns;
	D <= not D after 11 ns;
END ARCHITECTURE d_ff_tb_arc; 

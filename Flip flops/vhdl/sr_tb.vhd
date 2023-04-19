LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE ieee.std_logic_arith.all;

--SR flip flop testbench-----------------------------
ENTITY sr_tb IS
END ENTITY sr_tb;

ARCHITECTURE sr_tb_arc OF sr_tb IS 
	COMPONENT sr
	PORT(
    S, R, clk   : IN     std_logic;
    Q, Qnot     : OUT    std_logic);
	END COMPONENT sr;
	SIGNAL S, R, clk, Q, Qnot : std_logic := '0';
	
BEGIN	
	sr1 : sr port map ( S, R, clk, Q, Qnot);
	clk <= not clk after 5 ns;
	S <= not S after 7 ns;
	R <= not R after 14 ns;
	
END ARCHITECTURE sr_tb_arc; 

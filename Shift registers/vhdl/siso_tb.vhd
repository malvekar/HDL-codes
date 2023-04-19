LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE ieee.std_logic_arith.all;

ENTITY siso_tb IS 
END ENTITY siso_tb;

ARCHITECTURE ar of siso_tb is 
COMPONENT siso 
port (
	clk, rst, D : IN std_logic;
	Q :out std_Logic);
END COMPONENT;
SIGNAL clk, rst, D, Q: std_logic:='0';

begin 
	sr : siso port map(clk, rst, D, Q);
	clk <= not clk after 5 ns;
	process
	begin
	rst <= '1'; wait for 10 ns;
	rst <= '0';D<= '1'; wait for 9 ns;
	D<= '0'; wait for 10 ns;
	D <= '1'; wait for 10 ns;
	D <= '1'; wait for 10 ns;
	D <= '0'; wait for 35 ns;
	end process;
END ARCHITECTURE ar;

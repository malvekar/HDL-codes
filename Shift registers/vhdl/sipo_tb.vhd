LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE ieee.std_logic_arith.all;

ENTITY sipo_tb IS 
END ENTITY sipo_tb;

ARCHITECTURE ar of sipo_tb is 
COMPONENT sipo 
port (
	clk, rst, D : IN std_logic;
	Q :out std_Logic_vector(3 downto 0));
END COMPONENT;
SIGNAL clk, rst, D : std_logic:='0';
SIGNAL Q : std_logic_vector(3 downto 0);

begin 
	sr : sipo port map(clk, rst, D, Q);
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

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE ieee.std_logic_arith.all;

ENTITY piso_tb is 
END ENTITY piso_tb;

ARCHITECTURE arc of piso_tb is 
COMPONENT PISO 
port (
	clk, rst, load : IN std_logic;
	D : IN std_logic_vector(3 downto 0);
	Q :out std_Logic);
END COMPONENT ;
signal clk, rst, load, Q : std_logic :='0';
signal D : std_logic_vector(3 downto 0);
begin 	
	shr : PISO port map( clk, rst, load, D, Q);
	clk <= not clk after 5 ns;
	process 
	begin 
	rst <= '1'; D <= "1001";wait for 13 ns;
	rst <= '0'; load <= '1'; wait for 5 ns;
	load <= '0'; wait for 50 ns;
	end process;
END ARCHITECTURE arc;

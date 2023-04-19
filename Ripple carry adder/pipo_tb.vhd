LIBRARY IEEE;
use ieee.std_logic_arith.all;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

ENTITY pipo_tb is 
end ENTITY pipo_tb;

ARCHITECTURE arc of pipo_tb is 
  COMPONENT PIPO 
  port (
  	clk, rst : IN std_logic;
	D : IN std_logic_vector(3 downto 0);
	Q : OUT std_logic_vector(3 downto 0));
  end component ;

  signal clk, rst : std_logic:= '0';
  signal D, Q : std_logic_vector(3 downto 0) := "0000";

  begin
  	shr : PIPO port map (clk, rst, D, Q);
  	clk <= not clk after 5 ns;
	process
	begin 
	rst <= '1'; wait for 11 ns;
	rst <= '0' ; D <= "1101"; wait for 10 ns;
	D <= "1111"; wait for 10 ns;
	D <= "1010"; wait for 10 ns;
	end process;
end ARCHITECTURE arc;


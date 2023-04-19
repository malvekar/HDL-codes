LIBRARY IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

ENTITY PIPO is 
port (
	clk, rst : IN std_logic;
	D : IN std_logic_vector(3 downto 0);
	Q : OUT std_logic_vector(3 downto 0));
END ENTITY PIPO;

ARCHITECTURE arc of PIPO IS 
begin 
	process( clk, rst, D)
	begin 
	if (rst= '1') then
		Q <= "0000";
	elsif rising_edge(clk) then 
		Q <= D;
	end if;
	end process;
end ARCHITECTURE arc;


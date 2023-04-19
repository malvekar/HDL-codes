LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE ieee.std_logic_arith.all;

ENTITY sipo IS
port(
	clk, rst, D : IN std_logic;                 
	Q :out std_Logic_vector(3 downto 0));

END ENTITY sipo;

ARCHITECTURE sipo_arc of sipo IS
signal temp : std_logic_vector(3 downto 0);
begin
	process(clk, rst, D)
	begin 
	if (rst='1') then
		temp <= "0000";
	end if;
	if rising_edge(clk) then 
		temp(3 downto 1) <= temp(2 downto 0);
		temp(0) <= D;
	end if;
	end process;
	Q <= temp;
END ARCHITECTURE sipo_arc;
		

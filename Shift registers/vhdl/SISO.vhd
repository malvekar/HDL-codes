LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE ieee.std_logic_arith.all;

ENTITY siso IS
port(
	clk, rst, D : IN std_logic;
	Q :out std_logic);

END ENTITY siso;

ARCHITECTURE siso_arc of siso IS
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
	Q <= temp(3);
END ARCHITECTURE siso_arc;
		

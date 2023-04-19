LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE ieee.std_logic_arith.all;

ENTITY piso IS
port(
	clk, rst, load : IN std_logic;
	D : IN std_logic_vector(3 downto 0);
	Q :out std_Logic);

END ENTITY piso;

ARCHITECTURE piso_arc of piso IS
signal temp : std_logic_vector(3 downto 0);
begin
	
	process(clk, rst, D)
	begin 
	if (rst='1') then
		temp <= "0000";
	end if;
	if rising_edge(clk)  then
   		if (load='1') then 
			temp <= D;
		else 
	   		Q <= temp(3);
			temp <= temp(2 downto 0) & '0';     
		end if; 
	end if;
	end process;
END ARCHITECTURE piso_arc;


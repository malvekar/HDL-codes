LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE ieee.std_logic_arith.all;
USE ieee.numeric_std;

--Testbench for encoder structural ------------------
ENTITY encoder_st_tb IS
END encoder_st_tb;

ARCHITECTURE encoder_st_tb_arc OF encoder_st_tb IS  
	COMPONENT encoder_st
   	PORT(
    I: IN     std_logic_vector(3 downto 0);
    Q0, Q1 : out std_logic);  
	END COMPONENT encoder_st;
	SIGNAL Q0, Q1: std_logic := '0';    
	SIGNAL I : std_logic_vector(3 downto 0);

BEGIN
	en1 : encoder_st port map( I, Q0, Q1);
	process
	begin 
	I <= "0001"; wait for 5 ns;
	I <= "0010"; wait for 5 ns;
	I <= "0100"; wait for 5 ns;
	I <= "1000"; wait for 5 ns;
	end process; 
END ARCHITECTURE encoder_st_tb_arc;


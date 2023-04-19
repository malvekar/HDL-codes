LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE ieee.std_logic_arith.all;

--Testbench for decoder structural ------------------------
ENTITY decoder_st_tb IS
END ENTITY decoder_st_tb;


ARCHITECTURE decoder_st_tb_arc OF decoder_st_tb IS
	COMPONENT decoder_st
		PORT(
		I : IN     std_logic_vector(1 downto 0);
		Q : OUT    std_logic_vector(3 downto 0));
		END COMPONENT decoder_st;
	SIGNAL  I : std_logic_vector(1 downto 0) :="00";
	SIGNAL  Q : std_logic_vector( 3 downto 0) := "0000";
 
BEGIN
	en : decoder_st port map (I, Q);
	I(0) <= not I(0) after 5 ns;
	I(1) <= not I(1) after 10 ns;
	
END ARCHITECTURE decoder_st_tb_arc; 



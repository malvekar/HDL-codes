LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE ieee.std_logic_arith.all;
USE ieee.numeric_std;

--Testbench for encoder behavioural--------------------
ENTITY encoder_bhv_tb IS
END encoder_bhv_tb;

ARCHITECTURE encoder_bhv_tb_arc OF encoder_bhv_tb IS  
	COMPONENT encoder_bhv
   		port(D: in bit_vector(7 downto 0) ;
		 Q: out bit_vector(2 downto 0));  
	END COMPONENT encoder_bhv;
	SIGNAL D : bit_vector (7 downto 0) := "00000001";
	SIGNAL Q : bit_vector(2 downto 0) := "000";

BEGIN
	en1 : encoder_bhv port map( D, Q);
	D <= D sll 1 after 5 ns;
END ARCHITECTURE encoder_bhv_tb_arc;

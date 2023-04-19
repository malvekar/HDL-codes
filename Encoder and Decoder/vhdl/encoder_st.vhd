LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE ieee.std_logic_arith.all;

--Encoder structural ---------------------------------
ENTITY encoder_st IS
  PORT(
    I: IN    std_logic_vector(3 downto 0);
    Q0, Q1 : out std_logic);
END ENTITY encoder_st;


ARCHITECTURE encoder_st_arc OF encoder_st IS
	COMPONENT or_gate
	  PORT(
	    A,B         : IN     std_logic;
	    op          : OUT    std_logic);
	END COMPONENT or_gate;
	
BEGIN
	or1 : or_gate port map ( I(3), I(1), Q0);
	or2 : or_gate port map ( I(3), I(2), Q1);
END ARCHITECTURE encoder_st_arc; 


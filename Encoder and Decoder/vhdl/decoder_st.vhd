LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE ieee.std_logic_arith.all;

--Decoder structural code----------------------
ENTITY decoder_st IS
	PORT(
		I : IN     std_logic_vector(1 downto 0);
		Q : OUT    std_logic_vector(3 downto 0));
END ENTITY decoder_st;

ARCHITECTURE decoder_st_arc OF decoder_st IS
  	COMPONENT and_gate
	  PORT(
	    A, B        : IN     std_logic;
	    op          : OUT    std_logic);
	END COMPONENT and_gate;
	
	COMPONENT not_gate
	  PORT(
	    A           : IN     std_logic;
	    op          : OUT    std_logic);
	END COMPONENT not_gate;
    
    SIGNAL I0_not, I1_not : std_logic;
BEGIN
	not0 : not_gate port map (I(0), I0_not); 
	not1 : not_gate port map (I(1), I1_not);
	and0 : and_gate port map ( I0_not, I1_not, Q(0));
	and1 : and_gate port map ( I(0), I1_not, Q(1));
	and2 : and_gate port map ( I0_not, I(1), Q(2));
	and3 : and_gate port map ( I(0), I(1), Q(3));
END ARCHITECTURE decoder_st_arc; 

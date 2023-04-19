LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE ieee.std_logic_arith.all;

--2x1 MUX---------------------------
ENTITY mux_2x1 IS
  PORT(
    I1, I2, s   : IN     std_logic;
    op          : OUT    std_logic);
END ENTITY mux_2x1;

ARCHITECTURE mux2x1_arc OF mux_2x1 IS 
	COMPONENT and_gate   
	 PORT(
 	   A, B       : IN     std_logic;
   	 op          : OUT    std_logic);
	  
	END COMPONENT and_gate;
	    
	COMPONENT not_gate
	PORT(
 	   A     : IN     std_logic;
   	 op      : OUT    std_logic);
	END COMPONENT not_gate;
	
	COMPONENT or_gate   
	PORT(
 	   A, B    : IN     std_logic;
 	   op      : OUT    std_logic);	  
	END COMPONENT or_gate;

	signal not_op, and1_op, and2_op : std_logic;		    
BEGIN
	not1 : not_gate port map(s, not_op);
	and1 : and_gate port map(not_op, I1, and1_op );
	and2 : and_gate port map(s, I2, and2_op );
	or1  : or_gate port map(and1_op, and2_op, op ) ;	
END ARCHITECTURE mux2x1_arc;




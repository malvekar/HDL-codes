LIBRARY IEEE;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE ieee.std_logic_arith.all;       

--2x1 DEMUX----------------------------------
ENTITY demux_2x1 IS
  PORT(
    ip, s       : IN     std_logic;
    I1, I2      : OUT    std_logic);

END ENTITY demux_2x1;

ARCHITECTURE demux_2x1_arc OF demux_2x1 IS
	COMPONENT and_gate   
	 PORT(
    A, B        : IN     std_logic;
    op          : OUT    std_logic);
	  
	END COMPONENT and_gate;
	    
	COMPONENT not_gate
	PORT(
    A       : IN     std_logic;
    op      : OUT    std_logic);
	END COMPONENT not_gate;   
    SIGNAL not1_op : std_logic;
    
BEGIN
	not1 : not_gate port map (s, not1_op );
	and1 : and_gate port map (not1_op, ip, I1 );
	and2 : and_gate port map (s, ip, I2) ;
END ARCHITECTURE demux_2x1_arc; 




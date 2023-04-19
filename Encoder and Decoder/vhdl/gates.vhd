LIBRARY IEEE;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE ieee.std_logic_arith.all;

--AND GATE-------------------------------------
ENTITY and_gate IS
  PORT(
    A, B        : IN     std_logic;
    op          : OUT    std_logic);
END ENTITY and_gate;

ARCHITECTURE and_gate_arc OF and_gate IS  
	
BEGIN
	op <= A and B;                               
	
END ARCHITECTURE and_gate_arc;
----------------------------------------------

--NOT GATE------------------------------------
LIBRARY IEEE;
USE ieee.std_logic_1164.all;

ENTITY not_gate IS
  PORT(
    A       : IN     std_logic;
    op      : OUT    std_logic);
END ENTITY not_gate;

ARCHITECTURE not_gate_arc OF not_gate IS   
BEGIN                                
	op <= not A;
END ARCHITECTURE not_gate_arc; 
------------------------------------------------------

--OR GATE------------------------------------
LIBRARY IEEE;
USE ieee.std_logic_1164.all;

ENTITY or_gate IS
  PORT(
    A, B    : IN     std_logic;
    op      : OUT    std_logic);
END ENTITY or_gate;

ARCHITECTURE or_gate_arc OF or_gate IS   
BEGIN                                
	op <= A or B;
END ARCHITECTURE or_gate_arc; 
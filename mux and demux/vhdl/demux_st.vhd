LIBRARY IEEE;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE ieee.std_logic_arith.all;   

--DEMUX STRUCTURAL CODE -------------------------------------
ENTITY demux_st IS
  PORT(
    ip, s1, s0  : IN     std_logic;
    I1, I2, I3, I4: OUT    std_logic);
END ENTITY demux_st;

ARCHITECTURE demux_st_arc OF demux_st IS 
	COMPONENT demux_2x1 
	PORT(
    ip, s       : IN     std_logic;
    I1, I2      : OUT    std_logic); 
	END COMPONENT demux_2x1;
	SIGNAL y1, y2 : std_logic;
	
BEGIN
	dm1 : demux_2x1 PORT map ( ip, s1, y1, y2);
	dm2 : demux_2x1 PORT map ( y1, s0, I1, I2); 
	dm3 : demux_2x1 PORT map ( y2, s0, I3, I4);
	
END ARCHITECTURE demux_st_arc;


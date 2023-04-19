LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all; 
USE ieee.std_logic_unsigned.all;

--DEMUX DATAFLOW TESTBENCH---------------------------------------
ENTITY demux_df_tb IS
END ENTITY demux_df_tb;

ARCHITECTURE demux_df_arc_tb OF demux_df_tb IS  
	COMPONENT demux_df
	  PORT(
	    I1, I2, I3, I4: OUT    std_logic;
	    ip, s1, s0  : IN     std_logic   );
	END COMPONENT demux_df;
	SIGNAL I1, I2, I3, I4, s1, s0 : std_logic:= '0';
	SIGNAL ip : std_logic:= '1';	
	
BEGIN
  demux : demux_df PORT map ( I1, I2, I3, I4, ip, s1, s0);
  s1 <= not s1 after 10 ns;
  s0 <= not s0 after 5 ns;
END ARCHITECTURE demux_df_arc_tb; 

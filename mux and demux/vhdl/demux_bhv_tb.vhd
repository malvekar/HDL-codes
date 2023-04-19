LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all; 
USE ieee.std_logic_unsigned.all;

--DEMUX BEHAVIOURAL TESTBENCH------------------------------
ENTITY demux_bhv_tb IS
END ENTITY demux_bhv_tb;

ARCHITECTURE demux_bhv_tb OF demux_bhv_tb IS  
	COMPONENT demux_bhv
	PORT(
	  I1, I2, I3, I4: OUT    std_logic;
	  ip, s1, s0	: IN	 std_logic);
	END COMPONENT demux_bhv;
	SIGNAL I1, I2, I3, I4, s1, s0 : std_logic:= '0';
	SIGNAL ip : std_logic:= '1';

BEGIN
  demux : demux_bhv PORT map ( I1, I2, I3, I4, ip, s1, s0);
  s1 <= not s1 after 10 ns;
  s0 <= not s0 after 5 ns;
END ARCHITECTURE demux_bhv_tb; 


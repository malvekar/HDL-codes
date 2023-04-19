LIBRARY ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

--DEMUX BEHAVIOURAL CODE---------------------
ENTITY demux_bhv is 
  PORT (
  ip, s1, s0 : IN std_logic;
  I1, I2, I3, I4 : OUT std_logic);
END ENTITY demux_bhv;

ARCHITECTURE demux_bhv_arc of demux_bhv IS
BEGIN 
	process (ip, s1, s0)
	BEGIN
  	I1 <= (not s1) and (not s0) and (ip);
	I2 <= (not s1) and ( s0) and (ip);
	I3 <= (s1) and (not s0) and (ip);
	I4 <= (s1) and (s0) and (ip);
	end process;

END ARCHITECTURE demux_bhv_arc;
LIBRARY IEEE;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE ieee.std_logic_arith.all;

--DEMUX DATAFLOW CODE-------------------------
ENTITY demux_df IS
  PORT(
    I1, I2, I3, I4: OUT    std_logic;
    ip, s1, s0         : IN    std_logic);
END ENTITY demux_df;

ARCHITECTURE demux_df_arc OF demux_df IS 
BEGIN
  I1 <= (not s1) and (not s0) and (ip);
  I2 <= (not s1) and ( s0) and (ip);
  I3 <= ( s1) and (not s0) and (ip);
  I4 <= ( s1) and ( s0) and (ip);
END ARCHITECTURE demux_df_arc;


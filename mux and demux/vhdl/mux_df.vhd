LIBRARY IEEE;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE ieee.std_logic_arith.all;

--MUX DATAFLOW CODE ------------------------------------------------------------------------------------------------------------------
ENTITY mux_df IS
  PORT(
    I1, I2, I3, I4, s1, s0: IN     std_logic;
    op         : OUT    std_logic);
END ENTITY mux_df;
               
ARCHITECTURE mux_df_arc OF mux_df IS 
BEGIN
  op <= ((not s1)and(not s0)and(I1)) or ((not s1)and(s0)and(I2)) or ((s1)and(not s0)and(I3)) or ((s1)and(s0)and(I4));
END ARCHITECTURE mux_df_arc;

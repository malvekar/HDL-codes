LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE ieee.std_logic_arith.all;     

--MUX BEHAVIOURAL CODE-----------------------------------------------------------------------------------------------------------------------
ENTITY mux_bhv IS
  PORT(
    I1, I2, I3, I4, s1, s0: IN std_logic;
    op          : OUT    std_logic);
END ENTITY mux_bhv;

ARCHITECTURE mux_bhv_arc OF mux_bhv IS  
BEGIN
	process (I1, I2, I3, I4, s1, s0)
	begin 
   	op <= ((not s1)an (not s0)and(I1)) or ((not s1)and(s0)and(I2)) or ((s1)and(not s0)and I3)) or ((s1)and(s0)and(I4)); 
	end process ;
END ARCHITECTURE mux_bhv_arc;
	
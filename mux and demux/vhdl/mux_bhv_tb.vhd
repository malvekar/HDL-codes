LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE ieee.std_logic_arith.all;     

--MUX BEHAVIOURAL TESTBENCH--------------------------------------------------
ENTITY mux_bhv_tb IS  
END ENTITY mux_bhv_tb;

ARCHITECTURE mux_tb_bhv_arc OF mux_bhv_tb IS
  COMPONENT mux_bhv
    PORT(
      I1, I2, I3, I4, s1, s0: IN     std_logic;
      op          : OUT    std_logic);
  END COMPONENT mux_bhv;
  SIGNAL I1, I2, I3, I4, s1, s0, op : std_logic := '0';
  
BEGIN
  mx : mux_bhv PORT map ( I1, I2, I3, I4, s1, s0, op); 
  process
  BEGIN
   	  I1 <= '1'; s1 <= '0'; s0 <= '0';
	  wait for 5 ns;
	  I1 <= '0';I2 <= '1'; s1 <= '0'; s0 <= '1';
	  wait for 5 ns;
	  I1 <= '0';I2 <= '0';I3 <= '1'; s1 <= '1'; s0 <= '0';
	  wait for 5 ns;
	  I1 <= '0';I2 <= '0';I3 <= '0';I4 <= '1'; s1 <= '1'; s0 <= '1';
	  wait for 5 ns;
  END process;
END ARCHITECTURE mux_tb_bhv_arc; 

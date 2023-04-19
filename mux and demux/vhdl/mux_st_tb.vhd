LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE ieee.std_logic_arith.all;     
 
--MUX STRUCTURAL TESTBENCH---------------------------------------
ENTITY mux_st_tb IS
END ENTITY mux_st_tb;

ARCHITECTURE mux_tb_st_arc OF mux_st_tb IS
  COMPONENT mux_st
    PORT(
      I1, I2, I3, I4, s1, s0: IN     std_logic;
      op          : OUT    std_logic);
  END COMPONENT mux_st;   
  	
  SIGNAL I1, I2, I3, I4, s1, s0, op: std_logic:='0';
  
BEGIN
  mx : mux_st PORT map (I1, I2, I3, I4, s1, s0, op); 
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
END ARCHITECTURE mux_tb_st_arc;

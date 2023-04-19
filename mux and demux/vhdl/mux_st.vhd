LIBRARY IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

--MUX STRUCTURAL CODE-------------------------
ENTITY mux_st  IS 
  PORT (
    I1, I2, I3, I4, s1, s0: IN std_logic;
    op          : OUT    std_logic);
END ENTITY mux_st;

ARCHITECTURE mux_st_arc of mux_st IS
	COMPONENT mux_2x1 
	  PORT(
	    I1, I2, s   : IN     std_logic;
	    op          : OUT    std_logic);
	END COMPONENT mux_2x1;  
	SIGNAL op1, op2 : std_logic;
		
BEGIN 
	mx1 : mux_2x1 PORT map(I1, I2, s0, op1);
	mx2 : mux_2x1 PORT map(I3, I4, s0, op2);
	mx3 : mux_2x1 PORT map(op1, op2, s1, op );
END  mux_st_arc;
	
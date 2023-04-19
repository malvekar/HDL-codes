LIBRARY IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

ENTITY full_adder_df is 
	PORT(
		A, B, cin: in std_logic;
		sum, cout: out std_logic);
END full_adder_df;

--Data flow ARCHITECTURE----

ARCHITECTURE fa_df_arc of full_adder_df is
	BEGIN 
	sum <= A xor B xor cin;  
	cout <= (A and B) or (cin and (A xor B));
END fa_df_arc;


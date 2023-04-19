LIBRARY IEEE;
use ieee.std_logic_1164.all; 
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

--FUll Adder Behavioural code-----------------------
ENTITY full_adder_bhv is 
	PORT (
		A, B, cin : in std_logic;
		sum, cout : out std_logic);
END full_adder_bhv;  

ARCHITECTURE fa_bhv_ar of full_adder_bhv is
	BEGIN
		process (A, B, cin)
			BEGIN
			sum <= A xor B xor cin;
			cout <= (A and B) or (cin and (A xor B));
			END process;
END ARCHITECTURE fa_bhv_ar;


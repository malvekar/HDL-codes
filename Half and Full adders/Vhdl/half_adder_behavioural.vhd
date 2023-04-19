library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

--Declaring Entity
entity half_adder_bhv is 
port (A, B: in std_logic; s, cout: out std_logic);
end half_adder_bhv;


--behavioural code , process' are sequential 
architecture behavioural of  half_adder_bhv is 
 begin 
 	process (A,B)
		begin s <= A xor B;
		cout <= A and B;
	end process ;
end behavioural ;


library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

--Declaring Entity
entity half_adder is 
port (A, B: in std_logic; s, cout: out std_logic);
end half_adder;

--Data flow architecture 
architecture half_adder_arc of half_adder is 
 begin 
	s <= A xor B;
	cout <= A and B;
end half_adder_arc;
                  

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

--Declaring Entity
entity half_adder_struct is 
port (A, B: in std_logic; s, cout: out std_logic);
end half_adder_struct;


---structural code
ARCHITECTURE structural OF half_adder_struct IS  
--	instantiating AND gate  
	COMPONENT and_gate
	  port ( A, B : in std_logic; output : out std_logic);
	END COMPONENT and_gate;   
	
--	instantiating XOR gate 	
	COMPONENT xor_gate
	  PORT(A, B : IN     std_logic;
	    output  : OUT    std_logic);
	END COMPONENT xor_gate;
	
	BEGIN    
		and_g: and_gate port map(A, B, cout);
		xor_g: xor_gate port map(A, B, s);
  
END ARCHITECTURE structural;




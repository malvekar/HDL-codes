library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

--and gate------------------------------------------
ENTITY and_gate IS
  PORT (
  A, B : in std_logic;
  output : out std_logic
  ); 	
END  and_gate;

ARCHITECTURE and_arc OF and_gate IS
  SIGNAL and_gate : std_logic;
BEGIN
  -- put concurrent statements here.
  output <= A and B;
END ARCHITECTURE and_arc; -- Of entity and_gate

--xor gate-------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;

ENTITY xor_gate IS
  PORT(
    A, B : IN  std_logic;
    output : out std_logic   );
END ENTITY xor_gate;

ARCHITECTURE xor_arc OF xor_gate IS
  SIGNAL xor_gate : std_logic;
BEGIN                               
	output <=   A xor B;
END ARCHITECTURE xor_arc; -- Of entity xor_gate


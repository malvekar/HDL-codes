library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

ENTITY rc_adder is 
  port (
  	A, B : IN std_logic_vector(3 downto 0);
	cin : IN std_logic;
	cout: OUT std_logic;
	S : OUT std_logic_vector(3 downto 0));
END ENTITY rc_adder;

ARCHITECTURE arc of rc_adder is 
COMPONENT full_adder_st
  port (
	A, B, cin: in std_logic ;
	cout, summ : out std_logic);
end component;
signal c0, c1, c2 : std_logic ;
begin 
	fa1 : full_adder_st port map(A(0), B(0), cin, c0, S(0));
	fa2 : full_adder_st port map(A(1), B(1), c0, c1, S(1));
	fa3 : full_adder_st port map(A(2), B(2), c1, c2, S(2));
	fa4 : full_adder_st port map(A(3), B(3), c2, cout, S(3));

end ARCHITECTURE arc;

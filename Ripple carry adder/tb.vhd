library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

ENTITY tb is 
END ENTITY tb ;

ARCHITECTURE arc of tb is
COMPONENT rc_adder 
port (
  	A, B : IN std_logic_vector(3 downto 0);
	cin : IN std_logic;
	cout: OUT std_logic;
	S : OUT std_logic_vector(3 downto 0));
END COMPONENT ;

signal A, B, S : std_logic_vector (3 downto 0):= "0000";
signal cin , cout : std_logic:= '0';

begin 
	rc : rc_adder port map ( A, B, cin, cout , S);
	A <= A + "0001" after 5 ns;
	B <= B + "0001" after 10 ns;
end ARCHITECTURE arc;

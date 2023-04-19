library IEEE;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;
use IEEE.std_logic_1164.all; 

--data flow  
entity full_adder_st is 
	port (
	A, B, cin: in std_logic ;
	cout, summ : out std_logic);
end full_adder_st;

--structural 
architecture structural of full_adder_st is 
component half_adder_struct 
	port ( 
	A, B: in std_logic; 
	s, cout: out std_logic);
end component ;    

signal s1, c1, c2: std_logic;     

	begin
		ha1 : half_adder_struct port map (A, B, s1, c1);
		ha2 : half_adder_struct port map (s1, cin,summ , c2);
--		summ <= s2;		
		cout <= c1 or c2;   	
end structural;
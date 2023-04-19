library IEEE;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_1164.all;
                             
--Test bench for Full Adder structural -------                            
ENTITY full_adder_st_tb is 
END full_adder_st_tb;
ARCHITECTURE fa_st_tb of full_adder_st_tb is
	COMPONENT full_adder_st
	PORT (
		A, B, cin : in std_logic;
		summ, cout : out std_logic);
	END COMPONENT full_adder_st;
	
	SIGNAL A, B, cin, summ, cout: std_logic:='0'; 
	
	BEGIN
	fa : full_adder_st port map (A,B, cin, summ, cout);
	cin <= not cin after 20 ns;
	A <= not A after 10 ns;
	B <= not B after 5 ns;
END ARCHITECTURE fa_st_tb;
----------------------------------------------

library IEEE;
use ieee.std_logic_1164.all;

--Test bench for Full Adder data flow ----------                            
ENTITY full_adder_df_tb is 
END full_adder_df_tb;
ARCHITECTURE fa_df_tb of full_adder_df_tb is
	COMPONENT full_adder_df
	PORT (
		A, B, cin : in std_logic;
		sum, cout : out std_logic);
	END COMPONENT full_adder_df;
	
	SIGNAL A, B, cin, sum, cout: std_logic:='0'; 
	
	BEGIN
	fa : full_adder_df port map (A,B, cin, sum, cout);
	cin <= not cin after 20ps;
	A <= not A after 10ps;
	B <= not B after 5ps;
END ARCHITECTURE fa_df_tb;
-------------------------------------

library IEEE;
use ieee.std_logic_1164.all;
--Testbench for full adder behavioural--------------
ENTITY full_adder_bh_tb IS
 
END ENTITY full_adder_bh_tb;

ARCHITECTURE fa_bh_tb of full_adder_bh_tb is 
	COMPONENT full_adder_bhv
	PORT(
		A, B, cin : in std_logic;
		sum, cout : out std_logic);
	END COMPONENT full_adder_bhv;
	
	SIGNAL  A, B, cin, sum, cout : std_logic:='0';
	
	BEGIN
	fa : full_adder_bhv port map( A, B, cin, sum, cout);
	cin <= not cin after 20 ns;
	A  <= not A after 10 ns;
	B <= not B after 5 ns;
END ARCHITECTURE fa_bh_tb;
	

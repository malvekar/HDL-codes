LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE ieee.std_logic_arith.all;

ENTITY cntr_tb IS
END ENTITY cntr_tb;

ARCHITECTURE cntr_tb_arc OF cntr_tb IS
	COMPONENT u_d_counter
	PORT( 
  	clk, rst, up_down : IN std_logic ;
  	output : out std_logic_vector(3 downto 0));	  
	END COMPONENT u_d_counter;
	SIGNAL clk, rst, up_down:std_logic :='0';
	SIGNAL output : std_logic_vector(3 downto 0);
	
BEGIN
	ct : u_d_counter port map( clk, rst, up_down, output);
	clk <= not clk after 2 ns;
	process
	begin 
	rst <= '1';  up_down <= '1';wait for 5 ns;
	rst <= '0'; up_down <= '1';wait for 58 ns;
	up_down <= '0'; wait for 30 ns;
	end process ;
END ARCHITECTURE cntr_tb_arc; 
  

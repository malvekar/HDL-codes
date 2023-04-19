LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE ieee.std_logic_arith.all;

--ENTITY u_d_counter IS
--  PORT( 
--  	clk, rst, up_down : IN std_logic ;
--  	output : out std_logic_vector(3 downto 0));
--END ENTITY u_d_counter;
--
--ARCHITECTURE ud_arc OF u_d_counter IS
--  
--BEGIN
--  process (clk, rst, up_down)    
--  variable temp : std_logic_vector(3 downto 0):="0000";
--  begin
--  if ( rst='1') then
--  		temp := "0000";
--   end if;
--   
--  if (clk'event and clk='1') then
--  	if ( up_down='1') then
--  		temp := temp + "0001"; 
--  	elsif (up_down='0') then
--  		temp := temp - "0001";
--  	end if;
--  end if ;
--   output <= temp;
--  end process;  
--  
--END ARCHITECTURE ud_arc;


ENTITY u_d_counter IS
  PORT( 
  	clk, rst, up_down : IN std_logic ;
  	output : out std_logic_vector(3 downto 0));
END ENTITY u_d_counter;

ARCHITECTURE ud_arc OF u_d_counter IS
	 SIGNAL temp: std_logic_vector(3 downto 0):= "0000";
BEGIN
  process (clk, rst, up_down)    
  begin
	  if ( rst='1') then
		temp <= "0000";
	   end if;
	   
	  if (clk'event and clk='1') then
		if ( up_down='1') then
			temp <= temp + "0001"; 
		elsif (up_down='0') then
			temp <= temp - "0001";
		end if;
	  end if ;
  end process;
  output <= temp;  
  
END ARCHITECTURE ud_arc;

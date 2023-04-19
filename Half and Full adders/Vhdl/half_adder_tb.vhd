library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

--test bench for half adder data flow
ENTITY half_adder_dataflow_tb IS
END  half_adder_dataflow_tb;     

ARCHITECTURE ha_df_tb OF half_adder_dataflow_tb IS   
	COMPONENT half_adder
	  PORT(
	    A,B         : IN     std_logic;
	    s, cout     : OUT    std_logic);
	END COMPONENT half_adder;
	SIGNAL A, B, s, cout : std_logic:='0';
BEGIN             
	hd : half_adder port map (A, B, s, cout);  
	A <= not A after 10ps;
	B <= not B after 5ps;    
END ARCHITECTURE ha_df_tb; 

library ieee;
use ieee.std_logic_1164.all;

--test bench for half adder behavioural-------------------------------------------- 
ENTITY half_adder_bhvrl_tb IS
END  half_adder_bhvrl_tb;     

ARCHITECTURE ha_bh_tb OF half_adder_bhvrl_tb IS   
	COMPONENT half_adder_bhv
	  PORT(
	    A,B         : IN     std_logic;
	    s, cout     : OUT    std_logic);
	END COMPONENT half_adder_bhv;
	SIGNAL A, B, s, cout : std_logic:='0';
BEGIN             
	hd : half_adder_bhv port map (A, B, s, cout);  
	A <= not A after 10ps;
	B <= not B after 5ps;    
END ARCHITECTURE ha_bh_tb; 



--test bench for half adder structural-------------------------------------------- 
library ieee;
use ieee.std_logic_1164.all;
ENTITY half_adder_struct_tb IS
END  half_adder_struct_tb;     

ARCHITECTURE ha_st_tb OF half_adder_struct_tb IS   
	COMPONENT half_adder_struct
	  PORT(
	    A,B         : IN     std_logic;
	    s, cout     : OUT    std_logic);
	END COMPONENT half_adder_struct;
	SIGNAL A, B, s, cout : std_logic:='0';
BEGIN             
	hd : half_ader_struct port map (A, B, s, cout);  
	A <= not A after 10ps;
	B <= not B after 5ps;    
END ARCHITECTURE ha_st_tb; 

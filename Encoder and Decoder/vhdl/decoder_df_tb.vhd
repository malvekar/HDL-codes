LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE ieee.std_logic_arith.all;

--testbench for decoder dataflow---------------------------
ENTITY decoder_df_tb IS
END ENTITY decoder_df_tb;

ARCHITECTURE decoder_df_tb_arc OF decoder_df_tb IS
  -- put declarations here.
  COMPONENT decoder_df
   PORT(
    I0, I1: IN     std_logic;
    Q0, Q1, Q2, Q3 : out std_logic);
  END COMPONENT decoder_df;
  SIGNAL  I0, I1, Q0, Q1, Q2, Q3  : std_logic := '0';
 
BEGIN
	en : decoder_df port map ( I0, I1, Q0, Q1, Q2, Q3  );
	I0 <= not I0 after 5 ns;
	I1 <= not I1 after 10 ns;
	
END ARCHITECTURE decoder_df_tb_arc; 



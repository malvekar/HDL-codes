LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE ieee.std_logic_arith.all;

--Decoder dataflow code -----------------------------
ENTITY decoder_df IS
  PORT(
    I0, I1 : IN     std_logic;
    Q0, Q1, Q2, Q3 : out std_logic);

END ENTITY decoder_df;

ARCHITECTURE decoder_df_arc OF decoder_df IS
BEGIN
	Q0 <= (not I0) and (not I1);
	Q1 <= ( I0) and (not I1);
	Q2 <= (not I0) and ( I1);
	Q3 <= ( I0) and ( I1);
  
END ARCHITECTURE decoder_df_arc; 


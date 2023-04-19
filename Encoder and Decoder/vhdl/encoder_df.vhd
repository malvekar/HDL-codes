LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE ieee.std_logic_arith.all;

--Encoder data flow ----------------------------------
ENTITY encoder_df IS
  PORT(
    I0, I1, I2, I3: IN     std_logic;
    Q0, Q1 : out std_logic);

END ENTITY encoder_df;

ARCHITECTURE encoder_df_arc OF encoder_df IS
BEGIN
	Q0 <= I3 or I1;
	Q1 <= I3 or I2;
END ARCHITECTURE encoder_df_arc; 


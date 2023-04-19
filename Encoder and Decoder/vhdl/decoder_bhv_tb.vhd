LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE ieee.std_logic_arith.all;

--Testbench for Decoder behavioural-----------------------        
entity decoder_bhv_tb is
end decoder_bhv_tb;

architecture decoder_bhv_tb_arc of decoder_bhv_tb is
	COMPONENT decoder_bhv
		port(D: in bit_vector(2 downto 0) ; 
		Q: out bit_vector(7 downto 0));  
	END COMPONENT decoder_bhv;
	SIGNAL Q : bit_vector(7 downto 0):= "00000000";
	SIGNAL D : bit_vector(2 downto 0) := "000";
	begin
	D1 : decoder_bhv port map ( D, Q);   
	D(0) <= not D(0) after 5 ns;
	D(1) <= not D(1) after 10 ns;
	D(2) <= not D(2) after 20 ns;
end decoder_bhv_tb_arc;


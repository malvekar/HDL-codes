LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE ieee.std_logic_arith.all;

--Decoder Behavioural code ---------------------------------        
entity decoder_bhv is
	port(D: in bit_vector(2 downto 0) ; 
	Q: out bit_vector(7	downto 0));
end decoder_bhv;

architecture decoder_bhv_arc of decoder_bhv is
	begin
	process(D)
	begin
   		case D is
	   		when "000" => Q <= "00000001";
			when "001" => Q <= "00000010";
			when "010" => Q <= "00000100";
	   		when "011" => Q <= "00001000";
			when "100" => Q <= "00010000";
			when "101" => Q <= "00100000";
	   		when "110" => Q <= "01000000";
			when "111" => Q <= "10000000";
		end case;
	end process;
end decoder_bhv_arc;

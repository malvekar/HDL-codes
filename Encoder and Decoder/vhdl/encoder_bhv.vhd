LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE ieee.std_logic_arith.all;

--Encoder Behavioural code --------------------------------
entity encoder_bhv is
	port(D: in bit_vector(7 downto 0) ;
	 Q: out bit_vector(2 downto 0));
end encoder_bhv;     

architecture encoder_bhv_arc of encoder_bhv is
	begin
	process(D)
	begin
		case D is
		when "00000001" => Q <= "000";
		when "00000010" => Q <= "001";
		when "00000100" => Q <= "010";
		when "00001000" => Q <= "011";
		when "00010000" => Q <= "100"; 
		when "00100000" => Q <= "101";
		when "01000000" => Q <= "110";
		when "10000000" => Q <= "111";
		when others => Q <= "000";
		end case;
	end process;
end architecture encoder_bhv_arc;
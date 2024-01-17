LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY segdecod IS
PORT (Entree:IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		Sortie:OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
		);
END segdecod;

ARCHITECTURE RTL OF segdecod IS
BEGIN
	PROCESS (Entree)
	BEGIN
			CASE Entree IS
			WHEN "0000"=> Sortie<="1000000";
			WHEN "0001"=> Sortie<="1111001";
			WHEN "0010"=> Sortie<="0100100";
			WHEN "0011"=> Sortie<="0110000";
			WHEN "0100"=> Sortie<="0011001";
			WHEN "0101"=> Sortie<="0010010";
			WHEN "0110"=> Sortie<="0000010";
			WHEN "0111"=> Sortie<="1111000";
			WHEN "1000"=> Sortie<="0000000";
			WHEN "1001"=> Sortie<="0010000";
			WHEN "1010"=> Sortie<="0001000";
			WHEN "1011"=> Sortie<="0000011";
			WHEN "1100"=> Sortie<="1000110";
			WHEN "1101"=> Sortie<="0100001";
			WHEN "1110"=> Sortie<="0000110";
			WHEN "1111"=> Sortie<="0001110";
			WHEN OTHERS=> Sortie<="0111111";
			END CASE;
	END PROCESS;
END RTL;
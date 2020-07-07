LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
ENTITY controlUnit IS
	PORT (
		opcode        : IN std_logic_vector(5 DOWNTO 0); -- OP code for the instruction 
		regWrite      : OUT std_logic
	);
END controlUnit;
ARCHITECTURE Behavioral OF controlUnit IS
BEGIN
	PROCESS (opcode)
	BEGIN
		regWrite <= '0'; 
		CASE opcode IS
			WHEN "000000" => 
				regWrite      <= '1' AFTER 10 ns;
			when others => regWrite <= '0';
		END CASE;
	END PROCESS;
END Behavioral;
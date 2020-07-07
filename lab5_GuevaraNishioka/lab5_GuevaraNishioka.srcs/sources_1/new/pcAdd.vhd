LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY programCounterADD IS
	PORT (
		programCounterIn   : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		programCounterOut  : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END programCounterADD;
ARCHITECTURE Behavioral OF programCounterADD IS
BEGIN
add4 : PROCESS (programCounterIn)
BEGIN
	programCounterOut <= programCounterIn + 4;
END PROCESS add4;
END Behavioral;
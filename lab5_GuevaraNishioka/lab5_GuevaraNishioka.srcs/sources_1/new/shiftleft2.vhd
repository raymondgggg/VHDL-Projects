library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity shiftleft2 is
	generic (value1: natural:= 32; value2: natural:= 32; shiftAmount: natural:= 2);
	port (
		input : in std_logic_vector(value1-1 downto 0);
		output : out std_logic_vector(value2-1 downto 0)
	);
end shiftleft2;

architecture Behavioral of shiftleft2 is
begin
    output <= std_logic_vector(shift_left(signed(input), shiftAmount));
end Behavioral;

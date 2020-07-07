library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux2x1_32bit is
    Port ( selector : in  STD_LOGIC;
           input1 : in  STD_LOGIC_VECTOR (31 downto 0);
           input2 : in  STD_LOGIC_VECTOR (31 downto 0);
           output : out  STD_LOGIC_VECTOR (31 downto 0));
end mux2x1_32bit;

architecture Behavioral of mux2x1_32bit is
begin
    with selector select 
	output <= input1 when '0', 
			  input2 when '1',
			  input2 when others; 
end Behavioral;

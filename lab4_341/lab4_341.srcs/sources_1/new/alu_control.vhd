LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE ieee.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;

ENTITY alu_control IS
	PORT (
		funct     : IN STD_LOGIC_VECTOR (5 DOWNTO 0);
		operation : OUT STD_LOGIC_VECTOR (3 DOWNTO 0)
	);
END alu_control;
ARCHITECTURE Behavioral OF alu_control IS
BEGIN
    process(funct)
    begin
        CASE funct is
            when "100000" => operation <= "0010"; --add 
            when "100001" => operation <= "0010"; --addu
            when "100010" => operation <= "0110"; --sub 
            when "100011" => operation <= "0110"; -- subu
            when "100100" => operation <= "0000"; --and 
            when "100101" => operation <= "0001"; -- or
            when "100110" => operation <= "0011"; -- xor
            when "100111" => operation <= "1100"; -- nor
            when "101000" => operation <= "0111"; -- slt
            when "101001" => operation <= "0111"; -- sltu
            when others => operation <= "0111";
            end case;
    end process;
end Behavioral;


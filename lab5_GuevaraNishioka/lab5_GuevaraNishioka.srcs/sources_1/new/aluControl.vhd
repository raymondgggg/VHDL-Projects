LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE ieee.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;

ENTITY alu_control IS
	PORT (
	    aluop : in std_logic_vector(2 downto 0);
		funct     : IN STD_LOGIC_VECTOR (5 DOWNTO 0);
		operation : OUT STD_LOGIC_VECTOR (3 DOWNTO 0)
	);
END alu_control;
ARCHITECTURE Behavioral OF alu_control IS
BEGIN
    process(aluop, funct)-- process for specifying waht happens
    begin
        CASE aluop is
            --I-type instructions
            when "000" => operation <= "0010"; -- add operation for sw and lw
            when "001" => operation <= "0110"; -- sub operation for beq and bne
            when "010" => operation <= "0010"; -- add operation for addi and addiu
            when "011" => operation <= "0111"; --slt operation for slti and sltiu
            when "100" => operation <= "0000"; -- and operation for andi
            when "101" => operation <= "0001"; -- oer operation for ori
            
            --R-type instructions 
            when "111" => 
            if (funct = "100000") then 
                operation <= "0010"; --add
            elsif (funct = "100001") then 
                operation <= "0010"; --addu
            elsif (funct <= "100010") then
                operation <= "0110"; --sub
            elsif(funct = "100011") then 
                operation <= "0110"; --subu
            elsif(funct = "100100") then 
                operation <= "0000"; --and
            elsif(funct = "100101") then 
                operation <= "0001"; --or
            elsif(funct = "100110") then 
                operation <= "0011"; --xor
            elsif(funct = "100111") then 
                operation <= "1100"; --nor
            elsif(funct = "101000") then 
                operation <= "0111"; --slt
            elsif(funct = "101001") then
                operation <= "0111"; --sltu
            end if;
            
            when others => operation <= "0111";
       end case;
    end process;
end Behavioral;
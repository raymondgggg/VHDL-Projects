LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
ENTITY controlUnit IS
	PORT (
		opcode        : IN std_logic_vector(5 DOWNTO 0); -- OP code for the instruction 
		regWrite      : OUT std_logic;
		alusrc : out std_logic;
		memWrite : out std_logic;
		aluOp : out std_logic_vector(2 downto 0);
		memtoreg : out std_logic;
		memread : out std_logic;
		branch: out std_logic;
		regdst : out std_logic;
		branchne : out std_logic
	);
END controlUnit;
ARCHITECTURE Behavioral OF controlUnit IS
BEGIN
	PROCESS (opcode)
	BEGIN
		regWrite <= '0'; 
		CASE opcode IS
			WHEN "000000" => -- rtype instructions
				regWrite <= '1';
				alusrc <= '0';
				memtoreg <= '0';
				memWrite <= '0';
				branch <= '0';
				regdst <= '0';
				memread <= '0';
				branchne <= '0';
				aluop <= "111";
			when "000100" => -- beq instruction
			     regWrite <= '0';
			     alusrc <= '0';
			     memtoreg <= '0';
			     memWrite <= '0';
			     branch <= '1';
			     regdst <= '0';
			     memread <= '0';
			     branchne <= '0';
			     aluop <= "001";
			when "000101" => -- bne instruction
			     regWrite <= '0';
			     alusrc <= '0';
			     memtoreg <= '0';
			     memWrite <= '0';
			     branch <= '1';
			     regdst <= '0';
			     memread <= '0';
			     branchne <= '0';
			     aluop <= "001";
		    when "001000" => --addi instruction
		         regWrite <= '1';
		         alusrc <= '1';
		         memtoreg <= '0';
			     memWrite <= '0';
			     branch <= '0';
			     regdst <= '0';
			     memread <= '0';
			     branchne <= '0';
			     aluop <= "010";
		   when "001001" => --addiu
		         regWrite <= '1';
		         alusrc <= '1';
		         memtoreg <= '0';
			     memWrite <= '0';
			     branch <= '0';
			     regdst <= '0';
			     memread <= '0';
			     branchne <= '0';
			     aluop <= "010";
		   when "001100" => --andi
		         regWrite <= '1';
		         alusrc <= '1';
		         memtoreg <= '0';
			     memWrite <= '0';
			     branch <= '0';
			     regdst <= '0';
			     memread <= '0';
			     branchne <= '0';
			     aluop <= "100";
		   when "001101" => --ori
		         regWrite <= '1';
		         alusrc <= '1';
		         memtoreg <= '0';
			     memWrite <= '0';
			     branch <= '0';
			     regdst <= '0';
			     memread <= '0';
			     branchne <= '0';
			     aluop <= "101";
		  when "001010" => --slti
		         regWrite <= '1';
		         alusrc <= '1';
		         memtoreg <= '0';
			     memWrite <= '0';
			     branch <= '0';
			     regdst <= '0';
			     memread <= '0';
			     branchne <= '0';
			     aluop <= "011";
		  when "001011" => --sltiu
		         regWrite <= '1';
		         alusrc <= '1';
		         memtoreg <= '0';
			     memWrite <= '0';
			     branch <= '0';
			     regdst <= '0';
			     memread <= '0';
			     branchne <= '0';
			     aluop <= "011";
		  when "100011" => --lw
		         regWrite <= '1';
		         alusrc <= '1';
		         memtoreg <= '1';
			     memWrite <= '1';
			     branch <= '0';
			     regdst <= '0';
			     memread <= '0';
			     branchne <= '0';
			     aluop <= "000";
	     when "101011" => --sw
	             regWrite <= '1';
		         alusrc <= '1';
		         memtoreg <= '0';
			     memWrite <= '1';
			     branch <= '0';
			     regdst <= '0';
			     memread <= '1';
			     branchne <= '0';
			     aluop <= "000";
		 when others => -- anything not listed above
		         regWrite <= '0';
		         alusrc <= '0';
		         memtoreg <= '0';
			     memWrite <= '0';
			     branch <= '0';
			     regdst <= '0';
			     memread <= '0';
			     branchne <= '0';
			     aluop <= "110";        
		END CASE;
	END PROCESS;
END Behavioral;
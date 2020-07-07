library ieee; 
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;

entity ALUtb is
end ALUtb;

architecture Behavioral of ALUtb is 
    signal A, B, aluOut : std_logic_vector (31 downto 0);
    signal ctrl : std_logic_vector(3 downto 0);
    signal Cin, zero, overflow, Cout : std_logic;

component ALU is 
    port( A : in std_logic_vector(31 downto 0);
          B : in std_logic_vector(31 downto 0);
          ctrl : in std_logic_vector (3 downto 0);
          Cin : in std_logic;
          aluOut : out std_logic_vector(31 downto 0);
          Cout : out std_logic;
          overflow : out std_logic;
          zero : out std_logic);
end component;

begin 
ALU1 : ALU 
    port map(
        A => A,
        B => B,
        aluOut => aluOut,
        ctrl => ctrl,
        Cin => Cin,
        zero => zero,
        overflow => overflow,
        Cout => Cout);
process 
    begin 
    A <= x"FFFFFFFF";
    B <= x"00000000";
    Cin <= '0';
    ctrl <= "0000";
    wait for 10ns;
    
    A <= x"98989898";
    B <= x"89898989";
    Cin <= '0';
    ctrl <= "0001";
    wait for 10ns;
    
    A <= x"01010101";
    B <= x"10101010";
    Cin <= '0';
    ctrl <= "0011";
    wait for 10ns;
    
    A <= x"00000001";
    B <= x"FFFFFFFF";
    Cin <= '0';
    ctrl <= "0010";
    wait for 10ns;
    
    A <= x"6389754F";
    B <= x"AD5624E6";
    Cin <= '0';
    ctrl <= "0010";
    wait for 10ns;
    
    A <= x"00000001";
    B <= x"FFFFFFFF";
    Cin <= '1';
    ctrl <= "0010";
    wait for 10ns;
    
    A <= x"6389754F";
    B <= x"AD5624E6";
    Cin <= '1';
    ctrl <= "0010";
    wait for 10ns;
    
    A <= x"FFFFFFFF";
    B <= x"FFFFFFFF";
    Cin <= '1';
    ctrl <= "0010";
    wait for 10ns;
    
    A <= x"00000000";
    B <= x"00000001";
    Cin <= '0';
    ctrl <= "0110";
    wait for 10ns;
    
    A <= x"F9684783";
    B <= x"F998D562";
    Cin <= '0';
    ctrl <= "0110";
    wait for 10ns;
    
    A <= x"9ABCDEDF";
    B <= x"9ABCDEFD";
    Cin <= '0';
    ctrl <= "1100";
    wait for 10 ns;
    
    A <= x"89BCDE34";
    B <= x"C53BD687";
    Cin <= '0';
    ctrl <= "1111";
    
    end process;
end Behavioral;
    
    
    
    
    
    
    
        

    

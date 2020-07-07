


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity adder_subtractor_4bit_tb is

end adder_subtractor_4bit_tb;

architecture Behavioral of adder_subtractor_4bit_tb is
signal A, B : std_logic_vector(1 downto 0);
signal sum : std_logic_vector(2 downto 0);



component adder_subtractor_4bit_wrapper is
  port (
    A : in STD_LOGIC_VECTOR ( 1 downto 0 );
    B : in STD_LOGIC_VECTOR ( 1 downto 0 );
    sum : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  end component adder_subtractor_4bit_wrapper;
begin
design_1_i:  adder_subtractor_4bit_wrapper
     port map (
      A => A,
      B => B,
      sum => sum
    );
A <= "11";
B <= "01";
end Behavioral;
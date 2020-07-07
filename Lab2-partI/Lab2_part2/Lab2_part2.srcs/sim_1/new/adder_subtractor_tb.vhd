


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity adder_subtractor_tb is
--  Port ( );
end adder_subtractor_tb;

architecture Behavioral of adder_subtractor_tb is
signal A, B : std_logic_vector(3 downto 0);
signal sum : std_logic_vector(4 downto 0);



component adder_subtractor_4bit_wrapper is
  port (
    A : in STD_LOGIC_VECTOR ( 3 downto 0 );
    B : in STD_LOGIC_VECTOR ( 3 downto 0 );
    sum : out STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  end component adder_subtractor_4bit_wrapper;
begin
design_1_i:  adder_subtractor_4bit_wrapper
     port map (
      A => A,
      B => B,
      sum => sum
    );
A <= "0000";
B <= "0011";
end Behavioral;


library ieee;
use ieee.std_logic_1164.all;

entity tb_logic_circuit_F2 is
end tb_logic_circuit_F2;

architecture tb of tb_logic_circuit_F2 is

    component logic_circuit_F2
        port (A : in std_logic;
              B : in std_logic;
              F : out std_logic);
    end component;

    signal A : std_logic;
    signal B : std_logic;
    signal F : std_logic;

begin

    dut : logic_circuit_F2
    port map (A => A,
              B => B,
              F => F);

    stimuli : process
    begin
 
        A <= '1';
        B <= '0';
        wait;
    end process;

end tb;
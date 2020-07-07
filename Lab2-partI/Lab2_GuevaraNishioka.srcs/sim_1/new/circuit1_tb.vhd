library ieee;
use ieee.std_logic_1164.all;

entity tb_logic_circuit_F1 is
end tb_logic_circuit_F1;

architecture tb of tb_logic_circuit_F1 is

    component logic_circuit_F1
        port (A : in std_logic;
              B : in std_logic;
              C : in std_logic;
              F : out std_logic);
    end component;

    signal A : std_logic;
    signal B : std_logic;
    signal C : std_logic;
    signal F : std_logic;

begin

    dut : logic_circuit_F1
    port map (A => A,
              B => B,
              C => C,
              F => F);

    stimuli : process
    begin
        A <= '1';
        B <= '1';
        C <= '1';
        wait;
    end process;

end tb;
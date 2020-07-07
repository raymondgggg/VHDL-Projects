library ieee;
use ieee.std_logic_1164.all;

entity tb_design_1_wrapper is
end tb_design_1_wrapper;

architecture tb of tb_design_1_wrapper is

    component design_1_wrapper
        port (alutOut  : out std_logic_vector (31 downto 0 );
              cin      : in std_logic;
              clock    : in std_logic;
              cout     : out std_logic;
              overflow : out std_logic;
              reset    : in std_logic;
              zero     : out std_logic);
    end component;

    signal alutOut  : std_logic_vector (31 downto 0 );
    signal cin      : std_logic;
    signal clock    : std_logic;
    signal cout     : std_logic;
    signal overflow : std_logic;
    signal reset    : std_logic;
    signal zero     : std_logic;

    constant TbPeriod : time := 20 ns; 
    signal TbClock : std_logic := '0';
    signal TbSimEnded : std_logic := '0';

begin

    dut : design_1_wrapper
    port map (alutOut  => alutOut,
              cin      => cin,
              clock    => clock,
              cout     => cout,
              overflow => overflow,
              reset    => reset,
              zero     => zero);
    TbClock <= not TbClock after TbPeriod/2 when TbSimEnded /= '1' else '0';

    clock <= TbClock;

    stimuli : process
    begin
    
        cin <= '0';
        
        reset <= '1';
        wait for 20 ns;
        reset <= '0';
        wait for 20 ns;
        
        wait for 10 * TbPeriod;
        TbSimEnded <= '1';
        wait;
    end process;
end tb;
configuration cfg_tb_design_1_wrapper of tb_design_1_wrapper is
    for tb
    end for;
end cfg_tb_design_1_wrapper;

--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.2.1 (win64) Build 2729669 Thu Dec  5 04:49:17 MST 2019
--Date        : Tue Apr 28 21:33:41 2020
--Host        : RaymondGuevara-PC running 64-bit major release  (build 9200)
--Command     : generate_target design_1_wrapper.bd
--Design      : design_1_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_wrapper is
  port (
    alutOut : out STD_LOGIC_VECTOR ( 31 downto 0 );
    cin : in STD_LOGIC;
    clock : in STD_LOGIC;
    cout : out STD_LOGIC;
    overflow : out STD_LOGIC;
    reset : in STD_LOGIC;
    zero : out STD_LOGIC
  );
end design_1_wrapper;

architecture STRUCTURE of design_1_wrapper is
  component design_1 is
  port (
    clock : in STD_LOGIC;
    reset : in STD_LOGIC;
    cin : in STD_LOGIC;
    zero : out STD_LOGIC;
    cout : out STD_LOGIC;
    overflow : out STD_LOGIC;
    alutOut : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component design_1;
begin
design_1_i: component design_1
     port map (
      alutOut(31 downto 0) => alutOut(31 downto 0),
      cin => cin,
      clock => clock,
      cout => cout,
      overflow => overflow,
      reset => reset,
      zero => zero
    );
end STRUCTURE;

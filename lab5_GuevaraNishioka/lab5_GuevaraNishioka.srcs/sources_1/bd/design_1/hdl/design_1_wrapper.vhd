--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.2.1 (win64) Build 2729669 Thu Dec  5 04:49:17 MST 2019
--Date        : Thu May  7 15:07:58 2020
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
    Clock : in STD_LOGIC;
    FinalReg : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Reset : in STD_LOGIC;
    cout : out STD_LOGIC;
    overflow : out STD_LOGIC
  );
end design_1_wrapper;

architecture STRUCTURE of design_1_wrapper is
  component design_1 is
  port (
    Clock : in STD_LOGIC;
    Reset : in STD_LOGIC;
    FinalReg : out STD_LOGIC_VECTOR ( 31 downto 0 );
    overflow : out STD_LOGIC;
    cout : out STD_LOGIC
  );
  end component design_1;
begin
design_1_i: component design_1
     port map (
      Clock => Clock,
      FinalReg(31 downto 0) => FinalReg(31 downto 0),
      Reset => Reset,
      cout => cout,
      overflow => overflow
    );
end STRUCTURE;

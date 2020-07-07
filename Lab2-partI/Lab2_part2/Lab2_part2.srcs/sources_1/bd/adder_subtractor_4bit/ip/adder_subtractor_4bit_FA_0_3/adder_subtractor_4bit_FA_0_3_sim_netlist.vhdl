-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2.1 (win64) Build 2729669 Thu Dec  5 04:49:17 MST 2019
-- Date        : Wed Feb 19 00:32:16 2020
-- Host        : RaymondGuevara-PC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Programs/Lab2-partI/Lab2_part2/Lab2_part2.srcs/sources_1/bd/adder_subtractor_4bit/ip/adder_subtractor_4bit_FA_0_3/adder_subtractor_4bit_FA_0_3_sim_netlist.vhdl
-- Design      : adder_subtractor_4bit_FA_0_3
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7k70tfbv676-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity adder_subtractor_4bit_FA_0_3_FA is
  port (
    S : out STD_LOGIC;
    Cout : out STD_LOGIC;
    B : in STD_LOGIC;
    A : in STD_LOGIC;
    Cin : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of adder_subtractor_4bit_FA_0_3_FA : entity is "FA";
end adder_subtractor_4bit_FA_0_3_FA;

architecture STRUCTURE of adder_subtractor_4bit_FA_0_3_FA is
begin
ct: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => A,
      I1 => Cin,
      I2 => B,
      O => Cout
    );
st: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => B,
      I1 => A,
      I2 => Cin,
      O => S
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity adder_subtractor_4bit_FA_0_3 is
  port (
    A : in STD_LOGIC;
    B : in STD_LOGIC;
    Cin : in STD_LOGIC;
    S : out STD_LOGIC;
    Cout : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of adder_subtractor_4bit_FA_0_3 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of adder_subtractor_4bit_FA_0_3 : entity is "adder_subtractor_4bit_FA_0_3,FA,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of adder_subtractor_4bit_FA_0_3 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of adder_subtractor_4bit_FA_0_3 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of adder_subtractor_4bit_FA_0_3 : entity is "FA,Vivado 2019.2.1";
end adder_subtractor_4bit_FA_0_3;

architecture STRUCTURE of adder_subtractor_4bit_FA_0_3 is
begin
U0: entity work.adder_subtractor_4bit_FA_0_3_FA
     port map (
      A => A,
      B => B,
      Cin => Cin,
      Cout => Cout,
      S => S
    );
end STRUCTURE;

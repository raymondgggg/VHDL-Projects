-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2.1 (win64) Build 2729669 Thu Dec  5 04:49:17 MST 2019
-- Date        : Wed Feb 19 01:46:32 2020
-- Host        : RaymondGuevara-PC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               C:/Programs/lab1/lab1.srcs/sources_1/bd/adder_2bit/ip/adder_2bit_FA_0_0/adder_2bit_FA_0_0_sim_netlist.vhdl
-- Design      : adder_2bit_FA_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7k70tfbv676-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity adder_2bit_FA_0_0_FA is
  port (
    S : out STD_LOGIC;
    Cout : out STD_LOGIC;
    B : in STD_LOGIC;
    A : in STD_LOGIC;
    Cin : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of adder_2bit_FA_0_0_FA : entity is "FA";
end adder_2bit_FA_0_0_FA;

architecture STRUCTURE of adder_2bit_FA_0_0_FA is
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
entity adder_2bit_FA_0_0 is
  port (
    A : in STD_LOGIC;
    B : in STD_LOGIC;
    Cin : in STD_LOGIC;
    S : out STD_LOGIC;
    Cout : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of adder_2bit_FA_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of adder_2bit_FA_0_0 : entity is "adder_2bit_FA_0_0,FA,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of adder_2bit_FA_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of adder_2bit_FA_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of adder_2bit_FA_0_0 : entity is "FA,Vivado 2019.2.1";
end adder_2bit_FA_0_0;

architecture STRUCTURE of adder_2bit_FA_0_0 is
begin
U0: entity work.adder_2bit_FA_0_0_FA
     port map (
      A => A,
      B => B,
      Cin => Cin,
      Cout => Cout,
      S => S
    );
end STRUCTURE;

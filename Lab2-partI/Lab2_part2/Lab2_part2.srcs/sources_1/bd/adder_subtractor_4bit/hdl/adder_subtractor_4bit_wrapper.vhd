--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.2.1 (win64) Build 2729669 Thu Dec  5 04:49:17 MST 2019
--Date        : Wed Feb 19 01:29:33 2020
--Host        : RaymondGuevara-PC running 64-bit major release  (build 9200)
--Command     : generate_target adder_subtractor_4bit_wrapper.bd
--Design      : adder_subtractor_4bit_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity adder_subtractor_4bit_wrapper is
  port (
    A : in STD_LOGIC_VECTOR ( 3 downto 0 );
    B : in STD_LOGIC_VECTOR ( 3 downto 0 );
    sum : out STD_LOGIC_VECTOR ( 4 downto 0 )
  );
end adder_subtractor_4bit_wrapper;

architecture STRUCTURE of adder_subtractor_4bit_wrapper is
  component adder_subtractor_4bit is
  port (
    A : in STD_LOGIC_VECTOR ( 3 downto 0 );
    B : in STD_LOGIC_VECTOR ( 3 downto 0 );
    sum : out STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  end component adder_subtractor_4bit;
begin
adder_subtractor_4bit_i: component adder_subtractor_4bit
     port map (
      A(3 downto 0) => A(3 downto 0),
      B(3 downto 0) => B(3 downto 0),
      sum(4 downto 0) => sum(4 downto 0)
    );
end STRUCTURE;

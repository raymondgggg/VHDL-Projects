--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.2.1 (win64) Build 2729669 Thu Dec  5 04:49:17 MST 2019
--Date        : Thu Feb 20 10:33:13 2020
--Host        : RaymondGuevara-PC running 64-bit major release  (build 9200)
--Command     : generate_target adder_subtractor_wrapper.bd
--Design      : adder_subtractor_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity adder_subtractor_wrapper is
  port (
    A : in STD_LOGIC_VECTOR ( 3 downto 0 );
    B : in STD_LOGIC_VECTOR ( 3 downto 0 );
    sumOrSub : out STD_LOGIC_VECTOR ( 4 downto 0 )
  );
end adder_subtractor_wrapper;

architecture STRUCTURE of adder_subtractor_wrapper is
  component adder_subtractor is
  port (
    A : in STD_LOGIC_VECTOR ( 3 downto 0 );
    sumOrSub : out STD_LOGIC_VECTOR ( 4 downto 0 );
    B : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component adder_subtractor;
begin
adder_subtractor_i: component adder_subtractor
     port map (
      A(3 downto 0) => A(3 downto 0),
      B(3 downto 0) => B(3 downto 0),
      sumOrSub(4 downto 0) => sumOrSub(4 downto 0)
    );
end STRUCTURE;

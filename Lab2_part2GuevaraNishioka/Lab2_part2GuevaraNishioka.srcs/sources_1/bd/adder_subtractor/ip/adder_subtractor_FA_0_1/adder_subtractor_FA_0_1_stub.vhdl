-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2.1 (win64) Build 2729669 Thu Dec  5 04:49:17 MST 2019
-- Date        : Wed Feb 19 04:11:13 2020
-- Host        : RaymondGuevara-PC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Programs/Lab2_part2GuevaraNishioka/Lab2_part2GuevaraNishioka.srcs/sources_1/bd/adder_subtractor/ip/adder_subtractor_FA_0_1/adder_subtractor_FA_0_1_stub.vhdl
-- Design      : adder_subtractor_FA_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7k70tfbv676-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity adder_subtractor_FA_0_1 is
  Port ( 
    A : in STD_LOGIC;
    B : in STD_LOGIC;
    Cin : in STD_LOGIC;
    S : out STD_LOGIC;
    Cout : out STD_LOGIC
  );

end adder_subtractor_FA_0_1;

architecture stub of adder_subtractor_FA_0_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "A,B,Cin,S,Cout";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "FA,Vivado 2019.2.1";
begin
end;

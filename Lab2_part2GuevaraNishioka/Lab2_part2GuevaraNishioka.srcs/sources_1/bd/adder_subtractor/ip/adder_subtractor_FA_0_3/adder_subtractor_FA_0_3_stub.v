// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2.1 (win64) Build 2729669 Thu Dec  5 04:49:17 MST 2019
// Date        : Wed Feb 19 04:11:14 2020
// Host        : RaymondGuevara-PC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Programs/Lab2_part2GuevaraNishioka/Lab2_part2GuevaraNishioka.srcs/sources_1/bd/adder_subtractor/ip/adder_subtractor_FA_0_3/adder_subtractor_FA_0_3_stub.v
// Design      : adder_subtractor_FA_0_3
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7k70tfbv676-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "FA,Vivado 2019.2.1" *)
module adder_subtractor_FA_0_3(A, B, Cin, S, Cout)
/* synthesis syn_black_box black_box_pad_pin="A,B,Cin,S,Cout" */;
  input A;
  input B;
  input Cin;
  output S;
  output Cout;
endmodule

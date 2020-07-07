vlib work
vlib activehdl

vlib activehdl/xil_defaultlib
vlib activehdl/xlslice_v1_0_2
vlib activehdl/xlconstant_v1_1_6
vlib activehdl/xlconcat_v2_1_3

vmap xil_defaultlib activehdl/xil_defaultlib
vmap xlslice_v1_0_2 activehdl/xlslice_v1_0_2
vmap xlconstant_v1_1_6 activehdl/xlconstant_v1_1_6
vmap xlconcat_v2_1_3 activehdl/xlconcat_v2_1_3

vcom -work xil_defaultlib -93 \
"../../../bd/adder_subtractor/ip/adder_subtractor_FA_0_0/sim/adder_subtractor_FA_0_0.vhd" \
"../../../bd/adder_subtractor/ip/adder_subtractor_FA_0_1/sim/adder_subtractor_FA_0_1.vhd" \
"../../../bd/adder_subtractor/ip/adder_subtractor_FA_0_2/sim/adder_subtractor_FA_0_2.vhd" \
"../../../bd/adder_subtractor/ip/adder_subtractor_FA_0_3/sim/adder_subtractor_FA_0_3.vhd" \

vlog -work xlslice_v1_0_2  -v2k5 \
"../../../../Lab2_part2GuevaraNishioka.srcs/sources_1/bd/adder_subtractor/ipshared/11d0/hdl/xlslice_v1_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/adder_subtractor/ip/adder_subtractor_xlslice_0_0/sim/adder_subtractor_xlslice_0_0.v" \
"../../../bd/adder_subtractor/ip/adder_subtractor_xlslice_0_1/sim/adder_subtractor_xlslice_0_1.v" \
"../../../bd/adder_subtractor/ip/adder_subtractor_xlslice_1_0/sim/adder_subtractor_xlslice_1_0.v" \
"../../../bd/adder_subtractor/ip/adder_subtractor_xlslice_1_1/sim/adder_subtractor_xlslice_1_1.v" \
"../../../bd/adder_subtractor/ip/adder_subtractor_xlslice_1_2/sim/adder_subtractor_xlslice_1_2.v" \
"../../../bd/adder_subtractor/ip/adder_subtractor_xlslice_1_3/sim/adder_subtractor_xlslice_1_3.v" \
"../../../bd/adder_subtractor/ip/adder_subtractor_xlslice_1_4/sim/adder_subtractor_xlslice_1_4.v" \
"../../../bd/adder_subtractor/ip/adder_subtractor_xlslice_1_5/sim/adder_subtractor_xlslice_1_5.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/adder_subtractor/ip/adder_subtractor_util_vector_logic_0_0/adder_subtractor_util_vector_logic_0_0_sim_netlist.vhdl" \
"../../../bd/adder_subtractor/ip/adder_subtractor_util_vector_logic_0_1/adder_subtractor_util_vector_logic_0_1_sim_netlist.vhdl" \
"../../../bd/adder_subtractor/ip/adder_subtractor_util_vector_logic_0_2/adder_subtractor_util_vector_logic_0_2_sim_netlist.vhdl" \
"../../../bd/adder_subtractor/ip/adder_subtractor_util_vector_logic_0_3/adder_subtractor_util_vector_logic_0_3_sim_netlist.vhdl" \

vlog -work xlconstant_v1_1_6  -v2k5 \
"../../../../Lab2_part2GuevaraNishioka.srcs/sources_1/bd/adder_subtractor/ipshared/34f7/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/adder_subtractor/ip/adder_subtractor_xlconstant_0_0/sim/adder_subtractor_xlconstant_0_0.v" \

vlog -work xlconcat_v2_1_3  -v2k5 \
"../../../../Lab2_part2GuevaraNishioka.srcs/sources_1/bd/adder_subtractor/ipshared/442e/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/adder_subtractor/ip/adder_subtractor_xlconcat_0_0/sim/adder_subtractor_xlconcat_0_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/adder_subtractor/sim/adder_subtractor.vhd" \
"../../../bd/adder_subtractor/ip/adder_subtractor_xorGate_0_0/sim/adder_subtractor_xorGate_0_0.vhd" \

vlog -work xil_defaultlib \
"glbl.v"


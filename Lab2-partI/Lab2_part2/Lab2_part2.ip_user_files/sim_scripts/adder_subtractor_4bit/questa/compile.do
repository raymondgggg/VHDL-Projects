vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/xlslice_v1_0_2
vlib questa_lib/msim/xlconstant_v1_1_6
vlib questa_lib/msim/xlconcat_v2_1_3

vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap xlslice_v1_0_2 questa_lib/msim/xlslice_v1_0_2
vmap xlconstant_v1_1_6 questa_lib/msim/xlconstant_v1_1_6
vmap xlconcat_v2_1_3 questa_lib/msim/xlconcat_v2_1_3

vcom -work xil_defaultlib -64 -93 \
"../../../bd/adder_subtractor_4bit/ip/adder_subtractor_4bit_FA_0_0/sim/adder_subtractor_4bit_FA_0_0.vhd" \
"../../../bd/adder_subtractor_4bit/ip/adder_subtractor_4bit_FA_0_1/sim/adder_subtractor_4bit_FA_0_1.vhd" \
"../../../bd/adder_subtractor_4bit/ip/adder_subtractor_4bit_FA_0_2/sim/adder_subtractor_4bit_FA_0_2.vhd" \
"../../../bd/adder_subtractor_4bit/ip/adder_subtractor_4bit_FA_0_3/sim/adder_subtractor_4bit_FA_0_3.vhd" \

vlog -work xlslice_v1_0_2 -64 \
"../../../../Lab2_part2.srcs/sources_1/bd/adder_subtractor_4bit/ipshared/11d0/hdl/xlslice_v1_0_vl_rfs.v" \

vlog -work xil_defaultlib -64 \
"../../../bd/adder_subtractor_4bit/ip/adder_subtractor_4bit_xlslice_0_0/sim/adder_subtractor_4bit_xlslice_0_0.v" \
"../../../bd/adder_subtractor_4bit/ip/adder_subtractor_4bit_xlslice_0_1/sim/adder_subtractor_4bit_xlslice_0_1.v" \
"../../../bd/adder_subtractor_4bit/ip/adder_subtractor_4bit_xlslice_0_2/sim/adder_subtractor_4bit_xlslice_0_2.v" \
"../../../bd/adder_subtractor_4bit/ip/adder_subtractor_4bit_xlslice_0_3/sim/adder_subtractor_4bit_xlslice_0_3.v" \
"../../../bd/adder_subtractor_4bit/ip/adder_subtractor_4bit_xlslice_0_4/sim/adder_subtractor_4bit_xlslice_0_4.v" \
"../../../bd/adder_subtractor_4bit/ip/adder_subtractor_4bit_xlslice_0_5/sim/adder_subtractor_4bit_xlslice_0_5.v" \
"../../../bd/adder_subtractor_4bit/ip/adder_subtractor_4bit_xlslice_0_6/sim/adder_subtractor_4bit_xlslice_0_6.v" \
"../../../bd/adder_subtractor_4bit/ip/adder_subtractor_4bit_xlslice_0_7/sim/adder_subtractor_4bit_xlslice_0_7.v" \

vlog -work xlconstant_v1_1_6 -64 \
"../../../../Lab2_part2.srcs/sources_1/bd/adder_subtractor_4bit/ipshared/34f7/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 \
"../../../bd/adder_subtractor_4bit/ip/adder_subtractor_4bit_xlconstant_0_1/sim/adder_subtractor_4bit_xlconstant_0_1.v" \

vlog -work xlconcat_v2_1_3 -64 \
"../../../../Lab2_part2.srcs/sources_1/bd/adder_subtractor_4bit/ipshared/442e/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 \
"../../../bd/adder_subtractor_4bit/ip/adder_subtractor_4bit_xlconcat_0_0/sim/adder_subtractor_4bit_xlconcat_0_0.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/adder_subtractor_4bit/sim/adder_subtractor_4bit.vhd" \

vlog -work xil_defaultlib \
"glbl.v"


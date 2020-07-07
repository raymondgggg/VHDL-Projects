vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/xlslice_v1_0_2
vlib modelsim_lib/msim/xlconstant_v1_1_6
vlib modelsim_lib/msim/xlconcat_v2_1_3

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap xlslice_v1_0_2 modelsim_lib/msim/xlslice_v1_0_2
vmap xlconstant_v1_1_6 modelsim_lib/msim/xlconstant_v1_1_6
vmap xlconcat_v2_1_3 modelsim_lib/msim/xlconcat_v2_1_3

vcom -work xil_defaultlib -64 -93 \
"../../../bd/adder_2bit/ip/adder_2bit_FA_0_0/sim/adder_2bit_FA_0_0.vhd" \
"../../../bd/adder_2bit/ip/adder_2bit_FA_0_1/sim/adder_2bit_FA_0_1.vhd" \

vlog -work xlslice_v1_0_2 -64 -incr \
"../../../../Lab2_partII.srcs/sources_1/bd/adder_2bit/ipshared/11d0/hdl/xlslice_v1_0_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr \
"../../../bd/adder_2bit/ip/adder_2bit_xlslice_0_0/sim/adder_2bit_xlslice_0_0.v" \

vlog -work xlconstant_v1_1_6 -64 -incr \
"../../../../Lab2_partII.srcs/sources_1/bd/adder_2bit/ipshared/34f7/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr \
"../../../bd/adder_2bit/ip/adder_2bit_xlconstant_0_0/sim/adder_2bit_xlconstant_0_0.v" \

vlog -work xlconcat_v2_1_3 -64 -incr \
"../../../../Lab2_partII.srcs/sources_1/bd/adder_2bit/ipshared/442e/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr \
"../../../bd/adder_2bit/ip/adder_2bit_xlconcat_0_0/sim/adder_2bit_xlconcat_0_0.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/adder_2bit/sim/adder_2bit.vhd" \
"../../../bd/adder_2bit/ip/adder_2bit_FA_1_0/sim/adder_2bit_FA_1_0.vhd" \
"../../../bd/adder_2bit/ip/adder_2bit_FA_2_0/sim/adder_2bit_FA_2_0.vhd" \

vlog -work xil_defaultlib -64 -incr \
"../../../bd/adder_2bit/ip/adder_2bit_xlslice_0_4/sim/adder_2bit_xlslice_0_4.v" \
"../../../bd/adder_2bit/ip/adder_2bit_xlslice_1_0/sim/adder_2bit_xlslice_1_0.v" \
"../../../bd/adder_2bit/ip/adder_2bit_xlslice_1_1/sim/adder_2bit_xlslice_1_1.v" \
"../../../bd/adder_2bit/ip/adder_2bit_xlslice_1_2/sim/adder_2bit_xlslice_1_2.v" \
"../../../bd/adder_2bit/ip/adder_2bit_xlslice_1_3/sim/adder_2bit_xlslice_1_3.v" \
"../../../bd/adder_2bit/ip/adder_2bit_xlslice_1_4/sim/adder_2bit_xlslice_1_4.v" \
"../../../bd/adder_2bit/ip/adder_2bit_xlslice_1_5/sim/adder_2bit_xlslice_1_5.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/adder_2bit/ip/adder_2bit_util_vector_logic_0_0/adder_2bit_util_vector_logic_0_0_sim_netlist.vhdl" \
"../../../bd/adder_2bit/ip/adder_2bit_util_vector_logic_0_1/adder_2bit_util_vector_logic_0_1_sim_netlist.vhdl" \
"../../../bd/adder_2bit/ip/adder_2bit_util_vector_logic_0_2/adder_2bit_util_vector_logic_0_2_sim_netlist.vhdl" \
"../../../bd/adder_2bit/ip/adder_2bit_util_vector_logic_0_3/adder_2bit_util_vector_logic_0_3_sim_netlist.vhdl" \

vlog -work xil_defaultlib \
"glbl.v"


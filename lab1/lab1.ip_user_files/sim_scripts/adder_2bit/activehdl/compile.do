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
"../../../bd/adder_2bit/ip/adder_2bit_FA_0_0/sim/adder_2bit_FA_0_0.vhd" \
"../../../bd/adder_2bit/ip/adder_2bit_FA_0_1/sim/adder_2bit_FA_0_1.vhd" \

vlog -work xlslice_v1_0_2  -v2k5 \
"../../../../lab1.srcs/sources_1/bd/adder_2bit/ipshared/11d0/hdl/xlslice_v1_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/adder_2bit/ip/adder_2bit_xlslice_0_0/sim/adder_2bit_xlslice_0_0.v" \
"../../../bd/adder_2bit/ip/adder_2bit_xlslice_0_1/sim/adder_2bit_xlslice_0_1.v" \
"../../../bd/adder_2bit/ip/adder_2bit_xlslice_0_2/sim/adder_2bit_xlslice_0_2.v" \
"../../../bd/adder_2bit/ip/adder_2bit_xlslice_2_0/sim/adder_2bit_xlslice_2_0.v" \

vlog -work xlconstant_v1_1_6  -v2k5 \
"../../../../lab1.srcs/sources_1/bd/adder_2bit/ipshared/34f7/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/adder_2bit/ip/adder_2bit_xlconstant_0_0/sim/adder_2bit_xlconstant_0_0.v" \

vlog -work xlconcat_v2_1_3  -v2k5 \
"../../../../lab1.srcs/sources_1/bd/adder_2bit/ipshared/442e/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/adder_2bit/ip/adder_2bit_xlconcat_0_0/sim/adder_2bit_xlconcat_0_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/adder_2bit/sim/adder_2bit.vhd" \
"../../../bd/adder_2bit/ip/adder_2bit_FA_1_0/sim/adder_2bit_FA_1_0.vhd" \
"../../../bd/adder_2bit/ip/adder_2bit_FA_1_1/sim/adder_2bit_FA_1_1.vhd" \

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/adder_2bit/ip/adder_2bit_xlslice_3_0/sim/adder_2bit_xlslice_3_0.v" \
"../../../bd/adder_2bit/ip/adder_2bit_xlslice_3_1/sim/adder_2bit_xlslice_3_1.v" \
"../../../bd/adder_2bit/ip/adder_2bit_xlslice_3_2/sim/adder_2bit_xlslice_3_2.v" \
"../../../bd/adder_2bit/ip/adder_2bit_xlslice_3_3/sim/adder_2bit_xlslice_3_3.v" \

vlog -work xil_defaultlib \
"glbl.v"


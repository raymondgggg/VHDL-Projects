vlib work
vlib activehdl

vlib activehdl/xil_defaultlib
vlib activehdl/xlslice_v1_0_2

vmap xil_defaultlib activehdl/xil_defaultlib
vmap xlslice_v1_0_2 activehdl/xlslice_v1_0_2

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_ALU_0_0/sim/design_1_ALU_0_0.vhd" \
"../../../bd/design_1/ip/design_1_alu_control_0_0/sim/design_1_alu_control_0_0.vhd" \
"../../../bd/design_1/ip/design_1_controlUnit_0_0/sim/design_1_controlUnit_0_0.vhd" \
"../../../bd/design_1/ip/design_1_instmem_0_0/sim/design_1_instmem_0_0.vhd" \
"../../../bd/design_1/ip/design_1_programCounterADD_0_0/sim/design_1_programCounterADD_0_0.vhd" \
"../../../bd/design_1/ip/design_1_regfile_0_0/sim/design_1_regfile_0_0.vhd" \

vlog -work xlslice_v1_0_2  -v2k5 \
"../../../../lab4_341.srcs/sources_1/bd/design_1/ipshared/11d0/hdl/xlslice_v1_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/design_1/ip/design_1_xlslice_0_0/sim/design_1_xlslice_0_0.v" \
"../../../bd/design_1/ip/design_1_xlslice_0_1/sim/design_1_xlslice_0_1.v" \
"../../../bd/design_1/ip/design_1_xlslice_0_2/sim/design_1_xlslice_0_2.v" \
"../../../bd/design_1/ip/design_1_xlslice_0_3/sim/design_1_xlslice_0_3.v" \
"../../../bd/design_1/ip/design_1_xlslice_0_4/sim/design_1_xlslice_0_4.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_PC_0_0/sim/design_1_PC_0_0.vhd" \
"../../../bd/design_1/sim/design_1.vhd" \

vlog -work xil_defaultlib \
"glbl.v"


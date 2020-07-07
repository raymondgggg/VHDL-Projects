vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/xlslice_v1_0_2

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap xlslice_v1_0_2 modelsim_lib/msim/xlslice_v1_0_2

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_ALU_0_0/sim/design_1_ALU_0_0.vhd" \
"../../../bd/design_1/ip/design_1_alu_control_0_0/sim/design_1_alu_control_0_0.vhd" \
"../../../bd/design_1/ip/design_1_controlUnit_0_0/sim/design_1_controlUnit_0_0.vhd" \
"../../../bd/design_1/ip/design_1_instmem_0_0/sim/design_1_instmem_0_0.vhd" \
"../../../bd/design_1/ip/design_1_programCounterADD_0_0/sim/design_1_programCounterADD_0_0.vhd" \
"../../../bd/design_1/ip/design_1_regfile_0_0/sim/design_1_regfile_0_0.vhd" \

vlog -work xlslice_v1_0_2 -64 -incr \
"../../../../lab4_341.srcs/sources_1/bd/design_1/ipshared/11d0/hdl/xlslice_v1_0_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr \
"../../../bd/design_1/ip/design_1_xlslice_0_0/sim/design_1_xlslice_0_0.v" \
"../../../bd/design_1/ip/design_1_xlslice_0_1/sim/design_1_xlslice_0_1.v" \
"../../../bd/design_1/ip/design_1_xlslice_0_2/sim/design_1_xlslice_0_2.v" \
"../../../bd/design_1/ip/design_1_xlslice_0_3/sim/design_1_xlslice_0_3.v" \
"../../../bd/design_1/ip/design_1_xlslice_0_4/sim/design_1_xlslice_0_4.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_PC_0_0/sim/design_1_PC_0_0.vhd" \
"../../../bd/design_1/sim/design_1.vhd" \

vlog -work xil_defaultlib \
"glbl.v"


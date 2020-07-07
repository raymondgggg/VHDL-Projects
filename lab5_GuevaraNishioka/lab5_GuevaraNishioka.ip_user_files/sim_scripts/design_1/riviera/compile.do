vlib work
vlib riviera

vlib riviera/xil_defaultlib
vlib riviera/xlslice_v1_0_2
vlib riviera/xbip_utils_v3_0_10
vlib riviera/c_reg_fd_v12_0_6
vlib riviera/xbip_dsp48_wrapper_v3_0_4
vlib riviera/xbip_pipe_v3_0_6
vlib riviera/xbip_dsp48_addsub_v3_0_6
vlib riviera/xbip_addsub_v3_0_6
vlib riviera/c_addsub_v12_0_14

vmap xil_defaultlib riviera/xil_defaultlib
vmap xlslice_v1_0_2 riviera/xlslice_v1_0_2
vmap xbip_utils_v3_0_10 riviera/xbip_utils_v3_0_10
vmap c_reg_fd_v12_0_6 riviera/c_reg_fd_v12_0_6
vmap xbip_dsp48_wrapper_v3_0_4 riviera/xbip_dsp48_wrapper_v3_0_4
vmap xbip_pipe_v3_0_6 riviera/xbip_pipe_v3_0_6
vmap xbip_dsp48_addsub_v3_0_6 riviera/xbip_dsp48_addsub_v3_0_6
vmap xbip_addsub_v3_0_6 riviera/xbip_addsub_v3_0_6
vmap c_addsub_v12_0_14 riviera/c_addsub_v12_0_14

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_ALU_0_0/sim/design_1_ALU_0_0.vhd" \
"../../../bd/design_1/ip/design_1_PC_0_0/sim/design_1_PC_0_0.vhd" \
"../../../bd/design_1/ip/design_1_alu_control_0_0/sim/design_1_alu_control_0_0.vhd" \
"../../../bd/design_1/ip/design_1_controlUnit_0_0/sim/design_1_controlUnit_0_0.vhd" \
"../../../bd/design_1/ip/design_1_datamem_0_0/sim/design_1_datamem_0_0.vhd" \
"../../../bd/design_1/ip/design_1_instmem_0_0/sim/design_1_instmem_0_0.vhd" \
"../../../bd/design_1/ip/design_1_mux2x1_32bit_0_0/sim/design_1_mux2x1_32bit_0_0.vhd" \
"../../../bd/design_1/ip/design_1_mux2x1_5bit_0_0/sim/design_1_mux2x1_5bit_0_0.vhd" \
"../../../bd/design_1/ip/design_1_programCounterADD_0_0/sim/design_1_programCounterADD_0_0.vhd" \
"../../../bd/design_1/ip/design_1_regfile_0_0/sim/design_1_regfile_0_0.vhd" \
"../../../bd/design_1/ip/design_1_shiftleft2_0_0/sim/design_1_shiftleft2_0_0.vhd" \
"../../../bd/design_1/ip/design_1_sign_extend_0_0/sim/design_1_sign_extend_0_0.vhd" \

vlog -work xlslice_v1_0_2  -v2k5 \
"../../../../lab5_GuevaraNishioka.srcs/sources_1/bd/design_1/ipshared/11d0/hdl/xlslice_v1_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/design_1/ip/design_1_xlslice_0_0/sim/design_1_xlslice_0_0.v" \
"../../../bd/design_1/ip/design_1_xlslice_0_1/sim/design_1_xlslice_0_1.v" \
"../../../bd/design_1/ip/design_1_xlslice_1_0/sim/design_1_xlslice_1_0.v" \
"../../../bd/design_1/ip/design_1_xlslice_1_1/sim/design_1_xlslice_1_1.v" \
"../../../bd/design_1/ip/design_1_xlslice_1_2/sim/design_1_xlslice_1_2.v" \
"../../../bd/design_1/ip/design_1_xlslice_1_3/sim/design_1_xlslice_1_3.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_mux2x1_32bit_0_1/sim/design_1_mux2x1_32bit_0_1.vhd" \

vcom -work xbip_utils_v3_0_10 -93 \
"../../../../lab5_GuevaraNishioka.srcs/sources_1/bd/design_1/ipshared/cbd7/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work c_reg_fd_v12_0_6 -93 \
"../../../../lab5_GuevaraNishioka.srcs/sources_1/bd/design_1/ipshared/edec/hdl/c_reg_fd_v12_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_wrapper_v3_0_4 -93 \
"../../../../lab5_GuevaraNishioka.srcs/sources_1/bd/design_1/ipshared/cdbf/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \

vcom -work xbip_pipe_v3_0_6 -93 \
"../../../../lab5_GuevaraNishioka.srcs/sources_1/bd/design_1/ipshared/7468/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_addsub_v3_0_6 -93 \
"../../../../lab5_GuevaraNishioka.srcs/sources_1/bd/design_1/ipshared/910d/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \

vcom -work xbip_addsub_v3_0_6 -93 \
"../../../../lab5_GuevaraNishioka.srcs/sources_1/bd/design_1/ipshared/cfdd/hdl/xbip_addsub_v3_0_vh_rfs.vhd" \

vcom -work c_addsub_v12_0_14 -93 \
"../../../../lab5_GuevaraNishioka.srcs/sources_1/bd/design_1/ipshared/ebb8/hdl/c_addsub_v12_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_c_addsub_0_2/sim/design_1_c_addsub_0_2.vhd" \
"../../../bd/design_1/ip/design_1_mux2x1_32bit_1_0/sim/design_1_mux2x1_32bit_1_0.vhd" \
"../../../bd/design_1/sim/design_1.vhd" \

vlog -work xil_defaultlib \
"glbl.v"


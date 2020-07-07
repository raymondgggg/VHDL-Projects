vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/xlslice_v1_0_2
vlib modelsim_lib/msim/xbip_utils_v3_0_10
vlib modelsim_lib/msim/c_reg_fd_v12_0_6
vlib modelsim_lib/msim/xbip_dsp48_wrapper_v3_0_4
vlib modelsim_lib/msim/xbip_pipe_v3_0_6
vlib modelsim_lib/msim/xbip_dsp48_addsub_v3_0_6
vlib modelsim_lib/msim/xbip_addsub_v3_0_6
vlib modelsim_lib/msim/c_addsub_v12_0_14

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap xlslice_v1_0_2 modelsim_lib/msim/xlslice_v1_0_2
vmap xbip_utils_v3_0_10 modelsim_lib/msim/xbip_utils_v3_0_10
vmap c_reg_fd_v12_0_6 modelsim_lib/msim/c_reg_fd_v12_0_6
vmap xbip_dsp48_wrapper_v3_0_4 modelsim_lib/msim/xbip_dsp48_wrapper_v3_0_4
vmap xbip_pipe_v3_0_6 modelsim_lib/msim/xbip_pipe_v3_0_6
vmap xbip_dsp48_addsub_v3_0_6 modelsim_lib/msim/xbip_dsp48_addsub_v3_0_6
vmap xbip_addsub_v3_0_6 modelsim_lib/msim/xbip_addsub_v3_0_6
vmap c_addsub_v12_0_14 modelsim_lib/msim/c_addsub_v12_0_14

vcom -work xil_defaultlib -64 -93 \
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

vlog -work xlslice_v1_0_2 -64 -incr \
"../../../../lab5_GuevaraNishioka.srcs/sources_1/bd/design_1/ipshared/11d0/hdl/xlslice_v1_0_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr \
"../../../bd/design_1/ip/design_1_xlslice_0_0/sim/design_1_xlslice_0_0.v" \
"../../../bd/design_1/ip/design_1_xlslice_0_1/sim/design_1_xlslice_0_1.v" \
"../../../bd/design_1/ip/design_1_xlslice_1_0/sim/design_1_xlslice_1_0.v" \
"../../../bd/design_1/ip/design_1_xlslice_1_1/sim/design_1_xlslice_1_1.v" \
"../../../bd/design_1/ip/design_1_xlslice_1_2/sim/design_1_xlslice_1_2.v" \
"../../../bd/design_1/ip/design_1_xlslice_1_3/sim/design_1_xlslice_1_3.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_mux2x1_32bit_0_1/sim/design_1_mux2x1_32bit_0_1.vhd" \

vcom -work xbip_utils_v3_0_10 -64 -93 \
"../../../../lab5_GuevaraNishioka.srcs/sources_1/bd/design_1/ipshared/cbd7/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work c_reg_fd_v12_0_6 -64 -93 \
"../../../../lab5_GuevaraNishioka.srcs/sources_1/bd/design_1/ipshared/edec/hdl/c_reg_fd_v12_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_wrapper_v3_0_4 -64 -93 \
"../../../../lab5_GuevaraNishioka.srcs/sources_1/bd/design_1/ipshared/cdbf/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \

vcom -work xbip_pipe_v3_0_6 -64 -93 \
"../../../../lab5_GuevaraNishioka.srcs/sources_1/bd/design_1/ipshared/7468/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_addsub_v3_0_6 -64 -93 \
"../../../../lab5_GuevaraNishioka.srcs/sources_1/bd/design_1/ipshared/910d/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \

vcom -work xbip_addsub_v3_0_6 -64 -93 \
"../../../../lab5_GuevaraNishioka.srcs/sources_1/bd/design_1/ipshared/cfdd/hdl/xbip_addsub_v3_0_vh_rfs.vhd" \

vcom -work c_addsub_v12_0_14 -64 -93 \
"../../../../lab5_GuevaraNishioka.srcs/sources_1/bd/design_1/ipshared/ebb8/hdl/c_addsub_v12_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_c_addsub_0_2/sim/design_1_c_addsub_0_2.vhd" \
"../../../bd/design_1/ip/design_1_mux2x1_32bit_1_0/sim/design_1_mux2x1_32bit_1_0.vhd" \
"../../../bd/design_1/sim/design_1.vhd" \

vlog -work xil_defaultlib \
"glbl.v"


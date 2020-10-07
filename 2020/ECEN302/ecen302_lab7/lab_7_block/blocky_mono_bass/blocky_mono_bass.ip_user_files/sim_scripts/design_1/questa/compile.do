vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xpm
vlib questa_lib/msim/dist_mem_gen_v8_0_13
vlib questa_lib/msim/xil_defaultlib

vmap xpm questa_lib/msim/xpm
vmap dist_mem_gen_v8_0_13 questa_lib/msim/dist_mem_gen_v8_0_13
vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xpm  -sv "+incdir+../../../../blocky_mono_bass.srcs/sources_1/bd/design_1/ipshared/8b3d" \
"C:/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm  -93 \
"C:/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work dist_mem_gen_v8_0_13  "+incdir+../../../../blocky_mono_bass.srcs/sources_1/bd/design_1/ipshared/8b3d" \
"../../../../blocky_mono_bass.srcs/sources_1/bd/design_1/ip/design_1_PWMAudio_0_0/src/dist_mem_gen_0/simulation/dist_mem_gen_v8_0.v" \

vlog -work xil_defaultlib  "+incdir+../../../../blocky_mono_bass.srcs/sources_1/bd/design_1/ipshared/8b3d" \
"../../../bd/design_1/ip/design_1_PWMAudio_0_0/src/dist_mem_gen_0/sim/dist_mem_gen_0.v" \

vcom -work xil_defaultlib  -93 \
"../../../bd/design_1/ipshared/7180/src/PWMDriver.vhd" \
"../../../bd/design_1/ipshared/7180/src/PWMAudio.vhd" \
"../../../bd/design_1/ip/design_1_PWMAudio_0_0/sim/design_1_PWMAudio_0_0.vhd" \

vlog -work xil_defaultlib  "+incdir+../../../../blocky_mono_bass.srcs/sources_1/bd/design_1/ipshared/8b3d" \
"../../../bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0_clk_wiz.v" \
"../../../bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0.v" \

vcom -work xil_defaultlib  -93 \
"../../../bd/design_1/sim/design_1.vhd" \

vlog -work xil_defaultlib \
"glbl.v"


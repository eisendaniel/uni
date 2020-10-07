vlib work
vlib riviera

vlib riviera/xpm
vlib riviera/dist_mem_gen_v8_0_13
vlib riviera/xil_defaultlib

vmap xpm riviera/xpm
vmap dist_mem_gen_v8_0_13 riviera/dist_mem_gen_v8_0_13
vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xpm  -sv2k12 "+incdir+../../../../blocky_mono_bass.srcs/sources_1/bd/design_1/ipshared/8b3d" \
"C:/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -93 \
"C:/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work dist_mem_gen_v8_0_13  -v2k5 "+incdir+../../../../blocky_mono_bass.srcs/sources_1/bd/design_1/ipshared/8b3d" \
"../../../../blocky_mono_bass.srcs/sources_1/bd/design_1/ip/design_1_PWMAudio_0_0/src/dist_mem_gen_0/simulation/dist_mem_gen_v8_0.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../blocky_mono_bass.srcs/sources_1/bd/design_1/ipshared/8b3d" \
"../../../bd/design_1/ip/design_1_PWMAudio_0_0/src/dist_mem_gen_0/sim/dist_mem_gen_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ipshared/7180/src/PWMDriver.vhd" \
"../../../bd/design_1/ipshared/7180/src/PWMAudio.vhd" \
"../../../bd/design_1/ip/design_1_PWMAudio_0_0/sim/design_1_PWMAudio_0_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../blocky_mono_bass.srcs/sources_1/bd/design_1/ipshared/8b3d" \
"../../../bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0_clk_wiz.v" \
"../../../bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/sim/design_1.vhd" \

vlog -work xil_defaultlib \
"glbl.v"


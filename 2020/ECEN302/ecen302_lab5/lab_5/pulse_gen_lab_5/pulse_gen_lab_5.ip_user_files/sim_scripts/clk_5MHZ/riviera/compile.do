vlib work
vlib riviera

vlib riviera/xpm
vlib riviera/xil_defaultlib

vmap xpm riviera/xpm
vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xpm  -sv2k12 "+incdir+../../../../pulse_gen_lab_5.srcs/sources_1/ip/clk_5MHZ" \
"C:/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -93 \
"C:/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work xil_defaultlib -93 \
"../../../../pulse_gen_lab_5.srcs/sources_1/ip/clk_5MHZ/clk_5MHZ_sim_netlist.vhdl" \


vlog -work xil_defaultlib \
"glbl.v"


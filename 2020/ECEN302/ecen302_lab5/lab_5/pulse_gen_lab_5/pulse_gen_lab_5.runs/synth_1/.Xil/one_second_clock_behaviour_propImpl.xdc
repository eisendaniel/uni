set_property SRC_FILE_INFO {cfile:h:/private/projects/ECEN302/lab_5/pulse_gen_lab_5/pulse_gen_lab_5.srcs/sources_1/ip/clk_5MHZ/clk_5MHZ/clk_5MHZ_in_context.xdc rfile:../../../pulse_gen_lab_5.srcs/sources_1/ip/clk_5MHZ/clk_5MHZ/clk_5MHZ_in_context.xdc id:1 order:EARLY scoped_inst:input_clk} [current_design]
set_property SRC_FILE_INFO {cfile:H:/private/projects/ECEN302/lab_5/pulse_gen_lab_5/pulse_gen_lab_5.srcs/constrs_1/imports/lab_5/Nexys4DDR_Master.xdc rfile:../../../pulse_gen_lab_5.srcs/constrs_1/imports/lab_5/Nexys4DDR_Master.xdc id:2} [current_design]
current_instance input_clk
set_property src_info {type:SCOPED_XDC file:1 line:1 export:INPUT save:INPUT read:READ} [current_design]
create_clock -period 10.000 [get_ports -no_traverse {}]
set_property src_info {type:SCOPED_XDC file:1 line:4 export:INPUT save:INPUT read:READ} [current_design]
create_generated_clock -source [get_ports clk_in1] -edges {1 2 3} -edge_shift {0.000 95.000 190.000} [get_ports {}]
current_instance
set_property src_info {type:XDC file:2 line:7 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN E3    IOSTANDARD LVCMOS33 } [get_ports { mclk }]; #IO_L12P_T1_MRCC_35 Sch=clk100mhz
set_property src_info {type:XDC file:2 line:13 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN J15   IOSTANDARD LVCMOS33 } [get_ports { enable }]; #IO_L24N_T3_RS0_15 Sch=sw[0]
set_property src_info {type:XDC file:2 line:33 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN H17   IOSTANDARD LVCMOS33 } [get_ports { clk_out }]; #IO_L18P_T2_A24_15 Sch=led[0]
set_property src_info {type:XDC file:2 line:48 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN V11   IOSTANDARD LVCMOS33 } [get_ports { lock }]; #IO_L21N_T3_DQS_A06_D22_14 Sch=led[15]
set_property src_info {type:XDC file:2 line:85 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN M18   IOSTANDARD LVCMOS33 } [get_ports { reset }]; #IO_L4N_T0_D05_14 Sch=btnu

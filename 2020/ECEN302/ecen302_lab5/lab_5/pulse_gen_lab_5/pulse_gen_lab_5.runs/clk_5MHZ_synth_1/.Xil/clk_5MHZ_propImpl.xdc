set_property SRC_FILE_INFO {cfile:h:/private/projects/ECEN302/lab_5/pulse_gen_lab_5/pulse_gen_lab_5.srcs/sources_1/ip/clk_5MHZ/clk_5MHZ.xdc rfile:../../../pulse_gen_lab_5.srcs/sources_1/ip/clk_5MHZ/clk_5MHZ.xdc id:1 order:EARLY scoped_inst:inst} [current_design]
current_instance inst
set_property src_info {type:SCOPED_XDC file:1 line:57 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clk_in1]] 0.1

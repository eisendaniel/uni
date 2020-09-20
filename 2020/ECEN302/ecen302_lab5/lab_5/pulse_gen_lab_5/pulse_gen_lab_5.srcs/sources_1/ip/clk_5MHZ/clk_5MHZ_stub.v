// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Thu Sep  3 10:27:19 2020
// Host        : the-churchill running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               h:/private/projects/ECEN302/lab_5/pulse_gen_lab_5/pulse_gen_lab_5.srcs/sources_1/ip/clk_5MHZ/clk_5MHZ_stub.v
// Design      : clk_5MHZ
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module clk_5MHZ(clk_out1, reset, locked, clk_in1)
/* synthesis syn_black_box black_box_pad_pin="clk_out1,reset,locked,clk_in1" */;
  output clk_out1;
  input reset;
  output locked;
  input clk_in1;
endmodule

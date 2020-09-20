-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Thu Sep  3 10:27:19 2020
-- Host        : the-churchill running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               h:/private/projects/ECEN302/lab_5/pulse_gen_lab_5/pulse_gen_lab_5.srcs/sources_1/ip/clk_5MHZ/clk_5MHZ_stub.vhdl
-- Design      : clk_5MHZ
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity clk_5MHZ is
  Port ( 
    clk_out1 : out STD_LOGIC;
    reset : in STD_LOGIC;
    locked : out STD_LOGIC;
    clk_in1 : in STD_LOGIC
  );

end clk_5MHZ;

architecture stub of clk_5MHZ is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_out1,reset,locked,clk_in1";
begin
end;

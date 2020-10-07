-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Thu Sep 17 11:05:13 2020
-- Host        : the-churchill running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub h:/private/projects/ECEN302/PWMAudio_0/PWMAudio_0_stub.vhdl
-- Design      : PWMAudio_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity PWMAudio_0 is
  Port ( 
    CLK100MHZ : in STD_LOGIC;
    AUD_PWM : out STD_LOGIC;
    AUD_SD : out STD_LOGIC;
    SW : in STD_LOGIC_VECTOR ( 8 downto 0 )
  );

end PWMAudio_0;

architecture stub of PWMAudio_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "CLK100MHZ,AUD_PWM,AUD_SD,SW[8:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "PWMAudio,Vivado 2020.1";
begin
end;

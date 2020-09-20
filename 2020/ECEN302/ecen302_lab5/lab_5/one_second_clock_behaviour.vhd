----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12.09.2019 13:30:19
-- Design Name: 
-- Module Name: one_second_clock_behaviour - Behavioural
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity one_second_clock_behaviour is
    Port ( mclk : in STD_LOGIC;
           reset : in STD_LOGIC;
           enable : in STD_LOGIC;
           clk_out : out STD_LOGIC;
           lock : out STD_LOGIC;
           segmentOut: out STD_LOGIC_VECTOR(6 downto 0);
           segmentEnable: out STD_LOGIC_VECTOR(7 downto 0));
end one_second_clock_behaviour;

architecture Behavioural of one_second_clock_behaviour is







end Behavioural;

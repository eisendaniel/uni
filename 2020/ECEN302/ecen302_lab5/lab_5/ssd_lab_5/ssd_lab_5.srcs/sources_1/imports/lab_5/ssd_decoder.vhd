----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 18.07.2019 13:44:21
-- Design Name: 
-- Module Name: ssd_decoder - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ssd_decoder is
    Port ( clk : in STD_LOGIC;
           in_0 : in STD_LOGIC_VECTOR (3 downto 0);
           in_1 : in STD_LOGIC_VECTOR(3 downto 0);
           Seg_Out : out STD_LOGIC_VECTOR (6 downto 0);
           Seg_enable : out STD_LOGIC_VECTOR(7 downto 0));
end ssd_decoder;

architecture Behavioral of ssd_decoder is

signal digit_0: std_logic_vector(6 downto 0);
signal digit_1: std_logic_vector(6 downto 0);
signal alternate: std_logic := '0';

begin

    decode : process(clk)
    begin
        if(rising_edge(clk)) then
            if(alternate = '0') then
                Seg_out <= digit_0;
                Seg_enable <= "01111111";
                alternate <= '1';
            else
                Seg_out <= digit_1;
                Seg_enable <= "10111111";
                alternate <= '0';
            end if;
        end if;
    end process;

    with in_0 select
        digit_0 <= "1111001" when "0001",
            "0100100" when "0010",
            "0110000" when "0011",
            "0011001" when "0100",
            "0010010" when "0101",
            "0000010" when "0110",
            "1111000" when "0111",
            "0000000" when "1000",
            "0010000" when "1001", 
            "0001000" when "1010",     
            "0000011" when "1011",
            "1000110" when "1100",
            "0100001" when "1101",
            "0000110" when "1110",
            "0001110" when "1111",
            "1000000" when others;
     
     with in_1 select
       digit_1 <= "1111001" when "0001",
           "0100100" when "0010",
           "0110000" when "0011",
           "0011001" when "0100",
           "0010010" when "0101",
           "0000010" when "0110",
           "1111000" when "0111",
           "0000000" when "1000",
           "0010000" when "1001", 
           "0001000" when "1010",     
           "0000011" when "1011",
           "1000110" when "1100",
           "0100001" when "1101",
           "0000110" when "1110",
           "0001110" when "1111",
           "1000000" when others;
			
			

end Behavioral;

----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 23.07.2020 10:33:44
-- Design Name: 
-- Module Name: counter - Behavioral
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
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;


-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity counter is
    Port ( clk : in std_logic ;
           direction : in std_logic;
           count_out : out std_logic_vector (3 downto 0);
           Seg_Out : out std_logic_vector (6 downto 0));
end counter;

architecture Behavioral of counter is
    signal count_int : unsigned(27 downto 0) := (others => '0');
    
    component ssd_decoder is
        port (Bin : in std_logic_vector (3 downto 0);
              Seg_out : out std_logic_vector (6 downto 0));
    end component;
        
begin
    ssd: ssd_decoder port map (
        Bin => std_logic_vector(count_int(27 downto 24)),
        Seg_Out => Seg_Out);

    process (clk)
    begin
       if clk='1' and clk'event then
          if direction='1' then
             count_int <= count_int + 1;
          else
             count_int <= count_int - 1;
          end if;
       end if;
    end process;
    
    count_out <= std_logic_vector(count_int(27 downto 24));
    
end Behavioral;

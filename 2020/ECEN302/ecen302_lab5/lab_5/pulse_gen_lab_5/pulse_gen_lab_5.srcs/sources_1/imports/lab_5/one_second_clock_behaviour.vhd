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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity one_second_clock_behaviour is
    Port ( mclk : in std_logic;
           reset : in std_logic;
           enable : in std_logic;
           clk_out : out std_logic;
           lock : out std_logic
          -- segmentOut: out std_logic_vector(6 downto 0);
          -- segmentEnable: out std_logic_vector(7 downto 0)
          );
end one_second_clock_behaviour;

architecture Behavioural of one_second_clock_behaviour is
    
    signal clk_sig : std_logic;
    signal count : unsigned(22 downto 0) := (others => '0');
    
    component clk_5MHZ 
        port (-- Clock in/out ports
          clk_in1 : in std_logic;
          clk_out1 : out std_logic;
          -- Status and control signals
          reset : in std_logic;
          locked : out std_logic
         );
    end component;

begin
    
    input_clk : clk_5MHZ
       port map ( 
          -- Clock out ports  
           clk_out1 => clk_sig,
          -- Status and control signals                
           reset => reset,
           locked => lock,
           -- Clock in ports
           clk_in1 => mclk
     );
     
    process (clk_sig)
    begin
    -- rising edge up-counter
        if clk_sig='1' and clk_sig'event then
            if reset='1' or count = 5000000 then --reset count after 1 second (5Mhz/2)
                count <= (others => '0');
            elsif enable='1' then
                count <= count + 1;
                if count < 2500000 then -- first half of count, output low
                    clk_out <= '0';
                else -- second half of count, output high
                    clk_out <= '1';
                end if;
            end if;
        end if;
    end process;

end Behavioural;

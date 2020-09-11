----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/03/2019 04:19:23 PM
-- Design Name: 
-- Module Name: FSM_Mealy1_tb - Behavioral
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

entity FSM_Mealy1_tb is
--  Port ( );
end FSM_Mealy1_tb;

architecture Behavioral of FSM_Mealy1_tb is

component FSM_Mealy1
    Port (  ain : in STD_LOGIC; 
            clk : in STD_LOGIC; 
            reset : in STD_LOGIC;
            yout : out STD_LOGIC;
            countv: out std_logic_vector(3 downto 0));
end component;

signal clock :std_logic := '0';
signal rst :std_logic := '0';
signal input :std_logic := '0';
signal output :std_logic  :='0';
signal count :std_logic_vector(3 downto 0); 
constant clk_period : time := 10ns;


begin

uut: FSM_Mealy1 PORT MAP (
    clk => clock,
    reset => rst,
    ain => input,
    yout => output,
    countv => count
);

process 
begin
    rst <= '1';
    wait for 20ns;
    rst <= '0';
    wait for 20ns;
    input <= '1';
    wait for 20ns;
    input <= '0';
    wait for 60ns;
    input <= '1';
    wait for 40ns;
    input <= '0';
    wait for 20ns;
    input <= '1';
    wait for 60ns;
    rst <= '1';
    wait for 20ns;
    rst <= '0';
    wait;
end process;

clock <= not clock after clk_period;

end Behavioral;

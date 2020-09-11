library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FSM_moore_TB is
--  Port ( );
end FSM_moore_TB;

architecture Behavioral of FSM_moore_TB is

component FSM_Moore 
    Port ( 
        clk : in std_logic;
        reset : in std_logic;
        ain : in std_logic_vector (1 downto 0);
        yout : out std_logic);
end component;

signal clock :std_logic := '0';
signal rst :std_logic := '0';
signal input :std_logic_vector (1 downto 0) := "00";
signal output :std_logic  :='0';
constant clk_period : time := 5ns;

begin

uut: FSM_Moore PORT MAP (
    clk => clock,
    reset => rst,
    ain => input,
    yout => output
);

process begin
    rst <= '1';
    wait for 20ns;
    rst <= '0';
    wait for 20ns;
    input <= "11";
    wait for 10ns;
    input <= "10";
    wait for 10ns;
    input <= "00";
    wait for 20ns;
    input <= "10";
    wait for 10ns;
    input <= "00";
    wait for 10ns;
    input <= "11";
    wait for 10ns;
    input <= "00";
    wait for 10ns;
    input <= "01";
    wait for 10ns;
    input <= "00";
    wait for 10ns;
    input <= "10";
    wait for 10ns;
    input <= "11";
    wait for 10ns;
    input <= "00";
    wait for 20ns;
end process;

clock <= not clock after clk_period;

end Behavioral;

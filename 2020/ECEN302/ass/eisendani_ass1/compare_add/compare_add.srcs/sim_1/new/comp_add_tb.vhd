
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity comp_add_tb is
--  Port ( );
end comp_add_tb;

architecture Behavioral of comp_add_tb is

component comp_add
    port(
        a : in unsigned(2 downto 0);
        b : in unsigned(2 downto 0);
        comp : out std_logic;
        sum : out unsigned(3 downto 0)
        );
end component;        

signal a_in : unsigned(2 downto 0) := (others => '0');
signal b_in : unsigned(2 downto 0) := (others => '0');

signal comp_sig : std_logic  := '0';
signal sum_sig : unsigned(3 downto 0) := (others => '0');

begin

ca0: comp_add port map (
    a => a_in,
    b => b_in,
    comp => comp_sig,
    sum => sum_sig
);

process begin
    a_in <= "001";
    b_in <= "101";
    wait for 100 ns;  
    a_in <= "010";
    wait for 100 ns;
    a_in <= "101";
    wait for 100 ns;
    b_in <= "111";
    wait for 100 ns;
end process; 

end Behavioral;

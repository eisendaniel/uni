library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux_2bit_2_1 is
    Port ( x : in std_logic_vector (1 downto 0);
           y : in std_logic_vector(1 downto 0);
           s : in std_logic;
           m : out std_logic_vector (1 downto 0));
end mux_2bit_2_1;

architecture Behavioral of mux_2bit_2_1 is

begin
    m(0) <= (x(0) and (not s)) or (y(0) and s);
    m(1) <= (x(1) and (not s)) or (y(1) and s);
end Behavioral;

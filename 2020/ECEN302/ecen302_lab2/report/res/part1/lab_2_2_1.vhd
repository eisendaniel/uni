library IEEE;
use IEEE.std_logic_1164.all;

entity lab_2_1_1 is
    Port ( x : in std_logic;
           y : in std_logic;
           s : in std_logic;
           m : out std_logic);
end lab_2_1_1;

architecture Behavioral of lab_2_1_1 is

begin
    m <= (x and (not s)) or (s and y);
end Behavioral;
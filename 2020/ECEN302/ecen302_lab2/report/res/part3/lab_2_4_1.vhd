library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity lab_2_4_1 is
    Port ( x : in std_logic;
           y : in std_logic;
           s : in std_logic;
           m : out std_logic);
end lab_2_4_1;

architecture Behavioral of lab_2_4_1 is
begin

mux_2_1 : process (x,y,s)
    begin
        if(s='0') then
            m <= y;
        else
            m <= x;
        end if;
    end process ;
end Behavioral;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity lab_2_4_2 is
    Port ( x : in std_logic_vector (1 downto 0);
           y : in std_logic_vector (1 downto 0);
           s : in std_logic;
           m : out std_logic_vector (1 downto 0));
end lab_2_4_2;

architecture Behavioral of lab_2_4_2 is

begin
    process (x,y,s)
        begin
            if (s='0') then
                m <= x;
            else
                m <= y;
            end if;
    end process;        
           
end Behavioral;

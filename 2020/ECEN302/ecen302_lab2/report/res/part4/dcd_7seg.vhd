library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity dcd_7seg is
    Port ( x : in STD_LOGIC_VECTOR (3 downto 0);
           an : out STD_LOGIC_VECTOR (7 downto 0);
           seg : out STD_LOGIC_VECTOR (6 downto 0));
end dcd_7seg;

architecture Behavioral of dcd_7seg is

begin
    
    an <= "01111111";

    with x select
         seg <= "1111001" when "0001", --1
                    "0100100" when "0010", --2
                    "0110000" when "0011", --3
                    "0011001" when "0100", --4
                    "0010010" when "0101", --5
                    "0000010" when "0110", --6
                    "1111000" when "0111", --7 
                    "0000000" when "1000", --8
                    "0010000" when "1001", --9
                    "0001000" when "1010", --a
                    "0000011" when "1011", --b
                    "1000110" when "1100", --c
                    "0100001" when "1101", --d
                    "0000110" when "1110", --e
                    "0001110" when "1111", --f
                    "1000000" when others; --0
end Behavioral;

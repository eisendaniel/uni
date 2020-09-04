library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity comp_add is
    port(  
        a : in unsigned(2 downto 0);
        b : in unsigned(2 downto 0);
        comp : out std_logic;
        sum : out unsigned(3 downto 0)
        );
end comp_add;

architecture Behavioral of comp_add is

begin

process (a,b) begin
    if (a = b) then
        comp <= '1';
    else
        comp <= '0';
    end if;
    
    sum <= ('0' & a) + ('0' & b);
end process;

end Behavioral;

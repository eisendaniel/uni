library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity PWMDriver is
    Port ( clk_100 : in STD_LOGIC;
           pwm_level : in STD_LOGIC_VECTOR (9 downto 0);
           pwm_out : out STD_LOGIC);
end PWMDriver;

architecture Behavioral of PWMDriver is

signal count : unsigned(9 downto 0) := (others => '0');
signal compare : unsigned(9 downto 0) := (others => '0');

begin

process(clk_100)
begin
    if rising_edge(clk_100) then
        if count = 0 then
            compare <= unsigned(pwm_level);
            count <= count + 1;
        elsif count = 1023 then
            count <= (others => '0');
        else
            count <= count + 1;
            if count < compare then
                pwm_out <= '1';
            else
                pwm_out <= '0';
            end if;
        end if;
    end if;
end process;

end Behavioral;

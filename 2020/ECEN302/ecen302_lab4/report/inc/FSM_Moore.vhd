library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FSM_Moore is
    Port ( 
        clk : in std_logic;
        reset : in std_logic;
        ain : in std_logic_vector (1 downto 0);
        yout : out std_logic);
end FSM_Moore;

architecture Behavioral of FSM_Moore is

type state_type is (S0, S1, S2, S3);
signal state, next_state : state_type;

begin


SYNC_PROC : process (clk)
begin
    if rising_edge(clk) then
        if (reset = '1') then
            state <= S0;
        else
            state <= next_state;
        end if;
    end if;    
end process; 

NEXT_STATE_DECODE : process (state, ain)
begin
    next_state <= S0;
    case (state) is 
        when S0 =>
            if (ain = "10" or ain = "11") then
                next_state <= S1;
            else
                next_state <= state;
            end if;   
        when S1 =>
            if (ain = "00") then
                next_state <= S2;
            elsif (ain = "01") then 
                next_state <= S0;
            else
                next_state <= state;
            end if;  
        when S2 =>
            if (ain = "10" or ain = "01") then
                next_state <= S3;
            else
                next_state <= state;
            end if;
        when S3 =>
            if (ain = "11") then
                next_state <= S2;
            elsif (ain = "00") then
                next_state <= S0;
            else
                next_state <= state;
            end if;
    end case;
end process; 
    
OUTPUT_DECODE : process (state) 
begin
    case (state) is
        when S0 =>
            yout <= '0';
        when S1 =>
            yout <= '0';
        when S2 =>
            yout <= '1';
        when S3 =>
            yout <= '1';               
        end case;  
end process;

end Behavioral;

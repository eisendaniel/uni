library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;

entity FSM_Mealy1 is
    Port (  ain : in STD_LOGIC; 
            clk : in STD_LOGIC; 
            reset : in STD_LOGIC;
            yout : out STD_LOGIC;
            countv: out std_logic_vector(3 downto 0)); 
end FSM_Mealy1;

architecture Behavioral of FSM_Mealy1 is

type state_type is (S0, S1, S2);
signal state, next_state : state_type;
signal count : unsigned(3 downto 0) := (others => '0');

begin

SYNC_PROC : process (clk)
begin
    if rising_edge(clk) then 
            if (reset = '1') then
                  state <= S0;
                  count <= "0000";
            else
                  state <= next_state;
            end if;
            if (ain = '1') then
                count <= count+1;
            end if;
      end if;
end process;

OUTPUT_DECODE : process (state, ain)
begin 
    yout <= '0';
    case (state) is 
        when S0 => 
            if (ain = '1') then
                yout <= '1';
            end if; 
        when others =>
            yout <= '0';
    end case;
end process;

NEXT_STATE_DECODE : process (state, ain) 
begin
    next_state <= state;
    case (state) is
        when S0 =>
            if (ain = '1') then 
                next_state <= S1;
            end if;    
        when S1 =>
            if (ain = '1') then 
                next_state <= S2;
            end if;   
        when S2 =>
            if (ain = '1') then 
                next_state <= S0;
            end if;                           
    end case;
end process;
countv <= std_logic_vector(count(3 downto 0));
end Behavioral;

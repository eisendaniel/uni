library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux_3_to_1 is
    Port ( u : in std_logic_vector (1 downto 0);
           v : in std_logic_vector (1 downto 0);
           w : in std_logic_vector (1 downto 0);
           s0 : in std_logic;
           s1 : in std_logic;
           m : out std_logic_vector (1 downto 0)); 
end mux_3_to_1;

architecture Behavioral of mux_3_to_1 is

    signal m_int : std_logic_vector (1 downto 0);
    
    component mux_2bit_2_1
        port ( x, y: in std_logic_vector (1 downto 0);
           s : in std_logic;
           m : out std_logic_vector (1 downto 0));
    end component; 

begin
    
    mux0 : mux_2bit_2_1
        port map(
            x => u,
            y => v,
            s => s0,
            m => m_int);
            
    mux1 : mux_2bit_2_1
        port map(
            x => m_int,
            y => w,
            s => s1,
            m => m);

end Behavioral;

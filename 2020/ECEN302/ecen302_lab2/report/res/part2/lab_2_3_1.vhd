library IEEE;
use IEEE.std_logic_1164.all;

entity lab_2_3_1 is
    Port ( x : in std_logic_vector (1 downto 0);
           y : in std_logic_vector (1 downto 0);
           s : in std_logic;
           m : out std_logic_vector (1 downto 0));
end lab_2_3_1;

architecture Behavioral of lab_2_3_1 is
    
    signal not_sig : std_logic;
    signal and_sig : std_logic_vector (3 downto 0);
    
    -- 2 input and gate
    component and2
        port(
            i0, i1 : in std_logic;
            o : out std_logic); 
    end component; 
    
    -- 2 input OR gate
    component or2 
        port(
            i0, i1 : in std_logic;
            o : out std_logic);
    end component;
    
    -- 1 inpput NOT gate
    component inv
        port(
            i : in std_logic ;
            o : out std_logic );
    end component;
    
begin

    not_comp : inv
        port map(
            i => s,
            o => not_sig);
    
    and_comp0 : and2
        port map(
            i0 => x(0),
            i1 => not_sig,
            o => and_sig(0));
            
    and_comp1 : and2
        port map(
            i0 => x(1),
            i1 => not_sig,
            o => and_sig(1));
            
    and_comp2 : and2
        port map(
            i0 => y(0),
            i1 => s,
            o => and_sig(2));
               
    and_comp3 : and2
        port map(
            i0 => y(1),
            i1 => s,
            o => and_sig(3));
            
    or_comp0 : or2
        port map(
            i0 => and_sig(0),
            i1 => and_sig(2),
            o => m(0));
             
    or_comp1 : or2
        port map(
            i0 => and_sig(1),
            i1 => and_sig(3),
            o => m(1));   
                     
end Behavioral;

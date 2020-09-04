--------------------------------------------
-- Module Name: calc_even_parity_procedure
--------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

library UNISIM;
use UNISIM.VComponents.all;

Entity calc_even_parity_procedure  Is Port (
	Signal ain : in STD_LOGIC_VECTOR (7 downto 0);
	Signal parity : out STD_LOGIC
);
end calc_even_parity_procedure ;

Architecture behavior of calc_even_parity_procedure Is

procedure calc_even_parity
   (signal input : in std_logic_vector(7 downto 0);
    signal is_par : out std_logic) is
begin
  is_par <= (((input(0))XNOR(input(1)))XNOR((input(2))XNOR(input(3))))XOR(((input(4))XNOR(input(5)))XNOR((input(6))XNOR(input(7))));
end calc_even_parity;

begin

calc_even_parity(ain, parity);

end behavior;
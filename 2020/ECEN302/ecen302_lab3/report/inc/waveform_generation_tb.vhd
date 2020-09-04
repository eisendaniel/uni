--------------------------------------------
-- Module Name: waveform_generation_tb
--------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library UNISIM;
use UNISIM.VComponents.all;

Entity waveform_generation_tb Is
end waveform_generation_tb;

Architecture behavior of waveform_generation_tb Is	
	Signal a : STD_LOGIC := '0';	
	Signal g1 : STD_LOGIC := '0';	
	Signal g2 : STD_LOGIC := '1';	
		
begin
	process
	  begin
	  
        wait for 40ns; a <= not a;
        wait for 20ns; g1 <= not g1; 
        wait for 20ns; g2 <= not g2; 
        wait for 20ns; a <= not a;
        wait for 20ns; g1 <= not g1; 
        wait for 20ns; g2 <= not g2;
    end process;
end behavior;
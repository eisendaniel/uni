--------------------------------------------
-- Module Name: calc_ones_function
--------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

library UNISIM;
use UNISIM.VComponents.all;

Entity calc_ones_function  Is Port (
	Signal ain : in STD_LOGIC_VECTOR (7 downto 0);
	Signal number_of_ones : out STD_LOGIC_VECTOR (2 downto 0)
);
end calc_ones_function ;

Architecture behavior of calc_ones_function  is

		function add_two_values (
		    signal input : std_logic_vector (7 downto 0))
        return std_logic_vector is
            variable count : std_logic_vector(2 downto 0)  := "000";
        begin
            for i in 0 to 7 loop
               if input(i)='1' then
                   count := count+1;
               end if;           
            end loop;
        return count;
        end add_two_values;
        
 begin
 
 number_of_ones <= add_two_values(ain);
      
end behavior;
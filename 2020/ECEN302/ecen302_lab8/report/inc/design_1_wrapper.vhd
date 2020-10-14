library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;

entity design_1_wrapper is
  port (
    AUD_PWM : out STD_LOGIC;
    AUD_SD : out STD_LOGIC;
    SW : in STD_LOGIC_VECTOR ( 8 downto 0 );
    reset : in STD_LOGIC;
    sys_clock : in STD_LOGIC
  );
end design_1_wrapper;

architecture STRUCTURE of design_1_wrapper is
  component design_1 is
  port (
    sys_clock : in STD_LOGIC;
    reset : in STD_LOGIC;
    AUD_PWM : out STD_LOGIC;
    AUD_SD : out STD_LOGIC;
    SW : in STD_LOGIC_VECTOR ( 8 downto 0 )
  );
  end component design_1;
begin
design_1_i: component design_1
     port map (
      AUD_PWM => AUD_PWM,
      AUD_SD => AUD_SD,
      SW(8 downto 0) => SW(8 downto 0),
      reset => reset,
      sys_clock => sys_clock
    );
end STRUCTURE;

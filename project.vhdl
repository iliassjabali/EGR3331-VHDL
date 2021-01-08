library ieee;
use ieee.std_logic_1164.all;

entity controllerEntity is

    port(
      SF, SD, L1, L2 : in std_logic; -- Floor Sensor, Door Sensor, Level1, Level2
      En1, Dir1, En2, Dir2: out std_logic); -- Engine and Direction 1, Engine and Direction 2
    
end controllerEntity;

architecture controllerArchitecture of controllerEntity is

begin

-- En1 = SF'SD'L1'L2 + SFSD'L1L2'
En1 <=  ( ( not SF ) and ( not SD ) and ( not L1 ) and L2 ) 
        or ( SF and ( not SD ) and L1 and ( not L2 ) );

-- Dir1 = SF'
Dir1 <= ( not SF );

-- En2 = SF'SD'L1L2' + SF'SDL1'L2 + SFSD'L1'L2 + SFSDL1L2'
En2 <= ( ( not SF ) and ( not SD ) and L1 and ( not L2 ) ) 
        or ( ( not SF ) and SD and ( not L1 ) and L2 ) 
        or ( SF and ( not SD ) and ( not L1 ) and L2 ) 
        or ( SF and SD and L1 and ( not L2 ) );
      
-- Dir2 = SD'
Dir2 <= ( not SD );

end controllerArchitecture;
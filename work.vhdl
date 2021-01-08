-- Iliass Jabali;
-- EGR 3331,

library ieee
use ieee.std_logic_1164.all;

entity quiz5 is
    port( A,B,C,D,E,F:in std_logic;
    Y:out std_logic);
end quiz5;

-- Y = A’BCD + ABE’F’+ C’DEF
architecture function OF quiz5 IS
    BEGIN
    Y <=( (NOT A) AND B AND C AND D)  -- A’BCD
        OR ( A AND B AND (NOT E) AND (NOT F)) -- ABE’F’
        OR ((not C) AND D AND E AND F); -- C’DEF
END function;

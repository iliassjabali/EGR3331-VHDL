library ieee;
use ieee.std_logic_1164.all;

entity majconc is
port ( A, B, C : in std_logic;
Y: out std_logic );
end majconc;
ARCHITECTURE a of majconc is begin
Y <= (A and B) or (A and C) or (B and C); 
end a;

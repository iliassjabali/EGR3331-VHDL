library ieee;
use ieee.std_logic_1164.all;

library ieee;
use ieee.std_logic_1164.all;

entity testsim is

entity problem4 is
        port (X, Y: in bit_vector(3 downto 0);
        A: in bit;
        Z: out bit_vector(3 downto 0)); 
end problem4;

architecture equations of problem4 is begin
        Z <= X when A = ‘0‘ else Y; 
end equations;
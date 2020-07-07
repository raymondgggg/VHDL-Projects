
-- Example of Behavioral VHDL.
-- Describing a logic circuit using
-- a Boolean expression.

library ieee;
use ieee.std_logic_1164.all;

entity logic_circuit_F1 is
port( A,B,C : in STD_LOGIC;
        F : out STD_LOGIC );
end logic_circuit_F1;

architecture bool_exp of logic_circuit_F1 is
begin
    F <= ( A and B ) or ( not (A) and C ) or
    ( A and not (B) and not (C) );
end bool_exp;

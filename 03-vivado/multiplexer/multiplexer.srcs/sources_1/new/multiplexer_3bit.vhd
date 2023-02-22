------------------------------------------------------------
--
-- Example of 2-bit binary comparator using the when/else
-- assignments.
-- EDA Playground
--
-- Copyright (c) 2020 Tomas Fryza
-- Dept. of Radio Electronics, Brno Univ. of Technology, Czechia
-- This work is licensed under the terms of the MIT license.
--
------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

------------------------------------------------------------
-- Entity declaration for 2-bit binary comparator
------------------------------------------------------------
entity comparator_4bit is
    port(
        b_i           : in  std_logic_vector(3 - 1 downto 0);
        a_i           : in  std_logic_vector(3 - 1 downto 0);
        c_i           : in  std_logic_vector(3 - 1 downto 0);
        d_i           : in  std_logic_vector(3 - 1 downto 0);
        sel_i1           : in  std_logic_vector(2 - 1 downto 0);   
        fo_i              : out std_logic    

    );
end entity comparator_4bit;

------------------------------------------------------------
-- Architecture body for 2-bit binary comparator
------------------------------------------------------------
architecture Behavioral of comparator_4bit is
begin
with sel_i1 select
    fo_i <= a_i when "00",
           b_i when "01",
           c_i when "10",
           d_i when others

end architecture Behavioral;

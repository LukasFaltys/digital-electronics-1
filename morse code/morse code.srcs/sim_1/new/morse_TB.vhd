------------------------------------------------------------
--
-- Testbench for 7-segment display decoder.
-- Nexys A7-50T, xc7a50ticsg324-1L
-- TerosHDL, Vivado v2020.2
--
-- Copyright (c) 2020 Tomas Fryza
-- Dept. of Radio Electronics, Brno Univ. of Technology, Czechia
-- This work is licensed under the terms of the MIT license.
--
------------------------------------------------------------

library ieee;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all; -- Definition of "to_unsigned"

------------------------------------------------------------
-- Entity declaration for testbench
------------------------------------------------------------

entity tb_hex_7seg is
-- Entity of testbench is always empty
end entity tb_hex_7seg;

------------------------------------------------------------
-- Architecture body for testbench
------------------------------------------------------------

architecture testbench of tb_hex_7seg is

  -- Testbench local signals
    signal clk      : std_logic := '0';
    signal button1  : std_logic := '0';
    signal button2  : std_logic := '0';
    signal morse_out: std_logic := '0';

begin

  -- Connecting testbench signals with decoder entity
  -- (Unit Under Test)
  uut_morse_try : entity work.morse_try
    port map (
      carka => button2,
      tecka => button1

    );

  --------------------------------------------------------
  -- Data generation process
  --------------------------------------------------------
  process
    begin
        while now < 1000 ns loop
            clk <= '0';
            wait for 10 ns;
            clk <= '1';
            wait for 10 ns;
        end loop;
        wait;
    end process;

    -- Stavy pro testov�n� jednotliv�ch Morseov�ch k�d?
    process
    begin
        -- Testov�n� te?ky
        button1 <= '1';
        wait for 20 ns;
        button1 <= '0';
        wait for 40 ns;
       
        -- Testov�n� mezery
        wait for 200 ns;
       
        -- Testov�n� ?�rky
        button2 <= '1';
        wait for 60 ns;
        button2 <= '0';
        wait for 40 ns;
       
        -- Testov�n� mezery
        wait for 200 ns;
       
        -- Testov�n� te?ky a ?�rky
        button1 <= '1';
        wait for 20 ns;
        button1 <= '0';
        wait for 40 ns;
        button2 <= '1';
        wait for 60 ns;
        button2 <= '0';
        wait for 40 ns;
       
        -- Testov�n� mezery
        wait for 200 ns;
       
        -- Testov�n� t?et�ho tla?�tka (odesl�n� Morseova k�du)
        button1 <= '1';
        wait for 20 ns;
        button1 <= '0';
        wait for 40 ns;
        button2 <= '1';
        wait for 60 ns;
        button2 <= '0';
        wait for 40 ns;
        button1 <= '1';
        wait for 20 ns;
        button1 <= '0';
        wait for 40 ns;
       
        -- Testov�n� mezery
        wait for 200 ns;
       
        -- Testov�n� ?tvrt�ho tla?�tka (reset)
        button1 <= '1';
        wait for 20 ns;
        button1 <= '0';
        wait for 40 ns;
      end process;
end architecture;
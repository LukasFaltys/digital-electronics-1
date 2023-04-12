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
  signal sig_dot : std_logic;
  signal sig_line   : std_logic;
  signal sig_res   : std_logic;
  signal sig_send   : std_logic;

begin

  -- Connecting testbench signals with decoder entity
  -- (Unit Under Test)
  uut_morse_try : entity work.morse_try
    port map (
      carka => sig_line,
      tecka   => sig_dot,
      reset   => sig_res,
      send   => sig_send
    );

  --------------------------------------------------------
  -- Data generation process
  --------------------------------------------------------
  p_stimulus : process is
  begin

    sig_dot <= '0';
    wait for 200 ns;

    -- Reset activated
    sig_dot <= '1';
    wait for 300 ns;


    sig_line <= '0';
    wait for 300 ns;

    -- Reset activated
    sig_line <= '1';
    wait for 500 ns;


  end process p_stimulus;

end architecture testbench;

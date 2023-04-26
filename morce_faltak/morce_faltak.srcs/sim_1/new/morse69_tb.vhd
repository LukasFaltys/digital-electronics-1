library ieee;
use ieee.std_logic_1164.all;

entity morse_transmitter_tb is
end entity;

architecture testbench of morse_transmitter_tb is

    signal clk      : std_logic := '0';
    signal button1  : std_logic := '0';
    signal button2  : std_logic := '0';
    signal morse_out: std_logic := '0';

    component morse_transmitter is
        port (
            clk       : in  std_logic;
            button1   : in  std_logic;
            button2   : in  std_logic;
            morse_out : out std_logic
        );
    end component;

begin

    -- P?ipojení testovaného modulu
    UUT : morse_transmitter
    port map (
        clk       => clk,
        button1   => button1,
        button2   => button2,
        morse_out => morse_out
    );

    -- Generátor hodinového signálu
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

    -- Stavy pro testování jednotlivých Morseových kód?
    process
    begin
        -- Testování te?ky
        button1 <= '1';
        wait for 20 ns;
        button1 <= '0';
        wait for 40 ns;
       
        -- Testování mezery
        wait for 200 ns;
       
        -- Testování ?árky
        button2 <= '1';
        wait for 60 ns;
        button2 <= '0';
        wait for 40 ns;
       
        -- Testování mezery
        wait for 200 ns;
       
        -- Testování te?ky a ?árky
        button1 <= '1';
        wait for 20 ns;
        button1 <= '0';
        wait for 40 ns;
        button2 <= '1';
        wait for 60 ns;
        button2 <= '0';
        wait for 40 ns;
       
        -- Testování mezery
        wait for 200 ns;
       
        -- Testování t?etího tla?ítka (odeslání Morseova kódu)
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
       
        -- Testování mezery
        wait for 200 ns;
       
        -- Testování ?tvrtého tla?ítka (reset)
        button1 <= '1';
        wait for 20 ns;
        button1 <= '0';
        wait for 40 ns;
      end process;
end architecture;
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

    -- P?ipojen� testovan�ho modulu
    UUT : morse_transmitter
    port map (
        clk       => clk,
        button1   => button1,
        button2   => button2,
        morse_out => morse_out
    );

    -- Gener�tor hodinov�ho sign�lu
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
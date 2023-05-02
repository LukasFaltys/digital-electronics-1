library ieee;
use ieee.std_logic_1164.all;

entity morse_decoder_tb is
end entity morse_decoder_tb;

architecture testbench of morse_decoder_tb is
    signal signal_in : std_logic := '0';
begin
    uut : entity work.morse_decoder
        port map (
            signal_in => signal_in

        );

    stim_proc : process
    begin


        signal_in <= '0';
        wait for 3000 ms;

        signal_in <= '1';
        wait for 2000 ms;

        signal_in <= '0';
        wait for 6000 ms;

        signal_in <= '1';
        wait for 2000 ms;

        signal_in <= '0';
        wait for 6000 ms;

        signal_in <= '1';
        wait for 4000 ms;
        
        signal_in <= '0';
        wait for 6000 ms;
        
        signal_in <= '1';
        wait for 2000 ms;
        
        signal_in <= '0';

        wait;
    end process;
end architecture testbench;

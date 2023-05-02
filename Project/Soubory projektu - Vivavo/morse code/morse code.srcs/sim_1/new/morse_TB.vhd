
library ieee;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all; -- Definition of "to_unsigned"


entity tb_hex_7seg is
-- Entity of testbench is always empty
end entity tb_hex_7seg;

------------------------------------------------------------
-- Architecture body for testbench
------------------------------------------------------------

architecture testbench of tb_hex_7seg is

  -- Testbench local signals

    signal button1  : std_logic := '0';
    signal button2  : std_logic := '0';
    signal button3  : std_logic := '0';
    signal button4  : std_logic := '0';
    signal button5  : std_logic := '0';
    signal button6  : std_logic := '0';
    signal button7  : std_logic := '0';
    signal button8  : std_logic := '0';
    signal button9  : std_logic := '0';
    signal button10  : std_logic := '0';
    signal send1  : std_logic := '0';
    signal reset1 : std_logic := '0';



begin

  -- Connecting testbench signals with decoder entity
  -- (Unit Under Test)
  uut_morse_try : entity work.morse_try
    port map (
      btn1 => button1,
      btn2 => button2,
      btn3 => button3,
      btn4 => button4,
      btn5 => button5,
      btn6 => button6,
      btn7 => button7,
      btn8 => button8,
      btn9 => button9,
      btn10 => button10,
      send=>send1,
      reset=>reset1

    );

  --------------------------------------------------------
  -- Data generation process
  --------------------------------------------------------

    process
    begin
        wait for 10000 ms;
        button1 <= '1';
        button2 <= '1';
        
        button3 <= '1';        
        button4 <= '1';
        
        button5 <= '0';        
        button6 <= '1';
        
        button7 <= '0';
        button8 <= '1';
        
       -- button9 <= '1';
       -- button10 <= '1';
        wait for 20000 ms;
        send1<='1';
        wait for 20000 ms;
        send1<='0';
        wait for 25000 ms;
        reset1<= '1';
        wait for 100 ms;
        reset1 <= '0';
        
        button1 <= '0';
        button2 <= '0';
        
        button3 <= '0';        
        button4 <= '0';
        
        button5 <= '0';        
        button6 <= '0';
        
        button7 <= '0';        
        button8 <= '0';
        
        wait for 70000 ms;
        button1 <= '0';
        button2 <= '1';
        
        button3 <= '1';        
        button4 <= '1';
        wait for 20000 ms;
        send1<='1';
        wait for 20000 ms;
        send1<='0';
        wait for 50000 ms;
        button1 <= '0';
        button2 <= '0';
        
        button3 <= '0';        
        button4 <= '0';
        reset1<= '1';
        wait for 100 ms;
        reset1 <= '0';

       -- button5 <= '0';
       -- button6 <= '0';
        
      --  button7 <= '0';
      --  button8 <= '0';
        
      --  button9 <= '0';
       -- button10 <= '0';
 

        
        
       

      end process;

end architecture;
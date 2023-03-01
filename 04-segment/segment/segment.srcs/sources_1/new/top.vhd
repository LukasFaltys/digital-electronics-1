----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/01/2023 12:00:55 PM
-- Design Name: 
-- Module Name: top - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity top is
port(
        BTNC  :  in    std_logic;
        SW  :  in    std_logic_vector(3 downto 0);
        CA  :  out    std_logic;
        CB  :  out    std_logic;
        CC  :  out    std_logic;
        CD  :  out    std_logic;
        CE  :  out   std_logic;
        CF  :  out    std_logic;
        CG  :  out    std_logic;
        AN  : out std_logic_vector(7 downto 0);
        LED  :  out std_logic_vector(7 downto 0));
end top;

------------------------------------------------------------
-- Architecture body for top level
------------------------------------------------------------

architecture behavioral of top is

begin

  --------------------------------------------------------------------
  -- Instance (copy) of hex_7seg entity
  --------------------------------------------------------------------

  hex2seg : entity work.hex_7seg
    port map (
      blank  => BTNC,
      hex    => SW,
      seg(6) => CA,
      seg(5) => CB,
      seg(4) => CC,
      seg(3) => CD,
      seg(2) => CE,
      seg(1) => CF,
      seg(0) => CG
    );

  -- Connect one common anode to 3.3V
  AN <= b"1111_0111";

  -- Display input value on LEDs
  LED(3 downto 0) <= SW;
  LED(7 downto 4) <="0000";
--------------------------------------------------------------------
-- Experiments on your own: LED(7:4) indicators

-- Turn LED(4) on if input value is equal to 0, ie "0000"
-- LED(4) <= WRITE YOUR CODE HERE

-- Turn LED(5) on if input value is greater than "1001", ie 10, 11, 12, ...
-- LED(5) <= WRITE YOUR CODE HERE

-- Turn LED(6) on if input value is odd, ie 1, 3, 5, ...
-- LED(6) <= WRITE YOUR CODE HERE

-- Turn LED(7) on if input value is a power of two, ie 1, 2, 4, or 8
-- LED(7) <= WRITE YOUR CODE HERE

end architecture behavioral;

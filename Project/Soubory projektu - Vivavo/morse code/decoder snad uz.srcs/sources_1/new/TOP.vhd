library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity top is
  port(
    CA    : out std_logic;
    CB    : out std_logic;
    CC    : out std_logic;    
    CD    : out std_logic;
    CE    : out std_logic;
    CF    : out std_logic;
    CG    : out std_logic;
    DP    : out std_logic;
    AN    : out std_logic_vector(4 downto 0);  
    JA    : in std_logic_vector(1 downto 0)
  );
end top;

architecture behavioral of top is
begin
  hex2seg: entity work.morse_decoder
    port map (
      signal_in => JA(1),
      
      seg1(7) => DP,
      seg1(6) => CA,
      seg1(5) => CB,
      seg1(4) => CC,
      seg1(3) => CD,
      seg1(2) => CE,
      seg1(1) => CF,
      seg1(0) => CG,
      
      
      
      position(0) => AN(0),
      position(1) => AN(1),
      position(2) => AN(2),
      position(3)=> AN(3)


      
      
      
    );
end architecture behavioral;

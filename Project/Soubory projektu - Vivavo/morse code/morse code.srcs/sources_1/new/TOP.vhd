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
    SW    :in std_logic_vector(9 downto 0);
    BTNC  :in std_logic;
    BTNU  :in std_logic;   
    JA    : out std_logic_vector(1 downto 0)
  );
end top;

architecture behavioral of top is
begin
  hex2seg: entity work.morse_try
    port map (
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
      position(3)=> AN(3),


      
      btn1=>SW(0),
      btn2=>SW(1),
      btn3=>SW(2),
      btn4=>SW(3),
      btn5=>SW(4),
      btn6=>SW(5),
      btn7=>SW(6),
      btn8=>SW(7),
      btn9=>SW(8),
      btn10=>SW(9),
      
      send=>BTNC,
      reset=>BTNU,
      sendout=>JA(1)
      
    );
end architecture behavioral;

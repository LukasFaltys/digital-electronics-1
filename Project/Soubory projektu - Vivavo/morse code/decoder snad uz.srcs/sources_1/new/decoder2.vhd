library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity morse_decoder is
    port (
     signal_in : in std_logic;
     seg1: out STD_LOGIC_vector(7 downto 0):= (others => '0');
     position: out std_logic_vector(3 downto 0):= (others => '0')

    );
end entity morse_decoder;

architecture behavioral of morse_decoder is
    signal dot1 : std_logic := '0';
    signal dot2 : std_logic := '0';
    signal dot3 : std_logic := '0';
    signal dot4 : std_logic := '0';
    
    signal dash1 : std_logic := '0';
    signal dash2 : std_logic := '0';
    signal dash3 : std_logic := '0';
    signal dash4 : std_logic := '0';
    
  
    
    signal position1 : std_logic := '0';
    signal position2 : std_logic := '0';
    signal position3 : std_logic := '0';
    signal position4 : std_logic := '0';
begin
    process (signal_in)
    variable start_time: time := 0 ns;
    variable end_time: time := 0 ns;
begin
    if signal_in = '1' then
        start_time := now;
    elsif signal_in = '0' then
        end_time := now;
        
        
        
        if (end_time - start_time) >= 4000 ms and position1 = '0' and position2 = '0' and position3 = '0' and position4 = '0' then
            dash1 <= '1';
            position1 <= '1';
            start_time := 0 ns;
            end_time := 0 ns;
        end if;
        
        if (end_time - start_time) >= 2000 ms and position1 = '0' and position2 = '0' and position3 = '0' and position4 = '0' then
            dot1 <= '1';
            position1 <= '1';
            start_time := 0 ns;
            end_time := 0 ns;
        end if;
        
        if (end_time - start_time) >= 4000 ms and position1 = '1' and position2 = '0' and position3 = '0' and position4 = '0' then
            dash2 <= '1';
            position2 <= '1';
            start_time := 0 ns;
            end_time := 0 ns;
        end if;
        
        if (end_time - start_time) >= 2000 ms and position1 = '1' and position2 = '0' and position3 = '0' and position4 = '0' then
            dot2 <= '1';
            position2 <= '1';
            start_time := 0 ns;
            end_time := 0 ns;
        end if;
        
        if (end_time - start_time) >= 4000 ms and position1 = '1' and position2 = '1' and position3 = '0' and position4 = '0' then
            dash3 <= '1';
            position3 <= '1';
            start_time := 0 ns;
            end_time := 0 ns;
        end if;
        
        if (end_time - start_time) >= 2000 ms and position1 = '1' and position2 = '1' and position3 = '0' and position4 = '0' then
            dot3 <= '1';
            position3 <= '1';
            start_time := 0 ns;
            end_time := 0 ns;
        end if;
        
        if (end_time - start_time) >= 4000 ms and position1 = '1' and position2 = '1' and position3 = '1' and position4 = '0' then
            dash4 <= '1';
            position4 <= '1';
            start_time := 0 ns;
            end_time := 0 ns;
        end if;
        
        if (end_time - start_time) >= 2000 ms and position1 = '1' and position2 = '1' and position3 = '1' and position4 = '0' then
            dot4 <= '1';
            position4 <= '1';
            start_time := 0 ns;
            end_time := 0 ns;
        end if;
        
        
        end if;
        end process;
process(dot1,dot2,dot3,dot4,dash1,dash2,dash3,dash4)
begin


    
if (dot1='1' and dot2='0' and dot3='0' and dot4='0' and dash1='0' and dash2='1' and dash3='0' and dash4='0') then

 
position <="1000";
seg1 <= "11111110";

position <="0100";
seg1 <= "11111011";

position <="0010";
seg1 <= "11111111";

position <="0001";
seg1 <= "11111111";
         
         elsif (dot1='0' and dot2='1' and dot3='1' and dot4='1' and dash1='1' and dash2='0' and dash3='0' and dash4='0') then

           
 
position <="1000";
seg1 <= "11111011";

position <="0100";
seg1 <= "11111110";

position <="0010";
seg1 <= "11111110";

position <="0001";
seg1 <= "11111110"; 
 
         elsif (dot1='0' and dot2='1' and dot3='0' and dot4='1' and dash1='1' and dash2='1' and dash3='1' and dash4='0') then
  


position <="1000";
seg1 <= "11111011";

position <="0100";
seg1 <= "11111110";

position <="0010";
seg1 <= "11111011";

position <="0001";
seg1 <= "11111110";


          elsif (dot1='0' and dot2='1' and dot3='1' and dot4='0' and dash1='1' and dash2='1' and dash3='0' and dash4='0') then
 
           
position <="1000";
seg1 <= "11111011";

position <="0100";
seg1 <= "11111110";

position <="0010";
seg1 <= "11111110";

position <="0001";
seg1 <= "11111111";

           
         elsif (dot1='1' and dot2='0' and dot3='0' and dot4='0' and dash1='0' and dash2='0' and dash3='0' and dash4='0') then
 
           
position <="1000";
seg1 <= "11111110";

position <="0100";
seg1 <= "11111111";

position <="0010";
seg1 <= "11111111";

position <="0001";
seg1 <= "11111111";
 
         elsif (dot1='1' and dot2='1' and dot3='0' and dot4='1' and dash1='0' and dash2='0' and dash3='1' and dash4='0') then

 
position <="1000";
seg1 <= "11111110";

position <="0100";
seg1 <= "11111110";

position <="0010";
seg1 <= "11111011";

position <="0001";
seg1 <= "11111110";
 
         elsif (dot1='0' and dot2='0' and dot3='1' and dot4='0' and dash1='1' and dash2='1' and dash3='0' and dash4='0') then

position <="1000";
seg1 <= "11111011";

position <="0100";
seg1 <= "11111011";

position <="0010";
seg1 <= "11111110";

position <="0001";
seg1 <= "11111111";
           
         elsif (dot1='1' and dot2='1' and dot3='1' and dot4='1' and dash1='0' and dash2='0' and dash3='0' and dash4='0') then

position <="1000";
seg1 <= "11111110";

position <="0100";
seg1 <= "11111110";

position <="0010";
seg1 <= "11111110";

position <="0001";
seg1 <= "11111110";
           
         elsif (dot1='1' and dot2='1' and dot3='1' and dot4='0' and dash1='0' and dash2='0' and dash3='0' and dash4='0') then

           
position <="1000";
seg1 <= "11111110";

position <="0100";
seg1 <= "11111110";

position <="0010";
seg1 <= "11111111";

position <="0001";
seg1 <= "11111111";
           
         elsif (dot1='1' and dot2='0' and dot3='0' and dot4='0' and dash1='0' and dash2='1' and dash3='1' and dash4='1') then
  
           

position <="1000";
seg1 <= "11111110";

position <="0100";
seg1 <= "11111011";

position <="0010";
seg1 <= "11111011";

position <="0001";
seg1 <= "11111011";
          
           
         elsif (dot1='0' and dot2='1' and dot3='0' and dot4='0' and dash1='1' and dash2='0' and dash3='1' and dash4='0') then
 
           
position <="1000";
seg1 <= "11111011";

position <="0100";
seg1 <= "11111110";

position <="0010";
seg1 <= "11111011";

position <="0001";
seg1 <= "11111111";
           
         elsif (dot1='1' and dot2='0' and dot3='1' and dot4='1' and dash1='0' and dash2='1' and dash3='0' and dash4='0') then
  
           
position <="1000";
seg1 <= "11111110";

position <="0100";
seg1 <= "11111011";

position <="0010";
seg1 <= "11111110";

position <="0001";
seg1 <= "11111110";
           
         elsif (dot1='0' and dot2='0' and dot3='0' and dot4='0' and dash1='1' and dash2='1' and dash3='0' and dash4='0') then
 
           
position <="1000";
seg1 <= "11111011";

position <="0100";
seg1 <= "11111011";

position <="0010";
seg1 <= "11111111";

position <="0001";
seg1 <= "11111111"; 

           
         elsif (dot1='0' and dot2='1' and dot3='0' and dot4='0' and dash1='1' and dash2='0' and dash3='0' and dash4='0') then


position <="1000";
seg1 <= "11111011";

position <="0100";
seg1 <= "11111110";

position <="0010";
seg1 <= "11111111";

position <="0001";
seg1 <= "11111111";
          
           
         elsif (dot1='0' and dot2='0' and dot3='0' and dot4='0' and dash1='1' and dash2='1' and dash3='1' and dash4='0') then
 
  
position <="1000";
seg1 <= "11111011";

position <="0100";
seg1 <= "11111011";

position <="0010";
seg1 <= "11111011";

position <="0001";
seg1 <= "11111111";
           
           
         elsif (dot1='1' and dot2='0' and dot3='0' and dot4='1' and dash1='0' and dash2='1' and dash3='1' and dash4='0') then
  

position <="1000";
seg1 <= "11111110";

position <="0100";
seg1 <= "11111011";

position <="0010";
seg1 <= "11111011";

position <="0001";
seg1 <= "11111110";
           
         elsif (dot1='0' and dot2='0' and dot3='1' and dot4='0' and dash1='1' and dash2='1' and dash3='0' and dash4='1') then

           
position <="1000";
seg1 <= "11111011";

position <="0100";
seg1 <= "11111011";

position <="0010";
seg1 <= "11111110";

position <="0001";
seg1 <= "11111011";
           
         elsif (dot1='1' and dot2='0' and dot3='1' and dot4='0' and dash1='0' and dash2='1' and dash3='0' and dash4='0') then
 
           
position <="1000";
seg1 <= "11111110";

position <="0100";
seg1 <= "11111011";

position <="0010";
seg1 <= "11111110";

position <="0001";
seg1 <= "11111111";
           
           
         elsif (dot1='1' and dot2='1' and dot3='1' and dot4='0' and dash1='0' and dash2='0' and dash3='0' and dash4='0') then
   
           
position <="1000";
seg1 <= "11111110";

position <="0100";
seg1 <= "11111110";

position <="0010";
seg1 <= "11111110";

position <="0001";
seg1 <= "11111111";
           
           
         elsif (dot1='0' and dot2='0' and dot3='0' and dot4='0' and dash1='1' and dash2='0' and dash3='0' and dash4='0') then
 
           
position <="1000";
seg1 <= "11111011";

position <="0100";
seg1 <= "11111111";

position <="0010";
seg1 <= "11111111";

position <="0001";
seg1 <= "11111111";

           
           
         elsif (dot1='1' and dot2='1' and dot3='0' and dot4='0' and dash1='0' and dash2='0' and dash3='1' and dash4='0') then
   
position <="1000";
seg1 <= "11111110";

position <="0100";
seg1 <= "11111110";

position <="0010";
seg1 <= "11111011";

position <="0001";
seg1 <= "11111111";
           
           
         elsif (dot1='1' and dot2='1' and dot3='1' and dot4='0' and dash1='0' and dash2='0' and dash3='0' and dash4='1') then
 
           

position <="1000";
seg1 <= "11111110";

position <="0100";
seg1 <= "11111110";

position <="0010";
seg1 <= "11111110";

position <="0001";
seg1 <= "11111011";
           
         elsif (dot1='1' and dot2='0' and dot3='0' and dot4='0' and dash1='1' and dash2='1' and dash3='0' and dash4='0') then
   

position <="1000";
seg1 <= "11111110";

position <="0100";
seg1 <= "11111011";

position <="0010";
seg1 <= "11111011";

position <="0001";
seg1 <= "11111111";

           
           
         elsif (dot1='0' and dot2='1' and dot3='1' and dot4='0' and dash1='1' and dash2='0' and dash3='0' and dash4='1') then

           

position <="1000";
seg1 <= "11111011";

position <="0100";
seg1 <= "11111110";

position <="0010";
seg1 <= "11111110";

position <="0001";
seg1 <= "11111011";
           
                      
         elsif (dot1='0' and dot2='1' and dot3='0' and dot4='0' and dash1='1' and dash2='0' and dash3='1' and dash4='1') then

           

position <="1000";
seg1 <= "11111011";

position <="0100";
seg1 <= "11111110";

position <="0010";
seg1 <= "11111011";

position <="0001";
seg1 <= "11111011";
           
           
         elsif (dot1='0' and dot2='0' and dot3='1' and dot4='1' and dash1='1' and dash2='1' and dash3='0' and dash4='0') then
position <="1000";
seg1 <= "11111011";

position <="0100";
seg1 <= "11111011";

position <="0010";
seg1 <= "11111110";

position <="0001";
seg1 <= "11111110";
           end if ; 
end process;   


end architecture behavioral;

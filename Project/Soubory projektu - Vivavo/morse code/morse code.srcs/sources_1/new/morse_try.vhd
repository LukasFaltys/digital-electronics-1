

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;




entity morse_try is
Port (   btn1: in STD_LOGIC;
         btn2: in STD_LOGIC;
         btn3: in STD_LOGIC;
         btn4: in STD_LOGIC;
         btn5: in STD_LOGIC;
         btn6: in STD_LOGIC;
         btn7: in STD_LOGIC;
         btn8: in STD_LOGIC;
         btn9: in STD_LOGIC;
         btn10: in STD_LOGIC;
         
         seg1: out STD_LOGIC_vector(7 downto 0):= (others => '0');

         
         
         position: out std_logic_vector(3 downto 0):= (others => '0');

         
         
         
         
         send: in STD_LOGIC;
         reset: in std_logic;
         sendout : out std_logic:= '0'

         );

end morse_try;

architecture Behavioral of morse_try is

begin 



sendovani : process(btn1,btn2,btn3,btn4,btn5,btn6,btn7,btn8,btn9,btn10,send,reset)

begin

if reset = '1' then
sendout <= '0';
seg1<="00000000";
position<="0000";






end if;

            
        if (btn1='0' and btn2='1' and btn3='1' and btn4='1' and btn5='0' and btn6='0' and btn7='0' and btn8='0' and btn9='0' and btn10='0' and send='1') then
  sendout <= '1' after 0 ms,
             '0' after 2000 ms,
             
             '1' after 8000 ms,
             '0' after 12000 ms;--A



position <="1000";
seg1 <= "11111110";

position <="0100";
seg1 <= "11111011";

position <="0010";
seg1 <= "11111111";

position <="0001";
seg1 <= "11111111";


         
         elsif (btn1='1' and btn2='1' and btn3='0' and btn4='1' and btn5='0' and btn6='1' and btn7='0' and btn8='1' and btn9='0' and btn10='0' and send='1') then
sendout <= '1' after 0 ns,
           '0' after 4000 ms,
           
           '1' after 10000 ms,
           '0' after 12000 ms ,
           
           '1' after 18000 ms ,
           '0' after 20000 ms ,
           
           '1' after 26000 ms ,
           '0' after 28000 ms ;--B
           
position <="1000";
seg1 <= "11111011";

position <="0100";
seg1 <= "11111110";

position <="0010";
seg1 <= "11111110";

position <="0001";
seg1 <= "11111110"; 
   
         elsif (btn1='1' and btn2='1' and btn3='0' and btn4='1' and btn5='1' and btn6='1' and btn7='0' and btn8='1' and btn9='0' and btn10='0' and send='1') then
sendout <= '1' after 0 ns,
           '0' after 4000 ms,
           
           '1' after 10000 ms,
           '0' after 12000 ms ,
           
           '1' after 18000 ms ,
           '0' after 22000 ms ,
           
           '1' after 28000 ms ,
           '0' after 30000 ms ;--C    
position <="1000";
seg1 <= "11111011";

position <="0100";
seg1 <= "11111110";

position <="0010";
seg1 <= "11111011";

position <="0001";
seg1 <= "11111110";


         elsif (btn1='1' and btn2='1' and btn3='0' and btn4='1' and btn5='0' and btn6='1' and btn7='0' and btn8='0' and btn9='0' and btn10='0' and send='1') then
sendout <= '1' after 0 ns,
           '0' after 4000 ms,
           
           '1' after 10000 ms,
           '0' after 12000 ms ,
           
           '1' after 18000 ms ,
           '0' after 20000 ms ;--D   
           

position <="1000";
seg1 <= "11111011";

position <="0100";
seg1 <= "11111110";

position <="0010";
seg1 <= "11111110";

position <="0001";
seg1 <= "11111111";
 
           
         elsif (btn1='0' and btn2='1' and btn3='0' and btn4='0' and btn5='0' and btn6='0' and btn7='0' and btn8='0' and btn9='0' and btn10='0' and send='1') then
sendout <= '1' after 000 ms,
           '0' after 4000 ms;--E  
           
position <="1000";
seg1 <= "11111110";

position <="0100";
seg1 <= "11111111";

position <="0010";
seg1 <= "11111111";

position <="0001";
seg1 <= "11111111";
                   
 
 
         elsif (btn1='0' and btn2='1' and btn3='0' and btn4='1' and btn5='1' and btn6='1' and btn7='0' and btn8='1' and btn9='0' and btn10='0' and send='1') then
sendout <= '1' after 000 ms,
           '0' after 2000 ms,
           
           '1' after 8000 ms,
           '0' after 10000 ms ,
           
           '1' after 16000 ms ,
           '0' after 20000 ms ,
           
           '1' after 26000 ms,
           '0' after 28000 ms ;--F  
 

position <="1000";
seg1 <= "11111110";

position <="0100";
seg1 <= "11111110";

position <="0010";
seg1 <= "11111011";

position <="0001";
seg1 <= "11111110";
 
         elsif (btn1='1' and btn2='1' and btn3='1' and btn4='1' and btn5='0' and btn6='1' and btn7='0' and btn8='0' and btn9='0' and btn10='0' and send='1') then
sendout <= '1' after 0 ns,
           '0' after 4000 ms,
           
           '1' after 10000 ms,
           '0' after 14000 ms ,
           
           '1' after 20000 ms ,
           '0' after 22000 ms ;--G  

position <="1000";
seg1 <= "11111011";

position <="0100";
seg1 <= "11111011";

position <="0010";
seg1 <= "11111110";

position <="0001";
seg1 <= "11111111";
          
           
         elsif (btn1='0' and btn2='1' and btn3='0' and btn4='1' and btn5='0' and btn6='1' and btn7='0' and btn8='1' and btn9='0' and btn10='0' and send='1') then
sendout <= '1' after 0 ns,
           '0' after 2000 ms,
           
           '1' after 8000 ms,
           '0' after 10000 ms ,
           
           '1' after 16000 ms ,
           '0' after 18000 ms ,
           
           '1' after 24000 ms,
           '0' after 26000 ms ;--H 

position <="1000";
seg1 <= "11111110";

position <="0100";
seg1 <= "11111110";

position <="0010";
seg1 <= "11111110";

position <="0001";
seg1 <= "11111110";
         
           
         elsif (btn1='0' and btn2='1' and btn3='0' and btn4='1' and btn5='0' and btn6='0' and btn7='0' and btn8='0' and btn9='0' and btn10='0' and send='1') then
sendout <= '1' after 0 ns,
           '0' after 2000 ms,
           
           '1' after 8000 ms,
           '0' after 10000 ms ;--I
           

position <="1000";
seg1 <= "11111110";

position <="0100";
seg1 <= "11111110";

position <="0010";
seg1 <= "11111111";

position <="0001";
seg1 <= "11111111";
 
           
         elsif (btn1='0' and btn2='1' and btn3='1' and btn4='1' and btn5='1' and btn6='1' and btn7='1' and btn8='1' and btn9='0' and btn10='0' and send='1') then
sendout <= '1' after 0 ns,
           '0' after 2000 ms,
           
           '1' after 8000 ms,
           '0' after 12000 ms ,
           
           '1' after 18000 ms ,
           '0' after 22000 ms ,
           
           '1' after 28000 ms,
           '0' after 32000 ms ;--J   
           

position <="1000";
seg1 <= "11111110";

position <="0100";
seg1 <= "11111011";

position <="0010";
seg1 <= "11111011";

position <="0001";
seg1 <= "11111011";
          
           
         elsif (btn1='1' and btn2='1' and btn3='0' and btn4='1' and btn5='1' and btn6='1' and btn7='0' and btn8='0' and btn9='0' and btn10='0' and send='1') then
sendout <= '1' after 0 ns,
           '0' after 4000 ms,
           
           '1' after 10000 ms,
           '0' after 12000 ms ,
           
           '1' after 18000 ms ,
           '0' after 22000 ms;--K    
           

position <="1000";
seg1 <= "11111011";

position <="0100";
seg1 <= "11111110";

position <="0010";
seg1 <= "11111011";

position <="0001";
seg1 <= "11111111";
 
           
         elsif (btn1='0' and btn2='1' and btn3='1' and btn4='1' and btn5='0' and btn6='1' and btn7='0' and btn8='1' and btn9='0' and btn10='0' and send='1') then
sendout <= '1' after 0 ns,
           '0' after 2000 ms,
           
           '1' after 8000 ms,
           '0' after 12000 ms ,
           
           '1' after 18000 ms ,
           '0' after 20000 ms ,
           
           '1' after 26000 ms,
           '0' after 28000 ms ;--L   
           

position <="1000";
seg1 <= "11111110";

position <="0100";
seg1 <= "11111011";

position <="0010";
seg1 <= "11111110";

position <="0001";
seg1 <= "11111110";
           
           
         elsif (btn1='1' and btn2='1' and btn3='1' and btn4='1' and btn5='0' and btn6='0' and btn7='0' and btn8='0' and btn9='0' and btn10='0' and send='1') then
sendout <= '1' after 0 ns,
           '0' after 4000 ms,
           
           '1' after 10000 ms,
           '0' after 14000 ms;--M   
           
 
 
position <="1000";
seg1 <= "11111011";

position <="0100";
seg1 <= "11111011";

position <="0010";
seg1 <= "11111111";

position <="0001";
seg1 <= "11111111";

           
         elsif (btn1='1' and btn2='1' and btn3='0' and btn4='1' and btn5='0' and btn6='0' and btn7='0' and btn8='0' and btn9='0' and btn10='0' and send='1') then
sendout <= '1' after 0 ns,
           '0' after 4000 ms,
           
           '1' after 10000 ms,
           '0' after 12000 ms;--N 

position <="1000";
seg1 <= "11111011";

position <="0100";
seg1 <= "11111110";

position <="0010";
seg1 <= "11111111";

position <="0001";
seg1 <= "11111111";
          
           
         elsif (btn1='1' and btn2='1' and btn3='1' and btn4='1' and btn5='1' and btn6='1' and btn7='0' and btn8='0' and btn9='0' and btn10='0' and send='1') then
sendout <= '1' after 0 ns,
           '0' after 4000 ms,
           
           '1' after 10000 ms,
           '0' after 14000 ms ,
           
           '1' after 20000 ms ,
           '0' after 24000 ms;--O  
  
position <="1000";
seg1 <= "11111011";

position <="0100";
seg1 <= "11111011";

position <="0010";
seg1 <= "11111011";

position <="0001";
seg1 <= "11111111";
           
           
         elsif (btn1='0' and btn2='1' and btn3='1' and btn4='1' and btn5='1' and btn6='1' and btn7='0' and btn8='1' and btn9='0' and btn10='0' and send='1') then
sendout <= '1' after 0 ns,
           '0' after 2000 ms,
           
           '1' after 8000 ms,
           '0' after 12000 ms ,
           
           '1' after 18000 ms ,
           '0' after 22000 ms ,
           
           '1' after 28000 ms,
           '0' after 30000 ms ;--P   

position <="1000";
seg1 <= "11111110";

position <="0100";
seg1 <= "11111011";

position <="0010";
seg1 <= "11111011";

position <="0001";
seg1 <= "11111110";
          
           
         elsif (btn1='1' and btn2='1' and btn3='1' and btn4='1' and btn5='0' and btn6='1' and btn7='1' and btn8='1' and btn9='0' and btn10='0' and send='1') then
sendout <= '1' after 0 ns,
           '0' after 4000 ms,
           
           '1' after 10000 ms,
           '0' after 14000 ms ,
           
           '1' after 20000 ms ,
           '0' after 22000 ms ,
           
           '1' after 28000 ms,
           '0' after 32000 ms ;--Q
           

position <="1000";
seg1 <= "11111011";

position <="0100";
seg1 <= "11111011";

position <="0010";
seg1 <= "11111110";

position <="0001";
seg1 <= "11111011";
           
         elsif (btn1='0' and btn2='1' and btn3='1' and btn4='1' and btn5='0' and btn6='1' and btn7='0' and btn8='0' and btn9='0' and btn10='0' and send='1') then
sendout <= '1' after 0 ns,
           '0' after 2000 ms,
           
           '1' after 80 ns,
           '0' after 12000 ms ,
           
           '1' after 18000 ms ,
           '0' after 20000 ms;--R 
           

position <="1000";
seg1 <= "11111110";

position <="0100";
seg1 <= "11111011";

position <="0010";
seg1 <= "11111110";

position <="0001";
seg1 <= "11111111";

           
           
         elsif (btn1='0' and btn2='1' and btn3='0' and btn4='1' and btn5='0' and btn6='1' and btn7='0' and btn8='0' and btn9='0' and btn10='0' and send='1') then
sendout <= '1' after 0 ns,
           '0' after 2000 ms,
           
           '1' after 8000 ms,
           '0' after 10000 ms ,
           
           '1' after 16000 ms ,
           '0' after 18000 ms ;--S   
           

position <="1000";
seg1 <= "11111110";

position <="0100";
seg1 <= "11111110";

position <="0010";
seg1 <= "11111110";

position <="0001";
seg1 <= "11111111";

           
           
         elsif (btn1='1' and btn2='1' and btn3='0' and btn4='0' and btn5='0' and btn6='0' and btn7='0' and btn8='0' and btn9='0' and btn10='0' and send='1') then
sendout <= '1' after 0 ns,
           '0' after 4000 ms;--T 
           

position <="1000";
seg1 <= "11111011";

position <="0100";
seg1 <= "11111111";

position <="0010";
seg1 <= "11111111";

position <="0001";
seg1 <= "11111111";
           
         elsif (btn1='0' and btn2='1' and btn3='0' and btn4='1' and btn5='1' and btn6='1' and btn7='0' and btn8='0' and btn9='0' and btn10='0' and send='1') then
sendout <= '1' after 0 ns,
           '0' after 2000 ms,
           
           '1' after 8000 ms,
           '0' after 12000 ms ,
           
           '1' after 18000 ms ,
           '0' after 22000 ms ;--U   

position <="1000";
seg1 <= "11111110";

position <="0100";
seg1 <= "11111110";

position <="0010";
seg1 <= "11111011";

position <="0001";
seg1 <= "11111111";
           
         elsif (btn1='0' and btn2='1' and btn3='0' and btn4='1' and btn5='0' and btn6='1' and btn7='1' and btn8='1' and btn9='0' and btn10='0' and send='1') then
sendout <= '1' after 0 ns,
           '0' after 2000 ms,
           
           '1' after 8000 ms,
           '0' after 12000 ms ,
           
           '1' after 18000 ms ,
           '0' after 20000 ms ,
           
           '1' after 26000 ms,
           '0' after 30000 ms ;--V 
           

position <="1000";
seg1 <= "11111110";

position <="0100";
seg1 <= "11111110";

position <="0010";
seg1 <= "11111110";

position <="0001";
seg1 <= "11111011";
           
           
         elsif (btn1='0' and btn2='1' and btn3='1' and btn4='1' and btn5='1' and btn6='1' and btn7='0' and btn8='0' and btn9='0' and btn10='0' and send='1') then
sendout <= '1' after 0 ns,
           '0' after 2000 ms,
           
           '1' after 8000 ms,
           '0' after 12000 ms ,
           
           '1' after 18000 ms ,
           '0' after 22000 ms ;--W   

position <="1000";
seg1 <= "11111110";

position <="0100";
seg1 <= "11111011";

position <="0010";
seg1 <= "11111011";

position <="0001";
seg1 <= "11111111";
           
           
         elsif (btn1='1' and btn2='1' and btn3='0' and btn4='1' and btn5='0' and btn6='1' and btn7='1' and btn8='1' and btn9='0' and btn10='0' and send='1') then
sendout <= '1' after 0 ns,
           '0' after 4000 ms,
           
           '1' after 10000 ms,
           '0' after 12000 ms ,
           
           '1' after 18000 ms ,
           '0' after 20000 ms ,
           
           '1' after 26000 ms,
           '0' after 30000 ms ;--X  
           

position <="1000";
seg1 <= "11111011";

position <="0100";
seg1 <= "11111110";

position <="0010";
seg1 <= "11111110";

position <="0001";
seg1 <= "11111011";
           
                      
         elsif (btn1='1' and btn2='1' and btn3='0' and btn4='1' and btn5='1' and btn6='1' and btn7='1' and btn8='1' and btn9='0' and btn10='0' and send='1') then
sendout <= '1' after 0 ns,
           '0' after 4000 ms,
           
           '1' after 10000 ms,
           '0' after 12000 ms ,
           
           '1' after 18000 ms ,
           '0' after 22000 ms ,
           
           '1' after 28000 ms,
           '0' after 32000 ms ;--Y 
           

position <="1000";
seg1 <= "11111011";

position <="0100";
seg1 <= "11111110";

position <="0010";
seg1 <= "11111011";

position <="0001";
seg1 <= "11111011";
           
           
         elsif (btn1='1' and btn2='1' and btn3='1' and btn4='1' and btn5='0' and btn6='1' and btn7='0' and btn8='1' and btn9='0' and btn10='0' and send='1') then
sendout <= '1' after 0 ns,
           '0' after 4000 ms,
           
           '1' after 10000 ms,
           '0' after 14000 ms ,
           
           '1' after 20000 ms ,
           '0' after 22000 ms ,
           
           '1' after 28000 ms,
           '0' after 30000 ms ;--Z                                                                                                                                                                    

position <="1000";
seg1 <= "11111011";

position <="0100";
seg1 <= "11111011";

position <="0010";
seg1 <= "11111110";

position <="0001";
seg1 <= "11111110";
                          
end if;
                    
  
end process sendovani;
end Behavioral;

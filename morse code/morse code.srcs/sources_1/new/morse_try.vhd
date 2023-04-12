----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/05/2023 11:37:36 AM
-- Design Name: 
-- Module Name: morse_try - Behavioral
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



entity morse_try is
Port (   carka: in STD_LOGIC;
         tecka: in STD_LOGIC;
         reset : in STD_LOGIC;
         send : in STD_LOGIC;
         sendout1 : out std_logic;
         sendout2 : out STD_LOGIC;
         sendout3 : out STD_LOGIC;
         sendout4 : out STD_LOGIC;
         sendout5 : out STD_LOGIC

         );

end morse_try;

architecture Behavioral of morse_try is

signal sigin1 : natural;
signal sigin2 : natural;
signal sigin3 : natural;
signal sigin4 : natural;
signal sigin5 : natural;

begin


    sendovani : process (carka,tecka,reset,send)
    begin

        sigin1<=1;
        
        if (tecka='1') and (sigin1 =1)then
            sendout1<= '0';
            sigin1<= 0;

        end if;
        
        if (carka='1') and (sigin1 =0)then
            sendout1<='1';
            sigin1<= 1;

        end if  ; 
         ---
             
        if (tecka='1') and ((sigin1 =1) or (sigin1 =0)) then
            sendout2<= '1';
            sigin2<=1;

        end if;     
        if (carka='1')  and ((sigin2 =1) or (sigin2 =0)) then
            sendout2<='0';
            sigin2<=0;
            
           end if ;         
        ---
        if (tecka='1') and ((sigin3 =1) or (sigin3 =0)) then
            sendout3<= '1';
            sigin3<=1;

        end if;     
        if (carka='1')  and ((sigin4 =1) or (sigin4 =0)) then
            sendout3<='0';
            sigin3<=0;
            
        end if ;       
        ---
        
                if (tecka='1') and ((sigin5 =1) or (sigin5 =0)) then
            sendout4<= '1';
            sigin4<=1;

        end if;     
        if (carka='1')  and ((sigin3 =1) or (sigin3 =0)) then
            sendout4<='0';
            sigin4<=0;
            
        end if ;       
        ---
        
        
        if (tecka='1') and ((sigin4 =1) or (sigin4 =0)) then
            sendout5<= '1';
            sigin5<=1;

        end if;     
        if (carka='1')  and ((sigin4 =1) or (sigin4 =0)) then
            sendout5<='0';
            sigin5<=0;
            
        end if ;       
        ---        
        
    end process sendovani;




end Behavioral;

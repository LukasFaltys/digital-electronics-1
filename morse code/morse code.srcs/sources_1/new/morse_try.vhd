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

        -- reset : in STD_LOGIC;
        -- send : in STD_LOGIC;
         sendout1 : out std_logic
         --sendout2 : out STD_LOGIC;
         --sendout3 : out STD_LOGIC;
         --sendout4 : out STD_LOGIC;
         --sendout5 : out STD_LOGIC

         );

end morse_try;

architecture Behavioral of morse_try is

type state_type is (IDLE, DOT, DASH, SPACE);

signal state       : state_type := IDLE;
signal sigin1 : natural;
signal sigin2 : natural;
signal sigin3 : natural;
signal sigin4 : natural;
signal sigin5 : natural;

begin 


        

sendovani : process (tecka,carka)
begin



        case state is
            when IDLE =>
            
        if (tecka='1') then
            sigin1<= 1;
            sigin1<= 0 after 20ns;  
            state <=DOT;
                    
        end if;
        
                
        if (carka='1') then
            sigin1<= 1;
            sigin1<= 0 after 40ns;
            state <=DASH;            
        end if;
        
        
          when  DOT =>
          sendout1<='1';
          sendout1<='0' after 20ns;
          state <=SPACE;
          
          
          when DASH =>
          sendout1<='1';
          sendout1<='0' after 40ns;
          state <=SPACE;
          
          
          when SPACE =>
          sendout1<='0' after 60ns;
          state<=IDLE;
  
  
                       end case;

                                      end process sendovani;


   end Behavioral;

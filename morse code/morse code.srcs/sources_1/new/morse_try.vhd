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
         clk : in STD_LOGIC;
         sendout1 : out std_logic;
         sendout2 : out STD_LOGIC;
         sendout3 : out STD_LOGIC

         );

end morse_try;

architecture Behavioral of morse_try is
begin
    sendovani : process (clk)
    begin

        
        if (tecka='1') and ((sendout1 /='1') or (sendout1 /='0')) then
            sendout1<= '0';

        
        if (carka='1')  and ((sendout1 /='1') or (sendout1 /='0')) then
            sendout1<='1';
        
       ---- 
        
        
        if (tecka='1') and ((sendout1 ='1') or (sendout1 ='0')) then
            sendout2<= '1';

        
        if (carka='1')  and ((sendout1 ='1') or (sendout1 ='0')) then
            sendout2<='0';
            
            
     ----       
        
         if (tecka='1') and ((sendout2 ='1') or (sendout2 ='0')) then
            sendout3<= '1';

        
        if (carka='1')  and ((sendout2 ='1') or (sendout2 ='0')) then
            sendout3<='0';       
            





    end process sendovani




end Behavioral;

----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/08/2023 11:57:39 AM
-- Design Name: 
-- Module Name: t_ff_rst - Behavioral
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

entity t_ff_rst is
    Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           t : in STD_LOGIC;
           d : in STD_LOGIC;
           q : out STD_LOGIC;
           q_bar : out STD_LOGIC);
end t_ff_rst;



architecture behavioral of t_ff_rst is
    -- It must use this local signal instead of output ports
    -- because "out" ports cannot be read within the architecture
    signal sig_q : std_logic;
begin
    --------------------------------------------------------
  p_d_ff_rst : process (clk)
    begin
        if rising_edge(clk) then  -- Synchronous process

            if (rst='1') then
                q <= '0';
                q_bar <= '1';
            else
                q <= d;
                q_bar <= not d;
            
            end if;    

        end if;
    end process p_d_ff_rst;
    -- p_t_ff_rst:
    -- T type flip-flop with a high-active synchro reset and
    -- rising-edge clk.
    -- sig_q = t./sig_q + /t.sig_q
    -- sig_q =  sig_q if t = 0 (no change)
    -- sig_q = /sig_q if t = 1 (inversion)
    --------------------------------------------------------
    p_t_ff_rst : process (clk)
        begin
            if rising_edge(clk) then  -- Synchronous process
    
                if (clk='1' and t='1') then
                    q <= '0';
                    q_bar <= '1';
                elsif (clk='0' and t='1') then
                    q <= '1';
                    q_bar <= '0';    
                elsif (clk='1' and t='0') then
                    q <= '0';
                    q_bar <= '0';
                 elsif (clk='1' and t='0') then
                    q <= '1';
                    q_bar <= '1';
                    
                
                end if;    

        end if;
    end process p_d_ff_rst;
    q     <= sig_q;
    q_bar <= not sig_q;
end architecture behavioral;

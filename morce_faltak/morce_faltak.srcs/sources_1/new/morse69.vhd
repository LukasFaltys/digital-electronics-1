library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity morse_transmitter is    
port(
           clk       : in std_logic;
           button1   : in std_logic;
           button2   : in std_logic;
           --button3   : in std_logic;
           --button4   : in std_logic;
           morse_out : out std_logic
    );
end morse_transmitter;

architecture behavioral of morse_transmitter is

    -- Typy stav? pro stavový automat

type state_type is (IDLE, DOT, DASH, SPACE);

    -- Signály
    signal state       : state_type := IDLE;
    signal dot_count   : integer   := 0;
    signal dash_count : integer := 0;
    signal space_count : integer := 0;
    signal morse_code : std_logic_vector(1 downto 0) := "00";
    signal output_reg : std_logic := '0';

begin

-- Generátor hodinového signálu
process (clk)
begin
    if rising_edge(clk) then
        -- Aktualizace stavu stavového automatu
        case state is
            when IDLE =>
                -- ?ekání na stisknutí tla?ítka
                if button1 = '1' then
                    state <= DOT;
                    dot_count <= 1;
                elsif button2 = '1' then
                    state <= DASH;
                    dash_count <= 1;
                end if;
               
            when DOT =>
                -- ?ekání na uvoln?ní tla?ítka
                if button1 = '0' then
                    dot_count <= dot_count + 1;
                else
                    -- Vygenerování Morseovy te?ky
                    morse_code <= "01";
                    space_count <= 0;
                    state <= SPACE;
                end if;
               
            when DASH =>
                -- ?ekání na uvoln?ní tla?ítka
                if button2 = '0' then
                    dash_count <= dash_count + 1;
                else
                    -- Vygenerování Morseovy ?árky
                    morse_code <= "11";
                    space_count <= 0;
                    state <= SPACE;
                end if;
               
            when SPACE =>
                -- ?ekání na vstup z tla?ítek
                if button1 = '1' or button2 = '1' then
                    state <= IDLE;
                    output_reg <= morse_code(0);
                    morse_code <= morse_code(1 downto 0) ;
                else
                    -- ?ekání na konec mezery
                    if space_count >= 4 then
                        morse_code <= "00";
                        space_count <= 0;
                    else
                        space_count <= space_count + 1;
                    end if;
                end if;
               
        end case;
       
        -- Odeslání Morseova kódu na výstupní pin desky
        morse_out <= output_reg;
        output_reg <= '0';
    end if;
end process;
end Behavioral;
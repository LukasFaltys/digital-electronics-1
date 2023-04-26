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

    -- Typy stav? pro stavov� automat

type state_type is (IDLE, DOT, DASH, SPACE);

    -- Sign�ly
    signal state       : state_type := IDLE;
    signal dot_count   : integer   := 0;
    signal dash_count : integer := 0;
    signal space_count : integer := 0;
    signal morse_code : std_logic_vector(1 downto 0) := "00";
    signal output_reg : std_logic := '0';

begin

-- Gener�tor hodinov�ho sign�lu
process (clk)
begin
    if rising_edge(clk) then
        -- Aktualizace stavu stavov�ho automatu
        case state is
            when IDLE =>
                -- ?ek�n� na stisknut� tla?�tka
                if button1 = '1' then
                    state <= DOT;
                    dot_count <= 1;
                elsif button2 = '1' then
                    state <= DASH;
                    dash_count <= 1;
                end if;
               
            when DOT =>
                -- ?ek�n� na uvoln?n� tla?�tka
                if button1 = '0' then
                    dot_count <= dot_count + 1;
                else
                    -- Vygenerov�n� Morseovy te?ky
                    morse_code <= "01";
                    space_count <= 0;
                    state <= SPACE;
                end if;
               
            when DASH =>
                -- ?ek�n� na uvoln?n� tla?�tka
                if button2 = '0' then
                    dash_count <= dash_count + 1;
                else
                    -- Vygenerov�n� Morseovy ?�rky
                    morse_code <= "11";
                    space_count <= 0;
                    state <= SPACE;
                end if;
               
            when SPACE =>
                -- ?ek�n� na vstup z tla?�tek
                if button1 = '1' or button2 = '1' then
                    state <= IDLE;
                    output_reg <= morse_code(0);
                    morse_code <= morse_code(1 downto 0) ;
                else
                    -- ?ek�n� na konec mezery
                    if space_count >= 4 then
                        morse_code <= "00";
                        space_count <= 0;
                    else
                        space_count <= space_count + 1;
                    end if;
                end if;
               
        end case;
       
        -- Odesl�n� Morseova k�du na v�stupn� pin desky
        morse_out <= output_reg;
        output_reg <= '0';
    end if;
end process;
end Behavioral;
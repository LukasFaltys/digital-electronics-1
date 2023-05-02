# Projekt VHDL : Vysílač a příjmač Morseovy abecedy

## Členové teamu "LuLuBro (JilFaKeš)"

* Lukáš Faltys
* Lukáš Jílek
* Jan Brokeš

## Teoretický popis a funkčnost

Celkové naše řešení vysílače zkráceně spočívá v tom, že pro každé písmenko nastavíme určitou kombinaci, kterou provádíme pomocí SW (switch), a to tak, že je máme rozdělené po dvou a když je jenom jedna ze dvou sepnutá, tak to značí tečku, když jsou obě sepnuté, tak to značí čárku. Takto my definujeme určité písmenko a to poté pomocí tlačítka BTNC odešleme a dalším tlačítkem BTNU resetujeme. Odeslaný signál je přiveden na pin jako signál, ve kterém je tečka dlouhá 2s, čárka 4s a mezera 6s.

Dekodér je řešen tak, že snímáme ve vstupním signálu jak dlouhé jsou úseky a podle toho určíme jestli se jedná o tečku, čárku či mezeru.

## Popis hardwaru

Pro realizaci tohoto projektu byla použity dvě desky Nexys A7 50T (Jedna pro vysílač, druhá pro příjmač), které jsou kabelem propojeny mezi sebou.

![12710_01_11](https://user-images.githubusercontent.com/124742212/235751287-b5311984-bb20-4c73-9829-ad586a8019ed.png)




### Vnitřní schéma vysílače:

![image](https://user-images.githubusercontent.com/124742212/235740401-d74fb1d0-9c74-4a3d-91b8-5748d14141f3.png)

### Vnitřní schéma příjmače:

![image](https://user-images.githubusercontent.com/124742212/235775695-8cf5b041-a301-49ab-9ac8-f2a1fa6c5310.png)


## Popis softwaru

Celková funkčnost designu spočívá čistě v tom, že my nastavíme nějakou kombinaci a poté odešleme. Tlačítkem na odeslání se nám podle zadané kombinaci vytvoří signál s parametry: tečka 2s, čárka 4s a mezera 6s. Zadaná kombinace je zobrazená také na 7 segmentových displejích. V dekodéru je násleně vytvořený signál pomocí podmínkových funkcí signál zpět převeden do podoby Morseova kódu, který se zobrazí na 7 segmentových displejích.

### Odkazy na soubory vysílače: 
Design source: [zde](https://github.com/LukasFaltys/digital-electronics-1/blob/main/Project/Soubory%20projektu%20-%20Vivavo/morse%20code/morse%20code.srcs/sources_1/new/morse_try.vhd)     
Testbench source: [zde](https://github.com/LukasFaltys/digital-electronics-1/blob/main/Project/Soubory%20projektu%20-%20Vivavo/morse%20code/morse%20code.srcs/sim_1/new/morse_TB.vhd)     
Top file: [zde](https://github.com/LukasFaltys/digital-electronics-1/blob/main/Project/Soubory%20projektu%20-%20Vivavo/morse%20code/morse%20code.srcs/sources_1/new/TOP.vhd)     
Constrain file: [zde](https://github.com/LukasFaltys/digital-electronics-1/blob/main/Project/Soubory%20projektu%20-%20Vivavo/morse%20code/morse%20code.srcs/constrs_1/new/cnst.xdc)

### Odkazy na soubory přijímače: 
Design source: [zde]https://github.com/LukasFaltys/digital-electronics-1/blob/main/Project/Soubory%20projektu%20-%20Vivavo/morse%20code/morse%20code.srcs/sources_1/new/morse_try.vhd     
Testbench source: [zde]https://github.com/LukasFaltys/digital-electronics-1/blob/main/Project/Soubory%20projektu%20-%20Vivavo/morse%20code/morse%20code.srcs/sim_1/new/morse_TB.vhd    
Top file: [zde]https://github.com/LukasFaltys/digital-electronics-1/blob/main/Project/Soubory%20projektu%20-%20Vivavo/morse%20code/morse%20code.srcs/sources_1/new/TOP.vhd     
Constrain file: [zde]https://github.com/LukasFaltys/digital-electronics-1/blob/main/Project/Soubory%20projektu%20-%20Vivavo/morse%20code/morse%20code.srcs/constrs_1/new/cnst.xdc




## Simulace

V simulaci jsme použili jako testovací kombinaci písmenko Q a poté písmenko A, viz. spodní obrázek. Na vrchním obrázku můžeme vidět výstupní signály.

*******************

Legenda k signálům:

signal_in - vstupní signál   
seg1[7:0] - vybirání segmentů pro rozsvícení   
pisotion[3:0] - nastavení pozice pro zápis na 7seg display   
dot 1-4 - Určení dle vstupního signálu, zda je v určité pozici tečka   
dash 1-4 - Určení dle vstupního signálu, zda je v určité pozici čárka   
position 1-4 - vnitřní signál pro určení pozice dot/dash   


btn 1-10 - vstupní tlačítka (SW) - nastavení kombinace pomocí přepínačů   
seg1[7:0] - vybirání segmentů pro rozsvícení   
pisotion[3:0] - nastavení pozice pro zápis na 7seg display   
send - tlačítko pro odeslání   
reset - tlačítko pro reset   
send_out - výstupní signál   


![image](https://user-images.githubusercontent.com/124742212/235743084-db3f3026-a3d9-4f3f-a50b-3695f625b376.png)

## Instrukce pro použití

Pro použití naší verze řešení je třeba do obou desek správně nahrát příslušné programy. Poté V desce (kodér) nastavujeme písmenko (viz. Teoretický popis a funkčnost), a tlačítkem BTNC odešleme. Po každým poslání písmenka vyresertujeme desku tlačítkem BTNU, abychom mohli nastavovat další kombinace pro další písmenko.Po odeslání se nám na dekodéru objeví odeslaná kombinace.


## Instruktážní video
[Video zde](https://www.youtube.com/watch?v=lfkyFDDeGNk)

## Použité materiály a inspirace

1. [https://github.com/tomas-fryza/digital-electronics-1](https://github.com/tomas-fryza/digital-electronics-1)
2. [https://digilent.com/reference/programmable-logic/nexys-a7/reference-manual](https://digilent.com/reference/programmable-logic/nexys-a7/reference-manual)

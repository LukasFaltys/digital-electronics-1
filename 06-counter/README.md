# Lab 6: INSERT_YOUR_FIRSTNAME INSERT_YOUR_LASTNAME

### Bidirectional counter

1. Listing of VHDL code of the completed process `p_cnt_up_down`. Always use syntax highlighting, meaningful comments, and follow VHDL guidelines:

```vhdl
  p_cnt_up_down : process (clk) is
  begin

    if rising_edge(clk) then
      if (rst = '1') then           -- Synchronous reset
        sig_cnt <= (others => '0'); -- Clear all bits
      elsif (en = '1') then 
              -- Test if counter is enabled
        if (cnt_up = '1') then
            sig_cnt <= sig_cnt +1;
        else 
            sig_cnt  <= sig_cnt -1;
        end if;



      end if;
    end if;

  end process p_cnt_up_down;
```

2. Screenshot with simulated time waveforms. Test: (a) reset, (b) counter direction, (c) enable. Always display all inputs and outputs (display the inputs at the top of the image, the outputs below them) at the appropriate time scale!

![sign](https://user-images.githubusercontent.com/124741981/226705973-1322bd09-6e18-4043-8968-c64f1cd1143b.png)

 

### Two counters

1. Image of the top layer structure including both counters, ie a 4-bit bidirectional counter from *Part 4* and a 12-bit counter with a 10 ms time base from *Experiments on your own*. The image can be drawn on a computer or by hand. Always name all inputs, outputs, components and internal signals!

   ![cnt12b](https://user-images.githubusercontent.com/124741981/226711488-ecaddc8f-917b-48a4-83ca-814071b36785.png)


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity binaryEncoder is 
    generic(
        N: integer := 8;
        priorityMSB: boolean := true;
        priorityLSB: boolean := false
    );
    port(
        input: in std_logic_vector(N-1 downto 0);
        output: out std_logic_vector(N-1 downto 0)
    );
end entity;

architecture behavior of binaryEncoder is
    signal unsgnd_one_index: unsigned(N-1 downto 0);
begin
    assert((priorityMSB and not priorityLSB) or (not priorityMSB and priorityLSB)) report "erro!" severity error;
    
    process(input)
        variable one_index: integer;
    begin
        one_index := 0;
        if (priorityMSB) then
            for i in 0 downto input'length loop
                if(input(i) = '1') then
                    one_index := i;
                else
                    one_index := one_index;
                end if;
            end loop;
        else        
            for i in input'length downto 0 loop
                if(input(i) = '1') then
                    one_index := i;
                else
                    one_index := one_index;
                end if;
            end loop;
        end if;
        unsgnd_one_index <= to_unsigned(one_index, unsgnd_one_index'length);
    end process;   

    output <= std_logic_vector(unsgnd_one_index); 
end architecture;

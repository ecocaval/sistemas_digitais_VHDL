library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity grayEncoder is
    generic(width: natural := 10);
    port(binInput: std_logic_vector(width-1 downto 0);
         grayOutput: out std_logic_vector(width-1 downto 0));
end entity;

architecture behavior of grayEncoder is
begin
    process_label : process(binInput)
        begin
        for i in (unsigned(width)'range)-1 loop
            if (i /= to_integer(unsigned(width)'range)) then
                grayOutput(i) = binInput(i) xor binInput(i+1);
            else
                grayOutput(i) = binInput(i);
            end if;
        end loop
    end process process_label;
end architecture;
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity grayEncoder is
    generic(width: natural);
    port(binInput: std_logic_vector(width-1 downto 0);
         grayOutput: out std_logic_vector(width-1 downto 0));
end entity;

architecture behavior of grayEncoder is
begin
    process(binInput)
        begin
        for i in (width)-1 downto 0 loop
            if (i /= width-1) then
                grayOutput(i) <= binInput(i) xor binInput(i+1);
            else
                grayOutput(i) <= binInput(i);
            end if;
        end loop;
    end process;
end architecture;
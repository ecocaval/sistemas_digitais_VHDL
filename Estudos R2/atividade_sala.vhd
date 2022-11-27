library ieee;
use ieee.std_logic_1164.all;

-- Algoritmo que some de 1 até 20 

entity algoritmo1 is
    port(

    );
end entity

-- COMANDOS
-- soma = 0 => cmdSetSoma0
-- count = 1 => cmdSetCnt1
-- count <= 20 => XXXXX - anyname
-- soma += count => XXXXX - anyname
-- count++ => XXXXX- anyname

architecture arch of algoritmo1 is        
begin
    process()
        variable soma: unsigned := 1 ;
        variable count: unsigned := 1;
    begin
        while(count <= 200) loop
            soma := soma + 1;
            count++;
        end loop;
    end process;     

end architecture
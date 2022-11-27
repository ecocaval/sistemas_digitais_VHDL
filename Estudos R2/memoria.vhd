library ieee;
use ieee.std_logic_1164.all;

entity projetoComRAM is
    port(
        clock: in std_logic;
        dadoEntrada: in std_logic_vector(7 downto 0);
        endereco in std_logic_vector(9 downto 0);
        dadoSaida: out std_logic_vector(7 downto 0)
    );
end entity

-- Entra no MEGAwizard plugin -> cria-se uma nova instancia de componente;
-- Componentizar a RAM através do plugin do quartus, definindo suas especificações;
-- Utiliza-se o arquivo MIF (não proprietário da Intel);

architecture arch of projetoComRAM is
    component RAM 
        port(
            address: in std_logic_vector(9 downto 0);
            clock: in std_logic := '1';
            data: in std_logic_vector(7 downto 0);
            wren: in std_logic;
            q: out std_logic_vector(7 downto 0)
        )
    end component;
    
    signal escreve: std_logic;
begin

    MinhaRAM: RAM port map
        (
            address => endereco;
            clock: => clock;
            data: => dadoEntrada;
            wren: => escreve;
            q: => dadoSaida
        );    

end architecture
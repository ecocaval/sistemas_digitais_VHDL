library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity registerN is
    generic (
        width: positive := 10;
        resetValue: integer := 0
    );
    port(
        clock, reset, load: in std_logic;
        input: in std_logic_vector(width-1 downto 0);
        output: in std_logic_vector(width-1 downto 0);
    );
end entity

architecture behavior of registerN is
    signal currentState, nextState: std_logic_vector(width-1 downto 0);
begin
    nextState <= input when load='1' else currentState;
    process(clock, reset) is
    begin
        if reset='1' then
            currentState <= std_logic_vector(to_unsigned(resetValue), currentState'length);
        else if rising_edge(clock)
            currentState <= nextState;
        end if;            
    end process;
    output <= currentState;
end architecture;
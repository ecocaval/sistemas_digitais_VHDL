library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity addersubtractor is
    generic(
        n: positive := 10
        isAdder: boolean := true
        isSubtractor: boolean := false
    )
    port(
        a,b,cin: in std_logic_vector(n-1 downto 0);
        result: out std_logic_vector(n-1 downto 0);
        cout, ovf: out std_logic
    );
end entity;

architecture behavior is
    component full_adder2 is
        port(
            a, b, cin: in std_logic;
            sum, cout: out std_logic;
        );
        signal full_adder_carries: std_logic_vector(n downto 0);
        signal operandoB: std_logic_vector(n-1 downto 0);
begin
    
    generate_full_adder: for i in result'range generate
        fa: full_adder2 port map(a(i), operandoB(i), full_adder_carries(i), result(i), full_adder_carries(i+1));
    end generate;
    
    generate_adder: if isAdder and not isSubtractor generate
        operandoB <= b;
        full_adder_carries(0) <= '0';
    end generate;

    generate_subtractor: if not isAdder and isSubtractor generate
        operandoB <= not b;
        full_adder_carries(0) <= '1';
    end generate;

end architecture;
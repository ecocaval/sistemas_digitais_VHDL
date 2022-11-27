library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity addersubtractor is 
	generic(
		n: positive := 10;
		isAdder: boolean := false;
		isSubtractor: boolean := true
	);
	port(
		a, b: in std_logic_vector(n-1 downto 0);
		op: in std_logic;
		result: out std_logic_vector(n-1 downto 0);
		ovf, cout: out std_logic
	);
end entity;

architecture behavior of addersubtractor is 
	component full_adder2 is
		port(
        a, b, cin: in std_logic;
        sum, cout: out std_logic
    );
	end component;
	signal full_adder_carries: std_logic_vector(n downto 0);
	signal operandoB: std_logic_vector(n-1 downto 0);
begin
	assert(isAdder or isSubtractor) report "Voce não informou se deseja somador ou subtrator!" severity error;
	generate_full_adders: for i in result'range generate 
		fa: full_adder2 port map(a(i), operandoB(i), full_adder_carries(i), result(i), full_adder_carries(i+1));
	end generate;
	generate_adder: if isAdder and not isSubtractor generate	
		full_adder_carries(0) <= '0';
		operandoB <= b;
	end generate;
	generate_subtractor: if isAdder and not isSubtractor generate	
		full_adder_carries(0) <= '1';
		operandoB <= not b;
	end generate;
	generate_addersubtractor: if isAdder and isSubtractor generate
		full_adder_carries(0) <= op;
		operandoB <= b when op = '0' else not b;
	end generate;
	cout <= full_adder_carries(n);
	ovf <= full_adder_carries(n) xor full_adder_carries(n-1);
end architecture;
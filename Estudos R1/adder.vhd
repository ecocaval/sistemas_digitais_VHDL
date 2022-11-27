library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity adder is
	generic(n: positive := 10);
	port(
		a, b: in std_logic_vector(n-1 downto 0);
		result: out std_logic_vector(n-1 downto 0);
		carry_out, overflow: out std_logic
	);
end entity;

architecture behavior of adder is
	component full_adder2 is
		port(
			  a, b, cin: in std_logic;
			  sum, cout: out std_logic
		);
	end component;
	signal full_adder_carries: std_logic_vector(n downto 0);
begin
	
	generate_full_adder: for i in result'range generate 
		full_adder: full_adder2 port map(a(i), b(i), full_adder_carries(i), result(i), full_adder_carries(i+1));
	end generate;
	
	full_adder_carries(0) <= '0';
	carry_out <= full_adder_carries(n);
	overflow <= full_adder_carries(n) xor full_adder_carries(n-1);
	

end architecture;
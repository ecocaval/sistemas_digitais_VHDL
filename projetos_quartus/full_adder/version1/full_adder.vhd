library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity full_adder is
	port (
		a, b, cin: in std_logic;
		cout, sum: out std_logic
	);
end entity;

architecture behavior of full_adder is
	signal temp_sum, two_bits_a, two_bits_b, two_bits_cin: std_logic_vector(1 downto 0);			 
begin

	two_bits_a <= '0' & a;
	two_bits_b <= '0' & b;
	two_bits_cin <= '0' & cin;

	temp_sum <= std_logic_vector(signed(two_bits_a) + signed(two_bits_b) + signed(two_bits_cin));
	cout <= temp_sum(1);
	sum <= temp_sum(0);
	
end architecture;
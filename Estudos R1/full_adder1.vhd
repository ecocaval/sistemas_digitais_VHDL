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
	signal temp_sum: std_logic_vector(1 downto 0);
begin
	temp_sum <= std_logic_vector(signed(0&a) + signed(0&b) + signed(0&cin));
	cout <= temp_sum(1);
	sum <= temp_sum(0);
end architecture;
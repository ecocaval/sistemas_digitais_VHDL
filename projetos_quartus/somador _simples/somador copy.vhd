library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity somador is
	generic(n: positive := 10) ;
	port(
		a, b: in std_logic_vector(n-1 downto 0); 
		soma: out std_logic_vector(n-1 downto 0); 
		cout: out std_logic
	);
end entity;

architecture comportamento of somador is 
	signal temp: std_logic_vector(n downto 0);
begin
	temp <= std_logic_vector(signed(a(n-1)&a) + signed(b(n-1)&b));
	cout <= temp(n);
	soma <= temp(n-1 downto 0);
end architecture;
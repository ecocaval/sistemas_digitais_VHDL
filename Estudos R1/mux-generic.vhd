library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

entity mux_generic is 
    generic(
        n_entries: positive := 10;
        n_bits: positive := 4
    );
	 port(
        all_inputs: in std_logic_vector(n_entries*n_bits - 1 downto 0);
        selector: in std_logic_vector(integer(ceil(log2(real(n_entries))))-1 downto 0);
        output: out std_logic_vector(n_bits - 1 downto 0)
    );
end entity;

architecture behavior of mux_generic is 
    signal int_selector: integer;
begin   
    int_selector <= to_integer(unsigned(selector));
    output <= all_inputs(((int_selector+1)*(n_bits))-1 downto int_selector*n_bits);
end architecture;


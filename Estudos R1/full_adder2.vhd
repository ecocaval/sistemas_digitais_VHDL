library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity full_adder2 is
    port(
        a, b, cin: in std_logic;
        sum, cout: out std_logic;
    );
end entity;

architecture behavior of full_adder2 is
begin
    sum <= cin xor (a xor b);
    cout <= ((a xor b) nand cin) nand (a nand b);
end architecture;

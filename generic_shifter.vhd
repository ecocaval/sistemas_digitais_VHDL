library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

entity generic_shifter is 
    
    generic(
        N: integer := 10;
        bits_to_shift: integer := 4;
        shf_l: boolean := true;
        shf_r: boolean := false
    );

    port(
        num_to_shift: in std_logic_vector(N-1 downto 0);
        filler, shift_to: in std_logic; -- 0 for left and 1 for right
        num_shifted: out std_logic_vector(N-1 downto 0)
    );
end entity;

architecture behavior of generic_shifter is

signal num_to_insert: std_logic_vector(bits_to_shift-1 downto 0);
    
    left_shifter: if shf_l and not shf_r generate
        num_to_insert <= (others => filler);
        num_shifted <= num_to_insert & num_to_shift(N-1 downto bits_to_shift);
    end generate;

    right_shifter: if not shf_l and shf_r generate
        num_to_insert <= (others => filler);
        num_shifted <= num_to_shift(((N-1)-bits_to_shift) downto 0) & num_to_insert;
    end generate;

    left_right_shifter: if shf_l and shf_r generate
        num_to_insert <= (others => filler);
        num_shifted <= num_to_insert & num_to_shift(N-1 downto bits_to_shift) when (shift_to = '0') else
                       num_to_shift(((N-1)-bits_to_shift) downto 0) & num_to_insert;  
    end generate;

end architecture;
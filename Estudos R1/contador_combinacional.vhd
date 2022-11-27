library ieee;
use ieee.std_logic_1164.all;
use ieee.math_real.all;
use ieee.numeric_std.all;

entity bitsCombCounter is
	generic(
	    N: positive := 8;
        count1s: boolean := true
	);
	port(   
	    input: in std_logic_vector(N-1 downto 0);
		output: out std_logic_vector(integer(ceil(log2(real(N))))-1 downto 0) 
	);
end entity;

architecture sequential_behavour_thats_a_hint of bitsCombCounter is
begin
    count_process: process (input)
        variable num_of_1, num_of_0: integer;
        begin   
        num_of_0 := 0;
        num_of_1 := 0;
        if(count1s) then
            for i in ((input'length)-1) downto 0 loop
                if(input(i) = '1') then
                    num_of_1 := num_of_1 + 1;
					 else
				    num_of_1 := num_of_1;
                end if;
            end loop;
            output <= std_logic_vector(to_unsigned(num_of_1, output'length));
        else 
            for i in ((input'length)-1) downto 0 loop
                if(input(i) = '0') then
                    num_of_0 := num_of_0 + 1;
					  else
				    num_of_0 := num_of_0;
                end if;
            end loop;
            output <= std_logic_vector(to_unsigned(num_of_0, output'length));
        end if;
    end process count_process;
end architecture;
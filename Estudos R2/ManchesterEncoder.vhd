library ieee;
use ieee.std_logic_1164.all;
-- pg364

entity ManchesterEncoder is
	port(
		-- control inputs
		clock, reset: in std_logic;
		-- data inputs
		v, d: in std_logic;
		-- control outputs
		-- data outputs
		y: out std_logic
	);
end entity;

architecture studenttry of ManchesterEncoder is
	type State is (idle, s0a, s1a, s0b, s1b)
	signal currentState, nextState: State;
begin
    currentState <= idle;
	-- next-state logic (DO NOT CHANGE OR REMOVE THIS LINE)
    process(currentState, nexState)
    begin
        case currentState is
            when idle =>
                if(not v) then
                    nextState <= idle;
                elsif(v and d) then
                    nextState <= s1a;
                elsif(v and not d)
                    nextState <= s0a;
                end if;
            when s0a =>
                nexState <= s0b;
            when s1a =>
                nexState <= s1b;
            when s0b =>
                if(not v) then
                    nextState <= 
                elsif() then

                elsif() then
                end if;
            when s0a =>

            
            end case;

        end if;
    end process;
	-- end-next-state logic (DO NOT CHANGE OR REMOVE THIS LINE)
	
	
	-- memory register (DO NOT CHANGE OR REMOVE THIS LINE)
    process(clock, reset) is
        begin
            if reset='1' then
                currentState <= (to_signed(reset, currentState'length));
            elsif rising_edge(clock) then
                currentState <= nextState;
            end if;
    end process;
	-- memory register (DO NOT CHANGE OR REMOVE THIS LINE)
	
	
	-- output-logic (DO NOT CHANGE OR REMOVE THIS LINE)
    -- COMPLETE
    -- end-output-logic (DO NOT CHANGE OR REMOVE THIS LINE)
end architecture;
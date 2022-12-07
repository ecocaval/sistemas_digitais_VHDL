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
	type State is (IDLE, SOA, S0B, S1A, S1B);
	signal currentState, nextState: State;
begin
	-- next-state logic (DO NOT CHANGE OR REMOVE THIS LINE)
	process(clock, reset) is
    begin
        case currentState is
            when IDLE => 
                if(not v) then
                    nextState <= IDLE;
                elsif(v and d) then
                    nextState <= S1A;
                elsif(v and not d) then
                    nextState <= S0A;
                end if;

            when S0A =>
                nextState <= S0B;

            when S0B =>
                if(not v) then
                    nextState <= IDLE;  
                elsif(v and d) then
                    nextState <= S1A;
                elsif(v and not d) then
                    nextState <= S0A;
                end if;
            
            when S1A =>
                nextState <= S1B;
        
            when S1B =>
                if(not v) then
                    nextState <= IDLE;  
                elsif(v and d) then
                    nextState <= S1A;
                elsif(v and not d) then
                    nextState <= S0A;
                end if;
    end process;
	-- end-next-state logic (DO NOT CHANGE OR REMOVE THIS LINE)
	
	
	-- memory register (DO NOT CHANGE OR REMOVE THIS LINE)
	process(clock, reset) is
        if(reset) then
            currentState <= IDLE;
        elsif(rising_edge(clock)) then
            currentState <= nextState;
        end if;            
    end processs;
	-- memory register (DO NOT CHANGE OR REMOVE THIS LINE)
	
	
	-- output-logic (DO NOT CHANGE OR REMOVE THIS LINE)
    y <= '1' when (currentState = S1A or currentState = S0B) else
         '0';
    -- end-output-logic (DO NOT CHANGE OR REMOVE THIS LINE)
end architecture;

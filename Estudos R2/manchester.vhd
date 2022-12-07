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
	type State is (IDLE, S0A, S0B, S1A, S1B);
	signal currentState, nextState: State;
begin
	-- next-state logic (DO NOT CHANGE OR REMOVE THIS LINE)
	process(clock, reset) is
    begin
        case currentState is
            when IDLE => 
                if(v='0') then
                    nextState <= IDLE;
                elsif(v='1' and d='1') then
                    nextState <= S1A;
                elsif(v='1' and d='0') then
                    nextState <= S0A;
                end if;

            when S0A =>
                nextState <= S0B;

            when S0B =>
                if(v='0') then
                    nextState <= IDLE;  
                elsif(v='1' and d='1') then
                    nextState <= S1A;
                elsif(v='1' and d='0') then
                    nextState <= S0A;
                end if;
            
            when S1A =>
                nextState <= S1B;
        
            when S1B =>
                if(v='0') then
                    nextState <= IDLE;  
                elsif(v='1' and d='1') then
                    nextState <= S1A;
                elsif(v='1' and d='0') then
                    nextState <= S0A;
                end if;
        end case;
    end process;
	-- end-next-state logic (DO NOT CHANGE OR REMOVE THIS LINE)
	
	
	-- memory register (DO NOT CHANGE OR REMOVE THIS LINE)
	process(clock, reset) is
	begin
        if(reset = '1') then
            currentState <= IDLE;
        elsif(rising_edge(clock)) then
            currentState <= nextState;
        end if;            
    end process;
	-- memory register (DO NOT CHANGE OR REMOVE THIS LINE)
	
	
	-- output-logic (DO NOT CHANGE OR REMOVE THIS LINE)
    y <= '1' when (currentState = S1A or currentState = S0B) else
         '0';
    -- end-output-logic (DO NOT CHANGE OR REMOVE THIS LINE)
end architecture;

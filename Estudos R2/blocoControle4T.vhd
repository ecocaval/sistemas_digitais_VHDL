library ieee;
use ieee.std_logic_1164.all;
use work.BC_State.all;

entity blocoControle4T is
	port(
		-- control in
		clock, reset, iniciar: in std_logic;
		-- control in (status signals from BC)
		zero, ov: in std_logic;
		-- control out 
		erro, pronto: out std_logic;
		-- control out (command signals to BC)
		scont, ccont, zAC, cAC, cT: out std_logic;
		-- Tests
		stateBC: out State
	);
end entity;

architecture descricaoComportamental of blocoControle4T is
    -- não acrescente nada aqui. State está definido no package work.BC_State
    signal nextState, currentState: State;
begin

	-- next-state logic (DO NOT CHANGE OR REMOVE THIS LINE)
	process(clock', reset)
	begin
	nextState <= currentState;

	if(reset = '1') then
		nextState <= S0;
		
	elsif (clock'event and clock = '1' ) then
		if(currentState = S0) then
			if(iniciar = '1') then
				nextState <= S1;
			else 
				nextState <= S0;
			end if;

		elsif (currentState = S1) then
			nextState <= S2;

		elsif (currentState = S2) then
			if(zero = '0') then
				nexState <= S0;
			else 
				nexState <= S3;
			end if;

		elsif (currentState = S3) then
			if(ov = '1') then
				nextState <= E;
			else 
				nextState <= S2;
			end if;

		elsif (currentState = E) then
			if(iniciar = '1') then
				nextState <= S1;
			else 
				nextState <= E;
			end if;
		end if;
	end if;
	end process;
	-- end-next-state logic (DO NOT CHANGE OR REMOVE THIS LINE)
	
	
	-- memory register (DO NOT CHANGE OR REMOVE THIS LINE)
	
	
	-- output-logic (DO NOT CHANGE OR REMOVE THIS LINE)

	stateBC <= currentState;
    -- COMPLETE
    -- end-output-logic (DO NOT CHANGE OR REMOVE THIS LINE)
end architecture;

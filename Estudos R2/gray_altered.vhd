-- Complete abaixo com o nome dos alunos que fazem esta avaliacao (sem caracteres especiais nos nomes, como acentos)
-- ALUNO 1:
-- ALUNO 2:

-- Um codificador gray recebe um valor binario B de N bits e devolve um valor gray G de N bits, em que cada bit i do codigo gray eh dado por G[i] = b[i+1] xor b[i]. Considere B[N]=0
-- Um decodificador gray recebe um valor gray G de N bits e devolve um valor binario B de N bits, em que cada bit i do valor binario eh dado por B[i] = B[i+1] xor G[i]. Considere B[N]=0

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity grayCounter is
	generic(	width: positive := 16;
				generateLoad: boolean := true;
				generateEnb: boolean := true;
				generateInc: boolean := true;
				resetValue: integer := 0 );
	port(	-- control
			clock, reset, load: in std_logic;
			enb, inc: in std_logic;
			-- data
			input: in std_logic_vector(width-1 downto 0);
			output: out std_logic_vector(width-1 downto 0)	);
end entity;


architecture behav0 of grayCounter is
    -- Nao altere as duas linhas abaixo
    subtype state is signed(width-1 downto 0);
    signal nextState, currentState: state;
    -- COMPLETE AQUI, SE NECESSARIO
    signal tempEnb, tempLoad, tempInc, tempIn ,tempOut: state;
begin
	-- next-state logic (DO NOT CHANGE OR REMOVE THIS LINE)


    genInc: if generateInc generate
        tempInc <= to_signed(1, currentState'length) when inc='1' else
                   to_signed(-1, currentState'length);
	end generate;
	
	notgenInc: if not generateInc generate
	    tempInc <= to_signed(1, currentState'length);
	end generate;
	
	genEnb: if generateEnb generate
	    tempEnb <= currentState when enb='0' else
	               currentState + tempInc;
	end generate;
	
	notgenEnb: if not generateEnb generate
	    tempEnb <= currentState + tempInc;
	end generate;
	
	genLoad: if generateLoad generate
	    genLoad2: for i in 0 to input'length - 2 generate
	        tempIn(i) <= tempIn(i+1) xor input(i);
	    end generate;
		tempIn(input'length-1) <= input(input'length-1);
	    tempLoad <= tempIn when load='1' else
	                tempEnb;
	end generate;
	
	notgenLoad: if not generateLoad generate
	    tempLoad <= tempEnb;
	end generate;
	
	nextState<=tempLoad;
	-- end-next-state logic (DO NOT CHANGE OR REMOVE THIS LINE)
	
	-- memory register (DO NOT CHANGE OR REMOVE THIS LINE)
	process(clock, reset) is
	begin
		if reset='1' then
			currentState <= (to_signed(resetValue, currentState'length));
		elsif rising_edge(clock) then
			currentState <= nextState;
		end if;
	end process;
	-- memory register (DO NOT CHANGE OR REMOVE THIS LINE)
	
	-- output-logic (DO NOT CHANGE OR REMOVE THIS LINE)
	genOut: for i in 0 to (currentState'length - 2) generate
		output(i) <= currentState(i+1) xor currentState(i);
	end generate;
	output(currentState'length - 1) <= currentState(currentState'length-1);
            
    -- end-output-logic (DO NOT CHANGE OR REMOVE THIS LINE)
end architecture;
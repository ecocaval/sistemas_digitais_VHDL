-- Complete abaixo com o nome dos alunos que fazem esta avaliacao (sem caracteres especiais nos nomes, como acentos)
-- ALUNO 1:	
-- ALUNO 2:

-- Um codificador gray recebe um valor binario B de N bits e devolve um valor gray G de N bits, em que cada bit i do codigo gray eh dado por G[i] = b[i+1] xor b[i]. Considere B[N]=0
-- Um decodificador gray recebe um valor gray G de N bits e devolve um valor binario B de N bits, em que cada bit i do valor binario eh dado por B[i] = B[i+1] xor G[i]. Considere B[N]=0

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity grayCounter is
	generic( width: positive := 16;
			 generateLoad: boolean := true;
			 generateEnb: boolean := true;
			 generateInc: boolean := true;
			 resetValue: integer := 0 
	);
	port( -- control
		  clock, reset, load: in std_logic;
		  enb, inc: in std_logic;
		  -- data
		  input: in std_logic_vector(width-1 downto 0);
		  output: out std_logic_vector(width-1 downto 0)	
	);
end entity;

architecture behav0 of grayCounter is
    component grayEncoder is
		generic(width: natural);
		port(binInput: std_logic_vector(width-1 downto 0);
			 grayOutput: out std_logic_vector(width-1 downto 0));
	end component;

	-- Nao altere as duas linhas abaixo
    subtype state is signed(width-1 downto 0);
    signal nextState, currentState: state;
	signal nexState_std_logic: std_logic_vector(width-1 downto 0)
    
begin
	-- next-state logic (DO NOT CHANGE OR REMOVE THIS LINE)
	next_state_with_load: if generateLoad and not generateEnb and not generateInc
		nextState <= signed(input) when load='1' else 
			         currentState;			         
	end generate;	

	next_state_with_inc: if generateLoad and not generateEnb and not generateInc
		nextState <= signed(input+1) when (inc = 1) else
			         nextState - 1; 
	end generate;

	next_state_complete: if generateLoad and generateEnb and generateInc
		nextState <= signed(input) when load='1' else
					 signed(nexState_std_logic) when enb = '1'
	end generate;
	-- end-next-state logic (DO NOT CHANGE OR REMOVE THIS LINE)
	
	
	-- memory register (DO NOT CHANGE OR REMOVE THIS LINE)
	process(clock, reset) is
	begin
		if reset='1' then
			currentState <= (to_signed(resetValue, currentState'length));
		elsif rising_edge(clock) then
			currentState <= nextState;
		else 
			currentState <= currentState;
		end if;
	end process;	
	
	-- output-logic (DO NOT CHANGE OR REMOVE THIS LINE)
    
    -- end-output-logic (DO NOT CHANGE OR REMOVE THIS LINE)
end architecture;
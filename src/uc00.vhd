library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity uc00 is
	port( 
		clk       : in std_logic;
		instrucao : in unsigned(10 downto 0);
		comando   : out unsigned(16 downto 0)
	);
end entity;

architecture a_uc00 of uc00 is
	type mem is array (0 to 15) of unsigned(16 downto 0);
	constant conteudo_uc00 : mem := (
		-- caso endereco => conteudo
		--0  => "00000" & instrucao, -- NOP / MOVWF / RETFIE / RETURN / SLEEP / CLRWDT
		--1  => "00001" & instrucao, -- CLRF / CLRW
		2  => "001000" & instrucao, -- SUBWF (8)
		3  => "001001" & instrucao, -- DECF (9)
		4  => "001010" & instrucao, -- IORWF (10)
		5  => "001011" & instrucao, -- ANDWF (11)
		6  => "001100" & instrucao, -- XORWF (12)
		7  => "001101" & instrucao, -- ADDWF (13)
		8  => "001110" & instrucao, -- MOVF (14)
		9  => "001111" & instrucao, -- COMF (15)
		10 => "010000" & instrucao, -- INCF (16)
		11 => "010001" & instrucao, -- DECFSZ (17)
		12 => "010010" & instrucao, -- RRF (18)
		13 => "010011" & instrucao, -- RLF (19)
		14 => "010100" & instrucao, -- SWAPF (20)
		15 => "010101" & instrucao, -- INCFSZ (21)
		-- abaixo: casos omissos => (zero em todos os bits)
		others => (others=>'0')
	);
	signal tmp: unsigned(16 downto 0);

begin
	tmp <= "000000" & instrucao when instrucao = "00000000000" else -- NOP (0)
		   "000001" & instrucao when instrucao = "00001000000" else -- MOVWF (1)
		   "000010" & instrucao when instrucao = "00000001001" else -- RETFIE (2)
		   "000011" & instrucao when instrucao = "00000001000" else -- RETURN (3)
		   "000100" & instrucao when instrucao = "00001100011" else -- SLEEP (4)
		   "000101" & instrucao when instrucao = "00001100100" else -- CLRWDT (5)
		   "000110" & instrucao when instrucao(6) = '1' else --------- CLRF (6)
		   "000111" & instrucao when instrucao(6) = '0' else --------- CLRW (7)
			conteudo_uc00(to_integer(instrucao(10 downto 7)));
	process(clk)
	begin
		if(rising_edge(clk)) then
			comando <= tmp;
		end if;
	end process;
end architecture;
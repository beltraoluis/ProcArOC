library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity uC10 is
	port( 
		clk       : in std_logic;
		instrucao : in unsigned(10 downto 0);
		comando   : out unsigned(16 downto 0)
	);
end entity;

architecture a_uc10 of uc10 is
	--type mem is array (0 to 1) of unsigned(11 downto 0);
	--constant conteudo_uc10 : mem := (
		-- caso instrucao => conteudo
		--0  => "00000" & instrucao, --CALL
		--1  => "00000" & instrucao, --GOTO
		-- abaixo: casos omissos => (zero em todos os bits)
		--others => (others=>'0')
	--);
	signal mem: unsigned(16 downto 0);
begin
	mem <= "011010" & instrucao when instrucao(10)='0' else -- CALL (26)
		   "011011" & instrucao when instrucao(10)='1' else -- GOTO (27)
		   "00000000000000000";
	process(clk)
	begin
		if(rising_edge(clk)) then
			comando <= mem;
		end if;
	end process;
end architecture;
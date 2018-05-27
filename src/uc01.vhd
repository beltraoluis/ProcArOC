library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity uc01 is
	port( 
		clk       : in std_logic;
		instrucao : in unsigned(10 downto 0);
		comando   : out unsigned(16 downto 0)
	);
end entity;

architecture a_uc01 of uc01 is
	type mem is array (0 to 3) of unsigned(16 downto 0);
	constant conteudo_uc01 : mem := (
		-- caso endereco => conteudo
		0  => "010110" & instrucao, --BCF (22)
		1  => "010111" & instrucao, --BSF (23)
		2  => "011000" & instrucao, --BTFSC (24)
		3  => "011001" & instrucao, --BTFSS (25)
		-- abaixo: casos omissos => (zero em todos os bits)
		others => (others=>'0')
	);
begin
	process(clk)
	begin
		if(rising_edge(clk)) then
			comando <= conteudo_uc01(to_integer(instrucao(10 downto 9)));
		end if;
	end process;
end architecture;
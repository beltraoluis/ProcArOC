library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity ucg is
	port( 
		clk       : in std_logic;
		instrucao : in unsigned(16 downto 0);
		comando   : out unsigned(31 downto 0)
	);
end entity;

architecture a_ucg of ucg is
	type mem is array (0 to 64) of unsigned(31 downto 0);
	constant conteudo_ucg : mem := (
		-- caso endereco => conteudo
		27  => B"0_000000_000000_000000_0_0_0" & instrucao(9 downto 0), -- GOTO
		-- abaixo: casos omissos => (zero em todos os bits)
		others => (others=>'0')
	);
begin
	process(clk)
	begin
		if(rising_edge(clk)) then
			comando <= conteudo_ucg(to_integer(instrucao(16 downto 11)));
		end if;
	end process;
end architecture;
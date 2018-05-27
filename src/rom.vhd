library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity rom is
	port( 
		clk : in std_logic;
		endereco : in unsigned(6 downto 0);
		dado : out unsigned(12 downto 0)
	);
end entity;

architecture a_rom of rom is
	type mem is array (0 to 127) of unsigned(12 downto 0);
	constant conteudo_rom : mem := (
		-- caso endereco => conteudo
		0  => "0000000000000",
		1  => "0000000000001",
		2  => "0000000000010",
		3  => "0000000000011",
		4  => "0000000000100",
		5  => "0000000000101",
		6  => "0000000000110",
		7  => "0000000000111",
		8  => "0000000001000",
		9  => "0000000001001",
		10 => "0000000001010",
		11 => "0000000001011",
		12 => "0000000001100",
		13 => "0000000001101",
		14 => "0000000001110",
		-- abaixo: casos omissos => (zero em todos os bits)
		others => (others=>'0')
	);
begin
	process(clk)
	begin
		if(rising_edge(clk)) then
			dado <= conteudo_rom(to_integer(endereco));
		end if;
	end process;
end architecture;
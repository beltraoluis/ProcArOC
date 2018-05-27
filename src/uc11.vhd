library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity uC11 is
	port( 
		clk       : in std_logic;
		instrucao : in unsigned(10 downto 0);
		comando   : out unsigned(16 downto 0)
	);
end entity;

architecture a_uc11 of uc11 is
	type mem is array (0 to 15) of unsigned(16 downto 0);
	constant conteudo_uc11 : mem := (
		-- caso instrucao => conteudo
		0  => "011100" & instrucao, --MOVLW (28)
		4  => "011101" & instrucao, --RETLW (29)
		8  => "011110" & instrucao, --IORLW (30)
		9  => "011111" & instrucao, --ANDLW (31)
		10 => "100000" & instrucao, --XORLW (32)
		12 => "100001" & instrucao, --SUBLW (33)
		14 => "100010" & instrucao, --ADDLW (34)
		-- abaixo: casos omissos => (zero em todos os bits)
		others => (others=>'0')
	);
begin
	process(clk)
	begin
		if(rising_edge(clk)) then
			comando <= conteudo_uc11(to_integer(instrucao(10 downto 7)));
		end if;
	end process;
end architecture;
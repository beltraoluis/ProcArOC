library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ula_tb is
end;

-- executar por 300ns no minimo

architecture a_ula_tb of ula_tb is
	-- ula
	component ula
		port(
			inputA: in signed(15 downto 0);
			inputB: in signed(15 downto 0);
			selOp : in signed(1 downto 0);
			result: out unsigned(15 downto 0);
			equal : out std_logic
		);
	end component;
	-- sinais
	signal inputA, inputB: signed(15 downto 0);
	signal result: unsigned(15 downto 0);
	signal selOp: unsigned(1 downto 0);
	signal equal: std_logic;

begin
	alu: ula port map(
		inputA => inputA,
		inputB => inputB,
		result => result,
		equal  => equal
	);

	process
	begin
		inputA <= B"0000_0000_0000_0001";
		inputB <= B"0000_0000_0000_0001";
		selOp  <= "00"; 
		wait for 50 ns;
		inputA <= B"0000_0000_0000_0001";
		inputB <= B"0000_0000_0000_0001";
		selOp  <= "01"; 
		wait for 50 ns;
		inputA <= B"0000_0000_0000_0001";
		inputB <= B"0000_0000_0000_0001";
		selOp  <= "10"; 
		wait for 50 ns;
		inputA <= B"0000_0000_0000_0001";
		inputB <= B"0000_0000_0000_0001";
		wait for 50 ns;
		inputA <= B"0000_0000_0000_0000";
		inputB <= B"0000_0000_0000_0001";
		wait for 50 ns;
	end process;
end architecture;
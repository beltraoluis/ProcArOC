library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ram_tb is
end;

-- executar por 1650ns no minimo

architecture a_ram_tb of ram_tb is
	component banco_reg
		port(
			clk      : in std_logic;
			endereco : in unsigned(6 downto 0);
			wr_en    : in std_logic;
			dado_in  : in unsigned(15 downto 0);
			dado_out : out unsigned(15 downto 0)
		);
	end component;

	signal clock, enable: std_logic;
	signal ende: unsigned(6 downto 0);
	signal input, output: unsigned(15 downto 0);

begin
	mem: ram port map(
		clk      => clock,
		endereco => ende,
		wr_en    => enable
		dado_in  => input
		dado_out => output
	);

	process
	begin
		clk <= '0';
		wait for 50 ns;
		clk <= '1';
		wait for 50 ns;
	end process;
	process
	begin
		wait for 20 ns;
		-- TODO:
	end process;
end architecture;
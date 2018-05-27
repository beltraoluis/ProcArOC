library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity reg16bits_tb is
end;

-- executar por 550ns no minimo

architecture a_reg16bits_tb of reg16bits_tb is
	component reg16bits -- registrador
		port(
			clk      : in std_logic;
			rst      : in std_logic;
			wr_enable: in std_logic;
			data_in  : in unsigned(15 downto 0);
			data_out : out unsigned(15 downto 0)
		);
	end component;

	signal clk, rst, wr_enable: std_logic;
	signal data_in, data_out: unsigned(15 downto 0);

begin 
	reg: reg16bits port map(
		clk       => clk,
		rst       => rst,
		wr_enable => wr_enable,
		data_in   => data_in(15 downto 0),
		data_out  => data_out(15 downto 0)
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
		rst <= '1';
		wait for 50 ns;
		wr_enable <= '1';
		wait for 50 ns;
		data_in <= B"0000_0000_0000_0001";
		wait for 50 ns;
		data_in <= B"0000_0000_0000_0010";
		wait for 50 ns;	
		data_in <= B"0000_0000_0000_0011";
		wait for 50 ns;	
		data_in <= B"0000_0000_0000_0100";
		wait for 50 ns;	
		data_in <= B"0000_0000_0000_0101";
		wait for 50 ns;
		wr_enable <= '0';
		wait for 50 ns;	
		data_in <= B"0000_0000_0000_0110";
		wait for 50 ns;	
		data_in <= B"0000_0000_0000_0111";
		wait for 50 ns;		
	end process;
end architecture;


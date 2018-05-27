library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity banco_reg_tb is
end;

-- executar por 1650ns no minimo

architecture a_banco_reg_tb of banco_reg_tb is
	component banco_reg
		port(
			clk      : in std_logic;
			wr_enable: in std_logic;
			r_reg1   : in unsigned(4 downto 0);
			r_reg2   : in unsigned(4 downto 0);
			wr_reg   : in unsigned(4 downto 0);
			wr_data  : in unsigned(15 downto 0);
			r_data1  : out unsigned(15 downto 0);
			r_data2  : out unsigned(15 downto 0)
		);
	end component;

	signal clk, wr_enable: std_logic;
	signal r_reg1, r_reg2, wr_reg: unsigned(4 downto 0);
	signal r_data1, r_data2, wr_data: unsigned(15 downto 0);

begin
	banco: banco_reg port map(
		clk       => clk,
		wr_enable => wr_enable,
		r_reg1    => r_reg1(4 downto 0),
		r_reg2    => r_reg2(4 downto 0),
		wr_reg    => wr_reg(4 downto 0),
		wr_data   => wr_data(15 downto 0),
		r_data1   => r_data1(15 downto 0),
		r_data2   => r_data2(15 downto 0)
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
		wr_enable <= '1';
		wr_reg    <= B"0_0000";
		wr_data   <= B"0000_0000_0000_0000";
		wait for 50 ns;
		wr_reg    <= B"0_0001";
		wr_data   <= B"0000_0000_0000_0001";
		wait for 50 ns;
		wr_reg    <= B"0_0010";
		wr_data   <= B"0000_0000_0000_0010";
		wait for 50 ns;
		wr_reg    <= B"0_0011";
		wr_data   <= B"0000_0000_0000_0011";
		wait for 50 ns;
		wr_reg    <= B"0_0100";
		wr_data   <= B"0000_0000_0000_0100";
		wait for 50 ns;
		wr_reg    <= B"0_0101";
		wr_data   <= B"0000_0000_0000_0101";
		wait for 50 ns;
		wr_reg    <= B"0_0110";
		wr_data   <= B"0000_0000_0000_0110";
		wait for 50 ns;
		wr_reg    <= B"0_0111";
		wr_data   <= B"0000_0000_0000_0111";
		wait for 50 ns;
		wr_reg    <= B"0_1000";
		wr_data   <= B"0000_0000_0000_1000";
		wait for 50 ns;
		wr_reg    <= B"0_1001";
		wr_data   <= B"0000_0000_0000_1001";
		wait for 50 ns;
		wr_reg    <= B"0_1010";
		wr_data   <= B"0000_0000_0000_1010";
		wait for 50 ns;
		wr_reg    <= B"0_1011";
		wr_data   <= B"0000_0000_0000_1011";
		wait for 50 ns;
		wr_reg    <= B"0_1100";
		wr_data   <= B"0000_0000_0000_1100";
		wait for 50 ns;
		wr_reg    <= B"0_1101";
		wr_data   <= B"0000_0000_0000_1101";
		wait for 50 ns;
		wr_reg    <= B"0_1110";
		wr_data   <= B"0000_0000_0000_1110";
		wait for 50 ns;
		wr_reg    <= B"0_1111";
		wr_data   <= B"0000_0000_0000_1111";
		wait for 50 ns;
		wr_reg    <= B"1_0000";
		wr_data   <= B"0000_0000_0001_0000";
		wait for 50 ns;
		wr_reg    <= B"1_0001";
		wr_data   <= B"0000_0000_0001_0001";
		wait for 50 ns;
		wr_reg    <= B"1_0010";
		wr_data   <= B"0000_0000_0001_0010";
		wait for 50 ns;
		wr_reg    <= B"1_0011";
		wr_data   <= B"0000_0000_0001_0011";
		wait for 50 ns;
		wr_reg    <= B"1_0100";
		wr_data   <= B"0000_0000_0001_0100";
		wait for 50 ns;
		wr_reg    <= B"1_0101";
		wr_data   <= B"0000_0000_0001_0101";
		wait for 50 ns;
		wr_reg    <= B"1_0110";
		wr_data   <= B"0000_0000_0001_0110";
		wait for 50 ns;
		wr_reg    <= B"1_0111";
		wr_data   <= B"0000_0000_0001_0111";
		wait for 50 ns;
		wr_reg    <= B"1_1000";
		wr_data   <= B"0000_0000_0001_1000";
		wait for 50 ns;
		wr_reg    <= B"1_1001";
		wr_data   <= B"0000_0000_0001_1001";
		wait for 50 ns;
		wr_reg    <= B"1_1010";
		wr_data   <= B"0000_0000_0001_1010";
		wait for 50 ns;
		wr_reg    <= B"1_1011";
		wr_data   <= B"0000_0000_0001_1011";
		wait for 50 ns;
		wr_reg    <= B"1_1100";
		wr_data   <= B"0000_0000_0001_1100";
		wait for 50 ns;
		wr_reg    <= B"1_1101";
		wr_data   <= B"0000_0000_0001_1101";
		wait for 50 ns;
		wr_reg    <= B"1_1110";
		wr_data   <= B"0000_0000_0001_1110";
		wait for 50 ns;
		wr_reg    <= B"1_1111";
		wr_data   <= B"0000_0000_0001_1111";
		wait for 50 ns;
	end process;
end architecture;
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity reg_ula is
	port(
		clk      : in std_logic;
		wr_enable: in std_logic;
		selOp : in unsigned(1 downto 0);
		r_reg1   : in unsigned(4 downto 0);
		r_reg2   : in unsigned(4 downto 0);
		wr_reg   : in unsigned(4 downto 0);
		wr_data  : in unsigned(15 downto 0);
		result: out unsigned(15 downto 0);
		equal : out std_logic
	);
end entity;

architecture a_reg_ula of reg_ula is
	component banco_reg
		port(
			clk      : in std_logic;
			wr_enable: in std_logic;
			r_reg1   : in unsigned(4 downto 0);
			r_reg2   : in unsigned(4 downto 0);
			wr_reg   : in unsigned(4 downto 0);
			wr_data  : in unsigned(15 downto 0);
			r_data1  : out signed(15 downto 0);
			r_data2  : out signed(15 downto 0)
		);
	end component;
	component ula
		port(
			inputA: in signed(15 downto 0);
			inputB: in signed(15 downto 0);
			selOp : in unsigned(1 downto 0);
			result: out unsigned(15 downto 0);
			equal : out std_logic
		);
	end component;

	signal data1, data2: signed(15 downto 0);

begin
	mem: banco_reg port map(
		clk       => clk,
		wr_enable => wr_enable,
		r_reg1    => r_reg1,
		r_reg2    => r_reg2,
		wr_reg    => wr_reg,
		wr_data   => wr_data,
		r_data1   => data1,
		r_data2   => data2
	);
	alu: ula port map(
		inputA => data1,
		inputB => data2,
		selOp  => selOp,
		result => result,
		equal  => equal
	);
end architecture;
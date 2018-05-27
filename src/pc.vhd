library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity pc is
	port( 
		clock  : in std_logic;
		reset  : in std_logic;
		enable : in std_logic;
		op     : in std_logic;
		dt_in  : in unsigned(12 downto 0);
		dt_out : out unsigned(12 downto 0)
	);
end entity;

architecture a_pc of pc is
	component add is
		port(
			data_in  : in unsigned(12 downto 0);
			data_out : out unsigned(12 downto 0)
		);
	end component;

	component reg13bits is
		port(
			clk      : in std_logic;
			rst      : in std_logic;
			wr_enable: in std_logic;
			data_in  : in unsigned(12 downto 0);
			data_out : out unsigned(12 downto 0)
		);
	end component;

	component mux13sl2 is
		port(
			sel       : in std_logic;
			data_in0 : in unsigned(12 downto 0);
			data_in1 : in unsigned(12 downto 0);
			data_out : out unsigned(12 downto 0)
		);
	end component;

	signal data, data_i, data_o: unsigned(12 downto 0);

begin
	reg: reg13bits port map(
			clk       => clock,
			rst       => reset,
			wr_enable => enable,
			data_in   => data_i,
			data_out  => data
		);
	plus: add port map(
			data_in  => data,
			data_out => data_o
		);
	mux: mux13sl2 port map(
			sel      => op,
			data_in0 => dt_in,
			data_in1 => data_o,
			data_out => data_i
		);
	dt_out <= data;
end architecture;
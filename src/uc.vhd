library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity uc is
	 port( 
	 	clk   : in std_logic;
	 	clear : in std_logic;
	 	instr : in unsigned(12 downto 0);
	 	cmd   : out unsigned(31 downto 0)
	 );
end entity;

architecture a_uc of uc is
	component demux10sl4 is
		port(
			sel       : in unsigned(1 downto 0);
			data_in   : in unsigned(10 downto 0);
			data_out0 : out unsigned(10 downto 0);
			data_out1 : out unsigned(10 downto 0);
			data_out2 : out unsigned(10 downto 0);
			data_out3 : out unsigned(10 downto 0)
		);
	end component;

	component mux16sl4 is
		port(
			sel      : in unsigned(1 downto 0);
			data_in0 : in unsigned(16 downto 0);
			data_in1 : in unsigned(16 downto 0);
			data_in2 : in unsigned(16 downto 0);
			data_in3 : in unsigned(16 downto 0);
			data_out : out unsigned(16 downto 0)
		);
	end component;

	component uc00 is
		port( 
			clk       : in std_logic;
			instrucao : in unsigned(10 downto 0);
			comando   : out unsigned(16 downto 0)
		);
	end component;

	component uc01 is
		port( 
			clk       : in std_logic;
			instrucao : in unsigned(10 downto 0);
			comando   : out unsigned(16 downto 0)
		);
	end component;

	component uc02 is
		port( 
			clk       : in std_logic;
			instrucao : in unsigned(10 downto 0);
			comando   : out unsigned(16 downto 0)
		);
	end component;

	component uc03 is
		port( 
			clk       : in std_logic;
			instrucao : in unsigned(10 downto 0);
			comando   : out unsigned(16 downto 0)
		);
	end component;

	component mux13sl2 is
		port(
			sel      : in std_logic;
			data_in0 : in unsigned(12 downto 0);
			data_in1 : in unsigned(12 downto 0);
			data_out : out unsigned(12 downto 0)
		);
	end component;

	component ucg is
		port( 
			clk       : in std_logic;
			instrucao : in unsigned(16 downto 0);
			comando   : out unsigned(31 downto 0)
		);
	end component;

	signal data_i0, data_i1, data_i2, data_i3: unsigned(10 downto 0);
	signal data_o0, data_o1, data_o2, data_o3, data_o: unsigned(16 downto 0);

begin
	demux: demux10sl4 port map(
		sel       => instr(12 downto 11),
		data_in   => instr(10 downto 0),
		data_out0 => data_i0,
		data_out1 => data_i1,
		data_out2 => data_i2,
		data_out3 => data_i3
	);
	u0: uc00 port map(
		clk       => clear,
		instrucao => data_i0(10 downto 0),
		comando   => data_o0
	);
	u1: uc01 port map(
		clk       => clear,
		instrucao => data_i1(10 downto 0),
		comando   => data_o1
	);
	u2: uc02 port map(
		clk       => clear,
		instrucao => data_i2(10 downto 0),
		comando   => data_o2
	);
	u3: uc03 port map(
		clk       => clear,
		instrucao => data_i3(10 downto 0),
		comando   => data_o3
	);
	mux: mux16sl4 port map(
		sel      => instr(12 downto 11),
		data_in0 => data_o0,
		data_in1 => data_o1,
		data_in2 => data_o2,
		data_in3 => data_o3,
		data_out => data_o
	);
	ucu: ucg port map(
		clk       => clear,
		instrucao => data_o,
		comando   => cmd
	);
end architecture;
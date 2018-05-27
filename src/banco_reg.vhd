library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity banco_reg is
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
end entity;

architecture a_banco_reg of banco_reg is
	component reg16bits is
		port(
			clk      : in std_logic;
			rst      : in std_logic;
			wr_enable: in std_logic;
			data_in  : in unsigned(15 downto 0);
			data_out : out unsigned(15 downto 0)
		);
	end component;
	component mux5bits is
		port(
			seletor: in unsigned(4 downto 0);
			in00   : in unsigned(15 downto 0);
			in01   : in unsigned(15 downto 0);
			in02   : in unsigned(15 downto 0);
			in03   : in unsigned(15 downto 0);
			in04   : in unsigned(15 downto 0);
			in05   : in unsigned(15 downto 0);
			in06   : in unsigned(15 downto 0);
			in07   : in unsigned(15 downto 0);
			in08   : in unsigned(15 downto 0);
			in09   : in unsigned(15 downto 0);
			in10   : in unsigned(15 downto 0);
			in11   : in unsigned(15 downto 0);
			in12   : in unsigned(15 downto 0);
			in13   : in unsigned(15 downto 0);
			in14   : in unsigned(15 downto 0);
			in15   : in unsigned(15 downto 0);
			in16   : in unsigned(15 downto 0);
			in17   : in unsigned(15 downto 0);
			in18   : in unsigned(15 downto 0);
			in19   : in unsigned(15 downto 0);
			in20   : in unsigned(15 downto 0);
			in21   : in unsigned(15 downto 0);
			in22   : in unsigned(15 downto 0);
			in23   : in unsigned(15 downto 0);
			in24   : in unsigned(15 downto 0);
			in25   : in unsigned(15 downto 0);
			in26   : in unsigned(15 downto 0);
			in27   : in unsigned(15 downto 0);
			in28   : in unsigned(15 downto 0);
			in29   : in unsigned(15 downto 0);
			in30   : in unsigned(15 downto 0);
			in31   : in unsigned(15 downto 0);
			out00  : out signed(15 downto 0)
		);
	end component;
	component demux5bits is
		port(
			seletor: in  unsigned(4 downto 0);
			out00  : out std_logic;
			out01  : out std_logic;
			out02  : out std_logic;
			out03  : out std_logic;
			out04  : out std_logic;
			out05  : out std_logic;
			out06  : out std_logic;
			out07  : out std_logic;
			out08  : out std_logic;
			out09  : out std_logic;
			out10  : out std_logic;
			out11  : out std_logic;
			out12  : out std_logic;
			out13  : out std_logic;
			out14  : out std_logic;
			out15  : out std_logic;
			out16  : out std_logic;
			out17  : out std_logic;
			out18  : out std_logic;
			out19  : out std_logic;
			out20  : out std_logic;
			out21  : out std_logic;
			out22  : out std_logic;
			out23  : out std_logic;
			out24  : out std_logic;
			out25  : out std_logic;
			out26  : out std_logic;
			out27  : out std_logic;
			out28  : out std_logic;
			out29  : out std_logic;
			out30  : out std_logic;
			out31  : out std_logic;
			in00   : in std_logic
		);
	end component;
	signal enable: std_logic;
	signal enable00, enable01, enable02, enable03: std_logic;
	signal enable04, enable05, enable06, enable07: std_logic;
	signal enable08, enable09, enable10, enable11: std_logic;
	signal enable12, enable13, enable14, enable15: std_logic;
	signal enable16, enable17, enable18, enable19: std_logic;
	signal enable20, enable21, enable22, enable23: std_logic;
	signal enable24, enable25, enable26, enable27: std_logic;
	signal enable28, enable29, enable30, enable31: std_logic;
	signal input: unsigned(15 downto 0);
	signal output00, output01, output02, output03: unsigned(15 downto 0);
	signal output04, output05, output06, output07: unsigned(15 downto 0);
	signal output08, output09, output10, output11: unsigned(15 downto 0);
	signal output12, output13, output14, output15: unsigned(15 downto 0);
	signal output16, output17, output18, output19: unsigned(15 downto 0);
	signal output20, output21, output22, output23: unsigned(15 downto 0);
	signal output24, output25, output26, output27: unsigned(15 downto 0);
	signal output28, output29, output30, output31: unsigned(15 downto 0);
	signal clock: std_logic;
	signal reset: std_logic;
begin
	demux: demux5bits port map(
		seletor => wr_reg,
		out00  => enable00,
		out01  => enable01,
		out02  => enable02,
		out03  => enable03,
		out04  => enable04,
		out05  => enable05,
		out06  => enable06,
		out07  => enable07,
		out08  => enable08,
		out09  => enable09,
		out10  => enable10,
		out11  => enable11,
		out12  => enable12,
		out13  => enable13,
		out14  => enable14,
		out15  => enable15,
		out16  => enable16,
		out17  => enable17,
		out18  => enable18,
		out19  => enable19,
		out20  => enable20,
		out21  => enable21,
		out22  => enable22,
		out23  => enable23,
		out24  => enable24,
		out25  => enable25,
		out26  => enable26,
		out27  => enable27,
		out28  => enable28,
		out29  => enable29,
		out30  => enable30,
		out31  => enable31,
		in00   => wr_enable
	);	
	reg00: reg16bits port map(
		clk       => clock,
		rst       => reset,
		wr_enable => enable00,
		data_in   => input,
		data_out  => output00
	);	
	reg01: reg16bits port map(
		clk       => clock,
		rst       => reset,
		wr_enable => enable01,
		data_in   => input,
		data_out  => output01
	);	
	reg02: reg16bits port map(
		clk       => clock,
		rst       => reset,
		wr_enable => enable02,
		data_in   => input,
		data_out  => output02
	);	
	reg03: reg16bits port map(
		clk       => clock,
		rst       => reset,
		wr_enable => enable03,
		data_in   => input,
		data_out  => output03
	);	
	reg04: reg16bits port map(
		clk       => clock,
		rst       => reset,
		wr_enable => enable04,
		data_in   => input,
		data_out  => output04
	);	
	reg05: reg16bits port map(
		clk       => clock,
		rst       => reset,
		wr_enable => enable05,
		data_in   => input,
		data_out  => output05
	);	
	reg06: reg16bits port map(
		clk       => clock,
		rst       => reset,
		wr_enable => enable06,
		data_in   => input,
		data_out  => output06
	);	
	reg07: reg16bits port map(
		clk       => clock,
		rst       => reset,
		wr_enable => enable07,
		data_in   => input,
		data_out  => output07
	);	
	reg08: reg16bits port map(
		clk       => clock,
		rst       => reset,
		wr_enable => enable08,
		data_in   => input,
		data_out  => output08
	);	
	reg09: reg16bits port map(
		clk       => clock,
		rst       => reset,
		wr_enable => enable09,
		data_in   => input,
		data_out  => output09
	);	
	reg10: reg16bits port map(
		clk       => clock,
		rst       => reset,
		wr_enable => enable10,
		data_in   => input,
		data_out  => output10
	);	
	reg11: reg16bits port map(
		clk       => clock,
		rst       => reset,
		wr_enable => enable11,
		data_in   => input,
		data_out  => output11
	);	
	reg12: reg16bits port map(
		clk       => clock,
		rst       => reset,
		wr_enable => enable12,
		data_in   => input,
		data_out  => output12
	);	
	reg13: reg16bits port map(
		clk       => clock,
		rst       => reset,
		wr_enable => enable13,
		data_in   => input,
		data_out  => output13
	);	
	reg14: reg16bits port map(
		clk       => clock,
		rst       => reset,
		wr_enable => enable14,
		data_in   => input,
		data_out  => output14
	);	
	reg15: reg16bits port map(
		clk       => clock,
		rst       => reset,
		wr_enable => enable15,
		data_in   => input,
		data_out  => output15
	);	
	reg16: reg16bits port map(
		clk       => clock,
		rst       => reset,
		wr_enable => enable16,
		data_in   => input,
		data_out  => output16
	);	
	reg17: reg16bits port map(
		clk       => clock,
		rst       => reset,
		wr_enable => enable17,
		data_in   => input,
		data_out  => output17
	);	
	reg18: reg16bits port map(
		clk       => clock,
		rst       => reset,
		wr_enable => enable18,
		data_in   => input,
		data_out  => output18
	);	
	reg19: reg16bits port map(
		clk       => clock,
		rst       => reset,
		wr_enable => enable19,
		data_in   => input,
		data_out  => output19
	);	
	reg20: reg16bits port map(
		clk       => clock,
		rst       => reset,
		wr_enable => enable20,
		data_in   => input,
		data_out  => output20
	);	
	reg21: reg16bits port map(
		clk       => clock,
		rst       => reset,
		wr_enable => enable21,
		data_in   => input,
		data_out  => output21
	);	
	reg22: reg16bits port map(
		clk       => clock,
		rst       => reset,
		wr_enable => enable22,
		data_in   => input,
		data_out  => output22
	);	
	reg23: reg16bits port map(
		clk       => clock,
		rst       => reset,
		wr_enable => enable23,
		data_in   => input,
		data_out  => output23
	);	
	reg24: reg16bits port map(
		clk       => clock,
		rst       => reset,
		wr_enable => enable24,
		data_in   => input,
		data_out  => output24
	);	
	reg25: reg16bits port map(
		clk       => clock,
		rst       => reset,
		wr_enable => enable25,
		data_in   => input,
		data_out  => output25
	);	
	reg26: reg16bits port map(
		clk       => clock,
		rst       => reset,
		wr_enable => enable26,
		data_in   => input,
		data_out  => output26
	);	
	reg27: reg16bits port map(
		clk       => clock,
		rst       => reset,
		wr_enable => enable27,
		data_in   => input,
		data_out  => output27
	);	
	reg28: reg16bits port map(
		clk       => clock,
		rst       => reset,
		wr_enable => enable28,
		data_in   => input,
		data_out  => output28
	);	
	reg29: reg16bits port map(
		clk       => clock,
		rst       => reset,
		wr_enable => enable29,
		data_in   => input,
		data_out  => output29
	);	
	reg30: reg16bits port map(
		clk       => clock,
		rst       => reset,
		wr_enable => enable30,
		data_in   => input,
		data_out  => output30
	);	
	reg31: reg16bits port map(
		clk       => clock,
		rst       => reset,
		wr_enable => enable31,
		data_in   => input,
		data_out  => output31
	);
	mux1: mux5bits port map(
		seletor => r_reg1,
		in00    => output00,
		in01    => output01,
		in02    => output02,
		in03    => output03,
		in04    => output04,
		in05    => output05,
		in06    => output06,
		in07    => output07,
		in08    => output08,
		in09    => output09,
		in10    => output10,
		in11    => output11,
		in12    => output12,
		in13    => output13,
		in14    => output14,
		in15    => output15,
		in16    => output16,
		in17    => output17,
		in18    => output18,
		in19    => output19,
		in20    => output20,
		in21    => output21,
		in22    => output22,
		in23    => output23,
		in24    => output24,
		in25    => output25,
		in26    => output26,
		in27    => output27,
		in28    => output28,
		in29    => output29,
		in30    => output30,
		in31    => output31,
		out00   => r_data1
	);
	mux2: mux5bits port map(
		seletor => r_reg2,
		in00    => output00,
		in01    => output01,
		in02    => output02,
		in03    => output03,
		in04    => output04,
		in05    => output05,
		in06    => output06,
		in07    => output07,
		in08    => output08,
		in09    => output09,
		in10    => output10,
		in11    => output11,
		in12    => output12,
		in13    => output13,
		in14    => output14,
		in15    => output15,
		in16    => output16,
		in17    => output17,
		in18    => output18,
		in19    => output19,
		in20    => output20,
		in21    => output21,
		in22    => output22,
		in23    => output23,
		in24    => output24,
		in25    => output25,
		in26    => output26,
		in27    => output27,
		in28    => output28,
		in29    => output29,
		in30    => output30,
		in31    => output31,
		out00   => r_data2
	);
end architecture;
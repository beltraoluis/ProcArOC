library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mux5bits is
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
end entity;

architecture a_mux5bits of mux5bits is
begin
	out00 <= signed(std_logic_vector(in00)) when seletor = "00000" else
			 signed(std_logic_vector(in01)) when seletor = "00001" else
			 signed(std_logic_vector(in02)) when seletor = "00010" else
			 signed(std_logic_vector(in03)) when seletor = "00011" else
			 signed(std_logic_vector(in04)) when seletor = "00100" else
			 signed(std_logic_vector(in05)) when seletor = "00101" else
			 signed(std_logic_vector(in06)) when seletor = "00110" else
			 signed(std_logic_vector(in07)) when seletor = "00111" else
			 signed(std_logic_vector(in08)) when seletor = "01000" else
			 signed(std_logic_vector(in09)) when seletor = "01001" else
			 signed(std_logic_vector(in10)) when seletor = "01010" else
			 signed(std_logic_vector(in11)) when seletor = "01011" else
			 signed(std_logic_vector(in12)) when seletor = "01100" else
			 signed(std_logic_vector(in13)) when seletor = "01101" else
			 signed(std_logic_vector(in14)) when seletor = "01110" else
			 signed(std_logic_vector(in15)) when seletor = "01111" else
			 signed(std_logic_vector(in16)) when seletor = "10000" else
			 signed(std_logic_vector(in17)) when seletor = "10001" else
			 signed(std_logic_vector(in18)) when seletor = "10010" else
			 signed(std_logic_vector(in19)) when seletor = "10011" else
			 signed(std_logic_vector(in20)) when seletor = "10100" else
			 signed(std_logic_vector(in21)) when seletor = "10101" else
			 signed(std_logic_vector(in22)) when seletor = "10110" else
			 signed(std_logic_vector(in23)) when seletor = "10111" else
			 signed(std_logic_vector(in24)) when seletor = "11000" else
			 signed(std_logic_vector(in25)) when seletor = "11001" else
			 signed(std_logic_vector(in26)) when seletor = "11010" else
			 signed(std_logic_vector(in27)) when seletor = "11011" else
			 signed(std_logic_vector(in28)) when seletor = "11100" else
			 signed(std_logic_vector(in29)) when seletor = "11101" else
			 signed(std_logic_vector(in30)) when seletor = "11110" else
			 signed(std_logic_vector(in31)) when seletor = "11111" else
			 B"0000_0000_0000_0000";
			--1111110000000000
			--5432109876543210
			 
end architecture;

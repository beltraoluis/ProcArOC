library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity demux5bits is
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
end entity;

architecture a_demux5bits of demux5bits is
begin
	out00 <= in00 when seletor = "00000" else
			 '0';
	out01 <= in00 when seletor = "00001" else
			 '0';
	out02 <= in00 when seletor = "00010" else
			 '0';
	out03 <= in00 when seletor = "00011" else
			 '0';
	out04 <= in00 when seletor = "00100" else
			 '0';
	out05 <= in00 when seletor = "00101" else
			 '0';
	out06 <= in00 when seletor = "00110" else
			 '0';
	out07 <= in00 when seletor = "00111" else
			 '0';
	out08 <= in00 when seletor = "01000" else
			 '0';
	out09 <= in00 when seletor = "01001" else
			 '0';
	out10 <= in00 when seletor = "01010" else
			 '0';
	out11 <= in00 when seletor = "01011" else
			 '0';
	out12 <= in00 when seletor = "01100" else
			 '0';
	out13 <= in00 when seletor = "01101" else
			 '0';
	out14 <= in00 when seletor = "01110" else
			 '0';
	out15 <= in00 when seletor = "01111" else
			 '0';
	out16 <= in00 when seletor = "10000" else
			 '0';
	out17 <= in00 when seletor = "10001" else
			 '0';
	out18 <= in00 when seletor = "10010" else
			 '0';
	out19 <= in00 when seletor = "10011" else
			 '0';
	out20 <= in00 when seletor = "10100" else
			 '0';
	out21 <= in00 when seletor = "10101" else
			 '0';
	out22 <= in00 when seletor = "10110" else
			 '0';
	out23 <= in00 when seletor = "10111" else
			 '0';
	out24 <= in00 when seletor = "11000" else
			 '0';
	out25 <= in00 when seletor = "11001" else
			 '0';
	out26 <= in00 when seletor = "11010" else
			 '0';
	out27 <= in00 when seletor = "11011" else
			 '0';
	out28 <= in00 when seletor = "11100" else
			 '0';
	out29 <= in00 when seletor = "11101" else
			 '0';
	out30 <= in00 when seletor = "11110" else
			 '0';
	out31 <= in00 when seletor = "11111" else
			 '0';
			 
end architecture;

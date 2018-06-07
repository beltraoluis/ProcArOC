library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity demux10to4 is
	port(
		sel        : in unsigned(1 downto 0);
		data_in    : in unsigned(10 downto 0);
		data_out0 : out unsigned(10 downto 0);
		data_out1 : out unsigned(10 downto 0);
		data_out2 : out unsigned(10 downto 0);
		data_out3 : out unsigned(10 downto 0)
	);
end entity;

architecture a_demux10to4 of demux10to4 is
begin
	data_out0 <= data_in when sel="00" else
				 "00000000000";
	data_out1 <= data_in when sel="01" else
				 "00000000000";
	data_out2 <= data_in when sel="10" else
				 "00000000000";
	data_out3 <= data_in when sel="11" else
				 "00000000000";
end architecture;

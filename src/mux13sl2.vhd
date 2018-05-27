library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mux13sl2 is
	port(
		sel      : in std_logic;
		data_in0 : in unsigned(12 downto 0);
		data_in1 : in unsigned(12 downto 0);
		data_out : out unsigned(12 downto 0)
	);
end entity;

architecture a_mux13sl2 of mux13sl2 is
begin
	data_out <= data_in0 when sel='0' else
				data_in1 when sel='1' else
				"0000000000000";
end architecture;

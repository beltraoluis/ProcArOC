library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mux16sl4 is
	port(
		sel      : in unsigned(1 downto 0);
		data_in0 : in unsigned(16 downto 0);
		data_in1 : in unsigned(16 downto 0);
		data_in2 : in unsigned(16 downto 0);
		data_in3 : in unsigned(16 downto 0);
		data_out : out unsigned(16 downto 0)
	);
end entity;

architecture a_mux16sl4 of mux16sl4 is
begin
	data_out <= data_in0 when sel='00' else
				data_in1 when sel='01' else
				data_in2 when sel='10' else
				data_in3 when sel='11' else
				"0000000000000000";
end architecture;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity reg13bits is
	port(
		clk      : in std_logic;
		rst      : in std_logic;
		wr_enable: in std_logic;
		data_in  : in unsigned(12 downto 0);
		data_out : out unsigned(12 downto 0)
	);
end entity;

architecture a_reg13bits of reg13bits is
	signal registro: unsigned(12 downto 0);
begin
	process(clk, rst, wr_enable)
	begin
		if rst = '1' then
			registro <= "0000000000000";
		elsif wr_enable = '1' then
			if rising_edge(clk) then
				registro <= data_in;
			end if;
		end if;
	end process;
	data_out <= registro;
end architecture;
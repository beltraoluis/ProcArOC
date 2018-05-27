library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all; 

entity ula is
	port(
		inputA: in signed(15 downto 0);
		inputB: in signed(15 downto 0);
		selOp : in unsigned(1 downto 0);
		result: out unsigned(15 downto 0);
		equal : out std_logic
	);
end entity;

architecture a_ula of ula is
begin
	result <= 	unsigned(std_logic_vector(inputA + inputB)) when selOp="00" else
				unsigned(std_logic_vector(inputA - inputB)) when selOp="01" else
				unsigned(std_logic_vector(inputA * inputB)) when selOp="10" else
				B"0000_0000_0000_0000"; -- saida tem 16 bits
	equal  <= 	'1' when inputA - inputB = "0000000000000000" else
			'0';
end architecture;

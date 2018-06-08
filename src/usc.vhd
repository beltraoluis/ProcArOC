library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity usc is
	port (
		enable : in std_logic;
		clock : in std_logic;
		opcode : in unsigned(12 downto 0);
		command: out unsigned(5 downto 0)
	);
end entity usc;

architecture a_usc of usc is
signal tmp: unsigned(5 downto 0);
begin
	--0 	NOP 	0 0000 0000 0000
	tmp <=  to_unsigned(0,6) when opcode=B"0_0000_0000_0000" else
	--1 	RETURN 	0 0000 0000 1000
			to_unsigned(1,6) when opcode=B"0_0000_0000_1000" else
	--2 	RETFIE 	0 0000 0000 1001
			to_unsigned(2,6) when opcode=B"0_0000_0000_1001" else
	--3 	SLEEP 	0 0000 0110 0011
			to_unsigned(3,6) when opcode=B"0_0000_0110_0011" else
	--4 	CLRWDT 	0 0000 0110 0100
			to_unsigned(4,6) when opcode=B"0_0000_0110_0100" else
	--5 	MOVWF 	0 0000 01ff ffff
			to_unsigned(5,6) when opcode(12 downto 6)=B"0_0000_01" else
	--6 	CLRW 	0 0000 10xx xxxx
			to_unsigned(6,6) when opcode(12 downto 6)=B"0_0000_10" else
	--7 	CLRF 	0 0000 11ff ffff
			to_unsigned(7,6) when opcode(12 downto 6)=B"0_0000_11" else
	--8 	SUBWF 	0 0001 0dff ffff
			to_unsigned(8,6) when opcode(12 downto 7)=B"0_0001_0" else
	--9 	DECF 	0 0001 1dff ffff
			to_unsigned(9,6) when opcode(12 downto 7)=B"0_0001_1" else
	--10 	IORWF 	0 0010 0dff ffff
			to_unsigned(10,6) when opcode(12 downto 7)=B"0_0010_0" else
	--11 	ANDWF 	0 0010 1dff ffff
			to_unsigned(11,6) when opcode(12 downto 7)=B"0_0010_1" else
	--12 	XORWF 	0 0011 0dff ffff
			to_unsigned(12,6) when opcode(12 downto 7)=B"0_0011_0" else
	--13 	ADDWF 	0 0011 1dff ffff
			to_unsigned(13,6) when opcode(12 downto 7)=B"0_0011_1" else
	--14 	MOVF 	0 0100 0dff ffff
			to_unsigned(14,6) when opcode(12 downto 7)=B"0_0100_0" else
	--15 	COMF 	0 0100 1dff ffff
			to_unsigned(15,6) when opcode(12 downto 7)=B"0_0100_1" else
	--16 	INCF 	0 0101 0dff ffff
			to_unsigned(16,6) when opcode(12 downto 7)=B"0_0101_0" else
	--17 	DECFSZ 	0 0101 1dff ffff
			to_unsigned(17,6) when opcode(12 downto 7)=B"0_0101_1" else
	--18 	RRF 	0 0110 0dff ffff
			to_unsigned(18,6) when opcode(12 downto 7)=B"0_0110_0" else
	--19 	RLF 	0 0110 1dff ffff
			to_unsigned(19,6) when opcode(12 downto 7)=B"0_0110_1" else
	--20 	SWAPF 	0 0111 0dff ffff
			to_unsigned(20,6) when opcode(12 downto 7)=B"0_0111_0" else
	--21 	INCFSZ 	0 0111 1dff ffff
			to_unsigned(21,6) when opcode(12 downto 7)=B"0_0111_1" else
	--22 	BCF 	0 100b bbff ffff
			to_unsigned(22,6) when opcode(12 downto 9)=B"0_100" else
	--23 	BSF 	0 101b bbff ffff
			to_unsigned(23,6) when opcode(12 downto 9)=B"0_101" else
	--24 	BTFSC 	0 110b bbff ffff
			to_unsigned(24,6) when opcode(12 downto 9)=B"0_110" else
	--25 	BTFSS 	0 111b bbff ffff
			to_unsigned(25,6) when opcode(12 downto 9)=B"0_111" else
	--26 	CALL 	1 00kk kkkk kkkk
			to_unsigned(26,6) when opcode(12 downto 10)=B"1_00" else
	--27 	GOTO 	1 01kk kkkk kkkk
			to_unsigned(27,6) when opcode(12 downto 10)=B"1_01" else
	--28 	MOVLW 	1 1000 kkkk kkkk
			to_unsigned(28,6) when opcode(12 downto 8)=B"1_1000" else
	--29 	ANDLW 	1 1001 kkkk kkkk
			to_unsigned(29,6) when opcode(12 downto 8)=B"1_1001" else
	--30 	RETLW 	1 1010 kkkk kkkk
			to_unsigned(30,6) when opcode(12 downto 8)=B"1_1010" else
	--31 	IORLW 	1 1100 kkkk kkkk
			to_unsigned(31,6) when opcode(12 downto 8)=B"1_1100" else
	--32 	XORLW 	1 1101 kkkk kkkk
			to_unsigned(32,6) when opcode(12 downto 8)=B"1_1101" else
	--33 	SUBLW 	1 1110 kkkk kkkk
			to_unsigned(33,6) when opcode(12 downto 8)=B"1_1110" else
	--34 	ADDLW 	1 1111 kkkk kkkk
			to_unsigned(34,6) when opcode(12 downto 8)=B"1_1111" else
	--35    ERROR
			to_unsigned(35,6);
	process(clock)
	begin
		if(rising_edge(clock) and enable = '1') then
			command <=  tmp;
		end if;
	end process;
end architecture a_usc;
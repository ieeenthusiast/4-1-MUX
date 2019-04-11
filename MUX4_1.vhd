------------------------------------------------------
-- Project		:	4:1 Multiplexer
-- Description	:	--
-- Author		:	Lars Mannshardt
-- Created		:	11.04.2019
-- Last Update	:	11.04.2019
------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

entity MUX4_1 is port (
	I0,I1,I2,I3	: 	in 	std_logic;	--inputs
	S				:	in		std_logic_vector(1 downto 0);	--select
	Q				:	out	std_logic);	--output
end MUX4_1;

architecture MUX4_ARCH of MUX4_1 is
begin

	p1: process(S,I0,I1,I2,I3)
	begin
		if 	S = "00" then
			Q <= I0;
		elsif S = "01" then
			Q <= I1;
		elsif S = "10" then
			Q <= I2;
		else
			Q <= I3; 
		end if;
	end process p1;
end MUX4_ARCH;

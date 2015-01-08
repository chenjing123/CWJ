library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
entity ftctrl is
port(clkk : in std_logic;--1Hz
	cnt_en,rst_cnt : out std_logic;
	load : out std_logic);
end;
architecture behav of ftctrl is
	signal div2clk : std_logic;
begin
	process(clkk)    begin
	if clkk'event and clkk='1' then div2clk <= not div2clk;
	end if;
	end process;
	process(clkk,div2clk)	begin
	if clkk='0' and div2clk='0' then rst_cnt <= '1';
	else rst_cnt <= '0';
	end if;
	end process;
	load <= not div2clk;
	cnt_en <= div2clk;

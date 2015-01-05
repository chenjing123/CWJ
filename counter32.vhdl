library ieee;
use ieee.std_logic_1164.all;
entity counter32 is
port(fin,clr,enabl: in std_logic;
	dout : out std_logic_vector(31 downto 0));
end counter32;
architecture one of counter32 is
	component cnt10
		port(fin1,clr1,en : in std_logic;
			cout : out std_logic;
			q : out std_logic_vector(3 downto 0));
	end component;
signal e:std_logic_vector(7 downto 0);
begin
	u1 : cnt10 port map (fin1=>fin,clr1=>clr,en=>enabl,cout=>e(0),q=>dout(3 downto 0));
	u2 : cnt10 port map (fin1=>e(0),clr1=>clr,en=>enabl,cout=>e(1),q=>dout(7 downto 4));
	u3 : cnt10 port map (fin1=>e(1),clr1=>clr,en=>enabl,cout=>e(2),q=>dout(11 downto 8));
	u4 : cnt10 port map (fin1=>e(2),clr1=>clr,en=>enabl,cout=>e(3),q=>dout(15 downto 12));
	u5 : cnt10 port map (fin1=>e(3),clr1=>clr,en=>enabl,cout=>e(4),q=>dout(19 downto 16));
	u6 : cnt10 port map (fin1=>e(4),clr1=>clr,en=>enabl,cout=>e(5),q=>dout(23 downto 20));
	u7 : cnt10 port map (fin1=>e(5),clr1=>clr,en=>enabl,cout=>e(6),q=>dout(27 downto 24));
	u8 : cnt10 port map (fin1=>e(6),clr1=>clr,en=>enabl,cout=>e(7),q=>dout(31 downto 28));
end;	

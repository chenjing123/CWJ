library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
entity cnt10 is
port(fin1,clr1,en: in std_logic;
	cout : out std_logic;
	q : out std_logic_vector(3 downto 0));
end;
architecture bhv of cnt10 is
begin
	process(fin1,clr1)
	variable q1 : std_logic_vector(3 downto 0);
	begin
	if clr1='1' then q1 := (others => '0');
		elsif fin1'event and fin1= '1' then
			if en='1' then
				if q1<9 then q1 := q1+1;
				else q1 := (others => '0'); 
				end if;
				if q1=9 then cout <= '1';
				else cout <= '0';
				end if;
			elsif en='0' then q1 := (others => '0');
		end if; 
	end if;	
	q <= q1;
	end process;	
end bhv;

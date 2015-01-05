library  ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
entity  ten10  is
port (clk10:in std_logic;
	  k:out std_logic);
end;
architecture bhv of ten10 is
 	signal s : std_logic;
    signal c : std_logic_vector(3 downto 0);
begin
process(clk10,c)
begin
	if rising_edge(clk10) then
	if (c="1001") then c<="0000"; 
	else c<=c+1;
	end if;
	if (c="0101") then s<=not s;
	elsif(c="0000") then s<=not s;
	end if;
	end if;
end process;
k<=s;
end bhv;
library  ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
entity five5 is
port(clk5:in std_logic;
	 kf,k1,k2:out std_logic);
end;
architecture bhv of five5 is
 	signal c1,c2: std_logic_vector(2 downto 0);
  	signal m1,m2: std_logic;
begin
process(clk5,c1)  
begin
 	if rising_edge(clk5) then
 	if(c1="100") then c1<="000"; 
	else c1<=c1+1;
	end if;
 	if(c1="001") then m1<=not m1;
	elsif(c1="011") then m1<=not m1;
 	end if;
    end if;
end process;
process(clk5,c2)  begin
  	if falling_edge(clk5) then
 	if(c2="100") then c2<="000";
	else c2<=c2+1;
	end if;
  	if(c2="001") then m2<=not m2;
	elsif(c2="011") then  m2<=not m2;
	end if; 
	end if;
end process;
k1<=m1; k2<=m2;kf<=m1 or m2;
end bhv;

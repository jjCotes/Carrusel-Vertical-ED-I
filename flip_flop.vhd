library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity flip_flop is

	port(
		-- Input ports
		clk: in  std_logic;        
		J: in std_logic; --1 cambia Q		
		K: in std_logic; --1 cambia Q
		Clear: in std_logic; -- 1 borra 
		-- Output ports
		Q: out std_logic); --Salida
		
end flip_flop;


architecture arch of flip_flop is

signal salida: std_logic := '0'; --Q inicia como cero

begin

	process(clk,Clear)
	
	begin	
	
	if Clear = '1' then --Limpia
	
	salida <= '0';
	
	elsif rising_edge(clk) and J='1' and K='1' then --Cambia
		
		salida <= not salida;
			
	end if;
	
	end process;
	
Q <= salida;

end arch;
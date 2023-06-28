library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity control_motor is

	port(
		-- Input ports
		clk: in  std_logic;        
		gira: in std_logic_vector(1 downto 0); 
		
		-- Output ports
		bobinas: out std_logic_vector(3 downto 0)
		); --Salida al motor
		
end control_motor;


architecture arch of control_motor is

signal estadotemp: std_logic_vector(1 downto 0);

signal estado: std_logic_vector(1 downto 0);

signal salida: std_logic_vector(3 downto 0);


begin

	process(clk)
	
	begin	
	
	if rising_edge(clk) then --Cambia
	
	if gira = "10" then 
	
	if estado = "00" then 
	
	salida <= "1100";
	
	estadotemp <= "01";
	
	elsif estado = "01" then
	
	salida <= "0110";
	
	estadotemp <= "10";
	
	elsif estado = "10" then 
	
	salida <= "0011";
	
	estadotemp <= "11";
	
	else
	
	salida <= "1001";
	
	estadotemp <= "00";
	
	end if;
			
	elsif gira = "01" then
	
	if estado = "00" then 
	
	salida <= "1001";
	
	estadotemp <= "01";
	
	elsif estado = "01" then
	
	salida <= "0011";
	
	estadotemp <= "10";
	
	elsif estado = "10" then 
	
	salida <= "0110";
	
	estadotemp <= "11";
	
	else
	
	salida <= "1100";
	
	estadotemp <= "00";
	
	end if;
	
	else 
	
	salida <= "0000";
	
	end if;
	
	end if;
	
	end process;
	
	estado <= estadotemp;
	
   bobinas <= salida;

end arch;
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity servo is
      port(
		clk: in  std_logic;        -- Señal de reloj 50 MHz
		Abierto: in std_logic;			
		-- Output ports
		PWMsalida: out std_logic -- Salida en PWM
		);
end servo;


architecture ciclo_trabajo of servo is
	
	signal salida: std_logic;
	
	signal clkanchopulso: std_logic;
	
	signal Tau: std_logic_vector(4 downto 0);
	
	signal cuenta: std_logic_vector(4 downto 0) := "00000";  -- Cuenta en binario
	
		component div_frec
	port (clk: in  std_logic;
		   Nciclos: in	integer;
			f: out std_logic
	);
	
	end component;



begin

	instancia1: div_frec port map (clk, 25000, clkanchopulso);
	
	Tau <= "00001" when Abierto = '0' else "00010";
	
	process(clkanchopulso)  
	
	begin
	

		if rising_edge(clkanchopulso) then 

			--Salida
			
			if cuenta < Tau then
			   salida <= '1';
			else
				salida <= '0'; 
			end if;
			
		
		   --Contador cada segundo y su reinicio
			
			if cuenta = "10011" then
				cuenta <= "00000";
			else
				cuenta <= cuenta + "00001"; 
			end if;

		end if;	
	
	end process;
	
PWMsalida <= salida;

end ciclo_trabajo;
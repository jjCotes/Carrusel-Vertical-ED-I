library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity memoriaymotor is

	port(
		-- Input ports
		clk: in  std_logic;        
		elcascoesta: in std_logic_vector(1 downto 0);
		IDentrada:in std_logic_vector(5 downto 0);
		Sensorproximidad: in  std_logic;
		-- Output ports
		Sentidogirosalidadirecta: out std_logic_vector(1 downto 0); --Salida
		Arreglomemoriascerosal: out std_logic_vector(59 downto 0);
		Motordetenido: out std_logic;
		Abrirpuerta: out std_logic;
		Elcascoestasalida: out std_logic_vector(1 downto 0);
		IDsalida:out std_logic_vector(5 downto 0)
		); --Salida al motor
		
end memoriaymotor;


architecture arch of memoriaymotor is

signal Arreglomemoriascero: std_logic_vector(59 downto 0) := "000000000000101010111111000000111111111111111111000000111111"; 

signal clkmotorcontrol: std_logic;

signal contadorvueltas: std_logic_vector(9 downto 0) := "0000000000";

signal registrosensor: std_logic_vector(1 downto 0) := "11";

	component div_frec
	port (clk: in  std_logic;
		   Nciclos: in	integer;
			f: out std_logic
	);
	
	end component;


begin



   instancia1: div_frec port map (clk, 50000, clkmotorcontrol);

	process(clkmotorcontrol)
	
	begin	
	
	if rising_edge(clkmotorcontrol) then --Cambia
	
	registrosensor <= Sensorproximidad & registrosensor(1);
	
	if registrosensor = "10" then
	
	Abrirpuerta <= '0';
	
	end if;
	
	if elcascoesta = "00" then
	
	Sentidogirosalidadirecta <= elcascoesta;
	
	end if;
	
	
	if elcascoesta = "01" then
	
	if Arreglomemoriascero(59 downto 54) = "000000" then
	
	contadorvueltas <= "0000000000";
	
	Arreglomemoriascero <= IDentrada & Arreglomemoriascero(53 downto 0);
	
	Motordetenido <= '0';
	
	AbrirPuerta  <= '1';
	
	
	else
	
	Motordetenido <= '1';

	contadorvueltas <= contadorvueltas + "0000000001";
	
	Sentidogirosalidadirecta <= "10";
	
	
	if contadorvueltas > "0110010000" then
	
	contadorvueltas <= "0000000000";
	
	Arreglomemoriascero  <= Arreglomemoriascero(53 downto 0) & Arreglomemoriascero(59 downto 54);
	
	end if;

   end if;
	
	end if;
	
	
	if elcascoesta = "10" then
	
	
	if Arreglomemoriascero(59 downto 54) = IDentrada then
	
	contadorvueltas <= "0000000000";
	
	Motordetenido <= '0';
	
	AbrirPuerta  <= '1';
	
	Arreglomemoriascero <= "000000" & Arreglomemoriascero(53 downto 0); --Libero ese espacio en memoria
	
	
	else
	
	Motordetenido <= '1';

	contadorvueltas <= contadorvueltas + "0000000001";
	
	Sentidogirosalidadirecta <= "10";
	
	
	if contadorvueltas > "0110010000" then
	
	contadorvueltas <= "0000000000";
	
	Arreglomemoriascero  <= Arreglomemoriascero(53 downto 0) & Arreglomemoriascero(59 downto 54);
	
	end if;

   end if;
	
	end if;
	
	end if;
	
	
	
	end process;
	IDsalida <= IDentrada;

	Elcascoestasalida <= elcascoesta;
	Arreglomemoriascerosal <= Arreglomemoriascero;

end arch;
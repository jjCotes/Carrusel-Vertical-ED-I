library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity proyectofinal is

	port(
		-- Input ports
		clk: in  std_logic;
      DetectoTarjeta: in  std_logic; --Saber si se detecto tarjeta
		Lecturatarjeta: in std_logic_vector(5 downto 0); -- Conocer el codigo de la tarjeta
		Sensorproximidad: in  std_logic;

		
		-- Output ports
		Salectu: out std_logic_vector(5 downto 0);
		EstaAqui: out std_logic;
		Hayesp: out std_logic;
		SenalControl: out std_logic_vector(1 downto 0);

		
		
		-- Output reales
		SalidaServo: out std_logic;
		Salidaalmotor: out std_logic_vector(3 downto 0)
		); 
		
end proyectofinal;

architecture arch of proyectofinal is

				component div_frec
	port(
		-- Input ports
		clk: in  std_logic;
		Nciclos: in	integer;			-- número de ciclos para la frecuencia deseada
		
		-- Output ports
		f: out std_logic);
		end component;
		
		
					component control_motor
		port(
		-- Input ports
		clk: in  std_logic;        
		gira: in std_logic_vector(1 downto 0); 
		
		-- Output ports
		bobinas: out std_logic_vector(3 downto 0)
		); --Salida al motor
		end component;
		
		
component anti_rebote is

	port(
		-- Input ports
		clk: in  std_logic;        -- Señal de reloj reducida
		Boton: in std_logic;			-- Estado actual del botón 
		
		-- Output ports
		Botonfiltrado: out std_logic); -- Estado del botón luego del sistema de anti-rebote
		
end component;

component servo is
      port(
		clk: in  std_logic;        -- Señal de reloj 50 MHz
		Abierto: in std_logic;			
		-- Output ports
		PWMsalida: out std_logic -- Salida en PWM
		);
end component;

---------------------------------------------

signal Hayespacio: std_logic := '0';

signal EstaAquiEseCasco: std_logic := '0';

signal vuelta: std_logic := '0';

signal definido: std_logic:= '0';

signal clkmotor: std_logic;

signal clkantirebote: std_logic;

signal Sentidogirosalidadirecta: std_logic_vector(1 downto 0) := "00";

signal Scontrol: std_logic_vector(1 downto 0) := "00";

signal SensorproximidadFiltrado: std_logic;

signal Servosenal: std_logic  :=  '1';


begin 


   instancia1: div_frec port map (clk, 50000, clkmotor);
	
	instancia2: control_motor port map (clkmotor, Sentidogirosalidadirecta, Salidaalmotor);
	
	instancia3: div_frec port map (clk, 500000, clkantirebote);
	
	instancia4: anti_rebote port map (clkantirebote, Sensorproximidad, SensorproximidadFiltrado);
	
	instancia5: servo port map (clk, Servosenal, SalidaServo);

	process(clkmotor)
	
	variable IDentrada: std_logic_vector(5 downto 0) := "000000";
	
	variable Arreglomemoriascero: std_logic_vector(47 downto 0) := "111111000000111111111111111111111111111111000000"; 
	
	variable Vcontrol: std_logic_vector(1 downto 0) := "00";
	
	variable contadorvueltas: std_logic_vector(9 downto 0) := "0000000000"; --Para el motor
	
   variable Arreglomemoriascopia: std_logic_vector(47 downto 0) := Arreglomemoriascero;

   variable Arreglomemoriascopia2: std_logic_vector(47 downto 0) := Arreglomemoriascero;
	
	variable Arreglomemoriascopia3: std_logic_vector(47 downto 0) := Arreglomemoriascero;
	
	variable Arreglomemoriascopia4: std_logic_vector(47 downto 0) := Arreglomemoriascero;
	
	variable contador: std_logic_vector(3 downto 0) := "0000";
	
	variable contador2: std_logic_vector(3 downto 0) := "0000";
	
	variable movimientos: std_logic_vector(3 downto 0):= "0000";
	
	variable registrosensor: std_logic_vector(1 downto 0):= "11";
	
	variable sensorDetenido: std_logic := '0';
	
	
	begin

	
	
	if rising_edge(clkmotor) then
	
	if DetectoTarjeta = '1' and vuelta = '0' then 
	
	IDentrada := LecturaTarjeta;
	
	Arreglomemoriascopia := Arreglomemoriascero;

   Arreglomemoriascopia2 := Arreglomemoriascero;
	
	Arreglomemoriascopia3 := Arreglomemoriascero;
	
	Arreglomemoriascopia4 := Arreglomemoriascero;
	
	definido <=  '0';
		
	contador := "0000";
	
	contador2 := "0000";
	
	sensorDetenido := '0';
	
	for i in 0 to 9 loop --Miramos si el casco esta en el sistema
		
		if LecturaTarjeta =  Arreglomemoriascopia(47 downto 42) then
		
		EstaAquiEseCasco <=  '1';
		
		else 
		
		contador := contador + "0001";
		
		end if;
		
		Arreglomemoriascopia := Arreglomemoriascopia(41 downto 0) & Arreglomemoriascopia(47 downto 42);
		
	end loop;
	
	if contador = "1010" then
	
	contador := "0000";
	
	EstaAquiEseCasco <=  '0';
	
	else 
	
	contador := "0000";
	
	end if; --Actualización de contador
	
	
	for i in 0 to 9 loop --Miramos si hay espacio
		
		if Arreglomemoriascopia2(47 downto 42) = "000000"  then
		
		Hayespacio <=  '1';
		
		vuelta <=  '1';
		
		else 
		
		contador2 := contador2 + "0001";
		
		end if;
		
		Arreglomemoriascopia2 := Arreglomemoriascopia2(41 downto 0) & Arreglomemoriascopia2(47 downto 42);
		
		end loop;
		
	if contador2 = "1010" then
	
	contador2 := "0000";
	
	Hayespacio <=  '0';
	
	vuelta <=  '1';
	
	else 
	
	contador2 := "0000";
	
	end if; --Actualización de contador	
	
	
	
	else --Si no detecto tarjeta
	

	
	end if; --si detecte tarjeta
	
	
	
	if EstaAquiEseCasco = '1' and Hayespacio = '1' then 
		
	Vcontrol := "10";

		
	end if;
		
    if EstaAquiEseCasco = '1' and Hayespacio = '0' then 
		
	Vcontrol := "10";
		
	end if;
		
	
	if EstaAquiEseCasco = '0' and Hayespacio = '1' then 
		
	Vcontrol := "01";
		
	end if;
		
    if EstaAquiEseCasco = '0' and Hayespacio = '0' then 
		
	Vcontrol := "00";
		
	end if;
	
	--------------------------------------------------
	
	--Servo
	
	registrosensor := SensorproximidadFiltrado & registrosensor(1);
	
	if registrosensor = "10" then
	
	Servosenal <= '1';
	
	sensorDetenido := '1';
	
	end if;
	
	

	--Viene la parte control motor
	
----------------------------------------------------------------------------------------	
	
	if Vcontrol = "00" then
	
	Sentidogirosalidadirecta <= "00";
	
	end if;
	

------------------------------------------------------------------------------------------		
	
	
if Vcontrol = "01" and definido = '0' then
	
	if Arreglomemoriascopia3(47 downto 42) = "000000" then
	
	contadorvueltas := "0000000000";
	
	Arreglomemoriascero := IDentrada & Arreglomemoriascero(41 downto 0);
	
	movimientos := "0000";
	
	definido <= '1';

	
	else
	
	if Arreglomemoriascopia3(41 downto 36) = "000000" then
	
	 contadorvueltas := "0000000000";
	
	 Arreglomemoriascero := IDentrada & Arreglomemoriascero(35 downto 0) & Arreglomemoriascero(47 downto 42);
	 
	 movimientos := "0001";
	 
	 definido <= '1';
	
	else
	
	if Arreglomemoriascopia3(35 downto 30) = "000000" then 
	
	contadorvueltas := "0000000000";
	
	Arreglomemoriascero := IDentrada & Arreglomemoriascero(29 downto 0) & Arreglomemoriascero(47 downto 36);
	 
	 movimientos := "0010";
	 
	 definido <= '1';
	
	else
	
	if Arreglomemoriascopia3(29 downto 24) = "000000" then 
	
	contadorvueltas := "0000000000";
	
	Arreglomemoriascero := IDentrada & Arreglomemoriascero(23 downto 0) & Arreglomemoriascero(47 downto 30);
	 
	movimientos := "0011";
	 
	definido <= '1';
	
	else
	
	if Arreglomemoriascopia3(23 downto 18) = "000000" then 
	
	contadorvueltas := "0000000000";
	
	Arreglomemoriascero := IDentrada & Arreglomemoriascero(17 downto 0) & Arreglomemoriascero(47 downto 24);
	 
	movimientos := "0100";
	 
	definido <= '1';
	
	else
	
	if Arreglomemoriascopia3(17 downto 12) = "000000" then 
	
	contadorvueltas := "0000000000";
	
	Arreglomemoriascero := IDentrada & Arreglomemoriascero(11 downto 0) & Arreglomemoriascero(47 downto 18);
	 
	movimientos := "0101";
	 
	definido <= '1';
	
	else
	
	if Arreglomemoriascopia3(11 downto 6) = "000000" then
	
	contadorvueltas := "0000000000";
	
	Arreglomemoriascero := IDentrada & Arreglomemoriascero(5 downto 0) & Arreglomemoriascero(47 downto 12);
	 
	movimientos := "0110";
	 
	definido <= '1';
	
	else
	
	if Arreglomemoriascopia3(5 downto 0) = "000000" then 
	
	contadorvueltas := "0000000000";
	
	Arreglomemoriascero := IDentrada & Arreglomemoriascero(47 downto 6);
	 
	movimientos := "0111";
	 
	definido <= '1';
	
	end if;
	
	end if;
	
	end if;
	
	end if;
	
	end if;
	
	end if;
	
	end if;
	
	end if;
	
   end if;
	
	-----------------------------------------------
	
	--Si tiene que buscar el casco
	
if Vcontrol = "10" and definido = '0' then
	
	if Arreglomemoriascopia4(47 downto 42) = IDentrada then
	
	contadorvueltas := "0000000000";
	
	Arreglomemoriascero := "000000" & Arreglomemoriascero(41 downto 0);
	
	movimientos := "0000";
	
	definido <= '1';

	
	else
	
	if Arreglomemoriascopia4(41 downto 36) = IDentrada then
	
	 contadorvueltas := "0000000000";
	
	 Arreglomemoriascero := "000000" & Arreglomemoriascero(35 downto 0) & Arreglomemoriascero(47 downto 42);
	 
	 movimientos := "0001";
	 
	 definido <= '1';
	
	else
	
	if Arreglomemoriascopia4(35 downto 30) = IDentrada then 
	
	contadorvueltas := "0000000000";
	
	Arreglomemoriascero := "000000" & Arreglomemoriascero(29 downto 0) & Arreglomemoriascero(47 downto 36);
	 
	 movimientos := "0010";
	 
	 definido <= '1';
	
	else
	
	if Arreglomemoriascopia4(29 downto 24) = IDentrada then 
	
	contadorvueltas := "0000000000";
	
	Arreglomemoriascero := "000000" & Arreglomemoriascero(23 downto 0) & Arreglomemoriascero(47 downto 30);
	 
	movimientos := "0011";
	 
	definido <= '1';
	
	else
	
	if Arreglomemoriascopia4(23 downto 18) = IDentrada then 
	
	contadorvueltas := "0000000000";
	
	Arreglomemoriascero := "000000" & Arreglomemoriascero(17 downto 0) & Arreglomemoriascero(47 downto 24);
	 
	movimientos := "0100";
	 
	definido <= '1';
	
	else
	
	if Arreglomemoriascopia4(17 downto 12) = IDentrada then 
	
	contadorvueltas := "0000000000";
	
	Arreglomemoriascero := "000000" & Arreglomemoriascero(11 downto 0) & Arreglomemoriascero(47 downto 18);
	 
	movimientos := "0101";
	 
	definido <= '1';
	
	else
	
	if Arreglomemoriascopia4(11 downto 6) = IDentrada then
	
	contadorvueltas := "0000000000";
	
	Arreglomemoriascero := "000000" & Arreglomemoriascero(5 downto 0) & Arreglomemoriascero(47 downto 12);
	 
	movimientos := "0110";
	 
	definido <= '1';
	
	else
	
	if Arreglomemoriascopia4(5 downto 0) = IDentrada then 
	
	contadorvueltas := "0000000000";
	
	Arreglomemoriascero := "000000" & Arreglomemoriascero(47 downto 6);
	 
	movimientos := "0111";
	 
	definido <= '1';
	
	end if;
	
	end if;
	
	end if;
	
	end if;
	
	end if;
	
	end if;
	
	end if;
	
	end if;
	
   end if;	
	
	
	
	--Ahora si motor
	
	
	if movimientos = "0000" then
	
	contadorvueltas := "0000000000";
	
	---servo
	
	if Vcontrol = "01" or Vcontrol = "10" then
	
	if sensorDetenido = '0' then
	
	Servosenal <= '0';
	
	end if;
	
	end if;
	
	---servo
	
	Sentidogirosalidadirecta <= "00";

	
	else

	contadorvueltas := contadorvueltas + "0000000001";
	
	Sentidogirosalidadirecta <= "01";
	
	
	if contadorvueltas > "0110010000" then
	
	contadorvueltas := "0000000000";
	
	movimientos := movimientos - "0001";
	
	end if;

   end if;

------------------------------------------------------------------------------------------	
	
	
	end if; --El del rising edge
	
	
	if DetectoTarjeta = '0' then 
	
	vuelta <= '0';
	
	end if;
	

   Scontrol  <= Vcontrol;
	
	end process;
	
	
	
	Estaaqui <= not EstaAquiEseCasco; --Mirar func
	Hayesp <= not Hayespacio; --Mirar func
	Salectu <= not Lecturatarjeta;
	SenalControl <= not Scontrol;



	
end arch;
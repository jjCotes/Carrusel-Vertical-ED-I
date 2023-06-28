library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

-- Recordando el diseño del registro de desplazamiento, se necesita de entrada una señal de reloj 
-- para hacer el muestreo del pulsador, la señal del pulsador y de salida la señal limpia del pulsador

-- * Construye la entidad con las señales de entrada y salida requeridas.


entity anti_rebote is

	port(
		-- Input ports
		clk: in  std_logic;        -- Señal de reloj reducida
		Boton: in std_logic;			-- Estado actual del botón 
		
		-- Output ports
		Botonfiltrado: out std_logic); -- Estado del botón luego del sistema de anti-rebote
		
end anti_rebote;


architecture registro of anti_rebote is

	-- * Declara una señal vector de longitud mayor a 3 bits (este será el registro de desplazamiento).
	
	signal registro: std_logic_vector(8 downto 0) := "111111111"; -- Declaramos el registro de 9 bits 

begin

	-- * Coloca en la lista sensible las señales que ejecutarían el bloque process.
	process(Boton,clk)
	
	begin
	
		-- Un desplazamiento en un registro se puede realizar con el operador de concatenación &. 
		-- Por ejemplo si tiene un vector (registro) de 3 posiciones y quiere realizar un corrimiento hacia 
		-- la izquierda incluyendo un valor en la primera posicion, debe proceder de la siguiente manera:
		-- reg <= reg(1 downto 0) & btn;
		
		-- * Crea un condicional que se ejecute por flanco de subida de su señal de reloj. Dentro de este cree
		-- el registro de desplazamiento (considerar la lógica negativa de la tarjeta). 
			
		if rising_edge(clk) then 
		
		registro <= registro(7 downto 0) & Boton;
		
		end if;
		
	
		-- Para definir la salida de acuerdo a los bits almacenados en el registro tiene dos opciones,
		-- la sentencia if-then o su análoga when-else.
		-- * Utiliza la de su preferencia.
		
	-- Sentencia secuencial if-then:
		
		if registro = "000000000" then
			Botonfiltrado <= '0'; -- Botón presionado
		else
			Botonfiltrado <= '1'; -- Botón sin presionar 
		end if;
	
	end process;
	
	
-- Sentencia concurrente análoga when-else :

--	bto <= '1' when reg = "111" else '0';

end registro;
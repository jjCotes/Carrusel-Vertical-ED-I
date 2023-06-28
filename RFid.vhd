library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity RFid is

	port(
		-- Input ports
		clk: in  std_logic;
      DetectoTarjeta: in  std_logic; --Saber si se detecto tarjeta
		Lecturatarjeta: in std_logic_vector(5 downto 0); -- Conocer el codigo de la tarjeta
		Motorsedetuvo: in std_logic; -- Saber si el motor ya se detuvo
		Arreglomemoriascero: in std_logic_vector(59 downto 0);
		
		-- Output ports
		elcascoesta: out std_logic_vector(1 downto 0); --Salida
		IDsalida:out std_logic_vector(5 downto 0)
		
		
		); --Salida ID
		
end RFid;


architecture arch of RFid is

signal ID: std_logic_vector(5 downto 0);

signal clk2: std_logic;
		
				component div_frec
	port(
		-- Input ports
		clk: in  std_logic;
		Nciclos: in	integer;			-- número de ciclos para la frecuencia deseada
		
		-- Output ports
		f: out std_logic);
		end component;
	

begin 

   instancia2: div_frec port map (clk, 500, clk2);
	
	process(clk2)  
	
	variable EstaAquiEseCasco: std_logic := '0';
	
	variable HayEspacio: std_logic := '0';
	
	variable Arreglomemoriascopia: std_logic_vector(59 downto 0) := Arreglomemoriascero;
	
	begin
	

  
		if rising_edge(clk) then 
		
      if DetectoTarjeta = '1' then

	   ID <= Lecturatarjeta;
		
		IDsalida <= ID;
		
		for i in 0 to 9 loop --Miramos si el casco esta en el sistema
		
		if ID =  Arreglomemoriascopia(59 downto 54) then
		
		EstaAquiEseCasco := '1';
		
		end if;
		
		Arreglomemoriascopia := Arreglomemoriascopia(53 downto 0) & Arreglomemoriascopia(59 downto 54);
		
		end loop;
		
		

		if EstaAquiEseCasco = '1' then
		
	   elcascoesta <= "10"; --Si esta, debo buscarlo

      else

		
		for i in 0 to 9 loop --Miramos si hay espacio
		
		if "000000" =  Arreglomemoriascopia(59 downto 54) then
		
		Hayespacio := '1';
		
		end if;
		
		Arreglomemoriascopia := Arreglomemoriascopia(53 downto 0) & Arreglomemoriascopia(59 downto 54);
		
		end loop;
		


       if Hayespacio = '1' then
		 
		 elcascoesta <= "01"; --Si hay espacio, hay que buscarlo

        end if;


  end if;


else 


		if Motorsedetuvo = '0' then
		
		ID <= "000000";
		
		elcascoesta <= "00";
		
		Arreglomemoriascopia := Arreglomemoriascero;
		
		EstaAquiEseCasco := '0';
		
		HayEspacio := '0';
		

		else 
		
		IDsalida <= ID;
		
		end if;

     end if;

	  end if;	
	
	
	end process;
	


end arch;
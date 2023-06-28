-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "06/27/2023 23:56:23"

-- 
-- Device: Altera EP4CE10E22C8 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_101,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	U_logica IS
    PORT (
	clk : IN std_logic;
	DetectoTarjeta : IN std_logic;
	Lecturatarjeta : IN std_logic_vector(5 DOWNTO 0);
	Sensorproximidad : IN std_logic;
	Salectu : BUFFER std_logic_vector(5 DOWNTO 0);
	EstaAqui : BUFFER std_logic;
	Hayesp : BUFFER std_logic;
	SenalControl : BUFFER std_logic_vector(1 DOWNTO 0);
	SalidaServo : BUFFER std_logic;
	Salidaalmotor : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END U_logica;

-- Design Ports Information
-- Salectu[0]	=>  Location: PIN_76,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Salectu[1]	=>  Location: PIN_77,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Salectu[2]	=>  Location: PIN_84,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Salectu[3]	=>  Location: PIN_83,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Salectu[4]	=>  Location: PIN_80,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Salectu[5]	=>  Location: PIN_74,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EstaAqui	=>  Location: PIN_72,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hayesp	=>  Location: PIN_73,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SenalControl[0]	=>  Location: PIN_71,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SenalControl[1]	=>  Location: PIN_75,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SalidaServo	=>  Location: PIN_51,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Salidaalmotor[0]	=>  Location: PIN_38,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Salidaalmotor[1]	=>  Location: PIN_33,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Salidaalmotor[2]	=>  Location: PIN_31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Salidaalmotor[3]	=>  Location: PIN_28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Lecturatarjeta[0]	=>  Location: PIN_89,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Lecturatarjeta[1]	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Lecturatarjeta[2]	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Lecturatarjeta[3]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Lecturatarjeta[4]	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Lecturatarjeta[5]	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DetectoTarjeta	=>  Location: PIN_42,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sensorproximidad	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF U_logica IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_DetectoTarjeta : std_logic;
SIGNAL ww_Lecturatarjeta : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_Sensorproximidad : std_logic;
SIGNAL ww_Salectu : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_EstaAqui : std_logic;
SIGNAL ww_Hayesp : std_logic;
SIGNAL ww_SenalControl : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_SalidaServo : std_logic;
SIGNAL ww_Salidaalmotor : std_logic_vector(3 DOWNTO 0);
SIGNAL \instancia1|salida~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \instancia5|instancia1|salida~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \instancia3|salida~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Salectu[0]~output_o\ : std_logic;
SIGNAL \Salectu[1]~output_o\ : std_logic;
SIGNAL \Salectu[2]~output_o\ : std_logic;
SIGNAL \Salectu[3]~output_o\ : std_logic;
SIGNAL \Salectu[4]~output_o\ : std_logic;
SIGNAL \Salectu[5]~output_o\ : std_logic;
SIGNAL \EstaAqui~output_o\ : std_logic;
SIGNAL \Hayesp~output_o\ : std_logic;
SIGNAL \SenalControl[0]~output_o\ : std_logic;
SIGNAL \SenalControl[1]~output_o\ : std_logic;
SIGNAL \SalidaServo~output_o\ : std_logic;
SIGNAL \Salidaalmotor[0]~output_o\ : std_logic;
SIGNAL \Salidaalmotor[1]~output_o\ : std_logic;
SIGNAL \Salidaalmotor[2]~output_o\ : std_logic;
SIGNAL \Salidaalmotor[3]~output_o\ : std_logic;
SIGNAL \Lecturatarjeta[0]~input_o\ : std_logic;
SIGNAL \Lecturatarjeta[1]~input_o\ : std_logic;
SIGNAL \Lecturatarjeta[2]~input_o\ : std_logic;
SIGNAL \Lecturatarjeta[3]~input_o\ : std_logic;
SIGNAL \Lecturatarjeta[4]~input_o\ : std_logic;
SIGNAL \Lecturatarjeta[5]~input_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \instancia1|Add0~0_combout\ : std_logic;
SIGNAL \instancia1|cuenta~6_combout\ : std_logic;
SIGNAL \instancia1|Add0~1\ : std_logic;
SIGNAL \instancia1|Add0~2_combout\ : std_logic;
SIGNAL \instancia1|Add0~3\ : std_logic;
SIGNAL \instancia1|Add0~4_combout\ : std_logic;
SIGNAL \instancia1|Add0~5\ : std_logic;
SIGNAL \instancia1|Add0~6_combout\ : std_logic;
SIGNAL \instancia1|Add0~7\ : std_logic;
SIGNAL \instancia1|Add0~8_combout\ : std_logic;
SIGNAL \instancia1|cuenta~5_combout\ : std_logic;
SIGNAL \instancia1|Add0~9\ : std_logic;
SIGNAL \instancia1|Add0~10_combout\ : std_logic;
SIGNAL \instancia1|Add0~11\ : std_logic;
SIGNAL \instancia1|Add0~12_combout\ : std_logic;
SIGNAL \instancia1|cuenta~4_combout\ : std_logic;
SIGNAL \instancia1|Add0~13\ : std_logic;
SIGNAL \instancia1|Add0~14_combout\ : std_logic;
SIGNAL \instancia1|Equal0~5_combout\ : std_logic;
SIGNAL \instancia1|Equal0~6_combout\ : std_logic;
SIGNAL \instancia1|Add0~15\ : std_logic;
SIGNAL \instancia1|Add0~16_combout\ : std_logic;
SIGNAL \instancia1|cuenta~3_combout\ : std_logic;
SIGNAL \instancia1|Add0~17\ : std_logic;
SIGNAL \instancia1|Add0~18_combout\ : std_logic;
SIGNAL \instancia1|cuenta~2_combout\ : std_logic;
SIGNAL \instancia1|Add0~19\ : std_logic;
SIGNAL \instancia1|Add0~20_combout\ : std_logic;
SIGNAL \instancia1|Add0~21\ : std_logic;
SIGNAL \instancia1|Add0~22_combout\ : std_logic;
SIGNAL \instancia1|Add0~23\ : std_logic;
SIGNAL \instancia1|Add0~24_combout\ : std_logic;
SIGNAL \instancia1|Add0~25\ : std_logic;
SIGNAL \instancia1|Add0~26_combout\ : std_logic;
SIGNAL \instancia1|Add0~27\ : std_logic;
SIGNAL \instancia1|Add0~28_combout\ : std_logic;
SIGNAL \instancia1|cuenta~1_combout\ : std_logic;
SIGNAL \instancia1|Add0~29\ : std_logic;
SIGNAL \instancia1|Add0~30_combout\ : std_logic;
SIGNAL \instancia1|cuenta~0_combout\ : std_logic;
SIGNAL \instancia1|Add0~31\ : std_logic;
SIGNAL \instancia1|Add0~32_combout\ : std_logic;
SIGNAL \instancia1|Add0~33\ : std_logic;
SIGNAL \instancia1|Add0~34_combout\ : std_logic;
SIGNAL \instancia1|Add0~35\ : std_logic;
SIGNAL \instancia1|Add0~36_combout\ : std_logic;
SIGNAL \instancia1|Add0~37\ : std_logic;
SIGNAL \instancia1|Add0~38_combout\ : std_logic;
SIGNAL \instancia1|Add0~39\ : std_logic;
SIGNAL \instancia1|Add0~40_combout\ : std_logic;
SIGNAL \instancia1|Add0~41\ : std_logic;
SIGNAL \instancia1|Add0~42_combout\ : std_logic;
SIGNAL \instancia1|Add0~43\ : std_logic;
SIGNAL \instancia1|Add0~44_combout\ : std_logic;
SIGNAL \instancia1|Add0~45\ : std_logic;
SIGNAL \instancia1|Add0~46_combout\ : std_logic;
SIGNAL \instancia1|Add0~47\ : std_logic;
SIGNAL \instancia1|Add0~48_combout\ : std_logic;
SIGNAL \instancia1|Add0~49\ : std_logic;
SIGNAL \instancia1|Add0~50_combout\ : std_logic;
SIGNAL \instancia1|Add0~51\ : std_logic;
SIGNAL \instancia1|Add0~52_combout\ : std_logic;
SIGNAL \instancia1|Add0~53\ : std_logic;
SIGNAL \instancia1|Add0~54_combout\ : std_logic;
SIGNAL \instancia1|Equal0~7_combout\ : std_logic;
SIGNAL \instancia1|Equal0~3_combout\ : std_logic;
SIGNAL \instancia1|Equal0~0_combout\ : std_logic;
SIGNAL \instancia1|Equal0~2_combout\ : std_logic;
SIGNAL \instancia1|Equal0~1_combout\ : std_logic;
SIGNAL \instancia1|Equal0~4_combout\ : std_logic;
SIGNAL \instancia1|Equal0~8_combout\ : std_logic;
SIGNAL \instancia1|salida~0_combout\ : std_logic;
SIGNAL \instancia1|salida~feeder_combout\ : std_logic;
SIGNAL \instancia1|salida~q\ : std_logic;
SIGNAL \instancia1|salida~clkctrl_outclk\ : std_logic;
SIGNAL \DetectoTarjeta~input_o\ : std_logic;
SIGNAL \IDentrada~5_combout\ : std_logic;
SIGNAL \IDentrada~2_combout\ : std_logic;
SIGNAL \Arreglomemoriascopia3~40_combout\ : std_logic;
SIGNAL \IDentrada~4_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~322_combout\ : std_logic;
SIGNAL \Arreglomemoriascopia3~41_combout\ : std_logic;
SIGNAL \Equal29~2_combout\ : std_logic;
SIGNAL \Arreglomemoriascopia3~39_combout\ : std_logic;
SIGNAL \IDentrada~3_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~319_combout\ : std_logic;
SIGNAL \Arreglomemoriascopia3~38_combout\ : std_logic;
SIGNAL \Equal29~1_combout\ : std_logic;
SIGNAL \IDentrada~0_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~318_combout\ : std_logic;
SIGNAL \Arreglomemoriascopia3~37_combout\ : std_logic;
SIGNAL \IDentrada~1_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~317_combout\ : std_logic;
SIGNAL \Arreglomemoriascopia3~36_combout\ : std_logic;
SIGNAL \Equal29~0_combout\ : std_logic;
SIGNAL \Equal29~3_combout\ : std_logic;
SIGNAL \Arreglomemoriascero[47]~316_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~320_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~125_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~142_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~143_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~144_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~145_combout\ : std_logic;
SIGNAL \Arreglomemoriascero[38]~2_combout\ : std_logic;
SIGNAL \Arreglomemoriascero[38]~feeder_combout\ : std_logic;
SIGNAL \Arreglomemoriascopia3~17_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~241_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~229_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~218_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~219_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~220_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~221_combout\ : std_logic;
SIGNAL \Arreglomemoriascero[40]~4_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~236_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~237_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~238_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~239_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~240_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~242_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~248_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~249_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~255_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~222_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~223_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~224_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~225_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~226_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~276_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~277_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~278_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~279_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~280_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~227_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~228_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~230_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~231_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~306_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~307_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~308_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~309_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~310_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~250_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~251_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~252_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~253_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~254_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~373_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~374_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~375_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~376_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~232_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~233_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~234_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~235_combout\ : std_logic;
SIGNAL \Arreglomemoriascero[4]~10_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~343_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~344_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~345_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~346_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~347_combout\ : std_logic;
SIGNAL \Arreglomemoriascopia3~16_combout\ : std_logic;
SIGNAL \Equal35~2_combout\ : std_logic;
SIGNAL \Arreglomemoriascopia3~13_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~93_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~70_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~71_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~72_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~73_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~74_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~89_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~256_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~257_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~258_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~259_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~260_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~75_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~76_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~77_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~78_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~79_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~377_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~378_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~379_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~380_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~381_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~66_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~67_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~68_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~69_combout\ : std_logic;
SIGNAL \Arreglomemoriascero[36]~0_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~90_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~96_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~97_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~103_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~91_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~92_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~94_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~95_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~407_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~408_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~409_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~410_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~411_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~100_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~98_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~99_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~101_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~102_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~286_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~287_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~288_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~289_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~290_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~80_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~81_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~82_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~83_combout\ : std_logic;
SIGNAL \Arreglomemoriascero[0]~6_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~357_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~358_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~359_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~360_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~84_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~85_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~86_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~87_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~88_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~323_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~324_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~325_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~326_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~327_combout\ : std_logic;
SIGNAL \Arreglomemoriascopia3~12_combout\ : std_logic;
SIGNAL \Equal35~0_combout\ : std_logic;
SIGNAL \Arreglomemoriascopia3~14_combout\ : std_logic;
SIGNAL \Arreglomemoriascopia3~15_combout\ : std_logic;
SIGNAL \Equal35~1_combout\ : std_logic;
SIGNAL \Equal35~3_combout\ : std_logic;
SIGNAL \Arreglomemoriascopia3~8_combout\ : std_logic;
SIGNAL \Equal34~1_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~57_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~58_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~59_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~60_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~61_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~37_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~35_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~36_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~38_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~39_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~48_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~291_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~292_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~293_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~294_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~295_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~43_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~41_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~42_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~44_combout\ : std_logic;
SIGNAL \Arreglomemoriascero[1]~7_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~353_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~354_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~355_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~356_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~50_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~51_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~52_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~53_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~54_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~412_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~413_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~414_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~415_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~416_combout\ : std_logic;
SIGNAL \Arreglomemoriascopia3~7_combout\ : std_logic;
SIGNAL \Arreglomemoriascopia3~6_combout\ : std_logic;
SIGNAL \Equal34~0_combout\ : std_logic;
SIGNAL \Arreglomemoriascopia3~11_combout\ : std_logic;
SIGNAL \Arreglomemoriascopia3~10_combout\ : std_logic;
SIGNAL \Equal34~2_combout\ : std_logic;
SIGNAL \Equal34~3_combout\ : std_logic;
SIGNAL \Arreglomemoriascopia3~0_combout\ : std_logic;
SIGNAL \Arreglomemoriascopia3~1_combout\ : std_logic;
SIGNAL \Equal33~0_combout\ : std_logic;
SIGNAL \Arreglomemoriascopia3~2_combout\ : std_logic;
SIGNAL \Arreglomemoriascopia3~3_combout\ : std_logic;
SIGNAL \Equal33~1_combout\ : std_logic;
SIGNAL \Equal33~3_combout\ : std_logic;
SIGNAL \Arreglomemoriascero[3]~45_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~165_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~166_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~172_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~173_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~179_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~156_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~157_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~158_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~159_combout\ : std_logic;
SIGNAL \Arreglomemoriascero[2]~8_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~365_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~366_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~367_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~368_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~160_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~161_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~162_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~163_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~164_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~333_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~334_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~335_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~336_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~337_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~146_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~147_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~148_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~149_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~150_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~266_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~267_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~268_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~269_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~270_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~167_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~168_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~169_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~170_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~171_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~417_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~418_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~419_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~420_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~421_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~174_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~175_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~176_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~177_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~178_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~296_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~297_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~298_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~299_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~300_combout\ : std_logic;
SIGNAL \Arreglomemoriascopia3~20_combout\ : std_logic;
SIGNAL \Equal31~1_combout\ : std_logic;
SIGNAL \Arreglomemoriascopia3~19_combout\ : std_logic;
SIGNAL \Arreglomemoriascopia3~18_combout\ : std_logic;
SIGNAL \Equal31~0_combout\ : std_logic;
SIGNAL \Arreglomemoriascopia3~26_combout\ : std_logic;
SIGNAL \Arreglomemoriascopia3~27_combout\ : std_logic;
SIGNAL \Equal30~1_combout\ : std_logic;
SIGNAL \Arreglomemoriascopia3~24_combout\ : std_logic;
SIGNAL \Equal30~0_combout\ : std_logic;
SIGNAL \Arreglomemoriascopia3~28_combout\ : std_logic;
SIGNAL \Arreglomemoriascopia3~29_combout\ : std_logic;
SIGNAL \Equal30~2_combout\ : std_logic;
SIGNAL \Equal30~3_combout\ : std_logic;
SIGNAL \Arreglomemoriascero[3]~34_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~397_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~398_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~399_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~400_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~401_combout\ : std_logic;
SIGNAL \Arreglomemoriascopia3~4_combout\ : std_logic;
SIGNAL \Equal24~2_combout\ : std_logic;
SIGNAL \Equal25~3_combout\ : std_logic;
SIGNAL \Equal24~0_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~13_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~123_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~124_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~126_combout\ : std_logic;
SIGNAL \Arreglomemoriascero[3]~9_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~127_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~361_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~362_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~363_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~364_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~113_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~114_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~115_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~116_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~117_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~271_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~272_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~273_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~274_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~275_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~136_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~137_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~138_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~139_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~140_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~301_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~302_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~303_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~304_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~305_combout\ : std_logic;
SIGNAL \Arreglomemoriascopia3~21_combout\ : std_logic;
SIGNAL \Equal22~0_combout\ : std_logic;
SIGNAL \Arreglomemoriascopia3~22_combout\ : std_logic;
SIGNAL \Equal22~1_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~199_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~200_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~201_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~202_combout\ : std_logic;
SIGNAL \Arreglomemoriascero[5]~11_combout\ : std_logic;
SIGNAL \Arreglomemoriascero[5]~feeder_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~203_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~184_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~185_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~186_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~187_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~188_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~369_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~370_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~371_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~372_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~189_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~190_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~191_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~192_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~193_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~281_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~282_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~283_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~284_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~285_combout\ : std_logic;
SIGNAL \Arreglomemoriascopia3~35_combout\ : std_logic;
SIGNAL \Arreglomemoriascopia3~34_combout\ : std_logic;
SIGNAL \Arreglomemoriascopia3~32_combout\ : std_logic;
SIGNAL \Arreglomemoriascopia3~33_combout\ : std_logic;
SIGNAL \Arreglomemoriascopia3~30_combout\ : std_logic;
SIGNAL \Equal23~0_combout\ : std_logic;
SIGNAL \Equal23~1_combout\ : std_logic;
SIGNAL \Equal21~2_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~17_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~108_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~109_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~110_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~111_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~112_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~392_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~393_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~394_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~395_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~396_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~104_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~105_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~106_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~107_combout\ : std_logic;
SIGNAL \Arreglomemoriascero[39]~3_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~128_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~134_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~135_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~141_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~120_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~118_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~119_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~121_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~122_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~338_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~339_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~340_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~341_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~342_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~129_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~130_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~131_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~132_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~133_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~422_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~423_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~424_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~425_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~426_combout\ : std_logic;
SIGNAL \Arreglomemoriascopia3~9_combout\ : std_logic;
SIGNAL \Equal25~2_combout\ : std_logic;
SIGNAL \Equal26~0_combout\ : std_logic;
SIGNAL \Equal26~1_combout\ : std_logic;
SIGNAL \Equal24~1_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~12_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~194_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~195_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~196_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~197_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~198_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~348_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~349_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~350_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~351_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~352_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~205_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~206_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~207_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~208_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~209_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~432_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~433_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~434_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~435_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~436_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~212_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~213_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~214_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~215_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~216_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~311_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~312_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~313_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~314_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~315_combout\ : std_logic;
SIGNAL \Arreglomemoriascopia3~23_combout\ : std_logic;
SIGNAL \Equal31~2_combout\ : std_logic;
SIGNAL \Equal31~3_combout\ : std_logic;
SIGNAL \Arreglomemoriascero[3]~28_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~382_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~383_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~384_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~385_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~386_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~23_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~24_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~25_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~26_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~27_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~49_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~55_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~56_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~62_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~14_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~15_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~18_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~19_combout\ : std_logic;
SIGNAL \Arreglomemoriascero[37]~1_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~328_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~329_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~330_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~331_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~332_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~31_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~29_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~30_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~32_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~33_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~261_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~262_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~263_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~264_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~265_combout\ : std_logic;
SIGNAL \Arreglomemoriascopia3~31_combout\ : std_logic;
SIGNAL \Equal32~0_combout\ : std_logic;
SIGNAL \Equal32~2_combout\ : std_logic;
SIGNAL \Equal32~1_combout\ : std_logic;
SIGNAL \Equal32~3_combout\ : std_logic;
SIGNAL \Arreglomemoriascopia3~44_combout\ : std_logic;
SIGNAL \Arreglomemoriascopia3~46_combout\ : std_logic;
SIGNAL \Equal36~0_combout\ : std_logic;
SIGNAL \Arreglomemoriascopia3~47_combout\ : std_logic;
SIGNAL \Arreglomemoriascopia3~43_combout\ : std_logic;
SIGNAL \Equal36~1_combout\ : std_logic;
SIGNAL \Arreglomemoriascopia3~45_combout\ : std_logic;
SIGNAL \Arreglomemoriascopia3~42_combout\ : std_logic;
SIGNAL \Equal36~2_combout\ : std_logic;
SIGNAL \Arreglomemoriascero[3]~63_combout\ : std_logic;
SIGNAL \Arreglomemoriascero[3]~64_combout\ : std_logic;
SIGNAL \Arreglomemoriascero[3]~65_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~402_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~403_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~404_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~405_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~406_combout\ : std_logic;
SIGNAL \Arreglomemoriascopia3~5_combout\ : std_logic;
SIGNAL \Equal33~2_combout\ : std_logic;
SIGNAL \Arreglomemoriascero[3]~40_combout\ : std_logic;
SIGNAL \contadorvueltas~2_combout\ : std_logic;
SIGNAL \contadorvueltas~3_combout\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \Equal20~0_combout\ : std_logic;
SIGNAL \Equal20~1_combout\ : std_logic;
SIGNAL \Equal27~0_combout\ : std_logic;
SIGNAL \Equal27~1_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~21_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~46_combout\ : std_logic;
SIGNAL \definido~3_combout\ : std_logic;
SIGNAL \definido~2_combout\ : std_logic;
SIGNAL \definido~q\ : std_logic;
SIGNAL \Arreglomemoriascero~47_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~321_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~245_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~243_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~244_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~246_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~247_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~427_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~428_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~429_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~430_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~431_combout\ : std_logic;
SIGNAL \Equal14~0_combout\ : std_logic;
SIGNAL \Equal13~0_combout\ : std_logic;
SIGNAL \Equal13~1_combout\ : std_logic;
SIGNAL \Hayespacio~0_combout\ : std_logic;
SIGNAL \Equal9~0_combout\ : std_logic;
SIGNAL \contador2~4_combout\ : std_logic;
SIGNAL \Equal16~0_combout\ : std_logic;
SIGNAL \Equal15~0_combout\ : std_logic;
SIGNAL \Equal15~1_combout\ : std_logic;
SIGNAL \Hayespacio~1_combout\ : std_logic;
SIGNAL \Equal9~1_combout\ : std_logic;
SIGNAL \Hayespacio~2_combout\ : std_logic;
SIGNAL \Equal11~0_combout\ : std_logic;
SIGNAL \Equal11~1_combout\ : std_logic;
SIGNAL \Equal12~0_combout\ : std_logic;
SIGNAL \Equal12~1_combout\ : std_logic;
SIGNAL \Hayespacio~3_combout\ : std_logic;
SIGNAL \Add10~0_combout\ : std_logic;
SIGNAL \Add12~0_combout\ : std_logic;
SIGNAL \Add13~0_combout\ : std_logic;
SIGNAL \Add14~0_combout\ : std_logic;
SIGNAL \Add15~1_cout\ : std_logic;
SIGNAL \Add15~2_combout\ : std_logic;
SIGNAL \Add10~2_combout\ : std_logic;
SIGNAL \Add13~1\ : std_logic;
SIGNAL \Add13~2_combout\ : std_logic;
SIGNAL \Add15~3\ : std_logic;
SIGNAL \Add15~4_combout\ : std_logic;
SIGNAL \Add10~1_combout\ : std_logic;
SIGNAL \Add13~3\ : std_logic;
SIGNAL \Add13~4_combout\ : std_logic;
SIGNAL \Add15~5\ : std_logic;
SIGNAL \Add15~6_combout\ : std_logic;
SIGNAL \Add13~5\ : std_logic;
SIGNAL \Add13~6_combout\ : std_logic;
SIGNAL \Add15~7\ : std_logic;
SIGNAL \Add15~8_combout\ : std_logic;
SIGNAL \Equal17~0_combout\ : std_logic;
SIGNAL \Hayespacio~4_combout\ : std_logic;
SIGNAL \Hayespacio~q\ : std_logic;
SIGNAL \Arreglomemoriascero~20_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~22_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~182_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~180_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~181_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~183_combout\ : std_logic;
SIGNAL \Arreglomemoriascero[41]~5_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~204_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~210_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~211_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~217_combout\ : std_logic;
SIGNAL \Equal10~0_combout\ : std_logic;
SIGNAL \Equal10~1_combout\ : std_logic;
SIGNAL \vuelta~0_combout\ : std_logic;
SIGNAL \vuelta~q\ : std_logic;
SIGNAL \Arreglomemoriascopia3~25_combout\ : std_logic;
SIGNAL \Equal21~0_combout\ : std_logic;
SIGNAL \Equal21~1_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~16_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~151_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~152_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~153_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~154_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~155_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~387_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~388_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~389_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~390_combout\ : std_logic;
SIGNAL \Arreglomemoriascero~391_combout\ : std_logic;
SIGNAL \Equal4~1_combout\ : std_logic;
SIGNAL \Equal5~2_combout\ : std_logic;
SIGNAL \Equal5~1_combout\ : std_logic;
SIGNAL \Equal5~0_combout\ : std_logic;
SIGNAL \Equal5~3_combout\ : std_logic;
SIGNAL \Equal4~2_combout\ : std_logic;
SIGNAL \Equal4~0_combout\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \Equal6~2_combout\ : std_logic;
SIGNAL \Equal6~1_combout\ : std_logic;
SIGNAL \Equal6~0_combout\ : std_logic;
SIGNAL \Equal7~2_combout\ : std_logic;
SIGNAL \Equal7~1_combout\ : std_logic;
SIGNAL \Equal7~0_combout\ : std_logic;
SIGNAL \Equal7~3_combout\ : std_logic;
SIGNAL \Add5~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \Equal2~2_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \Equal2~3_combout\ : std_logic;
SIGNAL \Equal3~1_combout\ : std_logic;
SIGNAL \Equal3~2_combout\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \Equal3~3_combout\ : std_logic;
SIGNAL \EstaAquiEseCasco~0_combout\ : std_logic;
SIGNAL \EstaAquiEseCasco~1_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Equal1~3_combout\ : std_logic;
SIGNAL \Add5~1_combout\ : std_logic;
SIGNAL \Add1~1_combout\ : std_logic;
SIGNAL \Add3~1_combout\ : std_logic;
SIGNAL \Add4~0_combout\ : std_logic;
SIGNAL \Add6~1_cout\ : std_logic;
SIGNAL \Add6~2_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Add4~1\ : std_logic;
SIGNAL \Add4~2_combout\ : std_logic;
SIGNAL \Add6~3\ : std_logic;
SIGNAL \Add6~4_combout\ : std_logic;
SIGNAL \contador~4_combout\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Add4~3\ : std_logic;
SIGNAL \Add4~4_combout\ : std_logic;
SIGNAL \Add6~5\ : std_logic;
SIGNAL \Add6~6_combout\ : std_logic;
SIGNAL \Add4~5\ : std_logic;
SIGNAL \Add4~6_combout\ : std_logic;
SIGNAL \Add6~7\ : std_logic;
SIGNAL \Add6~8_combout\ : std_logic;
SIGNAL \EstaAquiEseCasco~2_combout\ : std_logic;
SIGNAL \EstaAquiEseCasco~3_combout\ : std_logic;
SIGNAL \EstaAquiEseCasco~q\ : std_logic;
SIGNAL \Vcontrol~0_combout\ : std_logic;
SIGNAL \Vcontrol[1]~feeder_combout\ : std_logic;
SIGNAL \instancia5|instancia1|Add0~0_combout\ : std_logic;
SIGNAL \instancia5|instancia1|cuenta~6_combout\ : std_logic;
SIGNAL \instancia5|instancia1|Add0~1\ : std_logic;
SIGNAL \instancia5|instancia1|Add0~2_combout\ : std_logic;
SIGNAL \instancia5|instancia1|Add0~3\ : std_logic;
SIGNAL \instancia5|instancia1|Add0~4_combout\ : std_logic;
SIGNAL \instancia5|instancia1|Add0~5\ : std_logic;
SIGNAL \instancia5|instancia1|Add0~6_combout\ : std_logic;
SIGNAL \instancia5|instancia1|cuenta~5_combout\ : std_logic;
SIGNAL \instancia5|instancia1|Add0~7\ : std_logic;
SIGNAL \instancia5|instancia1|Add0~8_combout\ : std_logic;
SIGNAL \instancia5|instancia1|Add0~9\ : std_logic;
SIGNAL \instancia5|instancia1|Add0~10_combout\ : std_logic;
SIGNAL \instancia5|instancia1|cuenta~4_combout\ : std_logic;
SIGNAL \instancia5|instancia1|Add0~11\ : std_logic;
SIGNAL \instancia5|instancia1|Add0~12_combout\ : std_logic;
SIGNAL \instancia5|instancia1|Add0~13\ : std_logic;
SIGNAL \instancia5|instancia1|Add0~14_combout\ : std_logic;
SIGNAL \instancia5|instancia1|cuenta~3_combout\ : std_logic;
SIGNAL \instancia5|instancia1|Equal0~5_combout\ : std_logic;
SIGNAL \instancia5|instancia1|Add0~15\ : std_logic;
SIGNAL \instancia5|instancia1|Add0~16_combout\ : std_logic;
SIGNAL \instancia5|instancia1|cuenta~2_combout\ : std_logic;
SIGNAL \instancia5|instancia1|Add0~17\ : std_logic;
SIGNAL \instancia5|instancia1|Add0~18_combout\ : std_logic;
SIGNAL \instancia5|instancia1|Add0~19\ : std_logic;
SIGNAL \instancia5|instancia1|Add0~20_combout\ : std_logic;
SIGNAL \instancia5|instancia1|Add0~21\ : std_logic;
SIGNAL \instancia5|instancia1|Add0~22_combout\ : std_logic;
SIGNAL \instancia5|instancia1|Add0~23\ : std_logic;
SIGNAL \instancia5|instancia1|Add0~24_combout\ : std_logic;
SIGNAL \instancia5|instancia1|Add0~25\ : std_logic;
SIGNAL \instancia5|instancia1|Add0~26_combout\ : std_logic;
SIGNAL \instancia5|instancia1|cuenta~1_combout\ : std_logic;
SIGNAL \instancia5|instancia1|Add0~27\ : std_logic;
SIGNAL \instancia5|instancia1|Add0~28_combout\ : std_logic;
SIGNAL \instancia5|instancia1|cuenta~0_combout\ : std_logic;
SIGNAL \instancia5|instancia1|Add0~29\ : std_logic;
SIGNAL \instancia5|instancia1|Add0~30_combout\ : std_logic;
SIGNAL \instancia5|instancia1|Add0~31\ : std_logic;
SIGNAL \instancia5|instancia1|Add0~32_combout\ : std_logic;
SIGNAL \instancia5|instancia1|Add0~33\ : std_logic;
SIGNAL \instancia5|instancia1|Add0~34_combout\ : std_logic;
SIGNAL \instancia5|instancia1|Add0~35\ : std_logic;
SIGNAL \instancia5|instancia1|Add0~36_combout\ : std_logic;
SIGNAL \instancia5|instancia1|Add0~37\ : std_logic;
SIGNAL \instancia5|instancia1|Add0~38_combout\ : std_logic;
SIGNAL \instancia5|instancia1|Add0~39\ : std_logic;
SIGNAL \instancia5|instancia1|Add0~40_combout\ : std_logic;
SIGNAL \instancia5|instancia1|Add0~41\ : std_logic;
SIGNAL \instancia5|instancia1|Add0~42_combout\ : std_logic;
SIGNAL \instancia5|instancia1|Add0~43\ : std_logic;
SIGNAL \instancia5|instancia1|Add0~44_combout\ : std_logic;
SIGNAL \instancia5|instancia1|Add0~45\ : std_logic;
SIGNAL \instancia5|instancia1|Add0~46_combout\ : std_logic;
SIGNAL \instancia5|instancia1|Add0~47\ : std_logic;
SIGNAL \instancia5|instancia1|Add0~48_combout\ : std_logic;
SIGNAL \instancia5|instancia1|Add0~49\ : std_logic;
SIGNAL \instancia5|instancia1|Add0~50_combout\ : std_logic;
SIGNAL \instancia5|instancia1|Add0~51\ : std_logic;
SIGNAL \instancia5|instancia1|Add0~52_combout\ : std_logic;
SIGNAL \instancia5|instancia1|Add0~53\ : std_logic;
SIGNAL \instancia5|instancia1|Add0~54_combout\ : std_logic;
SIGNAL \instancia5|instancia1|Equal0~7_combout\ : std_logic;
SIGNAL \instancia5|instancia1|Equal0~6_combout\ : std_logic;
SIGNAL \instancia5|instancia1|Equal0~3_combout\ : std_logic;
SIGNAL \instancia5|instancia1|Equal0~0_combout\ : std_logic;
SIGNAL \instancia5|instancia1|Equal0~1_combout\ : std_logic;
SIGNAL \instancia5|instancia1|Equal0~2_combout\ : std_logic;
SIGNAL \instancia5|instancia1|Equal0~4_combout\ : std_logic;
SIGNAL \instancia5|instancia1|Equal0~8_combout\ : std_logic;
SIGNAL \instancia5|instancia1|salida~0_combout\ : std_logic;
SIGNAL \instancia5|instancia1|salida~feeder_combout\ : std_logic;
SIGNAL \instancia5|instancia1|salida~q\ : std_logic;
SIGNAL \instancia5|instancia1|salida~clkctrl_outclk\ : std_logic;
SIGNAL \instancia5|Add0~0_combout\ : std_logic;
SIGNAL \instancia5|Add0~1\ : std_logic;
SIGNAL \instancia5|Add0~2_combout\ : std_logic;
SIGNAL \instancia5|Add0~3\ : std_logic;
SIGNAL \instancia5|Add0~4_combout\ : std_logic;
SIGNAL \instancia5|cuenta~0_combout\ : std_logic;
SIGNAL \instancia5|Add0~5\ : std_logic;
SIGNAL \instancia5|Add0~6_combout\ : std_logic;
SIGNAL \instancia5|Equal0~0_combout\ : std_logic;
SIGNAL \instancia5|Add0~7\ : std_logic;
SIGNAL \instancia5|Add0~8_combout\ : std_logic;
SIGNAL \instancia5|cuenta~1_combout\ : std_logic;
SIGNAL \instancia3|Add0~0_combout\ : std_logic;
SIGNAL \instancia3|cuenta~7_combout\ : std_logic;
SIGNAL \instancia3|Add0~1\ : std_logic;
SIGNAL \instancia3|Add0~2_combout\ : std_logic;
SIGNAL \instancia3|Add0~3\ : std_logic;
SIGNAL \instancia3|Add0~4_combout\ : std_logic;
SIGNAL \instancia3|Add0~5\ : std_logic;
SIGNAL \instancia3|Add0~6_combout\ : std_logic;
SIGNAL \instancia3|Add0~7\ : std_logic;
SIGNAL \instancia3|Add0~8_combout\ : std_logic;
SIGNAL \instancia3|Add0~9\ : std_logic;
SIGNAL \instancia3|Add0~10_combout\ : std_logic;
SIGNAL \instancia3|cuenta~6_combout\ : std_logic;
SIGNAL \instancia3|Add0~11\ : std_logic;
SIGNAL \instancia3|Add0~12_combout\ : std_logic;
SIGNAL \instancia3|Add0~13\ : std_logic;
SIGNAL \instancia3|Add0~14_combout\ : std_logic;
SIGNAL \instancia3|Add0~15\ : std_logic;
SIGNAL \instancia3|Add0~16_combout\ : std_logic;
SIGNAL \instancia3|cuenta~5_combout\ : std_logic;
SIGNAL \instancia3|Add0~17\ : std_logic;
SIGNAL \instancia3|Add0~18_combout\ : std_logic;
SIGNAL \instancia3|Add0~19\ : std_logic;
SIGNAL \instancia3|Add0~20_combout\ : std_logic;
SIGNAL \instancia3|Add0~21\ : std_logic;
SIGNAL \instancia3|Add0~22_combout\ : std_logic;
SIGNAL \instancia3|Add0~23\ : std_logic;
SIGNAL \instancia3|Add0~24_combout\ : std_logic;
SIGNAL \instancia3|Add0~25\ : std_logic;
SIGNAL \instancia3|Add0~26_combout\ : std_logic;
SIGNAL \instancia3|cuenta~4_combout\ : std_logic;
SIGNAL \instancia3|Add0~27\ : std_logic;
SIGNAL \instancia3|Add0~28_combout\ : std_logic;
SIGNAL \instancia3|Add0~29\ : std_logic;
SIGNAL \instancia3|Add0~30_combout\ : std_logic;
SIGNAL \instancia3|cuenta~3_combout\ : std_logic;
SIGNAL \instancia3|Add0~31\ : std_logic;
SIGNAL \instancia3|Add0~32_combout\ : std_logic;
SIGNAL \instancia3|cuenta~2_combout\ : std_logic;
SIGNAL \instancia3|Add0~33\ : std_logic;
SIGNAL \instancia3|Add0~34_combout\ : std_logic;
SIGNAL \instancia3|cuenta~1_combout\ : std_logic;
SIGNAL \instancia3|Add0~35\ : std_logic;
SIGNAL \instancia3|Add0~36_combout\ : std_logic;
SIGNAL \instancia3|cuenta~0_combout\ : std_logic;
SIGNAL \instancia3|Add0~37\ : std_logic;
SIGNAL \instancia3|Add0~38_combout\ : std_logic;
SIGNAL \instancia3|Add0~39\ : std_logic;
SIGNAL \instancia3|Add0~40_combout\ : std_logic;
SIGNAL \instancia3|Add0~41\ : std_logic;
SIGNAL \instancia3|Add0~42_combout\ : std_logic;
SIGNAL \instancia3|Add0~43\ : std_logic;
SIGNAL \instancia3|Add0~44_combout\ : std_logic;
SIGNAL \instancia3|Add0~45\ : std_logic;
SIGNAL \instancia3|Add0~46_combout\ : std_logic;
SIGNAL \instancia3|Add0~47\ : std_logic;
SIGNAL \instancia3|Add0~48_combout\ : std_logic;
SIGNAL \instancia3|Add0~49\ : std_logic;
SIGNAL \instancia3|Add0~50_combout\ : std_logic;
SIGNAL \instancia3|Add0~51\ : std_logic;
SIGNAL \instancia3|Add0~52_combout\ : std_logic;
SIGNAL \instancia3|Add0~53\ : std_logic;
SIGNAL \instancia3|Add0~54_combout\ : std_logic;
SIGNAL \instancia3|Equal0~7_combout\ : std_logic;
SIGNAL \instancia3|Equal0~5_combout\ : std_logic;
SIGNAL \instancia3|Equal0~6_combout\ : std_logic;
SIGNAL \instancia3|Equal0~1_combout\ : std_logic;
SIGNAL \instancia3|Equal0~0_combout\ : std_logic;
SIGNAL \instancia3|Equal0~2_combout\ : std_logic;
SIGNAL \instancia3|Equal0~3_combout\ : std_logic;
SIGNAL \instancia3|Equal0~4_combout\ : std_logic;
SIGNAL \instancia3|Equal0~8_combout\ : std_logic;
SIGNAL \instancia3|salida~0_combout\ : std_logic;
SIGNAL \instancia3|salida~feeder_combout\ : std_logic;
SIGNAL \instancia3|salida~q\ : std_logic;
SIGNAL \instancia3|salida~clkctrl_outclk\ : std_logic;
SIGNAL \Sensorproximidad~input_o\ : std_logic;
SIGNAL \instancia4|registro[0]~0_combout\ : std_logic;
SIGNAL \instancia4|registro[1]~feeder_combout\ : std_logic;
SIGNAL \instancia4|registro[2]~feeder_combout\ : std_logic;
SIGNAL \instancia4|registro[3]~feeder_combout\ : std_logic;
SIGNAL \instancia4|registro[4]~feeder_combout\ : std_logic;
SIGNAL \instancia4|registro[5]~feeder_combout\ : std_logic;
SIGNAL \instancia4|registro[6]~feeder_combout\ : std_logic;
SIGNAL \instancia4|registro[7]~feeder_combout\ : std_logic;
SIGNAL \instancia4|registro[8]~feeder_combout\ : std_logic;
SIGNAL \instancia4|Equal0~1_combout\ : std_logic;
SIGNAL \instancia4|Equal0~0_combout\ : std_logic;
SIGNAL \instancia4|Equal0~2_combout\ : std_logic;
SIGNAL \movimientos~7_combout\ : std_logic;
SIGNAL \contadorvueltas~0_combout\ : std_logic;
SIGNAL \contadorvueltas~1_combout\ : std_logic;
SIGNAL \contadorvueltas~4_combout\ : std_logic;
SIGNAL \contadorvueltas~8_combout\ : std_logic;
SIGNAL \Add18~0_combout\ : std_logic;
SIGNAL \contadorvueltas~7_combout\ : std_logic;
SIGNAL \Add18~15\ : std_logic;
SIGNAL \Add18~16_combout\ : std_logic;
SIGNAL \movimientos~22_combout\ : std_logic;
SIGNAL \contadorvueltas~16_combout\ : std_logic;
SIGNAL \Add18~1\ : std_logic;
SIGNAL \Add18~2_combout\ : std_logic;
SIGNAL \contadorvueltas~15_combout\ : std_logic;
SIGNAL \Add18~3\ : std_logic;
SIGNAL \Add18~4_combout\ : std_logic;
SIGNAL \contadorvueltas~14_combout\ : std_logic;
SIGNAL \Add18~5\ : std_logic;
SIGNAL \Add18~6_combout\ : std_logic;
SIGNAL \contadorvueltas~13_combout\ : std_logic;
SIGNAL \Add18~7\ : std_logic;
SIGNAL \Add18~9\ : std_logic;
SIGNAL \Add18~10_combout\ : std_logic;
SIGNAL \contadorvueltas~11_combout\ : std_logic;
SIGNAL \Add18~11\ : std_logic;
SIGNAL \Add18~12_combout\ : std_logic;
SIGNAL \contadorvueltas~10_combout\ : std_logic;
SIGNAL \Add18~13\ : std_logic;
SIGNAL \Add18~14_combout\ : std_logic;
SIGNAL \contadorvueltas~9_combout\ : std_logic;
SIGNAL \contadorvueltas~12_combout\ : std_logic;
SIGNAL \Add18~8_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \contadorvueltas~5_combout\ : std_logic;
SIGNAL \contadorvueltas~6_combout\ : std_logic;
SIGNAL \Add18~17\ : std_logic;
SIGNAL \Add18~18_combout\ : std_logic;
SIGNAL \movimientos~24_combout\ : std_logic;
SIGNAL \movimientos~25_combout\ : std_logic;
SIGNAL \movimientos~15_combout\ : std_logic;
SIGNAL \Equal25~4_combout\ : std_logic;
SIGNAL \movimientos~11_combout\ : std_logic;
SIGNAL \movimientos~12_combout\ : std_logic;
SIGNAL \movimientos~13_combout\ : std_logic;
SIGNAL \movimientos~9_combout\ : std_logic;
SIGNAL \movimientos~10_combout\ : std_logic;
SIGNAL \movimientos~14_combout\ : std_logic;
SIGNAL \movimientos~16_combout\ : std_logic;
SIGNAL \movimientos~26_combout\ : std_logic;
SIGNAL \movimientos~28_combout\ : std_logic;
SIGNAL \movimientos~29_combout\ : std_logic;
SIGNAL \movimientos~27_combout\ : std_logic;
SIGNAL \movimientos~17_combout\ : std_logic;
SIGNAL \movimientos~18_combout\ : std_logic;
SIGNAL \movimientos~19_combout\ : std_logic;
SIGNAL \Equal37~1_combout\ : std_logic;
SIGNAL \movimientos~23_combout\ : std_logic;
SIGNAL \movimientos~5_combout\ : std_logic;
SIGNAL \movimientos~6_combout\ : std_logic;
SIGNAL \movimientos~8_combout\ : std_logic;
SIGNAL \movimientos~20_combout\ : std_logic;
SIGNAL \movimientos~21_combout\ : std_logic;
SIGNAL \movimientos~4_combout\ : std_logic;
SIGNAL \Equal37~0_combout\ : std_logic;
SIGNAL \sensorDetenido~feeder_combout\ : std_logic;
SIGNAL \sensorDetenido~q\ : std_logic;
SIGNAL \sensorDetenido~0_combout\ : std_logic;
SIGNAL \Servosenal~0_combout\ : std_logic;
SIGNAL \Servosenal~1_combout\ : std_logic;
SIGNAL \Servosenal~q\ : std_logic;
SIGNAL \instancia5|LessThan0~0_combout\ : std_logic;
SIGNAL \instancia5|LessThan0~1_combout\ : std_logic;
SIGNAL \instancia5|salida~q\ : std_logic;
SIGNAL \instancia2|estadotemp[0]~0_combout\ : std_logic;
SIGNAL \instancia2|salida~4_combout\ : std_logic;
SIGNAL \instancia2|salida~0_combout\ : std_logic;
SIGNAL \instancia2|salida~1_combout\ : std_logic;
SIGNAL \instancia2|salida~2_combout\ : std_logic;
SIGNAL \instancia2|salida~3_combout\ : std_logic;
SIGNAL \instancia1|cuenta\ : std_logic_vector(27 DOWNTO 0);
SIGNAL \instancia2|estadotemp\ : std_logic_vector(1 DOWNTO 0);
SIGNAL Arreglomemoriascero : std_logic_vector(47 DOWNTO 0);
SIGNAL Vcontrol : std_logic_vector(1 DOWNTO 0);
SIGNAL Arreglomemoriascopia3 : std_logic_vector(47 DOWNTO 0);
SIGNAL \instancia2|salida\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \instancia5|cuenta\ : std_logic_vector(4 DOWNTO 0);
SIGNAL Sentidogirosalidadirecta : std_logic_vector(1 DOWNTO 0);
SIGNAL IDentrada : std_logic_vector(5 DOWNTO 0);
SIGNAL registrosensor : std_logic_vector(1 DOWNTO 0);
SIGNAL \instancia4|registro\ : std_logic_vector(8 DOWNTO 0);
SIGNAL movimientos : std_logic_vector(3 DOWNTO 0);
SIGNAL \instancia5|instancia1|cuenta\ : std_logic_vector(27 DOWNTO 0);
SIGNAL contadorvueltas : std_logic_vector(9 DOWNTO 0);
SIGNAL \instancia3|cuenta\ : std_logic_vector(27 DOWNTO 0);
SIGNAL \ALT_INV_Lecturatarjeta[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_Lecturatarjeta[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_Lecturatarjeta[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_Lecturatarjeta[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_Lecturatarjeta[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_Lecturatarjeta[0]~input_o\ : std_logic;
SIGNAL ALT_INV_Vcontrol : std_logic_vector(1 DOWNTO 0);
SIGNAL \ALT_INV_Hayespacio~q\ : std_logic;
SIGNAL \ALT_INV_EstaAquiEseCasco~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_DetectoTarjeta <= DetectoTarjeta;
ww_Lecturatarjeta <= Lecturatarjeta;
ww_Sensorproximidad <= Sensorproximidad;
Salectu <= ww_Salectu;
EstaAqui <= ww_EstaAqui;
Hayesp <= ww_Hayesp;
SenalControl <= ww_SenalControl;
SalidaServo <= ww_SalidaServo;
Salidaalmotor <= ww_Salidaalmotor;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\instancia1|salida~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \instancia1|salida~q\);

\instancia5|instancia1|salida~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \instancia5|instancia1|salida~q\);

\instancia3|salida~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \instancia3|salida~q\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_Lecturatarjeta[5]~input_o\ <= NOT \Lecturatarjeta[5]~input_o\;
\ALT_INV_Lecturatarjeta[4]~input_o\ <= NOT \Lecturatarjeta[4]~input_o\;
\ALT_INV_Lecturatarjeta[3]~input_o\ <= NOT \Lecturatarjeta[3]~input_o\;
\ALT_INV_Lecturatarjeta[2]~input_o\ <= NOT \Lecturatarjeta[2]~input_o\;
\ALT_INV_Lecturatarjeta[1]~input_o\ <= NOT \Lecturatarjeta[1]~input_o\;
\ALT_INV_Lecturatarjeta[0]~input_o\ <= NOT \Lecturatarjeta[0]~input_o\;
ALT_INV_Vcontrol(1) <= NOT Vcontrol(1);
ALT_INV_Vcontrol(0) <= NOT Vcontrol(0);
\ALT_INV_Hayespacio~q\ <= NOT \Hayespacio~q\;
\ALT_INV_EstaAquiEseCasco~q\ <= NOT \EstaAquiEseCasco~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X34_Y4_N23
\Salectu[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Lecturatarjeta[0]~input_o\,
	devoe => ww_devoe,
	o => \Salectu[0]~output_o\);

-- Location: IOOBUF_X34_Y4_N16
\Salectu[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Lecturatarjeta[1]~input_o\,
	devoe => ww_devoe,
	o => \Salectu[1]~output_o\);

-- Location: IOOBUF_X34_Y9_N16
\Salectu[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Lecturatarjeta[2]~input_o\,
	devoe => ww_devoe,
	o => \Salectu[2]~output_o\);

-- Location: IOOBUF_X34_Y9_N23
\Salectu[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Lecturatarjeta[3]~input_o\,
	devoe => ww_devoe,
	o => \Salectu[3]~output_o\);

-- Location: IOOBUF_X34_Y7_N9
\Salectu[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Lecturatarjeta[4]~input_o\,
	devoe => ww_devoe,
	o => \Salectu[4]~output_o\);

-- Location: IOOBUF_X34_Y2_N16
\Salectu[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Lecturatarjeta[5]~input_o\,
	devoe => ww_devoe,
	o => \Salectu[5]~output_o\);

-- Location: IOOBUF_X32_Y0_N9
\EstaAqui~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_EstaAquiEseCasco~q\,
	devoe => ww_devoe,
	o => \EstaAqui~output_o\);

-- Location: IOOBUF_X34_Y2_N23
\Hayesp~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Hayespacio~q\,
	devoe => ww_devoe,
	o => \Hayesp~output_o\);

-- Location: IOOBUF_X32_Y0_N16
\SenalControl[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_Vcontrol(0),
	devoe => ww_devoe,
	o => \SenalControl[0]~output_o\);

-- Location: IOOBUF_X34_Y3_N23
\SenalControl[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_Vcontrol(1),
	devoe => ww_devoe,
	o => \SenalControl[1]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\SalidaServo~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instancia5|salida~q\,
	devoe => ww_devoe,
	o => \SalidaServo~output_o\);

-- Location: IOOBUF_X1_Y0_N23
\Salidaalmotor[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instancia2|salida\(0),
	devoe => ww_devoe,
	o => \Salidaalmotor[0]~output_o\);

-- Location: IOOBUF_X0_Y6_N23
\Salidaalmotor[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instancia2|salida\(1),
	devoe => ww_devoe,
	o => \Salidaalmotor[1]~output_o\);

-- Location: IOOBUF_X0_Y7_N2
\Salidaalmotor[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instancia2|salida\(2),
	devoe => ww_devoe,
	o => \Salidaalmotor[2]~output_o\);

-- Location: IOOBUF_X0_Y9_N9
\Salidaalmotor[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instancia2|salida\(3),
	devoe => ww_devoe,
	o => \Salidaalmotor[3]~output_o\);

-- Location: IOIBUF_X34_Y12_N15
\Lecturatarjeta[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Lecturatarjeta(0),
	o => \Lecturatarjeta[0]~input_o\);

-- Location: IOIBUF_X18_Y0_N15
\Lecturatarjeta[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Lecturatarjeta(1),
	o => \Lecturatarjeta[1]~input_o\);

-- Location: IOIBUF_X18_Y0_N22
\Lecturatarjeta[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Lecturatarjeta(2),
	o => \Lecturatarjeta[2]~input_o\);

-- Location: IOIBUF_X16_Y0_N8
\Lecturatarjeta[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Lecturatarjeta(3),
	o => \Lecturatarjeta[3]~input_o\);

-- Location: IOIBUF_X13_Y0_N15
\Lecturatarjeta[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Lecturatarjeta(4),
	o => \Lecturatarjeta[4]~input_o\);

-- Location: IOIBUF_X5_Y0_N15
\Lecturatarjeta[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Lecturatarjeta(5),
	o => \Lecturatarjeta[5]~input_o\);

-- Location: IOIBUF_X0_Y11_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X23_Y13_N4
\instancia1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia1|Add0~0_combout\ = \instancia1|cuenta\(0) $ (VCC)
-- \instancia1|Add0~1\ = CARRY(\instancia1|cuenta\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia1|cuenta\(0),
	datad => VCC,
	combout => \instancia1|Add0~0_combout\,
	cout => \instancia1|Add0~1\);

-- Location: LCCOMB_X24_Y13_N20
\instancia1|cuenta~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia1|cuenta~6_combout\ = (\instancia1|Add0~0_combout\ & !\instancia1|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instancia1|Add0~0_combout\,
	datad => \instancia1|Equal0~8_combout\,
	combout => \instancia1|cuenta~6_combout\);

-- Location: FF_X24_Y13_N21
\instancia1|cuenta[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instancia1|cuenta~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia1|cuenta\(0));

-- Location: LCCOMB_X23_Y13_N6
\instancia1|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia1|Add0~2_combout\ = (\instancia1|cuenta\(1) & (!\instancia1|Add0~1\)) # (!\instancia1|cuenta\(1) & ((\instancia1|Add0~1\) # (GND)))
-- \instancia1|Add0~3\ = CARRY((!\instancia1|Add0~1\) # (!\instancia1|cuenta\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instancia1|cuenta\(1),
	datad => VCC,
	cin => \instancia1|Add0~1\,
	combout => \instancia1|Add0~2_combout\,
	cout => \instancia1|Add0~3\);

-- Location: FF_X23_Y13_N7
\instancia1|cuenta[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instancia1|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia1|cuenta\(1));

-- Location: LCCOMB_X23_Y13_N8
\instancia1|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia1|Add0~4_combout\ = (\instancia1|cuenta\(2) & (\instancia1|Add0~3\ $ (GND))) # (!\instancia1|cuenta\(2) & (!\instancia1|Add0~3\ & VCC))
-- \instancia1|Add0~5\ = CARRY((\instancia1|cuenta\(2) & !\instancia1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instancia1|cuenta\(2),
	datad => VCC,
	cin => \instancia1|Add0~3\,
	combout => \instancia1|Add0~4_combout\,
	cout => \instancia1|Add0~5\);

-- Location: FF_X23_Y13_N9
\instancia1|cuenta[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instancia1|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia1|cuenta\(2));

-- Location: LCCOMB_X23_Y13_N10
\instancia1|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia1|Add0~6_combout\ = (\instancia1|cuenta\(3) & (!\instancia1|Add0~5\)) # (!\instancia1|cuenta\(3) & ((\instancia1|Add0~5\) # (GND)))
-- \instancia1|Add0~7\ = CARRY((!\instancia1|Add0~5\) # (!\instancia1|cuenta\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instancia1|cuenta\(3),
	datad => VCC,
	cin => \instancia1|Add0~5\,
	combout => \instancia1|Add0~6_combout\,
	cout => \instancia1|Add0~7\);

-- Location: FF_X23_Y13_N11
\instancia1|cuenta[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instancia1|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia1|cuenta\(3));

-- Location: LCCOMB_X23_Y13_N12
\instancia1|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia1|Add0~8_combout\ = (\instancia1|cuenta\(4) & (\instancia1|Add0~7\ $ (GND))) # (!\instancia1|cuenta\(4) & (!\instancia1|Add0~7\ & VCC))
-- \instancia1|Add0~9\ = CARRY((\instancia1|cuenta\(4) & !\instancia1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instancia1|cuenta\(4),
	datad => VCC,
	cin => \instancia1|Add0~7\,
	combout => \instancia1|Add0~8_combout\,
	cout => \instancia1|Add0~9\);

-- Location: LCCOMB_X23_Y13_N2
\instancia1|cuenta~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia1|cuenta~5_combout\ = (\instancia1|Add0~8_combout\ & !\instancia1|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia1|Add0~8_combout\,
	datad => \instancia1|Equal0~8_combout\,
	combout => \instancia1|cuenta~5_combout\);

-- Location: FF_X23_Y13_N3
\instancia1|cuenta[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instancia1|cuenta~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia1|cuenta\(4));

-- Location: LCCOMB_X23_Y13_N14
\instancia1|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia1|Add0~10_combout\ = (\instancia1|cuenta\(5) & (!\instancia1|Add0~9\)) # (!\instancia1|cuenta\(5) & ((\instancia1|Add0~9\) # (GND)))
-- \instancia1|Add0~11\ = CARRY((!\instancia1|Add0~9\) # (!\instancia1|cuenta\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instancia1|cuenta\(5),
	datad => VCC,
	cin => \instancia1|Add0~9\,
	combout => \instancia1|Add0~10_combout\,
	cout => \instancia1|Add0~11\);

-- Location: FF_X23_Y13_N15
\instancia1|cuenta[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instancia1|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia1|cuenta\(5));

-- Location: LCCOMB_X23_Y13_N16
\instancia1|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia1|Add0~12_combout\ = (\instancia1|cuenta\(6) & (\instancia1|Add0~11\ $ (GND))) # (!\instancia1|cuenta\(6) & (!\instancia1|Add0~11\ & VCC))
-- \instancia1|Add0~13\ = CARRY((\instancia1|cuenta\(6) & !\instancia1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instancia1|cuenta\(6),
	datad => VCC,
	cin => \instancia1|Add0~11\,
	combout => \instancia1|Add0~12_combout\,
	cout => \instancia1|Add0~13\);

-- Location: LCCOMB_X23_Y13_N0
\instancia1|cuenta~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia1|cuenta~4_combout\ = (\instancia1|Add0~12_combout\ & !\instancia1|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instancia1|Add0~12_combout\,
	datad => \instancia1|Equal0~8_combout\,
	combout => \instancia1|cuenta~4_combout\);

-- Location: FF_X23_Y13_N1
\instancia1|cuenta[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instancia1|cuenta~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia1|cuenta\(6));

-- Location: LCCOMB_X23_Y13_N18
\instancia1|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia1|Add0~14_combout\ = (\instancia1|cuenta\(7) & (!\instancia1|Add0~13\)) # (!\instancia1|cuenta\(7) & ((\instancia1|Add0~13\) # (GND)))
-- \instancia1|Add0~15\ = CARRY((!\instancia1|Add0~13\) # (!\instancia1|cuenta\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instancia1|cuenta\(7),
	datad => VCC,
	cin => \instancia1|Add0~13\,
	combout => \instancia1|Add0~14_combout\,
	cout => \instancia1|Add0~15\);

-- Location: FF_X23_Y13_N19
\instancia1|cuenta[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instancia1|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia1|cuenta\(7));

-- Location: LCCOMB_X24_Y13_N22
\instancia1|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia1|Equal0~5_combout\ = (!\instancia1|cuenta\(5) & (!\instancia1|cuenta\(7) & (\instancia1|cuenta\(6) & \instancia1|cuenta\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia1|cuenta\(5),
	datab => \instancia1|cuenta\(7),
	datac => \instancia1|cuenta\(6),
	datad => \instancia1|cuenta\(4),
	combout => \instancia1|Equal0~5_combout\);

-- Location: LCCOMB_X24_Y13_N4
\instancia1|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia1|Equal0~6_combout\ = (!\instancia1|cuenta\(1) & (!\instancia1|cuenta\(0) & (!\instancia1|cuenta\(2) & !\instancia1|cuenta\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia1|cuenta\(1),
	datab => \instancia1|cuenta\(0),
	datac => \instancia1|cuenta\(2),
	datad => \instancia1|cuenta\(3),
	combout => \instancia1|Equal0~6_combout\);

-- Location: LCCOMB_X23_Y13_N20
\instancia1|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia1|Add0~16_combout\ = (\instancia1|cuenta\(8) & (\instancia1|Add0~15\ $ (GND))) # (!\instancia1|cuenta\(8) & (!\instancia1|Add0~15\ & VCC))
-- \instancia1|Add0~17\ = CARRY((\instancia1|cuenta\(8) & !\instancia1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instancia1|cuenta\(8),
	datad => VCC,
	cin => \instancia1|Add0~15\,
	combout => \instancia1|Add0~16_combout\,
	cout => \instancia1|Add0~17\);

-- Location: LCCOMB_X24_Y13_N10
\instancia1|cuenta~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia1|cuenta~3_combout\ = (!\instancia1|Equal0~8_combout\ & \instancia1|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instancia1|Equal0~8_combout\,
	datad => \instancia1|Add0~16_combout\,
	combout => \instancia1|cuenta~3_combout\);

-- Location: FF_X24_Y13_N11
\instancia1|cuenta[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instancia1|cuenta~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia1|cuenta\(8));

-- Location: LCCOMB_X23_Y13_N22
\instancia1|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia1|Add0~18_combout\ = (\instancia1|cuenta\(9) & (!\instancia1|Add0~17\)) # (!\instancia1|cuenta\(9) & ((\instancia1|Add0~17\) # (GND)))
-- \instancia1|Add0~19\ = CARRY((!\instancia1|Add0~17\) # (!\instancia1|cuenta\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instancia1|cuenta\(9),
	datad => VCC,
	cin => \instancia1|Add0~17\,
	combout => \instancia1|Add0~18_combout\,
	cout => \instancia1|Add0~19\);

-- Location: LCCOMB_X24_Y13_N6
\instancia1|cuenta~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia1|cuenta~2_combout\ = (!\instancia1|Equal0~8_combout\ & \instancia1|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instancia1|Equal0~8_combout\,
	datad => \instancia1|Add0~18_combout\,
	combout => \instancia1|cuenta~2_combout\);

-- Location: FF_X24_Y13_N7
\instancia1|cuenta[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instancia1|cuenta~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia1|cuenta\(9));

-- Location: LCCOMB_X23_Y13_N24
\instancia1|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia1|Add0~20_combout\ = (\instancia1|cuenta\(10) & (\instancia1|Add0~19\ $ (GND))) # (!\instancia1|cuenta\(10) & (!\instancia1|Add0~19\ & VCC))
-- \instancia1|Add0~21\ = CARRY((\instancia1|cuenta\(10) & !\instancia1|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instancia1|cuenta\(10),
	datad => VCC,
	cin => \instancia1|Add0~19\,
	combout => \instancia1|Add0~20_combout\,
	cout => \instancia1|Add0~21\);

-- Location: FF_X23_Y13_N25
\instancia1|cuenta[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instancia1|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia1|cuenta\(10));

-- Location: LCCOMB_X23_Y13_N26
\instancia1|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia1|Add0~22_combout\ = (\instancia1|cuenta\(11) & (!\instancia1|Add0~21\)) # (!\instancia1|cuenta\(11) & ((\instancia1|Add0~21\) # (GND)))
-- \instancia1|Add0~23\ = CARRY((!\instancia1|Add0~21\) # (!\instancia1|cuenta\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instancia1|cuenta\(11),
	datad => VCC,
	cin => \instancia1|Add0~21\,
	combout => \instancia1|Add0~22_combout\,
	cout => \instancia1|Add0~23\);

-- Location: FF_X23_Y13_N27
\instancia1|cuenta[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instancia1|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia1|cuenta\(11));

-- Location: LCCOMB_X23_Y13_N28
\instancia1|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia1|Add0~24_combout\ = (\instancia1|cuenta\(12) & (\instancia1|Add0~23\ $ (GND))) # (!\instancia1|cuenta\(12) & (!\instancia1|Add0~23\ & VCC))
-- \instancia1|Add0~25\ = CARRY((\instancia1|cuenta\(12) & !\instancia1|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instancia1|cuenta\(12),
	datad => VCC,
	cin => \instancia1|Add0~23\,
	combout => \instancia1|Add0~24_combout\,
	cout => \instancia1|Add0~25\);

-- Location: FF_X23_Y13_N29
\instancia1|cuenta[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instancia1|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia1|cuenta\(12));

-- Location: LCCOMB_X23_Y13_N30
\instancia1|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia1|Add0~26_combout\ = (\instancia1|cuenta\(13) & (!\instancia1|Add0~25\)) # (!\instancia1|cuenta\(13) & ((\instancia1|Add0~25\) # (GND)))
-- \instancia1|Add0~27\ = CARRY((!\instancia1|Add0~25\) # (!\instancia1|cuenta\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instancia1|cuenta\(13),
	datad => VCC,
	cin => \instancia1|Add0~25\,
	combout => \instancia1|Add0~26_combout\,
	cout => \instancia1|Add0~27\);

-- Location: FF_X23_Y13_N31
\instancia1|cuenta[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instancia1|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia1|cuenta\(13));

-- Location: LCCOMB_X23_Y12_N0
\instancia1|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia1|Add0~28_combout\ = (\instancia1|cuenta\(14) & (\instancia1|Add0~27\ $ (GND))) # (!\instancia1|cuenta\(14) & (!\instancia1|Add0~27\ & VCC))
-- \instancia1|Add0~29\ = CARRY((\instancia1|cuenta\(14) & !\instancia1|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instancia1|cuenta\(14),
	datad => VCC,
	cin => \instancia1|Add0~27\,
	combout => \instancia1|Add0~28_combout\,
	cout => \instancia1|Add0~29\);

-- Location: LCCOMB_X24_Y13_N2
\instancia1|cuenta~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia1|cuenta~1_combout\ = (!\instancia1|Equal0~8_combout\ & \instancia1|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instancia1|Equal0~8_combout\,
	datad => \instancia1|Add0~28_combout\,
	combout => \instancia1|cuenta~1_combout\);

-- Location: FF_X24_Y13_N3
\instancia1|cuenta[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instancia1|cuenta~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia1|cuenta\(14));

-- Location: LCCOMB_X23_Y12_N2
\instancia1|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia1|Add0~30_combout\ = (\instancia1|cuenta\(15) & (!\instancia1|Add0~29\)) # (!\instancia1|cuenta\(15) & ((\instancia1|Add0~29\) # (GND)))
-- \instancia1|Add0~31\ = CARRY((!\instancia1|Add0~29\) # (!\instancia1|cuenta\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instancia1|cuenta\(15),
	datad => VCC,
	cin => \instancia1|Add0~29\,
	combout => \instancia1|Add0~30_combout\,
	cout => \instancia1|Add0~31\);

-- Location: LCCOMB_X23_Y12_N30
\instancia1|cuenta~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia1|cuenta~0_combout\ = (!\instancia1|Equal0~8_combout\ & \instancia1|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia1|Equal0~8_combout\,
	datad => \instancia1|Add0~30_combout\,
	combout => \instancia1|cuenta~0_combout\);

-- Location: FF_X23_Y12_N31
\instancia1|cuenta[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instancia1|cuenta~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia1|cuenta\(15));

-- Location: LCCOMB_X23_Y12_N4
\instancia1|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia1|Add0~32_combout\ = (\instancia1|cuenta\(16) & (\instancia1|Add0~31\ $ (GND))) # (!\instancia1|cuenta\(16) & (!\instancia1|Add0~31\ & VCC))
-- \instancia1|Add0~33\ = CARRY((\instancia1|cuenta\(16) & !\instancia1|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instancia1|cuenta\(16),
	datad => VCC,
	cin => \instancia1|Add0~31\,
	combout => \instancia1|Add0~32_combout\,
	cout => \instancia1|Add0~33\);

-- Location: FF_X23_Y12_N5
\instancia1|cuenta[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instancia1|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia1|cuenta\(16));

-- Location: LCCOMB_X23_Y12_N6
\instancia1|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia1|Add0~34_combout\ = (\instancia1|cuenta\(17) & (!\instancia1|Add0~33\)) # (!\instancia1|cuenta\(17) & ((\instancia1|Add0~33\) # (GND)))
-- \instancia1|Add0~35\ = CARRY((!\instancia1|Add0~33\) # (!\instancia1|cuenta\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instancia1|cuenta\(17),
	datad => VCC,
	cin => \instancia1|Add0~33\,
	combout => \instancia1|Add0~34_combout\,
	cout => \instancia1|Add0~35\);

-- Location: FF_X23_Y12_N7
\instancia1|cuenta[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instancia1|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia1|cuenta\(17));

-- Location: LCCOMB_X23_Y12_N8
\instancia1|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia1|Add0~36_combout\ = (\instancia1|cuenta\(18) & (\instancia1|Add0~35\ $ (GND))) # (!\instancia1|cuenta\(18) & (!\instancia1|Add0~35\ & VCC))
-- \instancia1|Add0~37\ = CARRY((\instancia1|cuenta\(18) & !\instancia1|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instancia1|cuenta\(18),
	datad => VCC,
	cin => \instancia1|Add0~35\,
	combout => \instancia1|Add0~36_combout\,
	cout => \instancia1|Add0~37\);

-- Location: FF_X23_Y12_N9
\instancia1|cuenta[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instancia1|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia1|cuenta\(18));

-- Location: LCCOMB_X23_Y12_N10
\instancia1|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia1|Add0~38_combout\ = (\instancia1|cuenta\(19) & (!\instancia1|Add0~37\)) # (!\instancia1|cuenta\(19) & ((\instancia1|Add0~37\) # (GND)))
-- \instancia1|Add0~39\ = CARRY((!\instancia1|Add0~37\) # (!\instancia1|cuenta\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instancia1|cuenta\(19),
	datad => VCC,
	cin => \instancia1|Add0~37\,
	combout => \instancia1|Add0~38_combout\,
	cout => \instancia1|Add0~39\);

-- Location: FF_X23_Y12_N11
\instancia1|cuenta[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instancia1|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia1|cuenta\(19));

-- Location: LCCOMB_X23_Y12_N12
\instancia1|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia1|Add0~40_combout\ = (\instancia1|cuenta\(20) & (\instancia1|Add0~39\ $ (GND))) # (!\instancia1|cuenta\(20) & (!\instancia1|Add0~39\ & VCC))
-- \instancia1|Add0~41\ = CARRY((\instancia1|cuenta\(20) & !\instancia1|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instancia1|cuenta\(20),
	datad => VCC,
	cin => \instancia1|Add0~39\,
	combout => \instancia1|Add0~40_combout\,
	cout => \instancia1|Add0~41\);

-- Location: FF_X23_Y12_N13
\instancia1|cuenta[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instancia1|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia1|cuenta\(20));

-- Location: LCCOMB_X23_Y12_N14
\instancia1|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia1|Add0~42_combout\ = (\instancia1|cuenta\(21) & (!\instancia1|Add0~41\)) # (!\instancia1|cuenta\(21) & ((\instancia1|Add0~41\) # (GND)))
-- \instancia1|Add0~43\ = CARRY((!\instancia1|Add0~41\) # (!\instancia1|cuenta\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instancia1|cuenta\(21),
	datad => VCC,
	cin => \instancia1|Add0~41\,
	combout => \instancia1|Add0~42_combout\,
	cout => \instancia1|Add0~43\);

-- Location: FF_X23_Y12_N15
\instancia1|cuenta[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instancia1|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia1|cuenta\(21));

-- Location: LCCOMB_X23_Y12_N16
\instancia1|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia1|Add0~44_combout\ = (\instancia1|cuenta\(22) & (\instancia1|Add0~43\ $ (GND))) # (!\instancia1|cuenta\(22) & (!\instancia1|Add0~43\ & VCC))
-- \instancia1|Add0~45\ = CARRY((\instancia1|cuenta\(22) & !\instancia1|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instancia1|cuenta\(22),
	datad => VCC,
	cin => \instancia1|Add0~43\,
	combout => \instancia1|Add0~44_combout\,
	cout => \instancia1|Add0~45\);

-- Location: FF_X23_Y12_N17
\instancia1|cuenta[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instancia1|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia1|cuenta\(22));

-- Location: LCCOMB_X23_Y12_N18
\instancia1|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia1|Add0~46_combout\ = (\instancia1|cuenta\(23) & (!\instancia1|Add0~45\)) # (!\instancia1|cuenta\(23) & ((\instancia1|Add0~45\) # (GND)))
-- \instancia1|Add0~47\ = CARRY((!\instancia1|Add0~45\) # (!\instancia1|cuenta\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instancia1|cuenta\(23),
	datad => VCC,
	cin => \instancia1|Add0~45\,
	combout => \instancia1|Add0~46_combout\,
	cout => \instancia1|Add0~47\);

-- Location: FF_X23_Y12_N19
\instancia1|cuenta[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instancia1|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia1|cuenta\(23));

-- Location: LCCOMB_X23_Y12_N20
\instancia1|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia1|Add0~48_combout\ = (\instancia1|cuenta\(24) & (\instancia1|Add0~47\ $ (GND))) # (!\instancia1|cuenta\(24) & (!\instancia1|Add0~47\ & VCC))
-- \instancia1|Add0~49\ = CARRY((\instancia1|cuenta\(24) & !\instancia1|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instancia1|cuenta\(24),
	datad => VCC,
	cin => \instancia1|Add0~47\,
	combout => \instancia1|Add0~48_combout\,
	cout => \instancia1|Add0~49\);

-- Location: FF_X23_Y12_N21
\instancia1|cuenta[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instancia1|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia1|cuenta\(24));

-- Location: LCCOMB_X23_Y12_N22
\instancia1|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia1|Add0~50_combout\ = (\instancia1|cuenta\(25) & (!\instancia1|Add0~49\)) # (!\instancia1|cuenta\(25) & ((\instancia1|Add0~49\) # (GND)))
-- \instancia1|Add0~51\ = CARRY((!\instancia1|Add0~49\) # (!\instancia1|cuenta\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instancia1|cuenta\(25),
	datad => VCC,
	cin => \instancia1|Add0~49\,
	combout => \instancia1|Add0~50_combout\,
	cout => \instancia1|Add0~51\);

-- Location: FF_X23_Y12_N23
\instancia1|cuenta[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instancia1|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia1|cuenta\(25));

-- Location: LCCOMB_X23_Y12_N24
\instancia1|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia1|Add0~52_combout\ = (\instancia1|cuenta\(26) & (\instancia1|Add0~51\ $ (GND))) # (!\instancia1|cuenta\(26) & (!\instancia1|Add0~51\ & VCC))
-- \instancia1|Add0~53\ = CARRY((\instancia1|cuenta\(26) & !\instancia1|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instancia1|cuenta\(26),
	datad => VCC,
	cin => \instancia1|Add0~51\,
	combout => \instancia1|Add0~52_combout\,
	cout => \instancia1|Add0~53\);

-- Location: FF_X23_Y12_N25
\instancia1|cuenta[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instancia1|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia1|cuenta\(26));

-- Location: LCCOMB_X23_Y12_N26
\instancia1|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia1|Add0~54_combout\ = \instancia1|cuenta\(27) $ (\instancia1|Add0~53\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instancia1|cuenta\(27),
	cin => \instancia1|Add0~53\,
	combout => \instancia1|Add0~54_combout\);

-- Location: FF_X23_Y12_N27
\instancia1|cuenta[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instancia1|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia1|cuenta\(27));

-- Location: LCCOMB_X24_Y12_N6
\instancia1|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia1|Equal0~7_combout\ = (!\instancia1|cuenta\(27) & (!\instancia1|cuenta\(24) & (!\instancia1|cuenta\(26) & !\instancia1|cuenta\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia1|cuenta\(27),
	datab => \instancia1|cuenta\(24),
	datac => \instancia1|cuenta\(26),
	datad => \instancia1|cuenta\(25),
	combout => \instancia1|Equal0~7_combout\);

-- Location: LCCOMB_X24_Y13_N26
\instancia1|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia1|Equal0~3_combout\ = (\instancia1|cuenta\(8) & (!\instancia1|cuenta\(10) & (!\instancia1|cuenta\(11) & \instancia1|cuenta\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia1|cuenta\(8),
	datab => \instancia1|cuenta\(10),
	datac => \instancia1|cuenta\(11),
	datad => \instancia1|cuenta\(9),
	combout => \instancia1|Equal0~3_combout\);

-- Location: LCCOMB_X23_Y12_N28
\instancia1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia1|Equal0~0_combout\ = (!\instancia1|cuenta\(20) & (!\instancia1|cuenta\(23) & (!\instancia1|cuenta\(21) & !\instancia1|cuenta\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia1|cuenta\(20),
	datab => \instancia1|cuenta\(23),
	datac => \instancia1|cuenta\(21),
	datad => \instancia1|cuenta\(22),
	combout => \instancia1|Equal0~0_combout\);

-- Location: LCCOMB_X24_Y13_N8
\instancia1|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia1|Equal0~2_combout\ = (!\instancia1|cuenta\(13) & (\instancia1|cuenta\(14) & (!\instancia1|cuenta\(12) & \instancia1|cuenta\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia1|cuenta\(13),
	datab => \instancia1|cuenta\(14),
	datac => \instancia1|cuenta\(12),
	datad => \instancia1|cuenta\(15),
	combout => \instancia1|Equal0~2_combout\);

-- Location: LCCOMB_X24_Y12_N0
\instancia1|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia1|Equal0~1_combout\ = (!\instancia1|cuenta\(19) & (!\instancia1|cuenta\(17) & (!\instancia1|cuenta\(16) & !\instancia1|cuenta\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia1|cuenta\(19),
	datab => \instancia1|cuenta\(17),
	datac => \instancia1|cuenta\(16),
	datad => \instancia1|cuenta\(18),
	combout => \instancia1|Equal0~1_combout\);

-- Location: LCCOMB_X24_Y13_N18
\instancia1|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia1|Equal0~4_combout\ = (\instancia1|Equal0~3_combout\ & (\instancia1|Equal0~0_combout\ & (\instancia1|Equal0~2_combout\ & \instancia1|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia1|Equal0~3_combout\,
	datab => \instancia1|Equal0~0_combout\,
	datac => \instancia1|Equal0~2_combout\,
	datad => \instancia1|Equal0~1_combout\,
	combout => \instancia1|Equal0~4_combout\);

-- Location: LCCOMB_X24_Y13_N24
\instancia1|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia1|Equal0~8_combout\ = (\instancia1|Equal0~5_combout\ & (\instancia1|Equal0~6_combout\ & (\instancia1|Equal0~7_combout\ & \instancia1|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia1|Equal0~5_combout\,
	datab => \instancia1|Equal0~6_combout\,
	datac => \instancia1|Equal0~7_combout\,
	datad => \instancia1|Equal0~4_combout\,
	combout => \instancia1|Equal0~8_combout\);

-- Location: LCCOMB_X24_Y13_N12
\instancia1|salida~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia1|salida~0_combout\ = \instancia1|salida~q\ $ (\instancia1|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia1|salida~q\,
	datad => \instancia1|Equal0~8_combout\,
	combout => \instancia1|salida~0_combout\);

-- Location: LCCOMB_X24_Y13_N30
\instancia1|salida~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia1|salida~feeder_combout\ = \instancia1|salida~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instancia1|salida~0_combout\,
	combout => \instancia1|salida~feeder_combout\);

-- Location: FF_X24_Y13_N31
\instancia1|salida\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instancia1|salida~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia1|salida~q\);

-- Location: CLKCTRL_G5
\instancia1|salida~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \instancia1|salida~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \instancia1|salida~clkctrl_outclk\);

-- Location: IOIBUF_X3_Y0_N1
\DetectoTarjeta~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DetectoTarjeta,
	o => \DetectoTarjeta~input_o\);

-- Location: FF_X22_Y8_N15
\IDentrada[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instancia1|salida~clkctrl_outclk\,
	d => \IDentrada~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IDentrada(4));

-- Location: LCCOMB_X22_Y8_N14
\IDentrada~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \IDentrada~5_combout\ = (\DetectoTarjeta~input_o\ & ((\vuelta~q\ & ((IDentrada(4)))) # (!\vuelta~q\ & (\Lecturatarjeta[4]~input_o\)))) # (!\DetectoTarjeta~input_o\ & (((IDentrada(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DetectoTarjeta~input_o\,
	datab => \Lecturatarjeta[4]~input_o\,
	datac => IDentrada(4),
	datad => \vuelta~q\,
	combout => \IDentrada~5_combout\);

-- Location: FF_X22_Y6_N31
\Arreglomemoriascopia3[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instancia1|salida~clkctrl_outclk\,
	d => \Arreglomemoriascopia3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Arreglomemoriascopia3(23));

-- Location: FF_X22_Y7_N3
\Arreglomemoriascopia3[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instancia1|salida~clkctrl_outclk\,
	d => \Arreglomemoriascopia3~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Arreglomemoriascopia3(25));

-- Location: FF_X21_Y8_N13
\IDentrada[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instancia1|salida~clkctrl_outclk\,
	d => \IDentrada~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IDentrada(3));

-- Location: LCCOMB_X21_Y8_N12
\IDentrada~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \IDentrada~2_combout\ = (\DetectoTarjeta~input_o\ & ((\vuelta~q\ & ((IDentrada(3)))) # (!\vuelta~q\ & (\Lecturatarjeta[3]~input_o\)))) # (!\DetectoTarjeta~input_o\ & (((IDentrada(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DetectoTarjeta~input_o\,
	datab => \Lecturatarjeta[3]~input_o\,
	datac => IDentrada(3),
	datad => \vuelta~q\,
	combout => \IDentrada~2_combout\);

-- Location: FF_X22_Y8_N7
\Arreglomemoriascopia3[46]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instancia1|salida~clkctrl_outclk\,
	d => \Arreglomemoriascopia3~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Arreglomemoriascopia3(46));

-- Location: LCCOMB_X22_Y8_N6
\Arreglomemoriascopia3~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascopia3~40_combout\ = (\DetectoTarjeta~input_o\ & ((\vuelta~q\ & (Arreglomemoriascopia3(46))) # (!\vuelta~q\ & ((!Arreglomemoriascero(46)))))) # (!\DetectoTarjeta~input_o\ & (((Arreglomemoriascopia3(46)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DetectoTarjeta~input_o\,
	datab => \vuelta~q\,
	datac => Arreglomemoriascopia3(46),
	datad => Arreglomemoriascero(46),
	combout => \Arreglomemoriascopia3~40_combout\);

-- Location: FF_X22_Y8_N21
\IDentrada[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instancia1|salida~clkctrl_outclk\,
	d => \IDentrada~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IDentrada(5));

-- Location: LCCOMB_X22_Y8_N20
\IDentrada~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \IDentrada~4_combout\ = (\DetectoTarjeta~input_o\ & ((\vuelta~q\ & ((IDentrada(5)))) # (!\vuelta~q\ & (\Lecturatarjeta[5]~input_o\)))) # (!\DetectoTarjeta~input_o\ & (((IDentrada(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DetectoTarjeta~input_o\,
	datab => \Lecturatarjeta[5]~input_o\,
	datac => IDentrada(5),
	datad => \vuelta~q\,
	combout => \IDentrada~4_combout\);

-- Location: FF_X22_Y8_N13
\Arreglomemoriascopia3[47]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instancia1|salida~clkctrl_outclk\,
	d => \Arreglomemoriascopia3~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Arreglomemoriascopia3(47));

-- Location: LCCOMB_X19_Y8_N8
\Arreglomemoriascero~322\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~322_combout\ = ((\Arreglomemoriascero~47_combout\ & (!\IDentrada~4_combout\)) # (!\Arreglomemoriascero~47_combout\ & ((Arreglomemoriascero(47))))) # (!\Arreglomemoriascero[47]~316_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero[47]~316_combout\,
	datab => \IDentrada~4_combout\,
	datac => Arreglomemoriascero(47),
	datad => \Arreglomemoriascero~47_combout\,
	combout => \Arreglomemoriascero~322_combout\);

-- Location: FF_X19_Y8_N9
\Arreglomemoriascero[47]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instancia1|salida~clkctrl_outclk\,
	d => \Arreglomemoriascero~322_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Arreglomemoriascero(47));

-- Location: LCCOMB_X22_Y8_N12
\Arreglomemoriascopia3~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascopia3~41_combout\ = (\DetectoTarjeta~input_o\ & ((\vuelta~q\ & (Arreglomemoriascopia3(47))) # (!\vuelta~q\ & ((!Arreglomemoriascero(47)))))) # (!\DetectoTarjeta~input_o\ & (((Arreglomemoriascopia3(47)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DetectoTarjeta~input_o\,
	datab => \vuelta~q\,
	datac => Arreglomemoriascopia3(47),
	datad => Arreglomemoriascero(47),
	combout => \Arreglomemoriascopia3~41_combout\);

-- Location: LCCOMB_X22_Y8_N8
\Equal29~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal29~2_combout\ = (\Arreglomemoriascopia3~40_combout\ & (\IDentrada~5_combout\ & (\IDentrada~4_combout\ $ (!\Arreglomemoriascopia3~41_combout\)))) # (!\Arreglomemoriascopia3~40_combout\ & (!\IDentrada~5_combout\ & (\IDentrada~4_combout\ $ 
-- (!\Arreglomemoriascopia3~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascopia3~40_combout\,
	datab => \IDentrada~5_combout\,
	datac => \IDentrada~4_combout\,
	datad => \Arreglomemoriascopia3~41_combout\,
	combout => \Equal29~2_combout\);

-- Location: FF_X23_Y8_N11
\Arreglomemoriascopia3[45]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instancia1|salida~clkctrl_outclk\,
	d => \Arreglomemoriascopia3~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Arreglomemoriascopia3(45));

-- Location: LCCOMB_X23_Y8_N10
\Arreglomemoriascopia3~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascopia3~39_combout\ = (\vuelta~q\ & (((Arreglomemoriascopia3(45))))) # (!\vuelta~q\ & ((\DetectoTarjeta~input_o\ & ((!Arreglomemoriascero(45)))) # (!\DetectoTarjeta~input_o\ & (Arreglomemoriascopia3(45)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vuelta~q\,
	datab => \DetectoTarjeta~input_o\,
	datac => Arreglomemoriascopia3(45),
	datad => Arreglomemoriascero(45),
	combout => \Arreglomemoriascopia3~39_combout\);

-- Location: FF_X21_Y8_N31
\IDentrada[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instancia1|salida~clkctrl_outclk\,
	d => \IDentrada~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IDentrada(2));

-- Location: LCCOMB_X21_Y8_N30
\IDentrada~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \IDentrada~3_combout\ = (\DetectoTarjeta~input_o\ & ((\vuelta~q\ & ((IDentrada(2)))) # (!\vuelta~q\ & (\Lecturatarjeta[2]~input_o\)))) # (!\DetectoTarjeta~input_o\ & (((IDentrada(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DetectoTarjeta~input_o\,
	datab => \Lecturatarjeta[2]~input_o\,
	datac => IDentrada(2),
	datad => \vuelta~q\,
	combout => \IDentrada~3_combout\);

-- Location: LCCOMB_X23_Y8_N16
\Arreglomemoriascero~319\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~319_combout\ = ((\Arreglomemoriascero~47_combout\ & (!\IDentrada~3_combout\)) # (!\Arreglomemoriascero~47_combout\ & ((Arreglomemoriascero(44))))) # (!\Arreglomemoriascero[47]~316_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero[47]~316_combout\,
	datab => \IDentrada~3_combout\,
	datac => Arreglomemoriascero(44),
	datad => \Arreglomemoriascero~47_combout\,
	combout => \Arreglomemoriascero~319_combout\);

-- Location: FF_X23_Y8_N17
\Arreglomemoriascero[44]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instancia1|salida~clkctrl_outclk\,
	d => \Arreglomemoriascero~319_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Arreglomemoriascero(44));

-- Location: FF_X23_Y8_N25
\Arreglomemoriascopia3[44]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instancia1|salida~clkctrl_outclk\,
	d => \Arreglomemoriascopia3~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Arreglomemoriascopia3(44));

-- Location: LCCOMB_X23_Y8_N24
\Arreglomemoriascopia3~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascopia3~38_combout\ = (\vuelta~q\ & (((Arreglomemoriascopia3(44))))) # (!\vuelta~q\ & ((\DetectoTarjeta~input_o\ & (!Arreglomemoriascero(44))) # (!\DetectoTarjeta~input_o\ & ((Arreglomemoriascopia3(44))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vuelta~q\,
	datab => Arreglomemoriascero(44),
	datac => Arreglomemoriascopia3(44),
	datad => \DetectoTarjeta~input_o\,
	combout => \Arreglomemoriascopia3~38_combout\);

-- Location: LCCOMB_X23_Y8_N8
\Equal29~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal29~1_combout\ = (\Arreglomemoriascopia3~39_combout\ & (\IDentrada~2_combout\ & (\IDentrada~3_combout\ $ (!\Arreglomemoriascopia3~38_combout\)))) # (!\Arreglomemoriascopia3~39_combout\ & (!\IDentrada~2_combout\ & (\IDentrada~3_combout\ $ 
-- (!\Arreglomemoriascopia3~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascopia3~39_combout\,
	datab => \IDentrada~2_combout\,
	datac => \IDentrada~3_combout\,
	datad => \Arreglomemoriascopia3~38_combout\,
	combout => \Equal29~1_combout\);

-- Location: FF_X21_Y7_N5
\IDentrada[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instancia1|salida~clkctrl_outclk\,
	d => \IDentrada~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IDentrada(1));

-- Location: LCCOMB_X21_Y7_N4
\IDentrada~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \IDentrada~0_combout\ = (\DetectoTarjeta~input_o\ & ((\vuelta~q\ & ((IDentrada(1)))) # (!\vuelta~q\ & (\Lecturatarjeta[1]~input_o\)))) # (!\DetectoTarjeta~input_o\ & (((IDentrada(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Lecturatarjeta[1]~input_o\,
	datab => \DetectoTarjeta~input_o\,
	datac => IDentrada(1),
	datad => \vuelta~q\,
	combout => \IDentrada~0_combout\);

-- Location: LCCOMB_X23_Y8_N18
\Arreglomemoriascero~318\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~318_combout\ = ((\Arreglomemoriascero~47_combout\ & (!\IDentrada~0_combout\)) # (!\Arreglomemoriascero~47_combout\ & ((Arreglomemoriascero(43))))) # (!\Arreglomemoriascero[47]~316_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDentrada~0_combout\,
	datab => \Arreglomemoriascero~47_combout\,
	datac => Arreglomemoriascero(43),
	datad => \Arreglomemoriascero[47]~316_combout\,
	combout => \Arreglomemoriascero~318_combout\);

-- Location: FF_X23_Y8_N19
\Arreglomemoriascero[43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instancia1|salida~clkctrl_outclk\,
	d => \Arreglomemoriascero~318_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Arreglomemoriascero(43));

-- Location: FF_X23_Y8_N31
\Arreglomemoriascopia3[43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instancia1|salida~clkctrl_outclk\,
	d => \Arreglomemoriascopia3~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Arreglomemoriascopia3(43));

-- Location: LCCOMB_X23_Y8_N30
\Arreglomemoriascopia3~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascopia3~37_combout\ = (\vuelta~q\ & (((Arreglomemoriascopia3(43))))) # (!\vuelta~q\ & ((\DetectoTarjeta~input_o\ & (!Arreglomemoriascero(43))) # (!\DetectoTarjeta~input_o\ & ((Arreglomemoriascopia3(43))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vuelta~q\,
	datab => Arreglomemoriascero(43),
	datac => Arreglomemoriascopia3(43),
	datad => \DetectoTarjeta~input_o\,
	combout => \Arreglomemoriascopia3~37_combout\);

-- Location: FF_X21_Y7_N3
\IDentrada[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instancia1|salida~clkctrl_outclk\,
	d => \IDentrada~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IDentrada(0));

-- Location: LCCOMB_X21_Y7_N2
\IDentrada~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \IDentrada~1_combout\ = (\DetectoTarjeta~input_o\ & ((\vuelta~q\ & ((IDentrada(0)))) # (!\vuelta~q\ & (\Lecturatarjeta[0]~input_o\)))) # (!\DetectoTarjeta~input_o\ & (((IDentrada(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Lecturatarjeta[0]~input_o\,
	datab => \DetectoTarjeta~input_o\,
	datac => IDentrada(0),
	datad => \vuelta~q\,
	combout => \IDentrada~1_combout\);

-- Location: LCCOMB_X23_Y8_N28
\Arreglomemoriascero~317\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~317_combout\ = ((\Arreglomemoriascero~47_combout\ & (!\IDentrada~1_combout\)) # (!\Arreglomemoriascero~47_combout\ & ((Arreglomemoriascero(42))))) # (!\Arreglomemoriascero[47]~316_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDentrada~1_combout\,
	datab => \Arreglomemoriascero~47_combout\,
	datac => Arreglomemoriascero(42),
	datad => \Arreglomemoriascero[47]~316_combout\,
	combout => \Arreglomemoriascero~317_combout\);

-- Location: FF_X23_Y8_N29
\Arreglomemoriascero[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instancia1|salida~clkctrl_outclk\,
	d => \Arreglomemoriascero~317_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Arreglomemoriascero(42));

-- Location: FF_X23_Y8_N5
\Arreglomemoriascopia3[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instancia1|salida~clkctrl_outclk\,
	d => \Arreglomemoriascopia3~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Arreglomemoriascopia3(42));

-- Location: LCCOMB_X23_Y8_N4
\Arreglomemoriascopia3~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascopia3~36_combout\ = (\vuelta~q\ & (((Arreglomemoriascopia3(42))))) # (!\vuelta~q\ & ((\DetectoTarjeta~input_o\ & (!Arreglomemoriascero(42))) # (!\DetectoTarjeta~input_o\ & ((Arreglomemoriascopia3(42))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vuelta~q\,
	datab => Arreglomemoriascero(42),
	datac => Arreglomemoriascopia3(42),
	datad => \DetectoTarjeta~input_o\,
	combout => \Arreglomemoriascopia3~36_combout\);

-- Location: LCCOMB_X23_Y8_N6
\Equal29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal29~0_combout\ = (\Arreglomemoriascopia3~37_combout\ & (\IDentrada~0_combout\ & (\Arreglomemoriascopia3~36_combout\ $ (!\IDentrada~1_combout\)))) # (!\Arreglomemoriascopia3~37_combout\ & (!\IDentrada~0_combout\ & (\Arreglomemoriascopia3~36_combout\ $ 
-- (!\IDentrada~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascopia3~37_combout\,
	datab => \Arreglomemoriascopia3~36_combout\,
	datac => \IDentrada~1_combout\,
	datad => \IDentrada~0_combout\,
	combout => \Equal29~0_combout\);

-- Location: LCCOMB_X23_Y8_N22
\Equal29~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal29~3_combout\ = (\Equal29~2_combout\ & (\Equal29~1_combout\ & \Equal29~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal29~2_combout\,
	datac => \Equal29~1_combout\,
	datad => \Equal29~0_combout\,
	combout => \Equal29~3_combout\);

-- Location: LCCOMB_X22_Y9_N6
\Arreglomemoriascero[47]~316\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero[47]~316_combout\ = ((\definido~q\) # ((!\Equal29~3_combout\ & \Arreglomemoriascero[3]~64_combout\))) # (!\EstaAquiEseCasco~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EstaAquiEseCasco~q\,
	datab => \definido~q\,
	datac => \Equal29~3_combout\,
	datad => \Arreglomemoriascero[3]~64_combout\,
	combout => \Arreglomemoriascero[47]~316_combout\);

-- Location: LCCOMB_X24_Y7_N26
\Arreglomemoriascero~320\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~320_combout\ = ((\Arreglomemoriascero~47_combout\ & (!\IDentrada~2_combout\)) # (!\Arreglomemoriascero~47_combout\ & ((Arreglomemoriascero(45))))) # (!\Arreglomemoriascero[47]~316_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero~47_combout\,
	datab => \IDentrada~2_combout\,
	datac => Arreglomemoriascero(45),
	datad => \Arreglomemoriascero[47]~316_combout\,
	combout => \Arreglomemoriascero~320_combout\);

-- Location: FF_X24_Y7_N27
\Arreglomemoriascero[45]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instancia1|salida~clkctrl_outclk\,
	d => \Arreglomemoriascero~320_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Arreglomemoriascero(45));

-- Location: LCCOMB_X25_Y5_N22
\Arreglomemoriascero~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~125_combout\ = (\Arreglomemoriascero~16_combout\ & (((\Arreglomemoriascero~17_combout\)))) # (!\Arreglomemoriascero~16_combout\ & ((\Arreglomemoriascero~17_combout\ & (!Arreglomemoriascero(45))) # (!\Arreglomemoriascero~17_combout\ & 
-- ((Arreglomemoriascero(39))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(45),
	datab => Arreglomemoriascero(39),
	datac => \Arreglomemoriascero~16_combout\,
	datad => \Arreglomemoriascero~17_combout\,
	combout => \Arreglomemoriascero~125_combout\);

-- Location: FF_X22_Y6_N17
\Arreglomemoriascopia3[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instancia1|salida~clkctrl_outclk\,
	d => \Arreglomemoriascopia3~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Arreglomemoriascopia3(22));

-- Location: LCCOMB_X21_Y10_N12
\Arreglomemoriascero~142\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~142_combout\ = (\Arreglomemoriascero~13_combout\ & (((\Arreglomemoriascero~12_combout\)))) # (!\Arreglomemoriascero~13_combout\ & ((\Arreglomemoriascero~12_combout\ & ((!Arreglomemoriascero(14)))) # (!\Arreglomemoriascero~12_combout\ 
-- & (!Arreglomemoriascero(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(8),
	datab => Arreglomemoriascero(14),
	datac => \Arreglomemoriascero~13_combout\,
	datad => \Arreglomemoriascero~12_combout\,
	combout => \Arreglomemoriascero~142_combout\);

-- Location: LCCOMB_X21_Y10_N10
\Arreglomemoriascero~143\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~143_combout\ = (\Arreglomemoriascero~13_combout\ & ((\Arreglomemoriascero~142_combout\ & ((Arreglomemoriascero(2)))) # (!\Arreglomemoriascero~142_combout\ & (!Arreglomemoriascero(44))))) # (!\Arreglomemoriascero~13_combout\ & 
-- (((\Arreglomemoriascero~142_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(44),
	datab => Arreglomemoriascero(2),
	datac => \Arreglomemoriascero~13_combout\,
	datad => \Arreglomemoriascero~142_combout\,
	combout => \Arreglomemoriascero~143_combout\);

-- Location: LCCOMB_X21_Y10_N16
\Arreglomemoriascero~144\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~144_combout\ = (\Arreglomemoriascero~16_combout\ & (((\Arreglomemoriascero~17_combout\) # (\Arreglomemoriascero~143_combout\)))) # (!\Arreglomemoriascero~16_combout\ & (!Arreglomemoriascero(26) & (!\Arreglomemoriascero~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero~16_combout\,
	datab => Arreglomemoriascero(26),
	datac => \Arreglomemoriascero~17_combout\,
	datad => \Arreglomemoriascero~143_combout\,
	combout => \Arreglomemoriascero~144_combout\);

-- Location: LCCOMB_X21_Y10_N14
\Arreglomemoriascero~145\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~145_combout\ = (\Arreglomemoriascero~17_combout\ & ((\Arreglomemoriascero~144_combout\ & ((!Arreglomemoriascero(20)))) # (!\Arreglomemoriascero~144_combout\ & (!Arreglomemoriascero(32))))) # (!\Arreglomemoriascero~17_combout\ & 
-- (((\Arreglomemoriascero~144_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(32),
	datab => Arreglomemoriascero(20),
	datac => \Arreglomemoriascero~17_combout\,
	datad => \Arreglomemoriascero~144_combout\,
	combout => \Arreglomemoriascero~145_combout\);

-- Location: LCCOMB_X22_Y10_N30
\Arreglomemoriascero[38]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero[38]~2_combout\ = (\Arreglomemoriascero~22_combout\ & (Arreglomemoriascero(38))) # (!\Arreglomemoriascero~22_combout\ & ((\Arreglomemoriascero~145_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => Arreglomemoriascero(38),
	datac => \Arreglomemoriascero~22_combout\,
	datad => \Arreglomemoriascero~145_combout\,
	combout => \Arreglomemoriascero[38]~2_combout\);

-- Location: LCCOMB_X22_Y10_N24
\Arreglomemoriascero[38]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero[38]~feeder_combout\ = \Arreglomemoriascero[38]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero[38]~2_combout\,
	combout => \Arreglomemoriascero[38]~feeder_combout\);

-- Location: FF_X21_Y8_N15
\Arreglomemoriascopia3[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instancia1|salida~clkctrl_outclk\,
	d => \Arreglomemoriascopia3~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Arreglomemoriascopia3(11));

-- Location: LCCOMB_X21_Y8_N14
\Arreglomemoriascopia3~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascopia3~17_combout\ = (\DetectoTarjeta~input_o\ & ((\vuelta~q\ & ((Arreglomemoriascopia3(11)))) # (!\vuelta~q\ & (!Arreglomemoriascero(11))))) # (!\DetectoTarjeta~input_o\ & (((Arreglomemoriascopia3(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DetectoTarjeta~input_o\,
	datab => Arreglomemoriascero(11),
	datac => Arreglomemoriascopia3(11),
	datad => \vuelta~q\,
	combout => \Arreglomemoriascopia3~17_combout\);

-- Location: LCCOMB_X24_Y7_N14
\Arreglomemoriascero~241\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~241_combout\ = (\Arreglomemoriascero~47_combout\ & ((\IDentrada~5_combout\))) # (!\Arreglomemoriascero~47_combout\ & (!Arreglomemoriascero(46)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(46),
	datac => \IDentrada~5_combout\,
	datad => \Arreglomemoriascero~47_combout\,
	combout => \Arreglomemoriascero~241_combout\);

-- Location: LCCOMB_X28_Y7_N12
\Arreglomemoriascero~229\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~229_combout\ = (\Arreglomemoriascero~17_combout\ & (((\Arreglomemoriascero~16_combout\) # (!Arreglomemoriascero(16))))) # (!\Arreglomemoriascero~17_combout\ & (!Arreglomemoriascero(10) & ((!\Arreglomemoriascero~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(10),
	datab => Arreglomemoriascero(16),
	datac => \Arreglomemoriascero~17_combout\,
	datad => \Arreglomemoriascero~16_combout\,
	combout => \Arreglomemoriascero~229_combout\);

-- Location: LCCOMB_X26_Y6_N24
\Arreglomemoriascero~218\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~218_combout\ = (\Arreglomemoriascero~13_combout\ & (((\Arreglomemoriascero~12_combout\)))) # (!\Arreglomemoriascero~13_combout\ & ((\Arreglomemoriascero~12_combout\ & ((!Arreglomemoriascero(16)))) # (!\Arreglomemoriascero~12_combout\ 
-- & (!Arreglomemoriascero(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(10),
	datab => Arreglomemoriascero(16),
	datac => \Arreglomemoriascero~13_combout\,
	datad => \Arreglomemoriascero~12_combout\,
	combout => \Arreglomemoriascero~218_combout\);

-- Location: LCCOMB_X26_Y6_N6
\Arreglomemoriascero~219\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~219_combout\ = (\Arreglomemoriascero~13_combout\ & ((\Arreglomemoriascero~218_combout\ & ((Arreglomemoriascero(4)))) # (!\Arreglomemoriascero~218_combout\ & (!Arreglomemoriascero(46))))) # (!\Arreglomemoriascero~13_combout\ & 
-- (((\Arreglomemoriascero~218_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(46),
	datab => Arreglomemoriascero(4),
	datac => \Arreglomemoriascero~13_combout\,
	datad => \Arreglomemoriascero~218_combout\,
	combout => \Arreglomemoriascero~219_combout\);

-- Location: LCCOMB_X26_Y6_N4
\Arreglomemoriascero~220\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~220_combout\ = (\Arreglomemoriascero~17_combout\ & (((\Arreglomemoriascero~16_combout\)))) # (!\Arreglomemoriascero~17_combout\ & ((\Arreglomemoriascero~16_combout\ & ((\Arreglomemoriascero~219_combout\))) # 
-- (!\Arreglomemoriascero~16_combout\ & (!Arreglomemoriascero(28)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000110100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero~17_combout\,
	datab => Arreglomemoriascero(28),
	datac => \Arreglomemoriascero~16_combout\,
	datad => \Arreglomemoriascero~219_combout\,
	combout => \Arreglomemoriascero~220_combout\);

-- Location: LCCOMB_X25_Y7_N18
\Arreglomemoriascero~221\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~221_combout\ = (\Arreglomemoriascero~17_combout\ & ((\Arreglomemoriascero~220_combout\ & ((!Arreglomemoriascero(22)))) # (!\Arreglomemoriascero~220_combout\ & (!Arreglomemoriascero(34))))) # (!\Arreglomemoriascero~17_combout\ & 
-- (((\Arreglomemoriascero~220_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero~17_combout\,
	datab => Arreglomemoriascero(34),
	datac => Arreglomemoriascero(22),
	datad => \Arreglomemoriascero~220_combout\,
	combout => \Arreglomemoriascero~221_combout\);

-- Location: LCCOMB_X25_Y7_N4
\Arreglomemoriascero[40]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero[40]~4_combout\ = (\Arreglomemoriascero~22_combout\ & (Arreglomemoriascero(40))) # (!\Arreglomemoriascero~22_combout\ & ((\Arreglomemoriascero~221_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero~22_combout\,
	datac => Arreglomemoriascero(40),
	datad => \Arreglomemoriascero~221_combout\,
	combout => \Arreglomemoriascero[40]~4_combout\);

-- Location: LCCOMB_X26_Y6_N18
\Arreglomemoriascero~236\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~236_combout\ = (\Arreglomemoriascero~13_combout\ & (((\Arreglomemoriascero~12_combout\)))) # (!\Arreglomemoriascero~13_combout\ & ((\Arreglomemoriascero~12_combout\ & ((!Arreglomemoriascero(34)))) # (!\Arreglomemoriascero~12_combout\ 
-- & (!Arreglomemoriascero(28)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(28),
	datab => Arreglomemoriascero(34),
	datac => \Arreglomemoriascero~13_combout\,
	datad => \Arreglomemoriascero~12_combout\,
	combout => \Arreglomemoriascero~236_combout\);

-- Location: LCCOMB_X26_Y6_N28
\Arreglomemoriascero~237\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~237_combout\ = (\Arreglomemoriascero~13_combout\ & ((\Arreglomemoriascero~236_combout\ & (!Arreglomemoriascero(22))) # (!\Arreglomemoriascero~236_combout\ & ((!Arreglomemoriascero(16)))))) # (!\Arreglomemoriascero~13_combout\ & 
-- (((\Arreglomemoriascero~236_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(22),
	datab => Arreglomemoriascero(16),
	datac => \Arreglomemoriascero~13_combout\,
	datad => \Arreglomemoriascero~236_combout\,
	combout => \Arreglomemoriascero~237_combout\);

-- Location: LCCOMB_X26_Y6_N2
\Arreglomemoriascero~238\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~238_combout\ = (\Arreglomemoriascero~17_combout\ & (((\Arreglomemoriascero~16_combout\)))) # (!\Arreglomemoriascero~17_combout\ & ((\Arreglomemoriascero~16_combout\ & ((\Arreglomemoriascero~237_combout\))) # 
-- (!\Arreglomemoriascero~16_combout\ & (!Arreglomemoriascero(46)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000110100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero~17_combout\,
	datab => Arreglomemoriascero(46),
	datac => \Arreglomemoriascero~16_combout\,
	datad => \Arreglomemoriascero~237_combout\,
	combout => \Arreglomemoriascero~238_combout\);

-- Location: LCCOMB_X25_Y9_N0
\Arreglomemoriascero~239\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~239_combout\ = (\Arreglomemoriascero~17_combout\ & ((\Arreglomemoriascero~238_combout\ & (Arreglomemoriascero(40))) # (!\Arreglomemoriascero~238_combout\ & ((Arreglomemoriascero(4)))))) # (!\Arreglomemoriascero~17_combout\ & 
-- (((\Arreglomemoriascero~238_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(40),
	datab => Arreglomemoriascero(4),
	datac => \Arreglomemoriascero~17_combout\,
	datad => \Arreglomemoriascero~238_combout\,
	combout => \Arreglomemoriascero~239_combout\);

-- Location: LCCOMB_X25_Y9_N14
\Arreglomemoriascero~240\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~240_combout\ = (\Arreglomemoriascero~22_combout\ & (!Arreglomemoriascero(10))) # (!\Arreglomemoriascero~22_combout\ & ((\Arreglomemoriascero~239_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => Arreglomemoriascero(10),
	datac => \Arreglomemoriascero~22_combout\,
	datad => \Arreglomemoriascero~239_combout\,
	combout => \Arreglomemoriascero~240_combout\);

-- Location: LCCOMB_X25_Y7_N0
\Arreglomemoriascero~242\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~242_combout\ = (\Arreglomemoriascero[3]~40_combout\ & (\Arreglomemoriascero~241_combout\ & (!\Arreglomemoriascero[3]~45_combout\))) # (!\Arreglomemoriascero[3]~40_combout\ & (((\Arreglomemoriascero[3]~45_combout\) # 
-- (\Arreglomemoriascero~240_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero~241_combout\,
	datab => \Arreglomemoriascero[3]~40_combout\,
	datac => \Arreglomemoriascero[3]~45_combout\,
	datad => \Arreglomemoriascero~240_combout\,
	combout => \Arreglomemoriascero~242_combout\);

-- Location: LCCOMB_X25_Y7_N2
\Arreglomemoriascero~248\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~248_combout\ = (\Arreglomemoriascero[3]~45_combout\ & ((\Arreglomemoriascero~242_combout\ & (\Arreglomemoriascero~247_combout\)) # (!\Arreglomemoriascero~242_combout\ & ((\Arreglomemoriascero[4]~10_combout\))))) # 
-- (!\Arreglomemoriascero[3]~45_combout\ & (((\Arreglomemoriascero~242_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero~247_combout\,
	datab => \Arreglomemoriascero[3]~45_combout\,
	datac => \Arreglomemoriascero[4]~10_combout\,
	datad => \Arreglomemoriascero~242_combout\,
	combout => \Arreglomemoriascero~248_combout\);

-- Location: LCCOMB_X25_Y7_N24
\Arreglomemoriascero~249\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~249_combout\ = (\Arreglomemoriascero[3]~34_combout\ & ((\Arreglomemoriascero[3]~28_combout\ & (\Arreglomemoriascero~231_combout\)) # (!\Arreglomemoriascero[3]~28_combout\ & ((\Arreglomemoriascero~248_combout\))))) # 
-- (!\Arreglomemoriascero[3]~34_combout\ & (((\Arreglomemoriascero[3]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero~231_combout\,
	datab => \Arreglomemoriascero[3]~34_combout\,
	datac => \Arreglomemoriascero[3]~28_combout\,
	datad => \Arreglomemoriascero~248_combout\,
	combout => \Arreglomemoriascero~249_combout\);

-- Location: LCCOMB_X25_Y7_N26
\Arreglomemoriascero~255\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~255_combout\ = (\Arreglomemoriascero[3]~34_combout\ & (((\Arreglomemoriascero~249_combout\)))) # (!\Arreglomemoriascero[3]~34_combout\ & ((\Arreglomemoriascero~249_combout\ & ((\Arreglomemoriascero~254_combout\))) # 
-- (!\Arreglomemoriascero~249_combout\ & (\Arreglomemoriascero~226_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero~226_combout\,
	datab => \Arreglomemoriascero~254_combout\,
	datac => \Arreglomemoriascero[3]~34_combout\,
	datad => \Arreglomemoriascero~249_combout\,
	combout => \Arreglomemoriascero~255_combout\);

-- Location: FF_X25_Y7_N5
\Arreglomemoriascero[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instancia1|salida~clkctrl_outclk\,
	d => \Arreglomemoriascero[40]~4_combout\,
	asdata => \Arreglomemoriascero~255_combout\,
	sload => \Arreglomemoriascero[3]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Arreglomemoriascero(40));

-- Location: LCCOMB_X26_Y6_N14
\Arreglomemoriascero~222\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~222_combout\ = (\Arreglomemoriascero~13_combout\ & (((\Arreglomemoriascero~12_combout\)))) # (!\Arreglomemoriascero~13_combout\ & ((\Arreglomemoriascero~12_combout\ & ((Arreglomemoriascero(4)))) # (!\Arreglomemoriascero~12_combout\ & 
-- (!Arreglomemoriascero(46)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(46),
	datab => Arreglomemoriascero(4),
	datac => \Arreglomemoriascero~13_combout\,
	datad => \Arreglomemoriascero~12_combout\,
	combout => \Arreglomemoriascero~222_combout\);

-- Location: LCCOMB_X26_Y6_N12
\Arreglomemoriascero~223\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~223_combout\ = (\Arreglomemoriascero~13_combout\ & ((\Arreglomemoriascero~222_combout\ & (Arreglomemoriascero(40))) # (!\Arreglomemoriascero~222_combout\ & ((!Arreglomemoriascero(34)))))) # (!\Arreglomemoriascero~13_combout\ & 
-- (((\Arreglomemoriascero~222_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(40),
	datab => \Arreglomemoriascero~13_combout\,
	datac => \Arreglomemoriascero~222_combout\,
	datad => Arreglomemoriascero(34),
	combout => \Arreglomemoriascero~223_combout\);

-- Location: LCCOMB_X26_Y6_N10
\Arreglomemoriascero~224\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~224_combout\ = (\Arreglomemoriascero~17_combout\ & (((\Arreglomemoriascero~16_combout\)))) # (!\Arreglomemoriascero~17_combout\ & ((\Arreglomemoriascero~16_combout\ & ((\Arreglomemoriascero~223_combout\))) # 
-- (!\Arreglomemoriascero~16_combout\ & (!Arreglomemoriascero(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000110100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero~17_combout\,
	datab => Arreglomemoriascero(16),
	datac => \Arreglomemoriascero~16_combout\,
	datad => \Arreglomemoriascero~223_combout\,
	combout => \Arreglomemoriascero~224_combout\);

-- Location: LCCOMB_X26_Y6_N0
\Arreglomemoriascero~225\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~225_combout\ = (\Arreglomemoriascero~17_combout\ & ((\Arreglomemoriascero~224_combout\ & ((!Arreglomemoriascero(10)))) # (!\Arreglomemoriascero~224_combout\ & (!Arreglomemoriascero(22))))) # (!\Arreglomemoriascero~17_combout\ & 
-- (((\Arreglomemoriascero~224_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(22),
	datab => Arreglomemoriascero(10),
	datac => \Arreglomemoriascero~17_combout\,
	datad => \Arreglomemoriascero~224_combout\,
	combout => \Arreglomemoriascero~225_combout\);

-- Location: LCCOMB_X26_Y7_N6
\Arreglomemoriascero~226\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~226_combout\ = (\Arreglomemoriascero~22_combout\ & (!Arreglomemoriascero(28))) # (!\Arreglomemoriascero~22_combout\ & ((\Arreglomemoriascero~225_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Arreglomemoriascero~22_combout\,
	datac => Arreglomemoriascero(28),
	datad => \Arreglomemoriascero~225_combout\,
	combout => \Arreglomemoriascero~226_combout\);

-- Location: LCCOMB_X26_Y7_N14
\Arreglomemoriascero~276\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~276_combout\ = (\Arreglomemoriascero[3]~45_combout\ & (!\Arreglomemoriascero[3]~40_combout\)) # (!\Arreglomemoriascero[3]~45_combout\ & ((\Arreglomemoriascero[3]~40_combout\ & ((\Arreglomemoriascero~254_combout\))) # 
-- (!\Arreglomemoriascero[3]~40_combout\ & (\Arreglomemoriascero~241_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero[3]~45_combout\,
	datab => \Arreglomemoriascero[3]~40_combout\,
	datac => \Arreglomemoriascero~241_combout\,
	datad => \Arreglomemoriascero~254_combout\,
	combout => \Arreglomemoriascero~276_combout\);

-- Location: LCCOMB_X26_Y7_N8
\Arreglomemoriascero~277\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~277_combout\ = (\Arreglomemoriascero[3]~45_combout\ & ((\Arreglomemoriascero~276_combout\ & ((\Arreglomemoriascero[4]~10_combout\))) # (!\Arreglomemoriascero~276_combout\ & (\Arreglomemoriascero[40]~4_combout\)))) # 
-- (!\Arreglomemoriascero[3]~45_combout\ & (\Arreglomemoriascero~276_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero[3]~45_combout\,
	datab => \Arreglomemoriascero~276_combout\,
	datac => \Arreglomemoriascero[40]~4_combout\,
	datad => \Arreglomemoriascero[4]~10_combout\,
	combout => \Arreglomemoriascero~277_combout\);

-- Location: LCCOMB_X26_Y7_N10
\Arreglomemoriascero~278\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~278_combout\ = (\Arreglomemoriascero[3]~34_combout\ & ((\Arreglomemoriascero[3]~28_combout\ & ((\Arreglomemoriascero~240_combout\))) # (!\Arreglomemoriascero[3]~28_combout\ & (\Arreglomemoriascero~277_combout\)))) # 
-- (!\Arreglomemoriascero[3]~34_combout\ & (\Arreglomemoriascero[3]~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero[3]~34_combout\,
	datab => \Arreglomemoriascero[3]~28_combout\,
	datac => \Arreglomemoriascero~277_combout\,
	datad => \Arreglomemoriascero~240_combout\,
	combout => \Arreglomemoriascero~278_combout\);

-- Location: LCCOMB_X26_Y7_N12
\Arreglomemoriascero~279\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~279_combout\ = (\Arreglomemoriascero[3]~34_combout\ & (((\Arreglomemoriascero~278_combout\)))) # (!\Arreglomemoriascero[3]~34_combout\ & ((\Arreglomemoriascero~278_combout\ & (\Arreglomemoriascero~231_combout\)) # 
-- (!\Arreglomemoriascero~278_combout\ & ((\Arreglomemoriascero~247_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero[3]~34_combout\,
	datab => \Arreglomemoriascero~231_combout\,
	datac => \Arreglomemoriascero~247_combout\,
	datad => \Arreglomemoriascero~278_combout\,
	combout => \Arreglomemoriascero~279_combout\);

-- Location: LCCOMB_X26_Y7_N24
\Arreglomemoriascero~280\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~280_combout\ = (\Arreglomemoriascero[3]~65_combout\ & ((!\Arreglomemoriascero~279_combout\))) # (!\Arreglomemoriascero[3]~65_combout\ & (!\Arreglomemoriascero~226_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero~226_combout\,
	datac => \Arreglomemoriascero[3]~65_combout\,
	datad => \Arreglomemoriascero~279_combout\,
	combout => \Arreglomemoriascero~280_combout\);

-- Location: FF_X26_Y7_N25
\Arreglomemoriascero[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instancia1|salida~clkctrl_outclk\,
	d => \Arreglomemoriascero~280_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Arreglomemoriascero(28));

-- Location: LCCOMB_X23_Y7_N6
\Arreglomemoriascero~227\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~227_combout\ = (\Arreglomemoriascero~12_combout\ & (((\Arreglomemoriascero~13_combout\)))) # (!\Arreglomemoriascero~12_combout\ & ((\Arreglomemoriascero~13_combout\ & (!Arreglomemoriascero(28))) # (!\Arreglomemoriascero~13_combout\ & 
-- ((Arreglomemoriascero(40))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(28),
	datab => Arreglomemoriascero(40),
	datac => \Arreglomemoriascero~12_combout\,
	datad => \Arreglomemoriascero~13_combout\,
	combout => \Arreglomemoriascero~227_combout\);

-- Location: LCCOMB_X26_Y7_N16
\Arreglomemoriascero~228\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~228_combout\ = (\Arreglomemoriascero~12_combout\ & ((\Arreglomemoriascero~227_combout\ & (!Arreglomemoriascero(34))) # (!\Arreglomemoriascero~227_combout\ & ((!Arreglomemoriascero(46)))))) # (!\Arreglomemoriascero~12_combout\ & 
-- (((\Arreglomemoriascero~227_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(34),
	datab => Arreglomemoriascero(46),
	datac => \Arreglomemoriascero~12_combout\,
	datad => \Arreglomemoriascero~227_combout\,
	combout => \Arreglomemoriascero~228_combout\);

-- Location: LCCOMB_X26_Y7_N18
\Arreglomemoriascero~230\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~230_combout\ = (\Arreglomemoriascero~16_combout\ & ((\Arreglomemoriascero~229_combout\ & (Arreglomemoriascero(4))) # (!\Arreglomemoriascero~229_combout\ & ((\Arreglomemoriascero~228_combout\))))) # (!\Arreglomemoriascero~16_combout\ & 
-- (((\Arreglomemoriascero~229_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero~16_combout\,
	datab => Arreglomemoriascero(4),
	datac => \Arreglomemoriascero~229_combout\,
	datad => \Arreglomemoriascero~228_combout\,
	combout => \Arreglomemoriascero~230_combout\);

-- Location: LCCOMB_X26_Y7_N4
\Arreglomemoriascero~231\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~231_combout\ = (\Arreglomemoriascero~22_combout\ & (!Arreglomemoriascero(22))) # (!\Arreglomemoriascero~22_combout\ & ((\Arreglomemoriascero~230_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Arreglomemoriascero~22_combout\,
	datac => Arreglomemoriascero(22),
	datad => \Arreglomemoriascero~230_combout\,
	combout => \Arreglomemoriascero~231_combout\);

-- Location: LCCOMB_X25_Y9_N12
\Arreglomemoriascero~306\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~306_combout\ = (\Arreglomemoriascero[3]~40_combout\ & (!\Arreglomemoriascero[3]~45_combout\ & ((\Arreglomemoriascero[40]~4_combout\)))) # (!\Arreglomemoriascero[3]~40_combout\ & ((\Arreglomemoriascero[3]~45_combout\) # 
-- ((\Arreglomemoriascero[4]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero[3]~40_combout\,
	datab => \Arreglomemoriascero[3]~45_combout\,
	datac => \Arreglomemoriascero[4]~10_combout\,
	datad => \Arreglomemoriascero[40]~4_combout\,
	combout => \Arreglomemoriascero~306_combout\);

-- Location: LCCOMB_X25_Y9_N6
\Arreglomemoriascero~307\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~307_combout\ = (\Arreglomemoriascero[3]~45_combout\ & ((\Arreglomemoriascero~306_combout\ & ((\Arreglomemoriascero~240_combout\))) # (!\Arreglomemoriascero~306_combout\ & (\Arreglomemoriascero~241_combout\)))) # 
-- (!\Arreglomemoriascero[3]~45_combout\ & (((\Arreglomemoriascero~306_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero~241_combout\,
	datab => \Arreglomemoriascero[3]~45_combout\,
	datac => \Arreglomemoriascero~240_combout\,
	datad => \Arreglomemoriascero~306_combout\,
	combout => \Arreglomemoriascero~307_combout\);

-- Location: LCCOMB_X25_Y9_N20
\Arreglomemoriascero~308\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~308_combout\ = (\Arreglomemoriascero[3]~28_combout\ & (((\Arreglomemoriascero~247_combout\)) # (!\Arreglomemoriascero[3]~34_combout\))) # (!\Arreglomemoriascero[3]~28_combout\ & (\Arreglomemoriascero[3]~34_combout\ & 
-- ((\Arreglomemoriascero~307_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero[3]~28_combout\,
	datab => \Arreglomemoriascero[3]~34_combout\,
	datac => \Arreglomemoriascero~247_combout\,
	datad => \Arreglomemoriascero~307_combout\,
	combout => \Arreglomemoriascero~308_combout\);

-- Location: LCCOMB_X25_Y9_N10
\Arreglomemoriascero~309\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~309_combout\ = (\Arreglomemoriascero[3]~34_combout\ & (((\Arreglomemoriascero~308_combout\)))) # (!\Arreglomemoriascero[3]~34_combout\ & ((\Arreglomemoriascero~308_combout\ & ((\Arreglomemoriascero~226_combout\))) # 
-- (!\Arreglomemoriascero~308_combout\ & (\Arreglomemoriascero~231_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero[3]~34_combout\,
	datab => \Arreglomemoriascero~231_combout\,
	datac => \Arreglomemoriascero~226_combout\,
	datad => \Arreglomemoriascero~308_combout\,
	combout => \Arreglomemoriascero~309_combout\);

-- Location: LCCOMB_X25_Y9_N30
\Arreglomemoriascero~310\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~310_combout\ = (\Arreglomemoriascero[3]~65_combout\ & ((!\Arreglomemoriascero~309_combout\))) # (!\Arreglomemoriascero[3]~65_combout\ & (!\Arreglomemoriascero~254_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Arreglomemoriascero~254_combout\,
	datac => \Arreglomemoriascero[3]~65_combout\,
	datad => \Arreglomemoriascero~309_combout\,
	combout => \Arreglomemoriascero~310_combout\);

-- Location: FF_X25_Y9_N31
\Arreglomemoriascero[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instancia1|salida~clkctrl_outclk\,
	d => \Arreglomemoriascero~310_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Arreglomemoriascero(34));

-- Location: LCCOMB_X26_Y6_N16
\Arreglomemoriascero~250\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~250_combout\ = (\Arreglomemoriascero~13_combout\ & ((Arreglomemoriascero(40)) # ((\Arreglomemoriascero~12_combout\)))) # (!\Arreglomemoriascero~13_combout\ & (((Arreglomemoriascero(4) & !\Arreglomemoriascero~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(40),
	datab => Arreglomemoriascero(4),
	datac => \Arreglomemoriascero~13_combout\,
	datad => \Arreglomemoriascero~12_combout\,
	combout => \Arreglomemoriascero~250_combout\);

-- Location: LCCOMB_X26_Y6_N26
\Arreglomemoriascero~251\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~251_combout\ = (\Arreglomemoriascero~12_combout\ & ((\Arreglomemoriascero~250_combout\ & (!Arreglomemoriascero(46))) # (!\Arreglomemoriascero~250_combout\ & ((!Arreglomemoriascero(10)))))) # (!\Arreglomemoriascero~12_combout\ & 
-- (((\Arreglomemoriascero~250_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(46),
	datab => Arreglomemoriascero(10),
	datac => \Arreglomemoriascero~12_combout\,
	datad => \Arreglomemoriascero~250_combout\,
	combout => \Arreglomemoriascero~251_combout\);

-- Location: LCCOMB_X26_Y6_N20
\Arreglomemoriascero~252\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~252_combout\ = (\Arreglomemoriascero~16_combout\ & (((\Arreglomemoriascero~17_combout\)))) # (!\Arreglomemoriascero~16_combout\ & ((\Arreglomemoriascero~17_combout\ & ((!Arreglomemoriascero(28)))) # (!\Arreglomemoriascero~17_combout\ 
-- & (!Arreglomemoriascero(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(22),
	datab => Arreglomemoriascero(28),
	datac => \Arreglomemoriascero~16_combout\,
	datad => \Arreglomemoriascero~17_combout\,
	combout => \Arreglomemoriascero~252_combout\);

-- Location: LCCOMB_X26_Y6_N22
\Arreglomemoriascero~253\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~253_combout\ = (\Arreglomemoriascero~16_combout\ & ((\Arreglomemoriascero~252_combout\ & (!Arreglomemoriascero(16))) # (!\Arreglomemoriascero~252_combout\ & ((\Arreglomemoriascero~251_combout\))))) # (!\Arreglomemoriascero~16_combout\ 
-- & (((\Arreglomemoriascero~252_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero~16_combout\,
	datab => Arreglomemoriascero(16),
	datac => \Arreglomemoriascero~251_combout\,
	datad => \Arreglomemoriascero~252_combout\,
	combout => \Arreglomemoriascero~253_combout\);

-- Location: LCCOMB_X26_Y7_N0
\Arreglomemoriascero~254\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~254_combout\ = (\Arreglomemoriascero~22_combout\ & (!Arreglomemoriascero(34))) # (!\Arreglomemoriascero~22_combout\ & ((\Arreglomemoriascero~253_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Arreglomemoriascero~22_combout\,
	datac => Arreglomemoriascero(34),
	datad => \Arreglomemoriascero~253_combout\,
	combout => \Arreglomemoriascero~254_combout\);

-- Location: LCCOMB_X25_Y9_N16
\Arreglomemoriascero~373\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~373_combout\ = (\Arreglomemoriascero[3]~40_combout\ & (!\Arreglomemoriascero[3]~45_combout\ & (\Arreglomemoriascero~240_combout\))) # (!\Arreglomemoriascero[3]~40_combout\ & ((\Arreglomemoriascero[3]~45_combout\) # 
-- ((\Arreglomemoriascero~231_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero[3]~40_combout\,
	datab => \Arreglomemoriascero[3]~45_combout\,
	datac => \Arreglomemoriascero~240_combout\,
	datad => \Arreglomemoriascero~231_combout\,
	combout => \Arreglomemoriascero~373_combout\);

-- Location: LCCOMB_X25_Y9_N2
\Arreglomemoriascero~374\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~374_combout\ = (\Arreglomemoriascero[3]~45_combout\ & ((\Arreglomemoriascero~373_combout\ & ((\Arreglomemoriascero~226_combout\))) # (!\Arreglomemoriascero~373_combout\ & (\Arreglomemoriascero~247_combout\)))) # 
-- (!\Arreglomemoriascero[3]~45_combout\ & (((\Arreglomemoriascero~373_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero~247_combout\,
	datab => \Arreglomemoriascero[3]~45_combout\,
	datac => \Arreglomemoriascero~226_combout\,
	datad => \Arreglomemoriascero~373_combout\,
	combout => \Arreglomemoriascero~374_combout\);

-- Location: LCCOMB_X25_Y9_N8
\Arreglomemoriascero~375\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~375_combout\ = (\Arreglomemoriascero[3]~34_combout\ & ((\Arreglomemoriascero[3]~28_combout\ & (\Arreglomemoriascero~254_combout\)) # (!\Arreglomemoriascero[3]~28_combout\ & ((\Arreglomemoriascero~374_combout\))))) # 
-- (!\Arreglomemoriascero[3]~34_combout\ & (((\Arreglomemoriascero[3]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero[3]~34_combout\,
	datab => \Arreglomemoriascero~254_combout\,
	datac => \Arreglomemoriascero[3]~28_combout\,
	datad => \Arreglomemoriascero~374_combout\,
	combout => \Arreglomemoriascero~375_combout\);

-- Location: LCCOMB_X25_Y9_N22
\Arreglomemoriascero~376\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~376_combout\ = (\Arreglomemoriascero[3]~34_combout\ & (((\Arreglomemoriascero~375_combout\)))) # (!\Arreglomemoriascero[3]~34_combout\ & ((\Arreglomemoriascero~375_combout\ & (\Arreglomemoriascero~241_combout\)) # 
-- (!\Arreglomemoriascero~375_combout\ & ((\Arreglomemoriascero[40]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero~241_combout\,
	datab => \Arreglomemoriascero[3]~34_combout\,
	datac => \Arreglomemoriascero~375_combout\,
	datad => \Arreglomemoriascero[40]~4_combout\,
	combout => \Arreglomemoriascero~376_combout\);

-- Location: FF_X25_Y9_N5
\Arreglomemoriascero[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instancia1|salida~clkctrl_outclk\,
	d => \Arreglomemoriascero[4]~10_combout\,
	asdata => \Arreglomemoriascero~376_combout\,
	sload => \Arreglomemoriascero[3]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Arreglomemoriascero(4));

-- Location: LCCOMB_X25_Y9_N28
\Arreglomemoriascero~232\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~232_combout\ = (\Arreglomemoriascero~13_combout\ & (((\Arreglomemoriascero~12_combout\)))) # (!\Arreglomemoriascero~13_combout\ & ((\Arreglomemoriascero~12_combout\ & (!Arreglomemoriascero(28))) # (!\Arreglomemoriascero~12_combout\ & 
-- ((!Arreglomemoriascero(22))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(28),
	datab => Arreglomemoriascero(22),
	datac => \Arreglomemoriascero~13_combout\,
	datad => \Arreglomemoriascero~12_combout\,
	combout => \Arreglomemoriascero~232_combout\);

-- Location: LCCOMB_X25_Y9_N26
\Arreglomemoriascero~233\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~233_combout\ = (\Arreglomemoriascero~13_combout\ & ((\Arreglomemoriascero~232_combout\ & (!Arreglomemoriascero(16))) # (!\Arreglomemoriascero~232_combout\ & ((!Arreglomemoriascero(10)))))) # (!\Arreglomemoriascero~13_combout\ & 
-- (((\Arreglomemoriascero~232_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(16),
	datab => \Arreglomemoriascero~13_combout\,
	datac => Arreglomemoriascero(10),
	datad => \Arreglomemoriascero~232_combout\,
	combout => \Arreglomemoriascero~233_combout\);

-- Location: LCCOMB_X25_Y9_N24
\Arreglomemoriascero~234\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~234_combout\ = (\Arreglomemoriascero~17_combout\ & (((\Arreglomemoriascero~16_combout\)))) # (!\Arreglomemoriascero~17_combout\ & ((\Arreglomemoriascero~16_combout\ & ((\Arreglomemoriascero~233_combout\))) # 
-- (!\Arreglomemoriascero~16_combout\ & (Arreglomemoriascero(40)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(40),
	datab => \Arreglomemoriascero~17_combout\,
	datac => \Arreglomemoriascero~233_combout\,
	datad => \Arreglomemoriascero~16_combout\,
	combout => \Arreglomemoriascero~234_combout\);

-- Location: LCCOMB_X25_Y9_N18
\Arreglomemoriascero~235\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~235_combout\ = (\Arreglomemoriascero~17_combout\ & ((\Arreglomemoriascero~234_combout\ & (!Arreglomemoriascero(34))) # (!\Arreglomemoriascero~234_combout\ & ((!Arreglomemoriascero(46)))))) # (!\Arreglomemoriascero~17_combout\ & 
-- (((\Arreglomemoriascero~234_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(34),
	datab => Arreglomemoriascero(46),
	datac => \Arreglomemoriascero~17_combout\,
	datad => \Arreglomemoriascero~234_combout\,
	combout => \Arreglomemoriascero~235_combout\);

-- Location: LCCOMB_X25_Y9_N4
\Arreglomemoriascero[4]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero[4]~10_combout\ = (\Arreglomemoriascero~22_combout\ & (Arreglomemoriascero(4))) # (!\Arreglomemoriascero~22_combout\ & ((\Arreglomemoriascero~235_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Arreglomemoriascero~22_combout\,
	datac => Arreglomemoriascero(4),
	datad => \Arreglomemoriascero~235_combout\,
	combout => \Arreglomemoriascero[4]~10_combout\);

-- Location: LCCOMB_X25_Y7_N16
\Arreglomemoriascero~343\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~343_combout\ = (\Arreglomemoriascero[3]~45_combout\ & (!\Arreglomemoriascero[3]~40_combout\)) # (!\Arreglomemoriascero[3]~45_combout\ & ((\Arreglomemoriascero[3]~40_combout\ & (\Arreglomemoriascero~247_combout\)) # 
-- (!\Arreglomemoriascero[3]~40_combout\ & ((\Arreglomemoriascero~226_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero[3]~45_combout\,
	datab => \Arreglomemoriascero[3]~40_combout\,
	datac => \Arreglomemoriascero~247_combout\,
	datad => \Arreglomemoriascero~226_combout\,
	combout => \Arreglomemoriascero~343_combout\);

-- Location: LCCOMB_X25_Y7_N10
\Arreglomemoriascero~344\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~344_combout\ = (\Arreglomemoriascero[3]~45_combout\ & ((\Arreglomemoriascero~343_combout\ & ((\Arreglomemoriascero~254_combout\))) # (!\Arreglomemoriascero~343_combout\ & (\Arreglomemoriascero~231_combout\)))) # 
-- (!\Arreglomemoriascero[3]~45_combout\ & (((\Arreglomemoriascero~343_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero~231_combout\,
	datab => \Arreglomemoriascero[3]~45_combout\,
	datac => \Arreglomemoriascero~254_combout\,
	datad => \Arreglomemoriascero~343_combout\,
	combout => \Arreglomemoriascero~344_combout\);

-- Location: LCCOMB_X25_Y7_N28
\Arreglomemoriascero~345\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~345_combout\ = (\Arreglomemoriascero[3]~34_combout\ & ((\Arreglomemoriascero[3]~28_combout\ & (\Arreglomemoriascero[40]~4_combout\)) # (!\Arreglomemoriascero[3]~28_combout\ & ((\Arreglomemoriascero~344_combout\))))) # 
-- (!\Arreglomemoriascero[3]~34_combout\ & (\Arreglomemoriascero[3]~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero[3]~34_combout\,
	datab => \Arreglomemoriascero[3]~28_combout\,
	datac => \Arreglomemoriascero[40]~4_combout\,
	datad => \Arreglomemoriascero~344_combout\,
	combout => \Arreglomemoriascero~345_combout\);

-- Location: LCCOMB_X25_Y7_N22
\Arreglomemoriascero~346\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~346_combout\ = (\Arreglomemoriascero[3]~34_combout\ & (((\Arreglomemoriascero~345_combout\)))) # (!\Arreglomemoriascero[3]~34_combout\ & ((\Arreglomemoriascero~345_combout\ & ((\Arreglomemoriascero[4]~10_combout\))) # 
-- (!\Arreglomemoriascero~345_combout\ & (\Arreglomemoriascero~241_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero~241_combout\,
	datab => \Arreglomemoriascero[3]~34_combout\,
	datac => \Arreglomemoriascero[4]~10_combout\,
	datad => \Arreglomemoriascero~345_combout\,
	combout => \Arreglomemoriascero~346_combout\);

-- Location: LCCOMB_X25_Y7_N14
\Arreglomemoriascero~347\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~347_combout\ = (\Arreglomemoriascero[3]~65_combout\ & (!\Arreglomemoriascero~346_combout\)) # (!\Arreglomemoriascero[3]~65_combout\ & ((!\Arreglomemoriascero~240_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Arreglomemoriascero[3]~65_combout\,
	datac => \Arreglomemoriascero~346_combout\,
	datad => \Arreglomemoriascero~240_combout\,
	combout => \Arreglomemoriascero~347_combout\);

-- Location: FF_X25_Y7_N15
\Arreglomemoriascero[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instancia1|salida~clkctrl_outclk\,
	d => \Arreglomemoriascero~347_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Arreglomemoriascero(10));

-- Location: FF_X21_Y7_N1
\Arreglomemoriascopia3[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instancia1|salida~clkctrl_outclk\,
	d => \Arreglomemoriascopia3~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Arreglomemoriascopia3(10));

-- Location: LCCOMB_X21_Y7_N0
\Arreglomemoriascopia3~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascopia3~16_combout\ = (\DetectoTarjeta~input_o\ & ((\vuelta~q\ & ((Arreglomemoriascopia3(10)))) # (!\vuelta~q\ & (!Arreglomemoriascero(10))))) # (!\DetectoTarjeta~input_o\ & (((Arreglomemoriascopia3(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(10),
	datab => \DetectoTarjeta~input_o\,
	datac => Arreglomemoriascopia3(10),
	datad => \vuelta~q\,
	combout => \Arreglomemoriascopia3~16_combout\);

-- Location: LCCOMB_X21_Y8_N22
\Equal35~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal35~2_combout\ = (\IDentrada~4_combout\ & (\Arreglomemoriascopia3~17_combout\ & (\IDentrada~5_combout\ $ (!\Arreglomemoriascopia3~16_combout\)))) # (!\IDentrada~4_combout\ & (!\Arreglomemoriascopia3~17_combout\ & (\IDentrada~5_combout\ $ 
-- (!\Arreglomemoriascopia3~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDentrada~4_combout\,
	datab => \IDentrada~5_combout\,
	datac => \Arreglomemoriascopia3~17_combout\,
	datad => \Arreglomemoriascopia3~16_combout\,
	combout => \Equal35~2_combout\);

-- Location: FF_X22_Y6_N21
\Arreglomemoriascopia3[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instancia1|salida~clkctrl_outclk\,
	d => \Arreglomemoriascopia3~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Arreglomemoriascopia3(7));

-- Location: LCCOMB_X22_Y6_N20
\Arreglomemoriascopia3~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascopia3~13_combout\ = (\DetectoTarjeta~input_o\ & ((\vuelta~q\ & ((Arreglomemoriascopia3(7)))) # (!\vuelta~q\ & (!Arreglomemoriascero(7))))) # (!\DetectoTarjeta~input_o\ & (((Arreglomemoriascopia3(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(7),
	datab => \DetectoTarjeta~input_o\,
	datac => Arreglomemoriascopia3(7),
	datad => \vuelta~q\,
	combout => \Arreglomemoriascopia3~13_combout\);

-- Location: FF_X22_Y6_N11
\Arreglomemoriascopia3[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instancia1|salida~clkctrl_outclk\,
	d => \Arreglomemoriascopia3~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Arreglomemoriascopia3(6));

-- Location: LCCOMB_X22_Y4_N14
\Arreglomemoriascero~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~93_combout\ = (\Arreglomemoriascero~16_combout\ & (((\Arreglomemoriascero~17_combout\)))) # (!\Arreglomemoriascero~16_combout\ & ((\Arreglomemoriascero~17_combout\ & ((!Arreglomemoriascero(6)))) # (!\Arreglomemoriascero~17_combout\ & 
-- (Arreglomemoriascero(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(0),
	datab => Arreglomemoriascero(6),
	datac => \Arreglomemoriascero~16_combout\,
	datad => \Arreglomemoriascero~17_combout\,
	combout => \Arreglomemoriascero~93_combout\);

-- Location: LCCOMB_X22_Y4_N2
\Arreglomemoriascero~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~70_combout\ = (\Arreglomemoriascero~13_combout\ & (((\Arreglomemoriascero~12_combout\)))) # (!\Arreglomemoriascero~13_combout\ & ((\Arreglomemoriascero~12_combout\ & ((Arreglomemoriascero(0)))) # (!\Arreglomemoriascero~12_combout\ & 
-- (!Arreglomemoriascero(42)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000110100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero~13_combout\,
	datab => Arreglomemoriascero(42),
	datac => \Arreglomemoriascero~12_combout\,
	datad => Arreglomemoriascero(0),
	combout => \Arreglomemoriascero~70_combout\);

-- Location: LCCOMB_X22_Y4_N24
\Arreglomemoriascero~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~71_combout\ = (\Arreglomemoriascero~13_combout\ & ((\Arreglomemoriascero~70_combout\ & ((Arreglomemoriascero(36)))) # (!\Arreglomemoriascero~70_combout\ & (!Arreglomemoriascero(30))))) # (!\Arreglomemoriascero~13_combout\ & 
-- (((\Arreglomemoriascero~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(30),
	datab => Arreglomemoriascero(36),
	datac => \Arreglomemoriascero~13_combout\,
	datad => \Arreglomemoriascero~70_combout\,
	combout => \Arreglomemoriascero~71_combout\);

-- Location: LCCOMB_X22_Y4_N18
\Arreglomemoriascero~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~72_combout\ = (\Arreglomemoriascero~17_combout\ & (((\Arreglomemoriascero~16_combout\)))) # (!\Arreglomemoriascero~17_combout\ & ((\Arreglomemoriascero~16_combout\ & ((\Arreglomemoriascero~71_combout\))) # 
-- (!\Arreglomemoriascero~16_combout\ & (!Arreglomemoriascero(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000110100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero~17_combout\,
	datab => Arreglomemoriascero(12),
	datac => \Arreglomemoriascero~16_combout\,
	datad => \Arreglomemoriascero~71_combout\,
	combout => \Arreglomemoriascero~72_combout\);

-- Location: LCCOMB_X22_Y4_N8
\Arreglomemoriascero~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~73_combout\ = (\Arreglomemoriascero~17_combout\ & ((\Arreglomemoriascero~72_combout\ & (!Arreglomemoriascero(6))) # (!\Arreglomemoriascero~72_combout\ & ((!Arreglomemoriascero(18)))))) # (!\Arreglomemoriascero~17_combout\ & 
-- (((\Arreglomemoriascero~72_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(6),
	datab => \Arreglomemoriascero~17_combout\,
	datac => Arreglomemoriascero(18),
	datad => \Arreglomemoriascero~72_combout\,
	combout => \Arreglomemoriascero~73_combout\);

-- Location: LCCOMB_X22_Y4_N26
\Arreglomemoriascero~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~74_combout\ = (\Arreglomemoriascero~22_combout\ & (!Arreglomemoriascero(24))) # (!\Arreglomemoriascero~22_combout\ & ((\Arreglomemoriascero~73_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(24),
	datac => \Arreglomemoriascero~73_combout\,
	datad => \Arreglomemoriascero~22_combout\,
	combout => \Arreglomemoriascero~74_combout\);

-- Location: LCCOMB_X24_Y7_N22
\Arreglomemoriascero~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~89_combout\ = (\Arreglomemoriascero~47_combout\ & ((\IDentrada~1_combout\))) # (!\Arreglomemoriascero~47_combout\ & (!Arreglomemoriascero(42)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(42),
	datac => \IDentrada~1_combout\,
	datad => \Arreglomemoriascero~47_combout\,
	combout => \Arreglomemoriascero~89_combout\);

-- Location: LCCOMB_X24_Y4_N4
\Arreglomemoriascero~256\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~256_combout\ = (\Arreglomemoriascero[3]~45_combout\ & (!\Arreglomemoriascero[3]~40_combout\)) # (!\Arreglomemoriascero[3]~45_combout\ & ((\Arreglomemoriascero[3]~40_combout\ & ((\Arreglomemoriascero~102_combout\))) # 
-- (!\Arreglomemoriascero[3]~40_combout\ & (\Arreglomemoriascero~89_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero[3]~45_combout\,
	datab => \Arreglomemoriascero[3]~40_combout\,
	datac => \Arreglomemoriascero~89_combout\,
	datad => \Arreglomemoriascero~102_combout\,
	combout => \Arreglomemoriascero~256_combout\);

-- Location: LCCOMB_X24_Y4_N2
\Arreglomemoriascero~257\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~257_combout\ = (\Arreglomemoriascero[3]~45_combout\ & ((\Arreglomemoriascero~256_combout\ & (\Arreglomemoriascero[0]~6_combout\)) # (!\Arreglomemoriascero~256_combout\ & ((\Arreglomemoriascero[36]~0_combout\))))) # 
-- (!\Arreglomemoriascero[3]~45_combout\ & (((\Arreglomemoriascero~256_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero[0]~6_combout\,
	datab => \Arreglomemoriascero[3]~45_combout\,
	datac => \Arreglomemoriascero~256_combout\,
	datad => \Arreglomemoriascero[36]~0_combout\,
	combout => \Arreglomemoriascero~257_combout\);

-- Location: LCCOMB_X24_Y4_N16
\Arreglomemoriascero~258\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~258_combout\ = (\Arreglomemoriascero[3]~34_combout\ & ((\Arreglomemoriascero[3]~28_combout\ & (\Arreglomemoriascero~88_combout\)) # (!\Arreglomemoriascero[3]~28_combout\ & ((\Arreglomemoriascero~257_combout\))))) # 
-- (!\Arreglomemoriascero[3]~34_combout\ & (((\Arreglomemoriascero[3]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero~88_combout\,
	datab => \Arreglomemoriascero[3]~34_combout\,
	datac => \Arreglomemoriascero[3]~28_combout\,
	datad => \Arreglomemoriascero~257_combout\,
	combout => \Arreglomemoriascero~258_combout\);

-- Location: LCCOMB_X24_Y4_N26
\Arreglomemoriascero~259\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~259_combout\ = (\Arreglomemoriascero[3]~34_combout\ & (((\Arreglomemoriascero~258_combout\)))) # (!\Arreglomemoriascero[3]~34_combout\ & ((\Arreglomemoriascero~258_combout\ & (\Arreglomemoriascero~79_combout\)) # 
-- (!\Arreglomemoriascero~258_combout\ & ((\Arreglomemoriascero~95_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero~79_combout\,
	datab => \Arreglomemoriascero~95_combout\,
	datac => \Arreglomemoriascero[3]~34_combout\,
	datad => \Arreglomemoriascero~258_combout\,
	combout => \Arreglomemoriascero~259_combout\);

-- Location: LCCOMB_X23_Y4_N6
\Arreglomemoriascero~260\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~260_combout\ = (\Arreglomemoriascero[3]~65_combout\ & ((!\Arreglomemoriascero~259_combout\))) # (!\Arreglomemoriascero[3]~65_combout\ & (!\Arreglomemoriascero~74_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero~74_combout\,
	datac => \Arreglomemoriascero[3]~65_combout\,
	datad => \Arreglomemoriascero~259_combout\,
	combout => \Arreglomemoriascero~260_combout\);

-- Location: FF_X23_Y4_N7
\Arreglomemoriascero[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instancia1|salida~clkctrl_outclk\,
	d => \Arreglomemoriascero~260_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Arreglomemoriascero(24));

-- Location: LCCOMB_X22_Y5_N18
\Arreglomemoriascero~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~75_combout\ = (\Arreglomemoriascero~13_combout\ & (((\Arreglomemoriascero~12_combout\) # (!Arreglomemoriascero(24))))) # (!\Arreglomemoriascero~13_combout\ & (Arreglomemoriascero(36) & ((!\Arreglomemoriascero~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(36),
	datab => Arreglomemoriascero(24),
	datac => \Arreglomemoriascero~13_combout\,
	datad => \Arreglomemoriascero~12_combout\,
	combout => \Arreglomemoriascero~75_combout\);

-- Location: LCCOMB_X22_Y5_N4
\Arreglomemoriascero~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~76_combout\ = (\Arreglomemoriascero~12_combout\ & ((\Arreglomemoriascero~75_combout\ & ((!Arreglomemoriascero(30)))) # (!\Arreglomemoriascero~75_combout\ & (!Arreglomemoriascero(42))))) # (!\Arreglomemoriascero~12_combout\ & 
-- (((\Arreglomemoriascero~75_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero~12_combout\,
	datab => Arreglomemoriascero(42),
	datac => Arreglomemoriascero(30),
	datad => \Arreglomemoriascero~75_combout\,
	combout => \Arreglomemoriascero~76_combout\);

-- Location: LCCOMB_X22_Y4_N0
\Arreglomemoriascero~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~77_combout\ = (\Arreglomemoriascero~16_combout\ & (((\Arreglomemoriascero~17_combout\)))) # (!\Arreglomemoriascero~16_combout\ & ((\Arreglomemoriascero~17_combout\ & (!Arreglomemoriascero(12))) # (!\Arreglomemoriascero~17_combout\ & 
-- ((!Arreglomemoriascero(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero~16_combout\,
	datab => Arreglomemoriascero(12),
	datac => Arreglomemoriascero(6),
	datad => \Arreglomemoriascero~17_combout\,
	combout => \Arreglomemoriascero~77_combout\);

-- Location: LCCOMB_X22_Y5_N30
\Arreglomemoriascero~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~78_combout\ = (\Arreglomemoriascero~16_combout\ & ((\Arreglomemoriascero~77_combout\ & (Arreglomemoriascero(0))) # (!\Arreglomemoriascero~77_combout\ & ((\Arreglomemoriascero~76_combout\))))) # (!\Arreglomemoriascero~16_combout\ & 
-- (((\Arreglomemoriascero~77_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(0),
	datab => \Arreglomemoriascero~76_combout\,
	datac => \Arreglomemoriascero~16_combout\,
	datad => \Arreglomemoriascero~77_combout\,
	combout => \Arreglomemoriascero~78_combout\);

-- Location: LCCOMB_X22_Y5_N8
\Arreglomemoriascero~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~79_combout\ = (\Arreglomemoriascero~22_combout\ & (!Arreglomemoriascero(18))) # (!\Arreglomemoriascero~22_combout\ & ((\Arreglomemoriascero~78_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(18),
	datab => \Arreglomemoriascero~22_combout\,
	datac => \Arreglomemoriascero~78_combout\,
	combout => \Arreglomemoriascero~79_combout\);

-- Location: LCCOMB_X24_Y4_N24
\Arreglomemoriascero~377\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~377_combout\ = (\Arreglomemoriascero[3]~45_combout\ & (!\Arreglomemoriascero[3]~40_combout\)) # (!\Arreglomemoriascero[3]~45_combout\ & ((\Arreglomemoriascero[3]~40_combout\ & (\Arreglomemoriascero~74_combout\)) # 
-- (!\Arreglomemoriascero[3]~40_combout\ & ((\Arreglomemoriascero[36]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero[3]~45_combout\,
	datab => \Arreglomemoriascero[3]~40_combout\,
	datac => \Arreglomemoriascero~74_combout\,
	datad => \Arreglomemoriascero[36]~0_combout\,
	combout => \Arreglomemoriascero~377_combout\);

-- Location: LCCOMB_X24_Y4_N10
\Arreglomemoriascero~378\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~378_combout\ = (\Arreglomemoriascero[3]~45_combout\ & ((\Arreglomemoriascero~377_combout\ & ((\Arreglomemoriascero~89_combout\))) # (!\Arreglomemoriascero~377_combout\ & (\Arreglomemoriascero~102_combout\)))) # 
-- (!\Arreglomemoriascero[3]~45_combout\ & (((\Arreglomemoriascero~377_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero[3]~45_combout\,
	datab => \Arreglomemoriascero~102_combout\,
	datac => \Arreglomemoriascero~89_combout\,
	datad => \Arreglomemoriascero~377_combout\,
	combout => \Arreglomemoriascero~378_combout\);

-- Location: LCCOMB_X24_Y4_N12
\Arreglomemoriascero~379\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~379_combout\ = (\Arreglomemoriascero[3]~34_combout\ & ((\Arreglomemoriascero[3]~28_combout\ & (\Arreglomemoriascero[0]~6_combout\)) # (!\Arreglomemoriascero[3]~28_combout\ & ((\Arreglomemoriascero~378_combout\))))) # 
-- (!\Arreglomemoriascero[3]~34_combout\ & (((\Arreglomemoriascero[3]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero[0]~6_combout\,
	datab => \Arreglomemoriascero[3]~34_combout\,
	datac => \Arreglomemoriascero[3]~28_combout\,
	datad => \Arreglomemoriascero~378_combout\,
	combout => \Arreglomemoriascero~379_combout\);

-- Location: LCCOMB_X24_Y4_N6
\Arreglomemoriascero~380\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~380_combout\ = (\Arreglomemoriascero[3]~34_combout\ & (((\Arreglomemoriascero~379_combout\)))) # (!\Arreglomemoriascero[3]~34_combout\ & ((\Arreglomemoriascero~379_combout\ & ((\Arreglomemoriascero~95_combout\))) # 
-- (!\Arreglomemoriascero~379_combout\ & (\Arreglomemoriascero~88_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero~88_combout\,
	datab => \Arreglomemoriascero~95_combout\,
	datac => \Arreglomemoriascero[3]~34_combout\,
	datad => \Arreglomemoriascero~379_combout\,
	combout => \Arreglomemoriascero~380_combout\);

-- Location: LCCOMB_X24_Y4_N14
\Arreglomemoriascero~381\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~381_combout\ = (\Arreglomemoriascero[3]~65_combout\ & ((!\Arreglomemoriascero~380_combout\))) # (!\Arreglomemoriascero[3]~65_combout\ & (!\Arreglomemoriascero~79_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero[3]~65_combout\,
	datac => \Arreglomemoriascero~79_combout\,
	datad => \Arreglomemoriascero~380_combout\,
	combout => \Arreglomemoriascero~381_combout\);

-- Location: FF_X24_Y4_N15
\Arreglomemoriascero[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instancia1|salida~clkctrl_outclk\,
	d => \Arreglomemoriascero~381_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Arreglomemoriascero(18));

-- Location: LCCOMB_X24_Y7_N6
\Arreglomemoriascero~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~66_combout\ = (\Arreglomemoriascero~13_combout\ & (((\Arreglomemoriascero~12_combout\)))) # (!\Arreglomemoriascero~13_combout\ & ((\Arreglomemoriascero~12_combout\ & (!Arreglomemoriascero(12))) # (!\Arreglomemoriascero~12_combout\ & 
-- ((!Arreglomemoriascero(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(12),
	datab => Arreglomemoriascero(6),
	datac => \Arreglomemoriascero~13_combout\,
	datad => \Arreglomemoriascero~12_combout\,
	combout => \Arreglomemoriascero~66_combout\);

-- Location: LCCOMB_X24_Y7_N0
\Arreglomemoriascero~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~67_combout\ = (\Arreglomemoriascero~13_combout\ & ((\Arreglomemoriascero~66_combout\ & ((Arreglomemoriascero(0)))) # (!\Arreglomemoriascero~66_combout\ & (!Arreglomemoriascero(42))))) # (!\Arreglomemoriascero~13_combout\ & 
-- (((\Arreglomemoriascero~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(42),
	datab => \Arreglomemoriascero~13_combout\,
	datac => Arreglomemoriascero(0),
	datad => \Arreglomemoriascero~66_combout\,
	combout => \Arreglomemoriascero~67_combout\);

-- Location: LCCOMB_X24_Y7_N2
\Arreglomemoriascero~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~68_combout\ = (\Arreglomemoriascero~16_combout\ & (((\Arreglomemoriascero~17_combout\) # (\Arreglomemoriascero~67_combout\)))) # (!\Arreglomemoriascero~16_combout\ & (!Arreglomemoriascero(24) & (!\Arreglomemoriascero~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero~16_combout\,
	datab => Arreglomemoriascero(24),
	datac => \Arreglomemoriascero~17_combout\,
	datad => \Arreglomemoriascero~67_combout\,
	combout => \Arreglomemoriascero~68_combout\);

-- Location: LCCOMB_X24_Y7_N16
\Arreglomemoriascero~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~69_combout\ = (\Arreglomemoriascero~17_combout\ & ((\Arreglomemoriascero~68_combout\ & (!Arreglomemoriascero(18))) # (!\Arreglomemoriascero~68_combout\ & ((!Arreglomemoriascero(30)))))) # (!\Arreglomemoriascero~17_combout\ & 
-- (((\Arreglomemoriascero~68_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(18),
	datab => Arreglomemoriascero(30),
	datac => \Arreglomemoriascero~17_combout\,
	datad => \Arreglomemoriascero~68_combout\,
	combout => \Arreglomemoriascero~69_combout\);

-- Location: LCCOMB_X24_Y4_N0
\Arreglomemoriascero[36]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero[36]~0_combout\ = (\Arreglomemoriascero~22_combout\ & (Arreglomemoriascero(36))) # (!\Arreglomemoriascero~22_combout\ & ((\Arreglomemoriascero~69_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero~22_combout\,
	datac => Arreglomemoriascero(36),
	datad => \Arreglomemoriascero~69_combout\,
	combout => \Arreglomemoriascero[36]~0_combout\);

-- Location: LCCOMB_X24_Y4_N20
\Arreglomemoriascero~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~90_combout\ = (\Arreglomemoriascero[3]~45_combout\ & (!\Arreglomemoriascero[3]~40_combout\)) # (!\Arreglomemoriascero[3]~45_combout\ & ((\Arreglomemoriascero[3]~40_combout\ & (\Arreglomemoriascero~89_combout\)) # 
-- (!\Arreglomemoriascero[3]~40_combout\ & ((\Arreglomemoriascero~88_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero[3]~45_combout\,
	datab => \Arreglomemoriascero[3]~40_combout\,
	datac => \Arreglomemoriascero~89_combout\,
	datad => \Arreglomemoriascero~88_combout\,
	combout => \Arreglomemoriascero~90_combout\);

-- Location: LCCOMB_X24_Y4_N18
\Arreglomemoriascero~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~96_combout\ = (\Arreglomemoriascero[3]~45_combout\ & ((\Arreglomemoriascero~90_combout\ & ((\Arreglomemoriascero~95_combout\))) # (!\Arreglomemoriascero~90_combout\ & (\Arreglomemoriascero[0]~6_combout\)))) # 
-- (!\Arreglomemoriascero[3]~45_combout\ & (((\Arreglomemoriascero~90_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero[0]~6_combout\,
	datab => \Arreglomemoriascero~95_combout\,
	datac => \Arreglomemoriascero[3]~45_combout\,
	datad => \Arreglomemoriascero~90_combout\,
	combout => \Arreglomemoriascero~96_combout\);

-- Location: LCCOMB_X24_Y4_N8
\Arreglomemoriascero~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~97_combout\ = (\Arreglomemoriascero[3]~34_combout\ & ((\Arreglomemoriascero[3]~28_combout\ & (\Arreglomemoriascero~79_combout\)) # (!\Arreglomemoriascero[3]~28_combout\ & ((\Arreglomemoriascero~96_combout\))))) # 
-- (!\Arreglomemoriascero[3]~34_combout\ & (((\Arreglomemoriascero[3]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero~79_combout\,
	datab => \Arreglomemoriascero[3]~34_combout\,
	datac => \Arreglomemoriascero[3]~28_combout\,
	datad => \Arreglomemoriascero~96_combout\,
	combout => \Arreglomemoriascero~97_combout\);

-- Location: LCCOMB_X24_Y4_N30
\Arreglomemoriascero~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~103_combout\ = (\Arreglomemoriascero[3]~34_combout\ & (((\Arreglomemoriascero~97_combout\)))) # (!\Arreglomemoriascero[3]~34_combout\ & ((\Arreglomemoriascero~97_combout\ & ((\Arreglomemoriascero~102_combout\))) # 
-- (!\Arreglomemoriascero~97_combout\ & (\Arreglomemoriascero~74_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero~74_combout\,
	datab => \Arreglomemoriascero[3]~34_combout\,
	datac => \Arreglomemoriascero~97_combout\,
	datad => \Arreglomemoriascero~102_combout\,
	combout => \Arreglomemoriascero~103_combout\);

-- Location: FF_X24_Y4_N1
\Arreglomemoriascero[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instancia1|salida~clkctrl_outclk\,
	d => \Arreglomemoriascero[36]~0_combout\,
	asdata => \Arreglomemoriascero~103_combout\,
	sload => \Arreglomemoriascero[3]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Arreglomemoriascero(36));

-- Location: LCCOMB_X22_Y4_N22
\Arreglomemoriascero~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~91_combout\ = (\Arreglomemoriascero~12_combout\ & (((\Arreglomemoriascero~13_combout\)))) # (!\Arreglomemoriascero~12_combout\ & ((\Arreglomemoriascero~13_combout\ & (!Arreglomemoriascero(18))) # (!\Arreglomemoriascero~13_combout\ & 
-- ((!Arreglomemoriascero(30))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero~12_combout\,
	datab => Arreglomemoriascero(18),
	datac => Arreglomemoriascero(30),
	datad => \Arreglomemoriascero~13_combout\,
	combout => \Arreglomemoriascero~91_combout\);

-- Location: LCCOMB_X22_Y4_N12
\Arreglomemoriascero~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~92_combout\ = (\Arreglomemoriascero~12_combout\ & ((\Arreglomemoriascero~91_combout\ & ((!Arreglomemoriascero(24)))) # (!\Arreglomemoriascero~91_combout\ & (Arreglomemoriascero(36))))) # (!\Arreglomemoriascero~12_combout\ & 
-- (((\Arreglomemoriascero~91_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero~12_combout\,
	datab => Arreglomemoriascero(36),
	datac => \Arreglomemoriascero~91_combout\,
	datad => Arreglomemoriascero(24),
	combout => \Arreglomemoriascero~92_combout\);

-- Location: LCCOMB_X22_Y4_N4
\Arreglomemoriascero~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~94_combout\ = (\Arreglomemoriascero~16_combout\ & ((\Arreglomemoriascero~93_combout\ & (!Arreglomemoriascero(42))) # (!\Arreglomemoriascero~93_combout\ & ((\Arreglomemoriascero~92_combout\))))) # (!\Arreglomemoriascero~16_combout\ & 
-- (((\Arreglomemoriascero~93_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero~16_combout\,
	datab => Arreglomemoriascero(42),
	datac => \Arreglomemoriascero~93_combout\,
	datad => \Arreglomemoriascero~92_combout\,
	combout => \Arreglomemoriascero~94_combout\);

-- Location: LCCOMB_X22_Y4_N30
\Arreglomemoriascero~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~95_combout\ = (\Arreglomemoriascero~22_combout\ & (!Arreglomemoriascero(12))) # (!\Arreglomemoriascero~22_combout\ & ((\Arreglomemoriascero~94_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => Arreglomemoriascero(12),
	datac => \Arreglomemoriascero~94_combout\,
	datad => \Arreglomemoriascero~22_combout\,
	combout => \Arreglomemoriascero~95_combout\);

-- Location: LCCOMB_X22_Y5_N22
\Arreglomemoriascero~407\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~407_combout\ = (\Arreglomemoriascero[3]~40_combout\ & (((\Arreglomemoriascero~79_combout\ & !\Arreglomemoriascero[3]~45_combout\)))) # (!\Arreglomemoriascero[3]~40_combout\ & ((\Arreglomemoriascero~102_combout\) # 
-- ((\Arreglomemoriascero[3]~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero~102_combout\,
	datab => \Arreglomemoriascero~79_combout\,
	datac => \Arreglomemoriascero[3]~40_combout\,
	datad => \Arreglomemoriascero[3]~45_combout\,
	combout => \Arreglomemoriascero~407_combout\);

-- Location: LCCOMB_X22_Y5_N24
\Arreglomemoriascero~408\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~408_combout\ = (\Arreglomemoriascero[3]~45_combout\ & ((\Arreglomemoriascero~407_combout\ & ((\Arreglomemoriascero[36]~0_combout\))) # (!\Arreglomemoriascero~407_combout\ & (\Arreglomemoriascero~74_combout\)))) # 
-- (!\Arreglomemoriascero[3]~45_combout\ & (((\Arreglomemoriascero~407_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero~74_combout\,
	datab => \Arreglomemoriascero[3]~45_combout\,
	datac => \Arreglomemoriascero~407_combout\,
	datad => \Arreglomemoriascero[36]~0_combout\,
	combout => \Arreglomemoriascero~408_combout\);

-- Location: LCCOMB_X22_Y5_N2
\Arreglomemoriascero~409\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~409_combout\ = (\Arreglomemoriascero[3]~28_combout\ & (((\Arreglomemoriascero~89_combout\)) # (!\Arreglomemoriascero[3]~34_combout\))) # (!\Arreglomemoriascero[3]~28_combout\ & (\Arreglomemoriascero[3]~34_combout\ & 
-- ((\Arreglomemoriascero~408_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero[3]~28_combout\,
	datab => \Arreglomemoriascero[3]~34_combout\,
	datac => \Arreglomemoriascero~89_combout\,
	datad => \Arreglomemoriascero~408_combout\,
	combout => \Arreglomemoriascero~409_combout\);

-- Location: LCCOMB_X22_Y5_N28
\Arreglomemoriascero~410\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~410_combout\ = (\Arreglomemoriascero[3]~34_combout\ & (((\Arreglomemoriascero~409_combout\)))) # (!\Arreglomemoriascero[3]~34_combout\ & ((\Arreglomemoriascero~409_combout\ & ((\Arreglomemoriascero~88_combout\))) # 
-- (!\Arreglomemoriascero~409_combout\ & (\Arreglomemoriascero[0]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero[0]~6_combout\,
	datab => \Arreglomemoriascero[3]~34_combout\,
	datac => \Arreglomemoriascero~88_combout\,
	datad => \Arreglomemoriascero~409_combout\,
	combout => \Arreglomemoriascero~410_combout\);

-- Location: LCCOMB_X22_Y5_N12
\Arreglomemoriascero~411\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~411_combout\ = (\Arreglomemoriascero[3]~65_combout\ & ((!\Arreglomemoriascero~410_combout\))) # (!\Arreglomemoriascero[3]~65_combout\ & (!\Arreglomemoriascero~95_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero~95_combout\,
	datab => \Arreglomemoriascero[3]~65_combout\,
	datad => \Arreglomemoriascero~410_combout\,
	combout => \Arreglomemoriascero~411_combout\);

-- Location: FF_X22_Y5_N13
\Arreglomemoriascero[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instancia1|salida~clkctrl_outclk\,
	d => \Arreglomemoriascero~411_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Arreglomemoriascero(12));

-- Location: LCCOMB_X24_Y6_N22
\Arreglomemoriascero~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~100_combout\ = (\Arreglomemoriascero~17_combout\ & (((\Arreglomemoriascero~16_combout\)) # (!Arreglomemoriascero(24)))) # (!\Arreglomemoriascero~17_combout\ & (((!Arreglomemoriascero(18) & !\Arreglomemoriascero~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(24),
	datab => Arreglomemoriascero(18),
	datac => \Arreglomemoriascero~17_combout\,
	datad => \Arreglomemoriascero~16_combout\,
	combout => \Arreglomemoriascero~100_combout\);

-- Location: LCCOMB_X24_Y6_N18
\Arreglomemoriascero~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~98_combout\ = (\Arreglomemoriascero~12_combout\ & (((\Arreglomemoriascero~13_combout\)))) # (!\Arreglomemoriascero~12_combout\ & ((\Arreglomemoriascero~13_combout\ & ((Arreglomemoriascero(36)))) # (!\Arreglomemoriascero~13_combout\ & 
-- (Arreglomemoriascero(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(0),
	datab => Arreglomemoriascero(36),
	datac => \Arreglomemoriascero~12_combout\,
	datad => \Arreglomemoriascero~13_combout\,
	combout => \Arreglomemoriascero~98_combout\);

-- Location: LCCOMB_X24_Y6_N28
\Arreglomemoriascero~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~99_combout\ = (\Arreglomemoriascero~12_combout\ & ((\Arreglomemoriascero~98_combout\ & ((!Arreglomemoriascero(42)))) # (!\Arreglomemoriascero~98_combout\ & (!Arreglomemoriascero(6))))) # (!\Arreglomemoriascero~12_combout\ & 
-- (((\Arreglomemoriascero~98_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(6),
	datab => Arreglomemoriascero(42),
	datac => \Arreglomemoriascero~12_combout\,
	datad => \Arreglomemoriascero~98_combout\,
	combout => \Arreglomemoriascero~99_combout\);

-- Location: LCCOMB_X24_Y6_N20
\Arreglomemoriascero~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~101_combout\ = (\Arreglomemoriascero~16_combout\ & ((\Arreglomemoriascero~100_combout\ & (!Arreglomemoriascero(12))) # (!\Arreglomemoriascero~100_combout\ & ((\Arreglomemoriascero~99_combout\))))) # (!\Arreglomemoriascero~16_combout\ 
-- & (((\Arreglomemoriascero~100_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero~16_combout\,
	datab => Arreglomemoriascero(12),
	datac => \Arreglomemoriascero~100_combout\,
	datad => \Arreglomemoriascero~99_combout\,
	combout => \Arreglomemoriascero~101_combout\);

-- Location: LCCOMB_X24_Y6_N30
\Arreglomemoriascero~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~102_combout\ = (\Arreglomemoriascero~22_combout\ & (!Arreglomemoriascero(30))) # (!\Arreglomemoriascero~22_combout\ & ((\Arreglomemoriascero~101_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => Arreglomemoriascero(30),
	datac => \Arreglomemoriascero~22_combout\,
	datad => \Arreglomemoriascero~101_combout\,
	combout => \Arreglomemoriascero~102_combout\);

-- Location: LCCOMB_X24_Y4_N28
\Arreglomemoriascero~286\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~286_combout\ = (\Arreglomemoriascero[3]~45_combout\ & (!\Arreglomemoriascero[3]~40_combout\)) # (!\Arreglomemoriascero[3]~45_combout\ & ((\Arreglomemoriascero[3]~40_combout\ & ((\Arreglomemoriascero[36]~0_combout\))) # 
-- (!\Arreglomemoriascero[3]~40_combout\ & (\Arreglomemoriascero[0]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero[3]~45_combout\,
	datab => \Arreglomemoriascero[3]~40_combout\,
	datac => \Arreglomemoriascero[0]~6_combout\,
	datad => \Arreglomemoriascero[36]~0_combout\,
	combout => \Arreglomemoriascero~286_combout\);

-- Location: LCCOMB_X24_Y4_N22
\Arreglomemoriascero~287\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~287_combout\ = (\Arreglomemoriascero[3]~45_combout\ & ((\Arreglomemoriascero~286_combout\ & (\Arreglomemoriascero~88_combout\)) # (!\Arreglomemoriascero~286_combout\ & ((\Arreglomemoriascero~89_combout\))))) # 
-- (!\Arreglomemoriascero[3]~45_combout\ & (((\Arreglomemoriascero~286_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero~88_combout\,
	datab => \Arreglomemoriascero~89_combout\,
	datac => \Arreglomemoriascero[3]~45_combout\,
	datad => \Arreglomemoriascero~286_combout\,
	combout => \Arreglomemoriascero~287_combout\);

-- Location: LCCOMB_X24_Y7_N28
\Arreglomemoriascero~288\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~288_combout\ = (\Arreglomemoriascero[3]~28_combout\ & ((\Arreglomemoriascero~95_combout\) # ((!\Arreglomemoriascero[3]~34_combout\)))) # (!\Arreglomemoriascero[3]~28_combout\ & (((\Arreglomemoriascero[3]~34_combout\ & 
-- \Arreglomemoriascero~287_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero~95_combout\,
	datab => \Arreglomemoriascero[3]~28_combout\,
	datac => \Arreglomemoriascero[3]~34_combout\,
	datad => \Arreglomemoriascero~287_combout\,
	combout => \Arreglomemoriascero~288_combout\);

-- Location: LCCOMB_X24_Y7_N10
\Arreglomemoriascero~289\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~289_combout\ = (\Arreglomemoriascero[3]~34_combout\ & (((\Arreglomemoriascero~288_combout\)))) # (!\Arreglomemoriascero[3]~34_combout\ & ((\Arreglomemoriascero~288_combout\ & (\Arreglomemoriascero~74_combout\)) # 
-- (!\Arreglomemoriascero~288_combout\ & ((\Arreglomemoriascero~79_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero[3]~34_combout\,
	datab => \Arreglomemoriascero~74_combout\,
	datac => \Arreglomemoriascero~79_combout\,
	datad => \Arreglomemoriascero~288_combout\,
	combout => \Arreglomemoriascero~289_combout\);

-- Location: LCCOMB_X24_Y7_N20
\Arreglomemoriascero~290\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~290_combout\ = (\Arreglomemoriascero[3]~65_combout\ & ((!\Arreglomemoriascero~289_combout\))) # (!\Arreglomemoriascero[3]~65_combout\ & (!\Arreglomemoriascero~102_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero[3]~65_combout\,
	datac => \Arreglomemoriascero~102_combout\,
	datad => \Arreglomemoriascero~289_combout\,
	combout => \Arreglomemoriascero~290_combout\);

-- Location: FF_X24_Y7_N21
\Arreglomemoriascero[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instancia1|salida~clkctrl_outclk\,
	d => \Arreglomemoriascero~290_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Arreglomemoriascero(30));

-- Location: LCCOMB_X23_Y4_N10
\Arreglomemoriascero~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~80_combout\ = (\Arreglomemoriascero~12_combout\ & (((\Arreglomemoriascero~13_combout\)) # (!Arreglomemoriascero(24)))) # (!\Arreglomemoriascero~12_combout\ & (((!Arreglomemoriascero(18) & !\Arreglomemoriascero~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(24),
	datab => Arreglomemoriascero(18),
	datac => \Arreglomemoriascero~12_combout\,
	datad => \Arreglomemoriascero~13_combout\,
	combout => \Arreglomemoriascero~80_combout\);

-- Location: LCCOMB_X23_Y4_N0
\Arreglomemoriascero~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~81_combout\ = (\Arreglomemoriascero~13_combout\ & ((\Arreglomemoriascero~80_combout\ & (!Arreglomemoriascero(12))) # (!\Arreglomemoriascero~80_combout\ & ((!Arreglomemoriascero(6)))))) # (!\Arreglomemoriascero~13_combout\ & 
-- (((\Arreglomemoriascero~80_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(12),
	datab => Arreglomemoriascero(6),
	datac => \Arreglomemoriascero~13_combout\,
	datad => \Arreglomemoriascero~80_combout\,
	combout => \Arreglomemoriascero~81_combout\);

-- Location: LCCOMB_X23_Y4_N22
\Arreglomemoriascero~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~82_combout\ = (\Arreglomemoriascero~17_combout\ & (((\Arreglomemoriascero~16_combout\)))) # (!\Arreglomemoriascero~17_combout\ & ((\Arreglomemoriascero~16_combout\ & ((\Arreglomemoriascero~81_combout\))) # 
-- (!\Arreglomemoriascero~16_combout\ & (Arreglomemoriascero(36)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero~17_combout\,
	datab => Arreglomemoriascero(36),
	datac => \Arreglomemoriascero~16_combout\,
	datad => \Arreglomemoriascero~81_combout\,
	combout => \Arreglomemoriascero~82_combout\);

-- Location: LCCOMB_X23_Y4_N20
\Arreglomemoriascero~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~83_combout\ = (\Arreglomemoriascero~17_combout\ & ((\Arreglomemoriascero~82_combout\ & (!Arreglomemoriascero(30))) # (!\Arreglomemoriascero~82_combout\ & ((!Arreglomemoriascero(42)))))) # (!\Arreglomemoriascero~17_combout\ & 
-- (((\Arreglomemoriascero~82_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero~17_combout\,
	datab => Arreglomemoriascero(30),
	datac => \Arreglomemoriascero~82_combout\,
	datad => Arreglomemoriascero(42),
	combout => \Arreglomemoriascero~83_combout\);

-- Location: LCCOMB_X23_Y4_N16
\Arreglomemoriascero[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero[0]~6_combout\ = (\Arreglomemoriascero~22_combout\ & (Arreglomemoriascero(0))) # (!\Arreglomemoriascero~22_combout\ & ((\Arreglomemoriascero~83_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Arreglomemoriascero~22_combout\,
	datac => Arreglomemoriascero(0),
	datad => \Arreglomemoriascero~83_combout\,
	combout => \Arreglomemoriascero[0]~6_combout\);

-- Location: LCCOMB_X23_Y4_N28
\Arreglomemoriascero~357\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~357_combout\ = (\Arreglomemoriascero[3]~45_combout\ & (!\Arreglomemoriascero[3]~40_combout\)) # (!\Arreglomemoriascero[3]~45_combout\ & ((\Arreglomemoriascero[3]~40_combout\ & (\Arreglomemoriascero~88_combout\)) # 
-- (!\Arreglomemoriascero[3]~40_combout\ & ((\Arreglomemoriascero~79_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero[3]~45_combout\,
	datab => \Arreglomemoriascero[3]~40_combout\,
	datac => \Arreglomemoriascero~88_combout\,
	datad => \Arreglomemoriascero~79_combout\,
	combout => \Arreglomemoriascero~357_combout\);

-- Location: LCCOMB_X23_Y4_N18
\Arreglomemoriascero~358\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~358_combout\ = (\Arreglomemoriascero[3]~45_combout\ & ((\Arreglomemoriascero~357_combout\ & ((\Arreglomemoriascero~74_combout\))) # (!\Arreglomemoriascero~357_combout\ & (\Arreglomemoriascero~95_combout\)))) # 
-- (!\Arreglomemoriascero[3]~45_combout\ & (((\Arreglomemoriascero~357_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero[3]~45_combout\,
	datab => \Arreglomemoriascero~95_combout\,
	datac => \Arreglomemoriascero~74_combout\,
	datad => \Arreglomemoriascero~357_combout\,
	combout => \Arreglomemoriascero~358_combout\);

-- Location: LCCOMB_X23_Y4_N24
\Arreglomemoriascero~359\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~359_combout\ = (\Arreglomemoriascero[3]~28_combout\ & (((\Arreglomemoriascero~102_combout\)) # (!\Arreglomemoriascero[3]~34_combout\))) # (!\Arreglomemoriascero[3]~28_combout\ & (\Arreglomemoriascero[3]~34_combout\ & 
-- ((\Arreglomemoriascero~358_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero[3]~28_combout\,
	datab => \Arreglomemoriascero[3]~34_combout\,
	datac => \Arreglomemoriascero~102_combout\,
	datad => \Arreglomemoriascero~358_combout\,
	combout => \Arreglomemoriascero~359_combout\);

-- Location: LCCOMB_X23_Y4_N30
\Arreglomemoriascero~360\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~360_combout\ = (\Arreglomemoriascero[3]~34_combout\ & (((\Arreglomemoriascero~359_combout\)))) # (!\Arreglomemoriascero[3]~34_combout\ & ((\Arreglomemoriascero~359_combout\ & (\Arreglomemoriascero~89_combout\)) # 
-- (!\Arreglomemoriascero~359_combout\ & ((\Arreglomemoriascero[36]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero~89_combout\,
	datab => \Arreglomemoriascero[3]~34_combout\,
	datac => \Arreglomemoriascero[36]~0_combout\,
	datad => \Arreglomemoriascero~359_combout\,
	combout => \Arreglomemoriascero~360_combout\);

-- Location: FF_X23_Y4_N17
\Arreglomemoriascero[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instancia1|salida~clkctrl_outclk\,
	d => \Arreglomemoriascero[0]~6_combout\,
	asdata => \Arreglomemoriascero~360_combout\,
	sload => \Arreglomemoriascero[3]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Arreglomemoriascero(0));

-- Location: LCCOMB_X23_Y4_N2
\Arreglomemoriascero~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~84_combout\ = (\Arreglomemoriascero~12_combout\ & (((\Arreglomemoriascero~13_combout\) # (!Arreglomemoriascero(30))))) # (!\Arreglomemoriascero~12_combout\ & (!Arreglomemoriascero(24) & ((!\Arreglomemoriascero~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(24),
	datab => Arreglomemoriascero(30),
	datac => \Arreglomemoriascero~12_combout\,
	datad => \Arreglomemoriascero~13_combout\,
	combout => \Arreglomemoriascero~84_combout\);

-- Location: LCCOMB_X23_Y4_N4
\Arreglomemoriascero~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~85_combout\ = (\Arreglomemoriascero~13_combout\ & ((\Arreglomemoriascero~84_combout\ & ((!Arreglomemoriascero(18)))) # (!\Arreglomemoriascero~84_combout\ & (!Arreglomemoriascero(12))))) # (!\Arreglomemoriascero~13_combout\ & 
-- (((\Arreglomemoriascero~84_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(12),
	datab => Arreglomemoriascero(18),
	datac => \Arreglomemoriascero~13_combout\,
	datad => \Arreglomemoriascero~84_combout\,
	combout => \Arreglomemoriascero~85_combout\);

-- Location: LCCOMB_X23_Y4_N26
\Arreglomemoriascero~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~86_combout\ = (\Arreglomemoriascero~17_combout\ & (\Arreglomemoriascero~16_combout\)) # (!\Arreglomemoriascero~17_combout\ & ((\Arreglomemoriascero~16_combout\ & (\Arreglomemoriascero~85_combout\)) # (!\Arreglomemoriascero~16_combout\ 
-- & ((!Arreglomemoriascero(42))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero~17_combout\,
	datab => \Arreglomemoriascero~16_combout\,
	datac => \Arreglomemoriascero~85_combout\,
	datad => Arreglomemoriascero(42),
	combout => \Arreglomemoriascero~86_combout\);

-- Location: LCCOMB_X23_Y4_N12
\Arreglomemoriascero~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~87_combout\ = (\Arreglomemoriascero~17_combout\ & ((\Arreglomemoriascero~86_combout\ & ((Arreglomemoriascero(36)))) # (!\Arreglomemoriascero~86_combout\ & (Arreglomemoriascero(0))))) # (!\Arreglomemoriascero~17_combout\ & 
-- (((\Arreglomemoriascero~86_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero~17_combout\,
	datab => Arreglomemoriascero(0),
	datac => \Arreglomemoriascero~86_combout\,
	datad => Arreglomemoriascero(36),
	combout => \Arreglomemoriascero~87_combout\);

-- Location: LCCOMB_X23_Y4_N14
\Arreglomemoriascero~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~88_combout\ = (\Arreglomemoriascero~22_combout\ & (!Arreglomemoriascero(6))) # (!\Arreglomemoriascero~22_combout\ & ((\Arreglomemoriascero~87_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(6),
	datab => \Arreglomemoriascero~22_combout\,
	datad => \Arreglomemoriascero~87_combout\,
	combout => \Arreglomemoriascero~88_combout\);

-- Location: LCCOMB_X22_Y4_N28
\Arreglomemoriascero~323\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~323_combout\ = (\Arreglomemoriascero[3]~45_combout\ & (((!\Arreglomemoriascero[3]~40_combout\)))) # (!\Arreglomemoriascero[3]~45_combout\ & ((\Arreglomemoriascero[3]~40_combout\ & (\Arreglomemoriascero~95_combout\)) # 
-- (!\Arreglomemoriascero[3]~40_combout\ & ((\Arreglomemoriascero~74_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero~95_combout\,
	datab => \Arreglomemoriascero[3]~45_combout\,
	datac => \Arreglomemoriascero~74_combout\,
	datad => \Arreglomemoriascero[3]~40_combout\,
	combout => \Arreglomemoriascero~323_combout\);

-- Location: LCCOMB_X22_Y4_N10
\Arreglomemoriascero~324\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~324_combout\ = (\Arreglomemoriascero[3]~45_combout\ & ((\Arreglomemoriascero~323_combout\ & (\Arreglomemoriascero~102_combout\)) # (!\Arreglomemoriascero~323_combout\ & ((\Arreglomemoriascero~79_combout\))))) # 
-- (!\Arreglomemoriascero[3]~45_combout\ & (((\Arreglomemoriascero~323_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero~102_combout\,
	datab => \Arreglomemoriascero[3]~45_combout\,
	datac => \Arreglomemoriascero~79_combout\,
	datad => \Arreglomemoriascero~323_combout\,
	combout => \Arreglomemoriascero~324_combout\);

-- Location: LCCOMB_X22_Y4_N20
\Arreglomemoriascero~325\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~325_combout\ = (\Arreglomemoriascero[3]~34_combout\ & ((\Arreglomemoriascero[3]~28_combout\ & (\Arreglomemoriascero[36]~0_combout\)) # (!\Arreglomemoriascero[3]~28_combout\ & ((\Arreglomemoriascero~324_combout\))))) # 
-- (!\Arreglomemoriascero[3]~34_combout\ & (\Arreglomemoriascero[3]~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero[3]~34_combout\,
	datab => \Arreglomemoriascero[3]~28_combout\,
	datac => \Arreglomemoriascero[36]~0_combout\,
	datad => \Arreglomemoriascero~324_combout\,
	combout => \Arreglomemoriascero~325_combout\);

-- Location: LCCOMB_X22_Y4_N6
\Arreglomemoriascero~326\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~326_combout\ = (\Arreglomemoriascero[3]~34_combout\ & (((\Arreglomemoriascero~325_combout\)))) # (!\Arreglomemoriascero[3]~34_combout\ & ((\Arreglomemoriascero~325_combout\ & ((\Arreglomemoriascero[0]~6_combout\))) # 
-- (!\Arreglomemoriascero~325_combout\ & (\Arreglomemoriascero~89_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero[3]~34_combout\,
	datab => \Arreglomemoriascero~89_combout\,
	datac => \Arreglomemoriascero[0]~6_combout\,
	datad => \Arreglomemoriascero~325_combout\,
	combout => \Arreglomemoriascero~326_combout\);

-- Location: LCCOMB_X22_Y4_N16
\Arreglomemoriascero~327\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~327_combout\ = (\Arreglomemoriascero[3]~65_combout\ & ((!\Arreglomemoriascero~326_combout\))) # (!\Arreglomemoriascero[3]~65_combout\ & (!\Arreglomemoriascero~88_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Arreglomemoriascero~88_combout\,
	datac => \Arreglomemoriascero[3]~65_combout\,
	datad => \Arreglomemoriascero~326_combout\,
	combout => \Arreglomemoriascero~327_combout\);

-- Location: FF_X22_Y4_N17
\Arreglomemoriascero[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instancia1|salida~clkctrl_outclk\,
	d => \Arreglomemoriascero~327_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Arreglomemoriascero(6));

-- Location: LCCOMB_X22_Y6_N10
\Arreglomemoriascopia3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascopia3~12_combout\ = (\vuelta~q\ & (((Arreglomemoriascopia3(6))))) # (!\vuelta~q\ & ((\DetectoTarjeta~input_o\ & ((!Arreglomemoriascero(6)))) # (!\DetectoTarjeta~input_o\ & (Arreglomemoriascopia3(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vuelta~q\,
	datab => \DetectoTarjeta~input_o\,
	datac => Arreglomemoriascopia3(6),
	datad => Arreglomemoriascero(6),
	combout => \Arreglomemoriascopia3~12_combout\);

-- Location: LCCOMB_X21_Y8_N26
\Equal35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal35~0_combout\ = (\IDentrada~0_combout\ & (\Arreglomemoriascopia3~13_combout\ & (\IDentrada~1_combout\ $ (!\Arreglomemoriascopia3~12_combout\)))) # (!\IDentrada~0_combout\ & (!\Arreglomemoriascopia3~13_combout\ & (\IDentrada~1_combout\ $ 
-- (!\Arreglomemoriascopia3~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDentrada~0_combout\,
	datab => \IDentrada~1_combout\,
	datac => \Arreglomemoriascopia3~13_combout\,
	datad => \Arreglomemoriascopia3~12_combout\,
	combout => \Equal35~0_combout\);

-- Location: FF_X21_Y8_N9
\Arreglomemoriascopia3[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instancia1|salida~clkctrl_outclk\,
	d => \Arreglomemoriascopia3~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Arreglomemoriascopia3(8));

-- Location: LCCOMB_X21_Y8_N8
\Arreglomemoriascopia3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascopia3~14_combout\ = (\DetectoTarjeta~input_o\ & ((\vuelta~q\ & (Arreglomemoriascopia3(8))) # (!\vuelta~q\ & ((!Arreglomemoriascero(8)))))) # (!\DetectoTarjeta~input_o\ & (((Arreglomemoriascopia3(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DetectoTarjeta~input_o\,
	datab => \vuelta~q\,
	datac => Arreglomemoriascopia3(8),
	datad => Arreglomemoriascero(8),
	combout => \Arreglomemoriascopia3~14_combout\);

-- Location: FF_X21_Y5_N27
\Arreglomemoriascopia3[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instancia1|salida~clkctrl_outclk\,
	d => \Arreglomemoriascopia3~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Arreglomemoriascopia3(9));

-- Location: LCCOMB_X21_Y5_N26
\Arreglomemoriascopia3~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascopia3~15_combout\ = (\DetectoTarjeta~input_o\ & ((\vuelta~q\ & ((Arreglomemoriascopia3(9)))) # (!\vuelta~q\ & (!Arreglomemoriascero(9))))) # (!\DetectoTarjeta~input_o\ & (((Arreglomemoriascopia3(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DetectoTarjeta~input_o\,
	datab => Arreglomemoriascero(9),
	datac => Arreglomemoriascopia3(9),
	datad => \vuelta~q\,
	combout => \Arreglomemoriascopia3~15_combout\);

-- Location: LCCOMB_X21_Y8_N16
\Equal35~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal35~1_combout\ = (\IDentrada~2_combout\ & (\Arreglomemoriascopia3~15_combout\ & (\Arreglomemoriascopia3~14_combout\ $ (!\IDentrada~3_combout\)))) # (!\IDentrada~2_combout\ & (!\Arreglomemoriascopia3~15_combout\ & (\Arreglomemoriascopia3~14_combout\ $ 
-- (!\IDentrada~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDentrada~2_combout\,
	datab => \Arreglomemoriascopia3~14_combout\,
	datac => \IDentrada~3_combout\,
	datad => \Arreglomemoriascopia3~15_combout\,
	combout => \Equal35~1_combout\);

-- Location: LCCOMB_X21_Y8_N0
\Equal35~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal35~3_combout\ = (\Equal35~2_combout\ & (\Equal35~0_combout\ & \Equal35~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal35~2_combout\,
	datac => \Equal35~0_combout\,
	datad => \Equal35~1_combout\,
	combout => \Equal35~3_combout\);

-- Location: FF_X21_Y6_N7
\Arreglomemoriascopia3[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instancia1|salida~clkctrl_outclk\,
	d => \Arreglomemoriascopia3~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Arreglomemoriascopia3(14));

-- Location: LCCOMB_X21_Y6_N6
\Arreglomemoriascopia3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascopia3~8_combout\ = (\DetectoTarjeta~input_o\ & ((\vuelta~q\ & ((Arreglomemoriascopia3(14)))) # (!\vuelta~q\ & (!Arreglomemoriascero(14))))) # (!\DetectoTarjeta~input_o\ & (((Arreglomemoriascopia3(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DetectoTarjeta~input_o\,
	datab => Arreglomemoriascero(14),
	datac => Arreglomemoriascopia3(14),
	datad => \vuelta~q\,
	combout => \Arreglomemoriascopia3~8_combout\);

-- Location: LCCOMB_X21_Y6_N26
\Equal34~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal34~1_combout\ = (\Arreglomemoriascopia3~8_combout\ & (\IDentrada~3_combout\ & (\Arreglomemoriascopia3~9_combout\ $ (!\IDentrada~2_combout\)))) # (!\Arreglomemoriascopia3~8_combout\ & (!\IDentrada~3_combout\ & (\Arreglomemoriascopia3~9_combout\ $ 
-- (!\IDentrada~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascopia3~8_combout\,
	datab => \Arreglomemoriascopia3~9_combout\,
	datac => \IDentrada~3_combout\,
	datad => \IDentrada~2_combout\,
	combout => \Equal34~1_combout\);

-- Location: LCCOMB_X19_Y6_N26
\Arreglomemoriascero~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~57_combout\ = (\Arreglomemoriascero~12_combout\ & (((\Arreglomemoriascero~13_combout\) # (!Arreglomemoriascero(7))))) # (!\Arreglomemoriascero~12_combout\ & (Arreglomemoriascero(1) & ((!\Arreglomemoriascero~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(1),
	datab => Arreglomemoriascero(7),
	datac => \Arreglomemoriascero~12_combout\,
	datad => \Arreglomemoriascero~13_combout\,
	combout => \Arreglomemoriascero~57_combout\);

-- Location: LCCOMB_X19_Y6_N24
\Arreglomemoriascero~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~58_combout\ = (\Arreglomemoriascero~57_combout\ & (((!\Arreglomemoriascero~13_combout\)) # (!Arreglomemoriascero(43)))) # (!\Arreglomemoriascero~57_combout\ & (((Arreglomemoriascero(37) & \Arreglomemoriascero~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(43),
	datab => Arreglomemoriascero(37),
	datac => \Arreglomemoriascero~57_combout\,
	datad => \Arreglomemoriascero~13_combout\,
	combout => \Arreglomemoriascero~58_combout\);

-- Location: LCCOMB_X19_Y6_N14
\Arreglomemoriascero~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~59_combout\ = (\Arreglomemoriascero~16_combout\ & ((\Arreglomemoriascero~17_combout\) # ((\Arreglomemoriascero~58_combout\)))) # (!\Arreglomemoriascero~16_combout\ & (!\Arreglomemoriascero~17_combout\ & (!Arreglomemoriascero(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero~16_combout\,
	datab => \Arreglomemoriascero~17_combout\,
	datac => Arreglomemoriascero(19),
	datad => \Arreglomemoriascero~58_combout\,
	combout => \Arreglomemoriascero~59_combout\);

-- Location: LCCOMB_X19_Y6_N12
\Arreglomemoriascero~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~60_combout\ = (\Arreglomemoriascero~59_combout\ & (((!\Arreglomemoriascero~17_combout\)) # (!Arreglomemoriascero(13)))) # (!\Arreglomemoriascero~59_combout\ & (((!Arreglomemoriascero(25) & \Arreglomemoriascero~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(13),
	datab => Arreglomemoriascero(25),
	datac => \Arreglomemoriascero~59_combout\,
	datad => \Arreglomemoriascero~17_combout\,
	combout => \Arreglomemoriascero~60_combout\);

-- Location: LCCOMB_X19_Y6_N30
\Arreglomemoriascero~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~61_combout\ = (\Arreglomemoriascero~22_combout\ & (!Arreglomemoriascero(31))) # (!\Arreglomemoriascero~22_combout\ & ((\Arreglomemoriascero~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(31),
	datac => \Arreglomemoriascero~22_combout\,
	datad => \Arreglomemoriascero~60_combout\,
	combout => \Arreglomemoriascero~61_combout\);

-- Location: LCCOMB_X18_Y6_N30
\Arreglomemoriascero~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~37_combout\ = (\Arreglomemoriascero~16_combout\ & (((\Arreglomemoriascero~17_combout\)))) # (!\Arreglomemoriascero~16_combout\ & ((\Arreglomemoriascero~17_combout\ & (Arreglomemoriascero(1))) # (!\Arreglomemoriascero~17_combout\ & 
-- ((!Arreglomemoriascero(43))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(1),
	datab => Arreglomemoriascero(43),
	datac => \Arreglomemoriascero~16_combout\,
	datad => \Arreglomemoriascero~17_combout\,
	combout => \Arreglomemoriascero~37_combout\);

-- Location: LCCOMB_X18_Y6_N22
\Arreglomemoriascero~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~35_combout\ = (\Arreglomemoriascero~13_combout\ & (((\Arreglomemoriascero~12_combout\)) # (!Arreglomemoriascero(13)))) # (!\Arreglomemoriascero~13_combout\ & (((!\Arreglomemoriascero~12_combout\ & !Arreglomemoriascero(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero~13_combout\,
	datab => Arreglomemoriascero(13),
	datac => \Arreglomemoriascero~12_combout\,
	datad => Arreglomemoriascero(25),
	combout => \Arreglomemoriascero~35_combout\);

-- Location: LCCOMB_X18_Y6_N12
\Arreglomemoriascero~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~36_combout\ = (\Arreglomemoriascero~12_combout\ & ((\Arreglomemoriascero~35_combout\ & ((!Arreglomemoriascero(19)))) # (!\Arreglomemoriascero~35_combout\ & (!Arreglomemoriascero(31))))) # (!\Arreglomemoriascero~12_combout\ & 
-- (((\Arreglomemoriascero~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(31),
	datab => Arreglomemoriascero(19),
	datac => \Arreglomemoriascero~12_combout\,
	datad => \Arreglomemoriascero~35_combout\,
	combout => \Arreglomemoriascero~36_combout\);

-- Location: LCCOMB_X18_Y6_N20
\Arreglomemoriascero~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~38_combout\ = (\Arreglomemoriascero~16_combout\ & ((\Arreglomemoriascero~37_combout\ & (Arreglomemoriascero(37))) # (!\Arreglomemoriascero~37_combout\ & ((\Arreglomemoriascero~36_combout\))))) # (!\Arreglomemoriascero~16_combout\ & 
-- (((\Arreglomemoriascero~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(37),
	datab => \Arreglomemoriascero~16_combout\,
	datac => \Arreglomemoriascero~37_combout\,
	datad => \Arreglomemoriascero~36_combout\,
	combout => \Arreglomemoriascero~38_combout\);

-- Location: LCCOMB_X18_Y6_N14
\Arreglomemoriascero~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~39_combout\ = (\Arreglomemoriascero~22_combout\ & (!Arreglomemoriascero(7))) # (!\Arreglomemoriascero~22_combout\ & ((\Arreglomemoriascero~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(7),
	datac => \Arreglomemoriascero~22_combout\,
	datad => \Arreglomemoriascero~38_combout\,
	combout => \Arreglomemoriascero~39_combout\);

-- Location: LCCOMB_X24_Y7_N4
\Arreglomemoriascero~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~48_combout\ = (\Arreglomemoriascero~47_combout\ & ((\IDentrada~0_combout\))) # (!\Arreglomemoriascero~47_combout\ & (!Arreglomemoriascero(43)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => Arreglomemoriascero(43),
	datac => \IDentrada~0_combout\,
	datad => \Arreglomemoriascero~47_combout\,
	combout => \Arreglomemoriascero~48_combout\);

-- Location: LCCOMB_X19_Y7_N16
\Arreglomemoriascero~291\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~291_combout\ = (\Arreglomemoriascero[3]~40_combout\ & ((\Arreglomemoriascero[3]~45_combout\ & (\Arreglomemoriascero~48_combout\)) # (!\Arreglomemoriascero[3]~45_combout\ & ((\Arreglomemoriascero[37]~1_combout\))))) # 
-- (!\Arreglomemoriascero[3]~40_combout\ & (\Arreglomemoriascero[3]~45_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero[3]~40_combout\,
	datab => \Arreglomemoriascero[3]~45_combout\,
	datac => \Arreglomemoriascero~48_combout\,
	datad => \Arreglomemoriascero[37]~1_combout\,
	combout => \Arreglomemoriascero~291_combout\);

-- Location: LCCOMB_X19_Y7_N18
\Arreglomemoriascero~292\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~292_combout\ = (\Arreglomemoriascero[3]~40_combout\ & (((\Arreglomemoriascero~291_combout\)))) # (!\Arreglomemoriascero[3]~40_combout\ & ((\Arreglomemoriascero~291_combout\ & (\Arreglomemoriascero~39_combout\)) # 
-- (!\Arreglomemoriascero~291_combout\ & ((\Arreglomemoriascero[1]~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero~39_combout\,
	datab => \Arreglomemoriascero[3]~40_combout\,
	datac => \Arreglomemoriascero[1]~7_combout\,
	datad => \Arreglomemoriascero~291_combout\,
	combout => \Arreglomemoriascero~292_combout\);

-- Location: LCCOMB_X19_Y7_N4
\Arreglomemoriascero~293\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~293_combout\ = (\Arreglomemoriascero[3]~28_combout\ & (!\Arreglomemoriascero[3]~34_combout\)) # (!\Arreglomemoriascero[3]~28_combout\ & ((\Arreglomemoriascero[3]~34_combout\ & ((\Arreglomemoriascero~292_combout\))) # 
-- (!\Arreglomemoriascero[3]~34_combout\ & (\Arreglomemoriascero~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero[3]~28_combout\,
	datab => \Arreglomemoriascero[3]~34_combout\,
	datac => \Arreglomemoriascero~27_combout\,
	datad => \Arreglomemoriascero~292_combout\,
	combout => \Arreglomemoriascero~293_combout\);

-- Location: LCCOMB_X19_Y7_N2
\Arreglomemoriascero~294\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~294_combout\ = (\Arreglomemoriascero[3]~28_combout\ & ((\Arreglomemoriascero~293_combout\ & (\Arreglomemoriascero~33_combout\)) # (!\Arreglomemoriascero~293_combout\ & ((\Arreglomemoriascero~54_combout\))))) # 
-- (!\Arreglomemoriascero[3]~28_combout\ & (((\Arreglomemoriascero~293_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero[3]~28_combout\,
	datab => \Arreglomemoriascero~33_combout\,
	datac => \Arreglomemoriascero~293_combout\,
	datad => \Arreglomemoriascero~54_combout\,
	combout => \Arreglomemoriascero~294_combout\);

-- Location: LCCOMB_X19_Y7_N12
\Arreglomemoriascero~295\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~295_combout\ = (\Arreglomemoriascero[3]~65_combout\ & ((!\Arreglomemoriascero~294_combout\))) # (!\Arreglomemoriascero[3]~65_combout\ & (!\Arreglomemoriascero~61_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero~61_combout\,
	datac => \Arreglomemoriascero[3]~65_combout\,
	datad => \Arreglomemoriascero~294_combout\,
	combout => \Arreglomemoriascero~295_combout\);

-- Location: FF_X19_Y7_N13
\Arreglomemoriascero[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instancia1|salida~clkctrl_outclk\,
	d => \Arreglomemoriascero~295_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Arreglomemoriascero(31));

-- Location: LCCOMB_X18_Y6_N8
\Arreglomemoriascero~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~43_combout\ = (\Arreglomemoriascero~16_combout\ & (((\Arreglomemoriascero~17_combout\)))) # (!\Arreglomemoriascero~16_combout\ & ((\Arreglomemoriascero~17_combout\ & ((!Arreglomemoriascero(43)))) # (!\Arreglomemoriascero~17_combout\ & 
-- (Arreglomemoriascero(37)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(37),
	datab => Arreglomemoriascero(43),
	datac => \Arreglomemoriascero~16_combout\,
	datad => \Arreglomemoriascero~17_combout\,
	combout => \Arreglomemoriascero~43_combout\);

-- Location: LCCOMB_X18_Y6_N24
\Arreglomemoriascero~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~41_combout\ = (\Arreglomemoriascero~13_combout\ & (((\Arreglomemoriascero~12_combout\) # (!Arreglomemoriascero(7))))) # (!\Arreglomemoriascero~13_combout\ & (!Arreglomemoriascero(19) & (!\Arreglomemoriascero~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero~13_combout\,
	datab => Arreglomemoriascero(19),
	datac => \Arreglomemoriascero~12_combout\,
	datad => Arreglomemoriascero(7),
	combout => \Arreglomemoriascero~41_combout\);

-- Location: LCCOMB_X18_Y6_N10
\Arreglomemoriascero~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~42_combout\ = (\Arreglomemoriascero~12_combout\ & ((\Arreglomemoriascero~41_combout\ & ((!Arreglomemoriascero(13)))) # (!\Arreglomemoriascero~41_combout\ & (!Arreglomemoriascero(25))))) # (!\Arreglomemoriascero~12_combout\ & 
-- (((\Arreglomemoriascero~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero~12_combout\,
	datab => Arreglomemoriascero(25),
	datac => Arreglomemoriascero(13),
	datad => \Arreglomemoriascero~41_combout\,
	combout => \Arreglomemoriascero~42_combout\);

-- Location: LCCOMB_X18_Y6_N18
\Arreglomemoriascero~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~44_combout\ = (\Arreglomemoriascero~43_combout\ & (((!\Arreglomemoriascero~16_combout\)) # (!Arreglomemoriascero(31)))) # (!\Arreglomemoriascero~43_combout\ & (((\Arreglomemoriascero~16_combout\ & \Arreglomemoriascero~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(31),
	datab => \Arreglomemoriascero~43_combout\,
	datac => \Arreglomemoriascero~16_combout\,
	datad => \Arreglomemoriascero~42_combout\,
	combout => \Arreglomemoriascero~44_combout\);

-- Location: LCCOMB_X19_Y7_N30
\Arreglomemoriascero[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero[1]~7_combout\ = (\Arreglomemoriascero~22_combout\ & (Arreglomemoriascero(1))) # (!\Arreglomemoriascero~22_combout\ & ((\Arreglomemoriascero~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero~22_combout\,
	datac => Arreglomemoriascero(1),
	datad => \Arreglomemoriascero~44_combout\,
	combout => \Arreglomemoriascero[1]~7_combout\);

-- Location: LCCOMB_X19_Y7_N0
\Arreglomemoriascero~353\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~353_combout\ = (\Arreglomemoriascero[3]~45_combout\ & (((\Arreglomemoriascero~54_combout\) # (!\Arreglomemoriascero[3]~40_combout\)))) # (!\Arreglomemoriascero[3]~45_combout\ & (\Arreglomemoriascero~39_combout\ & 
-- (\Arreglomemoriascero[3]~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero~39_combout\,
	datab => \Arreglomemoriascero[3]~45_combout\,
	datac => \Arreglomemoriascero[3]~40_combout\,
	datad => \Arreglomemoriascero~54_combout\,
	combout => \Arreglomemoriascero~353_combout\);

-- Location: LCCOMB_X19_Y7_N10
\Arreglomemoriascero~354\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~354_combout\ = (\Arreglomemoriascero[3]~40_combout\ & (((\Arreglomemoriascero~353_combout\)))) # (!\Arreglomemoriascero[3]~40_combout\ & ((\Arreglomemoriascero~353_combout\ & (\Arreglomemoriascero~33_combout\)) # 
-- (!\Arreglomemoriascero~353_combout\ & ((\Arreglomemoriascero~27_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero[3]~40_combout\,
	datab => \Arreglomemoriascero~33_combout\,
	datac => \Arreglomemoriascero~27_combout\,
	datad => \Arreglomemoriascero~353_combout\,
	combout => \Arreglomemoriascero~354_combout\);

-- Location: LCCOMB_X19_Y7_N28
\Arreglomemoriascero~355\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~355_combout\ = (\Arreglomemoriascero[3]~28_combout\ & (((!\Arreglomemoriascero[3]~34_combout\)))) # (!\Arreglomemoriascero[3]~28_combout\ & ((\Arreglomemoriascero[3]~34_combout\ & ((\Arreglomemoriascero~354_combout\))) # 
-- (!\Arreglomemoriascero[3]~34_combout\ & (\Arreglomemoriascero[37]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero[3]~28_combout\,
	datab => \Arreglomemoriascero[37]~1_combout\,
	datac => \Arreglomemoriascero[3]~34_combout\,
	datad => \Arreglomemoriascero~354_combout\,
	combout => \Arreglomemoriascero~355_combout\);

-- Location: LCCOMB_X19_Y7_N14
\Arreglomemoriascero~356\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~356_combout\ = (\Arreglomemoriascero[3]~28_combout\ & ((\Arreglomemoriascero~355_combout\ & (\Arreglomemoriascero~48_combout\)) # (!\Arreglomemoriascero~355_combout\ & ((\Arreglomemoriascero~61_combout\))))) # 
-- (!\Arreglomemoriascero[3]~28_combout\ & (((\Arreglomemoriascero~355_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero[3]~28_combout\,
	datab => \Arreglomemoriascero~48_combout\,
	datac => \Arreglomemoriascero~61_combout\,
	datad => \Arreglomemoriascero~355_combout\,
	combout => \Arreglomemoriascero~356_combout\);

-- Location: FF_X19_Y7_N31
\Arreglomemoriascero[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instancia1|salida~clkctrl_outclk\,
	d => \Arreglomemoriascero[1]~7_combout\,
	asdata => \Arreglomemoriascero~356_combout\,
	sload => \Arreglomemoriascero[3]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Arreglomemoriascero(1));

-- Location: LCCOMB_X19_Y5_N28
\Arreglomemoriascero~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~50_combout\ = (\Arreglomemoriascero~12_combout\ & ((Arreglomemoriascero(37)) # ((\Arreglomemoriascero~13_combout\)))) # (!\Arreglomemoriascero~12_combout\ & (((!Arreglomemoriascero(31) & !\Arreglomemoriascero~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(37),
	datab => Arreglomemoriascero(31),
	datac => \Arreglomemoriascero~12_combout\,
	datad => \Arreglomemoriascero~13_combout\,
	combout => \Arreglomemoriascero~50_combout\);

-- Location: LCCOMB_X19_Y5_N6
\Arreglomemoriascero~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~51_combout\ = (\Arreglomemoriascero~13_combout\ & ((\Arreglomemoriascero~50_combout\ & ((!Arreglomemoriascero(25)))) # (!\Arreglomemoriascero~50_combout\ & (!Arreglomemoriascero(19))))) # (!\Arreglomemoriascero~13_combout\ & 
-- (((\Arreglomemoriascero~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(19),
	datab => Arreglomemoriascero(25),
	datac => \Arreglomemoriascero~13_combout\,
	datad => \Arreglomemoriascero~50_combout\,
	combout => \Arreglomemoriascero~51_combout\);

-- Location: LCCOMB_X19_Y5_N24
\Arreglomemoriascero~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~52_combout\ = (\Arreglomemoriascero~16_combout\ & (((\Arreglomemoriascero~17_combout\) # (\Arreglomemoriascero~51_combout\)))) # (!\Arreglomemoriascero~16_combout\ & (Arreglomemoriascero(1) & (!\Arreglomemoriascero~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero~16_combout\,
	datab => Arreglomemoriascero(1),
	datac => \Arreglomemoriascero~17_combout\,
	datad => \Arreglomemoriascero~51_combout\,
	combout => \Arreglomemoriascero~52_combout\);

-- Location: LCCOMB_X19_Y5_N18
\Arreglomemoriascero~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~53_combout\ = (\Arreglomemoriascero~17_combout\ & ((\Arreglomemoriascero~52_combout\ & (!Arreglomemoriascero(43))) # (!\Arreglomemoriascero~52_combout\ & ((!Arreglomemoriascero(7)))))) # (!\Arreglomemoriascero~17_combout\ & 
-- (((\Arreglomemoriascero~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(43),
	datab => Arreglomemoriascero(7),
	datac => \Arreglomemoriascero~17_combout\,
	datad => \Arreglomemoriascero~52_combout\,
	combout => \Arreglomemoriascero~53_combout\);

-- Location: LCCOMB_X19_Y5_N8
\Arreglomemoriascero~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~54_combout\ = (\Arreglomemoriascero~22_combout\ & (!Arreglomemoriascero(13))) # (!\Arreglomemoriascero~22_combout\ & ((\Arreglomemoriascero~53_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(13),
	datac => \Arreglomemoriascero~22_combout\,
	datad => \Arreglomemoriascero~53_combout\,
	combout => \Arreglomemoriascero~54_combout\);

-- Location: LCCOMB_X19_Y5_N14
\Arreglomemoriascero~412\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~412_combout\ = (\Arreglomemoriascero[3]~45_combout\ & (((\Arreglomemoriascero~33_combout\)) # (!\Arreglomemoriascero[3]~40_combout\))) # (!\Arreglomemoriascero[3]~45_combout\ & (\Arreglomemoriascero[3]~40_combout\ & 
-- (\Arreglomemoriascero~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero[3]~45_combout\,
	datab => \Arreglomemoriascero[3]~40_combout\,
	datac => \Arreglomemoriascero~27_combout\,
	datad => \Arreglomemoriascero~33_combout\,
	combout => \Arreglomemoriascero~412_combout\);

-- Location: LCCOMB_X22_Y5_N6
\Arreglomemoriascero~413\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~413_combout\ = (\Arreglomemoriascero[3]~40_combout\ & (((\Arreglomemoriascero~412_combout\)))) # (!\Arreglomemoriascero[3]~40_combout\ & ((\Arreglomemoriascero~412_combout\ & (\Arreglomemoriascero[37]~1_combout\)) # 
-- (!\Arreglomemoriascero~412_combout\ & ((\Arreglomemoriascero~61_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero[37]~1_combout\,
	datab => \Arreglomemoriascero[3]~40_combout\,
	datac => \Arreglomemoriascero~412_combout\,
	datad => \Arreglomemoriascero~61_combout\,
	combout => \Arreglomemoriascero~413_combout\);

-- Location: LCCOMB_X22_Y5_N16
\Arreglomemoriascero~414\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~414_combout\ = (\Arreglomemoriascero[3]~28_combout\ & (!\Arreglomemoriascero[3]~34_combout\)) # (!\Arreglomemoriascero[3]~28_combout\ & ((\Arreglomemoriascero[3]~34_combout\ & ((\Arreglomemoriascero~413_combout\))) # 
-- (!\Arreglomemoriascero[3]~34_combout\ & (\Arreglomemoriascero[1]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero[3]~28_combout\,
	datab => \Arreglomemoriascero[3]~34_combout\,
	datac => \Arreglomemoriascero[1]~7_combout\,
	datad => \Arreglomemoriascero~413_combout\,
	combout => \Arreglomemoriascero~414_combout\);

-- Location: LCCOMB_X22_Y5_N10
\Arreglomemoriascero~415\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~415_combout\ = (\Arreglomemoriascero[3]~28_combout\ & ((\Arreglomemoriascero~414_combout\ & ((\Arreglomemoriascero~39_combout\))) # (!\Arreglomemoriascero~414_combout\ & (\Arreglomemoriascero~48_combout\)))) # 
-- (!\Arreglomemoriascero[3]~28_combout\ & (((\Arreglomemoriascero~414_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero[3]~28_combout\,
	datab => \Arreglomemoriascero~48_combout\,
	datac => \Arreglomemoriascero~39_combout\,
	datad => \Arreglomemoriascero~414_combout\,
	combout => \Arreglomemoriascero~415_combout\);

-- Location: LCCOMB_X22_Y5_N26
\Arreglomemoriascero~416\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~416_combout\ = (\Arreglomemoriascero[3]~65_combout\ & ((!\Arreglomemoriascero~415_combout\))) # (!\Arreglomemoriascero[3]~65_combout\ & (!\Arreglomemoriascero~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero~54_combout\,
	datab => \Arreglomemoriascero[3]~65_combout\,
	datad => \Arreglomemoriascero~415_combout\,
	combout => \Arreglomemoriascero~416_combout\);

-- Location: FF_X22_Y5_N27
\Arreglomemoriascero[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instancia1|salida~clkctrl_outclk\,
	d => \Arreglomemoriascero~416_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Arreglomemoriascero(13));

-- Location: FF_X22_Y5_N15
\Arreglomemoriascopia3[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instancia1|salida~clkctrl_outclk\,
	d => \Arreglomemoriascopia3~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Arreglomemoriascopia3(13));

-- Location: LCCOMB_X22_Y5_N14
\Arreglomemoriascopia3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascopia3~7_combout\ = (\DetectoTarjeta~input_o\ & ((\vuelta~q\ & ((Arreglomemoriascopia3(13)))) # (!\vuelta~q\ & (!Arreglomemoriascero(13))))) # (!\DetectoTarjeta~input_o\ & (((Arreglomemoriascopia3(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(13),
	datab => \DetectoTarjeta~input_o\,
	datac => Arreglomemoriascopia3(13),
	datad => \vuelta~q\,
	combout => \Arreglomemoriascopia3~7_combout\);

-- Location: FF_X22_Y5_N1
\Arreglomemoriascopia3[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instancia1|salida~clkctrl_outclk\,
	d => \Arreglomemoriascopia3~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Arreglomemoriascopia3(12));

-- Location: LCCOMB_X22_Y5_N0
\Arreglomemoriascopia3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascopia3~6_combout\ = (\DetectoTarjeta~input_o\ & ((\vuelta~q\ & ((Arreglomemoriascopia3(12)))) # (!\vuelta~q\ & (!Arreglomemoriascero(12))))) # (!\DetectoTarjeta~input_o\ & (((Arreglomemoriascopia3(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(12),
	datab => \DetectoTarjeta~input_o\,
	datac => Arreglomemoriascopia3(12),
	datad => \vuelta~q\,
	combout => \Arreglomemoriascopia3~6_combout\);

-- Location: LCCOMB_X22_Y5_N20
\Equal34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal34~0_combout\ = (\Arreglomemoriascopia3~7_combout\ & (\IDentrada~0_combout\ & (\Arreglomemoriascopia3~6_combout\ $ (!\IDentrada~1_combout\)))) # (!\Arreglomemoriascopia3~7_combout\ & (!\IDentrada~0_combout\ & (\Arreglomemoriascopia3~6_combout\ $ 
-- (!\IDentrada~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascopia3~7_combout\,
	datab => \Arreglomemoriascopia3~6_combout\,
	datac => \IDentrada~0_combout\,
	datad => \IDentrada~1_combout\,
	combout => \Equal34~0_combout\);

-- Location: FF_X22_Y6_N3
\Arreglomemoriascopia3[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instancia1|salida~clkctrl_outclk\,
	d => \Arreglomemoriascopia3~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Arreglomemoriascopia3(17));

-- Location: LCCOMB_X22_Y6_N2
\Arreglomemoriascopia3~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascopia3~11_combout\ = (\vuelta~q\ & (((Arreglomemoriascopia3(17))))) # (!\vuelta~q\ & ((\DetectoTarjeta~input_o\ & ((!Arreglomemoriascero(17)))) # (!\DetectoTarjeta~input_o\ & (Arreglomemoriascopia3(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vuelta~q\,
	datab => \DetectoTarjeta~input_o\,
	datac => Arreglomemoriascopia3(17),
	datad => Arreglomemoriascero(17),
	combout => \Arreglomemoriascopia3~11_combout\);

-- Location: FF_X22_Y6_N25
\Arreglomemoriascopia3[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instancia1|salida~clkctrl_outclk\,
	d => \Arreglomemoriascopia3~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Arreglomemoriascopia3(16));

-- Location: LCCOMB_X22_Y6_N24
\Arreglomemoriascopia3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascopia3~10_combout\ = (\vuelta~q\ & (((Arreglomemoriascopia3(16))))) # (!\vuelta~q\ & ((\DetectoTarjeta~input_o\ & ((!Arreglomemoriascero(16)))) # (!\DetectoTarjeta~input_o\ & (Arreglomemoriascopia3(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vuelta~q\,
	datab => \DetectoTarjeta~input_o\,
	datac => Arreglomemoriascopia3(16),
	datad => Arreglomemoriascero(16),
	combout => \Arreglomemoriascopia3~10_combout\);

-- Location: LCCOMB_X22_Y8_N0
\Equal34~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal34~2_combout\ = (\IDentrada~4_combout\ & (\Arreglomemoriascopia3~11_combout\ & (\IDentrada~5_combout\ $ (!\Arreglomemoriascopia3~10_combout\)))) # (!\IDentrada~4_combout\ & (!\Arreglomemoriascopia3~11_combout\ & (\IDentrada~5_combout\ $ 
-- (!\Arreglomemoriascopia3~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDentrada~4_combout\,
	datab => \IDentrada~5_combout\,
	datac => \Arreglomemoriascopia3~11_combout\,
	datad => \Arreglomemoriascopia3~10_combout\,
	combout => \Equal34~2_combout\);

-- Location: LCCOMB_X22_Y9_N0
\Equal34~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal34~3_combout\ = (\Equal34~1_combout\ & (\Equal34~0_combout\ & \Equal34~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal34~1_combout\,
	datac => \Equal34~0_combout\,
	datad => \Equal34~2_combout\,
	combout => \Equal34~3_combout\);

-- Location: FF_X22_Y6_N9
\Arreglomemoriascopia3[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instancia1|salida~clkctrl_outclk\,
	d => \Arreglomemoriascopia3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Arreglomemoriascopia3(18));

-- Location: LCCOMB_X22_Y6_N8
\Arreglomemoriascopia3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascopia3~0_combout\ = (\vuelta~q\ & (((Arreglomemoriascopia3(18))))) # (!\vuelta~q\ & ((\DetectoTarjeta~input_o\ & ((!Arreglomemoriascero(18)))) # (!\DetectoTarjeta~input_o\ & (Arreglomemoriascopia3(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vuelta~q\,
	datab => \DetectoTarjeta~input_o\,
	datac => Arreglomemoriascopia3(18),
	datad => Arreglomemoriascero(18),
	combout => \Arreglomemoriascopia3~0_combout\);

-- Location: FF_X19_Y6_N21
\Arreglomemoriascopia3[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instancia1|salida~clkctrl_outclk\,
	d => \Arreglomemoriascopia3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Arreglomemoriascopia3(19));

-- Location: LCCOMB_X19_Y6_N20
\Arreglomemoriascopia3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascopia3~1_combout\ = (\DetectoTarjeta~input_o\ & ((\vuelta~q\ & ((Arreglomemoriascopia3(19)))) # (!\vuelta~q\ & (!Arreglomemoriascero(19))))) # (!\DetectoTarjeta~input_o\ & (((Arreglomemoriascopia3(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(19),
	datab => \DetectoTarjeta~input_o\,
	datac => Arreglomemoriascopia3(19),
	datad => \vuelta~q\,
	combout => \Arreglomemoriascopia3~1_combout\);

-- Location: LCCOMB_X21_Y7_N24
\Equal33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal33~0_combout\ = (\IDentrada~1_combout\ & (\Arreglomemoriascopia3~0_combout\ & (\IDentrada~0_combout\ $ (!\Arreglomemoriascopia3~1_combout\)))) # (!\IDentrada~1_combout\ & (!\Arreglomemoriascopia3~0_combout\ & (\IDentrada~0_combout\ $ 
-- (!\Arreglomemoriascopia3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDentrada~1_combout\,
	datab => \IDentrada~0_combout\,
	datac => \Arreglomemoriascopia3~0_combout\,
	datad => \Arreglomemoriascopia3~1_combout\,
	combout => \Equal33~0_combout\);

-- Location: FF_X22_Y8_N19
\Arreglomemoriascopia3[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instancia1|salida~clkctrl_outclk\,
	d => \Arreglomemoriascopia3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Arreglomemoriascopia3(20));

-- Location: LCCOMB_X22_Y8_N18
\Arreglomemoriascopia3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascopia3~2_combout\ = (\DetectoTarjeta~input_o\ & ((\vuelta~q\ & (Arreglomemoriascopia3(20))) # (!\vuelta~q\ & ((!Arreglomemoriascero(20)))))) # (!\DetectoTarjeta~input_o\ & (((Arreglomemoriascopia3(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DetectoTarjeta~input_o\,
	datab => \vuelta~q\,
	datac => Arreglomemoriascopia3(20),
	datad => Arreglomemoriascero(20),
	combout => \Arreglomemoriascopia3~2_combout\);

-- Location: FF_X23_Y5_N23
\Arreglomemoriascopia3[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instancia1|salida~clkctrl_outclk\,
	d => \Arreglomemoriascopia3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Arreglomemoriascopia3(21));

-- Location: LCCOMB_X23_Y5_N22
\Arreglomemoriascopia3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascopia3~3_combout\ = (\DetectoTarjeta~input_o\ & ((\vuelta~q\ & ((Arreglomemoriascopia3(21)))) # (!\vuelta~q\ & (!Arreglomemoriascero(21))))) # (!\DetectoTarjeta~input_o\ & (((Arreglomemoriascopia3(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DetectoTarjeta~input_o\,
	datab => Arreglomemoriascero(21),
	datac => Arreglomemoriascopia3(21),
	datad => \vuelta~q\,
	combout => \Arreglomemoriascopia3~3_combout\);

-- Location: LCCOMB_X22_Y8_N10
\Equal33~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal33~1_combout\ = (\IDentrada~2_combout\ & (\Arreglomemoriascopia3~3_combout\ & (\Arreglomemoriascopia3~2_combout\ $ (!\IDentrada~3_combout\)))) # (!\IDentrada~2_combout\ & (!\Arreglomemoriascopia3~3_combout\ & (\Arreglomemoriascopia3~2_combout\ $ 
-- (!\IDentrada~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDentrada~2_combout\,
	datab => \Arreglomemoriascopia3~2_combout\,
	datac => \IDentrada~3_combout\,
	datad => \Arreglomemoriascopia3~3_combout\,
	combout => \Equal33~1_combout\);

-- Location: LCCOMB_X23_Y9_N18
\Equal33~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal33~3_combout\ = (\Equal33~2_combout\ & (\Equal33~0_combout\ & \Equal33~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal33~2_combout\,
	datac => \Equal33~0_combout\,
	datad => \Equal33~1_combout\,
	combout => \Equal33~3_combout\);

-- Location: LCCOMB_X23_Y9_N24
\Arreglomemoriascero[3]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero[3]~45_combout\ = (\Equal33~3_combout\) # ((\Equal35~3_combout\ & !\Equal34~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal35~3_combout\,
	datac => \Equal34~3_combout\,
	datad => \Equal33~3_combout\,
	combout => \Arreglomemoriascero[3]~45_combout\);

-- Location: LCCOMB_X24_Y7_N30
\Arreglomemoriascero~165\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~165_combout\ = (\Arreglomemoriascero~47_combout\ & (\IDentrada~3_combout\)) # (!\Arreglomemoriascero~47_combout\ & ((!Arreglomemoriascero(44))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IDentrada~3_combout\,
	datac => Arreglomemoriascero(44),
	datad => \Arreglomemoriascero~47_combout\,
	combout => \Arreglomemoriascero~165_combout\);

-- Location: LCCOMB_X22_Y10_N12
\Arreglomemoriascero~166\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~166_combout\ = (\Arreglomemoriascero[3]~45_combout\ & (!\Arreglomemoriascero[3]~40_combout\)) # (!\Arreglomemoriascero[3]~45_combout\ & ((\Arreglomemoriascero[3]~40_combout\ & (\Arreglomemoriascero~165_combout\)) # 
-- (!\Arreglomemoriascero[3]~40_combout\ & ((\Arreglomemoriascero~164_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero[3]~45_combout\,
	datab => \Arreglomemoriascero[3]~40_combout\,
	datac => \Arreglomemoriascero~165_combout\,
	datad => \Arreglomemoriascero~164_combout\,
	combout => \Arreglomemoriascero~166_combout\);

-- Location: LCCOMB_X22_Y10_N6
\Arreglomemoriascero~172\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~172_combout\ = (\Arreglomemoriascero[3]~45_combout\ & ((\Arreglomemoriascero~166_combout\ & ((\Arreglomemoriascero~171_combout\))) # (!\Arreglomemoriascero~166_combout\ & (\Arreglomemoriascero[2]~8_combout\)))) # 
-- (!\Arreglomemoriascero[3]~45_combout\ & (((\Arreglomemoriascero~166_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero[3]~45_combout\,
	datab => \Arreglomemoriascero[2]~8_combout\,
	datac => \Arreglomemoriascero~171_combout\,
	datad => \Arreglomemoriascero~166_combout\,
	combout => \Arreglomemoriascero~172_combout\);

-- Location: LCCOMB_X22_Y10_N20
\Arreglomemoriascero~173\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~173_combout\ = (\Arreglomemoriascero[3]~34_combout\ & ((\Arreglomemoriascero[3]~28_combout\ & (\Arreglomemoriascero~155_combout\)) # (!\Arreglomemoriascero[3]~28_combout\ & ((\Arreglomemoriascero~172_combout\))))) # 
-- (!\Arreglomemoriascero[3]~34_combout\ & (\Arreglomemoriascero[3]~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero[3]~34_combout\,
	datab => \Arreglomemoriascero[3]~28_combout\,
	datac => \Arreglomemoriascero~155_combout\,
	datad => \Arreglomemoriascero~172_combout\,
	combout => \Arreglomemoriascero~173_combout\);

-- Location: LCCOMB_X22_Y10_N26
\Arreglomemoriascero~179\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~179_combout\ = (\Arreglomemoriascero[3]~34_combout\ & (((\Arreglomemoriascero~173_combout\)))) # (!\Arreglomemoriascero[3]~34_combout\ & ((\Arreglomemoriascero~173_combout\ & ((\Arreglomemoriascero~178_combout\))) # 
-- (!\Arreglomemoriascero~173_combout\ & (\Arreglomemoriascero~150_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero[3]~34_combout\,
	datab => \Arreglomemoriascero~150_combout\,
	datac => \Arreglomemoriascero~178_combout\,
	datad => \Arreglomemoriascero~173_combout\,
	combout => \Arreglomemoriascero~179_combout\);

-- Location: FF_X22_Y10_N25
\Arreglomemoriascero[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instancia1|salida~clkctrl_outclk\,
	d => \Arreglomemoriascero[38]~feeder_combout\,
	asdata => \Arreglomemoriascero~179_combout\,
	sload => \Arreglomemoriascero[3]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Arreglomemoriascero(38));

-- Location: LCCOMB_X23_Y10_N22
\Arreglomemoriascero~156\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~156_combout\ = (\Arreglomemoriascero~13_combout\ & (((\Arreglomemoriascero~12_combout\)))) # (!\Arreglomemoriascero~13_combout\ & ((\Arreglomemoriascero~12_combout\ & ((!Arreglomemoriascero(26)))) # (!\Arreglomemoriascero~12_combout\ 
-- & (!Arreglomemoriascero(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero~13_combout\,
	datab => Arreglomemoriascero(20),
	datac => Arreglomemoriascero(26),
	datad => \Arreglomemoriascero~12_combout\,
	combout => \Arreglomemoriascero~156_combout\);

-- Location: LCCOMB_X23_Y10_N24
\Arreglomemoriascero~157\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~157_combout\ = (\Arreglomemoriascero~13_combout\ & ((\Arreglomemoriascero~156_combout\ & ((!Arreglomemoriascero(14)))) # (!\Arreglomemoriascero~156_combout\ & (!Arreglomemoriascero(8))))) # (!\Arreglomemoriascero~13_combout\ & 
-- (((\Arreglomemoriascero~156_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero~13_combout\,
	datab => Arreglomemoriascero(8),
	datac => \Arreglomemoriascero~156_combout\,
	datad => Arreglomemoriascero(14),
	combout => \Arreglomemoriascero~157_combout\);

-- Location: LCCOMB_X23_Y10_N10
\Arreglomemoriascero~158\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~158_combout\ = (\Arreglomemoriascero~17_combout\ & (((\Arreglomemoriascero~16_combout\)))) # (!\Arreglomemoriascero~17_combout\ & ((\Arreglomemoriascero~16_combout\ & ((\Arreglomemoriascero~157_combout\))) # 
-- (!\Arreglomemoriascero~16_combout\ & (Arreglomemoriascero(38)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(38),
	datab => \Arreglomemoriascero~17_combout\,
	datac => \Arreglomemoriascero~16_combout\,
	datad => \Arreglomemoriascero~157_combout\,
	combout => \Arreglomemoriascero~158_combout\);

-- Location: LCCOMB_X23_Y10_N20
\Arreglomemoriascero~159\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~159_combout\ = (\Arreglomemoriascero~17_combout\ & ((\Arreglomemoriascero~158_combout\ & (!Arreglomemoriascero(32))) # (!\Arreglomemoriascero~158_combout\ & ((!Arreglomemoriascero(44)))))) # (!\Arreglomemoriascero~17_combout\ & 
-- (((\Arreglomemoriascero~158_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(32),
	datab => \Arreglomemoriascero~17_combout\,
	datac => Arreglomemoriascero(44),
	datad => \Arreglomemoriascero~158_combout\,
	combout => \Arreglomemoriascero~159_combout\);

-- Location: LCCOMB_X23_Y10_N8
\Arreglomemoriascero[2]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero[2]~8_combout\ = (\Arreglomemoriascero~22_combout\ & (Arreglomemoriascero(2))) # (!\Arreglomemoriascero~22_combout\ & ((\Arreglomemoriascero~159_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero~22_combout\,
	datac => Arreglomemoriascero(2),
	datad => \Arreglomemoriascero~159_combout\,
	combout => \Arreglomemoriascero[2]~8_combout\);

-- Location: LCCOMB_X23_Y10_N16
\Arreglomemoriascero~365\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~365_combout\ = (\Arreglomemoriascero[3]~40_combout\ & (!\Arreglomemoriascero[3]~45_combout\ & (\Arreglomemoriascero~164_combout\))) # (!\Arreglomemoriascero[3]~40_combout\ & ((\Arreglomemoriascero[3]~45_combout\) # 
-- ((\Arreglomemoriascero~155_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero[3]~40_combout\,
	datab => \Arreglomemoriascero[3]~45_combout\,
	datac => \Arreglomemoriascero~164_combout\,
	datad => \Arreglomemoriascero~155_combout\,
	combout => \Arreglomemoriascero~365_combout\);

-- Location: LCCOMB_X23_Y10_N18
\Arreglomemoriascero~366\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~366_combout\ = (\Arreglomemoriascero[3]~45_combout\ & ((\Arreglomemoriascero~365_combout\ & (\Arreglomemoriascero~150_combout\)) # (!\Arreglomemoriascero~365_combout\ & ((\Arreglomemoriascero~171_combout\))))) # 
-- (!\Arreglomemoriascero[3]~45_combout\ & (((\Arreglomemoriascero~365_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero~150_combout\,
	datab => \Arreglomemoriascero[3]~45_combout\,
	datac => \Arreglomemoriascero~171_combout\,
	datad => \Arreglomemoriascero~365_combout\,
	combout => \Arreglomemoriascero~366_combout\);

-- Location: LCCOMB_X23_Y10_N4
\Arreglomemoriascero~367\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~367_combout\ = (\Arreglomemoriascero[3]~34_combout\ & ((\Arreglomemoriascero[3]~28_combout\ & (\Arreglomemoriascero~178_combout\)) # (!\Arreglomemoriascero[3]~28_combout\ & ((\Arreglomemoriascero~366_combout\))))) # 
-- (!\Arreglomemoriascero[3]~34_combout\ & (\Arreglomemoriascero[3]~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero[3]~34_combout\,
	datab => \Arreglomemoriascero[3]~28_combout\,
	datac => \Arreglomemoriascero~178_combout\,
	datad => \Arreglomemoriascero~366_combout\,
	combout => \Arreglomemoriascero~367_combout\);

-- Location: LCCOMB_X23_Y10_N30
\Arreglomemoriascero~368\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~368_combout\ = (\Arreglomemoriascero~367_combout\ & ((\Arreglomemoriascero~165_combout\) # ((\Arreglomemoriascero[3]~34_combout\)))) # (!\Arreglomemoriascero~367_combout\ & (((\Arreglomemoriascero[38]~2_combout\ & 
-- !\Arreglomemoriascero[3]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero~165_combout\,
	datab => \Arreglomemoriascero[38]~2_combout\,
	datac => \Arreglomemoriascero~367_combout\,
	datad => \Arreglomemoriascero[3]~34_combout\,
	combout => \Arreglomemoriascero~368_combout\);

-- Location: FF_X23_Y10_N9
\Arreglomemoriascero[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instancia1|salida~clkctrl_outclk\,
	d => \Arreglomemoriascero[2]~8_combout\,
	asdata => \Arreglomemoriascero~368_combout\,
	sload => \Arreglomemoriascero[3]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Arreglomemoriascero(2));

-- Location: LCCOMB_X23_Y6_N28
\Arreglomemoriascero~160\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~160_combout\ = (\Arreglomemoriascero~13_combout\ & (((\Arreglomemoriascero~12_combout\)))) # (!\Arreglomemoriascero~13_combout\ & ((\Arreglomemoriascero~12_combout\ & (!Arreglomemoriascero(32))) # (!\Arreglomemoriascero~12_combout\ & 
-- ((!Arreglomemoriascero(26))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(32),
	datab => Arreglomemoriascero(26),
	datac => \Arreglomemoriascero~13_combout\,
	datad => \Arreglomemoriascero~12_combout\,
	combout => \Arreglomemoriascero~160_combout\);

-- Location: LCCOMB_X23_Y6_N2
\Arreglomemoriascero~161\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~161_combout\ = (\Arreglomemoriascero~13_combout\ & ((\Arreglomemoriascero~160_combout\ & ((!Arreglomemoriascero(20)))) # (!\Arreglomemoriascero~160_combout\ & (!Arreglomemoriascero(14))))) # (!\Arreglomemoriascero~13_combout\ & 
-- (((\Arreglomemoriascero~160_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(14),
	datab => Arreglomemoriascero(20),
	datac => \Arreglomemoriascero~13_combout\,
	datad => \Arreglomemoriascero~160_combout\,
	combout => \Arreglomemoriascero~161_combout\);

-- Location: LCCOMB_X23_Y10_N6
\Arreglomemoriascero~162\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~162_combout\ = (\Arreglomemoriascero~17_combout\ & (((\Arreglomemoriascero~16_combout\)))) # (!\Arreglomemoriascero~17_combout\ & ((\Arreglomemoriascero~16_combout\ & ((\Arreglomemoriascero~161_combout\))) # 
-- (!\Arreglomemoriascero~16_combout\ & (!Arreglomemoriascero(44)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(44),
	datab => \Arreglomemoriascero~17_combout\,
	datac => \Arreglomemoriascero~16_combout\,
	datad => \Arreglomemoriascero~161_combout\,
	combout => \Arreglomemoriascero~162_combout\);

-- Location: LCCOMB_X23_Y10_N12
\Arreglomemoriascero~163\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~163_combout\ = (\Arreglomemoriascero~17_combout\ & ((\Arreglomemoriascero~162_combout\ & ((Arreglomemoriascero(38)))) # (!\Arreglomemoriascero~162_combout\ & (Arreglomemoriascero(2))))) # (!\Arreglomemoriascero~17_combout\ & 
-- (((\Arreglomemoriascero~162_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(2),
	datab => \Arreglomemoriascero~17_combout\,
	datac => Arreglomemoriascero(38),
	datad => \Arreglomemoriascero~162_combout\,
	combout => \Arreglomemoriascero~163_combout\);

-- Location: LCCOMB_X23_Y10_N26
\Arreglomemoriascero~164\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~164_combout\ = (\Arreglomemoriascero~22_combout\ & (!Arreglomemoriascero(8))) # (!\Arreglomemoriascero~22_combout\ & ((\Arreglomemoriascero~163_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(8),
	datac => \Arreglomemoriascero~22_combout\,
	datad => \Arreglomemoriascero~163_combout\,
	combout => \Arreglomemoriascero~164_combout\);

-- Location: LCCOMB_X22_Y10_N0
\Arreglomemoriascero~333\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~333_combout\ = (\Arreglomemoriascero[3]~45_combout\ & (!\Arreglomemoriascero[3]~40_combout\)) # (!\Arreglomemoriascero[3]~45_combout\ & ((\Arreglomemoriascero[3]~40_combout\ & (\Arreglomemoriascero~171_combout\)) # 
-- (!\Arreglomemoriascero[3]~40_combout\ & ((\Arreglomemoriascero~150_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero[3]~45_combout\,
	datab => \Arreglomemoriascero[3]~40_combout\,
	datac => \Arreglomemoriascero~171_combout\,
	datad => \Arreglomemoriascero~150_combout\,
	combout => \Arreglomemoriascero~333_combout\);

-- Location: LCCOMB_X22_Y10_N18
\Arreglomemoriascero~334\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~334_combout\ = (\Arreglomemoriascero[3]~45_combout\ & ((\Arreglomemoriascero~333_combout\ & ((\Arreglomemoriascero~178_combout\))) # (!\Arreglomemoriascero~333_combout\ & (\Arreglomemoriascero~155_combout\)))) # 
-- (!\Arreglomemoriascero[3]~45_combout\ & (((\Arreglomemoriascero~333_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero[3]~45_combout\,
	datab => \Arreglomemoriascero~155_combout\,
	datac => \Arreglomemoriascero~178_combout\,
	datad => \Arreglomemoriascero~333_combout\,
	combout => \Arreglomemoriascero~334_combout\);

-- Location: LCCOMB_X22_Y10_N4
\Arreglomemoriascero~335\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~335_combout\ = (\Arreglomemoriascero[3]~34_combout\ & ((\Arreglomemoriascero[3]~28_combout\ & (\Arreglomemoriascero[38]~2_combout\)) # (!\Arreglomemoriascero[3]~28_combout\ & ((\Arreglomemoriascero~334_combout\))))) # 
-- (!\Arreglomemoriascero[3]~34_combout\ & (\Arreglomemoriascero[3]~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero[3]~34_combout\,
	datab => \Arreglomemoriascero[3]~28_combout\,
	datac => \Arreglomemoriascero[38]~2_combout\,
	datad => \Arreglomemoriascero~334_combout\,
	combout => \Arreglomemoriascero~335_combout\);

-- Location: LCCOMB_X22_Y10_N2
\Arreglomemoriascero~336\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~336_combout\ = (\Arreglomemoriascero~335_combout\ & (((\Arreglomemoriascero[2]~8_combout\) # (\Arreglomemoriascero[3]~34_combout\)))) # (!\Arreglomemoriascero~335_combout\ & (\Arreglomemoriascero~165_combout\ & 
-- ((!\Arreglomemoriascero[3]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero~165_combout\,
	datab => \Arreglomemoriascero[2]~8_combout\,
	datac => \Arreglomemoriascero~335_combout\,
	datad => \Arreglomemoriascero[3]~34_combout\,
	combout => \Arreglomemoriascero~336_combout\);

-- Location: LCCOMB_X22_Y10_N8
\Arreglomemoriascero~337\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~337_combout\ = (\Arreglomemoriascero[3]~65_combout\ & ((!\Arreglomemoriascero~336_combout\))) # (!\Arreglomemoriascero[3]~65_combout\ & (!\Arreglomemoriascero~164_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Arreglomemoriascero~164_combout\,
	datac => \Arreglomemoriascero[3]~65_combout\,
	datad => \Arreglomemoriascero~336_combout\,
	combout => \Arreglomemoriascero~337_combout\);

-- Location: FF_X22_Y10_N9
\Arreglomemoriascero[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instancia1|salida~clkctrl_outclk\,
	d => \Arreglomemoriascero~337_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Arreglomemoriascero(8));

-- Location: LCCOMB_X21_Y10_N28
\Arreglomemoriascero~146\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~146_combout\ = (\Arreglomemoriascero~13_combout\ & (((\Arreglomemoriascero~12_combout\)))) # (!\Arreglomemoriascero~13_combout\ & ((\Arreglomemoriascero~12_combout\ & (Arreglomemoriascero(2))) # (!\Arreglomemoriascero~12_combout\ & 
-- ((!Arreglomemoriascero(44))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(2),
	datab => \Arreglomemoriascero~13_combout\,
	datac => Arreglomemoriascero(44),
	datad => \Arreglomemoriascero~12_combout\,
	combout => \Arreglomemoriascero~146_combout\);

-- Location: LCCOMB_X21_Y10_N6
\Arreglomemoriascero~147\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~147_combout\ = (\Arreglomemoriascero~13_combout\ & ((\Arreglomemoriascero~146_combout\ & (Arreglomemoriascero(38))) # (!\Arreglomemoriascero~146_combout\ & ((!Arreglomemoriascero(32)))))) # (!\Arreglomemoriascero~13_combout\ & 
-- (((\Arreglomemoriascero~146_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(38),
	datab => \Arreglomemoriascero~13_combout\,
	datac => Arreglomemoriascero(32),
	datad => \Arreglomemoriascero~146_combout\,
	combout => \Arreglomemoriascero~147_combout\);

-- Location: LCCOMB_X21_Y10_N20
\Arreglomemoriascero~148\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~148_combout\ = (\Arreglomemoriascero~16_combout\ & (((\Arreglomemoriascero~17_combout\) # (\Arreglomemoriascero~147_combout\)))) # (!\Arreglomemoriascero~16_combout\ & (!Arreglomemoriascero(14) & (!\Arreglomemoriascero~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero~16_combout\,
	datab => Arreglomemoriascero(14),
	datac => \Arreglomemoriascero~17_combout\,
	datad => \Arreglomemoriascero~147_combout\,
	combout => \Arreglomemoriascero~148_combout\);

-- Location: LCCOMB_X21_Y10_N18
\Arreglomemoriascero~149\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~149_combout\ = (\Arreglomemoriascero~17_combout\ & ((\Arreglomemoriascero~148_combout\ & (!Arreglomemoriascero(8))) # (!\Arreglomemoriascero~148_combout\ & ((!Arreglomemoriascero(20)))))) # (!\Arreglomemoriascero~17_combout\ & 
-- (((\Arreglomemoriascero~148_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(8),
	datab => Arreglomemoriascero(20),
	datac => \Arreglomemoriascero~17_combout\,
	datad => \Arreglomemoriascero~148_combout\,
	combout => \Arreglomemoriascero~149_combout\);

-- Location: LCCOMB_X21_Y10_N24
\Arreglomemoriascero~150\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~150_combout\ = (\Arreglomemoriascero~22_combout\ & (!Arreglomemoriascero(26))) # (!\Arreglomemoriascero~22_combout\ & ((\Arreglomemoriascero~149_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Arreglomemoriascero~22_combout\,
	datac => Arreglomemoriascero(26),
	datad => \Arreglomemoriascero~149_combout\,
	combout => \Arreglomemoriascero~150_combout\);

-- Location: LCCOMB_X23_Y7_N28
\Arreglomemoriascero~266\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~266_combout\ = (\Arreglomemoriascero[3]~40_combout\ & (((!\Arreglomemoriascero[3]~45_combout\ & \Arreglomemoriascero~178_combout\)))) # (!\Arreglomemoriascero[3]~40_combout\ & ((\Arreglomemoriascero~165_combout\) # 
-- ((\Arreglomemoriascero[3]~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero~165_combout\,
	datab => \Arreglomemoriascero[3]~40_combout\,
	datac => \Arreglomemoriascero[3]~45_combout\,
	datad => \Arreglomemoriascero~178_combout\,
	combout => \Arreglomemoriascero~266_combout\);

-- Location: LCCOMB_X23_Y7_N2
\Arreglomemoriascero~267\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~267_combout\ = (\Arreglomemoriascero[3]~45_combout\ & ((\Arreglomemoriascero~266_combout\ & (\Arreglomemoriascero[2]~8_combout\)) # (!\Arreglomemoriascero~266_combout\ & ((\Arreglomemoriascero[38]~2_combout\))))) # 
-- (!\Arreglomemoriascero[3]~45_combout\ & (\Arreglomemoriascero~266_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero[3]~45_combout\,
	datab => \Arreglomemoriascero~266_combout\,
	datac => \Arreglomemoriascero[2]~8_combout\,
	datad => \Arreglomemoriascero[38]~2_combout\,
	combout => \Arreglomemoriascero~267_combout\);

-- Location: LCCOMB_X23_Y7_N12
\Arreglomemoriascero~268\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~268_combout\ = (\Arreglomemoriascero[3]~34_combout\ & ((\Arreglomemoriascero[3]~28_combout\ & (\Arreglomemoriascero~164_combout\)) # (!\Arreglomemoriascero[3]~28_combout\ & ((\Arreglomemoriascero~267_combout\))))) # 
-- (!\Arreglomemoriascero[3]~34_combout\ & (\Arreglomemoriascero[3]~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero[3]~34_combout\,
	datab => \Arreglomemoriascero[3]~28_combout\,
	datac => \Arreglomemoriascero~164_combout\,
	datad => \Arreglomemoriascero~267_combout\,
	combout => \Arreglomemoriascero~268_combout\);

-- Location: LCCOMB_X23_Y7_N10
\Arreglomemoriascero~269\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~269_combout\ = (\Arreglomemoriascero[3]~34_combout\ & (((\Arreglomemoriascero~268_combout\)))) # (!\Arreglomemoriascero[3]~34_combout\ & ((\Arreglomemoriascero~268_combout\ & ((\Arreglomemoriascero~155_combout\))) # 
-- (!\Arreglomemoriascero~268_combout\ & (\Arreglomemoriascero~171_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero[3]~34_combout\,
	datab => \Arreglomemoriascero~171_combout\,
	datac => \Arreglomemoriascero~155_combout\,
	datad => \Arreglomemoriascero~268_combout\,
	combout => \Arreglomemoriascero~269_combout\);

-- Location: LCCOMB_X23_Y7_N14
\Arreglomemoriascero~270\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~270_combout\ = (\Arreglomemoriascero[3]~65_combout\ & ((!\Arreglomemoriascero~269_combout\))) # (!\Arreglomemoriascero[3]~65_combout\ & (!\Arreglomemoriascero~150_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Arreglomemoriascero[3]~65_combout\,
	datac => \Arreglomemoriascero~150_combout\,
	datad => \Arreglomemoriascero~269_combout\,
	combout => \Arreglomemoriascero~270_combout\);

-- Location: FF_X23_Y7_N15
\Arreglomemoriascero[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instancia1|salida~clkctrl_outclk\,
	d => \Arreglomemoriascero~270_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Arreglomemoriascero(26));

-- Location: LCCOMB_X23_Y6_N0
\Arreglomemoriascero~167\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~167_combout\ = (\Arreglomemoriascero~13_combout\ & (((\Arreglomemoriascero~12_combout\) # (!Arreglomemoriascero(20))))) # (!\Arreglomemoriascero~13_combout\ & (!Arreglomemoriascero(32) & ((!\Arreglomemoriascero~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(32),
	datab => Arreglomemoriascero(20),
	datac => \Arreglomemoriascero~13_combout\,
	datad => \Arreglomemoriascero~12_combout\,
	combout => \Arreglomemoriascero~167_combout\);

-- Location: LCCOMB_X23_Y6_N22
\Arreglomemoriascero~168\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~168_combout\ = (\Arreglomemoriascero~12_combout\ & ((\Arreglomemoriascero~167_combout\ & (!Arreglomemoriascero(26))) # (!\Arreglomemoriascero~167_combout\ & ((Arreglomemoriascero(38)))))) # (!\Arreglomemoriascero~12_combout\ & 
-- (((\Arreglomemoriascero~167_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(26),
	datab => Arreglomemoriascero(38),
	datac => \Arreglomemoriascero~12_combout\,
	datad => \Arreglomemoriascero~167_combout\,
	combout => \Arreglomemoriascero~168_combout\);

-- Location: LCCOMB_X21_Y6_N28
\Arreglomemoriascero~169\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~169_combout\ = (\Arreglomemoriascero~16_combout\ & (((\Arreglomemoriascero~17_combout\)))) # (!\Arreglomemoriascero~16_combout\ & ((\Arreglomemoriascero~17_combout\ & ((!Arreglomemoriascero(8)))) # (!\Arreglomemoriascero~17_combout\ & 
-- (Arreglomemoriascero(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(2),
	datab => Arreglomemoriascero(8),
	datac => \Arreglomemoriascero~16_combout\,
	datad => \Arreglomemoriascero~17_combout\,
	combout => \Arreglomemoriascero~169_combout\);

-- Location: LCCOMB_X21_Y6_N18
\Arreglomemoriascero~170\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~170_combout\ = (\Arreglomemoriascero~16_combout\ & ((\Arreglomemoriascero~169_combout\ & (!Arreglomemoriascero(44))) # (!\Arreglomemoriascero~169_combout\ & ((\Arreglomemoriascero~168_combout\))))) # (!\Arreglomemoriascero~16_combout\ 
-- & (((\Arreglomemoriascero~169_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero~16_combout\,
	datab => Arreglomemoriascero(44),
	datac => \Arreglomemoriascero~168_combout\,
	datad => \Arreglomemoriascero~169_combout\,
	combout => \Arreglomemoriascero~170_combout\);

-- Location: LCCOMB_X21_Y6_N0
\Arreglomemoriascero~171\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~171_combout\ = (\Arreglomemoriascero~22_combout\ & (!Arreglomemoriascero(14))) # (!\Arreglomemoriascero~22_combout\ & ((\Arreglomemoriascero~170_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => Arreglomemoriascero(14),
	datac => \Arreglomemoriascero~22_combout\,
	datad => \Arreglomemoriascero~170_combout\,
	combout => \Arreglomemoriascero~171_combout\);

-- Location: LCCOMB_X23_Y6_N14
\Arreglomemoriascero~417\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~417_combout\ = (\Arreglomemoriascero[3]~45_combout\ & (((!\Arreglomemoriascero[3]~40_combout\)))) # (!\Arreglomemoriascero[3]~45_combout\ & ((\Arreglomemoriascero[3]~40_combout\ & (\Arreglomemoriascero~155_combout\)) # 
-- (!\Arreglomemoriascero[3]~40_combout\ & ((\Arreglomemoriascero~178_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero[3]~45_combout\,
	datab => \Arreglomemoriascero~155_combout\,
	datac => \Arreglomemoriascero[3]~40_combout\,
	datad => \Arreglomemoriascero~178_combout\,
	combout => \Arreglomemoriascero~417_combout\);

-- Location: LCCOMB_X21_Y6_N10
\Arreglomemoriascero~418\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~418_combout\ = (\Arreglomemoriascero[3]~45_combout\ & ((\Arreglomemoriascero~417_combout\ & ((\Arreglomemoriascero[38]~2_combout\))) # (!\Arreglomemoriascero~417_combout\ & (\Arreglomemoriascero~150_combout\)))) # 
-- (!\Arreglomemoriascero[3]~45_combout\ & (((\Arreglomemoriascero~417_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero~150_combout\,
	datab => \Arreglomemoriascero[3]~45_combout\,
	datac => \Arreglomemoriascero~417_combout\,
	datad => \Arreglomemoriascero[38]~2_combout\,
	combout => \Arreglomemoriascero~418_combout\);

-- Location: LCCOMB_X21_Y6_N12
\Arreglomemoriascero~419\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~419_combout\ = (\Arreglomemoriascero[3]~28_combout\ & (((\Arreglomemoriascero~165_combout\)) # (!\Arreglomemoriascero[3]~34_combout\))) # (!\Arreglomemoriascero[3]~28_combout\ & (\Arreglomemoriascero[3]~34_combout\ & 
-- ((\Arreglomemoriascero~418_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero[3]~28_combout\,
	datab => \Arreglomemoriascero[3]~34_combout\,
	datac => \Arreglomemoriascero~165_combout\,
	datad => \Arreglomemoriascero~418_combout\,
	combout => \Arreglomemoriascero~419_combout\);

-- Location: LCCOMB_X21_Y6_N22
\Arreglomemoriascero~420\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~420_combout\ = (\Arreglomemoriascero[3]~34_combout\ & (((\Arreglomemoriascero~419_combout\)))) # (!\Arreglomemoriascero[3]~34_combout\ & ((\Arreglomemoriascero~419_combout\ & (\Arreglomemoriascero~164_combout\)) # 
-- (!\Arreglomemoriascero~419_combout\ & ((\Arreglomemoriascero[2]~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero~164_combout\,
	datab => \Arreglomemoriascero[3]~34_combout\,
	datac => \Arreglomemoriascero[2]~8_combout\,
	datad => \Arreglomemoriascero~419_combout\,
	combout => \Arreglomemoriascero~420_combout\);

-- Location: LCCOMB_X21_Y6_N20
\Arreglomemoriascero~421\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~421_combout\ = (\Arreglomemoriascero[3]~65_combout\ & ((!\Arreglomemoriascero~420_combout\))) # (!\Arreglomemoriascero[3]~65_combout\ & (!\Arreglomemoriascero~171_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Arreglomemoriascero~171_combout\,
	datac => \Arreglomemoriascero~420_combout\,
	datad => \Arreglomemoriascero[3]~65_combout\,
	combout => \Arreglomemoriascero~421_combout\);

-- Location: FF_X21_Y6_N21
\Arreglomemoriascero[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instancia1|salida~clkctrl_outclk\,
	d => \Arreglomemoriascero~421_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Arreglomemoriascero(14));

-- Location: LCCOMB_X23_Y6_N24
\Arreglomemoriascero~174\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~174_combout\ = (\Arreglomemoriascero~13_combout\ & (((Arreglomemoriascero(38)) # (\Arreglomemoriascero~12_combout\)))) # (!\Arreglomemoriascero~13_combout\ & (Arreglomemoriascero(2) & ((!\Arreglomemoriascero~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(2),
	datab => Arreglomemoriascero(38),
	datac => \Arreglomemoriascero~13_combout\,
	datad => \Arreglomemoriascero~12_combout\,
	combout => \Arreglomemoriascero~174_combout\);

-- Location: LCCOMB_X23_Y6_N30
\Arreglomemoriascero~175\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~175_combout\ = (\Arreglomemoriascero~12_combout\ & ((\Arreglomemoriascero~174_combout\ & ((!Arreglomemoriascero(44)))) # (!\Arreglomemoriascero~174_combout\ & (!Arreglomemoriascero(8))))) # (!\Arreglomemoriascero~12_combout\ & 
-- (((\Arreglomemoriascero~174_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(8),
	datab => \Arreglomemoriascero~12_combout\,
	datac => Arreglomemoriascero(44),
	datad => \Arreglomemoriascero~174_combout\,
	combout => \Arreglomemoriascero~175_combout\);

-- Location: LCCOMB_X23_Y6_N16
\Arreglomemoriascero~176\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~176_combout\ = (\Arreglomemoriascero~16_combout\ & (((\Arreglomemoriascero~17_combout\)))) # (!\Arreglomemoriascero~16_combout\ & ((\Arreglomemoriascero~17_combout\ & (!Arreglomemoriascero(26))) # (!\Arreglomemoriascero~17_combout\ & 
-- ((!Arreglomemoriascero(20))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(26),
	datab => Arreglomemoriascero(20),
	datac => \Arreglomemoriascero~16_combout\,
	datad => \Arreglomemoriascero~17_combout\,
	combout => \Arreglomemoriascero~176_combout\);

-- Location: LCCOMB_X23_Y6_N26
\Arreglomemoriascero~177\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~177_combout\ = (\Arreglomemoriascero~16_combout\ & ((\Arreglomemoriascero~176_combout\ & (!Arreglomemoriascero(14))) # (!\Arreglomemoriascero~176_combout\ & ((\Arreglomemoriascero~175_combout\))))) # (!\Arreglomemoriascero~16_combout\ 
-- & (((\Arreglomemoriascero~176_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero~16_combout\,
	datab => Arreglomemoriascero(14),
	datac => \Arreglomemoriascero~175_combout\,
	datad => \Arreglomemoriascero~176_combout\,
	combout => \Arreglomemoriascero~177_combout\);

-- Location: LCCOMB_X23_Y6_N20
\Arreglomemoriascero~178\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~178_combout\ = (\Arreglomemoriascero~22_combout\ & (!Arreglomemoriascero(32))) # (!\Arreglomemoriascero~22_combout\ & ((\Arreglomemoriascero~177_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(32),
	datac => \Arreglomemoriascero~177_combout\,
	datad => \Arreglomemoriascero~22_combout\,
	combout => \Arreglomemoriascero~178_combout\);

-- Location: LCCOMB_X23_Y10_N0
\Arreglomemoriascero~296\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~296_combout\ = (\Arreglomemoriascero[3]~40_combout\ & (!\Arreglomemoriascero[3]~45_combout\ & ((\Arreglomemoriascero[38]~2_combout\)))) # (!\Arreglomemoriascero[3]~40_combout\ & ((\Arreglomemoriascero[3]~45_combout\) # 
-- ((\Arreglomemoriascero[2]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero[3]~40_combout\,
	datab => \Arreglomemoriascero[3]~45_combout\,
	datac => \Arreglomemoriascero[2]~8_combout\,
	datad => \Arreglomemoriascero[38]~2_combout\,
	combout => \Arreglomemoriascero~296_combout\);

-- Location: LCCOMB_X23_Y10_N2
\Arreglomemoriascero~297\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~297_combout\ = (\Arreglomemoriascero[3]~45_combout\ & ((\Arreglomemoriascero~296_combout\ & ((\Arreglomemoriascero~164_combout\))) # (!\Arreglomemoriascero~296_combout\ & (\Arreglomemoriascero~165_combout\)))) # 
-- (!\Arreglomemoriascero[3]~45_combout\ & (((\Arreglomemoriascero~296_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero~165_combout\,
	datab => \Arreglomemoriascero[3]~45_combout\,
	datac => \Arreglomemoriascero~164_combout\,
	datad => \Arreglomemoriascero~296_combout\,
	combout => \Arreglomemoriascero~297_combout\);

-- Location: LCCOMB_X23_Y10_N28
\Arreglomemoriascero~298\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~298_combout\ = (\Arreglomemoriascero[3]~34_combout\ & ((\Arreglomemoriascero[3]~28_combout\ & (\Arreglomemoriascero~171_combout\)) # (!\Arreglomemoriascero[3]~28_combout\ & ((\Arreglomemoriascero~297_combout\))))) # 
-- (!\Arreglomemoriascero[3]~34_combout\ & (\Arreglomemoriascero[3]~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero[3]~34_combout\,
	datab => \Arreglomemoriascero[3]~28_combout\,
	datac => \Arreglomemoriascero~171_combout\,
	datad => \Arreglomemoriascero~297_combout\,
	combout => \Arreglomemoriascero~298_combout\);

-- Location: LCCOMB_X23_Y10_N14
\Arreglomemoriascero~299\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~299_combout\ = (\Arreglomemoriascero[3]~34_combout\ & (((\Arreglomemoriascero~298_combout\)))) # (!\Arreglomemoriascero[3]~34_combout\ & ((\Arreglomemoriascero~298_combout\ & ((\Arreglomemoriascero~150_combout\))) # 
-- (!\Arreglomemoriascero~298_combout\ & (\Arreglomemoriascero~155_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero[3]~34_combout\,
	datab => \Arreglomemoriascero~155_combout\,
	datac => \Arreglomemoriascero~150_combout\,
	datad => \Arreglomemoriascero~298_combout\,
	combout => \Arreglomemoriascero~299_combout\);

-- Location: LCCOMB_X23_Y6_N12
\Arreglomemoriascero~300\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~300_combout\ = (\Arreglomemoriascero[3]~65_combout\ & ((!\Arreglomemoriascero~299_combout\))) # (!\Arreglomemoriascero[3]~65_combout\ & (!\Arreglomemoriascero~178_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Arreglomemoriascero~178_combout\,
	datac => \Arreglomemoriascero[3]~65_combout\,
	datad => \Arreglomemoriascero~299_combout\,
	combout => \Arreglomemoriascero~300_combout\);

-- Location: FF_X23_Y6_N13
\Arreglomemoriascero[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instancia1|salida~clkctrl_outclk\,
	d => \Arreglomemoriascero~300_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Arreglomemoriascero(32));

-- Location: FF_X22_Y7_N5
\Arreglomemoriascopia3[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instancia1|salida~clkctrl_outclk\,
	d => \Arreglomemoriascopia3~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Arreglomemoriascopia3(32));

-- Location: LCCOMB_X22_Y7_N4
\Arreglomemoriascopia3~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascopia3~20_combout\ = (\DetectoTarjeta~input_o\ & ((\vuelta~q\ & ((Arreglomemoriascopia3(32)))) # (!\vuelta~q\ & (!Arreglomemoriascero(32))))) # (!\DetectoTarjeta~input_o\ & (((Arreglomemoriascopia3(32)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DetectoTarjeta~input_o\,
	datab => Arreglomemoriascero(32),
	datac => Arreglomemoriascopia3(32),
	datad => \vuelta~q\,
	combout => \Arreglomemoriascopia3~20_combout\);

-- Location: LCCOMB_X21_Y9_N12
\Equal31~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal31~1_combout\ = (\IDentrada~2_combout\ & (\Arreglomemoriascopia3~21_combout\ & (\IDentrada~3_combout\ $ (!\Arreglomemoriascopia3~20_combout\)))) # (!\IDentrada~2_combout\ & (!\Arreglomemoriascopia3~21_combout\ & (\IDentrada~3_combout\ $ 
-- (!\Arreglomemoriascopia3~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDentrada~2_combout\,
	datab => \IDentrada~3_combout\,
	datac => \Arreglomemoriascopia3~21_combout\,
	datad => \Arreglomemoriascopia3~20_combout\,
	combout => \Equal31~1_combout\);

-- Location: FF_X22_Y7_N19
\Arreglomemoriascopia3[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instancia1|salida~clkctrl_outclk\,
	d => \Arreglomemoriascopia3~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Arreglomemoriascopia3(31));

-- Location: LCCOMB_X22_Y7_N18
\Arreglomemoriascopia3~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascopia3~19_combout\ = (\vuelta~q\ & (((Arreglomemoriascopia3(31))))) # (!\vuelta~q\ & ((\DetectoTarjeta~input_o\ & (!Arreglomemoriascero(31))) # (!\DetectoTarjeta~input_o\ & ((Arreglomemoriascopia3(31))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(31),
	datab => \vuelta~q\,
	datac => Arreglomemoriascopia3(31),
	datad => \DetectoTarjeta~input_o\,
	combout => \Arreglomemoriascopia3~19_combout\);

-- Location: FF_X22_Y7_N17
\Arreglomemoriascopia3[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instancia1|salida~clkctrl_outclk\,
	d => \Arreglomemoriascopia3~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Arreglomemoriascopia3(30));

-- Location: LCCOMB_X22_Y7_N16
\Arreglomemoriascopia3~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascopia3~18_combout\ = (\DetectoTarjeta~input_o\ & ((\vuelta~q\ & (Arreglomemoriascopia3(30))) # (!\vuelta~q\ & ((!Arreglomemoriascero(30)))))) # (!\DetectoTarjeta~input_o\ & (((Arreglomemoriascopia3(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DetectoTarjeta~input_o\,
	datab => \vuelta~q\,
	datac => Arreglomemoriascopia3(30),
	datad => Arreglomemoriascero(30),
	combout => \Arreglomemoriascopia3~18_combout\);

-- Location: LCCOMB_X22_Y7_N28
\Equal31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal31~0_combout\ = (\IDentrada~1_combout\ & (\Arreglomemoriascopia3~18_combout\ & (\Arreglomemoriascopia3~19_combout\ $ (!\IDentrada~0_combout\)))) # (!\IDentrada~1_combout\ & (!\Arreglomemoriascopia3~18_combout\ & (\Arreglomemoriascopia3~19_combout\ $ 
-- (!\IDentrada~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDentrada~1_combout\,
	datab => \Arreglomemoriascopia3~19_combout\,
	datac => \IDentrada~0_combout\,
	datad => \Arreglomemoriascopia3~18_combout\,
	combout => \Equal31~0_combout\);

-- Location: FF_X21_Y8_N29
\Arreglomemoriascopia3[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instancia1|salida~clkctrl_outclk\,
	d => \Arreglomemoriascopia3~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Arreglomemoriascopia3(38));

-- Location: LCCOMB_X21_Y8_N28
\Arreglomemoriascopia3~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascopia3~26_combout\ = (\DetectoTarjeta~input_o\ & ((\vuelta~q\ & (Arreglomemoriascopia3(38))) # (!\vuelta~q\ & ((Arreglomemoriascero(38)))))) # (!\DetectoTarjeta~input_o\ & (((Arreglomemoriascopia3(38)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DetectoTarjeta~input_o\,
	datab => \vuelta~q\,
	datac => Arreglomemoriascopia3(38),
	datad => Arreglomemoriascero(38),
	combout => \Arreglomemoriascopia3~26_combout\);

-- Location: FF_X21_Y8_N11
\Arreglomemoriascopia3[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instancia1|salida~clkctrl_outclk\,
	d => \Arreglomemoriascopia3~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Arreglomemoriascopia3(39));

-- Location: LCCOMB_X21_Y8_N10
\Arreglomemoriascopia3~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascopia3~27_combout\ = (\DetectoTarjeta~input_o\ & ((\vuelta~q\ & (Arreglomemoriascopia3(39))) # (!\vuelta~q\ & ((Arreglomemoriascero(39)))))) # (!\DetectoTarjeta~input_o\ & (((Arreglomemoriascopia3(39)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DetectoTarjeta~input_o\,
	datab => \vuelta~q\,
	datac => Arreglomemoriascopia3(39),
	datad => Arreglomemoriascero(39),
	combout => \Arreglomemoriascopia3~27_combout\);

-- Location: LCCOMB_X21_Y8_N24
\Equal30~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal30~1_combout\ = (\IDentrada~2_combout\ & (\Arreglomemoriascopia3~27_combout\ & (\Arreglomemoriascopia3~26_combout\ $ (!\IDentrada~3_combout\)))) # (!\IDentrada~2_combout\ & (!\Arreglomemoriascopia3~27_combout\ & (\Arreglomemoriascopia3~26_combout\ $ 
-- (!\IDentrada~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDentrada~2_combout\,
	datab => \Arreglomemoriascopia3~26_combout\,
	datac => \IDentrada~3_combout\,
	datad => \Arreglomemoriascopia3~27_combout\,
	combout => \Equal30~1_combout\);

-- Location: FF_X21_Y8_N5
\Arreglomemoriascopia3[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instancia1|salida~clkctrl_outclk\,
	d => \Arreglomemoriascopia3~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Arreglomemoriascopia3(36));

-- Location: LCCOMB_X21_Y8_N4
\Arreglomemoriascopia3~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascopia3~24_combout\ = (\DetectoTarjeta~input_o\ & ((\vuelta~q\ & (Arreglomemoriascopia3(36))) # (!\vuelta~q\ & ((Arreglomemoriascero(36)))))) # (!\DetectoTarjeta~input_o\ & (((Arreglomemoriascopia3(36)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DetectoTarjeta~input_o\,
	datab => \vuelta~q\,
	datac => Arreglomemoriascopia3(36),
	datad => Arreglomemoriascero(36),
	combout => \Arreglomemoriascopia3~24_combout\);

-- Location: LCCOMB_X21_Y8_N18
\Equal30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal30~0_combout\ = (\Arreglomemoriascopia3~25_combout\ & (\IDentrada~0_combout\ & (\Arreglomemoriascopia3~24_combout\ $ (!\IDentrada~1_combout\)))) # (!\Arreglomemoriascopia3~25_combout\ & (!\IDentrada~0_combout\ & (\Arreglomemoriascopia3~24_combout\ $ 
-- (!\IDentrada~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascopia3~25_combout\,
	datab => \Arreglomemoriascopia3~24_combout\,
	datac => \IDentrada~0_combout\,
	datad => \IDentrada~1_combout\,
	combout => \Equal30~0_combout\);

-- Location: FF_X22_Y8_N29
\Arreglomemoriascopia3[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instancia1|salida~clkctrl_outclk\,
	d => \Arreglomemoriascopia3~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Arreglomemoriascopia3(40));

-- Location: LCCOMB_X22_Y8_N28
\Arreglomemoriascopia3~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascopia3~28_combout\ = (\DetectoTarjeta~input_o\ & ((\vuelta~q\ & (Arreglomemoriascopia3(40))) # (!\vuelta~q\ & ((Arreglomemoriascero(40)))))) # (!\DetectoTarjeta~input_o\ & (((Arreglomemoriascopia3(40)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DetectoTarjeta~input_o\,
	datab => \vuelta~q\,
	datac => Arreglomemoriascopia3(40),
	datad => Arreglomemoriascero(40),
	combout => \Arreglomemoriascopia3~28_combout\);

-- Location: FF_X22_Y7_N15
\Arreglomemoriascopia3[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instancia1|salida~clkctrl_outclk\,
	d => \Arreglomemoriascopia3~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Arreglomemoriascopia3(41));

-- Location: LCCOMB_X22_Y7_N14
\Arreglomemoriascopia3~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascopia3~29_combout\ = (\DetectoTarjeta~input_o\ & ((\vuelta~q\ & (Arreglomemoriascopia3(41))) # (!\vuelta~q\ & ((Arreglomemoriascero(41)))))) # (!\DetectoTarjeta~input_o\ & (((Arreglomemoriascopia3(41)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DetectoTarjeta~input_o\,
	datab => \vuelta~q\,
	datac => Arreglomemoriascopia3(41),
	datad => Arreglomemoriascero(41),
	combout => \Arreglomemoriascopia3~29_combout\);

-- Location: LCCOMB_X22_Y8_N24
\Equal30~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal30~2_combout\ = (\Arreglomemoriascopia3~28_combout\ & (\IDentrada~5_combout\ & (\IDentrada~4_combout\ $ (!\Arreglomemoriascopia3~29_combout\)))) # (!\Arreglomemoriascopia3~28_combout\ & (!\IDentrada~5_combout\ & (\IDentrada~4_combout\ $ 
-- (!\Arreglomemoriascopia3~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascopia3~28_combout\,
	datab => \IDentrada~4_combout\,
	datac => \IDentrada~5_combout\,
	datad => \Arreglomemoriascopia3~29_combout\,
	combout => \Equal30~2_combout\);

-- Location: LCCOMB_X22_Y9_N12
\Equal30~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal30~3_combout\ = (\Equal30~1_combout\ & (\Equal30~0_combout\ & \Equal30~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal30~1_combout\,
	datac => \Equal30~0_combout\,
	datad => \Equal30~2_combout\,
	combout => \Equal30~3_combout\);

-- Location: LCCOMB_X22_Y9_N14
\Arreglomemoriascero[3]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero[3]~34_combout\ = (!\Equal30~3_combout\ & (((!\Equal31~2_combout\) # (!\Equal31~0_combout\)) # (!\Equal31~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal31~1_combout\,
	datab => \Equal31~0_combout\,
	datac => \Equal31~2_combout\,
	datad => \Equal30~3_combout\,
	combout => \Arreglomemoriascero[3]~34_combout\);

-- Location: LCCOMB_X25_Y7_N12
\Arreglomemoriascero~397\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~397_combout\ = (\Arreglomemoriascero[3]~45_combout\ & (!\Arreglomemoriascero[3]~40_combout\)) # (!\Arreglomemoriascero[3]~45_combout\ & ((\Arreglomemoriascero[3]~40_combout\ & ((\Arreglomemoriascero~226_combout\))) # 
-- (!\Arreglomemoriascero[3]~40_combout\ & (\Arreglomemoriascero[40]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero[3]~45_combout\,
	datab => \Arreglomemoriascero[3]~40_combout\,
	datac => \Arreglomemoriascero[40]~4_combout\,
	datad => \Arreglomemoriascero~226_combout\,
	combout => \Arreglomemoriascero~397_combout\);

-- Location: LCCOMB_X25_Y7_N6
\Arreglomemoriascero~398\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~398_combout\ = (\Arreglomemoriascero[3]~45_combout\ & ((\Arreglomemoriascero~397_combout\ & (\Arreglomemoriascero~241_combout\)) # (!\Arreglomemoriascero~397_combout\ & ((\Arreglomemoriascero~254_combout\))))) # 
-- (!\Arreglomemoriascero[3]~45_combout\ & (((\Arreglomemoriascero~397_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero~241_combout\,
	datab => \Arreglomemoriascero[3]~45_combout\,
	datac => \Arreglomemoriascero~254_combout\,
	datad => \Arreglomemoriascero~397_combout\,
	combout => \Arreglomemoriascero~398_combout\);

-- Location: LCCOMB_X25_Y7_N8
\Arreglomemoriascero~399\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~399_combout\ = (\Arreglomemoriascero[3]~34_combout\ & ((\Arreglomemoriascero[3]~28_combout\ & (\Arreglomemoriascero[4]~10_combout\)) # (!\Arreglomemoriascero[3]~28_combout\ & ((\Arreglomemoriascero~398_combout\))))) # 
-- (!\Arreglomemoriascero[3]~34_combout\ & (((\Arreglomemoriascero[3]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero[4]~10_combout\,
	datab => \Arreglomemoriascero[3]~34_combout\,
	datac => \Arreglomemoriascero[3]~28_combout\,
	datad => \Arreglomemoriascero~398_combout\,
	combout => \Arreglomemoriascero~399_combout\);

-- Location: LCCOMB_X25_Y7_N30
\Arreglomemoriascero~400\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~400_combout\ = (\Arreglomemoriascero[3]~34_combout\ & (((\Arreglomemoriascero~399_combout\)))) # (!\Arreglomemoriascero[3]~34_combout\ & ((\Arreglomemoriascero~399_combout\ & (\Arreglomemoriascero~247_combout\)) # 
-- (!\Arreglomemoriascero~399_combout\ & ((\Arreglomemoriascero~240_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero~247_combout\,
	datab => \Arreglomemoriascero[3]~34_combout\,
	datac => \Arreglomemoriascero~399_combout\,
	datad => \Arreglomemoriascero~240_combout\,
	combout => \Arreglomemoriascero~400_combout\);

-- Location: LCCOMB_X25_Y7_N20
\Arreglomemoriascero~401\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~401_combout\ = (\Arreglomemoriascero[3]~65_combout\ & (!\Arreglomemoriascero~400_combout\)) # (!\Arreglomemoriascero[3]~65_combout\ & ((!\Arreglomemoriascero~231_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Arreglomemoriascero[3]~65_combout\,
	datac => \Arreglomemoriascero~400_combout\,
	datad => \Arreglomemoriascero~231_combout\,
	combout => \Arreglomemoriascero~401_combout\);

-- Location: FF_X25_Y7_N21
\Arreglomemoriascero[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instancia1|salida~clkctrl_outclk\,
	d => \Arreglomemoriascero~401_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Arreglomemoriascero(22));

-- Location: LCCOMB_X22_Y6_N16
\Arreglomemoriascopia3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascopia3~4_combout\ = (\vuelta~q\ & (((Arreglomemoriascopia3(22))))) # (!\vuelta~q\ & ((\DetectoTarjeta~input_o\ & ((!Arreglomemoriascero(22)))) # (!\DetectoTarjeta~input_o\ & (Arreglomemoriascopia3(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vuelta~q\,
	datab => \DetectoTarjeta~input_o\,
	datac => Arreglomemoriascopia3(22),
	datad => Arreglomemoriascero(22),
	combout => \Arreglomemoriascopia3~4_combout\);

-- Location: LCCOMB_X22_Y6_N12
\Equal24~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal24~2_combout\ = (!\Arreglomemoriascopia3~5_combout\ & !\Arreglomemoriascopia3~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Arreglomemoriascopia3~5_combout\,
	datad => \Arreglomemoriascopia3~4_combout\,
	combout => \Equal24~2_combout\);

-- Location: LCCOMB_X22_Y6_N4
\Equal25~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal25~3_combout\ = (\Arreglomemoriascopia3~10_combout\) # (\Arreglomemoriascopia3~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Arreglomemoriascopia3~10_combout\,
	datac => \Arreglomemoriascopia3~11_combout\,
	combout => \Equal25~3_combout\);

-- Location: LCCOMB_X22_Y6_N6
\Equal24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal24~0_combout\ = (!\Arreglomemoriascopia3~0_combout\ & (!\Arreglomemoriascopia3~3_combout\ & (!\Arreglomemoriascopia3~2_combout\ & !\Arreglomemoriascopia3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascopia3~0_combout\,
	datab => \Arreglomemoriascopia3~3_combout\,
	datac => \Arreglomemoriascopia3~2_combout\,
	datad => \Arreglomemoriascopia3~1_combout\,
	combout => \Equal24~0_combout\);

-- Location: LCCOMB_X22_Y6_N14
\Arreglomemoriascero~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~13_combout\ = (\Equal24~2_combout\ & (!\Equal24~0_combout\ & ((\Equal25~3_combout\) # (\Equal25~2_combout\)))) # (!\Equal24~2_combout\ & ((\Equal25~3_combout\) # ((\Equal25~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal24~2_combout\,
	datab => \Equal25~3_combout\,
	datac => \Equal25~2_combout\,
	datad => \Equal24~0_combout\,
	combout => \Arreglomemoriascero~13_combout\);

-- Location: LCCOMB_X25_Y5_N10
\Arreglomemoriascero~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~123_combout\ = (\Arreglomemoriascero~12_combout\ & (((\Arreglomemoriascero~13_combout\)))) # (!\Arreglomemoriascero~12_combout\ & ((\Arreglomemoriascero~13_combout\ & (!Arreglomemoriascero(9))) # (!\Arreglomemoriascero~13_combout\ & 
-- ((!Arreglomemoriascero(21))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(9),
	datab => Arreglomemoriascero(21),
	datac => \Arreglomemoriascero~12_combout\,
	datad => \Arreglomemoriascero~13_combout\,
	combout => \Arreglomemoriascero~123_combout\);

-- Location: LCCOMB_X25_Y5_N12
\Arreglomemoriascero~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~124_combout\ = (\Arreglomemoriascero~12_combout\ & ((\Arreglomemoriascero~123_combout\ & ((!Arreglomemoriascero(15)))) # (!\Arreglomemoriascero~123_combout\ & (!Arreglomemoriascero(27))))) # (!\Arreglomemoriascero~12_combout\ & 
-- (((\Arreglomemoriascero~123_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(27),
	datab => Arreglomemoriascero(15),
	datac => \Arreglomemoriascero~12_combout\,
	datad => \Arreglomemoriascero~123_combout\,
	combout => \Arreglomemoriascero~124_combout\);

-- Location: LCCOMB_X25_Y5_N4
\Arreglomemoriascero~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~126_combout\ = (\Arreglomemoriascero~16_combout\ & ((\Arreglomemoriascero~125_combout\ & (!Arreglomemoriascero(33))) # (!\Arreglomemoriascero~125_combout\ & ((\Arreglomemoriascero~124_combout\))))) # (!\Arreglomemoriascero~16_combout\ 
-- & (((\Arreglomemoriascero~125_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero~16_combout\,
	datab => Arreglomemoriascero(33),
	datac => \Arreglomemoriascero~125_combout\,
	datad => \Arreglomemoriascero~124_combout\,
	combout => \Arreglomemoriascero~126_combout\);

-- Location: LCCOMB_X24_Y5_N10
\Arreglomemoriascero[3]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero[3]~9_combout\ = (\Arreglomemoriascero~22_combout\ & (Arreglomemoriascero(3))) # (!\Arreglomemoriascero~22_combout\ & ((\Arreglomemoriascero~126_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero~22_combout\,
	datac => Arreglomemoriascero(3),
	datad => \Arreglomemoriascero~126_combout\,
	combout => \Arreglomemoriascero[3]~9_combout\);

-- Location: LCCOMB_X24_Y7_N12
\Arreglomemoriascero~127\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~127_combout\ = (\Arreglomemoriascero~47_combout\ & ((\IDentrada~2_combout\))) # (!\Arreglomemoriascero~47_combout\ & (!Arreglomemoriascero(45)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(45),
	datac => \IDentrada~2_combout\,
	datad => \Arreglomemoriascero~47_combout\,
	combout => \Arreglomemoriascero~127_combout\);

-- Location: LCCOMB_X24_Y5_N12
\Arreglomemoriascero~361\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~361_combout\ = (\Arreglomemoriascero[3]~45_combout\ & (((\Arreglomemoriascero~133_combout\)) # (!\Arreglomemoriascero[3]~40_combout\))) # (!\Arreglomemoriascero[3]~45_combout\ & (\Arreglomemoriascero[3]~40_combout\ & 
-- (\Arreglomemoriascero~122_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero[3]~45_combout\,
	datab => \Arreglomemoriascero[3]~40_combout\,
	datac => \Arreglomemoriascero~122_combout\,
	datad => \Arreglomemoriascero~133_combout\,
	combout => \Arreglomemoriascero~361_combout\);

-- Location: LCCOMB_X24_Y5_N2
\Arreglomemoriascero~362\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~362_combout\ = (\Arreglomemoriascero[3]~40_combout\ & (((\Arreglomemoriascero~361_combout\)))) # (!\Arreglomemoriascero[3]~40_combout\ & ((\Arreglomemoriascero~361_combout\ & ((\Arreglomemoriascero~117_combout\))) # 
-- (!\Arreglomemoriascero~361_combout\ & (\Arreglomemoriascero~112_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero~112_combout\,
	datab => \Arreglomemoriascero~117_combout\,
	datac => \Arreglomemoriascero[3]~40_combout\,
	datad => \Arreglomemoriascero~361_combout\,
	combout => \Arreglomemoriascero~362_combout\);

-- Location: LCCOMB_X24_Y5_N0
\Arreglomemoriascero~363\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~363_combout\ = (\Arreglomemoriascero[3]~34_combout\ & (((!\Arreglomemoriascero[3]~28_combout\ & \Arreglomemoriascero~362_combout\)))) # (!\Arreglomemoriascero[3]~34_combout\ & ((\Arreglomemoriascero[39]~3_combout\) # 
-- ((\Arreglomemoriascero[3]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero[3]~34_combout\,
	datab => \Arreglomemoriascero[39]~3_combout\,
	datac => \Arreglomemoriascero[3]~28_combout\,
	datad => \Arreglomemoriascero~362_combout\,
	combout => \Arreglomemoriascero~363_combout\);

-- Location: LCCOMB_X24_Y5_N22
\Arreglomemoriascero~364\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~364_combout\ = (\Arreglomemoriascero[3]~28_combout\ & ((\Arreglomemoriascero~363_combout\ & (\Arreglomemoriascero~127_combout\)) # (!\Arreglomemoriascero~363_combout\ & ((\Arreglomemoriascero~140_combout\))))) # 
-- (!\Arreglomemoriascero[3]~28_combout\ & (((\Arreglomemoriascero~363_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero~127_combout\,
	datab => \Arreglomemoriascero[3]~28_combout\,
	datac => \Arreglomemoriascero~140_combout\,
	datad => \Arreglomemoriascero~363_combout\,
	combout => \Arreglomemoriascero~364_combout\);

-- Location: FF_X24_Y5_N11
\Arreglomemoriascero[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instancia1|salida~clkctrl_outclk\,
	d => \Arreglomemoriascero[3]~9_combout\,
	asdata => \Arreglomemoriascero~364_combout\,
	sload => \Arreglomemoriascero[3]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Arreglomemoriascero(3));

-- Location: LCCOMB_X25_Y5_N20
\Arreglomemoriascero~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~113_combout\ = (\Arreglomemoriascero~12_combout\ & (((\Arreglomemoriascero~13_combout\)))) # (!\Arreglomemoriascero~12_combout\ & ((\Arreglomemoriascero~13_combout\ & ((!Arreglomemoriascero(33)))) # (!\Arreglomemoriascero~13_combout\ 
-- & (!Arreglomemoriascero(45)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(45),
	datab => Arreglomemoriascero(33),
	datac => \Arreglomemoriascero~12_combout\,
	datad => \Arreglomemoriascero~13_combout\,
	combout => \Arreglomemoriascero~113_combout\);

-- Location: LCCOMB_X25_Y5_N26
\Arreglomemoriascero~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~114_combout\ = (\Arreglomemoriascero~12_combout\ & ((\Arreglomemoriascero~113_combout\ & ((Arreglomemoriascero(39)))) # (!\Arreglomemoriascero~113_combout\ & (Arreglomemoriascero(3))))) # (!\Arreglomemoriascero~12_combout\ & 
-- (((\Arreglomemoriascero~113_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(3),
	datab => Arreglomemoriascero(39),
	datac => \Arreglomemoriascero~12_combout\,
	datad => \Arreglomemoriascero~113_combout\,
	combout => \Arreglomemoriascero~114_combout\);

-- Location: LCCOMB_X25_Y5_N16
\Arreglomemoriascero~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~115_combout\ = (\Arreglomemoriascero~16_combout\ & (((\Arreglomemoriascero~17_combout\)))) # (!\Arreglomemoriascero~16_combout\ & ((\Arreglomemoriascero~17_combout\ & (!Arreglomemoriascero(21))) # (!\Arreglomemoriascero~17_combout\ & 
-- ((!Arreglomemoriascero(15))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero~16_combout\,
	datab => Arreglomemoriascero(21),
	datac => Arreglomemoriascero(15),
	datad => \Arreglomemoriascero~17_combout\,
	combout => \Arreglomemoriascero~115_combout\);

-- Location: LCCOMB_X25_Y5_N30
\Arreglomemoriascero~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~116_combout\ = (\Arreglomemoriascero~16_combout\ & ((\Arreglomemoriascero~115_combout\ & (!Arreglomemoriascero(9))) # (!\Arreglomemoriascero~115_combout\ & ((\Arreglomemoriascero~114_combout\))))) # (!\Arreglomemoriascero~16_combout\ 
-- & (((\Arreglomemoriascero~115_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero~16_combout\,
	datab => Arreglomemoriascero(9),
	datac => \Arreglomemoriascero~114_combout\,
	datad => \Arreglomemoriascero~115_combout\,
	combout => \Arreglomemoriascero~116_combout\);

-- Location: LCCOMB_X25_Y5_N0
\Arreglomemoriascero~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~117_combout\ = (\Arreglomemoriascero~22_combout\ & (!Arreglomemoriascero(27))) # (!\Arreglomemoriascero~22_combout\ & ((\Arreglomemoriascero~116_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(27),
	datac => \Arreglomemoriascero~116_combout\,
	datad => \Arreglomemoriascero~22_combout\,
	combout => \Arreglomemoriascero~117_combout\);

-- Location: LCCOMB_X23_Y5_N12
\Arreglomemoriascero~271\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~271_combout\ = (\Arreglomemoriascero[3]~45_combout\ & (((\Arreglomemoriascero[39]~3_combout\)) # (!\Arreglomemoriascero[3]~40_combout\))) # (!\Arreglomemoriascero[3]~45_combout\ & (\Arreglomemoriascero[3]~40_combout\ & 
-- (\Arreglomemoriascero~140_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero[3]~45_combout\,
	datab => \Arreglomemoriascero[3]~40_combout\,
	datac => \Arreglomemoriascero~140_combout\,
	datad => \Arreglomemoriascero[39]~3_combout\,
	combout => \Arreglomemoriascero~271_combout\);

-- Location: LCCOMB_X23_Y5_N10
\Arreglomemoriascero~272\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~272_combout\ = (\Arreglomemoriascero[3]~40_combout\ & (((\Arreglomemoriascero~271_combout\)))) # (!\Arreglomemoriascero[3]~40_combout\ & ((\Arreglomemoriascero~271_combout\ & ((\Arreglomemoriascero[3]~9_combout\))) # 
-- (!\Arreglomemoriascero~271_combout\ & (\Arreglomemoriascero~127_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero[3]~40_combout\,
	datab => \Arreglomemoriascero~127_combout\,
	datac => \Arreglomemoriascero[3]~9_combout\,
	datad => \Arreglomemoriascero~271_combout\,
	combout => \Arreglomemoriascero~272_combout\);

-- Location: LCCOMB_X23_Y5_N24
\Arreglomemoriascero~273\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~273_combout\ = (\Arreglomemoriascero[3]~34_combout\ & (!\Arreglomemoriascero[3]~28_combout\ & ((\Arreglomemoriascero~272_combout\)))) # (!\Arreglomemoriascero[3]~34_combout\ & ((\Arreglomemoriascero[3]~28_combout\) # 
-- ((\Arreglomemoriascero~133_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero[3]~34_combout\,
	datab => \Arreglomemoriascero[3]~28_combout\,
	datac => \Arreglomemoriascero~133_combout\,
	datad => \Arreglomemoriascero~272_combout\,
	combout => \Arreglomemoriascero~273_combout\);

-- Location: LCCOMB_X23_Y5_N30
\Arreglomemoriascero~274\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~274_combout\ = (\Arreglomemoriascero[3]~28_combout\ & ((\Arreglomemoriascero~273_combout\ & (\Arreglomemoriascero~112_combout\)) # (!\Arreglomemoriascero~273_combout\ & ((\Arreglomemoriascero~122_combout\))))) # 
-- (!\Arreglomemoriascero[3]~28_combout\ & (((\Arreglomemoriascero~273_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero~112_combout\,
	datab => \Arreglomemoriascero[3]~28_combout\,
	datac => \Arreglomemoriascero~122_combout\,
	datad => \Arreglomemoriascero~273_combout\,
	combout => \Arreglomemoriascero~274_combout\);

-- Location: LCCOMB_X23_Y7_N20
\Arreglomemoriascero~275\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~275_combout\ = (\Arreglomemoriascero[3]~65_combout\ & ((!\Arreglomemoriascero~274_combout\))) # (!\Arreglomemoriascero[3]~65_combout\ & (!\Arreglomemoriascero~117_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero~117_combout\,
	datac => \Arreglomemoriascero[3]~65_combout\,
	datad => \Arreglomemoriascero~274_combout\,
	combout => \Arreglomemoriascero~275_combout\);

-- Location: FF_X23_Y7_N21
\Arreglomemoriascero[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instancia1|salida~clkctrl_outclk\,
	d => \Arreglomemoriascero~275_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Arreglomemoriascero(27));

-- Location: LCCOMB_X23_Y5_N18
\Arreglomemoriascero~136\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~136_combout\ = (\Arreglomemoriascero~12_combout\ & (((\Arreglomemoriascero~13_combout\) # (!Arreglomemoriascero(9))))) # (!\Arreglomemoriascero~12_combout\ & (Arreglomemoriascero(3) & ((!\Arreglomemoriascero~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(3),
	datab => Arreglomemoriascero(9),
	datac => \Arreglomemoriascero~12_combout\,
	datad => \Arreglomemoriascero~13_combout\,
	combout => \Arreglomemoriascero~136_combout\);

-- Location: LCCOMB_X23_Y5_N28
\Arreglomemoriascero~137\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~137_combout\ = (\Arreglomemoriascero~13_combout\ & ((\Arreglomemoriascero~136_combout\ & (!Arreglomemoriascero(45))) # (!\Arreglomemoriascero~136_combout\ & ((Arreglomemoriascero(39)))))) # (!\Arreglomemoriascero~13_combout\ & 
-- (((\Arreglomemoriascero~136_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(45),
	datab => Arreglomemoriascero(39),
	datac => \Arreglomemoriascero~13_combout\,
	datad => \Arreglomemoriascero~136_combout\,
	combout => \Arreglomemoriascero~137_combout\);

-- Location: LCCOMB_X23_Y5_N2
\Arreglomemoriascero~138\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~138_combout\ = (\Arreglomemoriascero~16_combout\ & (((\Arreglomemoriascero~17_combout\) # (\Arreglomemoriascero~137_combout\)))) # (!\Arreglomemoriascero~16_combout\ & (!Arreglomemoriascero(21) & (!\Arreglomemoriascero~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero~16_combout\,
	datab => Arreglomemoriascero(21),
	datac => \Arreglomemoriascero~17_combout\,
	datad => \Arreglomemoriascero~137_combout\,
	combout => \Arreglomemoriascero~138_combout\);

-- Location: LCCOMB_X23_Y5_N20
\Arreglomemoriascero~139\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~139_combout\ = (\Arreglomemoriascero~17_combout\ & ((\Arreglomemoriascero~138_combout\ & (!Arreglomemoriascero(15))) # (!\Arreglomemoriascero~138_combout\ & ((!Arreglomemoriascero(27)))))) # (!\Arreglomemoriascero~17_combout\ & 
-- (((\Arreglomemoriascero~138_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(15),
	datab => Arreglomemoriascero(27),
	datac => \Arreglomemoriascero~17_combout\,
	datad => \Arreglomemoriascero~138_combout\,
	combout => \Arreglomemoriascero~139_combout\);

-- Location: LCCOMB_X23_Y5_N14
\Arreglomemoriascero~140\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~140_combout\ = (\Arreglomemoriascero~22_combout\ & (!Arreglomemoriascero(33))) # (!\Arreglomemoriascero~22_combout\ & ((\Arreglomemoriascero~139_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(33),
	datac => \Arreglomemoriascero~22_combout\,
	datad => \Arreglomemoriascero~139_combout\,
	combout => \Arreglomemoriascero~140_combout\);

-- Location: LCCOMB_X24_Y5_N16
\Arreglomemoriascero~301\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~301_combout\ = (\Arreglomemoriascero[3]~45_combout\ & (((\Arreglomemoriascero~127_combout\)) # (!\Arreglomemoriascero[3]~40_combout\))) # (!\Arreglomemoriascero[3]~45_combout\ & (\Arreglomemoriascero[3]~40_combout\ & 
-- ((\Arreglomemoriascero[39]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero[3]~45_combout\,
	datab => \Arreglomemoriascero[3]~40_combout\,
	datac => \Arreglomemoriascero~127_combout\,
	datad => \Arreglomemoriascero[39]~3_combout\,
	combout => \Arreglomemoriascero~301_combout\);

-- Location: LCCOMB_X24_Y5_N18
\Arreglomemoriascero~302\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~302_combout\ = (\Arreglomemoriascero[3]~40_combout\ & (((\Arreglomemoriascero~301_combout\)))) # (!\Arreglomemoriascero[3]~40_combout\ & ((\Arreglomemoriascero~301_combout\ & ((\Arreglomemoriascero~122_combout\))) # 
-- (!\Arreglomemoriascero~301_combout\ & (\Arreglomemoriascero[3]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero[3]~9_combout\,
	datab => \Arreglomemoriascero[3]~40_combout\,
	datac => \Arreglomemoriascero~122_combout\,
	datad => \Arreglomemoriascero~301_combout\,
	combout => \Arreglomemoriascero~302_combout\);

-- Location: LCCOMB_X24_Y5_N20
\Arreglomemoriascero~303\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~303_combout\ = (\Arreglomemoriascero[3]~28_combout\ & (((!\Arreglomemoriascero[3]~34_combout\)))) # (!\Arreglomemoriascero[3]~28_combout\ & ((\Arreglomemoriascero[3]~34_combout\ & ((\Arreglomemoriascero~302_combout\))) # 
-- (!\Arreglomemoriascero[3]~34_combout\ & (\Arreglomemoriascero~112_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero~112_combout\,
	datab => \Arreglomemoriascero[3]~28_combout\,
	datac => \Arreglomemoriascero[3]~34_combout\,
	datad => \Arreglomemoriascero~302_combout\,
	combout => \Arreglomemoriascero~303_combout\);

-- Location: LCCOMB_X24_Y5_N26
\Arreglomemoriascero~304\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~304_combout\ = (\Arreglomemoriascero[3]~28_combout\ & ((\Arreglomemoriascero~303_combout\ & ((\Arreglomemoriascero~117_combout\))) # (!\Arreglomemoriascero~303_combout\ & (\Arreglomemoriascero~133_combout\)))) # 
-- (!\Arreglomemoriascero[3]~28_combout\ & (((\Arreglomemoriascero~303_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero~133_combout\,
	datab => \Arreglomemoriascero~117_combout\,
	datac => \Arreglomemoriascero[3]~28_combout\,
	datad => \Arreglomemoriascero~303_combout\,
	combout => \Arreglomemoriascero~304_combout\);

-- Location: LCCOMB_X21_Y9_N18
\Arreglomemoriascero~305\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~305_combout\ = (\Arreglomemoriascero[3]~65_combout\ & ((!\Arreglomemoriascero~304_combout\))) # (!\Arreglomemoriascero[3]~65_combout\ & (!\Arreglomemoriascero~140_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero~140_combout\,
	datac => \Arreglomemoriascero[3]~65_combout\,
	datad => \Arreglomemoriascero~304_combout\,
	combout => \Arreglomemoriascero~305_combout\);

-- Location: FF_X21_Y9_N19
\Arreglomemoriascero[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instancia1|salida~clkctrl_outclk\,
	d => \Arreglomemoriascero~305_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Arreglomemoriascero(33));

-- Location: FF_X21_Y9_N27
\Arreglomemoriascopia3[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instancia1|salida~clkctrl_outclk\,
	d => \Arreglomemoriascopia3~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Arreglomemoriascopia3(33));

-- Location: LCCOMB_X21_Y9_N26
\Arreglomemoriascopia3~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascopia3~21_combout\ = (\DetectoTarjeta~input_o\ & ((\vuelta~q\ & ((Arreglomemoriascopia3(33)))) # (!\vuelta~q\ & (!Arreglomemoriascero(33))))) # (!\DetectoTarjeta~input_o\ & (((Arreglomemoriascopia3(33)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DetectoTarjeta~input_o\,
	datab => Arreglomemoriascero(33),
	datac => Arreglomemoriascopia3(33),
	datad => \vuelta~q\,
	combout => \Arreglomemoriascopia3~21_combout\);

-- Location: LCCOMB_X22_Y7_N26
\Equal22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal22~0_combout\ = (\Arreglomemoriascopia3~21_combout\) # ((\Arreglomemoriascopia3~18_combout\) # ((\Arreglomemoriascopia3~20_combout\) # (\Arreglomemoriascopia3~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascopia3~21_combout\,
	datab => \Arreglomemoriascopia3~18_combout\,
	datac => \Arreglomemoriascopia3~20_combout\,
	datad => \Arreglomemoriascopia3~19_combout\,
	combout => \Equal22~0_combout\);

-- Location: FF_X21_Y9_N5
\Arreglomemoriascopia3[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instancia1|salida~clkctrl_outclk\,
	d => \Arreglomemoriascopia3~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Arreglomemoriascopia3(34));

-- Location: LCCOMB_X21_Y9_N4
\Arreglomemoriascopia3~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascopia3~22_combout\ = (\DetectoTarjeta~input_o\ & ((\vuelta~q\ & ((Arreglomemoriascopia3(34)))) # (!\vuelta~q\ & (!Arreglomemoriascero(34))))) # (!\DetectoTarjeta~input_o\ & (((Arreglomemoriascopia3(34)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DetectoTarjeta~input_o\,
	datab => Arreglomemoriascero(34),
	datac => Arreglomemoriascopia3(34),
	datad => \vuelta~q\,
	combout => \Arreglomemoriascopia3~22_combout\);

-- Location: LCCOMB_X22_Y7_N0
\Equal22~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal22~1_combout\ = (\Arreglomemoriascopia3~22_combout\) # (\Arreglomemoriascopia3~23_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Arreglomemoriascopia3~22_combout\,
	datad => \Arreglomemoriascopia3~23_combout\,
	combout => \Equal22~1_combout\);

-- Location: LCCOMB_X19_Y8_N28
\Arreglomemoriascero~199\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~199_combout\ = (\Arreglomemoriascero~12_combout\ & (((\Arreglomemoriascero~13_combout\)))) # (!\Arreglomemoriascero~12_combout\ & ((\Arreglomemoriascero~13_combout\ & (!Arreglomemoriascero(11))) # (!\Arreglomemoriascero~13_combout\ & 
-- ((!Arreglomemoriascero(23))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(11),
	datab => Arreglomemoriascero(23),
	datac => \Arreglomemoriascero~12_combout\,
	datad => \Arreglomemoriascero~13_combout\,
	combout => \Arreglomemoriascero~199_combout\);

-- Location: LCCOMB_X19_Y8_N30
\Arreglomemoriascero~200\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~200_combout\ = (\Arreglomemoriascero~12_combout\ & ((\Arreglomemoriascero~199_combout\ & ((!Arreglomemoriascero(17)))) # (!\Arreglomemoriascero~199_combout\ & (!Arreglomemoriascero(29))))) # (!\Arreglomemoriascero~12_combout\ & 
-- (((\Arreglomemoriascero~199_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(29),
	datab => Arreglomemoriascero(17),
	datac => \Arreglomemoriascero~12_combout\,
	datad => \Arreglomemoriascero~199_combout\,
	combout => \Arreglomemoriascero~200_combout\);

-- Location: LCCOMB_X19_Y8_N16
\Arreglomemoriascero~201\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~201_combout\ = (\Arreglomemoriascero~16_combout\ & (((\Arreglomemoriascero~17_combout\)))) # (!\Arreglomemoriascero~16_combout\ & ((\Arreglomemoriascero~17_combout\ & ((!Arreglomemoriascero(47)))) # (!\Arreglomemoriascero~17_combout\ 
-- & (Arreglomemoriascero(41)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(41),
	datab => Arreglomemoriascero(47),
	datac => \Arreglomemoriascero~16_combout\,
	datad => \Arreglomemoriascero~17_combout\,
	combout => \Arreglomemoriascero~201_combout\);

-- Location: LCCOMB_X19_Y8_N22
\Arreglomemoriascero~202\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~202_combout\ = (\Arreglomemoriascero~16_combout\ & ((\Arreglomemoriascero~201_combout\ & (!Arreglomemoriascero(35))) # (!\Arreglomemoriascero~201_combout\ & ((\Arreglomemoriascero~200_combout\))))) # (!\Arreglomemoriascero~16_combout\ 
-- & (((\Arreglomemoriascero~201_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(35),
	datab => \Arreglomemoriascero~16_combout\,
	datac => \Arreglomemoriascero~200_combout\,
	datad => \Arreglomemoriascero~201_combout\,
	combout => \Arreglomemoriascero~202_combout\);

-- Location: LCCOMB_X19_Y8_N10
\Arreglomemoriascero[5]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero[5]~11_combout\ = (\Arreglomemoriascero~22_combout\ & (Arreglomemoriascero(5))) # (!\Arreglomemoriascero~22_combout\ & ((\Arreglomemoriascero~202_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(5),
	datac => \Arreglomemoriascero~202_combout\,
	datad => \Arreglomemoriascero~22_combout\,
	combout => \Arreglomemoriascero[5]~11_combout\);

-- Location: LCCOMB_X19_Y8_N12
\Arreglomemoriascero[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero[5]~feeder_combout\ = \Arreglomemoriascero[5]~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Arreglomemoriascero[5]~11_combout\,
	combout => \Arreglomemoriascero[5]~feeder_combout\);

-- Location: LCCOMB_X24_Y7_N8
\Arreglomemoriascero~203\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~203_combout\ = (\Arreglomemoriascero~47_combout\ & ((\IDentrada~4_combout\))) # (!\Arreglomemoriascero~47_combout\ & (!Arreglomemoriascero(47)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(47),
	datac => \IDentrada~4_combout\,
	datad => \Arreglomemoriascero~47_combout\,
	combout => \Arreglomemoriascero~203_combout\);

-- Location: LCCOMB_X18_Y8_N18
\Arreglomemoriascero~184\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~184_combout\ = (\Arreglomemoriascero~13_combout\ & (((\Arreglomemoriascero~12_combout\)))) # (!\Arreglomemoriascero~13_combout\ & ((\Arreglomemoriascero~12_combout\ & ((!Arreglomemoriascero(47)))) # (!\Arreglomemoriascero~12_combout\ 
-- & (Arreglomemoriascero(41)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(41),
	datab => \Arreglomemoriascero~13_combout\,
	datac => \Arreglomemoriascero~12_combout\,
	datad => Arreglomemoriascero(47),
	combout => \Arreglomemoriascero~184_combout\);

-- Location: LCCOMB_X18_Y8_N16
\Arreglomemoriascero~185\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~185_combout\ = (\Arreglomemoriascero~13_combout\ & ((\Arreglomemoriascero~184_combout\ & (!Arreglomemoriascero(35))) # (!\Arreglomemoriascero~184_combout\ & ((!Arreglomemoriascero(29)))))) # (!\Arreglomemoriascero~13_combout\ & 
-- (((\Arreglomemoriascero~184_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(35),
	datab => Arreglomemoriascero(29),
	datac => \Arreglomemoriascero~13_combout\,
	datad => \Arreglomemoriascero~184_combout\,
	combout => \Arreglomemoriascero~185_combout\);

-- Location: LCCOMB_X18_Y8_N6
\Arreglomemoriascero~186\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~186_combout\ = (\Arreglomemoriascero~17_combout\ & (((\Arreglomemoriascero~16_combout\)))) # (!\Arreglomemoriascero~17_combout\ & ((\Arreglomemoriascero~16_combout\ & ((\Arreglomemoriascero~185_combout\))) # 
-- (!\Arreglomemoriascero~16_combout\ & (!Arreglomemoriascero(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000110100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero~17_combout\,
	datab => Arreglomemoriascero(11),
	datac => \Arreglomemoriascero~16_combout\,
	datad => \Arreglomemoriascero~185_combout\,
	combout => \Arreglomemoriascero~186_combout\);

-- Location: LCCOMB_X18_Y8_N20
\Arreglomemoriascero~187\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~187_combout\ = (\Arreglomemoriascero~17_combout\ & ((\Arreglomemoriascero~186_combout\ & ((Arreglomemoriascero(5)))) # (!\Arreglomemoriascero~186_combout\ & (!Arreglomemoriascero(17))))) # (!\Arreglomemoriascero~17_combout\ & 
-- (((\Arreglomemoriascero~186_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(17),
	datab => Arreglomemoriascero(5),
	datac => \Arreglomemoriascero~17_combout\,
	datad => \Arreglomemoriascero~186_combout\,
	combout => \Arreglomemoriascero~187_combout\);

-- Location: LCCOMB_X18_Y8_N22
\Arreglomemoriascero~188\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~188_combout\ = (\Arreglomemoriascero~22_combout\ & (!Arreglomemoriascero(23))) # (!\Arreglomemoriascero~22_combout\ & ((\Arreglomemoriascero~187_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(23),
	datac => \Arreglomemoriascero~22_combout\,
	datad => \Arreglomemoriascero~187_combout\,
	combout => \Arreglomemoriascero~188_combout\);

-- Location: LCCOMB_X18_Y8_N30
\Arreglomemoriascero~369\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~369_combout\ = (\Arreglomemoriascero[3]~45_combout\ & (((\Arreglomemoriascero~209_combout\)) # (!\Arreglomemoriascero[3]~40_combout\))) # (!\Arreglomemoriascero[3]~45_combout\ & (\Arreglomemoriascero[3]~40_combout\ & 
-- (\Arreglomemoriascero~198_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero[3]~45_combout\,
	datab => \Arreglomemoriascero[3]~40_combout\,
	datac => \Arreglomemoriascero~198_combout\,
	datad => \Arreglomemoriascero~209_combout\,
	combout => \Arreglomemoriascero~369_combout\);

-- Location: LCCOMB_X19_Y8_N18
\Arreglomemoriascero~370\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~370_combout\ = (\Arreglomemoriascero[3]~40_combout\ & (((\Arreglomemoriascero~369_combout\)))) # (!\Arreglomemoriascero[3]~40_combout\ & ((\Arreglomemoriascero~369_combout\ & ((\Arreglomemoriascero~193_combout\))) # 
-- (!\Arreglomemoriascero~369_combout\ & (\Arreglomemoriascero~188_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero[3]~40_combout\,
	datab => \Arreglomemoriascero~188_combout\,
	datac => \Arreglomemoriascero~193_combout\,
	datad => \Arreglomemoriascero~369_combout\,
	combout => \Arreglomemoriascero~370_combout\);

-- Location: LCCOMB_X19_Y8_N24
\Arreglomemoriascero~371\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~371_combout\ = (\Arreglomemoriascero[3]~28_combout\ & (!\Arreglomemoriascero[3]~34_combout\)) # (!\Arreglomemoriascero[3]~28_combout\ & ((\Arreglomemoriascero[3]~34_combout\ & ((\Arreglomemoriascero~370_combout\))) # 
-- (!\Arreglomemoriascero[3]~34_combout\ & (\Arreglomemoriascero[41]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero[3]~28_combout\,
	datab => \Arreglomemoriascero[3]~34_combout\,
	datac => \Arreglomemoriascero[41]~5_combout\,
	datad => \Arreglomemoriascero~370_combout\,
	combout => \Arreglomemoriascero~371_combout\);

-- Location: LCCOMB_X19_Y8_N26
\Arreglomemoriascero~372\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~372_combout\ = (\Arreglomemoriascero[3]~28_combout\ & ((\Arreglomemoriascero~371_combout\ & (\Arreglomemoriascero~203_combout\)) # (!\Arreglomemoriascero~371_combout\ & ((\Arreglomemoriascero~216_combout\))))) # 
-- (!\Arreglomemoriascero[3]~28_combout\ & (((\Arreglomemoriascero~371_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero[3]~28_combout\,
	datab => \Arreglomemoriascero~203_combout\,
	datac => \Arreglomemoriascero~216_combout\,
	datad => \Arreglomemoriascero~371_combout\,
	combout => \Arreglomemoriascero~372_combout\);

-- Location: FF_X19_Y8_N13
\Arreglomemoriascero[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instancia1|salida~clkctrl_outclk\,
	d => \Arreglomemoriascero[5]~feeder_combout\,
	asdata => \Arreglomemoriascero~372_combout\,
	sload => \Arreglomemoriascero[3]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Arreglomemoriascero(5));

-- Location: LCCOMB_X18_Y9_N22
\Arreglomemoriascero~189\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~189_combout\ = (\Arreglomemoriascero~12_combout\ & (((\Arreglomemoriascero~13_combout\)))) # (!\Arreglomemoriascero~12_combout\ & ((\Arreglomemoriascero~13_combout\ & (!Arreglomemoriascero(35))) # (!\Arreglomemoriascero~13_combout\ & 
-- ((!Arreglomemoriascero(47))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(35),
	datab => Arreglomemoriascero(47),
	datac => \Arreglomemoriascero~12_combout\,
	datad => \Arreglomemoriascero~13_combout\,
	combout => \Arreglomemoriascero~189_combout\);

-- Location: LCCOMB_X18_Y9_N24
\Arreglomemoriascero~190\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~190_combout\ = (\Arreglomemoriascero~189_combout\ & ((Arreglomemoriascero(41)) # ((!\Arreglomemoriascero~12_combout\)))) # (!\Arreglomemoriascero~189_combout\ & (((Arreglomemoriascero(5) & \Arreglomemoriascero~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(41),
	datab => Arreglomemoriascero(5),
	datac => \Arreglomemoriascero~189_combout\,
	datad => \Arreglomemoriascero~12_combout\,
	combout => \Arreglomemoriascero~190_combout\);

-- Location: LCCOMB_X18_Y9_N10
\Arreglomemoriascero~191\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~191_combout\ = (\Arreglomemoriascero~17_combout\ & (((\Arreglomemoriascero~16_combout\)))) # (!\Arreglomemoriascero~17_combout\ & ((\Arreglomemoriascero~16_combout\ & ((\Arreglomemoriascero~190_combout\))) # 
-- (!\Arreglomemoriascero~16_combout\ & (!Arreglomemoriascero(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(17),
	datab => \Arreglomemoriascero~17_combout\,
	datac => \Arreglomemoriascero~16_combout\,
	datad => \Arreglomemoriascero~190_combout\,
	combout => \Arreglomemoriascero~191_combout\);

-- Location: LCCOMB_X18_Y9_N16
\Arreglomemoriascero~192\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~192_combout\ = (\Arreglomemoriascero~17_combout\ & ((\Arreglomemoriascero~191_combout\ & (!Arreglomemoriascero(11))) # (!\Arreglomemoriascero~191_combout\ & ((!Arreglomemoriascero(23)))))) # (!\Arreglomemoriascero~17_combout\ & 
-- (((\Arreglomemoriascero~191_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(11),
	datab => \Arreglomemoriascero~17_combout\,
	datac => Arreglomemoriascero(23),
	datad => \Arreglomemoriascero~191_combout\,
	combout => \Arreglomemoriascero~192_combout\);

-- Location: LCCOMB_X18_Y9_N6
\Arreglomemoriascero~193\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~193_combout\ = (\Arreglomemoriascero~22_combout\ & (!Arreglomemoriascero(29))) # (!\Arreglomemoriascero~22_combout\ & ((\Arreglomemoriascero~192_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(29),
	datac => \Arreglomemoriascero~22_combout\,
	datad => \Arreglomemoriascero~192_combout\,
	combout => \Arreglomemoriascero~193_combout\);

-- Location: LCCOMB_X18_Y7_N18
\Arreglomemoriascero~281\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~281_combout\ = (\Arreglomemoriascero[3]~40_combout\ & ((\Arreglomemoriascero[3]~45_combout\ & (\Arreglomemoriascero[41]~5_combout\)) # (!\Arreglomemoriascero[3]~45_combout\ & ((\Arreglomemoriascero~216_combout\))))) # 
-- (!\Arreglomemoriascero[3]~40_combout\ & (((\Arreglomemoriascero[3]~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero[41]~5_combout\,
	datab => \Arreglomemoriascero[3]~40_combout\,
	datac => \Arreglomemoriascero[3]~45_combout\,
	datad => \Arreglomemoriascero~216_combout\,
	combout => \Arreglomemoriascero~281_combout\);

-- Location: LCCOMB_X18_Y7_N0
\Arreglomemoriascero~282\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~282_combout\ = (\Arreglomemoriascero[3]~40_combout\ & (((\Arreglomemoriascero~281_combout\)))) # (!\Arreglomemoriascero[3]~40_combout\ & ((\Arreglomemoriascero~281_combout\ & ((\Arreglomemoriascero[5]~11_combout\))) # 
-- (!\Arreglomemoriascero~281_combout\ & (\Arreglomemoriascero~203_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero~203_combout\,
	datab => \Arreglomemoriascero[3]~40_combout\,
	datac => \Arreglomemoriascero[5]~11_combout\,
	datad => \Arreglomemoriascero~281_combout\,
	combout => \Arreglomemoriascero~282_combout\);

-- Location: LCCOMB_X18_Y7_N10
\Arreglomemoriascero~283\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~283_combout\ = (\Arreglomemoriascero[3]~28_combout\ & (!\Arreglomemoriascero[3]~34_combout\)) # (!\Arreglomemoriascero[3]~28_combout\ & ((\Arreglomemoriascero[3]~34_combout\ & ((\Arreglomemoriascero~282_combout\))) # 
-- (!\Arreglomemoriascero[3]~34_combout\ & (\Arreglomemoriascero~209_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero[3]~28_combout\,
	datab => \Arreglomemoriascero[3]~34_combout\,
	datac => \Arreglomemoriascero~209_combout\,
	datad => \Arreglomemoriascero~282_combout\,
	combout => \Arreglomemoriascero~283_combout\);

-- Location: LCCOMB_X18_Y7_N28
\Arreglomemoriascero~284\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~284_combout\ = (\Arreglomemoriascero[3]~28_combout\ & ((\Arreglomemoriascero~283_combout\ & (\Arreglomemoriascero~188_combout\)) # (!\Arreglomemoriascero~283_combout\ & ((\Arreglomemoriascero~198_combout\))))) # 
-- (!\Arreglomemoriascero[3]~28_combout\ & (((\Arreglomemoriascero~283_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero~188_combout\,
	datab => \Arreglomemoriascero~198_combout\,
	datac => \Arreglomemoriascero[3]~28_combout\,
	datad => \Arreglomemoriascero~283_combout\,
	combout => \Arreglomemoriascero~284_combout\);

-- Location: LCCOMB_X18_Y7_N16
\Arreglomemoriascero~285\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~285_combout\ = (\Arreglomemoriascero[3]~65_combout\ & ((!\Arreglomemoriascero~284_combout\))) # (!\Arreglomemoriascero[3]~65_combout\ & (!\Arreglomemoriascero~193_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero[3]~65_combout\,
	datab => \Arreglomemoriascero~193_combout\,
	datad => \Arreglomemoriascero~284_combout\,
	combout => \Arreglomemoriascero~285_combout\);

-- Location: FF_X18_Y7_N17
\Arreglomemoriascero[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instancia1|salida~clkctrl_outclk\,
	d => \Arreglomemoriascero~285_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Arreglomemoriascero(29));

-- Location: FF_X22_Y7_N23
\Arreglomemoriascopia3[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instancia1|salida~clkctrl_outclk\,
	d => \Arreglomemoriascopia3~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Arreglomemoriascopia3(29));

-- Location: LCCOMB_X22_Y7_N22
\Arreglomemoriascopia3~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascopia3~35_combout\ = (\DetectoTarjeta~input_o\ & ((\vuelta~q\ & ((Arreglomemoriascopia3(29)))) # (!\vuelta~q\ & (!Arreglomemoriascero(29))))) # (!\DetectoTarjeta~input_o\ & (((Arreglomemoriascopia3(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(29),
	datab => \DetectoTarjeta~input_o\,
	datac => Arreglomemoriascopia3(29),
	datad => \vuelta~q\,
	combout => \Arreglomemoriascopia3~35_combout\);

-- Location: FF_X23_Y9_N5
\Arreglomemoriascopia3[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instancia1|salida~clkctrl_outclk\,
	d => \Arreglomemoriascopia3~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Arreglomemoriascopia3(28));

-- Location: LCCOMB_X23_Y9_N4
\Arreglomemoriascopia3~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascopia3~34_combout\ = (\vuelta~q\ & (((Arreglomemoriascopia3(28))))) # (!\vuelta~q\ & ((\DetectoTarjeta~input_o\ & ((!Arreglomemoriascero(28)))) # (!\DetectoTarjeta~input_o\ & (Arreglomemoriascopia3(28)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vuelta~q\,
	datab => \DetectoTarjeta~input_o\,
	datac => Arreglomemoriascopia3(28),
	datad => Arreglomemoriascero(28),
	combout => \Arreglomemoriascopia3~34_combout\);

-- Location: FF_X23_Y7_N31
\Arreglomemoriascopia3[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instancia1|salida~clkctrl_outclk\,
	d => \Arreglomemoriascopia3~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Arreglomemoriascopia3(26));

-- Location: LCCOMB_X23_Y7_N30
\Arreglomemoriascopia3~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascopia3~32_combout\ = (\DetectoTarjeta~input_o\ & ((\vuelta~q\ & ((Arreglomemoriascopia3(26)))) # (!\vuelta~q\ & (!Arreglomemoriascero(26))))) # (!\DetectoTarjeta~input_o\ & (((Arreglomemoriascopia3(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DetectoTarjeta~input_o\,
	datab => Arreglomemoriascero(26),
	datac => Arreglomemoriascopia3(26),
	datad => \vuelta~q\,
	combout => \Arreglomemoriascopia3~32_combout\);

-- Location: FF_X23_Y7_N1
\Arreglomemoriascopia3[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instancia1|salida~clkctrl_outclk\,
	d => \Arreglomemoriascopia3~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Arreglomemoriascopia3(27));

-- Location: LCCOMB_X23_Y7_N0
\Arreglomemoriascopia3~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascopia3~33_combout\ = (\DetectoTarjeta~input_o\ & ((\vuelta~q\ & ((Arreglomemoriascopia3(27)))) # (!\vuelta~q\ & (!Arreglomemoriascero(27))))) # (!\DetectoTarjeta~input_o\ & (((Arreglomemoriascopia3(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DetectoTarjeta~input_o\,
	datab => Arreglomemoriascero(27),
	datac => Arreglomemoriascopia3(27),
	datad => \vuelta~q\,
	combout => \Arreglomemoriascopia3~33_combout\);

-- Location: FF_X23_Y4_N9
\Arreglomemoriascopia3[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instancia1|salida~clkctrl_outclk\,
	d => \Arreglomemoriascopia3~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Arreglomemoriascopia3(24));

-- Location: LCCOMB_X23_Y4_N8
\Arreglomemoriascopia3~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascopia3~30_combout\ = (\DetectoTarjeta~input_o\ & ((\vuelta~q\ & ((Arreglomemoriascopia3(24)))) # (!\vuelta~q\ & (!Arreglomemoriascero(24))))) # (!\DetectoTarjeta~input_o\ & (((Arreglomemoriascopia3(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(24),
	datab => \DetectoTarjeta~input_o\,
	datac => Arreglomemoriascopia3(24),
	datad => \vuelta~q\,
	combout => \Arreglomemoriascopia3~30_combout\);

-- Location: LCCOMB_X22_Y7_N12
\Equal23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal23~0_combout\ = (\Arreglomemoriascopia3~32_combout\) # ((\Arreglomemoriascopia3~31_combout\) # ((\Arreglomemoriascopia3~33_combout\) # (\Arreglomemoriascopia3~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascopia3~32_combout\,
	datab => \Arreglomemoriascopia3~31_combout\,
	datac => \Arreglomemoriascopia3~33_combout\,
	datad => \Arreglomemoriascopia3~30_combout\,
	combout => \Equal23~0_combout\);

-- Location: LCCOMB_X22_Y7_N8
\Equal23~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal23~1_combout\ = (\Arreglomemoriascopia3~35_combout\) # ((\Arreglomemoriascopia3~34_combout\) # (\Equal23~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascopia3~35_combout\,
	datac => \Arreglomemoriascopia3~34_combout\,
	datad => \Equal23~0_combout\,
	combout => \Equal23~1_combout\);

-- Location: LCCOMB_X22_Y7_N20
\Equal21~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal21~2_combout\ = (!\Arreglomemoriascopia3~28_combout\ & (!\Arreglomemoriascopia3~29_combout\ & \Equal21~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascopia3~28_combout\,
	datac => \Arreglomemoriascopia3~29_combout\,
	datad => \Equal21~0_combout\,
	combout => \Equal21~2_combout\);

-- Location: LCCOMB_X22_Y7_N30
\Arreglomemoriascero~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~17_combout\ = (\Equal21~2_combout\) # ((!\Equal23~1_combout\ & ((\Equal22~0_combout\) # (\Equal22~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal22~0_combout\,
	datab => \Equal22~1_combout\,
	datac => \Equal23~1_combout\,
	datad => \Equal21~2_combout\,
	combout => \Arreglomemoriascero~17_combout\);

-- Location: LCCOMB_X21_Y5_N4
\Arreglomemoriascero~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~108_combout\ = (\Arreglomemoriascero~13_combout\ & (((\Arreglomemoriascero~12_combout\)))) # (!\Arreglomemoriascero~13_combout\ & ((\Arreglomemoriascero~12_combout\ & (!Arreglomemoriascero(45))) # (!\Arreglomemoriascero~12_combout\ & 
-- ((Arreglomemoriascero(39))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(45),
	datab => \Arreglomemoriascero~13_combout\,
	datac => Arreglomemoriascero(39),
	datad => \Arreglomemoriascero~12_combout\,
	combout => \Arreglomemoriascero~108_combout\);

-- Location: LCCOMB_X21_Y5_N14
\Arreglomemoriascero~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~109_combout\ = (\Arreglomemoriascero~108_combout\ & (((!\Arreglomemoriascero~13_combout\) # (!Arreglomemoriascero(33))))) # (!\Arreglomemoriascero~108_combout\ & (!Arreglomemoriascero(27) & ((\Arreglomemoriascero~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(27),
	datab => Arreglomemoriascero(33),
	datac => \Arreglomemoriascero~108_combout\,
	datad => \Arreglomemoriascero~13_combout\,
	combout => \Arreglomemoriascero~109_combout\);

-- Location: LCCOMB_X21_Y5_N12
\Arreglomemoriascero~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~110_combout\ = (\Arreglomemoriascero~16_combout\ & (((\Arreglomemoriascero~109_combout\) # (\Arreglomemoriascero~17_combout\)))) # (!\Arreglomemoriascero~16_combout\ & (!Arreglomemoriascero(9) & ((!\Arreglomemoriascero~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero~16_combout\,
	datab => Arreglomemoriascero(9),
	datac => \Arreglomemoriascero~109_combout\,
	datad => \Arreglomemoriascero~17_combout\,
	combout => \Arreglomemoriascero~110_combout\);

-- Location: LCCOMB_X21_Y5_N2
\Arreglomemoriascero~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~111_combout\ = (\Arreglomemoriascero~17_combout\ & ((\Arreglomemoriascero~110_combout\ & ((Arreglomemoriascero(3)))) # (!\Arreglomemoriascero~110_combout\ & (!Arreglomemoriascero(15))))) # (!\Arreglomemoriascero~17_combout\ & 
-- (((\Arreglomemoriascero~110_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(15),
	datab => \Arreglomemoriascero~17_combout\,
	datac => Arreglomemoriascero(3),
	datad => \Arreglomemoriascero~110_combout\,
	combout => \Arreglomemoriascero~111_combout\);

-- Location: LCCOMB_X21_Y5_N0
\Arreglomemoriascero~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~112_combout\ = (\Arreglomemoriascero~22_combout\ & (!Arreglomemoriascero(21))) # (!\Arreglomemoriascero~22_combout\ & ((\Arreglomemoriascero~111_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => Arreglomemoriascero(21),
	datac => \Arreglomemoriascero~22_combout\,
	datad => \Arreglomemoriascero~111_combout\,
	combout => \Arreglomemoriascero~112_combout\);

-- Location: LCCOMB_X23_Y5_N8
\Arreglomemoriascero~392\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~392_combout\ = (\Arreglomemoriascero[3]~45_combout\ & ((\Arreglomemoriascero~140_combout\) # ((!\Arreglomemoriascero[3]~40_combout\)))) # (!\Arreglomemoriascero[3]~45_combout\ & (((\Arreglomemoriascero~117_combout\ & 
-- \Arreglomemoriascero[3]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero[3]~45_combout\,
	datab => \Arreglomemoriascero~140_combout\,
	datac => \Arreglomemoriascero~117_combout\,
	datad => \Arreglomemoriascero[3]~40_combout\,
	combout => \Arreglomemoriascero~392_combout\);

-- Location: LCCOMB_X23_Y5_N26
\Arreglomemoriascero~393\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~393_combout\ = (\Arreglomemoriascero[3]~40_combout\ & (((\Arreglomemoriascero~392_combout\)))) # (!\Arreglomemoriascero[3]~40_combout\ & ((\Arreglomemoriascero~392_combout\ & (\Arreglomemoriascero~127_combout\)) # 
-- (!\Arreglomemoriascero~392_combout\ & ((\Arreglomemoriascero[39]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero[3]~40_combout\,
	datab => \Arreglomemoriascero~127_combout\,
	datac => \Arreglomemoriascero~392_combout\,
	datad => \Arreglomemoriascero[39]~3_combout\,
	combout => \Arreglomemoriascero~393_combout\);

-- Location: LCCOMB_X23_Y5_N0
\Arreglomemoriascero~394\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~394_combout\ = (\Arreglomemoriascero[3]~34_combout\ & (((\Arreglomemoriascero~393_combout\ & !\Arreglomemoriascero[3]~28_combout\)))) # (!\Arreglomemoriascero[3]~34_combout\ & ((\Arreglomemoriascero~122_combout\) # 
-- ((\Arreglomemoriascero[3]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero[3]~34_combout\,
	datab => \Arreglomemoriascero~122_combout\,
	datac => \Arreglomemoriascero~393_combout\,
	datad => \Arreglomemoriascero[3]~28_combout\,
	combout => \Arreglomemoriascero~394_combout\);

-- Location: LCCOMB_X23_Y5_N6
\Arreglomemoriascero~395\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~395_combout\ = (\Arreglomemoriascero[3]~28_combout\ & ((\Arreglomemoriascero~394_combout\ & (\Arreglomemoriascero~133_combout\)) # (!\Arreglomemoriascero~394_combout\ & ((\Arreglomemoriascero[3]~9_combout\))))) # 
-- (!\Arreglomemoriascero[3]~28_combout\ & (((\Arreglomemoriascero~394_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero~133_combout\,
	datab => \Arreglomemoriascero[3]~28_combout\,
	datac => \Arreglomemoriascero[3]~9_combout\,
	datad => \Arreglomemoriascero~394_combout\,
	combout => \Arreglomemoriascero~395_combout\);

-- Location: LCCOMB_X23_Y5_N4
\Arreglomemoriascero~396\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~396_combout\ = (\Arreglomemoriascero[3]~65_combout\ & ((!\Arreglomemoriascero~395_combout\))) # (!\Arreglomemoriascero[3]~65_combout\ & (!\Arreglomemoriascero~112_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero~112_combout\,
	datab => \Arreglomemoriascero[3]~65_combout\,
	datad => \Arreglomemoriascero~395_combout\,
	combout => \Arreglomemoriascero~396_combout\);

-- Location: FF_X23_Y5_N5
\Arreglomemoriascero[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instancia1|salida~clkctrl_outclk\,
	d => \Arreglomemoriascero~396_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Arreglomemoriascero(21));

-- Location: LCCOMB_X25_Y5_N8
\Arreglomemoriascero~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~104_combout\ = (\Arreglomemoriascero~12_combout\ & (((\Arreglomemoriascero~13_combout\)))) # (!\Arreglomemoriascero~12_combout\ & ((\Arreglomemoriascero~13_combout\ & ((!Arreglomemoriascero(45)))) # (!\Arreglomemoriascero~13_combout\ 
-- & (!Arreglomemoriascero(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(9),
	datab => Arreglomemoriascero(45),
	datac => \Arreglomemoriascero~12_combout\,
	datad => \Arreglomemoriascero~13_combout\,
	combout => \Arreglomemoriascero~104_combout\);

-- Location: LCCOMB_X25_Y5_N14
\Arreglomemoriascero~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~105_combout\ = (\Arreglomemoriascero~12_combout\ & ((\Arreglomemoriascero~104_combout\ & ((Arreglomemoriascero(3)))) # (!\Arreglomemoriascero~104_combout\ & (!Arreglomemoriascero(15))))) # (!\Arreglomemoriascero~12_combout\ & 
-- (((\Arreglomemoriascero~104_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero~12_combout\,
	datab => Arreglomemoriascero(15),
	datac => \Arreglomemoriascero~104_combout\,
	datad => Arreglomemoriascero(3),
	combout => \Arreglomemoriascero~105_combout\);

-- Location: LCCOMB_X25_Y5_N28
\Arreglomemoriascero~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~106_combout\ = (\Arreglomemoriascero~16_combout\ & (((\Arreglomemoriascero~17_combout\)))) # (!\Arreglomemoriascero~16_combout\ & ((\Arreglomemoriascero~17_combout\ & ((!Arreglomemoriascero(33)))) # (!\Arreglomemoriascero~17_combout\ 
-- & (!Arreglomemoriascero(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(27),
	datab => Arreglomemoriascero(33),
	datac => \Arreglomemoriascero~16_combout\,
	datad => \Arreglomemoriascero~17_combout\,
	combout => \Arreglomemoriascero~106_combout\);

-- Location: LCCOMB_X25_Y5_N6
\Arreglomemoriascero~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~107_combout\ = (\Arreglomemoriascero~16_combout\ & ((\Arreglomemoriascero~106_combout\ & (!Arreglomemoriascero(21))) # (!\Arreglomemoriascero~106_combout\ & ((\Arreglomemoriascero~105_combout\))))) # (!\Arreglomemoriascero~16_combout\ 
-- & (((\Arreglomemoriascero~106_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero~16_combout\,
	datab => Arreglomemoriascero(21),
	datac => \Arreglomemoriascero~105_combout\,
	datad => \Arreglomemoriascero~106_combout\,
	combout => \Arreglomemoriascero~107_combout\);

-- Location: LCCOMB_X24_Y5_N24
\Arreglomemoriascero[39]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero[39]~3_combout\ = (\Arreglomemoriascero~22_combout\ & (Arreglomemoriascero(39))) # (!\Arreglomemoriascero~22_combout\ & ((\Arreglomemoriascero~107_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero~22_combout\,
	datac => Arreglomemoriascero(39),
	datad => \Arreglomemoriascero~107_combout\,
	combout => \Arreglomemoriascero[39]~3_combout\);

-- Location: LCCOMB_X24_Y5_N4
\Arreglomemoriascero~128\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~128_combout\ = (\Arreglomemoriascero[3]~45_combout\ & (((\Arreglomemoriascero[3]~9_combout\)) # (!\Arreglomemoriascero[3]~40_combout\))) # (!\Arreglomemoriascero[3]~45_combout\ & (\Arreglomemoriascero[3]~40_combout\ & 
-- (\Arreglomemoriascero~127_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero[3]~45_combout\,
	datab => \Arreglomemoriascero[3]~40_combout\,
	datac => \Arreglomemoriascero~127_combout\,
	datad => \Arreglomemoriascero[3]~9_combout\,
	combout => \Arreglomemoriascero~128_combout\);

-- Location: LCCOMB_X24_Y5_N6
\Arreglomemoriascero~134\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~134_combout\ = (\Arreglomemoriascero[3]~40_combout\ & (((\Arreglomemoriascero~128_combout\)))) # (!\Arreglomemoriascero[3]~40_combout\ & ((\Arreglomemoriascero~128_combout\ & ((\Arreglomemoriascero~133_combout\))) # 
-- (!\Arreglomemoriascero~128_combout\ & (\Arreglomemoriascero~122_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero[3]~40_combout\,
	datab => \Arreglomemoriascero~122_combout\,
	datac => \Arreglomemoriascero~128_combout\,
	datad => \Arreglomemoriascero~133_combout\,
	combout => \Arreglomemoriascero~134_combout\);

-- Location: LCCOMB_X24_Y5_N28
\Arreglomemoriascero~135\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~135_combout\ = (\Arreglomemoriascero[3]~34_combout\ & (!\Arreglomemoriascero[3]~28_combout\ & ((\Arreglomemoriascero~134_combout\)))) # (!\Arreglomemoriascero[3]~34_combout\ & ((\Arreglomemoriascero[3]~28_combout\) # 
-- ((\Arreglomemoriascero~117_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero[3]~34_combout\,
	datab => \Arreglomemoriascero[3]~28_combout\,
	datac => \Arreglomemoriascero~117_combout\,
	datad => \Arreglomemoriascero~134_combout\,
	combout => \Arreglomemoriascero~135_combout\);

-- Location: LCCOMB_X24_Y5_N30
\Arreglomemoriascero~141\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~141_combout\ = (\Arreglomemoriascero[3]~28_combout\ & ((\Arreglomemoriascero~135_combout\ & ((\Arreglomemoriascero~140_combout\))) # (!\Arreglomemoriascero~135_combout\ & (\Arreglomemoriascero~112_combout\)))) # 
-- (!\Arreglomemoriascero[3]~28_combout\ & (((\Arreglomemoriascero~135_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero~112_combout\,
	datab => \Arreglomemoriascero[3]~28_combout\,
	datac => \Arreglomemoriascero~140_combout\,
	datad => \Arreglomemoriascero~135_combout\,
	combout => \Arreglomemoriascero~141_combout\);

-- Location: FF_X24_Y5_N25
\Arreglomemoriascero[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instancia1|salida~clkctrl_outclk\,
	d => \Arreglomemoriascero[39]~3_combout\,
	asdata => \Arreglomemoriascero~141_combout\,
	sload => \Arreglomemoriascero[3]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Arreglomemoriascero(39));

-- Location: LCCOMB_X23_Y5_N16
\Arreglomemoriascero~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~120_combout\ = (\Arreglomemoriascero~17_combout\ & (((\Arreglomemoriascero~16_combout\) # (Arreglomemoriascero(3))))) # (!\Arreglomemoriascero~17_combout\ & (!Arreglomemoriascero(45) & (!\Arreglomemoriascero~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(45),
	datab => \Arreglomemoriascero~17_combout\,
	datac => \Arreglomemoriascero~16_combout\,
	datad => Arreglomemoriascero(3),
	combout => \Arreglomemoriascero~120_combout\);

-- Location: LCCOMB_X25_Y5_N2
\Arreglomemoriascero~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~118_combout\ = (\Arreglomemoriascero~12_combout\ & (((\Arreglomemoriascero~13_combout\)))) # (!\Arreglomemoriascero~12_combout\ & ((\Arreglomemoriascero~13_combout\ & ((!Arreglomemoriascero(15)))) # (!\Arreglomemoriascero~13_combout\ 
-- & (!Arreglomemoriascero(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(27),
	datab => Arreglomemoriascero(15),
	datac => \Arreglomemoriascero~12_combout\,
	datad => \Arreglomemoriascero~13_combout\,
	combout => \Arreglomemoriascero~118_combout\);

-- Location: LCCOMB_X25_Y5_N24
\Arreglomemoriascero~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~119_combout\ = (\Arreglomemoriascero~12_combout\ & ((\Arreglomemoriascero~118_combout\ & (!Arreglomemoriascero(21))) # (!\Arreglomemoriascero~118_combout\ & ((!Arreglomemoriascero(33)))))) # (!\Arreglomemoriascero~12_combout\ & 
-- (((\Arreglomemoriascero~118_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(21),
	datab => Arreglomemoriascero(33),
	datac => \Arreglomemoriascero~12_combout\,
	datad => \Arreglomemoriascero~118_combout\,
	combout => \Arreglomemoriascero~119_combout\);

-- Location: LCCOMB_X24_Y5_N8
\Arreglomemoriascero~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~121_combout\ = (\Arreglomemoriascero~16_combout\ & ((\Arreglomemoriascero~120_combout\ & (Arreglomemoriascero(39))) # (!\Arreglomemoriascero~120_combout\ & ((\Arreglomemoriascero~119_combout\))))) # (!\Arreglomemoriascero~16_combout\ 
-- & (((\Arreglomemoriascero~120_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(39),
	datab => \Arreglomemoriascero~16_combout\,
	datac => \Arreglomemoriascero~120_combout\,
	datad => \Arreglomemoriascero~119_combout\,
	combout => \Arreglomemoriascero~121_combout\);

-- Location: LCCOMB_X24_Y5_N14
\Arreglomemoriascero~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~122_combout\ = (\Arreglomemoriascero~22_combout\ & (!Arreglomemoriascero(9))) # (!\Arreglomemoriascero~22_combout\ & ((\Arreglomemoriascero~121_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(9),
	datac => \Arreglomemoriascero~121_combout\,
	datad => \Arreglomemoriascero~22_combout\,
	combout => \Arreglomemoriascero~122_combout\);

-- Location: LCCOMB_X21_Y5_N8
\Arreglomemoriascero~338\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~338_combout\ = (\Arreglomemoriascero[3]~45_combout\ & (((\Arreglomemoriascero~112_combout\) # (!\Arreglomemoriascero[3]~40_combout\)))) # (!\Arreglomemoriascero[3]~45_combout\ & (\Arreglomemoriascero~133_combout\ & 
-- (\Arreglomemoriascero[3]~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero~133_combout\,
	datab => \Arreglomemoriascero[3]~45_combout\,
	datac => \Arreglomemoriascero[3]~40_combout\,
	datad => \Arreglomemoriascero~112_combout\,
	combout => \Arreglomemoriascero~338_combout\);

-- Location: LCCOMB_X21_Y5_N10
\Arreglomemoriascero~339\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~339_combout\ = (\Arreglomemoriascero[3]~40_combout\ & (((\Arreglomemoriascero~338_combout\)))) # (!\Arreglomemoriascero[3]~40_combout\ & ((\Arreglomemoriascero~338_combout\ & ((\Arreglomemoriascero~140_combout\))) # 
-- (!\Arreglomemoriascero~338_combout\ & (\Arreglomemoriascero~117_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero~117_combout\,
	datab => \Arreglomemoriascero[3]~40_combout\,
	datac => \Arreglomemoriascero~338_combout\,
	datad => \Arreglomemoriascero~140_combout\,
	combout => \Arreglomemoriascero~339_combout\);

-- Location: LCCOMB_X21_Y5_N28
\Arreglomemoriascero~340\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~340_combout\ = (\Arreglomemoriascero[3]~28_combout\ & (!\Arreglomemoriascero[3]~34_combout\)) # (!\Arreglomemoriascero[3]~28_combout\ & ((\Arreglomemoriascero[3]~34_combout\ & ((\Arreglomemoriascero~339_combout\))) # 
-- (!\Arreglomemoriascero[3]~34_combout\ & (\Arreglomemoriascero~127_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero[3]~28_combout\,
	datab => \Arreglomemoriascero[3]~34_combout\,
	datac => \Arreglomemoriascero~127_combout\,
	datad => \Arreglomemoriascero~339_combout\,
	combout => \Arreglomemoriascero~340_combout\);

-- Location: LCCOMB_X21_Y5_N30
\Arreglomemoriascero~341\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~341_combout\ = (\Arreglomemoriascero[3]~28_combout\ & ((\Arreglomemoriascero~340_combout\ & ((\Arreglomemoriascero[3]~9_combout\))) # (!\Arreglomemoriascero~340_combout\ & (\Arreglomemoriascero[39]~3_combout\)))) # 
-- (!\Arreglomemoriascero[3]~28_combout\ & (((\Arreglomemoriascero~340_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero[39]~3_combout\,
	datab => \Arreglomemoriascero[3]~28_combout\,
	datac => \Arreglomemoriascero[3]~9_combout\,
	datad => \Arreglomemoriascero~340_combout\,
	combout => \Arreglomemoriascero~341_combout\);

-- Location: LCCOMB_X21_Y5_N16
\Arreglomemoriascero~342\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~342_combout\ = (\Arreglomemoriascero[3]~65_combout\ & ((!\Arreglomemoriascero~341_combout\))) # (!\Arreglomemoriascero[3]~65_combout\ & (!\Arreglomemoriascero~122_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero~122_combout\,
	datac => \Arreglomemoriascero~341_combout\,
	datad => \Arreglomemoriascero[3]~65_combout\,
	combout => \Arreglomemoriascero~342_combout\);

-- Location: FF_X21_Y5_N17
\Arreglomemoriascero[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instancia1|salida~clkctrl_outclk\,
	d => \Arreglomemoriascero~342_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Arreglomemoriascero(9));

-- Location: LCCOMB_X21_Y5_N18
\Arreglomemoriascero~129\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~129_combout\ = (\Arreglomemoriascero~13_combout\ & (((\Arreglomemoriascero~12_combout\)))) # (!\Arreglomemoriascero~13_combout\ & ((\Arreglomemoriascero~12_combout\ & (Arreglomemoriascero(39))) # (!\Arreglomemoriascero~12_combout\ & 
-- ((!Arreglomemoriascero(33))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(39),
	datab => \Arreglomemoriascero~13_combout\,
	datac => Arreglomemoriascero(33),
	datad => \Arreglomemoriascero~12_combout\,
	combout => \Arreglomemoriascero~129_combout\);

-- Location: LCCOMB_X21_Y5_N24
\Arreglomemoriascero~130\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~130_combout\ = (\Arreglomemoriascero~13_combout\ & ((\Arreglomemoriascero~129_combout\ & (!Arreglomemoriascero(27))) # (!\Arreglomemoriascero~129_combout\ & ((!Arreglomemoriascero(21)))))) # (!\Arreglomemoriascero~13_combout\ & 
-- (((\Arreglomemoriascero~129_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(27),
	datab => \Arreglomemoriascero~13_combout\,
	datac => Arreglomemoriascero(21),
	datad => \Arreglomemoriascero~129_combout\,
	combout => \Arreglomemoriascero~130_combout\);

-- Location: LCCOMB_X21_Y5_N6
\Arreglomemoriascero~131\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~131_combout\ = (\Arreglomemoriascero~16_combout\ & (((\Arreglomemoriascero~17_combout\) # (\Arreglomemoriascero~130_combout\)))) # (!\Arreglomemoriascero~16_combout\ & (Arreglomemoriascero(3) & (!\Arreglomemoriascero~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero~16_combout\,
	datab => Arreglomemoriascero(3),
	datac => \Arreglomemoriascero~17_combout\,
	datad => \Arreglomemoriascero~130_combout\,
	combout => \Arreglomemoriascero~131_combout\);

-- Location: LCCOMB_X21_Y5_N20
\Arreglomemoriascero~132\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~132_combout\ = (\Arreglomemoriascero~17_combout\ & ((\Arreglomemoriascero~131_combout\ & (!Arreglomemoriascero(45))) # (!\Arreglomemoriascero~131_combout\ & ((!Arreglomemoriascero(9)))))) # (!\Arreglomemoriascero~17_combout\ & 
-- (((\Arreglomemoriascero~131_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(45),
	datab => Arreglomemoriascero(9),
	datac => \Arreglomemoriascero~17_combout\,
	datad => \Arreglomemoriascero~131_combout\,
	combout => \Arreglomemoriascero~132_combout\);

-- Location: LCCOMB_X21_Y5_N22
\Arreglomemoriascero~133\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~133_combout\ = (\Arreglomemoriascero~22_combout\ & (!Arreglomemoriascero(15))) # (!\Arreglomemoriascero~22_combout\ & ((\Arreglomemoriascero~132_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(15),
	datac => \Arreglomemoriascero~22_combout\,
	datad => \Arreglomemoriascero~132_combout\,
	combout => \Arreglomemoriascero~133_combout\);

-- Location: LCCOMB_X21_Y6_N8
\Arreglomemoriascero~422\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~422_combout\ = (\Arreglomemoriascero[3]~40_combout\ & ((\Arreglomemoriascero[3]~45_combout\ & (\Arreglomemoriascero~117_combout\)) # (!\Arreglomemoriascero[3]~45_combout\ & ((\Arreglomemoriascero~112_combout\))))) # 
-- (!\Arreglomemoriascero[3]~40_combout\ & (\Arreglomemoriascero[3]~45_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero[3]~40_combout\,
	datab => \Arreglomemoriascero[3]~45_combout\,
	datac => \Arreglomemoriascero~117_combout\,
	datad => \Arreglomemoriascero~112_combout\,
	combout => \Arreglomemoriascero~422_combout\);

-- Location: LCCOMB_X21_Y6_N2
\Arreglomemoriascero~423\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~423_combout\ = (\Arreglomemoriascero[3]~40_combout\ & (((\Arreglomemoriascero~422_combout\)))) # (!\Arreglomemoriascero[3]~40_combout\ & ((\Arreglomemoriascero~422_combout\ & (\Arreglomemoriascero[39]~3_combout\)) # 
-- (!\Arreglomemoriascero~422_combout\ & ((\Arreglomemoriascero~140_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero[3]~40_combout\,
	datab => \Arreglomemoriascero[39]~3_combout\,
	datac => \Arreglomemoriascero~422_combout\,
	datad => \Arreglomemoriascero~140_combout\,
	combout => \Arreglomemoriascero~423_combout\);

-- Location: LCCOMB_X21_Y6_N24
\Arreglomemoriascero~424\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~424_combout\ = (\Arreglomemoriascero[3]~28_combout\ & (!\Arreglomemoriascero[3]~34_combout\)) # (!\Arreglomemoriascero[3]~28_combout\ & ((\Arreglomemoriascero[3]~34_combout\ & ((\Arreglomemoriascero~423_combout\))) # 
-- (!\Arreglomemoriascero[3]~34_combout\ & (\Arreglomemoriascero[3]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero[3]~28_combout\,
	datab => \Arreglomemoriascero[3]~34_combout\,
	datac => \Arreglomemoriascero[3]~9_combout\,
	datad => \Arreglomemoriascero~423_combout\,
	combout => \Arreglomemoriascero~424_combout\);

-- Location: LCCOMB_X21_Y6_N14
\Arreglomemoriascero~425\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~425_combout\ = (\Arreglomemoriascero[3]~28_combout\ & ((\Arreglomemoriascero~424_combout\ & ((\Arreglomemoriascero~122_combout\))) # (!\Arreglomemoriascero~424_combout\ & (\Arreglomemoriascero~127_combout\)))) # 
-- (!\Arreglomemoriascero[3]~28_combout\ & (((\Arreglomemoriascero~424_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero[3]~28_combout\,
	datab => \Arreglomemoriascero~127_combout\,
	datac => \Arreglomemoriascero~122_combout\,
	datad => \Arreglomemoriascero~424_combout\,
	combout => \Arreglomemoriascero~425_combout\);

-- Location: LCCOMB_X21_Y6_N30
\Arreglomemoriascero~426\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~426_combout\ = (\Arreglomemoriascero[3]~65_combout\ & ((!\Arreglomemoriascero~425_combout\))) # (!\Arreglomemoriascero[3]~65_combout\ & (!\Arreglomemoriascero~133_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero~133_combout\,
	datac => \Arreglomemoriascero~425_combout\,
	datad => \Arreglomemoriascero[3]~65_combout\,
	combout => \Arreglomemoriascero~426_combout\);

-- Location: FF_X21_Y6_N31
\Arreglomemoriascero[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instancia1|salida~clkctrl_outclk\,
	d => \Arreglomemoriascero~426_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Arreglomemoriascero(15));

-- Location: FF_X21_Y6_N17
\Arreglomemoriascopia3[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instancia1|salida~clkctrl_outclk\,
	d => \Arreglomemoriascopia3~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Arreglomemoriascopia3(15));

-- Location: LCCOMB_X21_Y6_N16
\Arreglomemoriascopia3~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascopia3~9_combout\ = (\DetectoTarjeta~input_o\ & ((\vuelta~q\ & ((Arreglomemoriascopia3(15)))) # (!\vuelta~q\ & (!Arreglomemoriascero(15))))) # (!\DetectoTarjeta~input_o\ & (((Arreglomemoriascopia3(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(15),
	datab => \DetectoTarjeta~input_o\,
	datac => Arreglomemoriascopia3(15),
	datad => \vuelta~q\,
	combout => \Arreglomemoriascopia3~9_combout\);

-- Location: LCCOMB_X22_Y6_N26
\Equal25~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal25~2_combout\ = (\Arreglomemoriascopia3~9_combout\) # ((\Arreglomemoriascopia3~6_combout\) # ((\Arreglomemoriascopia3~8_combout\) # (\Arreglomemoriascopia3~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascopia3~9_combout\,
	datab => \Arreglomemoriascopia3~6_combout\,
	datac => \Arreglomemoriascopia3~8_combout\,
	datad => \Arreglomemoriascopia3~7_combout\,
	combout => \Equal25~2_combout\);

-- Location: LCCOMB_X22_Y6_N18
\Equal26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal26~0_combout\ = (\Arreglomemoriascopia3~12_combout\) # ((\Arreglomemoriascopia3~13_combout\) # ((\Arreglomemoriascopia3~14_combout\) # (\Arreglomemoriascopia3~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascopia3~12_combout\,
	datab => \Arreglomemoriascopia3~13_combout\,
	datac => \Arreglomemoriascopia3~14_combout\,
	datad => \Arreglomemoriascopia3~15_combout\,
	combout => \Equal26~0_combout\);

-- Location: LCCOMB_X22_Y6_N0
\Equal26~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal26~1_combout\ = (\Arreglomemoriascopia3~16_combout\) # ((\Arreglomemoriascopia3~17_combout\) # (\Equal26~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascopia3~16_combout\,
	datac => \Arreglomemoriascopia3~17_combout\,
	datad => \Equal26~0_combout\,
	combout => \Equal26~1_combout\);

-- Location: LCCOMB_X22_Y6_N28
\Equal24~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal24~1_combout\ = (!\Arreglomemoriascopia3~4_combout\ & (!\Arreglomemoriascopia3~5_combout\ & \Equal24~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Arreglomemoriascopia3~4_combout\,
	datac => \Arreglomemoriascopia3~5_combout\,
	datad => \Equal24~0_combout\,
	combout => \Equal24~1_combout\);

-- Location: LCCOMB_X22_Y6_N22
\Arreglomemoriascero~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~12_combout\ = (\Equal24~1_combout\) # ((!\Equal26~1_combout\ & ((\Equal25~2_combout\) # (\Equal25~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal25~2_combout\,
	datab => \Equal26~1_combout\,
	datac => \Equal25~3_combout\,
	datad => \Equal24~1_combout\,
	combout => \Arreglomemoriascero~12_combout\);

-- Location: LCCOMB_X19_Y8_N2
\Arreglomemoriascero~194\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~194_combout\ = (\Arreglomemoriascero~12_combout\ & (((\Arreglomemoriascero~13_combout\)))) # (!\Arreglomemoriascero~12_combout\ & ((\Arreglomemoriascero~13_combout\ & ((!Arreglomemoriascero(17)))) # (!\Arreglomemoriascero~13_combout\ 
-- & (!Arreglomemoriascero(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(29),
	datab => Arreglomemoriascero(17),
	datac => \Arreglomemoriascero~12_combout\,
	datad => \Arreglomemoriascero~13_combout\,
	combout => \Arreglomemoriascero~194_combout\);

-- Location: LCCOMB_X19_Y8_N4
\Arreglomemoriascero~195\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~195_combout\ = (\Arreglomemoriascero~12_combout\ & ((\Arreglomemoriascero~194_combout\ & ((!Arreglomemoriascero(23)))) # (!\Arreglomemoriascero~194_combout\ & (!Arreglomemoriascero(35))))) # (!\Arreglomemoriascero~12_combout\ & 
-- (((\Arreglomemoriascero~194_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(35),
	datab => Arreglomemoriascero(23),
	datac => \Arreglomemoriascero~12_combout\,
	datad => \Arreglomemoriascero~194_combout\,
	combout => \Arreglomemoriascero~195_combout\);

-- Location: LCCOMB_X19_Y8_N6
\Arreglomemoriascero~196\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~196_combout\ = (\Arreglomemoriascero~16_combout\ & (((\Arreglomemoriascero~17_combout\)))) # (!\Arreglomemoriascero~16_combout\ & ((\Arreglomemoriascero~17_combout\ & (Arreglomemoriascero(5))) # (!\Arreglomemoriascero~17_combout\ & 
-- ((!Arreglomemoriascero(47))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(5),
	datab => Arreglomemoriascero(47),
	datac => \Arreglomemoriascero~16_combout\,
	datad => \Arreglomemoriascero~17_combout\,
	combout => \Arreglomemoriascero~196_combout\);

-- Location: LCCOMB_X19_Y8_N20
\Arreglomemoriascero~197\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~197_combout\ = (\Arreglomemoriascero~16_combout\ & ((\Arreglomemoriascero~196_combout\ & (Arreglomemoriascero(41))) # (!\Arreglomemoriascero~196_combout\ & ((\Arreglomemoriascero~195_combout\))))) # (!\Arreglomemoriascero~16_combout\ 
-- & (((\Arreglomemoriascero~196_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(41),
	datab => \Arreglomemoriascero~16_combout\,
	datac => \Arreglomemoriascero~195_combout\,
	datad => \Arreglomemoriascero~196_combout\,
	combout => \Arreglomemoriascero~197_combout\);

-- Location: LCCOMB_X19_Y8_N14
\Arreglomemoriascero~198\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~198_combout\ = (\Arreglomemoriascero~22_combout\ & (!Arreglomemoriascero(11))) # (!\Arreglomemoriascero~22_combout\ & ((\Arreglomemoriascero~197_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(11),
	datab => \Arreglomemoriascero~22_combout\,
	datad => \Arreglomemoriascero~197_combout\,
	combout => \Arreglomemoriascero~198_combout\);

-- Location: LCCOMB_X18_Y8_N26
\Arreglomemoriascero~348\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~348_combout\ = (\Arreglomemoriascero[3]~45_combout\ & (((\Arreglomemoriascero~188_combout\)) # (!\Arreglomemoriascero[3]~40_combout\))) # (!\Arreglomemoriascero[3]~45_combout\ & (\Arreglomemoriascero[3]~40_combout\ & 
-- ((\Arreglomemoriascero~209_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero[3]~45_combout\,
	datab => \Arreglomemoriascero[3]~40_combout\,
	datac => \Arreglomemoriascero~188_combout\,
	datad => \Arreglomemoriascero~209_combout\,
	combout => \Arreglomemoriascero~348_combout\);

-- Location: LCCOMB_X18_Y8_N28
\Arreglomemoriascero~349\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~349_combout\ = (\Arreglomemoriascero~348_combout\ & ((\Arreglomemoriascero[3]~40_combout\) # ((\Arreglomemoriascero~216_combout\)))) # (!\Arreglomemoriascero~348_combout\ & (!\Arreglomemoriascero[3]~40_combout\ & 
-- (\Arreglomemoriascero~193_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero~348_combout\,
	datab => \Arreglomemoriascero[3]~40_combout\,
	datac => \Arreglomemoriascero~193_combout\,
	datad => \Arreglomemoriascero~216_combout\,
	combout => \Arreglomemoriascero~349_combout\);

-- Location: LCCOMB_X18_Y8_N14
\Arreglomemoriascero~350\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~350_combout\ = (\Arreglomemoriascero[3]~34_combout\ & (!\Arreglomemoriascero[3]~28_combout\ & ((\Arreglomemoriascero~349_combout\)))) # (!\Arreglomemoriascero[3]~34_combout\ & ((\Arreglomemoriascero[3]~28_combout\) # 
-- ((\Arreglomemoriascero~203_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero[3]~34_combout\,
	datab => \Arreglomemoriascero[3]~28_combout\,
	datac => \Arreglomemoriascero~203_combout\,
	datad => \Arreglomemoriascero~349_combout\,
	combout => \Arreglomemoriascero~350_combout\);

-- Location: LCCOMB_X18_Y8_N12
\Arreglomemoriascero~351\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~351_combout\ = (\Arreglomemoriascero[3]~28_combout\ & ((\Arreglomemoriascero~350_combout\ & (\Arreglomemoriascero[5]~11_combout\)) # (!\Arreglomemoriascero~350_combout\ & ((\Arreglomemoriascero[41]~5_combout\))))) # 
-- (!\Arreglomemoriascero[3]~28_combout\ & (((\Arreglomemoriascero~350_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero[5]~11_combout\,
	datab => \Arreglomemoriascero[3]~28_combout\,
	datac => \Arreglomemoriascero~350_combout\,
	datad => \Arreglomemoriascero[41]~5_combout\,
	combout => \Arreglomemoriascero~351_combout\);

-- Location: LCCOMB_X18_Y8_N8
\Arreglomemoriascero~352\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~352_combout\ = (\Arreglomemoriascero[3]~65_combout\ & ((!\Arreglomemoriascero~351_combout\))) # (!\Arreglomemoriascero[3]~65_combout\ & (!\Arreglomemoriascero~198_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Arreglomemoriascero~198_combout\,
	datac => \Arreglomemoriascero[3]~65_combout\,
	datad => \Arreglomemoriascero~351_combout\,
	combout => \Arreglomemoriascero~352_combout\);

-- Location: FF_X18_Y8_N9
\Arreglomemoriascero[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instancia1|salida~clkctrl_outclk\,
	d => \Arreglomemoriascero~352_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Arreglomemoriascero(11));

-- Location: LCCOMB_X18_Y8_N4
\Arreglomemoriascero~205\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~205_combout\ = (\Arreglomemoriascero~13_combout\ & (((\Arreglomemoriascero~12_combout\)))) # (!\Arreglomemoriascero~13_combout\ & ((\Arreglomemoriascero~12_combout\ & (Arreglomemoriascero(41))) # (!\Arreglomemoriascero~12_combout\ & 
-- ((!Arreglomemoriascero(35))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(41),
	datab => \Arreglomemoriascero~13_combout\,
	datac => \Arreglomemoriascero~12_combout\,
	datad => Arreglomemoriascero(35),
	combout => \Arreglomemoriascero~205_combout\);

-- Location: LCCOMB_X18_Y8_N2
\Arreglomemoriascero~206\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~206_combout\ = (\Arreglomemoriascero~13_combout\ & ((\Arreglomemoriascero~205_combout\ & ((!Arreglomemoriascero(29)))) # (!\Arreglomemoriascero~205_combout\ & (!Arreglomemoriascero(23))))) # (!\Arreglomemoriascero~13_combout\ & 
-- (((\Arreglomemoriascero~205_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(23),
	datab => \Arreglomemoriascero~13_combout\,
	datac => \Arreglomemoriascero~205_combout\,
	datad => Arreglomemoriascero(29),
	combout => \Arreglomemoriascero~206_combout\);

-- Location: LCCOMB_X18_Y8_N0
\Arreglomemoriascero~207\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~207_combout\ = (\Arreglomemoriascero~17_combout\ & (((\Arreglomemoriascero~16_combout\)))) # (!\Arreglomemoriascero~17_combout\ & ((\Arreglomemoriascero~16_combout\ & ((\Arreglomemoriascero~206_combout\))) # 
-- (!\Arreglomemoriascero~16_combout\ & (Arreglomemoriascero(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero~17_combout\,
	datab => Arreglomemoriascero(5),
	datac => \Arreglomemoriascero~16_combout\,
	datad => \Arreglomemoriascero~206_combout\,
	combout => \Arreglomemoriascero~207_combout\);

-- Location: LCCOMB_X18_Y8_N10
\Arreglomemoriascero~208\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~208_combout\ = (\Arreglomemoriascero~17_combout\ & ((\Arreglomemoriascero~207_combout\ & ((!Arreglomemoriascero(47)))) # (!\Arreglomemoriascero~207_combout\ & (!Arreglomemoriascero(11))))) # (!\Arreglomemoriascero~17_combout\ & 
-- (((\Arreglomemoriascero~207_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(11),
	datab => Arreglomemoriascero(47),
	datac => \Arreglomemoriascero~17_combout\,
	datad => \Arreglomemoriascero~207_combout\,
	combout => \Arreglomemoriascero~208_combout\);

-- Location: LCCOMB_X18_Y8_N24
\Arreglomemoriascero~209\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~209_combout\ = (\Arreglomemoriascero~22_combout\ & (!Arreglomemoriascero(17))) # (!\Arreglomemoriascero~22_combout\ & ((\Arreglomemoriascero~208_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(17),
	datac => \Arreglomemoriascero~22_combout\,
	datad => \Arreglomemoriascero~208_combout\,
	combout => \Arreglomemoriascero~209_combout\);

-- Location: LCCOMB_X19_Y9_N0
\Arreglomemoriascero~432\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~432_combout\ = (\Arreglomemoriascero[3]~40_combout\ & ((\Arreglomemoriascero[3]~45_combout\ & (\Arreglomemoriascero~193_combout\)) # (!\Arreglomemoriascero[3]~45_combout\ & ((\Arreglomemoriascero~188_combout\))))) # 
-- (!\Arreglomemoriascero[3]~40_combout\ & (\Arreglomemoriascero[3]~45_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero[3]~40_combout\,
	datab => \Arreglomemoriascero[3]~45_combout\,
	datac => \Arreglomemoriascero~193_combout\,
	datad => \Arreglomemoriascero~188_combout\,
	combout => \Arreglomemoriascero~432_combout\);

-- Location: LCCOMB_X19_Y9_N2
\Arreglomemoriascero~433\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~433_combout\ = (\Arreglomemoriascero[3]~40_combout\ & (((\Arreglomemoriascero~432_combout\)))) # (!\Arreglomemoriascero[3]~40_combout\ & ((\Arreglomemoriascero~432_combout\ & ((\Arreglomemoriascero[41]~5_combout\))) # 
-- (!\Arreglomemoriascero~432_combout\ & (\Arreglomemoriascero~216_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero~216_combout\,
	datab => \Arreglomemoriascero[41]~5_combout\,
	datac => \Arreglomemoriascero[3]~40_combout\,
	datad => \Arreglomemoriascero~432_combout\,
	combout => \Arreglomemoriascero~433_combout\);

-- Location: LCCOMB_X19_Y9_N12
\Arreglomemoriascero~434\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~434_combout\ = (\Arreglomemoriascero[3]~34_combout\ & (!\Arreglomemoriascero[3]~28_combout\ & ((\Arreglomemoriascero~433_combout\)))) # (!\Arreglomemoriascero[3]~34_combout\ & ((\Arreglomemoriascero[3]~28_combout\) # 
-- ((\Arreglomemoriascero[5]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero[3]~34_combout\,
	datab => \Arreglomemoriascero[3]~28_combout\,
	datac => \Arreglomemoriascero[5]~11_combout\,
	datad => \Arreglomemoriascero~433_combout\,
	combout => \Arreglomemoriascero~434_combout\);

-- Location: LCCOMB_X19_Y9_N18
\Arreglomemoriascero~435\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~435_combout\ = (\Arreglomemoriascero[3]~28_combout\ & ((\Arreglomemoriascero~434_combout\ & ((\Arreglomemoriascero~198_combout\))) # (!\Arreglomemoriascero~434_combout\ & (\Arreglomemoriascero~203_combout\)))) # 
-- (!\Arreglomemoriascero[3]~28_combout\ & (((\Arreglomemoriascero~434_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero[3]~28_combout\,
	datab => \Arreglomemoriascero~203_combout\,
	datac => \Arreglomemoriascero~198_combout\,
	datad => \Arreglomemoriascero~434_combout\,
	combout => \Arreglomemoriascero~435_combout\);

-- Location: LCCOMB_X19_Y9_N8
\Arreglomemoriascero~436\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~436_combout\ = (\Arreglomemoriascero[3]~65_combout\ & ((!\Arreglomemoriascero~435_combout\))) # (!\Arreglomemoriascero[3]~65_combout\ & (!\Arreglomemoriascero~209_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Arreglomemoriascero[3]~65_combout\,
	datac => \Arreglomemoriascero~209_combout\,
	datad => \Arreglomemoriascero~435_combout\,
	combout => \Arreglomemoriascero~436_combout\);

-- Location: FF_X19_Y9_N9
\Arreglomemoriascero[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instancia1|salida~clkctrl_outclk\,
	d => \Arreglomemoriascero~436_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Arreglomemoriascero(17));

-- Location: LCCOMB_X18_Y9_N28
\Arreglomemoriascero~212\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~212_combout\ = (\Arreglomemoriascero~12_combout\ & (((\Arreglomemoriascero~13_combout\)) # (!Arreglomemoriascero(11)))) # (!\Arreglomemoriascero~12_combout\ & (((Arreglomemoriascero(5) & !\Arreglomemoriascero~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(11),
	datab => Arreglomemoriascero(5),
	datac => \Arreglomemoriascero~12_combout\,
	datad => \Arreglomemoriascero~13_combout\,
	combout => \Arreglomemoriascero~212_combout\);

-- Location: LCCOMB_X18_Y9_N2
\Arreglomemoriascero~213\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~213_combout\ = (\Arreglomemoriascero~13_combout\ & ((\Arreglomemoriascero~212_combout\ & ((!Arreglomemoriascero(47)))) # (!\Arreglomemoriascero~212_combout\ & (Arreglomemoriascero(41))))) # (!\Arreglomemoriascero~13_combout\ & 
-- (((\Arreglomemoriascero~212_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(41),
	datab => Arreglomemoriascero(47),
	datac => \Arreglomemoriascero~13_combout\,
	datad => \Arreglomemoriascero~212_combout\,
	combout => \Arreglomemoriascero~213_combout\);

-- Location: LCCOMB_X18_Y9_N12
\Arreglomemoriascero~214\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~214_combout\ = (\Arreglomemoriascero~16_combout\ & ((\Arreglomemoriascero~17_combout\) # ((\Arreglomemoriascero~213_combout\)))) # (!\Arreglomemoriascero~16_combout\ & (!\Arreglomemoriascero~17_combout\ & (!Arreglomemoriascero(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero~16_combout\,
	datab => \Arreglomemoriascero~17_combout\,
	datac => Arreglomemoriascero(23),
	datad => \Arreglomemoriascero~213_combout\,
	combout => \Arreglomemoriascero~214_combout\);

-- Location: LCCOMB_X18_Y9_N18
\Arreglomemoriascero~215\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~215_combout\ = (\Arreglomemoriascero~17_combout\ & ((\Arreglomemoriascero~214_combout\ & (!Arreglomemoriascero(17))) # (!\Arreglomemoriascero~214_combout\ & ((!Arreglomemoriascero(29)))))) # (!\Arreglomemoriascero~17_combout\ & 
-- (((\Arreglomemoriascero~214_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(17),
	datab => \Arreglomemoriascero~17_combout\,
	datac => Arreglomemoriascero(29),
	datad => \Arreglomemoriascero~214_combout\,
	combout => \Arreglomemoriascero~215_combout\);

-- Location: LCCOMB_X18_Y9_N8
\Arreglomemoriascero~216\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~216_combout\ = (\Arreglomemoriascero~22_combout\ & (!Arreglomemoriascero(35))) # (!\Arreglomemoriascero~22_combout\ & ((\Arreglomemoriascero~215_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(35),
	datac => \Arreglomemoriascero~22_combout\,
	datad => \Arreglomemoriascero~215_combout\,
	combout => \Arreglomemoriascero~216_combout\);

-- Location: LCCOMB_X19_Y9_N30
\Arreglomemoriascero~311\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~311_combout\ = (\Arreglomemoriascero[3]~40_combout\ & ((\Arreglomemoriascero[3]~45_combout\ & (\Arreglomemoriascero~203_combout\)) # (!\Arreglomemoriascero[3]~45_combout\ & ((\Arreglomemoriascero[41]~5_combout\))))) # 
-- (!\Arreglomemoriascero[3]~40_combout\ & (\Arreglomemoriascero[3]~45_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero[3]~40_combout\,
	datab => \Arreglomemoriascero[3]~45_combout\,
	datac => \Arreglomemoriascero~203_combout\,
	datad => \Arreglomemoriascero[41]~5_combout\,
	combout => \Arreglomemoriascero~311_combout\);

-- Location: LCCOMB_X19_Y9_N28
\Arreglomemoriascero~312\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~312_combout\ = (\Arreglomemoriascero[3]~40_combout\ & (((\Arreglomemoriascero~311_combout\)))) # (!\Arreglomemoriascero[3]~40_combout\ & ((\Arreglomemoriascero~311_combout\ & (\Arreglomemoriascero~198_combout\)) # 
-- (!\Arreglomemoriascero~311_combout\ & ((\Arreglomemoriascero[5]~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero[3]~40_combout\,
	datab => \Arreglomemoriascero~198_combout\,
	datac => \Arreglomemoriascero~311_combout\,
	datad => \Arreglomemoriascero[5]~11_combout\,
	combout => \Arreglomemoriascero~312_combout\);

-- Location: LCCOMB_X18_Y9_N30
\Arreglomemoriascero~313\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~313_combout\ = (\Arreglomemoriascero[3]~34_combout\ & (!\Arreglomemoriascero[3]~28_combout\ & ((\Arreglomemoriascero~312_combout\)))) # (!\Arreglomemoriascero[3]~34_combout\ & ((\Arreglomemoriascero[3]~28_combout\) # 
-- ((\Arreglomemoriascero~188_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero[3]~34_combout\,
	datab => \Arreglomemoriascero[3]~28_combout\,
	datac => \Arreglomemoriascero~188_combout\,
	datad => \Arreglomemoriascero~312_combout\,
	combout => \Arreglomemoriascero~313_combout\);

-- Location: LCCOMB_X18_Y9_N0
\Arreglomemoriascero~314\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~314_combout\ = (\Arreglomemoriascero[3]~28_combout\ & ((\Arreglomemoriascero~313_combout\ & ((\Arreglomemoriascero~193_combout\))) # (!\Arreglomemoriascero~313_combout\ & (\Arreglomemoriascero~209_combout\)))) # 
-- (!\Arreglomemoriascero[3]~28_combout\ & (((\Arreglomemoriascero~313_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero[3]~28_combout\,
	datab => \Arreglomemoriascero~209_combout\,
	datac => \Arreglomemoriascero~313_combout\,
	datad => \Arreglomemoriascero~193_combout\,
	combout => \Arreglomemoriascero~314_combout\);

-- Location: LCCOMB_X18_Y9_N4
\Arreglomemoriascero~315\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~315_combout\ = (\Arreglomemoriascero[3]~65_combout\ & ((!\Arreglomemoriascero~314_combout\))) # (!\Arreglomemoriascero[3]~65_combout\ & (!\Arreglomemoriascero~216_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Arreglomemoriascero~216_combout\,
	datac => \Arreglomemoriascero[3]~65_combout\,
	datad => \Arreglomemoriascero~314_combout\,
	combout => \Arreglomemoriascero~315_combout\);

-- Location: FF_X18_Y9_N5
\Arreglomemoriascero[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instancia1|salida~clkctrl_outclk\,
	d => \Arreglomemoriascero~315_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Arreglomemoriascero(35));

-- Location: FF_X21_Y9_N31
\Arreglomemoriascopia3[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instancia1|salida~clkctrl_outclk\,
	d => \Arreglomemoriascopia3~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Arreglomemoriascopia3(35));

-- Location: LCCOMB_X21_Y9_N30
\Arreglomemoriascopia3~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascopia3~23_combout\ = (\DetectoTarjeta~input_o\ & ((\vuelta~q\ & ((Arreglomemoriascopia3(35)))) # (!\vuelta~q\ & (!Arreglomemoriascero(35))))) # (!\DetectoTarjeta~input_o\ & (((Arreglomemoriascopia3(35)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DetectoTarjeta~input_o\,
	datab => Arreglomemoriascero(35),
	datac => Arreglomemoriascopia3(35),
	datad => \vuelta~q\,
	combout => \Arreglomemoriascopia3~23_combout\);

-- Location: LCCOMB_X21_Y9_N6
\Equal31~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal31~2_combout\ = (\Arreglomemoriascopia3~23_combout\ & (\IDentrada~4_combout\ & (\Arreglomemoriascopia3~22_combout\ $ (!\IDentrada~5_combout\)))) # (!\Arreglomemoriascopia3~23_combout\ & (!\IDentrada~4_combout\ & (\Arreglomemoriascopia3~22_combout\ $ 
-- (!\IDentrada~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascopia3~23_combout\,
	datab => \Arreglomemoriascopia3~22_combout\,
	datac => \IDentrada~5_combout\,
	datad => \IDentrada~4_combout\,
	combout => \Equal31~2_combout\);

-- Location: LCCOMB_X21_Y9_N24
\Equal31~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal31~3_combout\ = (\Equal31~2_combout\ & (\Equal31~1_combout\ & \Equal31~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal31~2_combout\,
	datac => \Equal31~1_combout\,
	datad => \Equal31~0_combout\,
	combout => \Equal31~3_combout\);

-- Location: LCCOMB_X23_Y9_N22
\Arreglomemoriascero[3]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero[3]~28_combout\ = (\Equal30~3_combout\) # ((\Equal32~3_combout\ & !\Equal31~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal32~3_combout\,
	datac => \Equal31~3_combout\,
	datad => \Equal30~3_combout\,
	combout => \Arreglomemoriascero[3]~28_combout\);

-- Location: LCCOMB_X19_Y6_N8
\Arreglomemoriascero~382\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~382_combout\ = (\Arreglomemoriascero[3]~40_combout\ & ((\Arreglomemoriascero[3]~45_combout\ & (\Arreglomemoriascero~61_combout\)) # (!\Arreglomemoriascero[3]~45_combout\ & ((\Arreglomemoriascero~33_combout\))))) # 
-- (!\Arreglomemoriascero[3]~40_combout\ & (\Arreglomemoriascero[3]~45_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero[3]~40_combout\,
	datab => \Arreglomemoriascero[3]~45_combout\,
	datac => \Arreglomemoriascero~61_combout\,
	datad => \Arreglomemoriascero~33_combout\,
	combout => \Arreglomemoriascero~382_combout\);

-- Location: LCCOMB_X19_Y6_N6
\Arreglomemoriascero~383\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~383_combout\ = (\Arreglomemoriascero[3]~40_combout\ & (((\Arreglomemoriascero~382_combout\)))) # (!\Arreglomemoriascero[3]~40_combout\ & ((\Arreglomemoriascero~382_combout\ & (\Arreglomemoriascero~48_combout\)) # 
-- (!\Arreglomemoriascero~382_combout\ & ((\Arreglomemoriascero[37]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero[3]~40_combout\,
	datab => \Arreglomemoriascero~48_combout\,
	datac => \Arreglomemoriascero~382_combout\,
	datad => \Arreglomemoriascero[37]~1_combout\,
	combout => \Arreglomemoriascero~383_combout\);

-- Location: LCCOMB_X19_Y6_N28
\Arreglomemoriascero~384\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~384_combout\ = (\Arreglomemoriascero[3]~34_combout\ & (((!\Arreglomemoriascero[3]~28_combout\ & \Arreglomemoriascero~383_combout\)))) # (!\Arreglomemoriascero[3]~34_combout\ & ((\Arreglomemoriascero~39_combout\) # 
-- ((\Arreglomemoriascero[3]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero~39_combout\,
	datab => \Arreglomemoriascero[3]~34_combout\,
	datac => \Arreglomemoriascero[3]~28_combout\,
	datad => \Arreglomemoriascero~383_combout\,
	combout => \Arreglomemoriascero~384_combout\);

-- Location: LCCOMB_X19_Y6_N10
\Arreglomemoriascero~385\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~385_combout\ = (\Arreglomemoriascero[3]~28_combout\ & ((\Arreglomemoriascero~384_combout\ & (\Arreglomemoriascero~54_combout\)) # (!\Arreglomemoriascero~384_combout\ & ((\Arreglomemoriascero[1]~7_combout\))))) # 
-- (!\Arreglomemoriascero[3]~28_combout\ & (((\Arreglomemoriascero~384_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero[3]~28_combout\,
	datab => \Arreglomemoriascero~54_combout\,
	datac => \Arreglomemoriascero[1]~7_combout\,
	datad => \Arreglomemoriascero~384_combout\,
	combout => \Arreglomemoriascero~385_combout\);

-- Location: LCCOMB_X19_Y6_N22
\Arreglomemoriascero~386\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~386_combout\ = (\Arreglomemoriascero[3]~65_combout\ & ((!\Arreglomemoriascero~385_combout\))) # (!\Arreglomemoriascero[3]~65_combout\ & (!\Arreglomemoriascero~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Arreglomemoriascero~27_combout\,
	datac => \Arreglomemoriascero[3]~65_combout\,
	datad => \Arreglomemoriascero~385_combout\,
	combout => \Arreglomemoriascero~386_combout\);

-- Location: FF_X19_Y6_N23
\Arreglomemoriascero[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instancia1|salida~clkctrl_outclk\,
	d => \Arreglomemoriascero~386_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Arreglomemoriascero(19));

-- Location: LCCOMB_X19_Y5_N30
\Arreglomemoriascero~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~23_combout\ = (\Arreglomemoriascero~12_combout\ & (((\Arreglomemoriascero~13_combout\)) # (!Arreglomemoriascero(43)))) # (!\Arreglomemoriascero~12_combout\ & (((Arreglomemoriascero(37) & !\Arreglomemoriascero~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(43),
	datab => Arreglomemoriascero(37),
	datac => \Arreglomemoriascero~12_combout\,
	datad => \Arreglomemoriascero~13_combout\,
	combout => \Arreglomemoriascero~23_combout\);

-- Location: LCCOMB_X19_Y5_N20
\Arreglomemoriascero~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~24_combout\ = (\Arreglomemoriascero~13_combout\ & ((\Arreglomemoriascero~23_combout\ & (!Arreglomemoriascero(31))) # (!\Arreglomemoriascero~23_combout\ & ((!Arreglomemoriascero(25)))))) # (!\Arreglomemoriascero~13_combout\ & 
-- (((\Arreglomemoriascero~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero~13_combout\,
	datab => Arreglomemoriascero(31),
	datac => \Arreglomemoriascero~23_combout\,
	datad => Arreglomemoriascero(25),
	combout => \Arreglomemoriascero~24_combout\);

-- Location: LCCOMB_X19_Y5_N2
\Arreglomemoriascero~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~25_combout\ = (\Arreglomemoriascero~16_combout\ & (((\Arreglomemoriascero~17_combout\) # (\Arreglomemoriascero~24_combout\)))) # (!\Arreglomemoriascero~16_combout\ & (!Arreglomemoriascero(7) & (!\Arreglomemoriascero~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero~16_combout\,
	datab => Arreglomemoriascero(7),
	datac => \Arreglomemoriascero~17_combout\,
	datad => \Arreglomemoriascero~24_combout\,
	combout => \Arreglomemoriascero~25_combout\);

-- Location: LCCOMB_X19_Y5_N12
\Arreglomemoriascero~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~26_combout\ = (\Arreglomemoriascero~17_combout\ & ((\Arreglomemoriascero~25_combout\ & ((Arreglomemoriascero(1)))) # (!\Arreglomemoriascero~25_combout\ & (!Arreglomemoriascero(13))))) # (!\Arreglomemoriascero~17_combout\ & 
-- (((\Arreglomemoriascero~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(13),
	datab => Arreglomemoriascero(1),
	datac => \Arreglomemoriascero~17_combout\,
	datad => \Arreglomemoriascero~25_combout\,
	combout => \Arreglomemoriascero~26_combout\);

-- Location: LCCOMB_X19_Y5_N22
\Arreglomemoriascero~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~27_combout\ = (\Arreglomemoriascero~22_combout\ & (!Arreglomemoriascero(19))) # (!\Arreglomemoriascero~22_combout\ & ((\Arreglomemoriascero~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(19),
	datac => \Arreglomemoriascero~22_combout\,
	datad => \Arreglomemoriascero~26_combout\,
	combout => \Arreglomemoriascero~27_combout\);

-- Location: LCCOMB_X19_Y7_N8
\Arreglomemoriascero~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~49_combout\ = (\Arreglomemoriascero[3]~45_combout\ & (((\Arreglomemoriascero[1]~7_combout\)) # (!\Arreglomemoriascero[3]~40_combout\))) # (!\Arreglomemoriascero[3]~45_combout\ & (\Arreglomemoriascero[3]~40_combout\ & 
-- ((\Arreglomemoriascero~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero[3]~45_combout\,
	datab => \Arreglomemoriascero[3]~40_combout\,
	datac => \Arreglomemoriascero[1]~7_combout\,
	datad => \Arreglomemoriascero~48_combout\,
	combout => \Arreglomemoriascero~49_combout\);

-- Location: LCCOMB_X19_Y7_N26
\Arreglomemoriascero~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~55_combout\ = (\Arreglomemoriascero[3]~40_combout\ & (((\Arreglomemoriascero~49_combout\)))) # (!\Arreglomemoriascero[3]~40_combout\ & ((\Arreglomemoriascero~49_combout\ & ((\Arreglomemoriascero~54_combout\))) # 
-- (!\Arreglomemoriascero~49_combout\ & (\Arreglomemoriascero~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero~39_combout\,
	datab => \Arreglomemoriascero[3]~40_combout\,
	datac => \Arreglomemoriascero~49_combout\,
	datad => \Arreglomemoriascero~54_combout\,
	combout => \Arreglomemoriascero~55_combout\);

-- Location: LCCOMB_X19_Y7_N20
\Arreglomemoriascero~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~56_combout\ = (\Arreglomemoriascero[3]~28_combout\ & (((!\Arreglomemoriascero[3]~34_combout\)))) # (!\Arreglomemoriascero[3]~28_combout\ & ((\Arreglomemoriascero[3]~34_combout\ & ((\Arreglomemoriascero~55_combout\))) # 
-- (!\Arreglomemoriascero[3]~34_combout\ & (\Arreglomemoriascero~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero[3]~28_combout\,
	datab => \Arreglomemoriascero~33_combout\,
	datac => \Arreglomemoriascero~55_combout\,
	datad => \Arreglomemoriascero[3]~34_combout\,
	combout => \Arreglomemoriascero~56_combout\);

-- Location: LCCOMB_X19_Y7_N22
\Arreglomemoriascero~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~62_combout\ = (\Arreglomemoriascero[3]~28_combout\ & ((\Arreglomemoriascero~56_combout\ & ((\Arreglomemoriascero~61_combout\))) # (!\Arreglomemoriascero~56_combout\ & (\Arreglomemoriascero~27_combout\)))) # 
-- (!\Arreglomemoriascero[3]~28_combout\ & (((\Arreglomemoriascero~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero~27_combout\,
	datab => \Arreglomemoriascero[3]~28_combout\,
	datac => \Arreglomemoriascero~61_combout\,
	datad => \Arreglomemoriascero~56_combout\,
	combout => \Arreglomemoriascero~62_combout\);

-- Location: FF_X19_Y7_N25
\Arreglomemoriascero[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instancia1|salida~clkctrl_outclk\,
	d => \Arreglomemoriascero[37]~1_combout\,
	asdata => \Arreglomemoriascero~62_combout\,
	sload => \Arreglomemoriascero[3]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Arreglomemoriascero(37));

-- Location: LCCOMB_X18_Y6_N0
\Arreglomemoriascero~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~14_combout\ = (\Arreglomemoriascero~13_combout\ & (((\Arreglomemoriascero~12_combout\)) # (!Arreglomemoriascero(43)))) # (!\Arreglomemoriascero~13_combout\ & (((!\Arreglomemoriascero~12_combout\ & !Arreglomemoriascero(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero~13_combout\,
	datab => Arreglomemoriascero(43),
	datac => \Arreglomemoriascero~12_combout\,
	datad => Arreglomemoriascero(7),
	combout => \Arreglomemoriascero~14_combout\);

-- Location: LCCOMB_X18_Y6_N26
\Arreglomemoriascero~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~15_combout\ = (\Arreglomemoriascero~12_combout\ & ((\Arreglomemoriascero~14_combout\ & (Arreglomemoriascero(1))) # (!\Arreglomemoriascero~14_combout\ & ((!Arreglomemoriascero(13)))))) # (!\Arreglomemoriascero~12_combout\ & 
-- (((\Arreglomemoriascero~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero~12_combout\,
	datab => Arreglomemoriascero(1),
	datac => Arreglomemoriascero(13),
	datad => \Arreglomemoriascero~14_combout\,
	combout => \Arreglomemoriascero~15_combout\);

-- Location: LCCOMB_X18_Y7_N14
\Arreglomemoriascero~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~18_combout\ = (\Arreglomemoriascero~16_combout\ & (((\Arreglomemoriascero~17_combout\)))) # (!\Arreglomemoriascero~16_combout\ & ((\Arreglomemoriascero~17_combout\ & (!Arreglomemoriascero(31))) # (!\Arreglomemoriascero~17_combout\ & 
-- ((!Arreglomemoriascero(25))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(31),
	datab => Arreglomemoriascero(25),
	datac => \Arreglomemoriascero~16_combout\,
	datad => \Arreglomemoriascero~17_combout\,
	combout => \Arreglomemoriascero~18_combout\);

-- Location: LCCOMB_X19_Y7_N6
\Arreglomemoriascero~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~19_combout\ = (\Arreglomemoriascero~16_combout\ & ((\Arreglomemoriascero~18_combout\ & (!Arreglomemoriascero(19))) # (!\Arreglomemoriascero~18_combout\ & ((\Arreglomemoriascero~15_combout\))))) # (!\Arreglomemoriascero~16_combout\ & 
-- (((\Arreglomemoriascero~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero~16_combout\,
	datab => Arreglomemoriascero(19),
	datac => \Arreglomemoriascero~15_combout\,
	datad => \Arreglomemoriascero~18_combout\,
	combout => \Arreglomemoriascero~19_combout\);

-- Location: LCCOMB_X19_Y7_N24
\Arreglomemoriascero[37]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero[37]~1_combout\ = (\Arreglomemoriascero~22_combout\ & (Arreglomemoriascero(37))) # (!\Arreglomemoriascero~22_combout\ & ((\Arreglomemoriascero~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero~22_combout\,
	datac => Arreglomemoriascero(37),
	datad => \Arreglomemoriascero~19_combout\,
	combout => \Arreglomemoriascero[37]~1_combout\);

-- Location: LCCOMB_X19_Y5_N26
\Arreglomemoriascero~328\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~328_combout\ = (\Arreglomemoriascero[3]~45_combout\ & (((\Arreglomemoriascero~27_combout\) # (!\Arreglomemoriascero[3]~40_combout\)))) # (!\Arreglomemoriascero[3]~45_combout\ & (\Arreglomemoriascero~54_combout\ & 
-- ((\Arreglomemoriascero[3]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero[3]~45_combout\,
	datab => \Arreglomemoriascero~54_combout\,
	datac => \Arreglomemoriascero~27_combout\,
	datad => \Arreglomemoriascero[3]~40_combout\,
	combout => \Arreglomemoriascero~328_combout\);

-- Location: LCCOMB_X19_Y5_N16
\Arreglomemoriascero~329\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~329_combout\ = (\Arreglomemoriascero~328_combout\ & ((\Arreglomemoriascero[3]~40_combout\) # ((\Arreglomemoriascero~61_combout\)))) # (!\Arreglomemoriascero~328_combout\ & (!\Arreglomemoriascero[3]~40_combout\ & 
-- ((\Arreglomemoriascero~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero~328_combout\,
	datab => \Arreglomemoriascero[3]~40_combout\,
	datac => \Arreglomemoriascero~61_combout\,
	datad => \Arreglomemoriascero~33_combout\,
	combout => \Arreglomemoriascero~329_combout\);

-- Location: LCCOMB_X19_Y5_N10
\Arreglomemoriascero~330\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~330_combout\ = (\Arreglomemoriascero[3]~28_combout\ & (((!\Arreglomemoriascero[3]~34_combout\)))) # (!\Arreglomemoriascero[3]~28_combout\ & ((\Arreglomemoriascero[3]~34_combout\ & ((\Arreglomemoriascero~329_combout\))) # 
-- (!\Arreglomemoriascero[3]~34_combout\ & (\Arreglomemoriascero~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero~48_combout\,
	datab => \Arreglomemoriascero[3]~28_combout\,
	datac => \Arreglomemoriascero[3]~34_combout\,
	datad => \Arreglomemoriascero~329_combout\,
	combout => \Arreglomemoriascero~330_combout\);

-- Location: LCCOMB_X19_Y5_N4
\Arreglomemoriascero~331\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~331_combout\ = (\Arreglomemoriascero[3]~28_combout\ & ((\Arreglomemoriascero~330_combout\ & ((\Arreglomemoriascero[1]~7_combout\))) # (!\Arreglomemoriascero~330_combout\ & (\Arreglomemoriascero[37]~1_combout\)))) # 
-- (!\Arreglomemoriascero[3]~28_combout\ & (((\Arreglomemoriascero~330_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero[37]~1_combout\,
	datab => \Arreglomemoriascero[3]~28_combout\,
	datac => \Arreglomemoriascero[1]~7_combout\,
	datad => \Arreglomemoriascero~330_combout\,
	combout => \Arreglomemoriascero~331_combout\);

-- Location: LCCOMB_X19_Y5_N0
\Arreglomemoriascero~332\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~332_combout\ = (\Arreglomemoriascero[3]~65_combout\ & (!\Arreglomemoriascero~331_combout\)) # (!\Arreglomemoriascero[3]~65_combout\ & ((!\Arreglomemoriascero~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Arreglomemoriascero[3]~65_combout\,
	datac => \Arreglomemoriascero~331_combout\,
	datad => \Arreglomemoriascero~39_combout\,
	combout => \Arreglomemoriascero~332_combout\);

-- Location: FF_X19_Y5_N1
\Arreglomemoriascero[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instancia1|salida~clkctrl_outclk\,
	d => \Arreglomemoriascero~332_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Arreglomemoriascero(7));

-- Location: LCCOMB_X18_Y6_N4
\Arreglomemoriascero~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~31_combout\ = (\Arreglomemoriascero~16_combout\ & (((\Arreglomemoriascero~17_combout\)))) # (!\Arreglomemoriascero~16_combout\ & ((\Arreglomemoriascero~17_combout\ & (!Arreglomemoriascero(19))) # (!\Arreglomemoriascero~17_combout\ & 
-- ((!Arreglomemoriascero(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(19),
	datab => Arreglomemoriascero(13),
	datac => \Arreglomemoriascero~16_combout\,
	datad => \Arreglomemoriascero~17_combout\,
	combout => \Arreglomemoriascero~31_combout\);

-- Location: LCCOMB_X18_Y6_N16
\Arreglomemoriascero~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~29_combout\ = (\Arreglomemoriascero~13_combout\ & (((\Arreglomemoriascero~12_combout\) # (!Arreglomemoriascero(31))))) # (!\Arreglomemoriascero~13_combout\ & (!Arreglomemoriascero(43) & (!\Arreglomemoriascero~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero~13_combout\,
	datab => Arreglomemoriascero(43),
	datac => \Arreglomemoriascero~12_combout\,
	datad => Arreglomemoriascero(31),
	combout => \Arreglomemoriascero~29_combout\);

-- Location: LCCOMB_X18_Y6_N2
\Arreglomemoriascero~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~30_combout\ = (\Arreglomemoriascero~12_combout\ & ((\Arreglomemoriascero~29_combout\ & ((Arreglomemoriascero(37)))) # (!\Arreglomemoriascero~29_combout\ & (Arreglomemoriascero(1))))) # (!\Arreglomemoriascero~12_combout\ & 
-- (((\Arreglomemoriascero~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero~12_combout\,
	datab => Arreglomemoriascero(1),
	datac => Arreglomemoriascero(37),
	datad => \Arreglomemoriascero~29_combout\,
	combout => \Arreglomemoriascero~30_combout\);

-- Location: LCCOMB_X18_Y6_N6
\Arreglomemoriascero~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~32_combout\ = (\Arreglomemoriascero~16_combout\ & ((\Arreglomemoriascero~31_combout\ & (!Arreglomemoriascero(7))) # (!\Arreglomemoriascero~31_combout\ & ((\Arreglomemoriascero~30_combout\))))) # (!\Arreglomemoriascero~16_combout\ & 
-- (((\Arreglomemoriascero~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(7),
	datab => \Arreglomemoriascero~16_combout\,
	datac => \Arreglomemoriascero~31_combout\,
	datad => \Arreglomemoriascero~30_combout\,
	combout => \Arreglomemoriascero~32_combout\);

-- Location: LCCOMB_X18_Y6_N28
\Arreglomemoriascero~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~33_combout\ = (\Arreglomemoriascero~22_combout\ & (!Arreglomemoriascero(25))) # (!\Arreglomemoriascero~22_combout\ & ((\Arreglomemoriascero~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => Arreglomemoriascero(25),
	datac => \Arreglomemoriascero~22_combout\,
	datad => \Arreglomemoriascero~32_combout\,
	combout => \Arreglomemoriascero~33_combout\);

-- Location: LCCOMB_X19_Y6_N16
\Arreglomemoriascero~261\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~261_combout\ = (\Arreglomemoriascero[3]~40_combout\ & ((\Arreglomemoriascero[3]~45_combout\ & ((\Arreglomemoriascero[37]~1_combout\))) # (!\Arreglomemoriascero[3]~45_combout\ & (\Arreglomemoriascero~61_combout\)))) # 
-- (!\Arreglomemoriascero[3]~40_combout\ & (\Arreglomemoriascero[3]~45_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero[3]~40_combout\,
	datab => \Arreglomemoriascero[3]~45_combout\,
	datac => \Arreglomemoriascero~61_combout\,
	datad => \Arreglomemoriascero[37]~1_combout\,
	combout => \Arreglomemoriascero~261_combout\);

-- Location: LCCOMB_X19_Y6_N2
\Arreglomemoriascero~262\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~262_combout\ = (\Arreglomemoriascero[3]~40_combout\ & (((\Arreglomemoriascero~261_combout\)))) # (!\Arreglomemoriascero[3]~40_combout\ & ((\Arreglomemoriascero~261_combout\ & ((\Arreglomemoriascero[1]~7_combout\))) # 
-- (!\Arreglomemoriascero~261_combout\ & (\Arreglomemoriascero~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero[3]~40_combout\,
	datab => \Arreglomemoriascero~48_combout\,
	datac => \Arreglomemoriascero[1]~7_combout\,
	datad => \Arreglomemoriascero~261_combout\,
	combout => \Arreglomemoriascero~262_combout\);

-- Location: LCCOMB_X19_Y6_N0
\Arreglomemoriascero~263\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~263_combout\ = (\Arreglomemoriascero[3]~28_combout\ & (!\Arreglomemoriascero[3]~34_combout\)) # (!\Arreglomemoriascero[3]~28_combout\ & ((\Arreglomemoriascero[3]~34_combout\ & ((\Arreglomemoriascero~262_combout\))) # 
-- (!\Arreglomemoriascero[3]~34_combout\ & (\Arreglomemoriascero~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero[3]~28_combout\,
	datab => \Arreglomemoriascero[3]~34_combout\,
	datac => \Arreglomemoriascero~54_combout\,
	datad => \Arreglomemoriascero~262_combout\,
	combout => \Arreglomemoriascero~263_combout\);

-- Location: LCCOMB_X19_Y6_N18
\Arreglomemoriascero~264\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~264_combout\ = (\Arreglomemoriascero[3]~28_combout\ & ((\Arreglomemoriascero~263_combout\ & ((\Arreglomemoriascero~27_combout\))) # (!\Arreglomemoriascero~263_combout\ & (\Arreglomemoriascero~39_combout\)))) # 
-- (!\Arreglomemoriascero[3]~28_combout\ & (((\Arreglomemoriascero~263_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero~39_combout\,
	datab => \Arreglomemoriascero~27_combout\,
	datac => \Arreglomemoriascero[3]~28_combout\,
	datad => \Arreglomemoriascero~263_combout\,
	combout => \Arreglomemoriascero~264_combout\);

-- Location: LCCOMB_X19_Y6_N4
\Arreglomemoriascero~265\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~265_combout\ = (\Arreglomemoriascero[3]~65_combout\ & ((!\Arreglomemoriascero~264_combout\))) # (!\Arreglomemoriascero[3]~65_combout\ & (!\Arreglomemoriascero~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Arreglomemoriascero~33_combout\,
	datac => \Arreglomemoriascero[3]~65_combout\,
	datad => \Arreglomemoriascero~264_combout\,
	combout => \Arreglomemoriascero~265_combout\);

-- Location: FF_X19_Y6_N5
\Arreglomemoriascero[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instancia1|salida~clkctrl_outclk\,
	d => \Arreglomemoriascero~265_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Arreglomemoriascero(25));

-- Location: LCCOMB_X22_Y7_N2
\Arreglomemoriascopia3~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascopia3~31_combout\ = (\DetectoTarjeta~input_o\ & ((\vuelta~q\ & (Arreglomemoriascopia3(25))) # (!\vuelta~q\ & ((!Arreglomemoriascero(25)))))) # (!\DetectoTarjeta~input_o\ & (((Arreglomemoriascopia3(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DetectoTarjeta~input_o\,
	datab => \vuelta~q\,
	datac => Arreglomemoriascopia3(25),
	datad => Arreglomemoriascero(25),
	combout => \Arreglomemoriascopia3~31_combout\);

-- Location: LCCOMB_X23_Y8_N26
\Equal32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal32~0_combout\ = (\Arreglomemoriascopia3~31_combout\ & (\IDentrada~0_combout\ & (\Arreglomemoriascopia3~30_combout\ $ (!\IDentrada~1_combout\)))) # (!\Arreglomemoriascopia3~31_combout\ & (!\IDentrada~0_combout\ & (\Arreglomemoriascopia3~30_combout\ $ 
-- (!\IDentrada~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascopia3~31_combout\,
	datab => \Arreglomemoriascopia3~30_combout\,
	datac => \IDentrada~0_combout\,
	datad => \IDentrada~1_combout\,
	combout => \Equal32~0_combout\);

-- Location: LCCOMB_X23_Y8_N14
\Equal32~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal32~2_combout\ = (\IDentrada~5_combout\ & (\Arreglomemoriascopia3~34_combout\ & (\IDentrada~4_combout\ $ (!\Arreglomemoriascopia3~35_combout\)))) # (!\IDentrada~5_combout\ & (!\Arreglomemoriascopia3~34_combout\ & (\IDentrada~4_combout\ $ 
-- (!\Arreglomemoriascopia3~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDentrada~5_combout\,
	datab => \IDentrada~4_combout\,
	datac => \Arreglomemoriascopia3~35_combout\,
	datad => \Arreglomemoriascopia3~34_combout\,
	combout => \Equal32~2_combout\);

-- Location: LCCOMB_X23_Y8_N0
\Equal32~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal32~1_combout\ = (\Arreglomemoriascopia3~32_combout\ & (\IDentrada~3_combout\ & (\IDentrada~2_combout\ $ (!\Arreglomemoriascopia3~33_combout\)))) # (!\Arreglomemoriascopia3~32_combout\ & (!\IDentrada~3_combout\ & (\IDentrada~2_combout\ $ 
-- (!\Arreglomemoriascopia3~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascopia3~32_combout\,
	datab => \IDentrada~2_combout\,
	datac => \IDentrada~3_combout\,
	datad => \Arreglomemoriascopia3~33_combout\,
	combout => \Equal32~1_combout\);

-- Location: LCCOMB_X23_Y8_N12
\Equal32~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal32~3_combout\ = (\Equal32~0_combout\ & (\Equal32~2_combout\ & \Equal32~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal32~0_combout\,
	datac => \Equal32~2_combout\,
	datad => \Equal32~1_combout\,
	combout => \Equal32~3_combout\);

-- Location: FF_X21_Y7_N15
\Arreglomemoriascopia3[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instancia1|salida~clkctrl_outclk\,
	d => \Arreglomemoriascopia3~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Arreglomemoriascopia3(0));

-- Location: LCCOMB_X21_Y7_N14
\Arreglomemoriascopia3~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascopia3~44_combout\ = (\vuelta~q\ & (((Arreglomemoriascopia3(0))))) # (!\vuelta~q\ & ((\DetectoTarjeta~input_o\ & ((Arreglomemoriascero(0)))) # (!\DetectoTarjeta~input_o\ & (Arreglomemoriascopia3(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vuelta~q\,
	datab => \DetectoTarjeta~input_o\,
	datac => Arreglomemoriascopia3(0),
	datad => Arreglomemoriascero(0),
	combout => \Arreglomemoriascopia3~44_combout\);

-- Location: FF_X21_Y7_N19
\Arreglomemoriascopia3[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instancia1|salida~clkctrl_outclk\,
	d => \Arreglomemoriascopia3~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Arreglomemoriascopia3(1));

-- Location: LCCOMB_X21_Y7_N18
\Arreglomemoriascopia3~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascopia3~46_combout\ = (\DetectoTarjeta~input_o\ & ((\vuelta~q\ & ((Arreglomemoriascopia3(1)))) # (!\vuelta~q\ & (Arreglomemoriascero(1))))) # (!\DetectoTarjeta~input_o\ & (((Arreglomemoriascopia3(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(1),
	datab => \DetectoTarjeta~input_o\,
	datac => Arreglomemoriascopia3(1),
	datad => \vuelta~q\,
	combout => \Arreglomemoriascopia3~46_combout\);

-- Location: LCCOMB_X21_Y7_N22
\Equal36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal36~0_combout\ = (\Arreglomemoriascopia3~44_combout\ & (\IDentrada~1_combout\ & (\IDentrada~0_combout\ $ (!\Arreglomemoriascopia3~46_combout\)))) # (!\Arreglomemoriascopia3~44_combout\ & (!\IDentrada~1_combout\ & (\IDentrada~0_combout\ $ 
-- (!\Arreglomemoriascopia3~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascopia3~44_combout\,
	datab => \IDentrada~1_combout\,
	datac => \IDentrada~0_combout\,
	datad => \Arreglomemoriascopia3~46_combout\,
	combout => \Equal36~0_combout\);

-- Location: FF_X21_Y7_N9
\Arreglomemoriascopia3[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instancia1|salida~clkctrl_outclk\,
	d => \Arreglomemoriascopia3~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Arreglomemoriascopia3(2));

-- Location: LCCOMB_X21_Y7_N8
\Arreglomemoriascopia3~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascopia3~47_combout\ = (\vuelta~q\ & (((Arreglomemoriascopia3(2))))) # (!\vuelta~q\ & ((\DetectoTarjeta~input_o\ & ((Arreglomemoriascero(2)))) # (!\DetectoTarjeta~input_o\ & (Arreglomemoriascopia3(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vuelta~q\,
	datab => \DetectoTarjeta~input_o\,
	datac => Arreglomemoriascopia3(2),
	datad => Arreglomemoriascero(2),
	combout => \Arreglomemoriascopia3~47_combout\);

-- Location: FF_X21_Y7_N29
\Arreglomemoriascopia3[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instancia1|salida~clkctrl_outclk\,
	d => \Arreglomemoriascopia3~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Arreglomemoriascopia3(3));

-- Location: LCCOMB_X21_Y7_N28
\Arreglomemoriascopia3~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascopia3~43_combout\ = (\DetectoTarjeta~input_o\ & ((\vuelta~q\ & ((Arreglomemoriascopia3(3)))) # (!\vuelta~q\ & (Arreglomemoriascero(3))))) # (!\DetectoTarjeta~input_o\ & (((Arreglomemoriascopia3(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DetectoTarjeta~input_o\,
	datab => Arreglomemoriascero(3),
	datac => Arreglomemoriascopia3(3),
	datad => \vuelta~q\,
	combout => \Arreglomemoriascopia3~43_combout\);

-- Location: LCCOMB_X21_Y7_N16
\Equal36~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal36~1_combout\ = (\IDentrada~2_combout\ & (\Arreglomemoriascopia3~43_combout\ & (\IDentrada~3_combout\ $ (!\Arreglomemoriascopia3~47_combout\)))) # (!\IDentrada~2_combout\ & (!\Arreglomemoriascopia3~43_combout\ & (\IDentrada~3_combout\ $ 
-- (!\Arreglomemoriascopia3~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDentrada~2_combout\,
	datab => \IDentrada~3_combout\,
	datac => \Arreglomemoriascopia3~47_combout\,
	datad => \Arreglomemoriascopia3~43_combout\,
	combout => \Equal36~1_combout\);

-- Location: FF_X22_Y8_N27
\Arreglomemoriascopia3[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instancia1|salida~clkctrl_outclk\,
	d => \Arreglomemoriascopia3~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Arreglomemoriascopia3(4));

-- Location: LCCOMB_X22_Y8_N26
\Arreglomemoriascopia3~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascopia3~45_combout\ = (\DetectoTarjeta~input_o\ & ((\vuelta~q\ & (Arreglomemoriascopia3(4))) # (!\vuelta~q\ & ((Arreglomemoriascero(4)))))) # (!\DetectoTarjeta~input_o\ & (((Arreglomemoriascopia3(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DetectoTarjeta~input_o\,
	datab => \vuelta~q\,
	datac => Arreglomemoriascopia3(4),
	datad => Arreglomemoriascero(4),
	combout => \Arreglomemoriascopia3~45_combout\);

-- Location: FF_X22_Y8_N5
\Arreglomemoriascopia3[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instancia1|salida~clkctrl_outclk\,
	d => \Arreglomemoriascopia3~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Arreglomemoriascopia3(5));

-- Location: LCCOMB_X22_Y8_N4
\Arreglomemoriascopia3~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascopia3~42_combout\ = (\DetectoTarjeta~input_o\ & ((\vuelta~q\ & (Arreglomemoriascopia3(5))) # (!\vuelta~q\ & ((Arreglomemoriascero(5)))))) # (!\DetectoTarjeta~input_o\ & (((Arreglomemoriascopia3(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DetectoTarjeta~input_o\,
	datab => \vuelta~q\,
	datac => Arreglomemoriascopia3(5),
	datad => Arreglomemoriascero(5),
	combout => \Arreglomemoriascopia3~42_combout\);

-- Location: LCCOMB_X22_Y8_N22
\Equal36~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal36~2_combout\ = (\Arreglomemoriascopia3~45_combout\ & (\IDentrada~5_combout\ & (\Arreglomemoriascopia3~42_combout\ $ (!\IDentrada~4_combout\)))) # (!\Arreglomemoriascopia3~45_combout\ & (!\IDentrada~5_combout\ & (\Arreglomemoriascopia3~42_combout\ $ 
-- (!\IDentrada~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascopia3~45_combout\,
	datab => \Arreglomemoriascopia3~42_combout\,
	datac => \IDentrada~5_combout\,
	datad => \IDentrada~4_combout\,
	combout => \Equal36~2_combout\);

-- Location: LCCOMB_X21_Y7_N10
\Arreglomemoriascero[3]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero[3]~63_combout\ = (!\Equal35~3_combout\ & (((!\Equal36~2_combout\) # (!\Equal36~1_combout\)) # (!\Equal36~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal36~0_combout\,
	datab => \Equal36~1_combout\,
	datac => \Equal36~2_combout\,
	datad => \Equal35~3_combout\,
	combout => \Arreglomemoriascero[3]~63_combout\);

-- Location: LCCOMB_X22_Y9_N28
\Arreglomemoriascero[3]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero[3]~64_combout\ = (\Arreglomemoriascero[3]~40_combout\ & (!\Equal32~3_combout\ & (\Arreglomemoriascero[3]~34_combout\ & \Arreglomemoriascero[3]~63_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero[3]~40_combout\,
	datab => \Equal32~3_combout\,
	datac => \Arreglomemoriascero[3]~34_combout\,
	datad => \Arreglomemoriascero[3]~63_combout\,
	combout => \Arreglomemoriascero[3]~64_combout\);

-- Location: LCCOMB_X23_Y7_N8
\Arreglomemoriascero[3]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero[3]~65_combout\ = (\EstaAquiEseCasco~q\ & (!\definido~q\ & (!\Arreglomemoriascero[3]~64_combout\ & !\Equal29~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EstaAquiEseCasco~q\,
	datab => \definido~q\,
	datac => \Arreglomemoriascero[3]~64_combout\,
	datad => \Equal29~3_combout\,
	combout => \Arreglomemoriascero[3]~65_combout\);

-- Location: LCCOMB_X18_Y9_N14
\Arreglomemoriascero~402\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~402_combout\ = (\Arreglomemoriascero[3]~40_combout\ & ((\Arreglomemoriascero[3]~45_combout\ & (\Arreglomemoriascero~216_combout\)) # (!\Arreglomemoriascero[3]~45_combout\ & ((\Arreglomemoriascero~193_combout\))))) # 
-- (!\Arreglomemoriascero[3]~40_combout\ & (\Arreglomemoriascero[3]~45_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero[3]~40_combout\,
	datab => \Arreglomemoriascero[3]~45_combout\,
	datac => \Arreglomemoriascero~216_combout\,
	datad => \Arreglomemoriascero~193_combout\,
	combout => \Arreglomemoriascero~402_combout\);

-- Location: LCCOMB_X19_Y9_N10
\Arreglomemoriascero~403\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~403_combout\ = (\Arreglomemoriascero[3]~40_combout\ & (((\Arreglomemoriascero~402_combout\)))) # (!\Arreglomemoriascero[3]~40_combout\ & ((\Arreglomemoriascero~402_combout\ & ((\Arreglomemoriascero~203_combout\))) # 
-- (!\Arreglomemoriascero~402_combout\ & (\Arreglomemoriascero[41]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero[3]~40_combout\,
	datab => \Arreglomemoriascero[41]~5_combout\,
	datac => \Arreglomemoriascero~203_combout\,
	datad => \Arreglomemoriascero~402_combout\,
	combout => \Arreglomemoriascero~403_combout\);

-- Location: LCCOMB_X19_Y9_N24
\Arreglomemoriascero~404\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~404_combout\ = (\Arreglomemoriascero[3]~34_combout\ & (!\Arreglomemoriascero[3]~28_combout\ & ((\Arreglomemoriascero~403_combout\)))) # (!\Arreglomemoriascero[3]~34_combout\ & ((\Arreglomemoriascero[3]~28_combout\) # 
-- ((\Arreglomemoriascero~198_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero[3]~34_combout\,
	datab => \Arreglomemoriascero[3]~28_combout\,
	datac => \Arreglomemoriascero~198_combout\,
	datad => \Arreglomemoriascero~403_combout\,
	combout => \Arreglomemoriascero~404_combout\);

-- Location: LCCOMB_X19_Y9_N26
\Arreglomemoriascero~405\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~405_combout\ = (\Arreglomemoriascero[3]~28_combout\ & ((\Arreglomemoriascero~404_combout\ & ((\Arreglomemoriascero~209_combout\))) # (!\Arreglomemoriascero~404_combout\ & (\Arreglomemoriascero[5]~11_combout\)))) # 
-- (!\Arreglomemoriascero[3]~28_combout\ & (((\Arreglomemoriascero~404_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero[5]~11_combout\,
	datab => \Arreglomemoriascero[3]~28_combout\,
	datac => \Arreglomemoriascero~209_combout\,
	datad => \Arreglomemoriascero~404_combout\,
	combout => \Arreglomemoriascero~405_combout\);

-- Location: LCCOMB_X19_Y9_N14
\Arreglomemoriascero~406\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~406_combout\ = (\Arreglomemoriascero[3]~65_combout\ & (!\Arreglomemoriascero~405_combout\)) # (!\Arreglomemoriascero[3]~65_combout\ & ((!\Arreglomemoriascero~188_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Arreglomemoriascero[3]~65_combout\,
	datac => \Arreglomemoriascero~405_combout\,
	datad => \Arreglomemoriascero~188_combout\,
	combout => \Arreglomemoriascero~406_combout\);

-- Location: FF_X19_Y9_N15
\Arreglomemoriascero[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instancia1|salida~clkctrl_outclk\,
	d => \Arreglomemoriascero~406_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Arreglomemoriascero(23));

-- Location: LCCOMB_X22_Y6_N30
\Arreglomemoriascopia3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascopia3~5_combout\ = (\vuelta~q\ & (((Arreglomemoriascopia3(23))))) # (!\vuelta~q\ & ((\DetectoTarjeta~input_o\ & ((!Arreglomemoriascero(23)))) # (!\DetectoTarjeta~input_o\ & (Arreglomemoriascopia3(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vuelta~q\,
	datab => \DetectoTarjeta~input_o\,
	datac => Arreglomemoriascopia3(23),
	datad => Arreglomemoriascero(23),
	combout => \Arreglomemoriascopia3~5_combout\);

-- Location: LCCOMB_X23_Y9_N20
\Equal33~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal33~2_combout\ = (\Arreglomemoriascopia3~5_combout\ & (\IDentrada~4_combout\ & (\Arreglomemoriascopia3~4_combout\ $ (!\IDentrada~5_combout\)))) # (!\Arreglomemoriascopia3~5_combout\ & (!\IDentrada~4_combout\ & (\Arreglomemoriascopia3~4_combout\ $ 
-- (!\IDentrada~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascopia3~5_combout\,
	datab => \Arreglomemoriascopia3~4_combout\,
	datac => \IDentrada~5_combout\,
	datad => \IDentrada~4_combout\,
	combout => \Equal33~2_combout\);

-- Location: LCCOMB_X22_Y9_N10
\Arreglomemoriascero[3]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero[3]~40_combout\ = (!\Equal34~3_combout\ & (((!\Equal33~1_combout\) # (!\Equal33~0_combout\)) # (!\Equal33~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal33~2_combout\,
	datab => \Equal33~0_combout\,
	datac => \Equal33~1_combout\,
	datad => \Equal34~3_combout\,
	combout => \Arreglomemoriascero[3]~40_combout\);

-- Location: LCCOMB_X22_Y11_N2
\contadorvueltas~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \contadorvueltas~2_combout\ = (\Equal32~3_combout\) # ((\Equal29~3_combout\) # (!\Arreglomemoriascero[3]~63_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal32~3_combout\,
	datac => \Arreglomemoriascero[3]~63_combout\,
	datad => \Equal29~3_combout\,
	combout => \contadorvueltas~2_combout\);

-- Location: LCCOMB_X22_Y11_N0
\contadorvueltas~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \contadorvueltas~3_combout\ = (\EstaAquiEseCasco~q\ & (((\contadorvueltas~2_combout\) # (!\Arreglomemoriascero[3]~34_combout\)) # (!\Arreglomemoriascero[3]~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero[3]~40_combout\,
	datab => \EstaAquiEseCasco~q\,
	datac => \Arreglomemoriascero[3]~34_combout\,
	datad => \contadorvueltas~2_combout\,
	combout => \contadorvueltas~3_combout\);

-- Location: LCCOMB_X23_Y7_N4
\process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~0_combout\ = (\DetectoTarjeta~input_o\ & !\vuelta~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DetectoTarjeta~input_o\,
	datad => \vuelta~q\,
	combout => \process_0~0_combout\);

-- Location: LCCOMB_X23_Y8_N20
\Equal20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal20~0_combout\ = (!\Arreglomemoriascopia3~37_combout\ & (!\Arreglomemoriascopia3~38_combout\ & (!\Arreglomemoriascopia3~36_combout\ & !\Arreglomemoriascopia3~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascopia3~37_combout\,
	datab => \Arreglomemoriascopia3~38_combout\,
	datac => \Arreglomemoriascopia3~36_combout\,
	datad => \Arreglomemoriascopia3~39_combout\,
	combout => \Equal20~0_combout\);

-- Location: LCCOMB_X22_Y8_N30
\Equal20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal20~1_combout\ = (!\Arreglomemoriascopia3~40_combout\ & (\Equal20~0_combout\ & !\Arreglomemoriascopia3~41_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascopia3~40_combout\,
	datac => \Equal20~0_combout\,
	datad => \Arreglomemoriascopia3~41_combout\,
	combout => \Equal20~1_combout\);

-- Location: LCCOMB_X21_Y7_N12
\Equal27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal27~0_combout\ = (\Arreglomemoriascopia3~42_combout\) # ((\Arreglomemoriascopia3~43_combout\) # ((\Arreglomemoriascopia3~44_combout\) # (\Arreglomemoriascopia3~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascopia3~42_combout\,
	datab => \Arreglomemoriascopia3~43_combout\,
	datac => \Arreglomemoriascopia3~44_combout\,
	datad => \Arreglomemoriascopia3~45_combout\,
	combout => \Equal27~0_combout\);

-- Location: LCCOMB_X21_Y7_N6
\Equal27~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal27~1_combout\ = (\Arreglomemoriascopia3~46_combout\) # ((\Arreglomemoriascopia3~47_combout\) # (\Equal27~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Arreglomemoriascopia3~46_combout\,
	datac => \Arreglomemoriascopia3~47_combout\,
	datad => \Equal27~0_combout\,
	combout => \Equal27~1_combout\);

-- Location: LCCOMB_X21_Y7_N20
\Arreglomemoriascero~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~21_combout\ = (\Equal26~1_combout\ & (\Equal23~1_combout\ & \Equal27~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal26~1_combout\,
	datac => \Equal23~1_combout\,
	datad => \Equal27~1_combout\,
	combout => \Arreglomemoriascero~21_combout\);

-- Location: LCCOMB_X24_Y7_N24
\Arreglomemoriascero~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~46_combout\ = ((\Equal20~1_combout\) # ((!\Arreglomemoriascero~21_combout\) # (!\Arreglomemoriascero~13_combout\))) # (!\Arreglomemoriascero~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero~16_combout\,
	datab => \Equal20~1_combout\,
	datac => \Arreglomemoriascero~13_combout\,
	datad => \Arreglomemoriascero~21_combout\,
	combout => \Arreglomemoriascero~46_combout\);

-- Location: LCCOMB_X23_Y7_N18
\definido~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \definido~3_combout\ = (!\EstaAquiEseCasco~q\ & (\Hayespacio~q\ & \Arreglomemoriascero~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EstaAquiEseCasco~q\,
	datac => \Hayespacio~q\,
	datad => \Arreglomemoriascero~46_combout\,
	combout => \definido~3_combout\);

-- Location: LCCOMB_X23_Y7_N22
\definido~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \definido~2_combout\ = (\definido~q\ & (((!\process_0~0_combout\)))) # (!\definido~q\ & ((\contadorvueltas~3_combout\) # ((\definido~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contadorvueltas~3_combout\,
	datab => \process_0~0_combout\,
	datac => \definido~q\,
	datad => \definido~3_combout\,
	combout => \definido~2_combout\);

-- Location: FF_X23_Y7_N23
definido : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instancia1|salida~clkctrl_outclk\,
	d => \definido~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \definido~q\);

-- Location: LCCOMB_X24_Y7_N18
\Arreglomemoriascero~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~47_combout\ = (\Hayespacio~q\ & (!\definido~q\ & (!\EstaAquiEseCasco~q\ & \Arreglomemoriascero~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hayespacio~q\,
	datab => \definido~q\,
	datac => \EstaAquiEseCasco~q\,
	datad => \Arreglomemoriascero~46_combout\,
	combout => \Arreglomemoriascero~47_combout\);

-- Location: LCCOMB_X23_Y8_N2
\Arreglomemoriascero~321\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~321_combout\ = ((\Arreglomemoriascero~47_combout\ & (!\IDentrada~5_combout\)) # (!\Arreglomemoriascero~47_combout\ & ((Arreglomemoriascero(46))))) # (!\Arreglomemoriascero[47]~316_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IDentrada~5_combout\,
	datab => \Arreglomemoriascero~47_combout\,
	datac => Arreglomemoriascero(46),
	datad => \Arreglomemoriascero[47]~316_combout\,
	combout => \Arreglomemoriascero~321_combout\);

-- Location: FF_X23_Y8_N3
\Arreglomemoriascero[46]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instancia1|salida~clkctrl_outclk\,
	d => \Arreglomemoriascero~321_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Arreglomemoriascero(46));

-- Location: LCCOMB_X26_Y7_N22
\Arreglomemoriascero~245\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~245_combout\ = (\Arreglomemoriascero~17_combout\ & (((\Arreglomemoriascero~16_combout\)) # (!Arreglomemoriascero(10)))) # (!\Arreglomemoriascero~17_combout\ & (((Arreglomemoriascero(4) & !\Arreglomemoriascero~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(10),
	datab => Arreglomemoriascero(4),
	datac => \Arreglomemoriascero~17_combout\,
	datad => \Arreglomemoriascero~16_combout\,
	combout => \Arreglomemoriascero~245_combout\);

-- Location: LCCOMB_X26_Y6_N8
\Arreglomemoriascero~243\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~243_combout\ = (\Arreglomemoriascero~13_combout\ & (((\Arreglomemoriascero~12_combout\)) # (!Arreglomemoriascero(22)))) # (!\Arreglomemoriascero~13_combout\ & (((!Arreglomemoriascero(34) & !\Arreglomemoriascero~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(22),
	datab => Arreglomemoriascero(34),
	datac => \Arreglomemoriascero~13_combout\,
	datad => \Arreglomemoriascero~12_combout\,
	combout => \Arreglomemoriascero~243_combout\);

-- Location: LCCOMB_X26_Y6_N30
\Arreglomemoriascero~244\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~244_combout\ = (\Arreglomemoriascero~243_combout\ & (((!\Arreglomemoriascero~12_combout\) # (!Arreglomemoriascero(28))))) # (!\Arreglomemoriascero~243_combout\ & (Arreglomemoriascero(40) & ((\Arreglomemoriascero~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(40),
	datab => Arreglomemoriascero(28),
	datac => \Arreglomemoriascero~243_combout\,
	datad => \Arreglomemoriascero~12_combout\,
	combout => \Arreglomemoriascero~244_combout\);

-- Location: LCCOMB_X26_Y7_N20
\Arreglomemoriascero~246\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~246_combout\ = (\Arreglomemoriascero~16_combout\ & ((\Arreglomemoriascero~245_combout\ & (!Arreglomemoriascero(46))) # (!\Arreglomemoriascero~245_combout\ & ((\Arreglomemoriascero~244_combout\))))) # (!\Arreglomemoriascero~16_combout\ 
-- & (((\Arreglomemoriascero~245_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero~16_combout\,
	datab => Arreglomemoriascero(46),
	datac => \Arreglomemoriascero~245_combout\,
	datad => \Arreglomemoriascero~244_combout\,
	combout => \Arreglomemoriascero~246_combout\);

-- Location: LCCOMB_X26_Y7_N30
\Arreglomemoriascero~247\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~247_combout\ = (\Arreglomemoriascero~22_combout\ & (!Arreglomemoriascero(16))) # (!\Arreglomemoriascero~22_combout\ & ((\Arreglomemoriascero~246_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Arreglomemoriascero~22_combout\,
	datac => Arreglomemoriascero(16),
	datad => \Arreglomemoriascero~246_combout\,
	combout => \Arreglomemoriascero~247_combout\);

-- Location: LCCOMB_X26_Y7_N2
\Arreglomemoriascero~427\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~427_combout\ = (\Arreglomemoriascero[3]~45_combout\ & (!\Arreglomemoriascero[3]~40_combout\)) # (!\Arreglomemoriascero[3]~45_combout\ & ((\Arreglomemoriascero[3]~40_combout\ & (\Arreglomemoriascero~231_combout\)) # 
-- (!\Arreglomemoriascero[3]~40_combout\ & ((\Arreglomemoriascero~254_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero[3]~45_combout\,
	datab => \Arreglomemoriascero[3]~40_combout\,
	datac => \Arreglomemoriascero~231_combout\,
	datad => \Arreglomemoriascero~254_combout\,
	combout => \Arreglomemoriascero~427_combout\);

-- Location: LCCOMB_X26_Y7_N28
\Arreglomemoriascero~428\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~428_combout\ = (\Arreglomemoriascero[3]~45_combout\ & ((\Arreglomemoriascero~427_combout\ & ((\Arreglomemoriascero[40]~4_combout\))) # (!\Arreglomemoriascero~427_combout\ & (\Arreglomemoriascero~226_combout\)))) # 
-- (!\Arreglomemoriascero[3]~45_combout\ & (((\Arreglomemoriascero~427_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero~226_combout\,
	datab => \Arreglomemoriascero[3]~45_combout\,
	datac => \Arreglomemoriascero[40]~4_combout\,
	datad => \Arreglomemoriascero~427_combout\,
	combout => \Arreglomemoriascero~428_combout\);

-- Location: LCCOMB_X26_Y7_N26
\Arreglomemoriascero~429\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~429_combout\ = (\Arreglomemoriascero[3]~34_combout\ & ((\Arreglomemoriascero[3]~28_combout\ & (\Arreglomemoriascero~241_combout\)) # (!\Arreglomemoriascero[3]~28_combout\ & ((\Arreglomemoriascero~428_combout\))))) # 
-- (!\Arreglomemoriascero[3]~34_combout\ & (\Arreglomemoriascero[3]~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero[3]~34_combout\,
	datab => \Arreglomemoriascero[3]~28_combout\,
	datac => \Arreglomemoriascero~241_combout\,
	datad => \Arreglomemoriascero~428_combout\,
	combout => \Arreglomemoriascero~429_combout\);

-- Location: LCCOMB_X23_Y7_N16
\Arreglomemoriascero~430\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~430_combout\ = (\Arreglomemoriascero[3]~34_combout\ & (((\Arreglomemoriascero~429_combout\)))) # (!\Arreglomemoriascero[3]~34_combout\ & ((\Arreglomemoriascero~429_combout\ & (\Arreglomemoriascero~240_combout\)) # 
-- (!\Arreglomemoriascero~429_combout\ & ((\Arreglomemoriascero[4]~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero[3]~34_combout\,
	datab => \Arreglomemoriascero~240_combout\,
	datac => \Arreglomemoriascero~429_combout\,
	datad => \Arreglomemoriascero[4]~10_combout\,
	combout => \Arreglomemoriascero~430_combout\);

-- Location: LCCOMB_X23_Y7_N26
\Arreglomemoriascero~431\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~431_combout\ = (\Arreglomemoriascero[3]~65_combout\ & ((!\Arreglomemoriascero~430_combout\))) # (!\Arreglomemoriascero[3]~65_combout\ & (!\Arreglomemoriascero~247_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Arreglomemoriascero~247_combout\,
	datac => \Arreglomemoriascero[3]~65_combout\,
	datad => \Arreglomemoriascero~430_combout\,
	combout => \Arreglomemoriascero~431_combout\);

-- Location: FF_X23_Y7_N27
\Arreglomemoriascero[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instancia1|salida~clkctrl_outclk\,
	d => \Arreglomemoriascero~431_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Arreglomemoriascero(16));

-- Location: LCCOMB_X24_Y9_N8
\Equal14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal14~0_combout\ = (Arreglomemoriascero(14) & (Arreglomemoriascero(15) & (Arreglomemoriascero(12) & Arreglomemoriascero(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(14),
	datab => Arreglomemoriascero(15),
	datac => Arreglomemoriascero(12),
	datad => Arreglomemoriascero(13),
	combout => \Equal14~0_combout\);

-- Location: LCCOMB_X24_Y9_N10
\Equal13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal13~0_combout\ = (Arreglomemoriascero(21) & (Arreglomemoriascero(18) & (Arreglomemoriascero(20) & Arreglomemoriascero(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(21),
	datab => Arreglomemoriascero(18),
	datac => Arreglomemoriascero(20),
	datad => Arreglomemoriascero(19),
	combout => \Equal13~0_combout\);

-- Location: LCCOMB_X24_Y9_N24
\Equal13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal13~1_combout\ = (Arreglomemoriascero(23) & (Arreglomemoriascero(22) & \Equal13~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(23),
	datac => Arreglomemoriascero(22),
	datad => \Equal13~0_combout\,
	combout => \Equal13~1_combout\);

-- Location: LCCOMB_X24_Y9_N6
\Hayespacio~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hayespacio~0_combout\ = (!\Equal13~1_combout\ & (((!\Equal14~0_combout\) # (!Arreglomemoriascero(17))) # (!Arreglomemoriascero(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(16),
	datab => Arreglomemoriascero(17),
	datac => \Equal14~0_combout\,
	datad => \Equal13~1_combout\,
	combout => \Hayespacio~0_combout\);

-- Location: LCCOMB_X24_Y8_N24
\Equal9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal9~0_combout\ = (((!Arreglomemoriascero(45)) # (!Arreglomemoriascero(44))) # (!Arreglomemoriascero(42))) # (!Arreglomemoriascero(43))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(43),
	datab => Arreglomemoriascero(42),
	datac => Arreglomemoriascero(44),
	datad => Arreglomemoriascero(45),
	combout => \Equal9~0_combout\);

-- Location: LCCOMB_X24_Y8_N26
\contador2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador2~4_combout\ = (!\Equal10~1_combout\ & (((\Equal9~0_combout\) # (!Arreglomemoriascero(47))) # (!Arreglomemoriascero(46))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(46),
	datab => \Equal10~1_combout\,
	datac => Arreglomemoriascero(47),
	datad => \Equal9~0_combout\,
	combout => \contador2~4_combout\);

-- Location: LCCOMB_X24_Y6_N16
\Equal16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal16~0_combout\ = (!Arreglomemoriascero(0) & (!Arreglomemoriascero(3) & (!Arreglomemoriascero(2) & !Arreglomemoriascero(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(0),
	datab => Arreglomemoriascero(3),
	datac => Arreglomemoriascero(2),
	datad => Arreglomemoriascero(1),
	combout => \Equal16~0_combout\);

-- Location: LCCOMB_X25_Y6_N18
\Equal15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal15~0_combout\ = (Arreglomemoriascero(9) & (Arreglomemoriascero(7) & (Arreglomemoriascero(6) & Arreglomemoriascero(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(9),
	datab => Arreglomemoriascero(7),
	datac => Arreglomemoriascero(6),
	datad => Arreglomemoriascero(8),
	combout => \Equal15~0_combout\);

-- Location: LCCOMB_X25_Y6_N28
\Equal15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal15~1_combout\ = (Arreglomemoriascero(11) & (Arreglomemoriascero(10) & \Equal15~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(11),
	datac => Arreglomemoriascero(10),
	datad => \Equal15~0_combout\,
	combout => \Equal15~1_combout\);

-- Location: LCCOMB_X25_Y6_N14
\Hayespacio~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hayespacio~1_combout\ = (!\Equal15~1_combout\ & ((Arreglomemoriascero(4)) # ((Arreglomemoriascero(5)) # (!\Equal16~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(4),
	datab => Arreglomemoriascero(5),
	datac => \Equal16~0_combout\,
	datad => \Equal15~1_combout\,
	combout => \Hayespacio~1_combout\);

-- Location: LCCOMB_X24_Y8_N14
\Equal9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal9~1_combout\ = ((\Equal9~0_combout\) # (!Arreglomemoriascero(47))) # (!Arreglomemoriascero(46))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(46),
	datab => \Equal9~0_combout\,
	datac => Arreglomemoriascero(47),
	combout => \Equal9~1_combout\);

-- Location: LCCOMB_X25_Y8_N2
\Hayespacio~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hayespacio~2_combout\ = (\contador2~4_combout\ & (\Hayespacio~1_combout\ & \Equal9~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador2~4_combout\,
	datac => \Hayespacio~1_combout\,
	datad => \Equal9~1_combout\,
	combout => \Hayespacio~2_combout\);

-- Location: LCCOMB_X21_Y9_N10
\Equal11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal11~0_combout\ = (Arreglomemoriascero(31) & (Arreglomemoriascero(33) & (Arreglomemoriascero(30) & Arreglomemoriascero(32))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(31),
	datab => Arreglomemoriascero(33),
	datac => Arreglomemoriascero(30),
	datad => Arreglomemoriascero(32),
	combout => \Equal11~0_combout\);

-- Location: LCCOMB_X21_Y9_N8
\Equal11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal11~1_combout\ = (Arreglomemoriascero(34) & (Arreglomemoriascero(35) & \Equal11~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => Arreglomemoriascero(34),
	datac => Arreglomemoriascero(35),
	datad => \Equal11~0_combout\,
	combout => \Equal11~1_combout\);

-- Location: LCCOMB_X26_Y8_N20
\Equal12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal12~0_combout\ = (Arreglomemoriascero(27) & (Arreglomemoriascero(24) & (Arreglomemoriascero(25) & Arreglomemoriascero(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(27),
	datab => Arreglomemoriascero(24),
	datac => Arreglomemoriascero(25),
	datad => Arreglomemoriascero(26),
	combout => \Equal12~0_combout\);

-- Location: LCCOMB_X26_Y8_N26
\Equal12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal12~1_combout\ = (Arreglomemoriascero(29) & (Arreglomemoriascero(28) & \Equal12~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(29),
	datab => Arreglomemoriascero(28),
	datad => \Equal12~0_combout\,
	combout => \Equal12~1_combout\);

-- Location: LCCOMB_X25_Y8_N0
\Hayespacio~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hayespacio~3_combout\ = (\Hayespacio~0_combout\ & (\Hayespacio~2_combout\ & (!\Equal11~1_combout\ & !\Equal12~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hayespacio~0_combout\,
	datab => \Hayespacio~2_combout\,
	datac => \Equal11~1_combout\,
	datad => \Equal12~1_combout\,
	combout => \Hayespacio~3_combout\);

-- Location: LCCOMB_X25_Y8_N30
\Add10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~0_combout\ = \Equal10~1_combout\ $ (\Equal12~1_combout\ $ (\Equal11~1_combout\ $ (\Equal9~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal10~1_combout\,
	datab => \Equal12~1_combout\,
	datac => \Equal11~1_combout\,
	datad => \Equal9~1_combout\,
	combout => \Add10~0_combout\);

-- Location: LCCOMB_X24_Y9_N20
\Add12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~0_combout\ = \Equal13~1_combout\ $ (((Arreglomemoriascero(16) & (Arreglomemoriascero(17) & \Equal14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(16),
	datab => Arreglomemoriascero(17),
	datac => \Equal14~0_combout\,
	datad => \Equal13~1_combout\,
	combout => \Add12~0_combout\);

-- Location: LCCOMB_X25_Y8_N10
\Add13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add13~0_combout\ = (\Add10~0_combout\ & (\Add12~0_combout\ & VCC)) # (!\Add10~0_combout\ & (\Add12~0_combout\ $ (VCC)))
-- \Add13~1\ = CARRY((!\Add10~0_combout\ & \Add12~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~0_combout\,
	datab => \Add12~0_combout\,
	datad => VCC,
	combout => \Add13~0_combout\,
	cout => \Add13~1\);

-- Location: LCCOMB_X25_Y6_N16
\Add14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add14~0_combout\ = \Equal15~1_combout\ $ (((!Arreglomemoriascero(4) & (!Arreglomemoriascero(5) & \Equal16~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(4),
	datab => Arreglomemoriascero(5),
	datac => \Equal16~0_combout\,
	datad => \Equal15~1_combout\,
	combout => \Add14~0_combout\);

-- Location: LCCOMB_X25_Y8_N20
\Add15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add15~1_cout\ = CARRY(\Equal9~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal9~1_combout\,
	datad => VCC,
	cout => \Add15~1_cout\);

-- Location: LCCOMB_X25_Y8_N22
\Add15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add15~2_combout\ = (\Add13~0_combout\ & ((\Add14~0_combout\ & (\Add15~1_cout\ & VCC)) # (!\Add14~0_combout\ & (!\Add15~1_cout\)))) # (!\Add13~0_combout\ & ((\Add14~0_combout\ & (!\Add15~1_cout\)) # (!\Add14~0_combout\ & ((\Add15~1_cout\) # (GND)))))
-- \Add15~3\ = CARRY((\Add13~0_combout\ & (!\Add14~0_combout\ & !\Add15~1_cout\)) # (!\Add13~0_combout\ & ((!\Add15~1_cout\) # (!\Add14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add13~0_combout\,
	datab => \Add14~0_combout\,
	datad => VCC,
	cin => \Add15~1_cout\,
	combout => \Add15~2_combout\,
	cout => \Add15~3\);

-- Location: LCCOMB_X25_Y8_N18
\Add10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~2_combout\ = (\Equal10~1_combout\ & ((\Equal12~1_combout\ & (!\Equal11~1_combout\ & \Equal9~1_combout\)) # (!\Equal12~1_combout\ & ((\Equal9~1_combout\) # (!\Equal11~1_combout\))))) # (!\Equal10~1_combout\ & ((\Equal12~1_combout\ & 
-- ((\Equal9~1_combout\) # (!\Equal11~1_combout\))) # (!\Equal12~1_combout\ & ((\Equal11~1_combout\) # (!\Equal9~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111000010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal10~1_combout\,
	datab => \Equal12~1_combout\,
	datac => \Equal11~1_combout\,
	datad => \Equal9~1_combout\,
	combout => \Add10~2_combout\);

-- Location: LCCOMB_X25_Y8_N12
\Add13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add13~2_combout\ = (\Hayespacio~0_combout\ & ((\Add10~2_combout\ & (\Add13~1\ & VCC)) # (!\Add10~2_combout\ & (!\Add13~1\)))) # (!\Hayespacio~0_combout\ & ((\Add10~2_combout\ & (!\Add13~1\)) # (!\Add10~2_combout\ & ((\Add13~1\) # (GND)))))
-- \Add13~3\ = CARRY((\Hayespacio~0_combout\ & (!\Add10~2_combout\ & !\Add13~1\)) # (!\Hayespacio~0_combout\ & ((!\Add13~1\) # (!\Add10~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Hayespacio~0_combout\,
	datab => \Add10~2_combout\,
	datad => VCC,
	cin => \Add13~1\,
	combout => \Add13~2_combout\,
	cout => \Add13~3\);

-- Location: LCCOMB_X25_Y8_N24
\Add15~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add15~4_combout\ = ((\Add13~2_combout\ $ (\Hayespacio~1_combout\ $ (!\Add15~3\)))) # (GND)
-- \Add15~5\ = CARRY((\Add13~2_combout\ & ((\Hayespacio~1_combout\) # (!\Add15~3\))) # (!\Add13~2_combout\ & (\Hayespacio~1_combout\ & !\Add15~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add13~2_combout\,
	datab => \Hayespacio~1_combout\,
	datad => VCC,
	cin => \Add15~3\,
	combout => \Add15~4_combout\,
	cout => \Add15~5\);

-- Location: LCCOMB_X25_Y8_N4
\Add10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~1_combout\ = (\Equal12~1_combout\ & (!\Equal11~1_combout\ & (\Equal10~1_combout\ $ (!\Equal9~1_combout\)))) # (!\Equal12~1_combout\ & ((\Equal10~1_combout\ $ (!\Equal9~1_combout\)) # (!\Equal11~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101100010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal10~1_combout\,
	datab => \Equal12~1_combout\,
	datac => \Equal11~1_combout\,
	datad => \Equal9~1_combout\,
	combout => \Add10~1_combout\);

-- Location: LCCOMB_X25_Y8_N14
\Add13~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add13~4_combout\ = (\Add13~3\ & (\contador2~4_combout\ & (\Add10~1_combout\ & VCC))) # (!\Add13~3\ & ((((\contador2~4_combout\ & \Add10~1_combout\)))))
-- \Add13~5\ = CARRY((\contador2~4_combout\ & (\Add10~1_combout\ & !\Add13~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \contador2~4_combout\,
	datab => \Add10~1_combout\,
	datad => VCC,
	cin => \Add13~3\,
	combout => \Add13~4_combout\,
	cout => \Add13~5\);

-- Location: LCCOMB_X25_Y8_N26
\Add15~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add15~6_combout\ = (\Add13~4_combout\ & (!\Add15~5\)) # (!\Add13~4_combout\ & ((\Add15~5\) # (GND)))
-- \Add15~7\ = CARRY((!\Add15~5\) # (!\Add13~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add13~4_combout\,
	datad => VCC,
	cin => \Add15~5\,
	combout => \Add15~6_combout\,
	cout => \Add15~7\);

-- Location: LCCOMB_X25_Y8_N16
\Add13~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add13~6_combout\ = \Add13~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add13~5\,
	combout => \Add13~6_combout\);

-- Location: LCCOMB_X25_Y8_N28
\Add15~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add15~8_combout\ = \Add15~7\ $ (!\Add13~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Add13~6_combout\,
	cin => \Add15~7\,
	combout => \Add15~8_combout\);

-- Location: LCCOMB_X25_Y8_N6
\Equal17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal17~0_combout\ = (\Add15~2_combout\ & (!\Add15~4_combout\ & (!\Add15~6_combout\ & \Add15~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add15~2_combout\,
	datab => \Add15~4_combout\,
	datac => \Add15~6_combout\,
	datad => \Add15~8_combout\,
	combout => \Equal17~0_combout\);

-- Location: LCCOMB_X25_Y8_N8
\Hayespacio~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hayespacio~4_combout\ = (\Equal10~1_combout\) # ((!\Equal17~0_combout\ & ((\Hayespacio~q\) # (!\Hayespacio~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal10~1_combout\,
	datab => \Hayespacio~3_combout\,
	datac => \Hayespacio~q\,
	datad => \Equal17~0_combout\,
	combout => \Hayespacio~4_combout\);

-- Location: FF_X25_Y8_N9
Hayespacio : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instancia1|salida~clkctrl_outclk\,
	d => \Hayespacio~4_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hayespacio~q\);

-- Location: LCCOMB_X21_Y7_N26
\Arreglomemoriascero~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~20_combout\ = (\EstaAquiEseCasco~q\) # (((\Equal20~1_combout\) # (\definido~q\)) # (!\Hayespacio~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EstaAquiEseCasco~q\,
	datab => \Hayespacio~q\,
	datac => \Equal20~1_combout\,
	datad => \definido~q\,
	combout => \Arreglomemoriascero~20_combout\);

-- Location: LCCOMB_X21_Y7_N30
\Arreglomemoriascero~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~22_combout\ = (\Arreglomemoriascero~20_combout\) # ((\Arreglomemoriascero~16_combout\ & (\Arreglomemoriascero~13_combout\ & \Arreglomemoriascero~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero~20_combout\,
	datab => \Arreglomemoriascero~16_combout\,
	datac => \Arreglomemoriascero~13_combout\,
	datad => \Arreglomemoriascero~21_combout\,
	combout => \Arreglomemoriascero~22_combout\);

-- Location: LCCOMB_X18_Y7_N20
\Arreglomemoriascero~182\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~182_combout\ = (\Arreglomemoriascero~16_combout\ & (((\Arreglomemoriascero~17_combout\)))) # (!\Arreglomemoriascero~16_combout\ & ((\Arreglomemoriascero~17_combout\ & (!Arreglomemoriascero(35))) # (!\Arreglomemoriascero~17_combout\ & 
-- ((!Arreglomemoriascero(29))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(35),
	datab => Arreglomemoriascero(29),
	datac => \Arreglomemoriascero~16_combout\,
	datad => \Arreglomemoriascero~17_combout\,
	combout => \Arreglomemoriascero~182_combout\);

-- Location: LCCOMB_X18_Y9_N26
\Arreglomemoriascero~180\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~180_combout\ = (\Arreglomemoriascero~12_combout\ & (((\Arreglomemoriascero~13_combout\)))) # (!\Arreglomemoriascero~12_combout\ & ((\Arreglomemoriascero~13_combout\ & ((!Arreglomemoriascero(47)))) # (!\Arreglomemoriascero~13_combout\ 
-- & (!Arreglomemoriascero(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(11),
	datab => Arreglomemoriascero(47),
	datac => \Arreglomemoriascero~12_combout\,
	datad => \Arreglomemoriascero~13_combout\,
	combout => \Arreglomemoriascero~180_combout\);

-- Location: LCCOMB_X18_Y9_N20
\Arreglomemoriascero~181\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~181_combout\ = (\Arreglomemoriascero~180_combout\ & (((Arreglomemoriascero(5)) # (!\Arreglomemoriascero~12_combout\)))) # (!\Arreglomemoriascero~180_combout\ & (!Arreglomemoriascero(17) & ((\Arreglomemoriascero~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(17),
	datab => Arreglomemoriascero(5),
	datac => \Arreglomemoriascero~180_combout\,
	datad => \Arreglomemoriascero~12_combout\,
	combout => \Arreglomemoriascero~181_combout\);

-- Location: LCCOMB_X19_Y9_N6
\Arreglomemoriascero~183\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~183_combout\ = (\Arreglomemoriascero~16_combout\ & ((\Arreglomemoriascero~182_combout\ & (!Arreglomemoriascero(23))) # (!\Arreglomemoriascero~182_combout\ & ((\Arreglomemoriascero~181_combout\))))) # (!\Arreglomemoriascero~16_combout\ 
-- & (((\Arreglomemoriascero~182_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero~16_combout\,
	datab => Arreglomemoriascero(23),
	datac => \Arreglomemoriascero~182_combout\,
	datad => \Arreglomemoriascero~181_combout\,
	combout => \Arreglomemoriascero~183_combout\);

-- Location: LCCOMB_X19_Y9_N20
\Arreglomemoriascero[41]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero[41]~5_combout\ = (\Arreglomemoriascero~22_combout\ & (Arreglomemoriascero(41))) # (!\Arreglomemoriascero~22_combout\ & ((\Arreglomemoriascero~183_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero~22_combout\,
	datac => Arreglomemoriascero(41),
	datad => \Arreglomemoriascero~183_combout\,
	combout => \Arreglomemoriascero[41]~5_combout\);

-- Location: LCCOMB_X19_Y8_N0
\Arreglomemoriascero~204\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~204_combout\ = (\Arreglomemoriascero[3]~40_combout\ & ((\Arreglomemoriascero[3]~45_combout\ & ((\Arreglomemoriascero[5]~11_combout\))) # (!\Arreglomemoriascero[3]~45_combout\ & (\Arreglomemoriascero~203_combout\)))) # 
-- (!\Arreglomemoriascero[3]~40_combout\ & (\Arreglomemoriascero[3]~45_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero[3]~40_combout\,
	datab => \Arreglomemoriascero[3]~45_combout\,
	datac => \Arreglomemoriascero~203_combout\,
	datad => \Arreglomemoriascero[5]~11_combout\,
	combout => \Arreglomemoriascero~204_combout\);

-- Location: LCCOMB_X19_Y9_N16
\Arreglomemoriascero~210\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~210_combout\ = (\Arreglomemoriascero[3]~40_combout\ & (((\Arreglomemoriascero~204_combout\)))) # (!\Arreglomemoriascero[3]~40_combout\ & ((\Arreglomemoriascero~204_combout\ & ((\Arreglomemoriascero~209_combout\))) # 
-- (!\Arreglomemoriascero~204_combout\ & (\Arreglomemoriascero~198_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero[3]~40_combout\,
	datab => \Arreglomemoriascero~198_combout\,
	datac => \Arreglomemoriascero~209_combout\,
	datad => \Arreglomemoriascero~204_combout\,
	combout => \Arreglomemoriascero~210_combout\);

-- Location: LCCOMB_X19_Y9_N22
\Arreglomemoriascero~211\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~211_combout\ = (\Arreglomemoriascero[3]~34_combout\ & (!\Arreglomemoriascero[3]~28_combout\ & ((\Arreglomemoriascero~210_combout\)))) # (!\Arreglomemoriascero[3]~34_combout\ & ((\Arreglomemoriascero[3]~28_combout\) # 
-- ((\Arreglomemoriascero~193_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero[3]~34_combout\,
	datab => \Arreglomemoriascero[3]~28_combout\,
	datac => \Arreglomemoriascero~193_combout\,
	datad => \Arreglomemoriascero~210_combout\,
	combout => \Arreglomemoriascero~211_combout\);

-- Location: LCCOMB_X19_Y9_N4
\Arreglomemoriascero~217\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~217_combout\ = (\Arreglomemoriascero[3]~28_combout\ & ((\Arreglomemoriascero~211_combout\ & (\Arreglomemoriascero~216_combout\)) # (!\Arreglomemoriascero~211_combout\ & ((\Arreglomemoriascero~188_combout\))))) # 
-- (!\Arreglomemoriascero[3]~28_combout\ & (((\Arreglomemoriascero~211_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero~216_combout\,
	datab => \Arreglomemoriascero[3]~28_combout\,
	datac => \Arreglomemoriascero~211_combout\,
	datad => \Arreglomemoriascero~188_combout\,
	combout => \Arreglomemoriascero~217_combout\);

-- Location: FF_X19_Y9_N21
\Arreglomemoriascero[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instancia1|salida~clkctrl_outclk\,
	d => \Arreglomemoriascero[41]~5_combout\,
	asdata => \Arreglomemoriascero~217_combout\,
	sload => \Arreglomemoriascero[3]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Arreglomemoriascero(41));

-- Location: LCCOMB_X24_Y8_N4
\Equal10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal10~0_combout\ = (!Arreglomemoriascero(38) & (!Arreglomemoriascero(37) & (!Arreglomemoriascero(36) & !Arreglomemoriascero(39))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(38),
	datab => Arreglomemoriascero(37),
	datac => Arreglomemoriascero(36),
	datad => Arreglomemoriascero(39),
	combout => \Equal10~0_combout\);

-- Location: LCCOMB_X24_Y8_N2
\Equal10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal10~1_combout\ = (!Arreglomemoriascero(41) & (\Equal10~0_combout\ & !Arreglomemoriascero(40)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => Arreglomemoriascero(41),
	datac => \Equal10~0_combout\,
	datad => Arreglomemoriascero(40),
	combout => \Equal10~1_combout\);

-- Location: LCCOMB_X22_Y8_N16
\vuelta~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vuelta~0_combout\ = (\Equal10~1_combout\) # (((\vuelta~q\) # (\Equal17~0_combout\)) # (!\Hayespacio~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal10~1_combout\,
	datab => \Hayespacio~3_combout\,
	datac => \vuelta~q\,
	datad => \Equal17~0_combout\,
	combout => \vuelta~0_combout\);

-- Location: FF_X22_Y8_N17
vuelta : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instancia1|salida~clkctrl_outclk\,
	d => \vuelta~0_combout\,
	clrn => \DetectoTarjeta~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vuelta~q\);

-- Location: FF_X21_Y8_N7
\Arreglomemoriascopia3[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instancia1|salida~clkctrl_outclk\,
	d => \Arreglomemoriascopia3~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Arreglomemoriascopia3(37));

-- Location: LCCOMB_X21_Y8_N6
\Arreglomemoriascopia3~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascopia3~25_combout\ = (\DetectoTarjeta~input_o\ & ((\vuelta~q\ & (Arreglomemoriascopia3(37))) # (!\vuelta~q\ & ((Arreglomemoriascero(37)))))) # (!\DetectoTarjeta~input_o\ & (((Arreglomemoriascopia3(37)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DetectoTarjeta~input_o\,
	datab => \vuelta~q\,
	datac => Arreglomemoriascopia3(37),
	datad => Arreglomemoriascero(37),
	combout => \Arreglomemoriascopia3~25_combout\);

-- Location: LCCOMB_X21_Y8_N20
\Equal21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal21~0_combout\ = (!\Arreglomemoriascopia3~25_combout\ & (!\Arreglomemoriascopia3~26_combout\ & (!\Arreglomemoriascopia3~24_combout\ & !\Arreglomemoriascopia3~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascopia3~25_combout\,
	datab => \Arreglomemoriascopia3~26_combout\,
	datac => \Arreglomemoriascopia3~24_combout\,
	datad => \Arreglomemoriascopia3~27_combout\,
	combout => \Equal21~0_combout\);

-- Location: LCCOMB_X22_Y7_N24
\Equal21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal21~1_combout\ = (!\Arreglomemoriascopia3~29_combout\ & !\Arreglomemoriascopia3~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Arreglomemoriascopia3~29_combout\,
	datad => \Arreglomemoriascopia3~28_combout\,
	combout => \Equal21~1_combout\);

-- Location: LCCOMB_X22_Y7_N10
\Arreglomemoriascero~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~16_combout\ = (\Equal21~0_combout\ & (!\Equal21~1_combout\ & ((\Equal22~0_combout\) # (\Equal22~1_combout\)))) # (!\Equal21~0_combout\ & (((\Equal22~0_combout\) # (\Equal22~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal21~0_combout\,
	datab => \Equal21~1_combout\,
	datac => \Equal22~0_combout\,
	datad => \Equal22~1_combout\,
	combout => \Arreglomemoriascero~16_combout\);

-- Location: LCCOMB_X23_Y6_N6
\Arreglomemoriascero~151\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~151_combout\ = (\Arreglomemoriascero~13_combout\ & (((\Arreglomemoriascero~12_combout\)) # (!Arreglomemoriascero(26)))) # (!\Arreglomemoriascero~13_combout\ & (((Arreglomemoriascero(38) & !\Arreglomemoriascero~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(26),
	datab => Arreglomemoriascero(38),
	datac => \Arreglomemoriascero~13_combout\,
	datad => \Arreglomemoriascero~12_combout\,
	combout => \Arreglomemoriascero~151_combout\);

-- Location: LCCOMB_X23_Y6_N8
\Arreglomemoriascero~152\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~152_combout\ = (\Arreglomemoriascero~12_combout\ & ((\Arreglomemoriascero~151_combout\ & (!Arreglomemoriascero(32))) # (!\Arreglomemoriascero~151_combout\ & ((!Arreglomemoriascero(44)))))) # (!\Arreglomemoriascero~12_combout\ & 
-- (((\Arreglomemoriascero~151_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(32),
	datab => \Arreglomemoriascero~12_combout\,
	datac => Arreglomemoriascero(44),
	datad => \Arreglomemoriascero~151_combout\,
	combout => \Arreglomemoriascero~152_combout\);

-- Location: LCCOMB_X23_Y6_N10
\Arreglomemoriascero~153\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~153_combout\ = (\Arreglomemoriascero~16_combout\ & (((\Arreglomemoriascero~17_combout\)))) # (!\Arreglomemoriascero~16_combout\ & ((\Arreglomemoriascero~17_combout\ & ((!Arreglomemoriascero(14)))) # (!\Arreglomemoriascero~17_combout\ 
-- & (!Arreglomemoriascero(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(8),
	datab => Arreglomemoriascero(14),
	datac => \Arreglomemoriascero~16_combout\,
	datad => \Arreglomemoriascero~17_combout\,
	combout => \Arreglomemoriascero~153_combout\);

-- Location: LCCOMB_X23_Y6_N4
\Arreglomemoriascero~154\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~154_combout\ = (\Arreglomemoriascero~16_combout\ & ((\Arreglomemoriascero~153_combout\ & (Arreglomemoriascero(2))) # (!\Arreglomemoriascero~153_combout\ & ((\Arreglomemoriascero~152_combout\))))) # (!\Arreglomemoriascero~16_combout\ & 
-- (((\Arreglomemoriascero~153_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero~16_combout\,
	datab => Arreglomemoriascero(2),
	datac => \Arreglomemoriascero~152_combout\,
	datad => \Arreglomemoriascero~153_combout\,
	combout => \Arreglomemoriascero~154_combout\);

-- Location: LCCOMB_X23_Y6_N18
\Arreglomemoriascero~155\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~155_combout\ = (\Arreglomemoriascero~22_combout\ & (!Arreglomemoriascero(20))) # (!\Arreglomemoriascero~22_combout\ & ((\Arreglomemoriascero~154_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => Arreglomemoriascero(20),
	datac => \Arreglomemoriascero~154_combout\,
	datad => \Arreglomemoriascero~22_combout\,
	combout => \Arreglomemoriascero~155_combout\);

-- Location: LCCOMB_X22_Y10_N16
\Arreglomemoriascero~387\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~387_combout\ = (\Arreglomemoriascero[3]~45_combout\ & (!\Arreglomemoriascero[3]~40_combout\)) # (!\Arreglomemoriascero[3]~45_combout\ & ((\Arreglomemoriascero[3]~40_combout\ & ((\Arreglomemoriascero~150_combout\))) # 
-- (!\Arreglomemoriascero[3]~40_combout\ & (\Arreglomemoriascero[38]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero[3]~45_combout\,
	datab => \Arreglomemoriascero[3]~40_combout\,
	datac => \Arreglomemoriascero[38]~2_combout\,
	datad => \Arreglomemoriascero~150_combout\,
	combout => \Arreglomemoriascero~387_combout\);

-- Location: LCCOMB_X22_Y10_N14
\Arreglomemoriascero~388\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~388_combout\ = (\Arreglomemoriascero[3]~45_combout\ & ((\Arreglomemoriascero~387_combout\ & (\Arreglomemoriascero~165_combout\)) # (!\Arreglomemoriascero~387_combout\ & ((\Arreglomemoriascero~178_combout\))))) # 
-- (!\Arreglomemoriascero[3]~45_combout\ & (((\Arreglomemoriascero~387_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero~165_combout\,
	datab => \Arreglomemoriascero[3]~45_combout\,
	datac => \Arreglomemoriascero~178_combout\,
	datad => \Arreglomemoriascero~387_combout\,
	combout => \Arreglomemoriascero~388_combout\);

-- Location: LCCOMB_X22_Y10_N28
\Arreglomemoriascero~389\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~389_combout\ = (\Arreglomemoriascero[3]~34_combout\ & ((\Arreglomemoriascero[3]~28_combout\ & (\Arreglomemoriascero[2]~8_combout\)) # (!\Arreglomemoriascero[3]~28_combout\ & ((\Arreglomemoriascero~388_combout\))))) # 
-- (!\Arreglomemoriascero[3]~34_combout\ & (((\Arreglomemoriascero[3]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero[3]~34_combout\,
	datab => \Arreglomemoriascero[2]~8_combout\,
	datac => \Arreglomemoriascero~388_combout\,
	datad => \Arreglomemoriascero[3]~28_combout\,
	combout => \Arreglomemoriascero~389_combout\);

-- Location: LCCOMB_X22_Y10_N10
\Arreglomemoriascero~390\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~390_combout\ = (\Arreglomemoriascero[3]~34_combout\ & (((\Arreglomemoriascero~389_combout\)))) # (!\Arreglomemoriascero[3]~34_combout\ & ((\Arreglomemoriascero~389_combout\ & ((\Arreglomemoriascero~171_combout\))) # 
-- (!\Arreglomemoriascero~389_combout\ & (\Arreglomemoriascero~164_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero[3]~34_combout\,
	datab => \Arreglomemoriascero~164_combout\,
	datac => \Arreglomemoriascero~171_combout\,
	datad => \Arreglomemoriascero~389_combout\,
	combout => \Arreglomemoriascero~390_combout\);

-- Location: LCCOMB_X22_Y10_N22
\Arreglomemoriascero~391\ : cycloneive_lcell_comb
-- Equation(s):
-- \Arreglomemoriascero~391_combout\ = (\Arreglomemoriascero[3]~65_combout\ & ((!\Arreglomemoriascero~390_combout\))) # (!\Arreglomemoriascero[3]~65_combout\ & (!\Arreglomemoriascero~155_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero~155_combout\,
	datac => \Arreglomemoriascero[3]~65_combout\,
	datad => \Arreglomemoriascero~390_combout\,
	combout => \Arreglomemoriascero~391_combout\);

-- Location: FF_X22_Y10_N23
\Arreglomemoriascero[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instancia1|salida~clkctrl_outclk\,
	d => \Arreglomemoriascero~391_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Arreglomemoriascero(20));

-- Location: LCCOMB_X24_Y9_N26
\Equal4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal4~1_combout\ = (\Lecturatarjeta[3]~input_o\ & (!Arreglomemoriascero(21) & (\Lecturatarjeta[2]~input_o\ $ (Arreglomemoriascero(20))))) # (!\Lecturatarjeta[3]~input_o\ & (Arreglomemoriascero(21) & (\Lecturatarjeta[2]~input_o\ $ 
-- (Arreglomemoriascero(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Lecturatarjeta[3]~input_o\,
	datab => \Lecturatarjeta[2]~input_o\,
	datac => Arreglomemoriascero(20),
	datad => Arreglomemoriascero(21),
	combout => \Equal4~1_combout\);

-- Location: LCCOMB_X24_Y9_N12
\Equal5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal5~2_combout\ = (\Lecturatarjeta[5]~input_o\ & (!Arreglomemoriascero(17) & (\Lecturatarjeta[4]~input_o\ $ (Arreglomemoriascero(16))))) # (!\Lecturatarjeta[5]~input_o\ & (Arreglomemoriascero(17) & (\Lecturatarjeta[4]~input_o\ $ 
-- (Arreglomemoriascero(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Lecturatarjeta[5]~input_o\,
	datab => \Lecturatarjeta[4]~input_o\,
	datac => Arreglomemoriascero(17),
	datad => Arreglomemoriascero(16),
	combout => \Equal5~2_combout\);

-- Location: LCCOMB_X21_Y6_N4
\Equal5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal5~1_combout\ = (\Lecturatarjeta[2]~input_o\ & (!Arreglomemoriascero(14) & (Arreglomemoriascero(15) $ (\Lecturatarjeta[3]~input_o\)))) # (!\Lecturatarjeta[2]~input_o\ & (Arreglomemoriascero(14) & (Arreglomemoriascero(15) $ 
-- (\Lecturatarjeta[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Lecturatarjeta[2]~input_o\,
	datab => Arreglomemoriascero(14),
	datac => Arreglomemoriascero(15),
	datad => \Lecturatarjeta[3]~input_o\,
	combout => \Equal5~1_combout\);

-- Location: LCCOMB_X24_Y9_N18
\Equal5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal5~0_combout\ = (\Lecturatarjeta[0]~input_o\ & (!Arreglomemoriascero(12) & (\Lecturatarjeta[1]~input_o\ $ (Arreglomemoriascero(13))))) # (!\Lecturatarjeta[0]~input_o\ & (Arreglomemoriascero(12) & (\Lecturatarjeta[1]~input_o\ $ 
-- (Arreglomemoriascero(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Lecturatarjeta[0]~input_o\,
	datab => \Lecturatarjeta[1]~input_o\,
	datac => Arreglomemoriascero(12),
	datad => Arreglomemoriascero(13),
	combout => \Equal5~0_combout\);

-- Location: LCCOMB_X24_Y9_N2
\Equal5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal5~3_combout\ = (\Equal5~2_combout\ & (\Equal5~1_combout\ & \Equal5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~2_combout\,
	datac => \Equal5~1_combout\,
	datad => \Equal5~0_combout\,
	combout => \Equal5~3_combout\);

-- Location: LCCOMB_X24_Y9_N4
\Equal4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal4~2_combout\ = (\Lecturatarjeta[5]~input_o\ & (!Arreglomemoriascero(23) & (\Lecturatarjeta[4]~input_o\ $ (Arreglomemoriascero(22))))) # (!\Lecturatarjeta[5]~input_o\ & (Arreglomemoriascero(23) & (\Lecturatarjeta[4]~input_o\ $ 
-- (Arreglomemoriascero(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Lecturatarjeta[5]~input_o\,
	datab => \Lecturatarjeta[4]~input_o\,
	datac => Arreglomemoriascero(22),
	datad => Arreglomemoriascero(23),
	combout => \Equal4~2_combout\);

-- Location: LCCOMB_X24_Y9_N16
\Equal4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal4~0_combout\ = (\Lecturatarjeta[0]~input_o\ & (!Arreglomemoriascero(18) & (\Lecturatarjeta[1]~input_o\ $ (Arreglomemoriascero(19))))) # (!\Lecturatarjeta[0]~input_o\ & (Arreglomemoriascero(18) & (\Lecturatarjeta[1]~input_o\ $ 
-- (Arreglomemoriascero(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Lecturatarjeta[0]~input_o\,
	datab => \Lecturatarjeta[1]~input_o\,
	datac => Arreglomemoriascero(18),
	datad => Arreglomemoriascero(19),
	combout => \Equal4~0_combout\);

-- Location: LCCOMB_X24_Y9_N28
\Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~0_combout\ = (!\Equal5~3_combout\ & (((!\Equal4~0_combout\) # (!\Equal4~2_combout\)) # (!\Equal4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~1_combout\,
	datab => \Equal5~3_combout\,
	datac => \Equal4~2_combout\,
	datad => \Equal4~0_combout\,
	combout => \Add3~0_combout\);

-- Location: LCCOMB_X26_Y8_N22
\Equal6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal6~2_combout\ = (Arreglomemoriascero(10) & (!\Lecturatarjeta[4]~input_o\ & (Arreglomemoriascero(11) $ (\Lecturatarjeta[5]~input_o\)))) # (!Arreglomemoriascero(10) & (\Lecturatarjeta[4]~input_o\ & (Arreglomemoriascero(11) $ 
-- (\Lecturatarjeta[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(10),
	datab => Arreglomemoriascero(11),
	datac => \Lecturatarjeta[4]~input_o\,
	datad => \Lecturatarjeta[5]~input_o\,
	combout => \Equal6~2_combout\);

-- Location: LCCOMB_X26_Y8_N24
\Equal6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal6~1_combout\ = (\Lecturatarjeta[3]~input_o\ & (!Arreglomemoriascero(9) & (Arreglomemoriascero(8) $ (\Lecturatarjeta[2]~input_o\)))) # (!\Lecturatarjeta[3]~input_o\ & (Arreglomemoriascero(9) & (Arreglomemoriascero(8) $ 
-- (\Lecturatarjeta[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Lecturatarjeta[3]~input_o\,
	datab => Arreglomemoriascero(8),
	datac => Arreglomemoriascero(9),
	datad => \Lecturatarjeta[2]~input_o\,
	combout => \Equal6~1_combout\);

-- Location: LCCOMB_X25_Y6_N24
\Equal6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal6~0_combout\ = (\Lecturatarjeta[1]~input_o\ & (!Arreglomemoriascero(7) & (\Lecturatarjeta[0]~input_o\ $ (Arreglomemoriascero(6))))) # (!\Lecturatarjeta[1]~input_o\ & (Arreglomemoriascero(7) & (\Lecturatarjeta[0]~input_o\ $ 
-- (Arreglomemoriascero(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Lecturatarjeta[1]~input_o\,
	datab => \Lecturatarjeta[0]~input_o\,
	datac => Arreglomemoriascero(6),
	datad => Arreglomemoriascero(7),
	combout => \Equal6~0_combout\);

-- Location: LCCOMB_X26_Y8_N12
\Equal7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal7~2_combout\ = (\Lecturatarjeta[5]~input_o\ & (Arreglomemoriascero(5) & (\Lecturatarjeta[4]~input_o\ $ (!Arreglomemoriascero(4))))) # (!\Lecturatarjeta[5]~input_o\ & (!Arreglomemoriascero(5) & (\Lecturatarjeta[4]~input_o\ $ 
-- (!Arreglomemoriascero(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Lecturatarjeta[5]~input_o\,
	datab => \Lecturatarjeta[4]~input_o\,
	datac => Arreglomemoriascero(4),
	datad => Arreglomemoriascero(5),
	combout => \Equal7~2_combout\);

-- Location: LCCOMB_X24_Y8_N18
\Equal7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal7~1_combout\ = (\Lecturatarjeta[2]~input_o\ & (Arreglomemoriascero(2) & (\Lecturatarjeta[3]~input_o\ $ (!Arreglomemoriascero(3))))) # (!\Lecturatarjeta[2]~input_o\ & (!Arreglomemoriascero(2) & (\Lecturatarjeta[3]~input_o\ $ 
-- (!Arreglomemoriascero(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Lecturatarjeta[2]~input_o\,
	datab => \Lecturatarjeta[3]~input_o\,
	datac => Arreglomemoriascero(3),
	datad => Arreglomemoriascero(2),
	combout => \Equal7~1_combout\);

-- Location: LCCOMB_X24_Y8_N28
\Equal7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal7~0_combout\ = (\Lecturatarjeta[0]~input_o\ & (Arreglomemoriascero(0) & (\Lecturatarjeta[1]~input_o\ $ (!Arreglomemoriascero(1))))) # (!\Lecturatarjeta[0]~input_o\ & (!Arreglomemoriascero(0) & (\Lecturatarjeta[1]~input_o\ $ 
-- (!Arreglomemoriascero(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Lecturatarjeta[0]~input_o\,
	datab => \Lecturatarjeta[1]~input_o\,
	datac => Arreglomemoriascero(1),
	datad => Arreglomemoriascero(0),
	combout => \Equal7~0_combout\);

-- Location: LCCOMB_X26_Y8_N6
\Equal7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal7~3_combout\ = (\Equal7~2_combout\ & (\Equal7~1_combout\ & \Equal7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal7~2_combout\,
	datac => \Equal7~1_combout\,
	datad => \Equal7~0_combout\,
	combout => \Equal7~3_combout\);

-- Location: LCCOMB_X26_Y8_N16
\Add5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~0_combout\ = (!\Equal7~3_combout\ & (((!\Equal6~0_combout\) # (!\Equal6~1_combout\)) # (!\Equal6~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal6~2_combout\,
	datab => \Equal6~1_combout\,
	datac => \Equal6~0_combout\,
	datad => \Equal7~3_combout\,
	combout => \Add5~0_combout\);

-- Location: LCCOMB_X24_Y8_N10
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (\Lecturatarjeta[2]~input_o\ & (!Arreglomemoriascero(44) & (\Lecturatarjeta[3]~input_o\ $ (Arreglomemoriascero(45))))) # (!\Lecturatarjeta[2]~input_o\ & (Arreglomemoriascero(44) & (\Lecturatarjeta[3]~input_o\ $ 
-- (Arreglomemoriascero(45)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Lecturatarjeta[2]~input_o\,
	datab => \Lecturatarjeta[3]~input_o\,
	datac => Arreglomemoriascero(44),
	datad => Arreglomemoriascero(45),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X24_Y8_N8
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (\Lecturatarjeta[4]~input_o\ & (!Arreglomemoriascero(46) & (Arreglomemoriascero(47) $ (\Lecturatarjeta[5]~input_o\)))) # (!\Lecturatarjeta[4]~input_o\ & (Arreglomemoriascero(46) & (Arreglomemoriascero(47) $ 
-- (\Lecturatarjeta[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Lecturatarjeta[4]~input_o\,
	datab => Arreglomemoriascero(47),
	datac => \Lecturatarjeta[5]~input_o\,
	datad => Arreglomemoriascero(46),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X24_Y8_N0
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (\Lecturatarjeta[0]~input_o\ & (!Arreglomemoriascero(42) & (\Lecturatarjeta[1]~input_o\ $ (Arreglomemoriascero(43))))) # (!\Lecturatarjeta[0]~input_o\ & (Arreglomemoriascero(42) & (\Lecturatarjeta[1]~input_o\ $ 
-- (Arreglomemoriascero(43)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Lecturatarjeta[0]~input_o\,
	datab => \Lecturatarjeta[1]~input_o\,
	datac => Arreglomemoriascero(43),
	datad => Arreglomemoriascero(42),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X24_Y8_N6
\Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (\Equal0~1_combout\ & (\Equal0~2_combout\ & \Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datac => \Equal0~2_combout\,
	datad => \Equal0~0_combout\,
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X21_Y9_N0
\Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~1_combout\ = (\Lecturatarjeta[2]~input_o\ & (!Arreglomemoriascero(32) & (Arreglomemoriascero(33) $ (\Lecturatarjeta[3]~input_o\)))) # (!\Lecturatarjeta[2]~input_o\ & (Arreglomemoriascero(32) & (Arreglomemoriascero(33) $ 
-- (\Lecturatarjeta[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Lecturatarjeta[2]~input_o\,
	datab => Arreglomemoriascero(33),
	datac => \Lecturatarjeta[3]~input_o\,
	datad => Arreglomemoriascero(32),
	combout => \Equal2~1_combout\);

-- Location: LCCOMB_X21_Y9_N22
\Equal2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~2_combout\ = (\Lecturatarjeta[5]~input_o\ & (!Arreglomemoriascero(35) & (\Lecturatarjeta[4]~input_o\ $ (Arreglomemoriascero(34))))) # (!\Lecturatarjeta[5]~input_o\ & (Arreglomemoriascero(35) & (\Lecturatarjeta[4]~input_o\ $ 
-- (Arreglomemoriascero(34)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Lecturatarjeta[5]~input_o\,
	datab => \Lecturatarjeta[4]~input_o\,
	datac => Arreglomemoriascero(35),
	datad => Arreglomemoriascero(34),
	combout => \Equal2~2_combout\);

-- Location: LCCOMB_X21_Y9_N28
\Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (\Lecturatarjeta[1]~input_o\ & (!Arreglomemoriascero(31) & (\Lecturatarjeta[0]~input_o\ $ (Arreglomemoriascero(30))))) # (!\Lecturatarjeta[1]~input_o\ & (Arreglomemoriascero(31) & (\Lecturatarjeta[0]~input_o\ $ 
-- (Arreglomemoriascero(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Lecturatarjeta[1]~input_o\,
	datab => \Lecturatarjeta[0]~input_o\,
	datac => Arreglomemoriascero(30),
	datad => Arreglomemoriascero(31),
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X21_Y9_N16
\Equal2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~3_combout\ = (\Equal2~1_combout\ & (\Equal2~2_combout\ & \Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal2~1_combout\,
	datac => \Equal2~2_combout\,
	datad => \Equal2~0_combout\,
	combout => \Equal2~3_combout\);

-- Location: LCCOMB_X26_Y8_N10
\Equal3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~1_combout\ = (\Lecturatarjeta[2]~input_o\ & (!Arreglomemoriascero(26) & (Arreglomemoriascero(27) $ (\Lecturatarjeta[3]~input_o\)))) # (!\Lecturatarjeta[2]~input_o\ & (Arreglomemoriascero(26) & (Arreglomemoriascero(27) $ 
-- (\Lecturatarjeta[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Lecturatarjeta[2]~input_o\,
	datab => Arreglomemoriascero(27),
	datac => \Lecturatarjeta[3]~input_o\,
	datad => Arreglomemoriascero(26),
	combout => \Equal3~1_combout\);

-- Location: LCCOMB_X26_Y8_N4
\Equal3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~2_combout\ = (\Lecturatarjeta[5]~input_o\ & (!Arreglomemoriascero(29) & (Arreglomemoriascero(28) $ (\Lecturatarjeta[4]~input_o\)))) # (!\Lecturatarjeta[5]~input_o\ & (Arreglomemoriascero(29) & (Arreglomemoriascero(28) $ 
-- (\Lecturatarjeta[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Lecturatarjeta[5]~input_o\,
	datab => Arreglomemoriascero(28),
	datac => \Lecturatarjeta[4]~input_o\,
	datad => Arreglomemoriascero(29),
	combout => \Equal3~2_combout\);

-- Location: LCCOMB_X26_Y8_N28
\Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = (Arreglomemoriascero(25) & (!\Lecturatarjeta[1]~input_o\ & (Arreglomemoriascero(24) $ (\Lecturatarjeta[0]~input_o\)))) # (!Arreglomemoriascero(25) & (\Lecturatarjeta[1]~input_o\ & (Arreglomemoriascero(24) $ 
-- (\Lecturatarjeta[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Arreglomemoriascero(25),
	datab => \Lecturatarjeta[1]~input_o\,
	datac => Arreglomemoriascero(24),
	datad => \Lecturatarjeta[0]~input_o\,
	combout => \Equal3~0_combout\);

-- Location: LCCOMB_X26_Y8_N14
\Equal3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~3_combout\ = (\Equal3~1_combout\ & (\Equal3~2_combout\ & \Equal3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~1_combout\,
	datac => \Equal3~2_combout\,
	datad => \Equal3~0_combout\,
	combout => \Equal3~3_combout\);

-- Location: LCCOMB_X28_Y8_N18
\EstaAquiEseCasco~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \EstaAquiEseCasco~0_combout\ = (\Equal0~3_combout\) # ((\EstaAquiEseCasco~q\) # ((\Equal2~3_combout\) # (\Equal3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~3_combout\,
	datab => \EstaAquiEseCasco~q\,
	datac => \Equal2~3_combout\,
	datad => \Equal3~3_combout\,
	combout => \EstaAquiEseCasco~0_combout\);

-- Location: LCCOMB_X28_Y8_N16
\EstaAquiEseCasco~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \EstaAquiEseCasco~1_combout\ = ((\EstaAquiEseCasco~0_combout\) # (!\Add5~0_combout\)) # (!\Add3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add3~0_combout\,
	datac => \Add5~0_combout\,
	datad => \EstaAquiEseCasco~0_combout\,
	combout => \EstaAquiEseCasco~1_combout\);

-- Location: LCCOMB_X24_Y8_N16
\Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = (\Lecturatarjeta[4]~input_o\ & (Arreglomemoriascero(40) & (Arreglomemoriascero(41) $ (!\Lecturatarjeta[5]~input_o\)))) # (!\Lecturatarjeta[4]~input_o\ & (!Arreglomemoriascero(40) & (Arreglomemoriascero(41) $ 
-- (!\Lecturatarjeta[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Lecturatarjeta[4]~input_o\,
	datab => Arreglomemoriascero(41),
	datac => \Lecturatarjeta[5]~input_o\,
	datad => Arreglomemoriascero(40),
	combout => \Equal1~2_combout\);

-- Location: LCCOMB_X24_Y8_N30
\Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (\Lecturatarjeta[2]~input_o\ & (Arreglomemoriascero(38) & (\Lecturatarjeta[3]~input_o\ $ (!Arreglomemoriascero(39))))) # (!\Lecturatarjeta[2]~input_o\ & (!Arreglomemoriascero(38) & (\Lecturatarjeta[3]~input_o\ $ 
-- (!Arreglomemoriascero(39)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Lecturatarjeta[2]~input_o\,
	datab => Arreglomemoriascero(38),
	datac => \Lecturatarjeta[3]~input_o\,
	datad => Arreglomemoriascero(39),
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X24_Y8_N12
\Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (\Lecturatarjeta[1]~input_o\ & (Arreglomemoriascero(37) & (\Lecturatarjeta[0]~input_o\ $ (!Arreglomemoriascero(36))))) # (!\Lecturatarjeta[1]~input_o\ & (!Arreglomemoriascero(37) & (\Lecturatarjeta[0]~input_o\ $ 
-- (!Arreglomemoriascero(36)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Lecturatarjeta[1]~input_o\,
	datab => \Lecturatarjeta[0]~input_o\,
	datac => Arreglomemoriascero(36),
	datad => Arreglomemoriascero(37),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X24_Y8_N22
\Equal1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~3_combout\ = (\Equal1~2_combout\ & (\Equal1~1_combout\ & \Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal1~2_combout\,
	datac => \Equal1~1_combout\,
	datad => \Equal1~0_combout\,
	combout => \Equal1~3_combout\);

-- Location: LCCOMB_X26_Y8_N18
\Add5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~1_combout\ = \Equal7~3_combout\ $ (((\Equal6~2_combout\ & (\Equal6~1_combout\ & \Equal6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal6~2_combout\,
	datab => \Equal6~1_combout\,
	datac => \Equal6~0_combout\,
	datad => \Equal7~3_combout\,
	combout => \Add5~1_combout\);

-- Location: LCCOMB_X28_Y8_N12
\Add1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~1_combout\ = \Equal0~3_combout\ $ (\Equal2~3_combout\ $ (\Equal1~3_combout\ $ (\Equal3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~3_combout\,
	datab => \Equal2~3_combout\,
	datac => \Equal1~3_combout\,
	datad => \Equal3~3_combout\,
	combout => \Add1~1_combout\);

-- Location: LCCOMB_X24_Y9_N30
\Add3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~1_combout\ = \Equal5~3_combout\ $ (((\Equal4~1_combout\ & (\Equal4~2_combout\ & \Equal4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~1_combout\,
	datab => \Equal5~3_combout\,
	datac => \Equal4~2_combout\,
	datad => \Equal4~0_combout\,
	combout => \Add3~1_combout\);

-- Location: LCCOMB_X28_Y8_N0
\Add4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~0_combout\ = (\Add1~1_combout\ & (\Add3~1_combout\ $ (VCC))) # (!\Add1~1_combout\ & (\Add3~1_combout\ & VCC))
-- \Add4~1\ = CARRY((\Add1~1_combout\ & \Add3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~1_combout\,
	datab => \Add3~1_combout\,
	datad => VCC,
	combout => \Add4~0_combout\,
	cout => \Add4~1\);

-- Location: LCCOMB_X28_Y8_N20
\Add6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~1_cout\ = CARRY(!\Equal0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~3_combout\,
	datad => VCC,
	cout => \Add6~1_cout\);

-- Location: LCCOMB_X28_Y8_N22
\Add6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~2_combout\ = (\Add5~1_combout\ & ((\Add4~0_combout\ & (\Add6~1_cout\ & VCC)) # (!\Add4~0_combout\ & (!\Add6~1_cout\)))) # (!\Add5~1_combout\ & ((\Add4~0_combout\ & (!\Add6~1_cout\)) # (!\Add4~0_combout\ & ((\Add6~1_cout\) # (GND)))))
-- \Add6~3\ = CARRY((\Add5~1_combout\ & (!\Add4~0_combout\ & !\Add6~1_cout\)) # (!\Add5~1_combout\ & ((!\Add6~1_cout\) # (!\Add4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~1_combout\,
	datab => \Add4~0_combout\,
	datad => VCC,
	cin => \Add6~1_cout\,
	combout => \Add6~2_combout\,
	cout => \Add6~3\);

-- Location: LCCOMB_X28_Y8_N30
\Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = (\Equal0~3_combout\ & ((\Equal2~3_combout\ & ((\Equal1~3_combout\) # (\Equal3~3_combout\))) # (!\Equal2~3_combout\ & (\Equal1~3_combout\ & \Equal3~3_combout\)))) # (!\Equal0~3_combout\ & ((\Equal2~3_combout\ & (\Equal1~3_combout\ & 
-- \Equal3~3_combout\)) # (!\Equal2~3_combout\ & (!\Equal1~3_combout\ & !\Equal3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~3_combout\,
	datab => \Equal2~3_combout\,
	datac => \Equal1~3_combout\,
	datad => \Equal3~3_combout\,
	combout => \Add1~0_combout\);

-- Location: LCCOMB_X28_Y8_N2
\Add4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~2_combout\ = (\Add1~0_combout\ & ((\Add3~0_combout\ & (!\Add4~1\)) # (!\Add3~0_combout\ & ((\Add4~1\) # (GND))))) # (!\Add1~0_combout\ & ((\Add3~0_combout\ & (\Add4~1\ & VCC)) # (!\Add3~0_combout\ & (!\Add4~1\))))
-- \Add4~3\ = CARRY((\Add1~0_combout\ & ((!\Add4~1\) # (!\Add3~0_combout\))) # (!\Add1~0_combout\ & (!\Add3~0_combout\ & !\Add4~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~0_combout\,
	datab => \Add3~0_combout\,
	datad => VCC,
	cin => \Add4~1\,
	combout => \Add4~2_combout\,
	cout => \Add4~3\);

-- Location: LCCOMB_X28_Y8_N24
\Add6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~4_combout\ = ((\Add5~0_combout\ $ (\Add4~2_combout\ $ (!\Add6~3\)))) # (GND)
-- \Add6~5\ = CARRY((\Add5~0_combout\ & ((\Add4~2_combout\) # (!\Add6~3\))) # (!\Add5~0_combout\ & (\Add4~2_combout\ & !\Add6~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~0_combout\,
	datab => \Add4~2_combout\,
	datad => VCC,
	cin => \Add6~3\,
	combout => \Add6~4_combout\,
	cout => \Add6~5\);

-- Location: LCCOMB_X24_Y8_N20
\contador~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador~4_combout\ = (\Equal1~3_combout\) # ((\Equal0~0_combout\ & (\Equal0~2_combout\ & \Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~3_combout\,
	datab => \Equal0~0_combout\,
	datac => \Equal0~2_combout\,
	datad => \Equal0~1_combout\,
	combout => \contador~4_combout\);

-- Location: LCCOMB_X28_Y8_N14
\Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (\Equal2~3_combout\ & (!\Equal3~3_combout\ & (\Equal0~3_combout\ $ (\Equal1~3_combout\)))) # (!\Equal2~3_combout\ & ((\Equal0~3_combout\ $ (\Equal1~3_combout\)) # (!\Equal3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~3_combout\,
	datab => \Equal2~3_combout\,
	datac => \Equal1~3_combout\,
	datad => \Equal3~3_combout\,
	combout => \Add1~2_combout\);

-- Location: LCCOMB_X28_Y8_N4
\Add4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~4_combout\ = (\Add4~3\ & (!\contador~4_combout\ & (\Add1~2_combout\ & VCC))) # (!\Add4~3\ & ((((!\contador~4_combout\ & \Add1~2_combout\)))))
-- \Add4~5\ = CARRY((!\contador~4_combout\ & (\Add1~2_combout\ & !\Add4~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \contador~4_combout\,
	datab => \Add1~2_combout\,
	datad => VCC,
	cin => \Add4~3\,
	combout => \Add4~4_combout\,
	cout => \Add4~5\);

-- Location: LCCOMB_X28_Y8_N26
\Add6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~6_combout\ = (\Add4~4_combout\ & (!\Add6~5\)) # (!\Add4~4_combout\ & ((\Add6~5\) # (GND)))
-- \Add6~7\ = CARRY((!\Add6~5\) # (!\Add4~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add4~4_combout\,
	datad => VCC,
	cin => \Add6~5\,
	combout => \Add6~6_combout\,
	cout => \Add6~7\);

-- Location: LCCOMB_X28_Y8_N6
\Add4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~6_combout\ = \Add4~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add4~5\,
	combout => \Add4~6_combout\);

-- Location: LCCOMB_X28_Y8_N28
\Add6~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~8_combout\ = \Add6~7\ $ (!\Add4~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Add4~6_combout\,
	cin => \Add6~7\,
	combout => \Add6~8_combout\);

-- Location: LCCOMB_X28_Y8_N10
\EstaAquiEseCasco~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \EstaAquiEseCasco~2_combout\ = ((\Add6~4_combout\) # ((\Add6~6_combout\) # (!\Add6~8_combout\))) # (!\Add6~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~2_combout\,
	datab => \Add6~4_combout\,
	datac => \Add6~6_combout\,
	datad => \Add6~8_combout\,
	combout => \EstaAquiEseCasco~2_combout\);

-- Location: LCCOMB_X28_Y8_N8
\EstaAquiEseCasco~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \EstaAquiEseCasco~3_combout\ = (\Equal1~3_combout\) # ((\EstaAquiEseCasco~1_combout\ & \EstaAquiEseCasco~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EstaAquiEseCasco~1_combout\,
	datac => \Equal1~3_combout\,
	datad => \EstaAquiEseCasco~2_combout\,
	combout => \EstaAquiEseCasco~3_combout\);

-- Location: FF_X28_Y8_N9
EstaAquiEseCasco : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instancia1|salida~clkctrl_outclk\,
	d => \EstaAquiEseCasco~3_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EstaAquiEseCasco~q\);

-- Location: LCCOMB_X23_Y7_N24
\Vcontrol~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Vcontrol~0_combout\ = (\Hayespacio~q\ & !\EstaAquiEseCasco~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Hayespacio~q\,
	datac => \EstaAquiEseCasco~q\,
	combout => \Vcontrol~0_combout\);

-- Location: FF_X23_Y7_N25
\Vcontrol[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instancia1|salida~clkctrl_outclk\,
	d => \Vcontrol~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Vcontrol(0));

-- Location: LCCOMB_X33_Y3_N4
\Vcontrol[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Vcontrol[1]~feeder_combout\ = \EstaAquiEseCasco~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EstaAquiEseCasco~q\,
	combout => \Vcontrol[1]~feeder_combout\);

-- Location: FF_X33_Y3_N5
\Vcontrol[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instancia1|salida~clkctrl_outclk\,
	d => \Vcontrol[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Vcontrol(1));

-- Location: LCCOMB_X25_Y15_N4
\instancia5|instancia1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia5|instancia1|Add0~0_combout\ = \instancia5|instancia1|cuenta\(0) $ (VCC)
-- \instancia5|instancia1|Add0~1\ = CARRY(\instancia5|instancia1|cuenta\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instancia5|instancia1|cuenta\(0),
	datad => VCC,
	combout => \instancia5|instancia1|Add0~0_combout\,
	cout => \instancia5|instancia1|Add0~1\);

-- Location: LCCOMB_X25_Y15_N2
\instancia5|instancia1|cuenta~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia5|instancia1|cuenta~6_combout\ = (\instancia5|instancia1|Add0~0_combout\ & !\instancia5|instancia1|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instancia5|instancia1|Add0~0_combout\,
	datad => \instancia5|instancia1|Equal0~8_combout\,
	combout => \instancia5|instancia1|cuenta~6_combout\);

-- Location: FF_X25_Y15_N3
\instancia5|instancia1|cuenta[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instancia5|instancia1|cuenta~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia5|instancia1|cuenta\(0));

-- Location: LCCOMB_X25_Y15_N6
\instancia5|instancia1|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia5|instancia1|Add0~2_combout\ = (\instancia5|instancia1|cuenta\(1) & (!\instancia5|instancia1|Add0~1\)) # (!\instancia5|instancia1|cuenta\(1) & ((\instancia5|instancia1|Add0~1\) # (GND)))
-- \instancia5|instancia1|Add0~3\ = CARRY((!\instancia5|instancia1|Add0~1\) # (!\instancia5|instancia1|cuenta\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instancia5|instancia1|cuenta\(1),
	datad => VCC,
	cin => \instancia5|instancia1|Add0~1\,
	combout => \instancia5|instancia1|Add0~2_combout\,
	cout => \instancia5|instancia1|Add0~3\);

-- Location: FF_X25_Y15_N7
\instancia5|instancia1|cuenta[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instancia5|instancia1|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia5|instancia1|cuenta\(1));

-- Location: LCCOMB_X25_Y15_N8
\instancia5|instancia1|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia5|instancia1|Add0~4_combout\ = (\instancia5|instancia1|cuenta\(2) & (\instancia5|instancia1|Add0~3\ $ (GND))) # (!\instancia5|instancia1|cuenta\(2) & (!\instancia5|instancia1|Add0~3\ & VCC))
-- \instancia5|instancia1|Add0~5\ = CARRY((\instancia5|instancia1|cuenta\(2) & !\instancia5|instancia1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instancia5|instancia1|cuenta\(2),
	datad => VCC,
	cin => \instancia5|instancia1|Add0~3\,
	combout => \instancia5|instancia1|Add0~4_combout\,
	cout => \instancia5|instancia1|Add0~5\);

-- Location: FF_X25_Y15_N9
\instancia5|instancia1|cuenta[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instancia5|instancia1|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia5|instancia1|cuenta\(2));

-- Location: LCCOMB_X25_Y15_N10
\instancia5|instancia1|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia5|instancia1|Add0~6_combout\ = (\instancia5|instancia1|cuenta\(3) & (!\instancia5|instancia1|Add0~5\)) # (!\instancia5|instancia1|cuenta\(3) & ((\instancia5|instancia1|Add0~5\) # (GND)))
-- \instancia5|instancia1|Add0~7\ = CARRY((!\instancia5|instancia1|Add0~5\) # (!\instancia5|instancia1|cuenta\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instancia5|instancia1|cuenta\(3),
	datad => VCC,
	cin => \instancia5|instancia1|Add0~5\,
	combout => \instancia5|instancia1|Add0~6_combout\,
	cout => \instancia5|instancia1|Add0~7\);

-- Location: LCCOMB_X26_Y15_N0
\instancia5|instancia1|cuenta~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia5|instancia1|cuenta~5_combout\ = (!\instancia5|instancia1|Equal0~8_combout\ & \instancia5|instancia1|Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instancia5|instancia1|Equal0~8_combout\,
	datad => \instancia5|instancia1|Add0~6_combout\,
	combout => \instancia5|instancia1|cuenta~5_combout\);

-- Location: FF_X25_Y15_N21
\instancia5|instancia1|cuenta[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \instancia5|instancia1|cuenta~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia5|instancia1|cuenta\(3));

-- Location: LCCOMB_X25_Y15_N12
\instancia5|instancia1|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia5|instancia1|Add0~8_combout\ = (\instancia5|instancia1|cuenta\(4) & (\instancia5|instancia1|Add0~7\ $ (GND))) # (!\instancia5|instancia1|cuenta\(4) & (!\instancia5|instancia1|Add0~7\ & VCC))
-- \instancia5|instancia1|Add0~9\ = CARRY((\instancia5|instancia1|cuenta\(4) & !\instancia5|instancia1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instancia5|instancia1|cuenta\(4),
	datad => VCC,
	cin => \instancia5|instancia1|Add0~7\,
	combout => \instancia5|instancia1|Add0~8_combout\,
	cout => \instancia5|instancia1|Add0~9\);

-- Location: FF_X25_Y15_N13
\instancia5|instancia1|cuenta[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instancia5|instancia1|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia5|instancia1|cuenta\(4));

-- Location: LCCOMB_X25_Y15_N14
\instancia5|instancia1|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia5|instancia1|Add0~10_combout\ = (\instancia5|instancia1|cuenta\(5) & (!\instancia5|instancia1|Add0~9\)) # (!\instancia5|instancia1|cuenta\(5) & ((\instancia5|instancia1|Add0~9\) # (GND)))
-- \instancia5|instancia1|Add0~11\ = CARRY((!\instancia5|instancia1|Add0~9\) # (!\instancia5|instancia1|cuenta\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instancia5|instancia1|cuenta\(5),
	datad => VCC,
	cin => \instancia5|instancia1|Add0~9\,
	combout => \instancia5|instancia1|Add0~10_combout\,
	cout => \instancia5|instancia1|Add0~11\);

-- Location: LCCOMB_X26_Y15_N2
\instancia5|instancia1|cuenta~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia5|instancia1|cuenta~4_combout\ = (!\instancia5|instancia1|Equal0~8_combout\ & \instancia5|instancia1|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instancia5|instancia1|Equal0~8_combout\,
	datad => \instancia5|instancia1|Add0~10_combout\,
	combout => \instancia5|instancia1|cuenta~4_combout\);

-- Location: FF_X26_Y15_N3
\instancia5|instancia1|cuenta[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instancia5|instancia1|cuenta~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia5|instancia1|cuenta\(5));

-- Location: LCCOMB_X25_Y15_N16
\instancia5|instancia1|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia5|instancia1|Add0~12_combout\ = (\instancia5|instancia1|cuenta\(6) & (\instancia5|instancia1|Add0~11\ $ (GND))) # (!\instancia5|instancia1|cuenta\(6) & (!\instancia5|instancia1|Add0~11\ & VCC))
-- \instancia5|instancia1|Add0~13\ = CARRY((\instancia5|instancia1|cuenta\(6) & !\instancia5|instancia1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instancia5|instancia1|cuenta\(6),
	datad => VCC,
	cin => \instancia5|instancia1|Add0~11\,
	combout => \instancia5|instancia1|Add0~12_combout\,
	cout => \instancia5|instancia1|Add0~13\);

-- Location: FF_X25_Y15_N17
\instancia5|instancia1|cuenta[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instancia5|instancia1|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia5|instancia1|cuenta\(6));

-- Location: LCCOMB_X25_Y15_N18
\instancia5|instancia1|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia5|instancia1|Add0~14_combout\ = (\instancia5|instancia1|cuenta\(7) & (!\instancia5|instancia1|Add0~13\)) # (!\instancia5|instancia1|cuenta\(7) & ((\instancia5|instancia1|Add0~13\) # (GND)))
-- \instancia5|instancia1|Add0~15\ = CARRY((!\instancia5|instancia1|Add0~13\) # (!\instancia5|instancia1|cuenta\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instancia5|instancia1|cuenta\(7),
	datad => VCC,
	cin => \instancia5|instancia1|Add0~13\,
	combout => \instancia5|instancia1|Add0~14_combout\,
	cout => \instancia5|instancia1|Add0~15\);

-- Location: LCCOMB_X26_Y15_N24
\instancia5|instancia1|cuenta~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia5|instancia1|cuenta~3_combout\ = (!\instancia5|instancia1|Equal0~8_combout\ & \instancia5|instancia1|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia5|instancia1|Equal0~8_combout\,
	datac => \instancia5|instancia1|Add0~14_combout\,
	combout => \instancia5|instancia1|cuenta~3_combout\);

-- Location: FF_X26_Y15_N25
\instancia5|instancia1|cuenta[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instancia5|instancia1|cuenta~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia5|instancia1|cuenta\(7));

-- Location: LCCOMB_X26_Y15_N26
\instancia5|instancia1|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia5|instancia1|Equal0~5_combout\ = (!\instancia5|instancia1|cuenta\(6) & (\instancia5|instancia1|cuenta\(7) & (!\instancia5|instancia1|cuenta\(4) & \instancia5|instancia1|cuenta\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia5|instancia1|cuenta\(6),
	datab => \instancia5|instancia1|cuenta\(7),
	datac => \instancia5|instancia1|cuenta\(4),
	datad => \instancia5|instancia1|cuenta\(5),
	combout => \instancia5|instancia1|Equal0~5_combout\);

-- Location: LCCOMB_X25_Y15_N20
\instancia5|instancia1|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia5|instancia1|Add0~16_combout\ = (\instancia5|instancia1|cuenta\(8) & (\instancia5|instancia1|Add0~15\ $ (GND))) # (!\instancia5|instancia1|cuenta\(8) & (!\instancia5|instancia1|Add0~15\ & VCC))
-- \instancia5|instancia1|Add0~17\ = CARRY((\instancia5|instancia1|cuenta\(8) & !\instancia5|instancia1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instancia5|instancia1|cuenta\(8),
	datad => VCC,
	cin => \instancia5|instancia1|Add0~15\,
	combout => \instancia5|instancia1|Add0~16_combout\,
	cout => \instancia5|instancia1|Add0~17\);

-- Location: LCCOMB_X25_Y15_N0
\instancia5|instancia1|cuenta~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia5|instancia1|cuenta~2_combout\ = (\instancia5|instancia1|Add0~16_combout\ & !\instancia5|instancia1|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia5|instancia1|Add0~16_combout\,
	datad => \instancia5|instancia1|Equal0~8_combout\,
	combout => \instancia5|instancia1|cuenta~2_combout\);

-- Location: FF_X25_Y15_N1
\instancia5|instancia1|cuenta[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instancia5|instancia1|cuenta~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia5|instancia1|cuenta\(8));

-- Location: LCCOMB_X25_Y15_N22
\instancia5|instancia1|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia5|instancia1|Add0~18_combout\ = (\instancia5|instancia1|cuenta\(9) & (!\instancia5|instancia1|Add0~17\)) # (!\instancia5|instancia1|cuenta\(9) & ((\instancia5|instancia1|Add0~17\) # (GND)))
-- \instancia5|instancia1|Add0~19\ = CARRY((!\instancia5|instancia1|Add0~17\) # (!\instancia5|instancia1|cuenta\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instancia5|instancia1|cuenta\(9),
	datad => VCC,
	cin => \instancia5|instancia1|Add0~17\,
	combout => \instancia5|instancia1|Add0~18_combout\,
	cout => \instancia5|instancia1|Add0~19\);

-- Location: FF_X25_Y15_N23
\instancia5|instancia1|cuenta[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instancia5|instancia1|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia5|instancia1|cuenta\(9));

-- Location: LCCOMB_X25_Y15_N24
\instancia5|instancia1|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia5|instancia1|Add0~20_combout\ = (\instancia5|instancia1|cuenta\(10) & (\instancia5|instancia1|Add0~19\ $ (GND))) # (!\instancia5|instancia1|cuenta\(10) & (!\instancia5|instancia1|Add0~19\ & VCC))
-- \instancia5|instancia1|Add0~21\ = CARRY((\instancia5|instancia1|cuenta\(10) & !\instancia5|instancia1|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instancia5|instancia1|cuenta\(10),
	datad => VCC,
	cin => \instancia5|instancia1|Add0~19\,
	combout => \instancia5|instancia1|Add0~20_combout\,
	cout => \instancia5|instancia1|Add0~21\);

-- Location: FF_X25_Y15_N25
\instancia5|instancia1|cuenta[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instancia5|instancia1|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia5|instancia1|cuenta\(10));

-- Location: LCCOMB_X25_Y15_N26
\instancia5|instancia1|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia5|instancia1|Add0~22_combout\ = (\instancia5|instancia1|cuenta\(11) & (!\instancia5|instancia1|Add0~21\)) # (!\instancia5|instancia1|cuenta\(11) & ((\instancia5|instancia1|Add0~21\) # (GND)))
-- \instancia5|instancia1|Add0~23\ = CARRY((!\instancia5|instancia1|Add0~21\) # (!\instancia5|instancia1|cuenta\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instancia5|instancia1|cuenta\(11),
	datad => VCC,
	cin => \instancia5|instancia1|Add0~21\,
	combout => \instancia5|instancia1|Add0~22_combout\,
	cout => \instancia5|instancia1|Add0~23\);

-- Location: FF_X25_Y15_N27
\instancia5|instancia1|cuenta[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instancia5|instancia1|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia5|instancia1|cuenta\(11));

-- Location: LCCOMB_X25_Y15_N28
\instancia5|instancia1|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia5|instancia1|Add0~24_combout\ = (\instancia5|instancia1|cuenta\(12) & (\instancia5|instancia1|Add0~23\ $ (GND))) # (!\instancia5|instancia1|cuenta\(12) & (!\instancia5|instancia1|Add0~23\ & VCC))
-- \instancia5|instancia1|Add0~25\ = CARRY((\instancia5|instancia1|cuenta\(12) & !\instancia5|instancia1|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instancia5|instancia1|cuenta\(12),
	datad => VCC,
	cin => \instancia5|instancia1|Add0~23\,
	combout => \instancia5|instancia1|Add0~24_combout\,
	cout => \instancia5|instancia1|Add0~25\);

-- Location: FF_X25_Y15_N29
\instancia5|instancia1|cuenta[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instancia5|instancia1|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia5|instancia1|cuenta\(12));

-- Location: LCCOMB_X25_Y15_N30
\instancia5|instancia1|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia5|instancia1|Add0~26_combout\ = (\instancia5|instancia1|cuenta\(13) & (!\instancia5|instancia1|Add0~25\)) # (!\instancia5|instancia1|cuenta\(13) & ((\instancia5|instancia1|Add0~25\) # (GND)))
-- \instancia5|instancia1|Add0~27\ = CARRY((!\instancia5|instancia1|Add0~25\) # (!\instancia5|instancia1|cuenta\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instancia5|instancia1|cuenta\(13),
	datad => VCC,
	cin => \instancia5|instancia1|Add0~25\,
	combout => \instancia5|instancia1|Add0~26_combout\,
	cout => \instancia5|instancia1|Add0~27\);

-- Location: LCCOMB_X26_Y15_N4
\instancia5|instancia1|cuenta~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia5|instancia1|cuenta~1_combout\ = (!\instancia5|instancia1|Equal0~8_combout\ & \instancia5|instancia1|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instancia5|instancia1|Equal0~8_combout\,
	datad => \instancia5|instancia1|Add0~26_combout\,
	combout => \instancia5|instancia1|cuenta~1_combout\);

-- Location: FF_X26_Y15_N5
\instancia5|instancia1|cuenta[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instancia5|instancia1|cuenta~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia5|instancia1|cuenta\(13));

-- Location: LCCOMB_X25_Y14_N0
\instancia5|instancia1|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia5|instancia1|Add0~28_combout\ = (\instancia5|instancia1|cuenta\(14) & (\instancia5|instancia1|Add0~27\ $ (GND))) # (!\instancia5|instancia1|cuenta\(14) & (!\instancia5|instancia1|Add0~27\ & VCC))
-- \instancia5|instancia1|Add0~29\ = CARRY((\instancia5|instancia1|cuenta\(14) & !\instancia5|instancia1|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instancia5|instancia1|cuenta\(14),
	datad => VCC,
	cin => \instancia5|instancia1|Add0~27\,
	combout => \instancia5|instancia1|Add0~28_combout\,
	cout => \instancia5|instancia1|Add0~29\);

-- Location: LCCOMB_X25_Y14_N30
\instancia5|instancia1|cuenta~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia5|instancia1|cuenta~0_combout\ = (!\instancia5|instancia1|Equal0~8_combout\ & \instancia5|instancia1|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instancia5|instancia1|Equal0~8_combout\,
	datad => \instancia5|instancia1|Add0~28_combout\,
	combout => \instancia5|instancia1|cuenta~0_combout\);

-- Location: FF_X25_Y14_N31
\instancia5|instancia1|cuenta[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instancia5|instancia1|cuenta~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia5|instancia1|cuenta\(14));

-- Location: LCCOMB_X25_Y14_N2
\instancia5|instancia1|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia5|instancia1|Add0~30_combout\ = (\instancia5|instancia1|cuenta\(15) & (!\instancia5|instancia1|Add0~29\)) # (!\instancia5|instancia1|cuenta\(15) & ((\instancia5|instancia1|Add0~29\) # (GND)))
-- \instancia5|instancia1|Add0~31\ = CARRY((!\instancia5|instancia1|Add0~29\) # (!\instancia5|instancia1|cuenta\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instancia5|instancia1|cuenta\(15),
	datad => VCC,
	cin => \instancia5|instancia1|Add0~29\,
	combout => \instancia5|instancia1|Add0~30_combout\,
	cout => \instancia5|instancia1|Add0~31\);

-- Location: FF_X25_Y14_N3
\instancia5|instancia1|cuenta[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instancia5|instancia1|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia5|instancia1|cuenta\(15));

-- Location: LCCOMB_X25_Y14_N4
\instancia5|instancia1|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia5|instancia1|Add0~32_combout\ = (\instancia5|instancia1|cuenta\(16) & (\instancia5|instancia1|Add0~31\ $ (GND))) # (!\instancia5|instancia1|cuenta\(16) & (!\instancia5|instancia1|Add0~31\ & VCC))
-- \instancia5|instancia1|Add0~33\ = CARRY((\instancia5|instancia1|cuenta\(16) & !\instancia5|instancia1|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instancia5|instancia1|cuenta\(16),
	datad => VCC,
	cin => \instancia5|instancia1|Add0~31\,
	combout => \instancia5|instancia1|Add0~32_combout\,
	cout => \instancia5|instancia1|Add0~33\);

-- Location: FF_X25_Y14_N5
\instancia5|instancia1|cuenta[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instancia5|instancia1|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia5|instancia1|cuenta\(16));

-- Location: LCCOMB_X25_Y14_N6
\instancia5|instancia1|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia5|instancia1|Add0~34_combout\ = (\instancia5|instancia1|cuenta\(17) & (!\instancia5|instancia1|Add0~33\)) # (!\instancia5|instancia1|cuenta\(17) & ((\instancia5|instancia1|Add0~33\) # (GND)))
-- \instancia5|instancia1|Add0~35\ = CARRY((!\instancia5|instancia1|Add0~33\) # (!\instancia5|instancia1|cuenta\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instancia5|instancia1|cuenta\(17),
	datad => VCC,
	cin => \instancia5|instancia1|Add0~33\,
	combout => \instancia5|instancia1|Add0~34_combout\,
	cout => \instancia5|instancia1|Add0~35\);

-- Location: FF_X25_Y14_N7
\instancia5|instancia1|cuenta[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instancia5|instancia1|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia5|instancia1|cuenta\(17));

-- Location: LCCOMB_X25_Y14_N8
\instancia5|instancia1|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia5|instancia1|Add0~36_combout\ = (\instancia5|instancia1|cuenta\(18) & (\instancia5|instancia1|Add0~35\ $ (GND))) # (!\instancia5|instancia1|cuenta\(18) & (!\instancia5|instancia1|Add0~35\ & VCC))
-- \instancia5|instancia1|Add0~37\ = CARRY((\instancia5|instancia1|cuenta\(18) & !\instancia5|instancia1|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instancia5|instancia1|cuenta\(18),
	datad => VCC,
	cin => \instancia5|instancia1|Add0~35\,
	combout => \instancia5|instancia1|Add0~36_combout\,
	cout => \instancia5|instancia1|Add0~37\);

-- Location: FF_X25_Y14_N9
\instancia5|instancia1|cuenta[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instancia5|instancia1|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia5|instancia1|cuenta\(18));

-- Location: LCCOMB_X25_Y14_N10
\instancia5|instancia1|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia5|instancia1|Add0~38_combout\ = (\instancia5|instancia1|cuenta\(19) & (!\instancia5|instancia1|Add0~37\)) # (!\instancia5|instancia1|cuenta\(19) & ((\instancia5|instancia1|Add0~37\) # (GND)))
-- \instancia5|instancia1|Add0~39\ = CARRY((!\instancia5|instancia1|Add0~37\) # (!\instancia5|instancia1|cuenta\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instancia5|instancia1|cuenta\(19),
	datad => VCC,
	cin => \instancia5|instancia1|Add0~37\,
	combout => \instancia5|instancia1|Add0~38_combout\,
	cout => \instancia5|instancia1|Add0~39\);

-- Location: FF_X25_Y14_N11
\instancia5|instancia1|cuenta[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instancia5|instancia1|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia5|instancia1|cuenta\(19));

-- Location: LCCOMB_X25_Y14_N12
\instancia5|instancia1|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia5|instancia1|Add0~40_combout\ = (\instancia5|instancia1|cuenta\(20) & (\instancia5|instancia1|Add0~39\ $ (GND))) # (!\instancia5|instancia1|cuenta\(20) & (!\instancia5|instancia1|Add0~39\ & VCC))
-- \instancia5|instancia1|Add0~41\ = CARRY((\instancia5|instancia1|cuenta\(20) & !\instancia5|instancia1|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instancia5|instancia1|cuenta\(20),
	datad => VCC,
	cin => \instancia5|instancia1|Add0~39\,
	combout => \instancia5|instancia1|Add0~40_combout\,
	cout => \instancia5|instancia1|Add0~41\);

-- Location: FF_X25_Y14_N13
\instancia5|instancia1|cuenta[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instancia5|instancia1|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia5|instancia1|cuenta\(20));

-- Location: LCCOMB_X25_Y14_N14
\instancia5|instancia1|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia5|instancia1|Add0~42_combout\ = (\instancia5|instancia1|cuenta\(21) & (!\instancia5|instancia1|Add0~41\)) # (!\instancia5|instancia1|cuenta\(21) & ((\instancia5|instancia1|Add0~41\) # (GND)))
-- \instancia5|instancia1|Add0~43\ = CARRY((!\instancia5|instancia1|Add0~41\) # (!\instancia5|instancia1|cuenta\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instancia5|instancia1|cuenta\(21),
	datad => VCC,
	cin => \instancia5|instancia1|Add0~41\,
	combout => \instancia5|instancia1|Add0~42_combout\,
	cout => \instancia5|instancia1|Add0~43\);

-- Location: FF_X25_Y14_N15
\instancia5|instancia1|cuenta[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instancia5|instancia1|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia5|instancia1|cuenta\(21));

-- Location: LCCOMB_X25_Y14_N16
\instancia5|instancia1|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia5|instancia1|Add0~44_combout\ = (\instancia5|instancia1|cuenta\(22) & (\instancia5|instancia1|Add0~43\ $ (GND))) # (!\instancia5|instancia1|cuenta\(22) & (!\instancia5|instancia1|Add0~43\ & VCC))
-- \instancia5|instancia1|Add0~45\ = CARRY((\instancia5|instancia1|cuenta\(22) & !\instancia5|instancia1|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instancia5|instancia1|cuenta\(22),
	datad => VCC,
	cin => \instancia5|instancia1|Add0~43\,
	combout => \instancia5|instancia1|Add0~44_combout\,
	cout => \instancia5|instancia1|Add0~45\);

-- Location: FF_X25_Y14_N17
\instancia5|instancia1|cuenta[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instancia5|instancia1|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia5|instancia1|cuenta\(22));

-- Location: LCCOMB_X25_Y14_N18
\instancia5|instancia1|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia5|instancia1|Add0~46_combout\ = (\instancia5|instancia1|cuenta\(23) & (!\instancia5|instancia1|Add0~45\)) # (!\instancia5|instancia1|cuenta\(23) & ((\instancia5|instancia1|Add0~45\) # (GND)))
-- \instancia5|instancia1|Add0~47\ = CARRY((!\instancia5|instancia1|Add0~45\) # (!\instancia5|instancia1|cuenta\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instancia5|instancia1|cuenta\(23),
	datad => VCC,
	cin => \instancia5|instancia1|Add0~45\,
	combout => \instancia5|instancia1|Add0~46_combout\,
	cout => \instancia5|instancia1|Add0~47\);

-- Location: FF_X25_Y14_N19
\instancia5|instancia1|cuenta[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instancia5|instancia1|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia5|instancia1|cuenta\(23));

-- Location: LCCOMB_X25_Y14_N20
\instancia5|instancia1|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia5|instancia1|Add0~48_combout\ = (\instancia5|instancia1|cuenta\(24) & (\instancia5|instancia1|Add0~47\ $ (GND))) # (!\instancia5|instancia1|cuenta\(24) & (!\instancia5|instancia1|Add0~47\ & VCC))
-- \instancia5|instancia1|Add0~49\ = CARRY((\instancia5|instancia1|cuenta\(24) & !\instancia5|instancia1|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instancia5|instancia1|cuenta\(24),
	datad => VCC,
	cin => \instancia5|instancia1|Add0~47\,
	combout => \instancia5|instancia1|Add0~48_combout\,
	cout => \instancia5|instancia1|Add0~49\);

-- Location: FF_X25_Y14_N21
\instancia5|instancia1|cuenta[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instancia5|instancia1|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia5|instancia1|cuenta\(24));

-- Location: LCCOMB_X25_Y14_N22
\instancia5|instancia1|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia5|instancia1|Add0~50_combout\ = (\instancia5|instancia1|cuenta\(25) & (!\instancia5|instancia1|Add0~49\)) # (!\instancia5|instancia1|cuenta\(25) & ((\instancia5|instancia1|Add0~49\) # (GND)))
-- \instancia5|instancia1|Add0~51\ = CARRY((!\instancia5|instancia1|Add0~49\) # (!\instancia5|instancia1|cuenta\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instancia5|instancia1|cuenta\(25),
	datad => VCC,
	cin => \instancia5|instancia1|Add0~49\,
	combout => \instancia5|instancia1|Add0~50_combout\,
	cout => \instancia5|instancia1|Add0~51\);

-- Location: FF_X25_Y14_N23
\instancia5|instancia1|cuenta[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instancia5|instancia1|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia5|instancia1|cuenta\(25));

-- Location: LCCOMB_X25_Y14_N24
\instancia5|instancia1|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia5|instancia1|Add0~52_combout\ = (\instancia5|instancia1|cuenta\(26) & (\instancia5|instancia1|Add0~51\ $ (GND))) # (!\instancia5|instancia1|cuenta\(26) & (!\instancia5|instancia1|Add0~51\ & VCC))
-- \instancia5|instancia1|Add0~53\ = CARRY((\instancia5|instancia1|cuenta\(26) & !\instancia5|instancia1|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instancia5|instancia1|cuenta\(26),
	datad => VCC,
	cin => \instancia5|instancia1|Add0~51\,
	combout => \instancia5|instancia1|Add0~52_combout\,
	cout => \instancia5|instancia1|Add0~53\);

-- Location: FF_X25_Y14_N25
\instancia5|instancia1|cuenta[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instancia5|instancia1|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia5|instancia1|cuenta\(26));

-- Location: LCCOMB_X25_Y14_N26
\instancia5|instancia1|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia5|instancia1|Add0~54_combout\ = \instancia5|instancia1|cuenta\(27) $ (\instancia5|instancia1|Add0~53\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instancia5|instancia1|cuenta\(27),
	cin => \instancia5|instancia1|Add0~53\,
	combout => \instancia5|instancia1|Add0~54_combout\);

-- Location: FF_X25_Y14_N27
\instancia5|instancia1|cuenta[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instancia5|instancia1|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia5|instancia1|cuenta\(27));

-- Location: LCCOMB_X26_Y15_N8
\instancia5|instancia1|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia5|instancia1|Equal0~7_combout\ = (!\instancia5|instancia1|cuenta\(26) & (!\instancia5|instancia1|cuenta\(27) & (!\instancia5|instancia1|cuenta\(25) & !\instancia5|instancia1|cuenta\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia5|instancia1|cuenta\(26),
	datab => \instancia5|instancia1|cuenta\(27),
	datac => \instancia5|instancia1|cuenta\(25),
	datad => \instancia5|instancia1|cuenta\(24),
	combout => \instancia5|instancia1|Equal0~7_combout\);

-- Location: LCCOMB_X26_Y15_N22
\instancia5|instancia1|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia5|instancia1|Equal0~6_combout\ = (!\instancia5|instancia1|cuenta\(2) & (!\instancia5|instancia1|cuenta\(1) & (!\instancia5|instancia1|cuenta\(0) & \instancia5|instancia1|cuenta\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia5|instancia1|cuenta\(2),
	datab => \instancia5|instancia1|cuenta\(1),
	datac => \instancia5|instancia1|cuenta\(0),
	datad => \instancia5|instancia1|cuenta\(3),
	combout => \instancia5|instancia1|Equal0~6_combout\);

-- Location: LCCOMB_X26_Y15_N10
\instancia5|instancia1|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia5|instancia1|Equal0~3_combout\ = (\instancia5|instancia1|cuenta\(8) & (!\instancia5|instancia1|cuenta\(9) & (!\instancia5|instancia1|cuenta\(11) & !\instancia5|instancia1|cuenta\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia5|instancia1|cuenta\(8),
	datab => \instancia5|instancia1|cuenta\(9),
	datac => \instancia5|instancia1|cuenta\(11),
	datad => \instancia5|instancia1|cuenta\(10),
	combout => \instancia5|instancia1|Equal0~3_combout\);

-- Location: LCCOMB_X25_Y14_N28
\instancia5|instancia1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia5|instancia1|Equal0~0_combout\ = (!\instancia5|instancia1|cuenta\(20) & (!\instancia5|instancia1|cuenta\(22) & (!\instancia5|instancia1|cuenta\(21) & !\instancia5|instancia1|cuenta\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia5|instancia1|cuenta\(20),
	datab => \instancia5|instancia1|cuenta\(22),
	datac => \instancia5|instancia1|cuenta\(21),
	datad => \instancia5|instancia1|cuenta\(23),
	combout => \instancia5|instancia1|Equal0~0_combout\);

-- Location: LCCOMB_X26_Y15_N14
\instancia5|instancia1|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia5|instancia1|Equal0~1_combout\ = (!\instancia5|instancia1|cuenta\(19) & (!\instancia5|instancia1|cuenta\(17) & (!\instancia5|instancia1|cuenta\(18) & !\instancia5|instancia1|cuenta\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia5|instancia1|cuenta\(19),
	datab => \instancia5|instancia1|cuenta\(17),
	datac => \instancia5|instancia1|cuenta\(18),
	datad => \instancia5|instancia1|cuenta\(16),
	combout => \instancia5|instancia1|Equal0~1_combout\);

-- Location: LCCOMB_X26_Y15_N28
\instancia5|instancia1|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia5|instancia1|Equal0~2_combout\ = (\instancia5|instancia1|cuenta\(13) & (!\instancia5|instancia1|cuenta\(12) & (\instancia5|instancia1|cuenta\(14) & !\instancia5|instancia1|cuenta\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia5|instancia1|cuenta\(13),
	datab => \instancia5|instancia1|cuenta\(12),
	datac => \instancia5|instancia1|cuenta\(14),
	datad => \instancia5|instancia1|cuenta\(15),
	combout => \instancia5|instancia1|Equal0~2_combout\);

-- Location: LCCOMB_X26_Y15_N16
\instancia5|instancia1|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia5|instancia1|Equal0~4_combout\ = (\instancia5|instancia1|Equal0~3_combout\ & (\instancia5|instancia1|Equal0~0_combout\ & (\instancia5|instancia1|Equal0~1_combout\ & \instancia5|instancia1|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia5|instancia1|Equal0~3_combout\,
	datab => \instancia5|instancia1|Equal0~0_combout\,
	datac => \instancia5|instancia1|Equal0~1_combout\,
	datad => \instancia5|instancia1|Equal0~2_combout\,
	combout => \instancia5|instancia1|Equal0~4_combout\);

-- Location: LCCOMB_X26_Y15_N30
\instancia5|instancia1|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia5|instancia1|Equal0~8_combout\ = (\instancia5|instancia1|Equal0~5_combout\ & (\instancia5|instancia1|Equal0~7_combout\ & (\instancia5|instancia1|Equal0~6_combout\ & \instancia5|instancia1|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia5|instancia1|Equal0~5_combout\,
	datab => \instancia5|instancia1|Equal0~7_combout\,
	datac => \instancia5|instancia1|Equal0~6_combout\,
	datad => \instancia5|instancia1|Equal0~4_combout\,
	combout => \instancia5|instancia1|Equal0~8_combout\);

-- Location: LCCOMB_X26_Y15_N18
\instancia5|instancia1|salida~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia5|instancia1|salida~0_combout\ = \instancia5|instancia1|Equal0~8_combout\ $ (\instancia5|instancia1|salida~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instancia5|instancia1|Equal0~8_combout\,
	datad => \instancia5|instancia1|salida~q\,
	combout => \instancia5|instancia1|salida~0_combout\);

-- Location: LCCOMB_X26_Y15_N20
\instancia5|instancia1|salida~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia5|instancia1|salida~feeder_combout\ = \instancia5|instancia1|salida~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instancia5|instancia1|salida~0_combout\,
	combout => \instancia5|instancia1|salida~feeder_combout\);

-- Location: FF_X26_Y15_N21
\instancia5|instancia1|salida\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instancia5|instancia1|salida~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia5|instancia1|salida~q\);

-- Location: CLKCTRL_G6
\instancia5|instancia1|salida~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \instancia5|instancia1|salida~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \instancia5|instancia1|salida~clkctrl_outclk\);

-- Location: LCCOMB_X25_Y11_N8
\instancia5|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia5|Add0~0_combout\ = \instancia5|cuenta\(0) $ (VCC)
-- \instancia5|Add0~1\ = CARRY(\instancia5|cuenta\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instancia5|cuenta\(0),
	datad => VCC,
	combout => \instancia5|Add0~0_combout\,
	cout => \instancia5|Add0~1\);

-- Location: FF_X25_Y11_N9
\instancia5|cuenta[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instancia5|instancia1|salida~clkctrl_outclk\,
	d => \instancia5|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia5|cuenta\(0));

-- Location: LCCOMB_X25_Y11_N10
\instancia5|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia5|Add0~2_combout\ = (\instancia5|cuenta\(1) & (!\instancia5|Add0~1\)) # (!\instancia5|cuenta\(1) & ((\instancia5|Add0~1\) # (GND)))
-- \instancia5|Add0~3\ = CARRY((!\instancia5|Add0~1\) # (!\instancia5|cuenta\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instancia5|cuenta\(1),
	datad => VCC,
	cin => \instancia5|Add0~1\,
	combout => \instancia5|Add0~2_combout\,
	cout => \instancia5|Add0~3\);

-- Location: FF_X25_Y11_N11
\instancia5|cuenta[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instancia5|instancia1|salida~clkctrl_outclk\,
	d => \instancia5|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia5|cuenta\(1));

-- Location: LCCOMB_X25_Y11_N12
\instancia5|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia5|Add0~4_combout\ = (\instancia5|cuenta\(2) & (\instancia5|Add0~3\ $ (GND))) # (!\instancia5|cuenta\(2) & (!\instancia5|Add0~3\ & VCC))
-- \instancia5|Add0~5\ = CARRY((\instancia5|cuenta\(2) & !\instancia5|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instancia5|cuenta\(2),
	datad => VCC,
	cin => \instancia5|Add0~3\,
	combout => \instancia5|Add0~4_combout\,
	cout => \instancia5|Add0~5\);

-- Location: LCCOMB_X25_Y11_N6
\instancia5|cuenta~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia5|cuenta~0_combout\ = (\instancia5|Add0~4_combout\ & ((!\instancia5|Equal0~0_combout\) # (!\instancia5|cuenta\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instancia5|cuenta\(4),
	datac => \instancia5|Equal0~0_combout\,
	datad => \instancia5|Add0~4_combout\,
	combout => \instancia5|cuenta~0_combout\);

-- Location: FF_X25_Y11_N7
\instancia5|cuenta[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instancia5|instancia1|salida~clkctrl_outclk\,
	d => \instancia5|cuenta~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia5|cuenta\(2));

-- Location: LCCOMB_X25_Y11_N14
\instancia5|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia5|Add0~6_combout\ = (\instancia5|cuenta\(3) & (!\instancia5|Add0~5\)) # (!\instancia5|cuenta\(3) & ((\instancia5|Add0~5\) # (GND)))
-- \instancia5|Add0~7\ = CARRY((!\instancia5|Add0~5\) # (!\instancia5|cuenta\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instancia5|cuenta\(3),
	datad => VCC,
	cin => \instancia5|Add0~5\,
	combout => \instancia5|Add0~6_combout\,
	cout => \instancia5|Add0~7\);

-- Location: FF_X25_Y11_N15
\instancia5|cuenta[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instancia5|instancia1|salida~clkctrl_outclk\,
	d => \instancia5|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia5|cuenta\(3));

-- Location: LCCOMB_X25_Y11_N2
\instancia5|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia5|Equal0~0_combout\ = (\instancia5|cuenta\(0) & (\instancia5|cuenta\(1) & (!\instancia5|cuenta\(3) & !\instancia5|cuenta\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia5|cuenta\(0),
	datab => \instancia5|cuenta\(1),
	datac => \instancia5|cuenta\(3),
	datad => \instancia5|cuenta\(2),
	combout => \instancia5|Equal0~0_combout\);

-- Location: LCCOMB_X25_Y11_N16
\instancia5|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia5|Add0~8_combout\ = \instancia5|Add0~7\ $ (!\instancia5|cuenta\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \instancia5|cuenta\(4),
	cin => \instancia5|Add0~7\,
	combout => \instancia5|Add0~8_combout\);

-- Location: LCCOMB_X25_Y11_N18
\instancia5|cuenta~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia5|cuenta~1_combout\ = (\instancia5|Add0~8_combout\ & ((!\instancia5|cuenta\(4)) # (!\instancia5|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instancia5|Equal0~0_combout\,
	datac => \instancia5|cuenta\(4),
	datad => \instancia5|Add0~8_combout\,
	combout => \instancia5|cuenta~1_combout\);

-- Location: FF_X25_Y11_N19
\instancia5|cuenta[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instancia5|instancia1|salida~clkctrl_outclk\,
	d => \instancia5|cuenta~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia5|cuenta\(4));

-- Location: LCCOMB_X7_Y10_N4
\instancia3|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia3|Add0~0_combout\ = \instancia3|cuenta\(0) $ (VCC)
-- \instancia3|Add0~1\ = CARRY(\instancia3|cuenta\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instancia3|cuenta\(0),
	datad => VCC,
	combout => \instancia3|Add0~0_combout\,
	cout => \instancia3|Add0~1\);

-- Location: LCCOMB_X7_Y10_N2
\instancia3|cuenta~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia3|cuenta~7_combout\ = (\instancia3|Add0~0_combout\ & !\instancia3|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instancia3|Add0~0_combout\,
	datad => \instancia3|Equal0~8_combout\,
	combout => \instancia3|cuenta~7_combout\);

-- Location: FF_X7_Y10_N3
\instancia3|cuenta[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instancia3|cuenta~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia3|cuenta\(0));

-- Location: LCCOMB_X7_Y10_N6
\instancia3|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia3|Add0~2_combout\ = (\instancia3|cuenta\(1) & (!\instancia3|Add0~1\)) # (!\instancia3|cuenta\(1) & ((\instancia3|Add0~1\) # (GND)))
-- \instancia3|Add0~3\ = CARRY((!\instancia3|Add0~1\) # (!\instancia3|cuenta\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instancia3|cuenta\(1),
	datad => VCC,
	cin => \instancia3|Add0~1\,
	combout => \instancia3|Add0~2_combout\,
	cout => \instancia3|Add0~3\);

-- Location: FF_X7_Y10_N7
\instancia3|cuenta[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instancia3|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia3|cuenta\(1));

-- Location: LCCOMB_X7_Y10_N8
\instancia3|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia3|Add0~4_combout\ = (\instancia3|cuenta\(2) & (\instancia3|Add0~3\ $ (GND))) # (!\instancia3|cuenta\(2) & (!\instancia3|Add0~3\ & VCC))
-- \instancia3|Add0~5\ = CARRY((\instancia3|cuenta\(2) & !\instancia3|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instancia3|cuenta\(2),
	datad => VCC,
	cin => \instancia3|Add0~3\,
	combout => \instancia3|Add0~4_combout\,
	cout => \instancia3|Add0~5\);

-- Location: FF_X7_Y10_N9
\instancia3|cuenta[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instancia3|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia3|cuenta\(2));

-- Location: LCCOMB_X7_Y10_N10
\instancia3|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia3|Add0~6_combout\ = (\instancia3|cuenta\(3) & (!\instancia3|Add0~5\)) # (!\instancia3|cuenta\(3) & ((\instancia3|Add0~5\) # (GND)))
-- \instancia3|Add0~7\ = CARRY((!\instancia3|Add0~5\) # (!\instancia3|cuenta\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instancia3|cuenta\(3),
	datad => VCC,
	cin => \instancia3|Add0~5\,
	combout => \instancia3|Add0~6_combout\,
	cout => \instancia3|Add0~7\);

-- Location: FF_X7_Y10_N11
\instancia3|cuenta[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instancia3|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia3|cuenta\(3));

-- Location: LCCOMB_X7_Y10_N12
\instancia3|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia3|Add0~8_combout\ = (\instancia3|cuenta\(4) & (\instancia3|Add0~7\ $ (GND))) # (!\instancia3|cuenta\(4) & (!\instancia3|Add0~7\ & VCC))
-- \instancia3|Add0~9\ = CARRY((\instancia3|cuenta\(4) & !\instancia3|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instancia3|cuenta\(4),
	datad => VCC,
	cin => \instancia3|Add0~7\,
	combout => \instancia3|Add0~8_combout\,
	cout => \instancia3|Add0~9\);

-- Location: FF_X7_Y10_N13
\instancia3|cuenta[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instancia3|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia3|cuenta\(4));

-- Location: LCCOMB_X7_Y10_N14
\instancia3|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia3|Add0~10_combout\ = (\instancia3|cuenta\(5) & (!\instancia3|Add0~9\)) # (!\instancia3|cuenta\(5) & ((\instancia3|Add0~9\) # (GND)))
-- \instancia3|Add0~11\ = CARRY((!\instancia3|Add0~9\) # (!\instancia3|cuenta\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instancia3|cuenta\(5),
	datad => VCC,
	cin => \instancia3|Add0~9\,
	combout => \instancia3|Add0~10_combout\,
	cout => \instancia3|Add0~11\);

-- Location: LCCOMB_X6_Y9_N0
\instancia3|cuenta~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia3|cuenta~6_combout\ = (!\instancia3|Equal0~8_combout\ & \instancia3|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instancia3|Equal0~8_combout\,
	datad => \instancia3|Add0~10_combout\,
	combout => \instancia3|cuenta~6_combout\);

-- Location: FF_X6_Y9_N1
\instancia3|cuenta[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instancia3|cuenta~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia3|cuenta\(5));

-- Location: LCCOMB_X7_Y10_N16
\instancia3|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia3|Add0~12_combout\ = (\instancia3|cuenta\(6) & (\instancia3|Add0~11\ $ (GND))) # (!\instancia3|cuenta\(6) & (!\instancia3|Add0~11\ & VCC))
-- \instancia3|Add0~13\ = CARRY((\instancia3|cuenta\(6) & !\instancia3|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instancia3|cuenta\(6),
	datad => VCC,
	cin => \instancia3|Add0~11\,
	combout => \instancia3|Add0~12_combout\,
	cout => \instancia3|Add0~13\);

-- Location: FF_X7_Y10_N17
\instancia3|cuenta[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instancia3|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia3|cuenta\(6));

-- Location: LCCOMB_X7_Y10_N18
\instancia3|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia3|Add0~14_combout\ = (\instancia3|cuenta\(7) & (!\instancia3|Add0~13\)) # (!\instancia3|cuenta\(7) & ((\instancia3|Add0~13\) # (GND)))
-- \instancia3|Add0~15\ = CARRY((!\instancia3|Add0~13\) # (!\instancia3|cuenta\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instancia3|cuenta\(7),
	datad => VCC,
	cin => \instancia3|Add0~13\,
	combout => \instancia3|Add0~14_combout\,
	cout => \instancia3|Add0~15\);

-- Location: FF_X7_Y10_N19
\instancia3|cuenta[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instancia3|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia3|cuenta\(7));

-- Location: LCCOMB_X7_Y10_N20
\instancia3|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia3|Add0~16_combout\ = (\instancia3|cuenta\(8) & (\instancia3|Add0~15\ $ (GND))) # (!\instancia3|cuenta\(8) & (!\instancia3|Add0~15\ & VCC))
-- \instancia3|Add0~17\ = CARRY((\instancia3|cuenta\(8) & !\instancia3|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instancia3|cuenta\(8),
	datad => VCC,
	cin => \instancia3|Add0~15\,
	combout => \instancia3|Add0~16_combout\,
	cout => \instancia3|Add0~17\);

-- Location: LCCOMB_X7_Y10_N0
\instancia3|cuenta~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia3|cuenta~5_combout\ = (\instancia3|Add0~16_combout\ & !\instancia3|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instancia3|Add0~16_combout\,
	datad => \instancia3|Equal0~8_combout\,
	combout => \instancia3|cuenta~5_combout\);

-- Location: FF_X7_Y10_N1
\instancia3|cuenta[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instancia3|cuenta~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia3|cuenta\(8));

-- Location: LCCOMB_X7_Y10_N22
\instancia3|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia3|Add0~18_combout\ = (\instancia3|cuenta\(9) & (!\instancia3|Add0~17\)) # (!\instancia3|cuenta\(9) & ((\instancia3|Add0~17\) # (GND)))
-- \instancia3|Add0~19\ = CARRY((!\instancia3|Add0~17\) # (!\instancia3|cuenta\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instancia3|cuenta\(9),
	datad => VCC,
	cin => \instancia3|Add0~17\,
	combout => \instancia3|Add0~18_combout\,
	cout => \instancia3|Add0~19\);

-- Location: FF_X7_Y10_N23
\instancia3|cuenta[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instancia3|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia3|cuenta\(9));

-- Location: LCCOMB_X7_Y10_N24
\instancia3|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia3|Add0~20_combout\ = (\instancia3|cuenta\(10) & (\instancia3|Add0~19\ $ (GND))) # (!\instancia3|cuenta\(10) & (!\instancia3|Add0~19\ & VCC))
-- \instancia3|Add0~21\ = CARRY((\instancia3|cuenta\(10) & !\instancia3|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instancia3|cuenta\(10),
	datad => VCC,
	cin => \instancia3|Add0~19\,
	combout => \instancia3|Add0~20_combout\,
	cout => \instancia3|Add0~21\);

-- Location: FF_X7_Y10_N25
\instancia3|cuenta[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instancia3|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia3|cuenta\(10));

-- Location: LCCOMB_X7_Y10_N26
\instancia3|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia3|Add0~22_combout\ = (\instancia3|cuenta\(11) & (!\instancia3|Add0~21\)) # (!\instancia3|cuenta\(11) & ((\instancia3|Add0~21\) # (GND)))
-- \instancia3|Add0~23\ = CARRY((!\instancia3|Add0~21\) # (!\instancia3|cuenta\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instancia3|cuenta\(11),
	datad => VCC,
	cin => \instancia3|Add0~21\,
	combout => \instancia3|Add0~22_combout\,
	cout => \instancia3|Add0~23\);

-- Location: FF_X7_Y10_N27
\instancia3|cuenta[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instancia3|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia3|cuenta\(11));

-- Location: LCCOMB_X7_Y10_N28
\instancia3|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia3|Add0~24_combout\ = (\instancia3|cuenta\(12) & (\instancia3|Add0~23\ $ (GND))) # (!\instancia3|cuenta\(12) & (!\instancia3|Add0~23\ & VCC))
-- \instancia3|Add0~25\ = CARRY((\instancia3|cuenta\(12) & !\instancia3|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instancia3|cuenta\(12),
	datad => VCC,
	cin => \instancia3|Add0~23\,
	combout => \instancia3|Add0~24_combout\,
	cout => \instancia3|Add0~25\);

-- Location: FF_X7_Y10_N29
\instancia3|cuenta[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instancia3|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia3|cuenta\(12));

-- Location: LCCOMB_X7_Y10_N30
\instancia3|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia3|Add0~26_combout\ = (\instancia3|cuenta\(13) & (!\instancia3|Add0~25\)) # (!\instancia3|cuenta\(13) & ((\instancia3|Add0~25\) # (GND)))
-- \instancia3|Add0~27\ = CARRY((!\instancia3|Add0~25\) # (!\instancia3|cuenta\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instancia3|cuenta\(13),
	datad => VCC,
	cin => \instancia3|Add0~25\,
	combout => \instancia3|Add0~26_combout\,
	cout => \instancia3|Add0~27\);

-- Location: LCCOMB_X6_Y9_N28
\instancia3|cuenta~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia3|cuenta~4_combout\ = (\instancia3|Add0~26_combout\ & !\instancia3|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instancia3|Add0~26_combout\,
	datad => \instancia3|Equal0~8_combout\,
	combout => \instancia3|cuenta~4_combout\);

-- Location: FF_X6_Y9_N29
\instancia3|cuenta[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instancia3|cuenta~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia3|cuenta\(13));

-- Location: LCCOMB_X7_Y9_N0
\instancia3|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia3|Add0~28_combout\ = (\instancia3|cuenta\(14) & (\instancia3|Add0~27\ $ (GND))) # (!\instancia3|cuenta\(14) & (!\instancia3|Add0~27\ & VCC))
-- \instancia3|Add0~29\ = CARRY((\instancia3|cuenta\(14) & !\instancia3|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instancia3|cuenta\(14),
	datad => VCC,
	cin => \instancia3|Add0~27\,
	combout => \instancia3|Add0~28_combout\,
	cout => \instancia3|Add0~29\);

-- Location: FF_X7_Y9_N1
\instancia3|cuenta[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instancia3|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia3|cuenta\(14));

-- Location: LCCOMB_X7_Y9_N2
\instancia3|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia3|Add0~30_combout\ = (\instancia3|cuenta\(15) & (!\instancia3|Add0~29\)) # (!\instancia3|cuenta\(15) & ((\instancia3|Add0~29\) # (GND)))
-- \instancia3|Add0~31\ = CARRY((!\instancia3|Add0~29\) # (!\instancia3|cuenta\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instancia3|cuenta\(15),
	datad => VCC,
	cin => \instancia3|Add0~29\,
	combout => \instancia3|Add0~30_combout\,
	cout => \instancia3|Add0~31\);

-- Location: LCCOMB_X6_Y9_N26
\instancia3|cuenta~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia3|cuenta~3_combout\ = (!\instancia3|Equal0~8_combout\ & \instancia3|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instancia3|Equal0~8_combout\,
	datad => \instancia3|Add0~30_combout\,
	combout => \instancia3|cuenta~3_combout\);

-- Location: FF_X6_Y9_N27
\instancia3|cuenta[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instancia3|cuenta~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia3|cuenta\(15));

-- Location: LCCOMB_X7_Y9_N4
\instancia3|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia3|Add0~32_combout\ = (\instancia3|cuenta\(16) & (\instancia3|Add0~31\ $ (GND))) # (!\instancia3|cuenta\(16) & (!\instancia3|Add0~31\ & VCC))
-- \instancia3|Add0~33\ = CARRY((\instancia3|cuenta\(16) & !\instancia3|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instancia3|cuenta\(16),
	datad => VCC,
	cin => \instancia3|Add0~31\,
	combout => \instancia3|Add0~32_combout\,
	cout => \instancia3|Add0~33\);

-- Location: LCCOMB_X6_Y9_N8
\instancia3|cuenta~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia3|cuenta~2_combout\ = (!\instancia3|Equal0~8_combout\ & \instancia3|Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instancia3|Equal0~8_combout\,
	datad => \instancia3|Add0~32_combout\,
	combout => \instancia3|cuenta~2_combout\);

-- Location: FF_X6_Y9_N9
\instancia3|cuenta[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instancia3|cuenta~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia3|cuenta\(16));

-- Location: LCCOMB_X7_Y9_N6
\instancia3|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia3|Add0~34_combout\ = (\instancia3|cuenta\(17) & (!\instancia3|Add0~33\)) # (!\instancia3|cuenta\(17) & ((\instancia3|Add0~33\) # (GND)))
-- \instancia3|Add0~35\ = CARRY((!\instancia3|Add0~33\) # (!\instancia3|cuenta\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instancia3|cuenta\(17),
	datad => VCC,
	cin => \instancia3|Add0~33\,
	combout => \instancia3|Add0~34_combout\,
	cout => \instancia3|Add0~35\);

-- Location: LCCOMB_X7_Y9_N30
\instancia3|cuenta~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia3|cuenta~1_combout\ = (!\instancia3|Equal0~8_combout\ & \instancia3|Add0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instancia3|Equal0~8_combout\,
	datad => \instancia3|Add0~34_combout\,
	combout => \instancia3|cuenta~1_combout\);

-- Location: FF_X7_Y9_N31
\instancia3|cuenta[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instancia3|cuenta~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia3|cuenta\(17));

-- Location: LCCOMB_X7_Y9_N8
\instancia3|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia3|Add0~36_combout\ = (\instancia3|cuenta\(18) & (\instancia3|Add0~35\ $ (GND))) # (!\instancia3|cuenta\(18) & (!\instancia3|Add0~35\ & VCC))
-- \instancia3|Add0~37\ = CARRY((\instancia3|cuenta\(18) & !\instancia3|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instancia3|cuenta\(18),
	datad => VCC,
	cin => \instancia3|Add0~35\,
	combout => \instancia3|Add0~36_combout\,
	cout => \instancia3|Add0~37\);

-- Location: LCCOMB_X7_Y9_N28
\instancia3|cuenta~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia3|cuenta~0_combout\ = (\instancia3|Add0~36_combout\ & !\instancia3|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instancia3|Add0~36_combout\,
	datad => \instancia3|Equal0~8_combout\,
	combout => \instancia3|cuenta~0_combout\);

-- Location: FF_X7_Y9_N29
\instancia3|cuenta[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instancia3|cuenta~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia3|cuenta\(18));

-- Location: LCCOMB_X7_Y9_N10
\instancia3|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia3|Add0~38_combout\ = (\instancia3|cuenta\(19) & (!\instancia3|Add0~37\)) # (!\instancia3|cuenta\(19) & ((\instancia3|Add0~37\) # (GND)))
-- \instancia3|Add0~39\ = CARRY((!\instancia3|Add0~37\) # (!\instancia3|cuenta\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instancia3|cuenta\(19),
	datad => VCC,
	cin => \instancia3|Add0~37\,
	combout => \instancia3|Add0~38_combout\,
	cout => \instancia3|Add0~39\);

-- Location: FF_X7_Y9_N11
\instancia3|cuenta[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instancia3|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia3|cuenta\(19));

-- Location: LCCOMB_X7_Y9_N12
\instancia3|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia3|Add0~40_combout\ = (\instancia3|cuenta\(20) & (\instancia3|Add0~39\ $ (GND))) # (!\instancia3|cuenta\(20) & (!\instancia3|Add0~39\ & VCC))
-- \instancia3|Add0~41\ = CARRY((\instancia3|cuenta\(20) & !\instancia3|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instancia3|cuenta\(20),
	datad => VCC,
	cin => \instancia3|Add0~39\,
	combout => \instancia3|Add0~40_combout\,
	cout => \instancia3|Add0~41\);

-- Location: FF_X7_Y9_N13
\instancia3|cuenta[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instancia3|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia3|cuenta\(20));

-- Location: LCCOMB_X7_Y9_N14
\instancia3|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia3|Add0~42_combout\ = (\instancia3|cuenta\(21) & (!\instancia3|Add0~41\)) # (!\instancia3|cuenta\(21) & ((\instancia3|Add0~41\) # (GND)))
-- \instancia3|Add0~43\ = CARRY((!\instancia3|Add0~41\) # (!\instancia3|cuenta\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instancia3|cuenta\(21),
	datad => VCC,
	cin => \instancia3|Add0~41\,
	combout => \instancia3|Add0~42_combout\,
	cout => \instancia3|Add0~43\);

-- Location: FF_X7_Y9_N15
\instancia3|cuenta[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instancia3|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia3|cuenta\(21));

-- Location: LCCOMB_X7_Y9_N16
\instancia3|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia3|Add0~44_combout\ = (\instancia3|cuenta\(22) & (\instancia3|Add0~43\ $ (GND))) # (!\instancia3|cuenta\(22) & (!\instancia3|Add0~43\ & VCC))
-- \instancia3|Add0~45\ = CARRY((\instancia3|cuenta\(22) & !\instancia3|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instancia3|cuenta\(22),
	datad => VCC,
	cin => \instancia3|Add0~43\,
	combout => \instancia3|Add0~44_combout\,
	cout => \instancia3|Add0~45\);

-- Location: FF_X7_Y9_N17
\instancia3|cuenta[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instancia3|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia3|cuenta\(22));

-- Location: LCCOMB_X7_Y9_N18
\instancia3|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia3|Add0~46_combout\ = (\instancia3|cuenta\(23) & (!\instancia3|Add0~45\)) # (!\instancia3|cuenta\(23) & ((\instancia3|Add0~45\) # (GND)))
-- \instancia3|Add0~47\ = CARRY((!\instancia3|Add0~45\) # (!\instancia3|cuenta\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instancia3|cuenta\(23),
	datad => VCC,
	cin => \instancia3|Add0~45\,
	combout => \instancia3|Add0~46_combout\,
	cout => \instancia3|Add0~47\);

-- Location: FF_X7_Y9_N19
\instancia3|cuenta[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instancia3|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia3|cuenta\(23));

-- Location: LCCOMB_X7_Y9_N20
\instancia3|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia3|Add0~48_combout\ = (\instancia3|cuenta\(24) & (\instancia3|Add0~47\ $ (GND))) # (!\instancia3|cuenta\(24) & (!\instancia3|Add0~47\ & VCC))
-- \instancia3|Add0~49\ = CARRY((\instancia3|cuenta\(24) & !\instancia3|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instancia3|cuenta\(24),
	datad => VCC,
	cin => \instancia3|Add0~47\,
	combout => \instancia3|Add0~48_combout\,
	cout => \instancia3|Add0~49\);

-- Location: FF_X7_Y9_N21
\instancia3|cuenta[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instancia3|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia3|cuenta\(24));

-- Location: LCCOMB_X7_Y9_N22
\instancia3|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia3|Add0~50_combout\ = (\instancia3|cuenta\(25) & (!\instancia3|Add0~49\)) # (!\instancia3|cuenta\(25) & ((\instancia3|Add0~49\) # (GND)))
-- \instancia3|Add0~51\ = CARRY((!\instancia3|Add0~49\) # (!\instancia3|cuenta\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instancia3|cuenta\(25),
	datad => VCC,
	cin => \instancia3|Add0~49\,
	combout => \instancia3|Add0~50_combout\,
	cout => \instancia3|Add0~51\);

-- Location: FF_X7_Y9_N23
\instancia3|cuenta[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instancia3|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia3|cuenta\(25));

-- Location: LCCOMB_X7_Y9_N24
\instancia3|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia3|Add0~52_combout\ = (\instancia3|cuenta\(26) & (\instancia3|Add0~51\ $ (GND))) # (!\instancia3|cuenta\(26) & (!\instancia3|Add0~51\ & VCC))
-- \instancia3|Add0~53\ = CARRY((\instancia3|cuenta\(26) & !\instancia3|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instancia3|cuenta\(26),
	datad => VCC,
	cin => \instancia3|Add0~51\,
	combout => \instancia3|Add0~52_combout\,
	cout => \instancia3|Add0~53\);

-- Location: FF_X7_Y9_N25
\instancia3|cuenta[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instancia3|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia3|cuenta\(26));

-- Location: LCCOMB_X7_Y9_N26
\instancia3|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia3|Add0~54_combout\ = \instancia3|cuenta\(27) $ (\instancia3|Add0~53\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instancia3|cuenta\(27),
	cin => \instancia3|Add0~53\,
	combout => \instancia3|Add0~54_combout\);

-- Location: FF_X7_Y9_N27
\instancia3|cuenta[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instancia3|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia3|cuenta\(27));

-- Location: LCCOMB_X6_Y9_N12
\instancia3|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia3|Equal0~7_combout\ = (!\instancia3|cuenta\(26) & (!\instancia3|cuenta\(27) & (!\instancia3|cuenta\(24) & !\instancia3|cuenta\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia3|cuenta\(26),
	datab => \instancia3|cuenta\(27),
	datac => \instancia3|cuenta\(24),
	datad => \instancia3|cuenta\(25),
	combout => \instancia3|Equal0~7_combout\);

-- Location: LCCOMB_X6_Y9_N24
\instancia3|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia3|Equal0~5_combout\ = (!\instancia3|cuenta\(4) & (\instancia3|cuenta\(5) & (!\instancia3|cuenta\(6) & !\instancia3|cuenta\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia3|cuenta\(4),
	datab => \instancia3|cuenta\(5),
	datac => \instancia3|cuenta\(6),
	datad => \instancia3|cuenta\(7),
	combout => \instancia3|Equal0~5_combout\);

-- Location: LCCOMB_X6_Y10_N30
\instancia3|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia3|Equal0~6_combout\ = (!\instancia3|cuenta\(0) & (!\instancia3|cuenta\(2) & (!\instancia3|cuenta\(3) & !\instancia3|cuenta\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia3|cuenta\(0),
	datab => \instancia3|cuenta\(2),
	datac => \instancia3|cuenta\(3),
	datad => \instancia3|cuenta\(1),
	combout => \instancia3|Equal0~6_combout\);

-- Location: LCCOMB_X6_Y9_N22
\instancia3|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia3|Equal0~1_combout\ = (\instancia3|cuenta\(17) & (\instancia3|cuenta\(16) & (!\instancia3|cuenta\(19) & \instancia3|cuenta\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia3|cuenta\(17),
	datab => \instancia3|cuenta\(16),
	datac => \instancia3|cuenta\(19),
	datad => \instancia3|cuenta\(18),
	combout => \instancia3|Equal0~1_combout\);

-- Location: LCCOMB_X6_Y9_N4
\instancia3|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia3|Equal0~0_combout\ = (!\instancia3|cuenta\(22) & (!\instancia3|cuenta\(21) & (!\instancia3|cuenta\(20) & !\instancia3|cuenta\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia3|cuenta\(22),
	datab => \instancia3|cuenta\(21),
	datac => \instancia3|cuenta\(20),
	datad => \instancia3|cuenta\(23),
	combout => \instancia3|Equal0~0_combout\);

-- Location: LCCOMB_X6_Y9_N30
\instancia3|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia3|Equal0~2_combout\ = (\instancia3|cuenta\(15) & (!\instancia3|cuenta\(14) & (!\instancia3|cuenta\(12) & \instancia3|cuenta\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia3|cuenta\(15),
	datab => \instancia3|cuenta\(14),
	datac => \instancia3|cuenta\(12),
	datad => \instancia3|cuenta\(13),
	combout => \instancia3|Equal0~2_combout\);

-- Location: LCCOMB_X6_Y10_N20
\instancia3|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia3|Equal0~3_combout\ = (!\instancia3|cuenta\(10) & (!\instancia3|cuenta\(9) & (\instancia3|cuenta\(8) & !\instancia3|cuenta\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia3|cuenta\(10),
	datab => \instancia3|cuenta\(9),
	datac => \instancia3|cuenta\(8),
	datad => \instancia3|cuenta\(11),
	combout => \instancia3|Equal0~3_combout\);

-- Location: LCCOMB_X6_Y9_N10
\instancia3|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia3|Equal0~4_combout\ = (\instancia3|Equal0~1_combout\ & (\instancia3|Equal0~0_combout\ & (\instancia3|Equal0~2_combout\ & \instancia3|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia3|Equal0~1_combout\,
	datab => \instancia3|Equal0~0_combout\,
	datac => \instancia3|Equal0~2_combout\,
	datad => \instancia3|Equal0~3_combout\,
	combout => \instancia3|Equal0~4_combout\);

-- Location: LCCOMB_X6_Y9_N20
\instancia3|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia3|Equal0~8_combout\ = (\instancia3|Equal0~7_combout\ & (\instancia3|Equal0~5_combout\ & (\instancia3|Equal0~6_combout\ & \instancia3|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia3|Equal0~7_combout\,
	datab => \instancia3|Equal0~5_combout\,
	datac => \instancia3|Equal0~6_combout\,
	datad => \instancia3|Equal0~4_combout\,
	combout => \instancia3|Equal0~8_combout\);

-- Location: LCCOMB_X6_Y9_N14
\instancia3|salida~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia3|salida~0_combout\ = \instancia3|salida~q\ $ (\instancia3|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia3|salida~q\,
	datad => \instancia3|Equal0~8_combout\,
	combout => \instancia3|salida~0_combout\);

-- Location: LCCOMB_X6_Y9_N16
\instancia3|salida~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia3|salida~feeder_combout\ = \instancia3|salida~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instancia3|salida~0_combout\,
	combout => \instancia3|salida~feeder_combout\);

-- Location: FF_X6_Y9_N17
\instancia3|salida\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \instancia3|salida~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia3|salida~q\);

-- Location: CLKCTRL_G3
\instancia3|salida~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \instancia3|salida~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \instancia3|salida~clkctrl_outclk\);

-- Location: IOIBUF_X34_Y10_N8
\Sensorproximidad~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sensorproximidad,
	o => \Sensorproximidad~input_o\);

-- Location: LCCOMB_X24_Y11_N16
\instancia4|registro[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia4|registro[0]~0_combout\ = !\Sensorproximidad~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Sensorproximidad~input_o\,
	combout => \instancia4|registro[0]~0_combout\);

-- Location: FF_X24_Y11_N17
\instancia4|registro[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instancia3|salida~clkctrl_outclk\,
	d => \instancia4|registro[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia4|registro\(0));

-- Location: LCCOMB_X24_Y11_N6
\instancia4|registro[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia4|registro[1]~feeder_combout\ = \instancia4|registro\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instancia4|registro\(0),
	combout => \instancia4|registro[1]~feeder_combout\);

-- Location: FF_X24_Y11_N7
\instancia4|registro[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instancia3|salida~clkctrl_outclk\,
	d => \instancia4|registro[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia4|registro\(1));

-- Location: LCCOMB_X24_Y11_N28
\instancia4|registro[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia4|registro[2]~feeder_combout\ = \instancia4|registro\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instancia4|registro\(1),
	combout => \instancia4|registro[2]~feeder_combout\);

-- Location: FF_X24_Y11_N29
\instancia4|registro[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instancia3|salida~clkctrl_outclk\,
	d => \instancia4|registro[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia4|registro\(2));

-- Location: LCCOMB_X24_Y11_N20
\instancia4|registro[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia4|registro[3]~feeder_combout\ = \instancia4|registro\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instancia4|registro\(2),
	combout => \instancia4|registro[3]~feeder_combout\);

-- Location: FF_X24_Y11_N21
\instancia4|registro[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instancia3|salida~clkctrl_outclk\,
	d => \instancia4|registro[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia4|registro\(3));

-- Location: LCCOMB_X24_Y11_N14
\instancia4|registro[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia4|registro[4]~feeder_combout\ = \instancia4|registro\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instancia4|registro\(3),
	combout => \instancia4|registro[4]~feeder_combout\);

-- Location: FF_X24_Y11_N15
\instancia4|registro[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instancia3|salida~clkctrl_outclk\,
	d => \instancia4|registro[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia4|registro\(4));

-- Location: LCCOMB_X24_Y11_N18
\instancia4|registro[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia4|registro[5]~feeder_combout\ = \instancia4|registro\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instancia4|registro\(4),
	combout => \instancia4|registro[5]~feeder_combout\);

-- Location: FF_X24_Y11_N19
\instancia4|registro[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instancia3|salida~clkctrl_outclk\,
	d => \instancia4|registro[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia4|registro\(5));

-- Location: LCCOMB_X24_Y11_N8
\instancia4|registro[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia4|registro[6]~feeder_combout\ = \instancia4|registro\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instancia4|registro\(5),
	combout => \instancia4|registro[6]~feeder_combout\);

-- Location: FF_X24_Y11_N9
\instancia4|registro[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instancia3|salida~clkctrl_outclk\,
	d => \instancia4|registro[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia4|registro\(6));

-- Location: LCCOMB_X24_Y11_N2
\instancia4|registro[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia4|registro[7]~feeder_combout\ = \instancia4|registro\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instancia4|registro\(6),
	combout => \instancia4|registro[7]~feeder_combout\);

-- Location: FF_X24_Y11_N3
\instancia4|registro[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instancia3|salida~clkctrl_outclk\,
	d => \instancia4|registro[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia4|registro\(7));

-- Location: LCCOMB_X24_Y11_N30
\instancia4|registro[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia4|registro[8]~feeder_combout\ = \instancia4|registro\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instancia4|registro\(7),
	combout => \instancia4|registro[8]~feeder_combout\);

-- Location: FF_X24_Y11_N31
\instancia4|registro[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instancia3|salida~clkctrl_outclk\,
	d => \instancia4|registro[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia4|registro\(8));

-- Location: LCCOMB_X24_Y11_N4
\instancia4|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia4|Equal0~1_combout\ = (\instancia4|registro\(0) & (\instancia4|registro\(8) & \instancia4|registro\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instancia4|registro\(0),
	datac => \instancia4|registro\(8),
	datad => \instancia4|registro\(1),
	combout => \instancia4|Equal0~1_combout\);

-- Location: LCCOMB_X24_Y11_N24
\instancia4|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia4|Equal0~0_combout\ = (\instancia4|registro\(2) & (\instancia4|registro\(5) & (\instancia4|registro\(6) & \instancia4|registro\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia4|registro\(2),
	datab => \instancia4|registro\(5),
	datac => \instancia4|registro\(6),
	datad => \instancia4|registro\(7),
	combout => \instancia4|Equal0~0_combout\);

-- Location: LCCOMB_X24_Y11_N26
\instancia4|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia4|Equal0~2_combout\ = (\instancia4|registro\(3) & (\instancia4|registro\(4) & (\instancia4|Equal0~1_combout\ & \instancia4|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia4|registro\(3),
	datab => \instancia4|registro\(4),
	datac => \instancia4|Equal0~1_combout\,
	datad => \instancia4|Equal0~0_combout\,
	combout => \instancia4|Equal0~2_combout\);

-- Location: FF_X23_Y11_N25
\registrosensor[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instancia1|salida~clkctrl_outclk\,
	asdata => \instancia4|Equal0~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => registrosensor(1));

-- Location: LCCOMB_X22_Y9_N18
\movimientos~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \movimientos~7_combout\ = (\Arreglomemoriascero[47]~316_combout\ & ((\Equal23~1_combout\))) # (!\Arreglomemoriascero[47]~316_combout\ & (!\Equal32~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal32~3_combout\,
	datac => \Equal23~1_combout\,
	datad => \Arreglomemoriascero[47]~316_combout\,
	combout => \movimientos~7_combout\);

-- Location: LCCOMB_X22_Y7_N6
\contadorvueltas~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \contadorvueltas~0_combout\ = (\Arreglomemoriascero~16_combout\ & (!\EstaAquiEseCasco~q\ & (!\Equal20~1_combout\ & \Arreglomemoriascero~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero~16_combout\,
	datab => \EstaAquiEseCasco~q\,
	datac => \Equal20~1_combout\,
	datad => \Arreglomemoriascero~13_combout\,
	combout => \contadorvueltas~0_combout\);

-- Location: LCCOMB_X22_Y11_N24
\contadorvueltas~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \contadorvueltas~1_combout\ = (\definido~q\) # ((\Hayespacio~q\ & (\Arreglomemoriascero~21_combout\ & \contadorvueltas~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \definido~q\,
	datab => \Hayespacio~q\,
	datac => \Arreglomemoriascero~21_combout\,
	datad => \contadorvueltas~0_combout\,
	combout => \contadorvueltas~1_combout\);

-- Location: LCCOMB_X22_Y11_N30
\contadorvueltas~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \contadorvueltas~4_combout\ = (\contadorvueltas~1_combout\) # ((!\contadorvueltas~3_combout\ & ((\EstaAquiEseCasco~q\) # (!\Hayespacio~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EstaAquiEseCasco~q\,
	datab => \contadorvueltas~1_combout\,
	datac => \Hayespacio~q\,
	datad => \contadorvueltas~3_combout\,
	combout => \contadorvueltas~4_combout\);

-- Location: LCCOMB_X21_Y11_N18
\contadorvueltas~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \contadorvueltas~8_combout\ = (\Add18~14_combout\ & (\Equal37~0_combout\ & !\Add18~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add18~14_combout\,
	datac => \Equal37~0_combout\,
	datad => \Add18~18_combout\,
	combout => \contadorvueltas~8_combout\);

-- Location: FF_X21_Y11_N19
\contadorvueltas[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instancia1|salida~clkctrl_outclk\,
	d => \contadorvueltas~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contadorvueltas(7));

-- Location: LCCOMB_X22_Y11_N4
\Add18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add18~0_combout\ = (((\contadorvueltas~4_combout\ & contadorvueltas(0))))
-- \Add18~1\ = CARRY((\contadorvueltas~4_combout\ & contadorvueltas(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contadorvueltas~4_combout\,
	datab => contadorvueltas(0),
	datad => VCC,
	combout => \Add18~0_combout\,
	cout => \Add18~1\);

-- Location: LCCOMB_X21_Y11_N24
\contadorvueltas~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \contadorvueltas~7_combout\ = (!\Add18~18_combout\ & (\Add18~16_combout\ & \Equal37~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add18~18_combout\,
	datac => \Add18~16_combout\,
	datad => \Equal37~0_combout\,
	combout => \contadorvueltas~7_combout\);

-- Location: FF_X21_Y11_N25
\contadorvueltas[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instancia1|salida~clkctrl_outclk\,
	d => \contadorvueltas~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contadorvueltas(8));

-- Location: LCCOMB_X22_Y11_N18
\Add18~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add18~14_combout\ = (\Add18~13\ & (((!contadorvueltas(7))) # (!\contadorvueltas~4_combout\))) # (!\Add18~13\ & (((\contadorvueltas~4_combout\ & contadorvueltas(7))) # (GND)))
-- \Add18~15\ = CARRY(((!\Add18~13\) # (!contadorvueltas(7))) # (!\contadorvueltas~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \contadorvueltas~4_combout\,
	datab => contadorvueltas(7),
	datad => VCC,
	cin => \Add18~13\,
	combout => \Add18~14_combout\,
	cout => \Add18~15\);

-- Location: LCCOMB_X22_Y11_N20
\Add18~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add18~16_combout\ = (\Add18~15\ & (\contadorvueltas~4_combout\ & (contadorvueltas(8) & VCC))) # (!\Add18~15\ & ((((\contadorvueltas~4_combout\ & contadorvueltas(8))))))
-- \Add18~17\ = CARRY((\contadorvueltas~4_combout\ & (contadorvueltas(8) & !\Add18~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \contadorvueltas~4_combout\,
	datab => contadorvueltas(8),
	datad => VCC,
	cin => \Add18~15\,
	combout => \Add18~16_combout\,
	cout => \Add18~17\);

-- Location: LCCOMB_X23_Y11_N6
\movimientos~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \movimientos~22_combout\ = (\Add18~18_combout\ & ((\Add18~14_combout\) # ((\LessThan0~1_combout\) # (\Add18~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add18~18_combout\,
	datab => \Add18~14_combout\,
	datac => \LessThan0~1_combout\,
	datad => \Add18~16_combout\,
	combout => \movimientos~22_combout\);

-- Location: LCCOMB_X23_Y11_N26
\contadorvueltas~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \contadorvueltas~16_combout\ = (\Equal37~0_combout\ & (\Add18~0_combout\ & !\movimientos~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal37~0_combout\,
	datac => \Add18~0_combout\,
	datad => \movimientos~22_combout\,
	combout => \contadorvueltas~16_combout\);

-- Location: FF_X23_Y11_N27
\contadorvueltas[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instancia1|salida~clkctrl_outclk\,
	d => \contadorvueltas~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contadorvueltas(0));

-- Location: LCCOMB_X22_Y11_N6
\Add18~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add18~2_combout\ = (\Add18~1\ & (((!contadorvueltas(1))) # (!\contadorvueltas~4_combout\))) # (!\Add18~1\ & (((\contadorvueltas~4_combout\ & contadorvueltas(1))) # (GND)))
-- \Add18~3\ = CARRY(((!\Add18~1\) # (!contadorvueltas(1))) # (!\contadorvueltas~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \contadorvueltas~4_combout\,
	datab => contadorvueltas(1),
	datad => VCC,
	cin => \Add18~1\,
	combout => \Add18~2_combout\,
	cout => \Add18~3\);

-- Location: LCCOMB_X21_Y11_N14
\contadorvueltas~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \contadorvueltas~15_combout\ = (\Add18~2_combout\ & (\Equal37~0_combout\ & ((\contadorvueltas~9_combout\) # (!\Add18~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add18~2_combout\,
	datab => \Add18~18_combout\,
	datac => \Equal37~0_combout\,
	datad => \contadorvueltas~9_combout\,
	combout => \contadorvueltas~15_combout\);

-- Location: FF_X21_Y11_N15
\contadorvueltas[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instancia1|salida~clkctrl_outclk\,
	d => \contadorvueltas~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contadorvueltas(1));

-- Location: LCCOMB_X22_Y11_N8
\Add18~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add18~4_combout\ = (\Add18~3\ & (\contadorvueltas~4_combout\ & (contadorvueltas(2) & VCC))) # (!\Add18~3\ & ((((\contadorvueltas~4_combout\ & contadorvueltas(2))))))
-- \Add18~5\ = CARRY((\contadorvueltas~4_combout\ & (contadorvueltas(2) & !\Add18~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \contadorvueltas~4_combout\,
	datab => contadorvueltas(2),
	datad => VCC,
	cin => \Add18~3\,
	combout => \Add18~4_combout\,
	cout => \Add18~5\);

-- Location: LCCOMB_X21_Y11_N16
\contadorvueltas~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \contadorvueltas~14_combout\ = (\Equal37~0_combout\ & (\Add18~4_combout\ & ((\contadorvueltas~9_combout\) # (!\Add18~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal37~0_combout\,
	datab => \Add18~18_combout\,
	datac => \Add18~4_combout\,
	datad => \contadorvueltas~9_combout\,
	combout => \contadorvueltas~14_combout\);

-- Location: FF_X21_Y11_N17
\contadorvueltas[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instancia1|salida~clkctrl_outclk\,
	d => \contadorvueltas~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contadorvueltas(2));

-- Location: LCCOMB_X22_Y11_N10
\Add18~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add18~6_combout\ = (\Add18~5\ & (((!contadorvueltas(3))) # (!\contadorvueltas~4_combout\))) # (!\Add18~5\ & (((\contadorvueltas~4_combout\ & contadorvueltas(3))) # (GND)))
-- \Add18~7\ = CARRY(((!\Add18~5\) # (!contadorvueltas(3))) # (!\contadorvueltas~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \contadorvueltas~4_combout\,
	datab => contadorvueltas(3),
	datad => VCC,
	cin => \Add18~5\,
	combout => \Add18~6_combout\,
	cout => \Add18~7\);

-- Location: LCCOMB_X21_Y11_N26
\contadorvueltas~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \contadorvueltas~13_combout\ = (\Equal37~0_combout\ & (\Add18~6_combout\ & ((\contadorvueltas~9_combout\) # (!\Add18~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal37~0_combout\,
	datab => \Add18~18_combout\,
	datac => \Add18~6_combout\,
	datad => \contadorvueltas~9_combout\,
	combout => \contadorvueltas~13_combout\);

-- Location: FF_X21_Y11_N27
\contadorvueltas[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instancia1|salida~clkctrl_outclk\,
	d => \contadorvueltas~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contadorvueltas(3));

-- Location: LCCOMB_X22_Y11_N12
\Add18~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add18~8_combout\ = (\Add18~7\ & (\contadorvueltas~4_combout\ & (contadorvueltas(4) & VCC))) # (!\Add18~7\ & ((((\contadorvueltas~4_combout\ & contadorvueltas(4))))))
-- \Add18~9\ = CARRY((\contadorvueltas~4_combout\ & (contadorvueltas(4) & !\Add18~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \contadorvueltas~4_combout\,
	datab => contadorvueltas(4),
	datad => VCC,
	cin => \Add18~7\,
	combout => \Add18~8_combout\,
	cout => \Add18~9\);

-- Location: LCCOMB_X22_Y11_N14
\Add18~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add18~10_combout\ = (\Add18~9\ & (((!contadorvueltas(5))) # (!\contadorvueltas~4_combout\))) # (!\Add18~9\ & (((\contadorvueltas~4_combout\ & contadorvueltas(5))) # (GND)))
-- \Add18~11\ = CARRY(((!\Add18~9\) # (!contadorvueltas(5))) # (!\contadorvueltas~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \contadorvueltas~4_combout\,
	datab => contadorvueltas(5),
	datad => VCC,
	cin => \Add18~9\,
	combout => \Add18~10_combout\,
	cout => \Add18~11\);

-- Location: LCCOMB_X21_Y11_N30
\contadorvueltas~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \contadorvueltas~11_combout\ = (\Equal37~0_combout\ & (\Add18~10_combout\ & ((\contadorvueltas~9_combout\) # (!\Add18~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal37~0_combout\,
	datab => \Add18~18_combout\,
	datac => \Add18~10_combout\,
	datad => \contadorvueltas~9_combout\,
	combout => \contadorvueltas~11_combout\);

-- Location: FF_X21_Y11_N31
\contadorvueltas[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instancia1|salida~clkctrl_outclk\,
	d => \contadorvueltas~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contadorvueltas(5));

-- Location: LCCOMB_X22_Y11_N16
\Add18~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add18~12_combout\ = (\Add18~11\ & (\contadorvueltas~4_combout\ & (contadorvueltas(6) & VCC))) # (!\Add18~11\ & ((((\contadorvueltas~4_combout\ & contadorvueltas(6))))))
-- \Add18~13\ = CARRY((\contadorvueltas~4_combout\ & (contadorvueltas(6) & !\Add18~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \contadorvueltas~4_combout\,
	datab => contadorvueltas(6),
	datad => VCC,
	cin => \Add18~11\,
	combout => \Add18~12_combout\,
	cout => \Add18~13\);

-- Location: LCCOMB_X21_Y11_N28
\contadorvueltas~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \contadorvueltas~10_combout\ = (\Add18~12_combout\ & (\Equal37~0_combout\ & ((\contadorvueltas~9_combout\) # (!\Add18~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add18~12_combout\,
	datab => \Add18~18_combout\,
	datac => \Equal37~0_combout\,
	datad => \contadorvueltas~9_combout\,
	combout => \contadorvueltas~10_combout\);

-- Location: FF_X21_Y11_N29
\contadorvueltas[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instancia1|salida~clkctrl_outclk\,
	d => \contadorvueltas~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contadorvueltas(6));

-- Location: LCCOMB_X21_Y11_N0
\contadorvueltas~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \contadorvueltas~9_combout\ = (!\Add18~14_combout\ & (!\Add18~16_combout\ & !\LessThan0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add18~14_combout\,
	datac => \Add18~16_combout\,
	datad => \LessThan0~1_combout\,
	combout => \contadorvueltas~9_combout\);

-- Location: LCCOMB_X21_Y11_N4
\contadorvueltas~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \contadorvueltas~12_combout\ = (\Equal37~0_combout\ & (\Add18~8_combout\ & ((\contadorvueltas~9_combout\) # (!\Add18~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal37~0_combout\,
	datab => \Add18~18_combout\,
	datac => \Add18~8_combout\,
	datad => \contadorvueltas~9_combout\,
	combout => \contadorvueltas~12_combout\);

-- Location: FF_X21_Y11_N5
\contadorvueltas[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instancia1|salida~clkctrl_outclk\,
	d => \contadorvueltas~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contadorvueltas(4));

-- Location: LCCOMB_X22_Y11_N28
\LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (\Add18~6_combout\ & ((\Add18~2_combout\) # ((\Add18~0_combout\) # (\Add18~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add18~2_combout\,
	datab => \Add18~0_combout\,
	datac => \Add18~4_combout\,
	datad => \Add18~6_combout\,
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X22_Y11_N26
\LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (\Add18~12_combout\ & ((\Add18~10_combout\) # ((\Add18~8_combout\ & \LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add18~8_combout\,
	datab => \Add18~12_combout\,
	datac => \Add18~10_combout\,
	datad => \LessThan0~0_combout\,
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X21_Y11_N6
\contadorvueltas~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \contadorvueltas~5_combout\ = (!\Add18~14_combout\ & \Equal37~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add18~14_combout\,
	datad => \Equal37~0_combout\,
	combout => \contadorvueltas~5_combout\);

-- Location: LCCOMB_X21_Y11_N2
\contadorvueltas~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \contadorvueltas~6_combout\ = (\Add18~18_combout\ & (!\LessThan0~1_combout\ & (!\Add18~16_combout\ & \contadorvueltas~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add18~18_combout\,
	datab => \LessThan0~1_combout\,
	datac => \Add18~16_combout\,
	datad => \contadorvueltas~5_combout\,
	combout => \contadorvueltas~6_combout\);

-- Location: FF_X21_Y11_N3
\contadorvueltas[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instancia1|salida~clkctrl_outclk\,
	d => \contadorvueltas~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contadorvueltas(9));

-- Location: LCCOMB_X22_Y11_N22
\Add18~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add18~18_combout\ = \Add18~17\ $ (((\contadorvueltas~4_combout\ & contadorvueltas(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \contadorvueltas~4_combout\,
	datad => contadorvueltas(9),
	cin => \Add18~17\,
	combout => \Add18~18_combout\);

-- Location: LCCOMB_X21_Y11_N12
\movimientos~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \movimientos~24_combout\ = (\Add18~14_combout\) # ((\Add18~16_combout\) # (\LessThan0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add18~14_combout\,
	datac => \Add18~16_combout\,
	datad => \LessThan0~1_combout\,
	combout => \movimientos~24_combout\);

-- Location: LCCOMB_X21_Y11_N8
\movimientos~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \movimientos~25_combout\ = \movimientos~16_combout\ $ (((\Add18~18_combout\ & (\Equal37~0_combout\ & \movimientos~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \movimientos~16_combout\,
	datab => \Add18~18_combout\,
	datac => \Equal37~0_combout\,
	datad => \movimientos~24_combout\,
	combout => \movimientos~25_combout\);

-- Location: FF_X21_Y11_N9
\movimientos[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instancia1|salida~clkctrl_outclk\,
	d => \movimientos~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => movimientos(0));

-- Location: LCCOMB_X22_Y9_N2
\movimientos~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \movimientos~15_combout\ = (\Arreglomemoriascero[47]~316_combout\ & (!\Equal20~1_combout\)) # (!\Arreglomemoriascero[47]~316_combout\ & ((!\Equal29~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal20~1_combout\,
	datac => \Equal29~3_combout\,
	datad => \Arreglomemoriascero[47]~316_combout\,
	combout => \movimientos~15_combout\);

-- Location: LCCOMB_X22_Y8_N2
\Equal25~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal25~4_combout\ = (\Equal25~2_combout\) # ((\Arreglomemoriascopia3~11_combout\) # (\Arreglomemoriascopia3~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal25~2_combout\,
	datac => \Arreglomemoriascopia3~11_combout\,
	datad => \Arreglomemoriascopia3~10_combout\,
	combout => \Equal25~4_combout\);

-- Location: LCCOMB_X22_Y9_N22
\movimientos~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \movimientos~11_combout\ = (\Arreglomemoriascero[47]~316_combout\ & (((\Equal26~1_combout\)) # (!\Equal25~4_combout\))) # (!\Arreglomemoriascero[47]~316_combout\ & (((\Equal34~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal25~4_combout\,
	datab => \Equal34~3_combout\,
	datac => \Equal26~1_combout\,
	datad => \Arreglomemoriascero[47]~316_combout\,
	combout => \movimientos~11_combout\);

-- Location: LCCOMB_X22_Y9_N16
\movimientos~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \movimientos~12_combout\ = (\Arreglomemoriascero[47]~316_combout\ & ((\Equal24~1_combout\))) # (!\Arreglomemoriascero[47]~316_combout\ & (\Equal33~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal33~3_combout\,
	datac => \Equal24~1_combout\,
	datad => \Arreglomemoriascero[47]~316_combout\,
	combout => \movimientos~12_combout\);

-- Location: LCCOMB_X22_Y9_N30
\movimientos~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \movimientos~13_combout\ = (!\movimientos~12_combout\ & ((\movimientos~11_combout\) # ((!\Arreglomemoriascero[47]~316_combout\ & !\Equal35~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero[47]~316_combout\,
	datab => \Equal35~3_combout\,
	datac => \movimientos~11_combout\,
	datad => \movimientos~12_combout\,
	combout => \movimientos~13_combout\);

-- Location: LCCOMB_X22_Y9_N4
\movimientos~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \movimientos~9_combout\ = (\Arreglomemoriascero[47]~316_combout\ & ((\Equal21~2_combout\))) # (!\Arreglomemoriascero[47]~316_combout\ & (\Equal30~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal30~3_combout\,
	datac => \Equal21~2_combout\,
	datad => \Arreglomemoriascero[47]~316_combout\,
	combout => \movimientos~9_combout\);

-- Location: LCCOMB_X21_Y9_N14
\movimientos~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \movimientos~10_combout\ = (\Arreglomemoriascero[47]~316_combout\ & (((\Equal22~0_combout\) # (\Equal22~1_combout\)))) # (!\Arreglomemoriascero[47]~316_combout\ & (!\Equal31~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal31~3_combout\,
	datab => \Equal22~0_combout\,
	datac => \Equal22~1_combout\,
	datad => \Arreglomemoriascero[47]~316_combout\,
	combout => \movimientos~10_combout\);

-- Location: LCCOMB_X22_Y9_N24
\movimientos~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \movimientos~14_combout\ = (\movimientos~9_combout\) # ((\movimientos~10_combout\ & ((\movimientos~13_combout\) # (!\movimientos~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \movimientos~13_combout\,
	datab => \movimientos~7_combout\,
	datac => \movimientos~9_combout\,
	datad => \movimientos~10_combout\,
	combout => \movimientos~14_combout\);

-- Location: LCCOMB_X23_Y11_N20
\movimientos~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \movimientos~16_combout\ = (\contadorvueltas~4_combout\ & (movimientos(0))) # (!\contadorvueltas~4_combout\ & (((\movimientos~15_combout\ & \movimientos~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => movimientos(0),
	datab => \contadorvueltas~4_combout\,
	datac => \movimientos~15_combout\,
	datad => \movimientos~14_combout\,
	combout => \movimientos~16_combout\);

-- Location: LCCOMB_X23_Y11_N22
\movimientos~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \movimientos~26_combout\ = \movimientos~19_combout\ $ (((!\movimientos~16_combout\ & (\Equal37~0_combout\ & \movimientos~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \movimientos~16_combout\,
	datab => \Equal37~0_combout\,
	datac => \movimientos~19_combout\,
	datad => \movimientos~22_combout\,
	combout => \movimientos~26_combout\);

-- Location: FF_X23_Y11_N23
\movimientos[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instancia1|salida~clkctrl_outclk\,
	d => \movimientos~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => movimientos(1));

-- Location: LCCOMB_X23_Y9_N12
\movimientos~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \movimientos~28_combout\ = (\Equal32~3_combout\) # ((\Equal31~3_combout\) # ((!\Equal34~3_combout\ & !\Equal33~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal32~3_combout\,
	datab => \Equal31~3_combout\,
	datac => \Equal34~3_combout\,
	datad => \Equal33~3_combout\,
	combout => \movimientos~28_combout\);

-- Location: LCCOMB_X23_Y9_N14
\movimientos~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \movimientos~29_combout\ = (!\Equal30~3_combout\ & (!\Equal29~3_combout\ & (!\Arreglomemoriascero[47]~316_combout\ & \movimientos~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal30~3_combout\,
	datab => \Equal29~3_combout\,
	datac => \Arreglomemoriascero[47]~316_combout\,
	datad => \movimientos~28_combout\,
	combout => \movimientos~29_combout\);

-- Location: LCCOMB_X21_Y9_N20
\movimientos~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \movimientos~27_combout\ = (\Equal23~1_combout\ & ((\Arreglomemoriascopia3~23_combout\) # ((\Arreglomemoriascopia3~22_combout\) # (\Equal22~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascopia3~23_combout\,
	datab => \Arreglomemoriascopia3~22_combout\,
	datac => \Equal23~1_combout\,
	datad => \Equal22~0_combout\,
	combout => \movimientos~27_combout\);

-- Location: LCCOMB_X22_Y9_N20
\movimientos~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \movimientos~17_combout\ = (!\Equal20~1_combout\ & (!\Equal21~2_combout\ & \Arreglomemoriascero[47]~316_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal20~1_combout\,
	datac => \Equal21~2_combout\,
	datad => \Arreglomemoriascero[47]~316_combout\,
	combout => \movimientos~17_combout\);

-- Location: LCCOMB_X22_Y9_N26
\movimientos~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \movimientos~18_combout\ = (\movimientos~17_combout\ & (((\Equal25~4_combout\ & !\movimientos~12_combout\)) # (!\movimientos~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal25~4_combout\,
	datab => \movimientos~12_combout\,
	datac => \movimientos~27_combout\,
	datad => \movimientos~17_combout\,
	combout => \movimientos~18_combout\);

-- Location: LCCOMB_X23_Y11_N4
\movimientos~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \movimientos~19_combout\ = (\contadorvueltas~4_combout\ & (movimientos(1))) # (!\contadorvueltas~4_combout\ & (((\movimientos~29_combout\) # (\movimientos~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => movimientos(1),
	datab => \contadorvueltas~4_combout\,
	datac => \movimientos~29_combout\,
	datad => \movimientos~18_combout\,
	combout => \movimientos~19_combout\);

-- Location: LCCOMB_X23_Y11_N8
\Equal37~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal37~1_combout\ = (!\movimientos~19_combout\ & !\movimientos~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \movimientos~19_combout\,
	datad => \movimientos~16_combout\,
	combout => \Equal37~1_combout\);

-- Location: LCCOMB_X23_Y11_N0
\movimientos~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \movimientos~23_combout\ = \movimientos~8_combout\ $ (((\Equal37~0_combout\ & (\Equal37~1_combout\ & \movimientos~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \movimientos~8_combout\,
	datab => \Equal37~0_combout\,
	datac => \Equal37~1_combout\,
	datad => \movimientos~22_combout\,
	combout => \movimientos~23_combout\);

-- Location: FF_X23_Y11_N1
\movimientos[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instancia1|salida~clkctrl_outclk\,
	d => \movimientos~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => movimientos(2));

-- Location: LCCOMB_X22_Y9_N8
\movimientos~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \movimientos~5_combout\ = (!\Equal20~1_combout\ & (\Arreglomemoriascero~16_combout\ & \Arreglomemoriascero[47]~316_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal20~1_combout\,
	datac => \Arreglomemoriascero~16_combout\,
	datad => \Arreglomemoriascero[47]~316_combout\,
	combout => \movimientos~5_combout\);

-- Location: LCCOMB_X23_Y9_N10
\movimientos~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \movimientos~6_combout\ = (\movimientos~5_combout\) # ((\Arreglomemoriascero[3]~34_combout\ & (!\Equal29~3_combout\ & !\Arreglomemoriascero[47]~316_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arreglomemoriascero[3]~34_combout\,
	datab => \Equal29~3_combout\,
	datac => \Arreglomemoriascero[47]~316_combout\,
	datad => \movimientos~5_combout\,
	combout => \movimientos~6_combout\);

-- Location: LCCOMB_X23_Y11_N10
\movimientos~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \movimientos~8_combout\ = (\contadorvueltas~4_combout\ & (((movimientos(2))))) # (!\contadorvueltas~4_combout\ & (\movimientos~7_combout\ & ((\movimientos~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \movimientos~7_combout\,
	datab => \contadorvueltas~4_combout\,
	datac => movimientos(2),
	datad => \movimientos~6_combout\,
	combout => \movimientos~8_combout\);

-- Location: LCCOMB_X23_Y11_N16
\movimientos~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \movimientos~20_combout\ = (\movimientos~8_combout\) # ((!\Add18~14_combout\ & (!\LessThan0~1_combout\ & !\Add18~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \movimientos~8_combout\,
	datab => \Add18~14_combout\,
	datac => \LessThan0~1_combout\,
	datad => \Add18~16_combout\,
	combout => \movimientos~20_combout\);

-- Location: LCCOMB_X23_Y11_N12
\movimientos~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \movimientos~21_combout\ = (\movimientos~4_combout\ & (((\movimientos~20_combout\) # (!\Equal37~1_combout\)) # (!\Add18~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add18~18_combout\,
	datab => \movimientos~4_combout\,
	datac => \Equal37~1_combout\,
	datad => \movimientos~20_combout\,
	combout => \movimientos~21_combout\);

-- Location: FF_X23_Y11_N13
\movimientos[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instancia1|salida~clkctrl_outclk\,
	d => \movimientos~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => movimientos(3));

-- Location: LCCOMB_X23_Y11_N14
\movimientos~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \movimientos~4_combout\ = (movimientos(3) & ((\contadorvueltas~1_combout\) # ((!\Vcontrol~0_combout\ & !\contadorvueltas~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => movimientos(3),
	datab => \Vcontrol~0_combout\,
	datac => \contadorvueltas~3_combout\,
	datad => \contadorvueltas~1_combout\,
	combout => \movimientos~4_combout\);

-- Location: LCCOMB_X23_Y11_N18
\Equal37~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal37~0_combout\ = (\movimientos~8_combout\) # ((\movimientos~4_combout\) # ((\movimientos~19_combout\) # (\movimientos~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \movimientos~8_combout\,
	datab => \movimientos~4_combout\,
	datac => \movimientos~19_combout\,
	datad => \movimientos~16_combout\,
	combout => \Equal37~0_combout\);

-- Location: LCCOMB_X23_Y11_N30
\sensorDetenido~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sensorDetenido~feeder_combout\ = \sensorDetenido~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sensorDetenido~0_combout\,
	combout => \sensorDetenido~feeder_combout\);

-- Location: FF_X23_Y11_N31
sensorDetenido : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instancia1|salida~clkctrl_outclk\,
	d => \sensorDetenido~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sensorDetenido~q\);

-- Location: LCCOMB_X23_Y11_N24
\sensorDetenido~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sensorDetenido~0_combout\ = (\sensorDetenido~q\ & (((registrosensor(1) & !\instancia4|Equal0~2_combout\)) # (!\process_0~0_combout\))) # (!\sensorDetenido~q\ & (((registrosensor(1) & !\instancia4|Equal0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sensorDetenido~q\,
	datab => \process_0~0_combout\,
	datac => registrosensor(1),
	datad => \instancia4|Equal0~2_combout\,
	combout => \sensorDetenido~0_combout\);

-- Location: LCCOMB_X23_Y11_N2
\Servosenal~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Servosenal~0_combout\ = (!\Equal37~0_combout\ & (!\sensorDetenido~0_combout\ & ((\EstaAquiEseCasco~q\) # (\Hayespacio~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EstaAquiEseCasco~q\,
	datab => \Equal37~0_combout\,
	datac => \Hayespacio~q\,
	datad => \sensorDetenido~0_combout\,
	combout => \Servosenal~0_combout\);

-- Location: LCCOMB_X23_Y11_N28
\Servosenal~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Servosenal~1_combout\ = (\Servosenal~0_combout\) # ((\Servosenal~q\ & ((\instancia4|Equal0~2_combout\) # (!registrosensor(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => registrosensor(1),
	datab => \instancia4|Equal0~2_combout\,
	datac => \Servosenal~q\,
	datad => \Servosenal~0_combout\,
	combout => \Servosenal~1_combout\);

-- Location: FF_X23_Y11_N29
Servosenal : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instancia1|salida~clkctrl_outclk\,
	d => \Servosenal~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Servosenal~q\);

-- Location: LCCOMB_X25_Y11_N28
\instancia5|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia5|LessThan0~0_combout\ = (!\instancia5|cuenta\(2) & (!\instancia5|cuenta\(3) & ((!\Servosenal~q\) # (!\instancia5|cuenta\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia5|cuenta\(0),
	datab => \instancia5|cuenta\(2),
	datac => \instancia5|cuenta\(3),
	datad => \Servosenal~q\,
	combout => \instancia5|LessThan0~0_combout\);

-- Location: LCCOMB_X25_Y11_N4
\instancia5|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia5|LessThan0~1_combout\ = (!\instancia5|cuenta\(4) & (!\instancia5|cuenta\(1) & \instancia5|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instancia5|cuenta\(4),
	datac => \instancia5|cuenta\(1),
	datad => \instancia5|LessThan0~0_combout\,
	combout => \instancia5|LessThan0~1_combout\);

-- Location: FF_X25_Y11_N5
\instancia5|salida\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instancia5|instancia1|salida~clkctrl_outclk\,
	d => \instancia5|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia5|salida~q\);

-- Location: FF_X23_Y11_N19
\Sentidogirosalidadirecta[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instancia1|salida~clkctrl_outclk\,
	d => \Equal37~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Sentidogirosalidadirecta(0));

-- Location: LCCOMB_X1_Y7_N18
\instancia2|estadotemp[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia2|estadotemp[0]~0_combout\ = !\instancia2|estadotemp\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instancia2|estadotemp\(0),
	combout => \instancia2|estadotemp[0]~0_combout\);

-- Location: FF_X1_Y7_N19
\instancia2|estadotemp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instancia1|salida~clkctrl_outclk\,
	d => \instancia2|estadotemp[0]~0_combout\,
	ena => Sentidogirosalidadirecta(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia2|estadotemp\(0));

-- Location: LCCOMB_X1_Y7_N28
\instancia2|salida~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia2|salida~4_combout\ = \instancia2|estadotemp\(1) $ (\instancia2|estadotemp\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instancia2|estadotemp\(1),
	datad => \instancia2|estadotemp\(0),
	combout => \instancia2|salida~4_combout\);

-- Location: FF_X1_Y7_N29
\instancia2|estadotemp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instancia1|salida~clkctrl_outclk\,
	d => \instancia2|salida~4_combout\,
	ena => Sentidogirosalidadirecta(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia2|estadotemp\(1));

-- Location: LCCOMB_X1_Y7_N0
\instancia2|salida~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia2|salida~0_combout\ = (Sentidogirosalidadirecta(0) & !\instancia2|estadotemp\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => Sentidogirosalidadirecta(0),
	datad => \instancia2|estadotemp\(1),
	combout => \instancia2|salida~0_combout\);

-- Location: FF_X1_Y7_N1
\instancia2|salida[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instancia1|salida~clkctrl_outclk\,
	d => \instancia2|salida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia2|salida\(0));

-- Location: LCCOMB_X1_Y7_N30
\instancia2|salida~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia2|salida~1_combout\ = (Sentidogirosalidadirecta(0) & (\instancia2|estadotemp\(0) $ (\instancia2|estadotemp\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instancia2|estadotemp\(0),
	datac => \instancia2|estadotemp\(1),
	datad => Sentidogirosalidadirecta(0),
	combout => \instancia2|salida~1_combout\);

-- Location: FF_X1_Y7_N31
\instancia2|salida[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instancia1|salida~clkctrl_outclk\,
	d => \instancia2|salida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia2|salida\(1));

-- Location: LCCOMB_X1_Y7_N16
\instancia2|salida~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia2|salida~2_combout\ = (Sentidogirosalidadirecta(0) & \instancia2|estadotemp\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => Sentidogirosalidadirecta(0),
	datad => \instancia2|estadotemp\(1),
	combout => \instancia2|salida~2_combout\);

-- Location: FF_X1_Y7_N17
\instancia2|salida[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instancia1|salida~clkctrl_outclk\,
	d => \instancia2|salida~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia2|salida\(2));

-- Location: LCCOMB_X1_Y7_N14
\instancia2|salida~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \instancia2|salida~3_combout\ = (Sentidogirosalidadirecta(0) & (\instancia2|estadotemp\(0) $ (!\instancia2|estadotemp\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => Sentidogirosalidadirecta(0),
	datac => \instancia2|estadotemp\(0),
	datad => \instancia2|estadotemp\(1),
	combout => \instancia2|salida~3_combout\);

-- Location: FF_X1_Y7_N15
\instancia2|salida[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instancia1|salida~clkctrl_outclk\,
	d => \instancia2|salida~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instancia2|salida\(3));

ww_Salectu(0) <= \Salectu[0]~output_o\;

ww_Salectu(1) <= \Salectu[1]~output_o\;

ww_Salectu(2) <= \Salectu[2]~output_o\;

ww_Salectu(3) <= \Salectu[3]~output_o\;

ww_Salectu(4) <= \Salectu[4]~output_o\;

ww_Salectu(5) <= \Salectu[5]~output_o\;

ww_EstaAqui <= \EstaAqui~output_o\;

ww_Hayesp <= \Hayesp~output_o\;

ww_SenalControl(0) <= \SenalControl[0]~output_o\;

ww_SenalControl(1) <= \SenalControl[1]~output_o\;

ww_SalidaServo <= \SalidaServo~output_o\;

ww_Salidaalmotor(0) <= \Salidaalmotor[0]~output_o\;

ww_Salidaalmotor(1) <= \Salidaalmotor[1]~output_o\;

ww_Salidaalmotor(2) <= \Salidaalmotor[2]~output_o\;

ww_Salidaalmotor(3) <= \Salidaalmotor[3]~output_o\;
END structure;



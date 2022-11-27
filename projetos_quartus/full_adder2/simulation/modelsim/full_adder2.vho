-- Copyright (C) 2019  Intel Corporation. All rights reserved.
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
-- VERSION "Version 19.1.0 Build 670 09/22/2019 SJ Lite Edition"

-- DATE "11/08/2022 19:57:47"

-- 
-- Device: Altera EP4CE6E22C6 Package TQFP144
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


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	adder IS
    PORT (
	a : IN std_logic_vector(9 DOWNTO 0);
	b : IN std_logic_vector(9 DOWNTO 0);
	result : BUFFER std_logic_vector(9 DOWNTO 0);
	carry_out : BUFFER std_logic;
	overflow : BUFFER std_logic
	);
END adder;

-- Design Ports Information
-- result[0]	=>  Location: PIN_77,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[1]	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[2]	=>  Location: PIN_42,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[3]	=>  Location: PIN_64,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[4]	=>  Location: PIN_51,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[5]	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[6]	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[7]	=>  Location: PIN_115,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[8]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[9]	=>  Location: PIN_112,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- carry_out	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- overflow	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[0]	=>  Location: PIN_34,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[0]	=>  Location: PIN_33,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[1]	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[1]	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[2]	=>  Location: PIN_76,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[2]	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[3]	=>  Location: PIN_53,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[3]	=>  Location: PIN_119,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[4]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[4]	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[5]	=>  Location: PIN_88,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[5]	=>  Location: PIN_89,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[6]	=>  Location: PIN_66,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[6]	=>  Location: PIN_90,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[7]	=>  Location: PIN_91,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[7]	=>  Location: PIN_113,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[8]	=>  Location: PIN_129,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[8]	=>  Location: PIN_111,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[9]	=>  Location: PIN_110,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[9]	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF adder IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_b : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_result : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_carry_out : std_logic;
SIGNAL ww_overflow : std_logic;
SIGNAL \result[0]~output_o\ : std_logic;
SIGNAL \result[1]~output_o\ : std_logic;
SIGNAL \result[2]~output_o\ : std_logic;
SIGNAL \result[3]~output_o\ : std_logic;
SIGNAL \result[4]~output_o\ : std_logic;
SIGNAL \result[5]~output_o\ : std_logic;
SIGNAL \result[6]~output_o\ : std_logic;
SIGNAL \result[7]~output_o\ : std_logic;
SIGNAL \result[8]~output_o\ : std_logic;
SIGNAL \result[9]~output_o\ : std_logic;
SIGNAL \carry_out~output_o\ : std_logic;
SIGNAL \overflow~output_o\ : std_logic;
SIGNAL \a[0]~input_o\ : std_logic;
SIGNAL \b[0]~input_o\ : std_logic;
SIGNAL \generate_full_adder:0:full_adder|sum~0_combout\ : std_logic;
SIGNAL \a[1]~input_o\ : std_logic;
SIGNAL \b[1]~input_o\ : std_logic;
SIGNAL \generate_full_adder:1:full_adder|sum~0_combout\ : std_logic;
SIGNAL \generate_full_adder:1:full_adder|cout~0_combout\ : std_logic;
SIGNAL \b[2]~input_o\ : std_logic;
SIGNAL \a[2]~input_o\ : std_logic;
SIGNAL \generate_full_adder:2:full_adder|sum~0_combout\ : std_logic;
SIGNAL \generate_full_adder:2:full_adder|cout~1_combout\ : std_logic;
SIGNAL \generate_full_adder:2:full_adder|cout~0_combout\ : std_logic;
SIGNAL \b[3]~input_o\ : std_logic;
SIGNAL \a[3]~input_o\ : std_logic;
SIGNAL \generate_full_adder:3:full_adder|sum~combout\ : std_logic;
SIGNAL \b[4]~input_o\ : std_logic;
SIGNAL \a[4]~input_o\ : std_logic;
SIGNAL \generate_full_adder:3:full_adder|cout~0_combout\ : std_logic;
SIGNAL \generate_full_adder:4:full_adder|sum~0_combout\ : std_logic;
SIGNAL \generate_full_adder:4:full_adder|cout~1_combout\ : std_logic;
SIGNAL \generate_full_adder:4:full_adder|cout~0_combout\ : std_logic;
SIGNAL \a[5]~input_o\ : std_logic;
SIGNAL \b[5]~input_o\ : std_logic;
SIGNAL \generate_full_adder:5:full_adder|sum~combout\ : std_logic;
SIGNAL \generate_full_adder:5:full_adder|cout~0_combout\ : std_logic;
SIGNAL \a[6]~input_o\ : std_logic;
SIGNAL \b[6]~input_o\ : std_logic;
SIGNAL \generate_full_adder:6:full_adder|sum~0_combout\ : std_logic;
SIGNAL \generate_full_adder:6:full_adder|cout~1_combout\ : std_logic;
SIGNAL \a[7]~input_o\ : std_logic;
SIGNAL \generate_full_adder:6:full_adder|cout~0_combout\ : std_logic;
SIGNAL \b[7]~input_o\ : std_logic;
SIGNAL \generate_full_adder:7:full_adder|sum~combout\ : std_logic;
SIGNAL \a[8]~input_o\ : std_logic;
SIGNAL \b[8]~input_o\ : std_logic;
SIGNAL \generate_full_adder:7:full_adder|cout~0_combout\ : std_logic;
SIGNAL \generate_full_adder:8:full_adder|sum~0_combout\ : std_logic;
SIGNAL \generate_full_adder:8:full_adder|cout~0_combout\ : std_logic;
SIGNAL \generate_full_adder:8:full_adder|cout~1_combout\ : std_logic;
SIGNAL \a[9]~input_o\ : std_logic;
SIGNAL \b[9]~input_o\ : std_logic;
SIGNAL \generate_full_adder:9:full_adder|sum~combout\ : std_logic;
SIGNAL \generate_full_adder:9:full_adder|cout~0_combout\ : std_logic;
SIGNAL \overflow~6_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_a <= a;
ww_b <= b;
result <= ww_result;
carry_out <= ww_carry_out;
overflow <= ww_overflow;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X34_Y4_N16
\result[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \generate_full_adder:0:full_adder|sum~0_combout\,
	devoe => ww_devoe,
	o => \result[0]~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\result[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \generate_full_adder:1:full_adder|sum~0_combout\,
	devoe => ww_devoe,
	o => \result[1]~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\result[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \generate_full_adder:2:full_adder|sum~0_combout\,
	devoe => ww_devoe,
	o => \result[2]~output_o\);

-- Location: IOOBUF_X25_Y0_N2
\result[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \generate_full_adder:3:full_adder|sum~combout\,
	devoe => ww_devoe,
	o => \result[3]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\result[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \generate_full_adder:4:full_adder|sum~0_combout\,
	devoe => ww_devoe,
	o => \result[4]~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\result[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \generate_full_adder:5:full_adder|sum~combout\,
	devoe => ww_devoe,
	o => \result[5]~output_o\);

-- Location: IOOBUF_X23_Y0_N9
\result[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \generate_full_adder:6:full_adder|sum~0_combout\,
	devoe => ww_devoe,
	o => \result[6]~output_o\);

-- Location: IOOBUF_X28_Y24_N23
\result[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \generate_full_adder:7:full_adder|sum~combout\,
	devoe => ww_devoe,
	o => \result[7]~output_o\);

-- Location: IOOBUF_X18_Y24_N16
\result[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \generate_full_adder:8:full_adder|sum~0_combout\,
	devoe => ww_devoe,
	o => \result[8]~output_o\);

-- Location: IOOBUF_X28_Y24_N2
\result[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \generate_full_adder:9:full_adder|sum~combout\,
	devoe => ww_devoe,
	o => \result[9]~output_o\);

-- Location: IOOBUF_X18_Y24_N23
\carry_out~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \generate_full_adder:9:full_adder|cout~0_combout\,
	devoe => ww_devoe,
	o => \carry_out~output_o\);

-- Location: IOOBUF_X23_Y24_N16
\overflow~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \overflow~6_combout\,
	devoe => ww_devoe,
	o => \overflow~output_o\);

-- Location: IOIBUF_X0_Y5_N15
\a[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(0),
	o => \a[0]~input_o\);

-- Location: IOIBUF_X0_Y6_N22
\b[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(0),
	o => \b[0]~input_o\);

-- Location: LCCOMB_X22_Y4_N0
\generate_full_adder:0:full_adder|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \generate_full_adder:0:full_adder|sum~0_combout\ = \a[0]~input_o\ $ (\b[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[0]~input_o\,
	datac => \b[0]~input_o\,
	combout => \generate_full_adder:0:full_adder|sum~0_combout\);

-- Location: IOIBUF_X18_Y0_N15
\a[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(1),
	o => \a[1]~input_o\);

-- Location: IOIBUF_X16_Y24_N1
\b[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(1),
	o => \b[1]~input_o\);

-- Location: LCCOMB_X22_Y4_N26
\generate_full_adder:1:full_adder|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \generate_full_adder:1:full_adder|sum~0_combout\ = \a[1]~input_o\ $ (\b[1]~input_o\ $ (((\a[0]~input_o\ & \b[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[0]~input_o\,
	datab => \a[1]~input_o\,
	datac => \b[0]~input_o\,
	datad => \b[1]~input_o\,
	combout => \generate_full_adder:1:full_adder|sum~0_combout\);

-- Location: LCCOMB_X22_Y4_N20
\generate_full_adder:1:full_adder|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \generate_full_adder:1:full_adder|cout~0_combout\ = (\a[1]~input_o\ & ((\b[1]~input_o\) # ((\a[0]~input_o\ & \b[0]~input_o\)))) # (!\a[1]~input_o\ & (\a[0]~input_o\ & (\b[0]~input_o\ & \b[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[0]~input_o\,
	datab => \a[1]~input_o\,
	datac => \b[0]~input_o\,
	datad => \b[1]~input_o\,
	combout => \generate_full_adder:1:full_adder|cout~0_combout\);

-- Location: IOIBUF_X5_Y0_N15
\b[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(2),
	o => \b[2]~input_o\);

-- Location: IOIBUF_X34_Y4_N22
\a[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(2),
	o => \a[2]~input_o\);

-- Location: LCCOMB_X22_Y4_N14
\generate_full_adder:2:full_adder|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \generate_full_adder:2:full_adder|sum~0_combout\ = \generate_full_adder:1:full_adder|cout~0_combout\ $ (\b[2]~input_o\ $ (\a[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \generate_full_adder:1:full_adder|cout~0_combout\,
	datac => \b[2]~input_o\,
	datad => \a[2]~input_o\,
	combout => \generate_full_adder:2:full_adder|sum~0_combout\);

-- Location: LCCOMB_X22_Y4_N10
\generate_full_adder:2:full_adder|cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \generate_full_adder:2:full_adder|cout~1_combout\ = (\b[2]~input_o\ & ((\generate_full_adder:1:full_adder|cout~0_combout\) # (\a[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \generate_full_adder:1:full_adder|cout~0_combout\,
	datac => \b[2]~input_o\,
	datad => \a[2]~input_o\,
	combout => \generate_full_adder:2:full_adder|cout~1_combout\);

-- Location: LCCOMB_X22_Y4_N24
\generate_full_adder:2:full_adder|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \generate_full_adder:2:full_adder|cout~0_combout\ = (\generate_full_adder:1:full_adder|cout~0_combout\ & \a[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \generate_full_adder:1:full_adder|cout~0_combout\,
	datad => \a[2]~input_o\,
	combout => \generate_full_adder:2:full_adder|cout~0_combout\);

-- Location: IOIBUF_X16_Y0_N1
\b[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(3),
	o => \b[3]~input_o\);

-- Location: IOIBUF_X23_Y24_N1
\a[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(3),
	o => \a[3]~input_o\);

-- Location: LCCOMB_X22_Y4_N28
\generate_full_adder:3:full_adder|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \generate_full_adder:3:full_adder|sum~combout\ = \b[3]~input_o\ $ (\a[3]~input_o\ $ (((\generate_full_adder:2:full_adder|cout~1_combout\) # (\generate_full_adder:2:full_adder|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \generate_full_adder:2:full_adder|cout~1_combout\,
	datab => \generate_full_adder:2:full_adder|cout~0_combout\,
	datac => \b[3]~input_o\,
	datad => \a[3]~input_o\,
	combout => \generate_full_adder:3:full_adder|sum~combout\);

-- Location: IOIBUF_X21_Y0_N8
\b[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(4),
	o => \b[4]~input_o\);

-- Location: IOIBUF_X16_Y0_N8
\a[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(4),
	o => \a[4]~input_o\);

-- Location: LCCOMB_X22_Y4_N6
\generate_full_adder:3:full_adder|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \generate_full_adder:3:full_adder|cout~0_combout\ = (\b[3]~input_o\ & ((\generate_full_adder:2:full_adder|cout~1_combout\) # ((\generate_full_adder:2:full_adder|cout~0_combout\) # (\a[3]~input_o\)))) # (!\b[3]~input_o\ & (\a[3]~input_o\ & 
-- ((\generate_full_adder:2:full_adder|cout~1_combout\) # (\generate_full_adder:2:full_adder|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \generate_full_adder:2:full_adder|cout~1_combout\,
	datab => \generate_full_adder:2:full_adder|cout~0_combout\,
	datac => \b[3]~input_o\,
	datad => \a[3]~input_o\,
	combout => \generate_full_adder:3:full_adder|cout~0_combout\);

-- Location: LCCOMB_X22_Y4_N8
\generate_full_adder:4:full_adder|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \generate_full_adder:4:full_adder|sum~0_combout\ = \b[4]~input_o\ $ (\a[4]~input_o\ $ (\generate_full_adder:3:full_adder|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b[4]~input_o\,
	datac => \a[4]~input_o\,
	datad => \generate_full_adder:3:full_adder|cout~0_combout\,
	combout => \generate_full_adder:4:full_adder|sum~0_combout\);

-- Location: LCCOMB_X22_Y4_N12
\generate_full_adder:4:full_adder|cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \generate_full_adder:4:full_adder|cout~1_combout\ = (\b[4]~input_o\ & ((\a[4]~input_o\) # (\generate_full_adder:3:full_adder|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b[4]~input_o\,
	datac => \a[4]~input_o\,
	datad => \generate_full_adder:3:full_adder|cout~0_combout\,
	combout => \generate_full_adder:4:full_adder|cout~1_combout\);

-- Location: LCCOMB_X22_Y4_N2
\generate_full_adder:4:full_adder|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \generate_full_adder:4:full_adder|cout~0_combout\ = (\a[4]~input_o\ & \generate_full_adder:3:full_adder|cout~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a[4]~input_o\,
	datad => \generate_full_adder:3:full_adder|cout~0_combout\,
	combout => \generate_full_adder:4:full_adder|cout~0_combout\);

-- Location: IOIBUF_X34_Y12_N15
\a[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(5),
	o => \a[5]~input_o\);

-- Location: IOIBUF_X34_Y12_N22
\b[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(5),
	o => \b[5]~input_o\);

-- Location: LCCOMB_X22_Y4_N30
\generate_full_adder:5:full_adder|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \generate_full_adder:5:full_adder|sum~combout\ = \a[5]~input_o\ $ (\b[5]~input_o\ $ (((\generate_full_adder:4:full_adder|cout~1_combout\) # (\generate_full_adder:4:full_adder|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \generate_full_adder:4:full_adder|cout~1_combout\,
	datab => \generate_full_adder:4:full_adder|cout~0_combout\,
	datac => \a[5]~input_o\,
	datad => \b[5]~input_o\,
	combout => \generate_full_adder:5:full_adder|sum~combout\);

-- Location: LCCOMB_X22_Y4_N16
\generate_full_adder:5:full_adder|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \generate_full_adder:5:full_adder|cout~0_combout\ = (\a[5]~input_o\ & ((\generate_full_adder:4:full_adder|cout~1_combout\) # ((\generate_full_adder:4:full_adder|cout~0_combout\) # (\b[5]~input_o\)))) # (!\a[5]~input_o\ & (\b[5]~input_o\ & 
-- ((\generate_full_adder:4:full_adder|cout~1_combout\) # (\generate_full_adder:4:full_adder|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \generate_full_adder:4:full_adder|cout~1_combout\,
	datab => \generate_full_adder:4:full_adder|cout~0_combout\,
	datac => \a[5]~input_o\,
	datad => \b[5]~input_o\,
	combout => \generate_full_adder:5:full_adder|cout~0_combout\);

-- Location: IOIBUF_X28_Y0_N1
\a[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(6),
	o => \a[6]~input_o\);

-- Location: IOIBUF_X34_Y12_N8
\b[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(6),
	o => \b[6]~input_o\);

-- Location: LCCOMB_X22_Y4_N18
\generate_full_adder:6:full_adder|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \generate_full_adder:6:full_adder|sum~0_combout\ = \generate_full_adder:5:full_adder|cout~0_combout\ $ (\a[6]~input_o\ $ (\b[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \generate_full_adder:5:full_adder|cout~0_combout\,
	datac => \a[6]~input_o\,
	datad => \b[6]~input_o\,
	combout => \generate_full_adder:6:full_adder|sum~0_combout\);

-- Location: LCCOMB_X22_Y4_N22
\generate_full_adder:6:full_adder|cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \generate_full_adder:6:full_adder|cout~1_combout\ = (\b[6]~input_o\ & ((\generate_full_adder:5:full_adder|cout~0_combout\) # (\a[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \generate_full_adder:5:full_adder|cout~0_combout\,
	datac => \a[6]~input_o\,
	datad => \b[6]~input_o\,
	combout => \generate_full_adder:6:full_adder|cout~1_combout\);

-- Location: IOIBUF_X28_Y24_N8
\a[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(7),
	o => \a[7]~input_o\);

-- Location: LCCOMB_X22_Y4_N4
\generate_full_adder:6:full_adder|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \generate_full_adder:6:full_adder|cout~0_combout\ = (\generate_full_adder:5:full_adder|cout~0_combout\ & \a[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \generate_full_adder:5:full_adder|cout~0_combout\,
	datac => \a[6]~input_o\,
	combout => \generate_full_adder:6:full_adder|cout~0_combout\);

-- Location: IOIBUF_X34_Y12_N1
\b[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(7),
	o => \b[7]~input_o\);

-- Location: LCCOMB_X24_Y20_N24
\generate_full_adder:7:full_adder|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \generate_full_adder:7:full_adder|sum~combout\ = \a[7]~input_o\ $ (\b[7]~input_o\ $ (((\generate_full_adder:6:full_adder|cout~1_combout\) # (\generate_full_adder:6:full_adder|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \generate_full_adder:6:full_adder|cout~1_combout\,
	datab => \a[7]~input_o\,
	datac => \generate_full_adder:6:full_adder|cout~0_combout\,
	datad => \b[7]~input_o\,
	combout => \generate_full_adder:7:full_adder|sum~combout\);

-- Location: IOIBUF_X16_Y24_N22
\a[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(8),
	o => \a[8]~input_o\);

-- Location: IOIBUF_X30_Y24_N22
\b[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(8),
	o => \b[8]~input_o\);

-- Location: LCCOMB_X24_Y20_N10
\generate_full_adder:7:full_adder|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \generate_full_adder:7:full_adder|cout~0_combout\ = (\a[7]~input_o\ & ((\generate_full_adder:6:full_adder|cout~1_combout\) # ((\generate_full_adder:6:full_adder|cout~0_combout\) # (\b[7]~input_o\)))) # (!\a[7]~input_o\ & (\b[7]~input_o\ & 
-- ((\generate_full_adder:6:full_adder|cout~1_combout\) # (\generate_full_adder:6:full_adder|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \generate_full_adder:6:full_adder|cout~1_combout\,
	datab => \a[7]~input_o\,
	datac => \generate_full_adder:6:full_adder|cout~0_combout\,
	datad => \b[7]~input_o\,
	combout => \generate_full_adder:7:full_adder|cout~0_combout\);

-- Location: LCCOMB_X24_Y20_N4
\generate_full_adder:8:full_adder|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \generate_full_adder:8:full_adder|sum~0_combout\ = \a[8]~input_o\ $ (\b[8]~input_o\ $ (\generate_full_adder:7:full_adder|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[8]~input_o\,
	datac => \b[8]~input_o\,
	datad => \generate_full_adder:7:full_adder|cout~0_combout\,
	combout => \generate_full_adder:8:full_adder|sum~0_combout\);

-- Location: LCCOMB_X24_Y20_N22
\generate_full_adder:8:full_adder|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \generate_full_adder:8:full_adder|cout~0_combout\ = (\a[8]~input_o\ & \generate_full_adder:7:full_adder|cout~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[8]~input_o\,
	datad => \generate_full_adder:7:full_adder|cout~0_combout\,
	combout => \generate_full_adder:8:full_adder|cout~0_combout\);

-- Location: LCCOMB_X24_Y20_N16
\generate_full_adder:8:full_adder|cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \generate_full_adder:8:full_adder|cout~1_combout\ = (\b[8]~input_o\ & ((\a[8]~input_o\) # (\generate_full_adder:7:full_adder|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[8]~input_o\,
	datac => \b[8]~input_o\,
	datad => \generate_full_adder:7:full_adder|cout~0_combout\,
	combout => \generate_full_adder:8:full_adder|cout~1_combout\);

-- Location: IOIBUF_X23_Y24_N8
\a[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(9),
	o => \a[9]~input_o\);

-- Location: IOIBUF_X30_Y24_N1
\b[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(9),
	o => \b[9]~input_o\);

-- Location: LCCOMB_X24_Y20_N26
\generate_full_adder:9:full_adder|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \generate_full_adder:9:full_adder|sum~combout\ = \a[9]~input_o\ $ (\b[9]~input_o\ $ (((\generate_full_adder:8:full_adder|cout~0_combout\) # (\generate_full_adder:8:full_adder|cout~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \generate_full_adder:8:full_adder|cout~0_combout\,
	datab => \generate_full_adder:8:full_adder|cout~1_combout\,
	datac => \a[9]~input_o\,
	datad => \b[9]~input_o\,
	combout => \generate_full_adder:9:full_adder|sum~combout\);

-- Location: LCCOMB_X24_Y20_N12
\generate_full_adder:9:full_adder|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \generate_full_adder:9:full_adder|cout~0_combout\ = (\a[9]~input_o\ & ((\generate_full_adder:8:full_adder|cout~0_combout\) # ((\generate_full_adder:8:full_adder|cout~1_combout\) # (\b[9]~input_o\)))) # (!\a[9]~input_o\ & (\b[9]~input_o\ & 
-- ((\generate_full_adder:8:full_adder|cout~0_combout\) # (\generate_full_adder:8:full_adder|cout~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \generate_full_adder:8:full_adder|cout~0_combout\,
	datab => \generate_full_adder:8:full_adder|cout~1_combout\,
	datac => \a[9]~input_o\,
	datad => \b[9]~input_o\,
	combout => \generate_full_adder:9:full_adder|cout~0_combout\);

-- Location: LCCOMB_X24_Y20_N6
\overflow~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \overflow~6_combout\ = \generate_full_adder:9:full_adder|cout~0_combout\ $ (((\generate_full_adder:7:full_adder|cout~0_combout\ & ((\b[8]~input_o\) # (\a[8]~input_o\))) # (!\generate_full_adder:7:full_adder|cout~0_combout\ & (\b[8]~input_o\ & 
-- \a[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \generate_full_adder:7:full_adder|cout~0_combout\,
	datab => \b[8]~input_o\,
	datac => \generate_full_adder:9:full_adder|cout~0_combout\,
	datad => \a[8]~input_o\,
	combout => \overflow~6_combout\);

ww_result(0) <= \result[0]~output_o\;

ww_result(1) <= \result[1]~output_o\;

ww_result(2) <= \result[2]~output_o\;

ww_result(3) <= \result[3]~output_o\;

ww_result(4) <= \result[4]~output_o\;

ww_result(5) <= \result[5]~output_o\;

ww_result(6) <= \result[6]~output_o\;

ww_result(7) <= \result[7]~output_o\;

ww_result(8) <= \result[8]~output_o\;

ww_result(9) <= \result[9]~output_o\;

ww_carry_out <= \carry_out~output_o\;

ww_overflow <= \overflow~output_o\;
END structure;



// megafunction wizard: %LPM_MUX%
// GENERATION: STANDARD
// VERSION: WM1.0
// MODULE: LPM_MUX 

// ============================================================
// File Name: Mulitplexer.v
// Megafunction Name(s):
// 			LPM_MUX
//
// Simulation Library Files(s):
// 			lpm
// ============================================================
// ************************************************************
// THIS IS A WIZARD-GENERATED FILE. DO NOT EDIT THIS FILE!
//
// 18.1.0 Build 625 09/12/2018 SJ Lite Edition
// ************************************************************


//Copyright (C) 2018  Intel Corporation. All rights reserved.
//Your use of Intel Corporation's design tools, logic functions 
//and other software and tools, and its AMPP partner logic 
//functions, and any output files from any of the foregoing 
//(including device programming or simulation files), and any 
//associated documentation or information are expressly subject 
//to the terms and conditions of the Intel Program License 
//Subscription Agreement, the Intel Quartus Prime License Agreement,
//the Intel FPGA IP License Agreement, or other applicable license
//agreement, including, without limitation, that your use is for
//the sole purpose of programming logic devices manufactured by
//Intel and sold by Intel or its authorized distributors.  Please
//refer to the applicable agreement for further details.


// synopsys translate_off
`timescale 1 ps / 1 ps
// synopsys translate_on
module Mulitplexer (
	data0x,
	data1x,
	sel,
	result);

	input	[15:0]  data0x;
	input	[15:0]  data1x;
	input	  sel;
	output	[15:0]  result;

	wire [15:0] sub_wire5;
	wire [15:0] sub_wire2 = data1x[15:0];
	wire [15:0] sub_wire0 = data0x[15:0];
	wire [31:0] sub_wire1 = {sub_wire2, sub_wire0};
	wire  sub_wire3 = sel;
	wire  sub_wire4 = sub_wire3;
	wire [15:0] result = sub_wire5[15:0];

	lpm_mux	LPM_MUX_component (
				.data (sub_wire1),
				.sel (sub_wire4),
				.result (sub_wire5)
				// synopsys translate_off
				,
				.aclr (),
				.clken (),
				.clock ()
				// synopsys translate_on
				);
	defparam
		LPM_MUX_component.lpm_size = 2,
		LPM_MUX_component.lpm_type = "LPM_MUX",
		LPM_MUX_component.lpm_width = 16,
		LPM_MUX_component.lpm_widths = 1;


endmodule

// ============================================================
// CNX file retrieval info
// ============================================================
// Retrieval info: PRIVATE: INTENDED_DEVICE_FAMILY STRING "Cyclone IV GX"
// Retrieval info: PRIVATE: SYNTH_WRAPPER_GEN_POSTFIX STRING "1"
// Retrieval info: PRIVATE: new_diagram STRING "1"
// Retrieval info: LIBRARY: lpm lpm.lpm_components.all
// Retrieval info: CONSTANT: LPM_SIZE NUMERIC "2"
// Retrieval info: CONSTANT: LPM_TYPE STRING "LPM_MUX"
// Retrieval info: CONSTANT: LPM_WIDTH NUMERIC "16"
// Retrieval info: CONSTANT: LPM_WIDTHS NUMERIC "1"
// Retrieval info: USED_PORT: data0x 0 0 16 0 INPUT NODEFVAL "data0x[15..0]"
// Retrieval info: USED_PORT: data1x 0 0 16 0 INPUT NODEFVAL "data1x[15..0]"
// Retrieval info: USED_PORT: result 0 0 16 0 OUTPUT NODEFVAL "result[15..0]"
// Retrieval info: USED_PORT: sel 0 0 0 0 INPUT NODEFVAL "sel"
// Retrieval info: CONNECT: @data 0 0 16 0 data0x 0 0 16 0
// Retrieval info: CONNECT: @data 0 0 16 16 data1x 0 0 16 0
// Retrieval info: CONNECT: @sel 0 0 1 0 sel 0 0 0 0
// Retrieval info: CONNECT: result 0 0 16 0 @result 0 0 16 0
// Retrieval info: GEN_FILE: TYPE_NORMAL Mulitplexer.v TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL Mulitplexer.inc FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL Mulitplexer.cmp FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL Mulitplexer.bsf TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL Mulitplexer_inst.v FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL Mulitplexer_bb.v TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL Mulitplexer_syn.v TRUE
// Retrieval info: LIB_FILE: lpm

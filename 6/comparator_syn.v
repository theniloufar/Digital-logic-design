// megafunction wizard: %LPM_COMPARE%
// GENERATION: STANDARD
// VERSION: WM1.0
// MODULE: LPM_COMPARE 

// ============================================================
// File Name: comparator.v
// Megafunction Name(s):
// 			LPM_COMPARE
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


//lpm_compare DEVICE_FAMILY="Cyclone IV GX" LPM_REPRESENTATION="UNSIGNED" LPM_WIDTH=16 ageb dataa datab
//VERSION_BEGIN 18.1 cbx_cycloneii 2018:09:12:13:04:24:SJ cbx_lpm_add_sub 2018:09:12:13:04:24:SJ cbx_lpm_compare 2018:09:12:13:04:24:SJ cbx_mgl 2018:09:12:13:10:36:SJ cbx_nadder 2018:09:12:13:04:24:SJ cbx_stratix 2018:09:12:13:04:24:SJ cbx_stratixii 2018:09:12:13:04:24:SJ  VERSION_END
// synthesis VERILOG_INPUT_VERSION VERILOG_2001
// altera message_off 10463


//synthesis_resources = lut 27 
//synopsys translate_off
`timescale 1 ps / 1 ps
//synopsys translate_on
module  comparator_cmpr
	( 
	ageb,
	dataa,
	datab) /* synthesis synthesis_clearbox=1 */;
	output   ageb;
	input   [15:0]  dataa;
	input   [15:0]  datab;
`ifndef ALTERA_RESERVED_QIS
// synopsys translate_off
`endif
	tri0   [15:0]  dataa;
	tri0   [15:0]  datab;
`ifndef ALTERA_RESERVED_QIS
// synopsys translate_on
`endif

	reg	wire_aeb_int;
	reg	wire_agb_int;

	always @(dataa or datab)
	begin
		if (dataa == datab) 
			begin
				wire_aeb_int = 1'b1;
			end
		else
			begin
				wire_aeb_int = 1'b0;
			end
		if (dataa > datab) 
			begin
				wire_agb_int = 1'b1;
			end
		else
			begin
				wire_agb_int = 1'b0;
			end
	end
	assign
		ageb = wire_agb_int | wire_aeb_int;
endmodule //comparator_cmpr
//VALID FILE


// synopsys translate_off
`timescale 1 ps / 1 ps
// synopsys translate_on
module comparator (
	dataa,
	datab,
	ageb)/* synthesis synthesis_clearbox = 1 */;

	input	[15:0]  dataa;
	input	[15:0]  datab;
	output	  ageb;

	wire  sub_wire0;
	wire  ageb = sub_wire0;

	comparator_cmpr	comparator_cmpr_component (
				.dataa (dataa),
				.datab (datab),
				.ageb (sub_wire0));

endmodule

// ============================================================
// CNX file retrieval info
// ============================================================
// Retrieval info: PRIVATE: AeqB NUMERIC "0"
// Retrieval info: PRIVATE: AgeB NUMERIC "1"
// Retrieval info: PRIVATE: AgtB NUMERIC "0"
// Retrieval info: PRIVATE: AleB NUMERIC "0"
// Retrieval info: PRIVATE: AltB NUMERIC "0"
// Retrieval info: PRIVATE: AneB NUMERIC "0"
// Retrieval info: PRIVATE: INTENDED_DEVICE_FAMILY STRING "Cyclone IV GX"
// Retrieval info: PRIVATE: LPM_PIPELINE NUMERIC "0"
// Retrieval info: PRIVATE: Latency NUMERIC "0"
// Retrieval info: PRIVATE: PortBValue NUMERIC "0"
// Retrieval info: PRIVATE: Radix NUMERIC "10"
// Retrieval info: PRIVATE: SYNTH_WRAPPER_GEN_POSTFIX STRING "1"
// Retrieval info: PRIVATE: SignedCompare NUMERIC "0"
// Retrieval info: PRIVATE: aclr NUMERIC "0"
// Retrieval info: PRIVATE: clken NUMERIC "0"
// Retrieval info: PRIVATE: isPortBConstant NUMERIC "0"
// Retrieval info: PRIVATE: nBit NUMERIC "16"
// Retrieval info: PRIVATE: new_diagram STRING "1"
// Retrieval info: LIBRARY: lpm lpm.lpm_components.all
// Retrieval info: CONSTANT: LPM_REPRESENTATION STRING "UNSIGNED"
// Retrieval info: CONSTANT: LPM_TYPE STRING "LPM_COMPARE"
// Retrieval info: CONSTANT: LPM_WIDTH NUMERIC "16"
// Retrieval info: USED_PORT: ageb 0 0 0 0 OUTPUT NODEFVAL "ageb"
// Retrieval info: USED_PORT: dataa 0 0 16 0 INPUT NODEFVAL "dataa[15..0]"
// Retrieval info: USED_PORT: datab 0 0 16 0 INPUT NODEFVAL "datab[15..0]"
// Retrieval info: CONNECT: @dataa 0 0 16 0 dataa 0 0 16 0
// Retrieval info: CONNECT: @datab 0 0 16 0 datab 0 0 16 0
// Retrieval info: CONNECT: ageb 0 0 0 0 @ageb 0 0 0 0
// Retrieval info: GEN_FILE: TYPE_NORMAL comparator.v TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL comparator.inc FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL comparator.cmp FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL comparator.bsf TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL comparator_inst.v FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL comparator_bb.v TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL comparator_syn.v TRUE
// Retrieval info: LIB_FILE: lpm

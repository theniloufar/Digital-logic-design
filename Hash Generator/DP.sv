module DP(clk, rst, Message, HashResult, Fsel, Rsel, ld_a, ld_b, ld_c, ld_d, sel_a, sel_b, sel_c, sel_d, j);
	input clk, rst, ld_a, ld_b, ld_c, ld_d, sel_a, sel_b, sel_c, sel_d;
	input [1:0] Fsel, Rsel;
	input [31:0] Message;
	input [5:0] j;
	output [31:0] HashResult;
	
	wire [31:0] A_INIT; 
	wire [31:0] B_INIT;
	wire [31:0] C_INIT;
	wire [31:0] D_INIT;
	wire [31:0] regA_in, regB_in, regC_in, regD_in, mux1_out, mux2_out, K, regA_out, regB_out, regC_out, regD_out, Fgen_out, add1_out, add2_out, add3_out, add4_out, shift_out;
	wire [4:0] S;
	assign A_INIT = 32'h67452301;
	assign B_INIT = 32'hefcdab89;
	assign C_INIT = 32'h98badcfe;
	assign D_INIT = 32'h10325476;
	
	mux2 M1(.in0(regD_out), .in1(A_INIT), .sel(sel_a), .out(regA_in));
	mux2 M2(.in0(add4_out), .in1(B_INIT), .sel(sel_b), .out(regB_in));
	mux2 M3(.in0(regB_out), .in1(C_INIT), .sel(sel_c), .out(regC_in));
	mux2 M4(.in0(regC_out), .in1(D_INIT), .sel(sel_d), .out(regD_in));
	
	Register Reg_A (.clk(clk), .rst(rst), .ld(ld_a), .in(regA_in), .out(regA_out));
	Register Reg_B (.clk(clk), .rst(rst), .ld(ld_b), .in(regB_in), .out(regB_out));
	Register Reg_C (.clk(clk), .rst(rst), .ld(ld_c), .in(regC_in), .out(regC_out));
	Register Reg_D (.clk(clk), .rst(rst), .ld(ld_d), .in(regD_in), .out(regD_out));
	
	Adder Add1 (.in0(regA_out), .in1(Fgen_out), .out(add1_out));
	Adder Add2 (.in0(add1_out), .in1(Message), .out(add2_out));
	Adder Add3 (.in0(add2_out), .in1(K), .out(add3_out));
	Adder Add4 (.in0(shift_out), .in1(regB_out), .out(add4_out));
	Adder Add5 (.in0(mux1_out), .in1(mux2_out), .out(HashResult));
	
	Shifter Shift1 (.in(add3_out), .n(S), .out(shift_out));
	
	F_Gen F1 (.A(regA_out), .B(regB_out), .C(regC_out), .D(regD_out), .Fsel(Fsel), .out(Fgen_out));
	
	mux4 MUX1 (.in0(regD_out), .in1(regC_out), .in2(regB_out), .in3(regA_out), .sel(Rsel), .out(mux1_out));
	mux4 MUX2 (.in0(D_INIT), .in1(C_INIT), .in2(B_INIT), .in3(A_INIT), .sel(Rsel), .out(mux2_out));
	
	LUT_K L1 (.addr(j), .out(K));
	LUT_S L2 (.addr(j), .out(S));
	
endmodule

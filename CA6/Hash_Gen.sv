module Hash_Gen (clk, rst, start, messageIn, messageAddress, messageRead, hashResult, dataOutValid);
	input clk, rst, start;
	input [31:0] messageIn;
	output messageRead, dataOutValid;
	output [31:0] hashResult;
	output [3:0] messageAddress;
	
	wire ld_a, ld_b, ld_c, ld_d, sel_a, sel_b, sel_c, sel_d;
	wire [1:0] Fsel, Rsel;
	wire [5:0] j;
	
	DP dataPath(.clk(clk), .rst(rst), .Message(messageIn), .HashResult(hashResult), 
				.Fsel(Fsel), .Rsel(Rsel), .ld_a(ld_a), .ld_b(ld_b), .ld_c(ld_c),
				.ld_d(ld_d), .sel_a(sel_a), .sel_b(sel_b), .sel_c(sel_c), .sel_d(sel_d), .j(j));
				
	CU Controller(.clk(clk), .rst(rst), .start(start), .dataOutValid(dataOutValid),
				.ld_a(ld_a), .ld_b(ld_b), .ld_c(ld_c), .ld_d(ld_d), .sel_a(sel_a),
				.sel_b(sel_b), .sel_c(sel_c), .sel_d(sel_d), .wr(messageRead), .Fsel(Fsel), .Rsel(Rsel), .j(j), .i(messageAddress));
				
endmodule 

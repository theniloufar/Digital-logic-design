module Top(clk, rst, start, hashResult, dataOutValid);
	input clk, rst, start;
	output [31:0] hashResult;
	output dataOutValid;
	
	wire [3:0] addr;
	wire rw;
	wire [31:0] M;
	
	Hash_Gen HG(.clk(clk), .rst(rst), .start(start), .messageIn(M), .messageAddress(addr), .messageRead(rw), .hashResult(hashResult), .dataOutValid(dataOutValid));
	mem Memory(.addr(addr), .in(32'd0), .rw(rw), .clk(clk), .out(M));
endmodule

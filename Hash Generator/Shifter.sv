module Shifter(in, n, out);
	input [31:0] in;
	input [4:0] n;
	output [31:0] out;
	assign out = (in << n) | (in >> (32 - n));
endmodule 

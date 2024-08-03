 `timescale 1ns/1ns
module DFF(input D, clk, output Q, Qnot);
	wire c, cnot, e, enot;
	SRlatch32 S1(enot, clk, 1'b1, c, cnot);
	SRlatch32 S2(cnot, D, clk, e, enot);
	SRlatch32 S3(cnot, e, 1'b1, Q, Qnot);
endmodule
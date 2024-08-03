 `timescale 1ns/1ns
module DFFC(input D, clk, clr, pre, output Q, Qnot);
	wire W1, W1not, W2, W2not;
	SRlatch33 S1(pre, clr, W2not, clk, W1, W1not);
	SRlatch33 S2(clk, D, W1not, clr, W2, W2not);
	SRlatch33 S3(pre, clr, W1not, W2, Q, Qnot);
endmodule
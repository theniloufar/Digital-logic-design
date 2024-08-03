 `timescale 1ns/1ns
module ripple4(input [3:0]A , B, input Cin, output [3:0]S, output Cout);
	wire w1, w2, w3;
	fulladder f1(A[0], B[0], Cin, S[0], w1);
	fulladder f2(A[1], B[1], w1, S[1], w2);
	fulladder f3(A[2], B[2], w2, S[2], w3);
	fulladder f4(A[3], B[3], w3, S[3], Cout);
endmodule

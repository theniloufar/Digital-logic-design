`timescale 1ns/1ns
module ripple16(input [15:0] A , B, input Cin, output  [15:0] S, output Cout);
	wire w1, w2, w3;
	ripple4 r1(A[3:0] , B[3:0] , Cin, S[3:0], w1);
	ripple4 r2(A[7:4] , B[7:4] , w1, S[7:4], w2);
	ripple4 r3(A[11:8] , B[11:8] , w2, S[11:8], w3);
	ripple4 r4(A[15:12] , B[15:12] , w3, S[15:12], Cout);
endmodule

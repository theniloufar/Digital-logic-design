 `timescale 1ns/1ns
module MUX(w0, w1, s, f);
	input w0, w1, s;
	output f;
	assign #2 f = s ? w1 : w0;
endmodule

module block(input [3:0]A, B, input Cin, output [3:0]out, output Cout);
	wire [3:0] S1, S2;
	wire Cout1, Cout2;
	ripple4 rip1(A, B, 1'b0, S1, Cout1);
	ripple4 rip2(A, B, 1'b1, S2, Cout2);
	MUX mux1(S1[0], S2[0], Cin, out[0]);
	MUX mux2(S1[1], S2[1], Cin, out[1]);
	MUX mux3(S1[2], S2[2], Cin, out[2]);
	MUX mux4(S1[3], S2[3], Cin, out[3]);
	MUX mux5(Cout1, Cout2, Cin, Cout);
endmodule

module CSA(input [15:0]A, B, input Cin, output [15:0]out ,output Cout);
	wire c1, c2, c3;
	block blcok1(A[3:0], B[3:0], Cin, out[3:0], c1);
	block blcok2(A[7:4], B[7:4], c1, out[7:4], c2);
	block blcok3(A[11:8], B[11:8], c2, out[11:8], c3);
	block blcok4(A[15:12], B[15:12], c3, out[15:12], Cout);
endmodule
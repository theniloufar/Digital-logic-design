 `timescale 1ns/1ns
module SRlatch32(input S, R, a, output Q, Qnot);
	nand #12 N1(Q, S, Qnot,a);
	nand #8 N2(Qnot, R, Q);
endmodule

module SRlatch33(input S, R, a, b, output Q, Qnot);
	nand #12 N1(Q, S, Qnot, a);
	nand #12 N2(Qnot, R, Q, b);
endmodule


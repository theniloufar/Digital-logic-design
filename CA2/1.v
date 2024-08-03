 `timescale 1ns/1ns
module fulladder(input A, B, Cin, output S, Cout);
	wire D, E, F;
	and #2 and1(D, A, B), and2(E, F, Cin);
	or #2 or1(Cout, E, D);
	xor #3 xor1(F, A, B), xor2(S , F, Cin);
endmodule
	

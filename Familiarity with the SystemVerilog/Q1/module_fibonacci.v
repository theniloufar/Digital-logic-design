 `timescale 1ns/1ns
module fibonacci(input d,c,b,a, output f);
	wire w1, w2, w3, w4, w5, w6, w7, w8, w9, w10;

	not #(1) not1(w1, a), not2(w2, b), not3(w3, c), not4(w4, d);
	and #(2) and1(w5, w1, w2), and2(w7, w3, w4), and3(w8,w3, d), and4(w6, w2, w7), and5(w9, w8, b);
	or #(3) or1(w10, w6, w5), or2(f, w9, w10);
endmodule



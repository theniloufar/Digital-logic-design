module comparator_1bit(input in1, in2, gt, eq, output GT, EQ);
	wire w1, w2, w3;
	xnor x(w1, in1, in2);
	and and1(EQ, w1, eq), and2(w2, in1, ~in2), and3(w3, eq, w2);
	or o(GT, w3, gt);
endmodule



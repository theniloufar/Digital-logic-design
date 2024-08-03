 `timescale 1ns/1ns
module MUX(w0, w1, s, f);
	input w0, w1, s;
	output f;
	assign #2 f = s ? w1 : w0;
endmodule

module block2();
endmodule

module block3();
endmodule

module block4();
endmodule

module block5();
endmodule

module variableCSA();
	block2 b1(), b2();
	block3 b3();
	block4 b4();
	block5 b5();
endmodule
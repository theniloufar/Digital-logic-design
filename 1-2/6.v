 `timescale 1ns/1ns
module assign6(input a, b, c, d, e, f, g, output w2, w1, w0);
	wire y1, y0, x1, x0, z1;
	assign_statement oc1(a, b, c, y1, y0);
	assign_statement oc2(d, e, f, x1, x0);
	assign_statement oc3(y0, x0, g, z1, w0);
	assign_statement oc4(y1, x1, z1, w2, w1);
endmodule
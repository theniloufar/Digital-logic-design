 `timescale 1ns/1ns
module oc7to3input(input a, b, c, d, e, f, g, output w2, w1, w0);
	wire y1, y0, x1, x0, z1;
	myTcircuit oc1(a, b, c, y1, y0);
	myTcircuit oc2(d, e, f, x1, x0);
	myTcircuit oc3(y0, x0, g, z1, w0);
	myTcircuit oc4(y1, x1, z1, w2, w1);
endmodule
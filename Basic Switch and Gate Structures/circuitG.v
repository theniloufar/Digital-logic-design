 `timescale 1ns/1ns
module myGcircuit(input a, b, c, output y1, y0);
	wire e, f, g, h, i, j, k, l, m, n, p;
	and #(7,5) A1(e, b, c), A2(g, f, a);
	or #(5,3.5) O1(f, b, c), O2(y1, e, g);
	and #(7,5) A3(h, c, ~b), A4(i, ~c, b), A5(j, c, b), A6(k, ~b, ~c), A7(l, ~a, p), A8(n, a, m);
	or #(5,3.5) O3(p, h, i), O4(m, j, k), O5(y0, l, n);
endmodule
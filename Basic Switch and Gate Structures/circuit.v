 `timescale 1ns/1ns
module myTcircuit (input a, b, c, output y1, y0);
	wire j, k, g, d, l, e, i, m, n, p, o, f, h;
	supply1 vdd;
	supply0 gnd;
	pmos #(5,6,7) T1(j, vdd, ~b), T2(y1, j, ~c), T3(y1, k, ~a), T4(k, vdd, ~c), T5(k, vdd, ~b);
	nmos #(3,4,5) T6(y1, g, ~b), T7(y1, g, ~c), T8(g, gnd, ~a), T9(g, d, ~c), T10(d, gnd, ~b);
	pmos #(5,6,7) T11(l, vdd, ~a), T12(e, l, ~b), T13(y0, e, ~c), T14(y0, i, c), T15(i, l, b), T16(m, vdd, b), T17(p, m, ~c), T18(p, n, c), T19(n, vdd, ~b), T20(y0, p, a);
	nmos #(3,4,5) T21(y0, f, ~a), T22(y0, o, ~c), T23(y0, o, ~b), T24(o, f, b), T25(o, f, c), T26(f, gnd, a), T27(f, h, ~b), T28(f, h, c), T29(h, gnd, ~c), T30(h, gnd, b);
endmodule
 `timescale 1ns/1ns
module testBench7();
	reg aa, bb, cc, dd, ee, ff, gg, hh, ii, jj, kk, ll, mm, nn, oo;
	wire ww0, ww1, ww2, ww3;
	oc15to4input oc_15input(aa, bb, cc, dd, ee, ff, gg, hh, ii, jj, kk, ll, mm, nn, oo, ww3, ww2, ww1, ww0);
	initial begin
		aa = 0; bb = 0; cc = 0; dd = 0; ee = 0; ff = 0; gg = 0; hh = 0; ii = 0; jj = 0; kk = 0; ll = 0; mm = 0; nn = 0; oo = 0;
		#50 aa = 1;
		#50 bb = 1;
		#50 cc = 1;
		#50 dd = 1;
		#50 ee = 1;
		#50 ff = 1;
		#50 gg = 1;
		#50 hh = 1;
		#50 ee = 0;
		#50 ii = 1;
		#50 jj = 1;
		#50 kk = 1;
		#50 ll = 1;
		#50 mm = 1;
		#50 nn = 1;
		#50 jj = 0;
		#50 oo = 1;
		#50 ee = 1;
		#50 jj = 1;
		#50 $stop;
	end
endmodule

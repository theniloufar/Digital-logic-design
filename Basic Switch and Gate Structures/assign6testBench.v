 `timescale 1ns/1ns
module testBench6();
	reg aa, bb, cc, dd, ee, ff, gg;
	wire ww2, ww1, ww0, ww5, ww4, ww3;
	oc7to3input oc5(aa, bb, cc, dd, ee, ff, gg, ww2, ww1, ww0);
	assign6 oc6(aa, bb, cc, dd, ee, ff, gg, ww5, ww4, ww3);
	initial begin
		aa = 0;
		bb = 0;
		cc = 0; 
		dd = 0; 
		ee = 0; 
		ff = 0; 
		gg = 0;
		#50 aa = 1;
		#50 bb = 1;
		#50 aa = 0;
		#50 cc = 1;
		#50 dd = 1;
		#50 ee = 1;
		#50 aa = 1;
		#50 ff = 1;
		#50 ee = 0;
		#50 gg = 1;
		#50 $stop;
	end
endmodule		

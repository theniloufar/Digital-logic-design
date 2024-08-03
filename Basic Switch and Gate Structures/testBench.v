 `timescale 1ns/1ns
module testBench();
	reg aa, bb , cc;
	wire yy1, yy0;
	myTcircuit oc(aa, bb, cc, yy1, yy0);
	initial begin
		aa = 0;
		bb = 0;
		cc = 0;
		#50 aa = 1;
		#50 bb = 1;
		#50 cc = 1;
		#50 aa = 0;
		#50 bb = 0;
		#50 cc = 0;
		#50 $stop;
	end
endmodule
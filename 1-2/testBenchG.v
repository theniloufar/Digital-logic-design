 `timescale 1ns/1ns
module testBenchG();
	reg aa, bb, cc;
	wire yy0, yy1;
	myGcircuit oc(aa, bb, cc, yy1, yy0);
	initial begin
		#50 aa = 1;
		#50 bb = 1;
		#50 cc = 1;
		#50 aa = 0;
		#50 cc = 0;
		#50 bb = 0;
		#50 aa = 1;
		#50 cc = 1;
		#50 $stop;
	end
endmodule

 `timescale 1ns/1ns
module testBenchCompare();
	reg aa, bb, cc;
	wire yy1, yy2, yy3, yy0, yy4, yy5;
	myTcircuit oc1(aa, bb, cc, yy0, yy1);
	myGcircuit oc2(aa, bb, cc, yy2, yy3);
	assign_statement oc3(aa, bb, cc, yy4, yy5);
	initial begin
		aa = 1;
		bb = 1;
		cc = 1;
		#50 aa = 0;
		#50 bb = 0;
		#50 cc = 0;
		#50 bb = 1;
		#50 cc = 1;
		#50 bb = 0;
		#50 $stop;
	end
endmodule
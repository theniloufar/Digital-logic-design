 `timescale 1ns/1ns
module fibonacciTB();
	reg a, b, c, d;
	wire f;

	fibonacci UT(a,b,c,d,f);
	initial begin
		a = 0;
		b = 0;
		c = 0;
		d = 0;
 		#50 d = 1;
 		#50 c = 1;
 		#50 d = 0;
 		#50 b = 1;
 		#50 a = 1;
 		#50 a = 0;
 		#50 d = 1;
 		#50 b = 0;
 		#50 c = 0;
 		#50 d = 0;
 		#50 a = 1;
 		#50 d = 1;
		#50 $stop;
	end
endmodule

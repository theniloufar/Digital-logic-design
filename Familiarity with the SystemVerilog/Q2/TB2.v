 `timescale 1ns/1ns
module TB2();
	reg a, b, c, d;
	wire f1, f2;
	
	fibonacci structural(a,b,c,d,f1);
	fibonacci_behavioral behavioral(a,b,c,d,f2);
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

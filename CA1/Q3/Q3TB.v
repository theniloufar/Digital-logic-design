 `timescale 1ns/1ns
module TB3();
	reg a1, b1, c1, d1, a2, b2, c2, d2, a3, b3, c3, d3;
	wire f;

	fibonacci3 UT(a1, b1, c1, d1, a2, b2, c2, d2, a3, b3, c3, d3, f);
	initial begin
		{a1, b1, c1, d1} = 4'b0000;
		{a2, b2, c2, d2} = 4'b0000;
		{a3, b3, c3, d3} = 4'b0000;
 		#50 {a1, b1, c1, d1} = 4'b1011; {a2, b2, c2, d2} = 4'b0000; {a3, b3, c3, d3} = 4'b0001 ;
 		#50 {a1, b1, c1, d1} = 4'b1010; {a2, b2, c2, d2} = 4'b0010; {a3, b3, c3, d3} = 4'b0000 ;
 		#50 {a1, b1, c1, d1} = 4'b0110; {a2, b2, c2, d2} = 4'b0110; {a3, b3, c3, d3} = 4'b0110 ;
 		#50 {a1, b1, c1, d1} = 4'b1111; {a2, b2, c2, d2} = 4'b0101; {a3, b3, c3, d3} = 4'b0001 ;
		#50 {a1, b1, c1, d1} = 4'b1011; {a2, b2, c2, d2} = 4'b1110; {a3, b3, c3, d3} = 4'b1000 ;
		#50 $stop;
	end
endmodule
	

 `timescale 1ns/1ns
module fibonacci_behavioral(input a, b, c, d, output f);
	assign w9 = ((~c & d) & b);
	assign w10 = ((~a & ~b) | ((~c & ~d) & ~b)); 
	assign #(11) f = (w10 | w9);
endmodule

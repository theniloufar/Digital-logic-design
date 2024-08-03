 `timescale 1ns/1ns
module TB1();
	reg A = 0, B = 0, Cin = 0;
	wire S, Cout;
	fulladder f1(A, B, Cin, S, Cout);
	initial begin
	#50 A = 1;
	#50 B = 1;
	#50 A = 0;
	#50 Cin = 1;
	#50 B = 0;
	#50 A = 1;
	#50 B = 1;
	end
endmodule

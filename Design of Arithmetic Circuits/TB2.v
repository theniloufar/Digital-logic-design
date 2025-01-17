 `timescale 1ns/1ns
module TB2();
	reg [3:0] A = 0, B =0;
	reg Cin = 0;
	wire [3:0]S;
	wire Cout;

	ripple4 rip4(A, B, Cin, S, Cout);
	initial begin
	#50 A = 4'b0101;
	#50 B = 4'b1001;
	#50 Cin = 1;
	#50 A = 4'b1111;
	#50 B = 4'b1011;
	#50 Cin = 0;
	#50 A = 4'b1011;
	#50 B = 4'b0001;
	end
endmodule

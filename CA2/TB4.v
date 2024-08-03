 `timescale 1ns/1ns
module TB4();
	reg [15:0] A = 0, B =0;
	reg Cin = 0;
	wire [15:0]S1, S2;
	wire rippleout, CSAout;

	ripple16 rip16(A, B, Cin, S1, rippleout);
	CSA csa(A, B, Cin, S2, CSAout);
	initial begin
	#50 A = 16'b0101000010111001;
	#50 B = 16'b1001000111100101;
	#50 Cin = 1;
	#50 A = 16'b1111000001001110;
	#50 B = 16'b1011110010101001;
	#50 Cin = 0;
	#50 A = 16'b1010010001110111;
	#50 B = 16'b0001110101100101;
	#50 A = 16'b1111000001001110;
	#50 B = 16'b1011110010101001;
	#50 Cin = 1;
	#50 A = 16'b1010010001010111;
	#50 B = 16'b0111010110100101;
	end
endmodule

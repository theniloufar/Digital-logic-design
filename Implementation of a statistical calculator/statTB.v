 `timescale 1ns/1ns
module tbstat();
	reg [3:0] A, B, C, D;
	reg  OP0, OP1, OP2, OP3;
    	wire [7:0] out;	
    	stat_calculator ut(OP0, OP1, OP2, OP3, A, B, C, D, MAX, MIN, MEAN, VAR, out);

    	initial begin
		A = 4'b1000; B = 4'b0101; C = 4'b0011; D = 4'b0110; OP0 = 1; OP1 = 0; OP2 = 0; OP3 = 0;
		#100;
		A = 4'b1010; B = 4'b0001; C = 4'b0011; D = 4'b0110; OP0 = 0; OP1 = 1; OP2 = 0; OP3 = 0;
		#100;
		A = 4'b1000; B = 4'b1100; C = 4'b0111; D = 4'b0110; OP0 = 0; OP1 = 0; OP2 = 1; OP3 = 0;
		#100;
		A = 4'b1000; B = 4'b0111; C = 4'b0010; D = 4'b0100; OP0 = 0; OP1 = 0; OP2 = 0; OP3 = 1;
		#100;

		A = 4'b1000; B = 4'b1001; C = 4'b0010; D = 4'b0100; OP0 = 1; OP1 = 1; OP2 = 0; OP3 = 0;
		#100;
		A = 4'b1000; B = 4'b0111; C = 4'b0010; D = 4'b0100; OP0 = 0; OP1 = 1; OP2 = 0; OP3 = 1;
		#100;
		A = 4'b1000; B = 4'b0111; C = 4'b0010; D = 4'b0100; OP0 = 0; OP1 = 0; OP2 = 1; OP3 = 1;
		#100;
    	end

endmodule

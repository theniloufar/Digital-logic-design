 `timescale 1ns/1ns
module tbmax;
    reg [3:0] A, B, C, D;
    wire [7:0] max;
    max_block ut(A, B, C, D, max);

    initial begin
	A = 4'b1000;  B = 4'b0101;  C = 4'b0011; D = 4'b0110;    //A > B, C < D
	#100;
	A = 4'b0010;  B = 4'b1001;  C = 4'b0111; D = 4'b1100;   //A < B, C > D
	#100;
	A = 4'b0110;  B = 4'b0110;  C = 4'b0100; D = 4'b0100;    //A = B, C = D
	#100;
    end
endmodule

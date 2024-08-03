module mean_calculator(input [3:0]A, B, C, D, output [7:0]mean);
	wire [7:0] sum1, sum2, sum;
	assign sum1 = A + B;
	assign sum2 = C + D;
	assign sum = sum1 + sum2;
	assign mean = (sum >> 2);
endmodule

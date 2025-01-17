module var_calculator(input [3:0] A, B, C, D, output [7:0] var);
	reg [31:0] squared_sum;
	wire mean;
	mean_calculator varmin(A, B, C, D, mean);
	
	always @(A or B or C or D) begin
        squared_sum = (A - mean) ** 2 + (B - mean) ** 2 + (C - mean) ** 2 + (D - mean) ** 2;
        end

	assign var = squared_sum >> 3;
endmodule

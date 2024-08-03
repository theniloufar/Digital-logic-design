module Register(clk, rst, ld, in, out);
	input clk, rst, ld;
	input [31:0] in;
	output reg [31:0] out;
	always @(posedge clk) begin
		if (rst) out <= 32'b0;
		else if (ld) out <= in;
		else out <= out;
	end
endmodule

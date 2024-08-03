module divider(input clk, rst, enable, input[7:0] in, output reg[7:0] out, output reg zOz);
	always@(posedge clk)begin
		if(enable)begin
			out <= in / 5'b10000;
			zOz <= 1;
		end
	end
endmodule
module counter(input clk, rst, enable,output co, output reg [4:0] out);
	always@(posedge clk, posedge rst)
		if(rst)
			out <= 5'b0;
		else if(enable)
			out <= out + 1;
	assign co = &out;
endmodule

module shiftreg_r(input en, shen, reset, clk, data, output reg [7:0]out1);

	always@(posedge clk, posedge reset)
	begin
		if(reset & en)
			out1 <= 0;
		else if(en & shen)
			out1 <= {data , out1[7:1]};
	end
endmodule
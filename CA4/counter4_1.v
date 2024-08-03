module counter4_1(input en, reset, clk, load, input[3:0]m, output reg co1);
	reg [3:0]num;

	always@(posedge clk, posedge reset)
	begin
		if(reset & en)
			num <= 0;
		else if(load & en)
			num <= m;
		else if(en)
			num <= num + 1;
	end

	assign co1 = &num;

endmodule
	
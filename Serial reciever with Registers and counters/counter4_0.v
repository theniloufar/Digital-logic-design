module counter4_0(input en, reset, clk, output reg co0);
	reg [3:0]num;

	always@(posedge clk, posedge reset)
	begin
		if(reset & en)
			num <= 0;
		else if(en)
			num <= num + 1;
	end

	assign co0 = &num;

endmodule

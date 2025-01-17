module shiftreg_l(input en, shen, reset, clk, data, output reg [7:0]out0);

	always@(posedge clk, posedge reset)
	begin
		if(reset & en)
			out0 <= 0;
		else if(en & shen)
			out0 <= {out0[6:0] , data};
	end
endmodule
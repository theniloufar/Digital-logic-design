module counter3(input en, reset, clk, shen, output reg word_ready);
	reg [3:0]num;

	always@(posedge clk, posedge reset)
	begin
		if(reset & en)
			num <= 0;
		else if(en & shen)
			num <= num + 1;
	end

	assign word_ready = 1 ? (num == 4'd8) : 0;

endmodule
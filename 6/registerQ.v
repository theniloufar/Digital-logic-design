module registerQ(input [15:0] regin, input clk, rst, init, load ,output reg[15:0] regout);
	always@(posedge clk, posedge rst)begin
		if(rst)
			regout <= 16'b0;
		else
			if(init)
				regout <= 16'b0000000100000000;
			else
				regout <= load ? regin : regout;
	end
endmodule
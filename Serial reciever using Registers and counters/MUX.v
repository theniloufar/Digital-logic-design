module MUX1(input w0, w1, s, output f);
	
	assign f = s ? w1 : w0;

endmodule
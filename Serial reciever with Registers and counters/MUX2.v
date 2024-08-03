module MUX2(input[7:0] w0, w1, input s, output[7:0] f);
	
	assign f = s ? w1 : w0;

endmodule

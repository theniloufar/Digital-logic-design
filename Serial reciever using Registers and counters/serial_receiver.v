module serial_receiver(input en, reset, clk, data, input[1:0]F, input[3:0]m, output word_ready, output[7:0]word);
	wire co0,co1,shen;
	wire [7:0] out0,out1;

	counter4_0 counter0(en, reset, clk, co0);
	counter4_1 counter1(en, reset, clk, co1, m, co1);
	shiftreg_l shiftleft(en, shen, reset, clk, data, out0);
	shiftreg_r shiftright(en, shen, reset, clk, data, out1);
	MUX1 mux1(co0, co1, F[1], shen);
	MUX2 mux2(out0, out1, F[0], word);
	counter3 counter3(en, reset, clk, shen, word_ready);

endmodule


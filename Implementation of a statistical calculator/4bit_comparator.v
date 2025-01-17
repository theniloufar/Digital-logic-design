module comparator(input[3:0] in1, in2, output G, EQ, L);
	wire GT3, EQ3, GT2, EQ2, GT1, EQ1, GT0, EQ0;
	comparator_1bit c1(in1[3], in2[3], 1'b0, 1'b1, GT3, EQ3);	
	comparator_1bit c2(in1[2], in2[2], GT3, EQ3, GT2, EQ2);
	comparator_1bit c3(in1[1], in2[1], GT2, EQ2, GT1, EQ1);
	comparator_1bit c4(in1[0], in2[0], GT1, EQ1, GT0, EQ0);
	
	assign G = GT0;
	assign EQ = EQ0;
	assign L = (~EQ & ~G);
endmodule

	
		
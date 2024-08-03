module stat_calculator(input OP0, OP1, OP2, OP3, [3:0]A, B, C, D, output MAX, MIN, MEAN, VAR, output [7:0]OUT);
	wire [7:0] out0,out1,out2,out3, max, min, mean, var;

	max_block st0(A, B, C, D, max);
	min_block st1(A, B, C, D, min);
	mean_calculator st2(A, B, C, D, mean);
	var_calculator st3(A, B, C, D, var);

	assign MAX = OP0;
	assign MIN = OP1 & ~OP0;
	assign MEAN = OP2 & ~OP1 & ~OP0;
	assign VAR = OP3 & ~OP2 & ~OP1 & ~OP0;

	assign out0 ={MAX,MAX,MAX,MAX,MAX,MAX,MAX,MAX} & max;
	assign out1 ={MIN,MIN,MIN,MIN,MIN,MIN,MIN,MIN} & min;
	assign out2 ={MEAN,MEAN,MEAN,MEAN,MEAN,MEAN,MEAN} & mean;
	assign out3 ={VAR,VAR,VAR,VAR,VAR,VAR,VAR,VAR} & var;

	assign OUT = (out0 | out1 | out2 | out3);
endmodule
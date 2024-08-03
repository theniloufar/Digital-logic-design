 `timescale 1ns/1ns
module TBmajority();
	reg [3:0]inp1, [3:0]inp2, [3:0]inp3, [3:0]inp4, [3:0]inp5, [3:0]inp6, [3:0]inp7, [3:0]inp8 ,[3:0]inp9, [3:0]inp10, [3:0]inp11, [3:0]inp12, [3:0]inp13;
	wire f;

	detector UT([3:0]inp1, [3:0]inp2, [3:0]inp3, [3:0]inp4, [3:0]inp5, [3:0]inp6, [3:0]inp7, [3:0]inp8 ,[3:0]inp9, [3:0]inp10, [3:0]inp11, [3:0]inp12, [3:0]inp13, f);
	initial begin
		inp1 = 4'b0000;
		inp2 = 4'b0000;
		inp3 = 4'b0000;
		inp4 = 4'b0000;
		inp5 = 4'b0000;
		inp6 = 4'b0000;
		inp7 = 4'b0000;
		inp8 = 4'b0000;
		inp9 = 4'b0000;
		inp10 = 4'b0000;
		inp11 = 4'b0000;
		inp12 = 4'b0000;
		inp13 = 4'b0000;
 		#50 ?
		#50 $stop;
	end
endmodule
	
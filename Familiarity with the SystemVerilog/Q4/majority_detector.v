 `timescale 1ns/1ns
module detector(input [3:0]inp1, [3:0]inp2, [3:0]inp3, [3:0]inp4, [3:0]inp5, [3:0]inp6, [3:0]inp7, [3:0]inp8 ,[3:0]inp9, [3:0]inp10, [3:0]inp11, [3:0]inp12, [3:0]inp13, output f);
	fibonacci3 first3(inp1[0],inp1[1],inp1[2],inp1[3] ,inp2[0],inp2[1],inp2[2],inp2[3] ,inp3[0],inp3[1],inp3[2],inp3[3], f1); 
	fibonacci3 second3(inp4[0],inp4[1],inp4[2],inp4[3], inp5[0],inp5[1],inp5[2],inp5[3], inp6[0],inp6[1],inp6[2],inp6[3], f2);
	fibonacci3 third3(inp7[0],inp7[1],inp7[2],inp7[3], inp8[0],inp8[1],inp8[2],inp8[3], inp9[0],inp9[1],inp9[2],inp9[3], f3);
	fibonacci3 fourth3(inp10[0],inp10[1],inp10[2],inp10[3], inp11[0],inp11[1],inp11[2],inp11[3], inp12[0],inp12[1],inp12[2],inp12[3], f4);
	fibonacci first1(inp13[0],inp13[1],inp13[2],inp13[3], f5);

	assign f = ?
endmodule

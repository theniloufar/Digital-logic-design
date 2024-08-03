 `timescale 1ns/1ns
module TB1();
	reg SS, RR;
	wire Q1, Q1not;
	SRlatch32 latch(SS, RR, 1, Q1, Q1not);
	initial begin
		#200 SS =1; RR=0;
		#200 SS =0; RR=1;
		#200 SS =1; RR=1;
		#200 SS =0; RR=0;
		#200 SS =1; RR=0;
		#200 SS =0; RR=1;
		#200 SS =0; RR=0;
		#200 $stop;
	end
endmodule
	

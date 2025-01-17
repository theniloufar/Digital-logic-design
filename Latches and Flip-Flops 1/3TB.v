 `timescale 1ns/1ns
module TB3();
	reg DD, clk=0, clr=1, pre=1;
	wire QQ, QQnot;
	DFFC ddfc(DD, clk, clr, pre, QQ, QQnot);
	always #100 clk <= ~clk;
	initial begin
		#10 DD = 1;
		#100 DD = 0;
		#200 clr = 0;
		#100 DD = 1;
		#100 DD = 0;
		#200 clr = 1;
		#100 DD = 1;
		#100 DD = 0;
		#200 pre = 0;
		#100 DD = 1;
		#100 DD = 0;
		#200 clr = 0;
		#100 DD = 1;
		#200 pre = 1;clr = 1;
		#100 DD = 0;
		#100 $stop;
	end
endmodule


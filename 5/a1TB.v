 `timescale 1ns/1ns
module aTB();
	wire ww, www;
	reg clk = 1'b0, rst = 1'b0, ii = 1'b0;
	detector detector1(clk, rst, ii, ww);
	aQ detector2(clk, rst, ii, www);
	always #100 clk <= ~clk;
	initial begin
		#150 ii = 0;
		#180 ii = 1;
		#1000 ii = 0;
		#300 ii = 1;
		#150 $stop;
	end
endmodule

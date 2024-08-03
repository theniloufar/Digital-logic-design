 `timescale 1ns/1ns
module TB2();
	reg DD = 1'b0, clk = 1'b0;
	wire Q1, Q1not;
	DFF dff(DD, clk, Q1, Q1not);
	always #70 clk <= ~clk;
	initial begin
		#150 DD = 1;
		#150 DD = 0;
		#150 DD = 1;
		#150 DD = 0;
		#150 DD = 1;
		#150 DD = 0;
		#150 $stop;
	end
endmodule

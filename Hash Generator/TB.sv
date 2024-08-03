module TB();

	reg clk = 0, rst = 0, start = 0;
	wire dataOutValid;
	wire [31:0] hashResult;

	Top DUT (.clk(clk), .rst(rst), .start(start), .hashResult(hashResult), .dataOutValid(dataOutValid));
	
	always #5 clk = ~clk;
	initial begin
		rst = 1;
		#15
		rst = 0;
		start = 1;
		#15
		start = 0;
		#2000
		$stop;
	end
endmodule

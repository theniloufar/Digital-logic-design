 `timescale 1ns/1ns
module TB();
	wire [7:0] word;
	wire word_ready;
	reg en=1, reset=0, clk=0, data;
	reg [1:0]F;
	reg [3:0]m;
	serial_receiver ut(en, reset, clk, data, F, m, word_ready, word);

	always #5 clk = ~clk;
	initial begin
		#11 reset = 1;
		#11 reset = 0;
		#11 F = 00;

		data = 0;
		#161 data = 1;
		#161 data = 0;
		#161 data = 1;
		#161 data = 0;
		#161 data = 1;
		#161 data = 0;
		#161 data = 1;
		#161 data = 0;
		#161 data = 1;
		#161 data = 0;
		#161 data = 1;

		#11 reset = 1;
		#11 reset = 0;
		#11 F = 01;

		data = 0;
		#161 data = 1;
		#161 data = 0;
		#161 data = 1;
		#161 data = 0;
		#161 data = 1;
		#161 data = 0;
		#161 data = 1;
		#161 data = 0;
		#161 data = 1;
		#161 data = 0;
		#161 data = 1;
		#200 $stop;
	end
endmodule
		
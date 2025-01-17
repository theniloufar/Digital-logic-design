 `timescale 1ns/1ns
module TB2();
	wire [7:0] word;
	wire word_ready;
	reg en=1, reset=0, clk=0, data;
	reg [1:0]F;
	reg [3:0]m = 1001;
	serial_receiver ut(en, reset, clk, data, F, m, word_ready, word);

	always #5 clk = ~clk;
	initial begin

		#11 reset = 1;
		#11 reset = 0;
		F = 10;
		data = 1;
		#200 data = 1;
		#230 data = 0;
		#245 data = 1;
		#250 data = 0;
		#251 data = 1;
		#230 data = 0;
		#245 data = 1;
		#261 data = 0;
		#240 data = 1;

		#11 reset = 1;
		#11 reset = 0;
		F = 11;
		data = 1;
		#200 data = 1;
		#230 data = 0;
		#245 data = 1;
		#250 data = 0;
		#251 data = 1;
		#230 data = 0;
		#245 data = 1;
		#261 data = 0;
		#240 data = 1;
#200 $stop;
	end
endmodule
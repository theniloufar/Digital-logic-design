module ROM(input [3:0] address, output [15:0] data);
	reg [15:0] temp;
	always @(address) begin
		case(address)
			0: temp = 16'b0000000100000000;
			1: temp = 16'b0000000010000000;
			2: temp = 16'b0000000001010101;
			3: temp = 16'b0000000001000000;
			4: temp = 16'b0000000000110011;
			5: temp = 16'b0000000000101010;
			6: temp = 16'b0000000000100100;
			7: temp = 16'b0000000000100000;
			8: temp = 16'b0000000000011100;
			9: temp = 16'b0000000000011001;
			10: temp = 16'b0000000000010111;
			11: temp = 16'b0000000000010101;
		endcase
	end
assign data = temp;
endmodule

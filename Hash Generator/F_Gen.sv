module F_Gen(A, B, C, D, Fsel, out);
	input [31:0] A, B, C, D;
	input [1:0] Fsel;
	output reg [31:0] out;
	always @(A, B, C, D, Fsel) begin
	out = 32'b0;
	case (Fsel)
	2'b00: out = (B & C) | ((~B) & D);
	2'b01: out = (D & B) | ((~D) & C);
	2'b10: out = B ^ C ^ D;
	2'b11: out = C ^ (B | (~D));
	endcase
	end
endmodule

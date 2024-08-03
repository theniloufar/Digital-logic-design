 `timescale 1ns/1ns
module aQ(input clk, rst, i, output w);
	reg [2:0] ns, ps;
	parameter [2:0] A = 3'd0, B = 3'd1, C = 3'd2, D = 3'd3, E = 3'd4, F = 3'd5, G = 3'd6, H = 3'd7;
	always@(ps, i) begin
		ns = 3'b000;
		case(ps)
			A: ns = i ? A : B;
			B: ns = i ? C : B;
			C: ns = i ? D : B;
			D: ns = i ? E : B;
			E: ns = i ? F : B;
			F: ns = i ? G : B;
			G: ns = i ? A : H;
			H: ns = i ? C : B;
			default: ns = A;
		endcase
	end
	assign w = (ps == H) ? 1'b1 : 1'b0;
	always@(posedge clk, posedge rst) begin
		if(rst)
			ps <= 3'b000;
		else
			ps <= ns;
	end
endmodule
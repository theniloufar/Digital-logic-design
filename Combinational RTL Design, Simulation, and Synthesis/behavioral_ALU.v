 `timescale 1ns/1ns
module behavioral_ALU(input signed [15 : 0] inpA, inpB, input inpC, input[2 : 0] opc, output reg[15 : 0] outW, output zero, neg);
	always @(inpA, inpB, inpC, opc) begin
		outW = 16'b0;
		case(opc)
			3'd0 : outW = ~inpA + 1'b1;
			3'd1 : outW = inpA + 1'b1;
			3'd2 : outW = inpA + inpB + inpC;
			3'd3 : outW = inpA + (inpB>>>1);
			3'd4 : outW = inpA & inpB;
			3'd5 : outW = inpA | inpB;
			3'd6 : outW = {inpA[7:0],inpB[7:0]};
			default : outW = 16'b0;
		endcase
	end
	assign zero = ~|outW;
	assign neg = outW[15];
endmodule


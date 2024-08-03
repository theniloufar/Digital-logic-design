 `timescale 1ns/1ns
module behavioral_structural_tb();
	reg [15 : 0] aa, bb;
	reg cc;
	reg [2:0] opc;
	wire[15:0] ww, wws;
	wire zz, zzs, nn, nns;
	behavioral_ALU my_ALU_b(aa, bb, cc, opc, ww, zz, nn);
	structural_ALU my_ALU_s(aa, bb, cc, opc, wws, zzs, nns);
	initial begin
		#100 aa = 16'd0; bb = 16'd0; cc = 1'd0; opc = 3'd0;
		repeat (7) begin
			#200 opc = opc + 1'b1;
			repeat (10) #100 {aa, bb, cc} = $random;
		end
		#100 $stop;
	end
endmodule

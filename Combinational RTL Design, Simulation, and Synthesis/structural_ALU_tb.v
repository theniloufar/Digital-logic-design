 `timescale 1ns/1ns
module structural_ALU_tb();
	reg [15 : 0] aa, bb;
	reg cc;
	reg [2:0] opc;
	wire[15:0] ww, wws;
	wire zz, zzs, nn, nns;
	structural_ALU my_ALU(aa, bb, cc, opc, ww, zz, nn);
	structural_ALU_synth my_ALU_synth(aa, bb, cc, opc, wws, zzs, nns);
	initial begin
		#100 aa = 16'd0; bb = 16'd0; cc = 1'd0; opc = 3'd0;
		repeat (7) begin
			#200 opc = opc + 1'b1;
			repeat (10) #100 {aa, bb, cc} = $random;
		end
		#100 $stop;
	end
endmodule

 `timescale 1ns/1ns
module fibonacci3(input a1, b1, c1, d1, a2, b2, c2, d2, a3, b3, c3, d3, output f);

	fibonacci first(a1, b1, c1, d1, f1);
	fibonacci second(a2, b2, c2, d2, f2);
	fibonacci third(a3, b3, c3, d3, f3);

	assign f = ({f1,f2,f3} == 3'b111) ? 1 :
		({f1,f2,f3} == 3'b011) ? 1 :
		({f1,f2,f3} == 3'b101) ? 1 :
		({f1,f2,f3} == 3'b110) ? 1 : 0;
endmodule


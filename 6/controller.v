module controller(input start, clk, rst, en, output reg ready, loadx, select , enc, counter_init, t_init, loadt, loadr, r_init, ci_adder);
	reg [3:0] ps,ns;
	parameter [3:0] idle = 0, init = 1, load = 2,mult1 = 3, mult2 = 4, mult3 = 5, mult4 = 6, compare = 7, sub_add = 8;
	always@(ps, start, en) begin
		ns = idle;
		{loadx, t_init, loadt, r_init, loadr, counter_init, enc, select, ready} =9'b0;
		case(ps)
			idle: begin ns = start ? init: idle; ready = 1; end
			init: begin ns = start ? init: load; t_init = 1; r_init = 1;  counter_init = 1; enc = 0; ci_adder = 1; ready = 0;end
			load: begin ns = mult1; loadx = 1; end
			mult1: begin ns = mult2; loadt = 1; select = 0; ci_adder = ~ci_adder; end
			mult2: begin ns = mult3; loadt = 1; select = 0; end
			mult3: begin ns = mult4; loadt = 1;enc = 1; select = 1; end
			mult4: begin ns = compare; loadt = 1;enc = 1; select = 1; end
			compare: begin ns = en ? sub_add :idle; enc = 0; loadt =0; end
			sub_add : begin ns = mult1; loadr = 1; end
			default: ns = idle;
		endcase
	end
	always@(posedge clk, posedge rst)begin
		if(rst)
			ps <= idle;
		else
			ps <= ns;
	end
endmodule

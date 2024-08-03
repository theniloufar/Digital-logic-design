`define Idle 4'b0000  //state
`define Start 4'b0001  //state
`define Init 4'b0010  //state
`define R1 4'b0011  //state
`define R1_ 4'b0100  //state
`define R2 4'b0101  //state
`define R2_ 4'b0110  //state
`define R3 4'b0111  //state
`define R3_ 4'b1000  //state
`define R4 4'b1001  //state
`define R4_ 4'b1010  //state
`define H1 4'b1011  //state
`define H2 4'b1100  //state
`define H3 4'b1101  //state
`define H4 4'b1110  //state

module CU (clk, rst, start, dataOutValid, ld_a, ld_b, ld_c, ld_d, sel_a, sel_b, sel_c, sel_d, wr, Fsel, Rsel, j, i);
  input clk, rst, start;
  
  output reg dataOutValid, ld_a, ld_b, ld_c, ld_d, sel_a, sel_b, sel_c, sel_d, wr;
  output reg [1:0] Fsel, Rsel;
  output reg [5:0] j;
  output reg [3:0] i;
  reg [3:0] ns, ps;
  reg up;
  
  always @(posedge clk) begin
    if (rst)
	i <= 0;
    else if (up)
	i <= i + 1;
    else
	i <= i;
  end
  
    always @(posedge clk) begin
    if (rst)
	j <= 0;
    else if (up)
	j <= j + 1;
    else
	j <= j;
  end
  
  always @(posedge clk) begin
    if (rst)
	ps <= `Idle;
    else
	ps <= ns;
  end
  
    always @(ps, start, i) begin
    case (ps)
	`Idle: ns <= start ? `Start : `Idle;
	`Start: ns <= start ? `Start : `Init;
	`Init: ns <= `R1;
	`R1: ns <= `R1_;
	`R1_: ns <= i==4'b1111 ? `R2 : `R1;
	`R2: ns <= `R2_;
	`R2_: ns <= i==4'b1111 ? `R3 : `R2;
	`R3: ns <= `R3_;
	`R3_: ns <= i==4'b1111 ? `R4 : `R3;
	`R4: ns <= `R4_;
	`R4_: ns <= i==4'b1111 ? `H1 : `R4;
	`H1: ns <= `H2;
	`H2: ns <= `H3;
	`H3: ns <= `H4; 
	`H4: ns <= `Idle;
	default: ns <= `Idle;
    endcase
  end
  
  always @(ps) begin
    wr <= 1'b1;
    {ld_a, ld_b, ld_c, ld_d, sel_a, sel_b, sel_c, sel_d, up, dataOutValid, Fsel, Rsel} <= 14'b0;
    case (ps)
	`Init: {ld_a, ld_b, ld_c, ld_d, sel_a, sel_b, sel_c, sel_d} <= 8'b11111111;
	`R1: begin Fsel <= 2'b00; wr <= 1'b0; end
	`R1_: {ld_a, ld_b, ld_c, ld_d, up} <= 5'b11111;
	`R2: begin Fsel <= 2'b01; wr <= 1'b0; end
	`R2_: {ld_a, ld_b, ld_c, ld_d, up} <= 5'b11111;
	`R3: begin Fsel <= 2'b10; wr <= 1'b0; end
	`R3_: {ld_a, ld_b, ld_c, ld_d, up} <= 5'b11111;
	`R4: begin Fsel <= 2'b11; wr <= 1'b0; end
	`R4_: {ld_a, ld_b, ld_c, ld_d, up} <= 5'b11111;
	`H1: begin Rsel <= 2'b00; dataOutValid <= 1; end
	`H2: begin Rsel <= 2'b01; dataOutValid <= 1; end
	`H3: begin Rsel <= 2'b10; dataOutValid <= 1; end
	`H4: begin Rsel <= 2'b11; dataOutValid <= 1; end
    endcase
  end
endmodule

`timescale 1ns/1ns
module CosTB();
    reg start = 0, clk = 0, rst = 0;
    reg [15:0] x = 16'b0000000100001011;
    reg [15:0] y = 16'b0;
    wire [15:0] w;
    wire Ready;
    final CUT(Ready, start, clk, rst, x, y, w);
    always #100 clk = ~clk;
    initial begin
        #10 y = 16'b0000000001100110;
        #240 start = 1;
        #200 start = 0;
        #4000 y = 16'b0000000000001010;
        #240 start = 1;
        #200 start = 0;
        #6000 rst = 1;
        #200 rst = 0;
        #2000 $stop;
    end
endmodule
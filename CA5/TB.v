`timescale 1ns/1ns
module TB();
    reg clk = 0 , rst = 1 , start = 0;
    wire done , ready ;
    reg [7:0] dataIn = 1;
    wire [7:0] mean;
    all allUUT(.clk(clk) , .rst(rst) , .start(start) ,.dataIn(dataIn) ,  .mean(mean) , .done(done) , .ready(ready) );
    always  begin
        #1000 clk = ~clk;
    end
    initial begin
        #10000 rst = 0;
        #1000 dataIn = 25;
        #1000 start = 1 ; 
        #1000 start = 0;
        #1000000 $stop;
    end
endmodule
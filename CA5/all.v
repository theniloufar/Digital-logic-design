module all (
    input clk , rst , start ,input [7:0] dataIn ,  output [7:0] mean , output done , ready 
);
    wire enReg , clear , lds , endiv , zO , zOz,co,encnt;
    DP DPUUT( .clk(clk) , .rst(rst),.enReg(enReg) , .cnten(encnt) , .clear(clear) ,  .endiv(endiv) ,.dataIn(dataIn) , .co(co),  .mean(mean) , .zOz(zOz) );
    controller controllerUUT(.clk(clk) , .rst(rst) , .start(start) , .co(co) , .zOz(zOz) ,.done(done) , .ready(ready) , .clear(clear) , .enReg(enReg) , .lds(lds) , .endiv(endiv),.encnt(encnt) );
endmodule
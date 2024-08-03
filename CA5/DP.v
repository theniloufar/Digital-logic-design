module DP ( input clk , rst , enReg , cnten, clear, endiv ,input[7:0] dataIn ,output co, output [7:0] mean, output zOz);
    wire [7:0] resAdd , AddIn;
    wire [7:0] ROMOUT, cntout;

    Register RegisterUUT ( .clk(clk)  , .rst(rst), .enable(enReg) ,.clear(clear), .dataIn(resAdd) , .dataOut(AddIn) );
    ROM ROMUUT ( .addres(cntout) , .outRom(ROMOUT) );
    adder adderUUT(.A(AddIn), .B(ROMOUT), .w(resAdd));
    divider dividerUUT(.clk(clk) , .rst(rst) , .enable(endiv) , .in(resAdd) , .out(mean), .zOz(zOz));
    counter cnt(clk, rst, cnten, co, cntout);
endmodule
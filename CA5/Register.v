module  Register #(parameter SIZE = 8) ( input clk  , input rst, input enable,  input clear, input [SIZE-1:0] dataIn , output reg [SIZE-1:0] dataOut );
    always @(posedge clk , posedge rst) begin
        if (rst | clear)
            dataOut <= {SIZE{1'b0}}; 
        else if (enable)
            dataOut <= dataIn;
    end
endmodule

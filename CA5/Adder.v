`timescale 1ns/1ns
module adder #(parameter SIZE = 8)(input[SIZE-1:0]A, input[SIZE-1:0]B, output [SIZE-1:0] w);

    assign w = A + B;

endmodule
module  ROM #(parameter SIZE = 8 , ADDRESSSIZE = 5) ( input [ADDRESSSIZE-1:0] addres , output [7:0] outRom );
    reg [7:0] registers [31:0];
    initial registers[0] = {SIZE{1'b0}};
    assign outRom = registers[addres];
    initial begin
      $readmemb("data.mem" , registers); 
    end
endmodule

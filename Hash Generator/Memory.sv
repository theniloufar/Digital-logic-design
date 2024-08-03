module mem (addr, in, rw, clk, out);
  input [3:0] addr;
  input [31:0] in;
  input rw, clk;
  output reg [31:0] out;

  reg [31:0] mem[0:100];
  
  initial begin
  $readmemb("Data.txt", mem, 0, 512);

  end
  
    
  always @(posedge clk)
    out <= (rw==1'b0) ? mem[addr] : 32'd0;
  
endmodule   


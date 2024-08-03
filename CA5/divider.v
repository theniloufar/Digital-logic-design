 module divider (
    input clk , rst , lds , endiv , input [4:0] dives , input [12:0] s , output reg zOz , output reg [7:0] R , Q);
    reg [7:0] A ;
    reg [4:0] B;
    always @(posedge clk  , posedge rst) begin
        zOz = 0;
        if (rst) begin
            R = 8'b0;
            Q = 8'b0;
            A = 13'b0;
            B = 5'b0;
        end
        else begin
          if (lds) begin
            A = s;
            B = dives;
          end
          else begin
            if (endiv) begin
                zOz = 1;
                R = A/B;
                Q = A%B;
            end
          end
        end
    end
    
endmodule
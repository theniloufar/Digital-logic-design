module controller (input clk , rst , start , co, zOz, output reg  done , ready , cnten , enReg ,lds,  endiv, clear,encnt );
    parameter IDLE = 0 , Q0 = 1 , Q1 = 2  , Q2 = 3 , Q3 = 4  , Q4 = 5 ;
    reg [2:0] PS , NS;
    always @(posedge clk , posedge rst) begin
        if (rst) begin
            PS = IDLE;
        end
        else begin
          PS = NS;
        end
    end
    always @(PS , start , co, zOz) begin
        case (PS)
            IDLE: NS = start ? Q0 : IDLE;
            Q0 : NS = start ? Q0 : Q1;
            Q1 : NS = co ? Q2 : Q1;
            Q2 : NS = Q3;
            Q3 : NS = zOz ? Q4 : Q3;
            Q4 : NS = IDLE; 
            default: NS = IDLE;
        endcase
    end
    always @(PS , start , co, zOz) begin
        done = 0;
        ready = 0;
        clear = 0;
        enReg = 0;
        lds = 0;
        endiv = 0;
	encnt=0;
        case (PS)
            IDLE: ready=1;
            Q0 : clear = 1;
            Q1 : {enReg,encnt} = 2'b11;
            Q2 : lds = 1;
            Q3 : endiv = 1;
            Q4 : done = 1; 
            default: ;
        endcase
    end
endmodule
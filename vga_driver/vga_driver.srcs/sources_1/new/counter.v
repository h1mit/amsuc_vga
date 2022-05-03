`timescale 1ns / 1ps

module counter(
    input CLK,
    output CEO
    );
    parameter N = 0;
    reg [16:0] CNT;
    
    always @(posedge CLK) begin
        if(CNT==N) 
            CNT <= 17'd0;
        else
            CNT <= CNT+1;
    end
    assign CEO = (CNT==N);
    
endmodule

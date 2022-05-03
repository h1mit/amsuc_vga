`timescale 1ns / 1ps

module horizontal_counter(
    input clk_25MHz,
    output reg [9:0] h_counter_value = 0,
    output reg v_counter_enable = 0
    );
    
    always @(posedge clk_25MHz) begin
        if(h_counter_value < 799) begin
            h_counter_value <= h_counter_value+1;
            v_counter_enable <= 0;
        end
        else begin
            h_counter_value <= 0;
            v_counter_enable <= 1;
        end
    end
    
endmodule

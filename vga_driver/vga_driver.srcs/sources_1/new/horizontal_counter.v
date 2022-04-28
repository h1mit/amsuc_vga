`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.04.2022 17:12:05
// Design Name: 
// Module Name: horizontal_counter
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module horizontal_counter(
    input clk_25MHz,
    output reg [15:0] h_counter_value = 0,
    output reg v_counter_enable = 0
    );
    
    always @(posedge clk_25MHz)
    begin
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

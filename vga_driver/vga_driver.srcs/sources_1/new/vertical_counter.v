`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.04.2022 17:12:05
// Design Name: 
// Module Name: vertical_counter
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


module vertical_counter(
    input clk_25MHz,
    input enable_v_counter,
    output reg [15:0] v_counter_value = 0
    );
    
    always @(posedge clk_25MHz) begin
        if(enable_v_counter == 1'b1) begin
            if(v_counter_value < 520)
                v_counter_value <= v_counter_value+1;
            else 
                v_counter_value <= 0;
        end
    end
endmodule

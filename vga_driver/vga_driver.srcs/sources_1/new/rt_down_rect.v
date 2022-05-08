`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.05.2022 15:48:35
// Design Name: 
// Module Name: rt_down_rect
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


module rt_down_rect(
    input [9:0] position_x, // Position x of display
    input [9:0] position_y, // Position y of display
    output [3:0] o_red,     // Red colour
    output [3:0] o_green,   // Green colour
    output [3:0] o_blue     // Blue colour
    );
    
    reg [3:0] red;          // Red colour
    reg [3:0] green;        // Green colour
    reg [3:0] blue;         // Blue colour
    reg [3:0] counter_h = 0;
    always@(position_x or position_y)
    begin
    
        if (position_x > 463 && position_x < 784 && position_y > 270 && position_y < 511)
        begin
            red = 4'h0;    // blue
            green = 4'h0;
            blue = 4'hF;
        end 
        else
        begin
            red = 4'hF;    // yellow
            green = 4'hF;
            blue = 4'h0;
        end
    end

	assign o_red = (position_x > 143 && position_x < 784 && position_y > 30 && position_y < 511) ? red : 4'h0;
	assign o_blue = (position_x > 143 && position_x < 784 && position_y > 30 && position_y < 511) ? blue : 4'h0;
	assign o_green = (position_x > 143 && position_x < 784 && position_y > 30 && position_y < 511) ? green : 4'h0;
endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.05.2022 18:04:41
// Design Name: 
// Module Name: image_column
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


module image_column(
input [9:0] position_x, //Position x of display
    input [9:0] position_y, // Position y of display
    output [3:0] o_red,       // red colour
    output [3:0] o_green,     // Green colour
    output [3:0] o_blue       // Blue colour
    );
    
    reg [3:0] red;       // red colour
    reg [3:0] green;     // Green colour
    reg [3:0] blue;       // Blue colour
    reg [3:0] counter_h = 0;
    always@(position_x or position_y)
    begin
    
        if (position_x > 143 && position_x < 210)
        begin
            red = 4'hF;    // white
            green = 4'hF;
            blue = 4'hF;
        end
        else if (position_x > 209 && position_x < 274)
        begin
            red = 4'hF;    // yellow
            green = 4'hF;
            blue = 4'h0;
        end    
        else if (position_x > 273 && position_x < 338)
        begin
            red = 4'h0;    // Cyan
            green = 4'hF;
            blue = 4'hF;
        end
        else if (position_x > 337 && position_x < 402)
        begin
            red = 4'h0;    // green
            green = 4'hF;
            blue = 4'h0;
        end
        else if (position_x > 401 && position_x < 466)
        begin
            red = 4'hf;    // pink
            green = 4'h0;
            blue = 4'hf;
        end
        else if (position_x > 465 && position_x < 530)
        begin
            red = 4'hF;    // red
            green = 4'h0;
            blue = 4'h0;
        end
        else if (position_x > 529 && position_x < 594)
        begin
            red = 4'h0;    // blue
            green = 4'h0;
            blue = 4'hF;
        end
        else if (position_x > 593 && position_x < 658)
        begin
            red = 4'hF;    // orange
            green = 4'hA;
            blue = 4'h0;
        end
        else if (position_x > 657 && position_x < 722)
        begin
            red = 4'h0;    // dark blue
            green = 4'h0;
            blue = 4'h8;
        end
        else if (position_x > 721 && position_x < 786)
        begin
            red = 4'hF;    // white
            blue = 4'hF;
            green = 4'hF;
        end
    end

	assign o_red = (position_x > 143 && position_x < 784 && position_y > 30 && position_y < 511) ? red : 4'h0;
	assign o_blue = (position_x > 143 && position_x < 784 && position_y > 30 && position_y < 511) ? blue : 4'h0;
	assign o_green = (position_x > 143 && position_x < 784 && position_y > 30 && position_y < 511) ? green : 4'h0;
endmodule

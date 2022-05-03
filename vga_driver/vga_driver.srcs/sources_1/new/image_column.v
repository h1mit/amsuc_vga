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
    
        if (position_y > 143 && position_y < 210)
        begin
            red = 4'h0;    // black
            blue = 4'h0;
            green = 4'h0;
        end
        else if (position_y > 209 && position_y < 274)
        begin
            red = 4'hF;    // white
            blue = 4'hF;
            green = 4'hF;
        end    
        else if (position_y > 273 && position_y < 338)
        begin
            red = 4'h0;    // black
            blue = 4'h0;
            green = 4'h0;
        end
        else if (position_y > 337 && position_y < 402)
        begin
            red = 4'hF;    // white
            blue = 4'hF;
            green = 4'hF;
        end
        else if (position_y > 401 && position_y < 466)
        begin
            red = 4'h0;    // black
            blue = 4'h0;
            green = 4'h0;
        end
        else if (position_y > 465 && position_y < 530)
        begin
            red = 4'hF;    // white
            blue = 4'hF;
            green = 4'hF;
        end
        else if (position_y > 529 && position_y < 594)
        begin
            red = 4'h0;    // black
            blue = 4'h0;
            green = 4'h0;
        end
        else if (position_y > 593 && position_y < 658)
        begin
            red = 4'hF;    // white
            blue = 4'hF;
            green = 4'hF;
        end
        else if (position_y > 657 && position_y < 722)
        begin
            red = 4'h0;    // black
            blue = 4'h0;
            green = 4'h0;
        end
        else if (position_y > 721 && position_y < 786)
        begin
            red = 4'hF;    // black
            blue = 4'hF;
            green = 4'hF;
        end
        /*if (((position_y - 144) % 64 ) == 0)
            counter_h = counter_h + 1;
            
        if((counter_h % 2) == 0)
        begin
            red = 4'h0;    // black
            blue = 4'h0;
            green = 4'h0;
        end
        else
        begin
            red = 4'hF;    // white
            blue = 4'hF;
            green = 4'hF;
        end
        
     if(position_x > 783)
        counter_h = 0;*/
    end

	assign o_red = (position_x > 143 && position_x < 784 && position_y > 30 && position_y < 511) ? red : 4'h0;
	assign o_blue = (position_x > 143 && position_x < 784 && position_y > 30 && position_y < 511) ? blue : 4'h0;
	assign o_green = (position_x > 143 && position_x < 784 && position_y > 30 && position_y < 511) ? green : 4'h0;
endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.04.2022 17:28:57
// Design Name: 
// Module Name: VGA_select_image
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


module VGA_select_image(
    input clk,      //System clock
    input [9:0] position_x, //Position x of display
    input [9:0] position_y, // Position y of display
    input  button,  // Selected of image
    output reg [3:0] red,       // red colour
    output reg [3:0] green,     // Green colour
    output reg [3:0] blue       // Blue colour
    );
    
    wire [3:0] smile_red;
    wire [3:0] smile_green;
    wire [3:0] smile_blue;
    
    image_smile smile(
        .position_x(position_y),
        .position_y(position_x),
        .counter_but(button),
        .o_red(smile_red),
        .o_green(smile_green),
        .o_blue(smile_blue)
    );
                
    reg [3:0] counter_but = 0;
    always@(posedge clk)
    begin
        case(counter_but)
            4'd0:
            begin 
                red <= smile_red;
                green <= smile_green;
                blue <= smile_blue;    
            end
            default:
                counter_but = 0;
        endcase
    end
endmodule
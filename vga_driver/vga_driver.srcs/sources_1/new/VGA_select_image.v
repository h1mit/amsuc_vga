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
    output [3:0] red,       // red colour
    output [3:0] green,     // Green colour
    output [3:0] blue       // Blue colour
    );
    
    reg [3:0] counter_but = 0;
    always@(posedge clk)
    begin
        case(counter_but)
            4'd0:
            begin 
                image_smilesmile(
                    .position_x(position_x),
                    .position_y(position_y),
                    .counter_but(button),
                    .o_red(red),
                    .o_green(green),
                    .o_blue(blue)
                );
            end
            default:
                counter_but = 0;
        endcase
    end
endmodule
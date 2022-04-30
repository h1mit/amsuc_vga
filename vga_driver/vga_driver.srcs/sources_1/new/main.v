`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.04.2022 17:12:05
// Design Name: 
// Module Name: main
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

module main(
    input clk,
    input button,
    output Hsync,
    output Vsync,
    output [3:0] Red,
    output [3:0] Green,
    output [3:0] Blue
    );

wire clk_25;
wire v_counter_enable;
wire [15:0] h_counter_value;
wire [15:0] v_counter_value;

clk_wiz_0 VGA_Clock(
    .clk_in(clk),
    .clk_out(clk_25)
);

horizontal_counter VGA_horizontal(
    .clk_25MHz(clk_25),
    .h_counter_value(h_counter_value),
    .v_counter_enable(v_counter_enable)
);

vertical_counter VGA_vertical(
    .clk_25MHz(clk_25),
    .enable_v_counter(v_counter_enable),
    .v_counter_value(v_counter_value)
);

VGA_select_image image(
    .clk(clk_25),
    .position_x(v_counter_value),
    .position_y(h_counter_value),
    .button(button),
    .red(Red),
    .green(Green),
    .blue(Blue)
    );

assign Vsync = (v_counter_value < 2) ? 1'b1 : 1'b0;
assign Hsync = (h_counter_value < 96) ? 1'b1 : 1'b0;

//assign Red = (h_counter_value<784 && h_counter_value>143 && v_counter_value<511 && v_counter_value>30) ? 4'hF:4'h0;
//assign Green = (h_counter_value<784 && h_counter_value>143 && v_counter_value<511 && v_counter_value>30) ? 4'hF:4'h0;
//assign Blue = (h_counter_value<784 && h_counter_value>143 && v_counter_value<511 && v_counter_value>30) ? 4'hF:4'h0;

endmodule

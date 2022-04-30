`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.04.2022 19:24:36
// Design Name: 
// Module Name: testbench
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

module testbench();

reg clk = 0;
wire Hsync;
wire VSync;
wire [3:0] Red;
wire [3:0] Green;
wire [3:0] Blue;

main m(
    .clk(clk),
    .Hsync(Hsync),
    .Vsync(VSync),
    .Red(Red),
    .Green(Green),
    .Blue(Blue)
);

always #5 clk = ~clk;

endmodule

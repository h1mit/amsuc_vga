`timescale 1ns / 1ps

module main(
    input clk,
    input button,
    output Hsync,
    output Vsync,
    output [3:0] Red,
    output [3:0] Green,
    output [3:0] Blue,
    output diode
    );

wire clk_25;
wire button_impuls;
wire v_counter_enable;
wire [15:0] h_counter_value;
wire [15:0] v_counter_value;

clk_wiz_0 VGA_Clock(                    //Clock 25 MHz
    .clk_in(clk),
    .clk_out(clk_25)
);

vertical_counter VGA_vertical(          //Vertical counter
    .clk_25MHz(clk_25),
    .enable_v_counter(v_counter_enable),
    .v_counter_value(v_counter_value)
);

horizontal_counter VGA_horizontal(      //Horizontal counter
    .clk_25MHz(clk_25),
    .h_counter_value(h_counter_value),
    .v_counter_enable(v_counter_enable)
);

debouncer deb(                          //Debouncer for button                             
    .clk(clk),
    .button(button),
    .button_impuls(button_impuls)
);

VGA_select_image image(                 //Image selection module
    .clk(clk_25),
    .position_x(h_counter_value),
    .position_y(v_counter_value),
    .button(button_impuls),
    .red(Red),
    .green(Green),
    .blue(Blue)
    );

assign Vsync = (v_counter_value < 2) ? 1'b1 : 1'b0;     //Vertical synchronization
assign Hsync = (h_counter_value < 96) ? 1'b1 : 1'b0;    //Horizontal synchronization
assign diode = button_impuls;

endmodule

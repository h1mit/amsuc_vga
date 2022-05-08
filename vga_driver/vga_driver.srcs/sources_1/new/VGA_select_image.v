`timescale 1ns / 1ps

module VGA_select_image(
    input clk,                  // Clock 25MHz
    input [9:0] position_x,     // Position x of display
    input [9:0] position_y,     // Position y of display
    input  button,              // Selected image
    output reg [3:0] red,       // Red colour
    output reg [3:0] green,     // Green colour
    output reg [3:0] blue       // Blue colour
    );
    
    // Colours for smile
    wire [3:0] smile_red;
    wire [3:0] smile_green;
    wire [3:0] smile_blue;
    
    // Colours for colored columns
    wire [3:0] col_red;
    wire [3:0] col_green;
    wire [3:0] col_blue;
    
    // Colours for righ-top blue ractangle
    wire [3:0] rt_top_red;
    wire [3:0] rt_top_green;
    wire [3:0] rt_top_blue;
    
    // Colours for righ-down blue ractangle
    wire [3:0] rt_down_red;
    wire [3:0] rt_down_green;
    wire [3:0] rt_down_blue;
    
    // Colours for left-down blue ractangle
    wire [3:0] lt_down_red;
    wire [3:0] lt_down_green;
    wire [3:0] lt_down_blue;
    
    // Colours for lef-top blue ractangle
    wire [3:0] lt_top_red;
    wire [3:0] lt_top_green;
    wire [3:0] lt_top_blue;
    
    // Colours for blank screen (case default)
    wire [3:0] blank_red;
    wire [3:0] blank_green;
    wire [3:0] blank_blue;
    
    image_smile smile(
        .position_x(position_x),
        .position_y(position_y),
        .o_red(smile_red),
        .o_green(smile_green),
        .o_blue(smile_blue)
    );
    
    image_column column(
        .position_x(position_x),
        .position_y(position_y),
        .o_red(col_red),
        .o_green(col_green),
        .o_blue(col_blue)
    );
    
    rt_up_rect rtUpRect(
        .position_x(position_x),
        .position_y(position_y),
        .o_red(rt_top_red),
        .o_green(rt_top_green),
        .o_blue(rt_top_blue)
    );
    
    rt_down_rect rtDownRect(
        .position_x(position_x),
        .position_y(position_y),
        .o_red(rt_down_red),
        .o_green(rt_down_green),
        .o_blue(rt_down_blue)
    );
    
    lt_down_rect ltDownRect(
        .position_x(position_x),
        .position_y(position_y),
        .o_red(lt_down_red),
        .o_green(lt_down_green),
        .o_blue(lt_down_blue)
    );
    
    lt_top_rect lttopRect(
        .position_x(position_x),
        .position_y(position_y),
        .o_red(lt_top_red),
        .o_green(lt_top_green),
        .o_blue(lt_top_blue)
    );
    
    blank_screen blank(
        .position_x(position_x),
        .position_y(position_y),
        .o_red(blank_red),
        .o_green(blank_green),
        .o_blue(blank_blue)
    );
                
    reg [3:0] counter_but = 0;
    
    always@(posedge button) begin   // Push button operation       
        if(counter_but < 5)
            counter_but <= counter_but + 1;
        else
            counter_but <= 0;
    end
       
    always@(posedge clk) begin      // Display images according to number of button presses                
        case(counter_but)
            4'd0:
            begin  
                red <= smile_red;
                green <= smile_green;
                blue <= smile_blue;  
            end
            4'd1:
            begin
                red <= col_red;
                green <= col_green;
                blue <= col_blue;         
            end
            4'd2:
            begin
                red <= rt_top_red;
                green <= rt_top_green;
                blue <= rt_top_blue;
            end
            4'd3:
            begin
                red <= rt_down_red;
                green <= rt_down_green;
                blue <= rt_down_blue;
            end
            4'd4:
            begin
                red <= lt_down_red;
                green <= lt_down_green;
                blue <= lt_down_blue;
            end
            4'd5:
            begin
                red <= lt_top_red;
                green <= lt_top_green;
                blue <= lt_top_blue;
            end
            default:                // Shouldn't happened, but if counter didn't reset display white screen
            begin
                red <= blank_red;
                green <= blank_green;
                blue <= blank_blue;
            end
        endcase
    end
endmodule
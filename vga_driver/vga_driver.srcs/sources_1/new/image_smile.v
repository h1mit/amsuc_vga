`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.04.2022 17:31:42
// Design Name: 
// Module Name: image_smile
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

module image_smile(
    input [9:0] position_x, //Position x of display
    input [9:0] position_y, // Position y of display
    output [3:0] o_red,       // red colour
    output [3:0] o_green,     // Green colour
    output [3:0] o_blue       // Blue colour
    );
    
    reg [3:0] red;       // red colour
    reg [3:0] green;     // Green colour
    reg [3:0] blue;       // Blue colour
    always@(position_x or position_y)
    begin
        if(position_y < 135) begin              
            red = 4'hF;    // white
            blue = 4'hF;
            green = 4'hF;
        end  // if (position_y < 135)
			////////////////////////////////////////////////////////////////////////////////////// END SECTION 1
			
			////////////////////////////////////////////////////////////////////////////////////// SECTION 2
        else if (position_y >= 135 && position_y < 205)
        begin 
            if (position_x < 324)
            begin 
                red = 4'hF;    // white
                blue = 4'hF;
                green = 4'hF;
            end  // if (position_x < 324)
            else if (position_x >= 324 && position_x < 604)
            begin 
                red = 4'hF;    // yellow
                blue = 4'h0;
                green = 4'hF;
            end  // else if (position_x >= 324 && position_x < 604)
            else if (position_x >= 604)
            begin 
                red = 4'hF;    // white
                blue = 4'hF;
                green = 4'hF;
            end  // else if (position_x >= 604)
        end  // else if (position_y >= 135 && position_y < 205)
     ////////////////////////////////////////////////////////////////////////////////////// END SECTION 2
    
        ////////////////////////////////////////////////////////////////////////////////////// SECTION 3
        else if (position_y >= 205 && position_y < 217)
        begin 
            if (position_x < 324)
            begin 
                red = 4'hF;    // white
                blue = 4'hF;
                green = 4'hF;
            end  // if (position_x < 324)
            else if (position_x >= 324 && position_x < 371)
            begin 
                red = 4'hF;    // yellow
                blue = 4'h0;
                green = 4'hF;
            end  // else if (position_x >= 324 && position_x < 371)
            else if (position_x >= 371 && position_x < 383)
            begin 
                red = 4'h0;    // black
                blue = 4'h0;
                green = 4'h0;
            end  // else if (position_x >= 371 && position_x < 383)
            else if (position_x >= 383 && position_x < 545)
                begin 
                    red = 4'hF;    // yellow
                    blue = 4'h0;
                    green = 4'hF;
                end  // else if (position_x >= 383 && position_x < 545)
                else if (position_x >= 545 && position_x < 557)
                begin 
                    red = 4'h0;    // black
                    blue = 4'h0;
                    green = 4'h0;
                end  // else if (position_x >= 545 && position_x < 557)
                else if (position_x >= 557 && position_x < 604)
                begin 
                    red = 4'hF;    // yellow
                    blue = 4'h0;
                    green = 4'hF;
                end  // else if (position_x >= 557 && position_x < 604)
                else if (position_x >= 604)
                begin 
                    red = 4'hF;    // white
                    blue = 4'hF;
                    green = 4'hF;
                end  // else if (position_x >= 604)
        end  // else if (position_y >= 205 && position_y < 217)
        ////////////////////////////////////////////////////////////////////////////////////// END SECTION 3
			
        ////////////////////////////////////////////////////////////////////////////////////// SECTION 4
        else if (position_y >= 217 && position_y < 305)
        begin
            if (position_x < 324)
            begin 
                red = 4'hF;    // white
                blue = 4'hF;
                green = 4'hF;
            end  // if (position_x < 324)
            else if (position_x >= 324 && position_x < 604)
            begin 
                red = 4'hF;    // yellow
                blue = 4'h0;
                green = 4'hF;
            end  // else if (position_x >= 324 && position_x < 604)
            else if (position_x >= 604)
            begin 
                red = 4'hF;    // white
                blue = 4'hF;
                green = 4'hF;
            end  // else if (position_x >= 604)	
        end  // else if (position_y >= 217 && position_y < 305)
        ////////////////////////////////////////////////////////////////////////////////////// END SECTION 4
			
        ////////////////////////////////////////////////////////////////////////////////////// SECTION 5
        else if (position_y >= 305 && position_y < 310)
        begin
            if (position_x < 324)
            begin 
                red = 4'hF;    // white
                blue = 4'hF;
                green = 4'hF;
            end  // if (position_x < 324)
            else if (position_x >= 324 && position_x < 371)
            begin 
                red = 4'hF;    // yellow
                blue = 4'h0;
                green = 4'hF;
            end  // else if (position_x >= 324 && position_x < 371)
            else if (position_x >= 371 && position_x < 557)
            begin 
                red = 4'h0;    // black
                blue = 4'h0;
                green = 4'h0;
            end  // else if (position_x >= 371 && position_x < 557)
            else if (position_x >= 557 && position_x < 604)
            begin 
                red = 4'hF;    // yellow
                blue = 4'h0;
                green = 4'hF;
            end  // else if (position_x >= 557 && position_x < 604)
            else if (position_x >= 604)
            begin 
                red = 4'hF;    // white
                blue = 4'hF;
                green = 4'hF;
            end  // else if (position_x >= 604)	
        end  // else if (position_y >= 217 && position_y < 305)
        ////////////////////////////////////////////////////////////////////////////////////// END SECTION 5
        
        ////////////////////////////////////////////////////////////////////////////////////// SECTION 6
        else if (position_y >= 305 && position_y < 414)
        begin
            if (position_x < 324)
            begin 
                red = 4'hF;    // white
                blue = 4'hF;
                green = 4'hF;
            end  // if (position_x < 324)
            else if (position_x >= 324 && position_x < 604)
            begin 
                red = 4'hF;    // yellow
                blue = 4'h0;
                green = 4'hF;
            end  // else if (position_x >= 324 && position_x < 604)
            else if (position_x >= 604)
            begin 
                red = 4'hF;    // white
                blue = 4'hF;
                green = 4'hF;
            end  // else if (position_x >= 604)	
        end  // else if (position_y >= 305 && position_y < 414)
        ////////////////////////////////////////////////////////////////////////////////////// END SECTION 6
        
        ////////////////////////////////////////////////////////////////////////////////////// SECTION 7
        else if (position_y <= 414)
        begin              
            red = 4'hF;    // white
            blue = 4'hF;
            green = 4'hF;
        end  // if (position_y >= 414)
        ////////////////////////////////////////////////////////////////////////////////////// END SECTION 7
    end
						
	// end pattern generate

	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// color output assignments
	// only output the colors if the counters are within the adressable video time constraints
	//assign Red = (h_counter_value<784 && h_counter_value>143 && v_counter_value<511 && v_counter_value>30) ? 4'hF:4'h0;
	assign o_red = (position_x > 143 && position_x < 784 && position_y > 30 && position_y < 511) ? red : 4'h0;
	assign o_blue = (position_x > 143 && position_x < 784 && position_y > 30 && position_y < 511) ? blue : 4'h0;
	assign o_green = (position_x > 143 && position_x < 784 && position_y > 30 && position_y < 511) ? green : 4'h0;
endmodule

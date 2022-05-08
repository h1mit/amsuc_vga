`timescale 1ns / 1ps

module vertical_counter(
    input clk_25MHz,
    input enable_v_counter,
    output reg [9:0] v_counter_value = 0
    );
    
    always @(posedge clk_25MHz) begin
        if(enable_v_counter == 1'b1) begin
            if(v_counter_value < 521)
                v_counter_value <= v_counter_value+1;
            else 
                v_counter_value <= 0;
        end
    end
endmodule

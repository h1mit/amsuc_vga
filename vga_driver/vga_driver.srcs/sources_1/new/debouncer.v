`timescale 1ns / 1ps

module debouncer(
    input clk,              // 25 MHz clock
    input button,   
    output button_impuls    // Output impulse    
    );
    reg [3:0] register;
    
    always @(posedge clk) begin                                 // Move elements in register 
            register <= {register[2:0], button};
    end
    assign button_impuls = (&register[2:0]) & ~register[3];     // Generate short impulse indicating button press
endmodule

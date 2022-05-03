`timescale 1ns / 1ps

module debouncer(
    input clk,
    input button,
    output button_impuls
    );
    wire CE;
    reg [3:0] register;
    
    counter #(.N(99999)) C(                                     //counter 1KHz                                     
        .CLK(CLK),
        .CEO(CE)
    );
    
    always @(posedge clk) begin                                 //move elements in register 
        if(CE)
            register <= {register[2:0], button};
    end
    assign button_impuls = (&register[2:0]) & ~register[3];     //generate impulse indicating button press

endmodule

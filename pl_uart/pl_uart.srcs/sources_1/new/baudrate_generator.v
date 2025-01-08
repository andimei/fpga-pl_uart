`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.11.2024 14:05:41
// Design Name: 
// Module Name: baudrate_generator
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

module baudrate_generator(
    input i_CLK,              // Clock input
    input i_RESET,           // Active-low reset
    input [31:0] i_DVSR,      // Divisor value (32-bit)
    output o_TICK             // Output tick signal
    );
    
    // Declaration
    reg [31:0] r_reg;         // Register to hold current count value
    wire [31:0] r_next;       // Wire for next count value
    
    // Body
    // Register: Process on clock rising edge or reset signal
    always @(posedge i_CLK or posedge i_RESET) begin
        if (i_RESET) 
            r_reg <= 0;
        else 
            r_reg <= r_next; 
    end
    
    
    // Next state logic: Increment counter until it reaches i_DVSR
    assign r_next = (r_reg == (i_DVSR/16)-1) ? 0 : r_reg + 1;
    
    // Output logic: Tick when counter reaches 1
    assign o_TICK = (r_reg == 1);   
    
endmodule


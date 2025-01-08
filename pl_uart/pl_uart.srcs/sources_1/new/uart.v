`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.11.2024 16:01:33
// Design Name: 
// Module Name: uart
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


module uart #(
    parameter DBIT = 8,          // Data bits
    parameter SB_TICK = 16       // 16 ticks for 1 stop bit
)(
    input wire i_CLK,             // Clock
    input wire i_RESETN,          // Active low reset
    input wire i_TX_START,        // Start signal to begin transmission
    input wire [DBIT-1:0] i_TX_DATA, // Data to be transmitted
    input wire [10:0] i_DVSR,     // Divisor value for baud rate generator
    output wire o_TX,             // Serial output
    output wire o_TX_DONE,         // Transmission done flag
    output wire test_tick_baud
);

    // Wire to connect baudrate_generator tick to uart_tx
    wire tick;

    // Wire to receive done signal from uart_tx
    wire tx_done_tick;

    // Instansiasi modul baudrate_generator untuk menghasilkan tick sesuai baud rate
    baudrate_generator baud_gen_inst (
        .i_CLK(i_CLK),
        .i_RESETN(i_RESETN),
        .i_DVSR(i_DVSR),
        .o_TICK(tick)
    );

    // Instansiasi modul uart_tx untuk mengirim data serial
    uart_tx #(
        .DBIT(DBIT),
        .SB_TICK(SB_TICK)
    ) uart_tx_inst (
        .i_CLK(i_CLK),
        .i_RESETN(i_RESETN),
        .i_TX_START(i_TX_START),
        .i_S_TICK(tick),
        .i_DIN(i_TX_DATA),
        .o_TX(o_TX),
        .o_TX_DONE_TICK(tx_done_tick)
    );

    // Menghubungkan tx_done_tick dari uart_tx ke output o_TX_DONE
    assign o_TX_DONE = tx_done_tick;
    
    assign test_tick_baud = tick;

endmodule



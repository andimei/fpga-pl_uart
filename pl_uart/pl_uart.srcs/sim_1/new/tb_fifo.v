`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.11.2024 17:09:32
// Design Name: 
// Module Name: tb_fifo
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

module tb_fifo;
// Parameter
parameter DATA_WIDTH = 8;
parameter FIFO_DEPTH = 512;

// Common signals
reg clk;
reg rst;

// FIFO Read signals
wire [DATA_WIDTH-1:0] FIFO_READ_rd_data;    // output
reg FIFO_READ_rd_en;                        // input
wire FIFO_READ_empty;                       // output

// FIFO Write signals
reg [DATA_WIDTH-1:0] FIFO_WRITE_wr_data;    // input
wire FIFO_WRITE_full;                       // output
reg FIFO_WRITE_wr_en;                       // input

// Debug signal
reg [DATA_WIDTH-1:0]temp_rd_data;

// Instantiate the FIFO module    
fifo_wrapper dut(
    .FIFO_READ_empty(FIFO_READ_empty),
    .FIFO_READ_rd_data(FIFO_READ_rd_data),
    .FIFO_READ_rd_en(FIFO_READ_rd_en),
    .FIFO_WRITE_full(FIFO_WRITE_full),
    .FIFO_WRITE_wr_data(FIFO_WRITE_wr_data),
    .FIFO_WRITE_wr_en(FIFO_WRITE_wr_en),
    .clk(clk),
    .rst(rst));

// Clock generation
always begin
    #10 clk = ~clk; // 50 MHz clock (period 20ns)
end
        
// Task to write data to FIFO
task write_to_fifo(input [DATA_WIDTH-1:0] data);
    begin
        @(negedge clk);
        FIFO_WRITE_wr_data = data;
        FIFO_WRITE_wr_en = 1;
        @(negedge clk);
        FIFO_WRITE_wr_en = 0;
    end
endtask

// Task to read data from FIFO 
task read_from_fifo(output [DATA_WIDTH-1:0] data_out);
    begin
        @(negedge clk);
        FIFO_READ_rd_en = 1;
        @(negedge clk);
        FIFO_READ_rd_en = 0;
        data_out = FIFO_READ_rd_data;
    end
endtask


// Test procedure
initial begin
    // Initialize signals
    clk = 0;
    rst = 1;
    FIFO_WRITE_wr_en = 0;
    FIFO_READ_rd_en = 0;
    FIFO_WRITE_wr_data = 8'b0;

    // Reset the FIFO
    #40 rst = 0;
    #120 // Tunggu hingga fifo siap digunakan
    
    // Write data to FIFO using task
    repeat (10) begin
        write_to_fifo($random % 256); // Write random 8-bit data
    end

    repeat (10) begin
        read_from_fifo(temp_rd_data);
    end

    // Finish simulation
    #120;
    $finish;
end

// Monitor signals
initial begin
    $monitor("Time: %t | rd_data: %h | empty: %b | full: %b | wr_en: %b | rd_en: %b",
             $time, FIFO_READ_rd_data, FIFO_READ_empty, FIFO_WRITE_full, FIFO_WRITE_wr_en, FIFO_READ_rd_en);
end
endmodule

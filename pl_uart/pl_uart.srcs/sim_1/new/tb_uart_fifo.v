`timescale 1ns / 1ps

module tb_uart_fifo;

    // Parameter untuk UART
    parameter DBIT = 8;      // Jumlah data bit
    parameter SB_TICK = 16;  // Stop bit tick

    // Sinyal clock dan reset
    reg i_CLK;
    reg i_RESET;

    // Divisor untuk baud rate
    reg [10:0] i_DVSR;       

    // FIFO Read signals (UART Receiver)
    wire [DBIT-1:0] FIFO_READ_rd_data;    // output
    reg FIFO_READ_rd_en;                        // input
    wire FIFO_READ_empty;                       // output

    // FIFO Write signals (UART Transmitter)
    reg [DBIT-1:0] FIFO_WRITE_wr_data;    // input
    wire FIFO_WRITE_full;                       // output
    reg FIFO_WRITE_wr_en;                       // input

    // Debug signal
    reg [DBIT-1:0]temp_rd_data;

    // Sinyal debug untuk transmitter
    wire o_TX;
    wire [DBIT-1:0]test_DIN;
    wire test_TX_RDY_TICK;
    wire test_TX_STARTN;

    // Sinyal debug untuk receiver
    reg i_RX;
    wire [DBIT-1:0]test_DOUT;
    wire test_RX_DONE_TICK;
    reg [DBIT-1:0]temp_rd_data;

    // Instansiasi modul uart_fifo_wrapper
    uart_fifo_wrapper dut(
        .FIFO_READ_empty(FIFO_READ_empty),
        .FIFO_READ_rd_data(FIFO_READ_rd_data),
        .FIFO_READ_rd_en(FIFO_READ_rd_en),
        .FIFO_WRITE_full(FIFO_WRITE_full),
        .FIFO_WRITE_wr_data(FIFO_WRITE_wr_data),
        .FIFO_WRITE_wr_en(FIFO_WRITE_wr_en),
        .i_CLK(i_CLK),
        .i_DVSR(i_DVSR),
        .i_RESET(i_RESET),
        .i_RX(i_RX),
        .o_TX(o_TX),
        .test_DIN(test_DIN),
        .test_DOUT(test_DOUT),
        .test_RX_DONE_TICK(test_RX_DONE_TICK),
        .test_TX_RDY_TICK(test_TX_RDY_TICK),
        .test_TX_STARTN(test_TX_STARTN)
        );
    
    // Task to write data to FIFO
    task write_to_fifo(input [DBIT-1:0] data);
        begin
            @(negedge i_CLK);
            FIFO_WRITE_wr_data = data;
            FIFO_WRITE_wr_en = 1;
            @(negedge i_CLK);
            FIFO_WRITE_wr_en = 0;
        end
    endtask

    // Task to read data from FIFO 
    task read_from_fifo(output [DBIT-1:0] data_out);
        begin
            @(negedge i_CLK);
            FIFO_READ_rd_en = 1;
            @(negedge i_CLK);
            FIFO_READ_rd_en = 0;
            data_out = FIFO_READ_rd_data;
        end
    endtask

    // Clock generation (50 MHz)
    always begin
        i_CLK = 0;
        #10 i_CLK = 1;  // 50% duty cycle, period = 20ns (50 MHz)
        #10;
    end

    // Loopback TX ke RX
    always @(o_TX) begin
        i_RX = o_TX;
    end

    // Test procedure
    initial begin
        // Inisialisasi sinyal
        i_CLK = 0;
        i_RESET = 1;
        i_DVSR = 11'd434;   // Divisor untuk baud rate (contoh: 50 MHz / 115200)
        FIFO_WRITE_wr_en = 0;
        FIFO_READ_rd_en = 0;
        FIFO_WRITE_wr_data = 8'b0;

        // Reset the FIFO
        #40 i_RESET = 0;
        #120 // Tunggu hingga fifo siap digunakan

        write_to_fifo(8'ha5);
        write_to_fifo(8'h99);
        
        #2784780
        read_from_fifo(temp_rd_data);
        read_from_fifo(temp_rd_data);
 
        // Akhiri simulasi
        #120;
        $stop;
    end

endmodule

`timescale 1ns / 1ps

module tb_uart;

    // Parameter untuk UART
    parameter DBIT = 8;      // Jumlah data bit
    parameter SB_TICK = 16;  // Stop bit tick

    // Sinyal clock dan reset
    reg i_CLK;
    reg i_RESET;

    // Sinyal untuk baudrate generator
    reg [10:0] i_DVSR;       // Divisor untuk baud rate

    // Sinyal untuk transmitter
    wire o_TX;
    reg [DBIT-1:0] i_DIN;
    reg i_TX_STARTN;
    wire o_TX_RDY_TICK;
    
    // Sinyal untuk receiver
    reg i_RX;
    wire [DBIT-1:0] o_DOUT;
    wire o_RX_DONE_TICK;

    // Sinyal untuk debug
    wire test_TICK;
    reg [DBIT-1:0] temp_read_data;

    // Instansiasi modul uart_ctrl_wrapper
    uart_ctrl_wrapper dut(
        .i_CLK(i_CLK),
        .i_DIN(i_DIN),
        .i_DVSR(i_DVSR),
        .i_RESET(i_RESET),
        .i_RX(i_RX),
        .i_TX_STARTN(i_TX_STARTN),
        .o_DOUT(o_DOUT),
        .o_RX_DONE_TICK(o_RX_DONE_TICK),
        .o_TX(o_TX),
        .o_TX_RDY_TICK(o_TX_RDY_TICK),
        .test_TICK(test_TICK));
   

   // Task untuk mengirim data
    task send_data(input [DBIT-1:0] data);
        begin
            @(negedge i_CLK);
            i_DIN = data;
            i_TX_STARTN = 0;
            @(negedge i_CLK);
            #1322230; // tunggu transmisi
            i_TX_STARTN = 1;
        end
    endtask

    // Task untuk menerima data
    task receive_data(output [DBIT-1:0] data_out);
        begin
            @(posedge o_RX_DONE_TICK);  // Tunggu RX selesai
            data_out = o_DOUT;          // Ambil data
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
        i_RESET = 1;
        i_DVSR = 11'd434;   // Divisor untuk baud rate (contoh: 50 MHz / 115200)
        i_TX_STARTN = 1;
        i_DIN = 8'h00;

        // Reset sistem
        #20;
        i_RESET = 0;
        #20;

        // Simulasi pengiriman data
       send_data(8'hA5);  // Kirim data 0xA5
       receive_data(temp_read_data); // Terima data
       send_data(8'h99);  // Kirim data 0x99
       receive_data(temp_read_data); // Terima data

        // Akhiri simulasi
        #1322230;
        $stop;
    end

initial begin
    $monitor("Time: %t, o_DOUT: %h, o_RX_DONE_TICK: %b", $time, o_DOUT, o_RX_DONE_TICK);
end

 

endmodule

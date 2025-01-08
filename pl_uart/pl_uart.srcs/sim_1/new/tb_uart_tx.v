 `timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.11.2024 09:17:49
// Design Name: 
// Module Name: tb_uart_tx
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
 
module tb_uart_tx;

    // Parameter
    parameter DBIT = 8;          // Jumlah data bit
    parameter SB_TICK = 16;      // 16 ticks untuk 1 stop bit
    parameter CLK_PERIOD = 20;   // Periode clock dalam nanosekon (50 MHz)

    // Sinyal testbench
    reg i_CLK;
    reg i_RESETN;
    reg i_TX_START;
    reg i_S_TICK;
    reg [DBIT-1:0] i_DIN;
    wire o_TX;
    wire o_TX_DONE_TICK;

    // Instansiasi modul UART TX
    uart_tx #(
        .DBIT(DBIT),
        .SB_TICK(SB_TICK)
    ) dut (
        .i_CLK(i_CLK),
        .i_RESETN(i_RESETN),
        .i_TX_START(i_TX_START),
        .i_S_TICK(i_S_TICK),
        .i_DIN(i_DIN),
        .o_TX(o_TX),
        .o_TX_DONE_TICK(o_TX_DONE_TICK)
    );

    // Membuat clock
    initial begin
        i_CLK = 1;
        forever #(CLK_PERIOD/2) i_CLK = ~i_CLK;
    end

    // Proses simulasi
    initial begin
        // Inisialisasi sinyal
        i_RESETN = 0;
        i_TX_START = 0;
        i_S_TICK = 0;
        i_DIN = 8'hC1;            // Data yang akan dikirimkan (contoh: 110 0001)
        
        // Reset modul
        #100;
        i_RESETN = 1;
        
        // Tunggu beberapa saat setelah reset
        #50;
        
        // Mengirim data
        i_TX_START = 1;
        #CLK_PERIOD;
        i_TX_START = 0;

        // Membuat sinyal tick (mengirimkan 1 tick setiap beberapa clock cycle)
        repeat (16 * (1 + DBIT + 1)) begin  // Start bit + Data bits + Stop bit
            #CLK_PERIOD i_S_TICK = 1;
            #CLK_PERIOD i_S_TICK = 0;
        end

        // Tunggu selesai
        wait (o_TX_DONE_TICK == 1);
        $display("Transmisi selesai pada waktu %t", $time);

        // Simulasi selesai
        #100;
        $stop;
    end

    // Monitor output TX
    initial begin
        $monitor("Time=%0t | o_TX=%b | o_TX_DONE_TICK=%b", $time, o_TX, o_TX_DONE_TICK);
    end

endmodule

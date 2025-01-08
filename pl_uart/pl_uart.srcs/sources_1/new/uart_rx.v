`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: INFOGLOBAL
// Engineer: AMP
// 
// Create Date: 19.11.2024 11:05:21
// Design Name: 
// Module Name: uart_rx
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


module uart_rx 
#(
    parameter DBIT = 8,       // Jumlah data bit, default 32
              SB_TICK = 16    // Jumlah tick clock untuk stop bit, default 16
)
(
    input i_CLK, i_RESET,       // Sinyal clock dan reset
    input i_RX, i_S_TICK,       // Serial input (i_RX) dan sampling tick (i_S_TICK)
    output reg o_RX_DONE_TICK,     // Output sinyal saat byte diterima
    output [DBIT-1:0] o_DOUT  // Data byte yang diterima
);

    // FSM states menggunakan enumerasi
    localparam [1:0] IDLE = 2'b00,
                 START = 2'b01,
                 DATA = 2'b10,
                 STOP = 2'b11;

    reg [1:0] state_reg, state_next;  // Register dan sinyal next-state untuk FSM

    // Deklarasi sinyal
    reg [3:0] s_reg, s_next;       // Counter untuk sampling tick (0-15)
    reg [2:0] n_reg, n_next;       // Counter untuk jumlah bit data (0-7) (perhatikan bahwa n_reg hanya sampai DBIT-1)
    reg [DBIT-1:0] b_reg, b_next;  // Shift register untuk menyimpan data yang diterima

    // Sequential logic untuk menyimpan state dan counter
    always @(posedge i_CLK or posedge i_RESET) begin
        if (i_RESET) begin
            state_reg <= IDLE;      // Reset FSM ke IDLE
            s_reg <= 0;            // Reset sampling counter
            n_reg <= 0;            // Reset bit counter
            b_reg <= 0;            // Reset shift register
        end else begin
            state_reg <= state_next; // Update state ke next-state
            s_reg <= s_next;         // Update sampling counter
            n_reg <= n_next;         // Update bit counter
            b_reg <= b_next;         // Update shift register
        end
    end

    // Next-state logic
    always @* begin
        // Nilai default untuk mencegah latch
        state_next = state_reg;   // State tetap pada default jika tidak ada perubahan
        s_next = s_reg;           // Sampling counter tetap
        n_next = n_reg;           // Bit counter tetap
        b_next = b_reg;           // Shift register tetap
        o_RX_DONE_TICK = 1'b0;
        // Logika FSM
        case (state_reg)
            IDLE: begin
                if (!i_RX) begin    // Deteksi start bit (low pada i_RX)
                    state_next = START; // Pindah ke state START
                    s_next = 0;         // Reset sampling counter
                end
            end

            START: begin
                if (i_S_TICK) begin     // Saat sampling tick aktif
                    if (s_reg == 7) begin // Deteksi tengah start bit
                        if (!i_RX) begin  // Pastikan start bit masih low
                            state_next = DATA;    // Pindah ke state DATA
                            s_next = 0;            // Reset sampling counter
                            n_next = 0;            // Reset bit counter
                        end else begin
                            state_next = IDLE;    // Kembali ke IDLE jika start bit high (kesalahan)
                        end
                    end else begin
                        s_next = s_reg + 1;     // Tambah sampling counter
                    end
                end
            end


            DATA: begin
                if (i_S_TICK) begin      // Sampling tick aktif
                    if (s_reg == 15) begin // Deteksi akhir satu data bit
                        s_next = 0;        // Reset sampling counter
                        b_next = {i_RX, b_reg[DBIT-1:1]}; // Shift data ke register
                        if (n_reg == (DBIT - 1)) begin // Cek semua data bit diterima
                            state_next = STOP;         // Pindah ke state STOP
                        end else begin
                            n_next = n_reg + 1; // Tambah bit counter
                        end
                    end else begin
                        s_next = s_reg + 1; // Tambah sampling counter
                    end
                end
            end

            STOP: begin
                if (i_S_TICK) begin         // Sampling tick aktif
                    if (s_reg == (SB_TICK - 1)) begin // Deteksi akhir stop bit
                        state_next = IDLE;           // Kembali ke state IDLE
                        o_RX_DONE_TICK = 1'b1;
                    end else begin
                        s_next = s_reg + 1; // Tambah sampling counter
                    end
                end
            end
            default: state_next = IDLE; // State default adalah IDLE
        endcase
    end

    // Output assignment
    assign o_DOUT = b_reg; // Output data byte yang diterima

endmodule

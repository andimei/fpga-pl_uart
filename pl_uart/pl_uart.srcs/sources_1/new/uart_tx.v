`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: INFOGLOBAL
// Engineer: AMP
// 
// Create Date: 19.11.2024 11:05:21
// Design Name: 
// Module Name: uart_tx
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

// endmodule
module uart_tx #(
    parameter DBIT    = 8,  // Jumlah data bits
    parameter SB_TICK = 16  // Jumlah tick clock untuk stop bit, default 16
) (
    input             i_CLK,         // Clock input
    input             i_RESET,       // Reset aktif rendah
    input             i_TX_STARTN,   // Sinyal untuk memulai transmisi
    input             i_S_TICK,      // Ticks per bit untuk menentukan durasi bit
    input  [DBIT-1:0] i_DIN,         // Data input (ukuran sesuai parameter DBIT)
    output            o_TX,          // Output TX
    output            o_TX_RDY_TICK  // Menandakan transmisi dimulai
);

  // Deklarasi state FSM
  localparam [1:0] IDLE = 2'b00,  // State IDLE: menunggu sinyal mulai
  START = 2'b01,  // State START: mengirim start bit
  DATA = 2'b10,  // State DATA: mengirim bit data
  STOP = 2'b11;  // State STOP: mengirim stop bit



  // Register untuk menyimpan state saat ini dan state berikutnya
  reg [1:0] state_reg, state_next;

  // Deklarasi sinyal untuk counter dan data shifting
  reg [3:0] s_reg, s_next;  // Counter untuk menjaga setiap bit
  reg [2:0] n_reg, n_next;  // Counter untuk jumlah bit yang dikirim
  reg [DBIT-1:0] b_reg, b_next;  // Register untuk menyimpan data yang akan dikirim
  reg tx_reg, tx_next;  // Register untuk output TX

  reg rdy_tick_reg;  // Register untuk mengatur o_TX_RDY_TICK



  // Memperbarui state FSM dan register data pada setiap clock edge
  always @(posedge i_CLK or posedge i_RESET) begin
    if (i_RESET) begin
      // Jika reset, kembali ke kondisi awal
      state_reg <= IDLE;
      s_reg     <= 0;
      n_reg     <= 0;
      b_reg     <= 0;
      tx_reg    <= 1'b1;  // TX idle saat tidak mengirim
    end else begin
      // Perbarui state dan register dengan nilai next state
      state_reg <= state_next;
      s_reg <= s_next;
      n_reg <= n_next;
      b_reg <= b_next;
      tx_reg <= tx_next;
    end
  end

  // Logika next-state FSM dan operasi yang dijalankan di setiap state
  always @* begin
    // Nilai default untuk mencegah latch
    state_next = state_reg;
    //        o_TX_RDY_TICK = 1'b0;
    s_next = s_reg;
    n_next = n_reg;
    b_next = b_reg;
    tx_next = tx_reg;

    // Implementasi logika FSM
    case (state_reg)
      IDLE: begin
        tx_next = 1'b1;  // Line idle saat IDLE
        if (!i_TX_STARTN) begin  // Mulai jika ada sinyal start
          //                    o_TX_RDY_TICK = 1'b1;
          state_next = START;
          s_next = 0;
        end
      end

      START: begin
        tx_next = 1'b0;  // Kirim start bit (0)
        if (i_S_TICK) begin           // Setiap tick
            if (s_reg == 15) begin    // Tunggu 16 ticks untuk 1 bit
                state_next = DATA;    // Lanjut ke data bit
                s_next = 0;
                n_next = 0;
                b_next = i_DIN;           // Muat data yang akan dikirim
            end else begin
                s_next = s_reg + 1;   // Tambah counter tick
            end
        end
      end

      DATA: begin
        tx_next = b_reg[0];  // Kirim bit LSB dari data
        if (i_S_TICK) begin
            if (s_reg == 15) begin    // Tunggu 16 ticks untuk 1 bit
                s_next = 0;
                b_next = b_reg >> 1;  // Shift data ke kanan untuk bit berikutnya
                if (n_reg == (DBIT - 1))
                    state_next = STOP; // Selesai jika semua bit sudah dikirim
                else
                    n_next = n_reg + 1; // Lanjut ke bit berikutnya
            end else
                s_next = s_reg + 1;
        end
      end

      STOP: begin
        tx_next = 1'b1;  // Kirim stop bit (1)
         if (i_S_TICK) begin
           if (s_reg == 15) begin  // Tunggu 16 ticks untuk stop bit
             state_next = IDLE;  // Kembali ke IDLE setelah selesai
           end else s_next = s_reg + 1;
         end
      end
      default: state_next = IDLE;  // State default adalah IDLE
    endcase
  end

  // Output TX dipasang ke register tx_reg
  assign o_TX = tx_reg;

  always @(posedge i_CLK or posedge i_RESET) begin
    if (i_RESET) begin
      rdy_tick_reg <= 1'b0;  // Reset ke low
    end else begin
      // Sinkronisasi state FSM
      if (state_next == START && state_reg == IDLE && !i_TX_STARTN)
        rdy_tick_reg <= 1'b1;  // Aktif saat masuk ke START
      else rdy_tick_reg <= 1'b0;  // Nonaktif saat clock rendah
    end
  end

  // Assign ke output
  assign o_TX_RDY_TICK = rdy_tick_reg;

endmodule





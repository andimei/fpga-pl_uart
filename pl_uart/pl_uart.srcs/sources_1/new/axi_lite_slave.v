`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.01.2025 08:40:49
// Design Name: 
// Module Name: axi_lite_slave
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


module axi_lite_slave #(
    // Lebar bus data S_AXI
    parameter integer C_S_AXI_DATA_WIDTH = 32,
    // Lebar bus alamat S_AXI
    parameter integer C_S_AXI_ADDR_WIDTH = 4
) (
    // User ports ends

    input wire S_AXI_ACLK,    // Sinyal Clock Global
    input wire S_AXI_ARESETN, // Sinyal Reset Global. Sinyal ini Aktif LOW

    input wire [C_S_AXI_ADDR_WIDTH-1 : 0] S_AXI_AWADDR,  // Alamat penulisan (dikirim oleh master, diterima oleh slave)
    input wire S_AXI_AWVALID, // Valid alamat penulisan. Sinyal ini menunjukkan bahwa master memberikan alamat penulisan yang valid dan informasi kontrol terkait.
    output wire S_AXI_AWREADY, // Siap menerima alamat penulisan. Sinyal ini menunjukkan bahwa slave siap menerima alamat dan sinyal kontrol terkait.

    input wire [C_S_AXI_DATA_WIDTH-1 : 0] S_AXI_WDATA,  // Data penulisan (dikirim oleh master, diterima oleh slave)   
    input wire [(C_S_AXI_DATA_WIDTH/8)-1 : 0] S_AXI_WSTRB, // Strobe penulisan. Sinyal ini menunjukkan byte mana yang memuat data valid. Ada satu bit strobe untuk setiap 8 bit pada bus data penulisan.
    input wire S_AXI_WVALID,   // Valid penulisan. Sinyal ini menunjukkan bahwa data penulisan valid dan strobe tersedia.
    output wire S_AXI_WREADY,     // Siap menerima data penulisan. Sinyal ini menunjukkan bahwa slave dapat menerima data penulisan.

    output wire [1 : 0] S_AXI_BRESP, // Respons penulisan. Sinyal ini menunjukkan status transaksi penulisan.
    output wire S_AXI_BVALID, // Valid respons penulisan. Sinyal ini menunjukkan bahwa saluran memberikan respons penulisan yang valid.
    input wire S_AXI_BREADY, // Siap menerima respons. Sinyal ini menunjukkan bahwa master dapat menerima respons penulisan.

    input wire [C_S_AXI_ADDR_WIDTH-1 : 0] S_AXI_ARADDR, // Alamat pembacaan (dikirim oleh master, diterima oleh slave)
    input wire S_AXI_ARVALID, // Valid alamat pembacaan. Sinyal ini menunjukkan bahwa saluran memberikan alamat pembacaan yang valid dan informasi kontrol terkait.
    output wire S_AXI_ARREADY, // Siap menerima alamat pembacaan. Sinyal ini menunjukkan bahwa slave siap menerima alamat dan sinyal kontrol terkait.

    output wire [C_S_AXI_DATA_WIDTH-1 : 0] S_AXI_RDATA,  // Data pembacaan (dikirim oleh slave)
    output wire [1 : 0] S_AXI_RRESP, // Respons pembacaan. Sinyal ini menunjukkan status transfer pembacaan.
    output wire S_AXI_RVALID, // Valid pembacaan. Sinyal ini menunjukkan bahwa saluran memberikan data pembacaan yang diperlukan.
    input wire S_AXI_RREADY, // Siap menerima data pembacaan. Sinyal ini menunjukkan bahwa master dapat menerima data pembacaan dan informasi respons.

    // UART-specific ports
    output [31:0] o_DVSR,      // Baudrate (20 bits)
    input  wire [ 7:0] i_RX_DATA,   // RX data (8 bits)
    output reg         o_RX_RDEN,   // Read enable tick (1 bit)
    input  wire        i_RX_EMPTY,  // RX FIFO empty flag (1 bit)
    output reg  [ 7:0] o_TX_DATA,   // TX data (8 bits)
    output reg         o_TX_WREN,   // TX enable tick (1 bit)
    input  wire        i_TX_FULL    // TX FIFO full flag (1 bit)
);

  // Sinyal AXI4LITE
  reg [C_S_AXI_ADDR_WIDTH-1 : 0] axi_awaddr;  // Alamat penulisan AXI
  reg axi_awready;  // Indikator siap menerima alamat penulisan
  reg axi_wready;  // Indikator siap menerima data penulisan
  reg [1 : 0] axi_bresp;  // Respons penulisan
  reg axi_bvalid;  // Validitas respons penulisan
  reg [C_S_AXI_ADDR_WIDTH-1 : 0] axi_araddr;  // Alamat pembacaan AXI
  reg axi_arready;  // Indikator siap menerima alamat pembacaan
  reg [C_S_AXI_DATA_WIDTH-1 : 0] axi_rdata;  // Data pembacaan AXI
  reg [1 : 0] axi_rresp;  // Respons pembacaan
  reg axi_rvalid;  // Validitas data pembacaan

  // Sinyal support
  wire slv_reg_rden;  // Indikator pembacaan register slave
  wire slv_reg_wren;  // Indikator penulisan register slave
  reg [C_S_AXI_DATA_WIDTH-1:0] reg_data_out;  // Data output register
  integer byte_index;  // Indeks byte
  reg aw_en;  // Indikator enable untuk penulisan alamat

  // Sinyal desain khusus contoh
  // Parameter lokal untuk pengalamatan register/memori 32 bit / 64 bit
  // ADDR_LSB digunakan untuk pengalamatan register/memori 32/64 bit
  // ADDR_LSB = 2 untuk register 32 bit (n hingga 2)
  // ADDR_LSB = 3 untuk register 64 bit (n hingga 3)
  localparam integer ADDR_LSB = (C_S_AXI_DATA_WIDTH / 32) + 1;
  localparam integer OPT_MEM_ADDR_BITS = 1;  // Bit pengalamatan memori tambahan

  //-- Number of Slave Registers 7
  reg [C_S_AXI_DATA_WIDTH-1:0] slv_reg0;
  reg [C_S_AXI_DATA_WIDTH-1:0] slv_reg1;
  reg [C_S_AXI_DATA_WIDTH-1:0] slv_reg2;
  reg [C_S_AXI_DATA_WIDTH-1:0] slv_reg3;

  // I/O Connections assignments
  assign S_AXI_AWREADY = axi_awready;
  assign S_AXI_WREADY  = axi_wready;
  assign S_AXI_BRESP   = axi_bresp;
  assign S_AXI_BVALID  = axi_bvalid;
  assign S_AXI_ARREADY = axi_arready;
  assign S_AXI_RDATA   = axi_rdata;
  assign S_AXI_RRESP   = axi_rresp;
  assign S_AXI_RVALID  = axi_rvalid;

  /**
    * === Implementasi logika axi_awready ===
    * @brief axi_awready diaktifkan selama satu siklus clock S_AXI_ACLK ketika
    * S_AXI_AWVALID dan S_AXI_WVALID keduanya aktif. axi_awready akan 
    * dinonaktifkan kembali saat reset aktif (low).
    */

  always @(posedge S_AXI_ACLK) begin
    if (S_AXI_ARESETN == 1'b0) begin  // Logika reset: Ketika reset aktif (S_AXI_ARESETN = 0)
      axi_awready <= 1'b0;	// Setel axi_awready menjadi tidak aktif (0) karena slave belum siap menerima alamat tulis
      aw_en <= 1'b1;  // Aktifkan aw_en untuk memungkinkan transaksi tulis baru
    end else begin
      if (~axi_awready && S_AXI_AWVALID && S_AXI_WVALID && aw_en) begin // Jika axi_awready tidak aktif tetapi AWVALID, WVALID, dan aw_en aktif
        axi_awready <= 1'b1;  // Aktifkan axi_awready untuk menunjukkan bahwa slave siap menerima alamat tulis
        aw_en <= 1'b0;  // Nonaktifkan aw_en untuk mencegah transaksi baru sebelum transaksi yang sekarang selesai
      end  
        else if (S_AXI_BREADY && axi_bvalid) begin // Jika respons tulis telah diterima oleh master (BREADY = 1 dan bvalid = 1)
        aw_en <= 1'b1;  // Aktifkan kembali aw_en untuk memungkinkan transaksi baru
        axi_awready <= 1'b0; // Nonaktifkan axi_awready karena alamat tulis sebelumnya telah selesai diproses
      end else begin
        axi_awready <= 1'b0;  // Kasus default: pastikan axi_awready tetap tidak aktif
      end
    end
  end

  /**
    * === Implementasi latch S_AXI_AWADDR ===
    * Proses ini digunakan untuk menahan alamat ketika
    * S_AXI_AWVALID dan S_AXI_WVALID keduanya valid.
    */
  always @(posedge S_AXI_ACLK) begin
    if (S_AXI_ARESETN == 1'b0) begin
      axi_awaddr <= 0;
    end else begin
      if (~axi_awready && S_AXI_AWVALID && S_AXI_WVALID && aw_en) begin
        // Latch Alamat Tulis
        axi_awaddr <= S_AXI_AWADDR;
      end
    end
  end

  /**
    * ==== Implementasi logika axi_wready ===
    * axi_wready diaktifkan selama satu siklus clock S_AXI_ACLK ketika
    * S_AXI_AWVALID dan S_AXI_WVALID keduanya aktif.
    * axi_wready akan direset ketika reset dalam kondisi low.
    */
  always @(posedge S_AXI_ACLK) begin
    if (S_AXI_ARESETN == 1'b0) begin
      axi_wready <= 1'b0;
    end else begin
      if (~axi_wready && S_AXI_WVALID && S_AXI_AWVALID && aw_en) begin
        // slave siap menerima data tulis ketika ada alamat tulis dan data tulis yang valid bus alamat dan data tulis.
        axi_wready <= 1'b1;
      end else begin
        axi_wready <= 1'b0;
      end
    end
  end

  /**
    * === Implementasi penulisan register ===
    * Write data diterima dan ditulis ke register yang telah dipetakan ketika
    * axi_wready, S_AXI_WVALID, axi_awready, dan S_AXI_AWVALID aktif
    * Write strobes digunakan untuk memilih byte enable dari register slave saat penulisan
    */
  assign slv_reg_wren = axi_wready && S_AXI_WVALID && axi_awready && S_AXI_AWVALID;

  always @(posedge S_AXI_ACLK) begin
    if (S_AXI_ARESETN == 1'b0) begin
      slv_reg0 <= 0;
      slv_reg1 <= 0;
    end else begin
      if (slv_reg_wren) begin
        case (axi_awaddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB])
          2'h0: slv_reg0 <= S_AXI_WDATA;  // Baud rate divider
          2'h1: slv_reg1 <= S_AXI_WDATA[7:0];  // TX data
        endcase

      end
    end
  end

  /**
    *  Implementasi Write Response
    * Sinyal respons tulis (`axi_bvalid` dan `axi_bresp`) dihasilkan oleh slave
    * ketika sinyal `axi_wready`, `S_AXI_WVALID`, `axi_awready`, dan `S_AXI_AWVALID` semuanya aktif.
    * Ini menunjukkan bahwa alamat dan data telah diterima dan memberikan status dari transaksi tulis.
    */
  always @(posedge S_AXI_ACLK) begin
    if (S_AXI_ARESETN == 1'b0) begin  // Logika reset: ketika reset aktif (S_AXI_ARESETN = 0)
      axi_bvalid <= 0;  // Resetkan `axi_bvalid` ke 0, menandakan tidak ada respons tulis yang valid
      axi_bresp <= 2'b0;  // Resetkan `axi_bresp` ke 0, menandakan respons 'OKAY' (default)
    end else begin
      // Jika semua kondisi berikut terpenuhi:
      // 1. `axi_awready` aktif (alamat tulis diterima oleh slave).
      // 2. `S_AXI_AWVALID` aktif (master mengirimkan alamat tulis yang valid).
      // 3. `axi_bvalid` tidak aktif (belum ada respons tulis saat ini).
      // 4. `axi_wready` aktif (data tulis diterima oleh slave).
      // 5. `S_AXI_WVALID` aktif (master mengirimkan data tulis yang valid).
      if (axi_awready && S_AXI_AWVALID && ~axi_bvalid && axi_wready && S_AXI_WVALID) begin
        axi_bvalid <= 1'b1;  // Slave menghasilkan respons tulis yang valid
        axi_bresp  <= 2'b0;  // Tetapkan `axi_bresp` ke 0 (OKAY) untuk menunjukkan transaksi sukses
        // Catatan: untuk respons error, logika dapat dikembangkan lebih lanjut.
      end else begin
        // Jika master telah menerima respons tulis (`S_AXI_BREADY` aktif)
        // dan `axi_bvalid` aktif, reset `axi_bvalid` ke 0.
        if (S_AXI_BREADY && axi_bvalid) begin
          // Master siap menerima respons tulis, nonaktifkan `axi_bvalid`.
          axi_bvalid <= 1'b0;
        end
      end
    end
  end

  /** ================================================================================================== */

  /** 
  * === Implementasi sinyal axi_arready ===
  * axi_arready dinyatakan aktif selama satu siklus clock S_AXI_ACLK ketika S_AXI_ARVALID aktif.
  * axi_arready tidak aktif ketika reset (active low)
  * Read address juga disimpan ketika S_AXI_ARVALID aktif. 
  * axi_araddr direset menjadi nol saat reset aktif.
  */
  always @(posedge S_AXI_ACLK) begin
    if (S_AXI_ARESETN == 1'b0) begin
      axi_arready <= 1'b0;
      axi_araddr  <= 32'b0;
    end else begin
      if (~axi_arready && S_AXI_ARVALID) begin
        // Menunjukkan bahwa slave telah menerima alamat baca yang valid
        axi_arready <= 1'b1;
        // Menyimpan alamat baca
        axi_araddr  <= S_AXI_ARADDR;
      end else begin
        axi_arready <= 1'b0;
      end
    end
  end

  /**
  * === Implementasi sinyal axi_rvalid ===
  * axi_rvalid dinyatakan aktif selama satu siklus clock S_AXI_ACLK ketika S_AXI_ARVALID dan axi_arready aktif.
  * Data register slave tersedia
  * Penyataan axi_rvalid menunjukkan validitas data baca pada bus, dan axi_rresp menunjukkan status transaksi baca.
  * axi_rvalid tidak aktif saat reset (active low)
  * axi_rresp dan axi_rdata direset menjadi nol saat reset.
  */

  always @(posedge S_AXI_ACLK) begin
    if (S_AXI_ARESETN == 1'b0) begin
      axi_rvalid <= 0;
      axi_rresp  <= 0;
    end else begin
      if (axi_arready && S_AXI_ARVALID && ~axi_rvalid) begin
        // Read data yang valid tersedia
        axi_rvalid <= 1'b1;
        axi_rresp  <= 2'b0;  // Respon 'OKAY'
      end else if (axi_rvalid && S_AXI_RREADY) begin
        // Read data diterima oleh master
        axi_rvalid <= 1'b0;
      end
    end
  end

  /** 
  * === Implementasi logika seleksi dan pembacaan register yang dipetakan ke memori ===
  * Enable pembacaan register slave dinyatakan aktif ketika alamat yang valid tersedia dan slave siap menerima alamat baca.
  */
  assign slv_reg_rden = axi_arready & S_AXI_ARVALID & ~axi_rvalid;

  always @(*) begin
    // Dekode alamat untuk membaca register
    case (axi_araddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB])
      2'h0: reg_data_out = slv_reg0;
      2'h1: reg_data_out = slv_reg1;  // TX data
      2'h2: reg_data_out = {24'b0, i_RX_DATA};  // RX data
      2'h3: reg_data_out = {30'b0, i_RX_EMPTY, i_TX_FULL};  // Status
      default: reg_data_out <= 0;
    endcase
  end


  assign o_DVSR = slv_reg0;
  // Keluaran data baca dari register atau memori
  always @(posedge S_AXI_ACLK) begin
    if (S_AXI_ARESETN == 1'b0) begin
      axi_rdata <= 0;
    end else begin
      // Ketika ada alamat baca yang valid (S_AXI_ARVALID) dengan
      // penerimaan alamat baca oleh slave (axi_arready),
      // keluarkan data baca
      if (slv_reg_rden) begin
        axi_rdata <= reg_data_out;  // data baca dari register
      end
    end
  end

  // Ketika slv_reg1 (TX Data) diisi oleh AXI, aktifkan o_TX_WREN.
  // TX Enable
  always @(posedge S_AXI_ACLK) begin
    if (!S_AXI_ARESETN) begin
      o_TX_WREN <= 0;
      o_TX_DATA <= 0;
    end else if (slv_reg_wren && axi_awaddr[ADDR_LSB+OPT_MEM_ADDR_BITS : ADDR_LSB] == 2'h1) begin
      o_TX_WREN <= 1;
      o_TX_DATA <= S_AXI_WDATA[7:0];
    end else begin
      o_TX_WREN <= 0;
    end
  end


  // Ketika i_RX_EMPTY tidak aktif, baca i_RX_DATA ke slv_reg2
  // RX Read Enable
  always @(posedge S_AXI_ACLK) begin
    if (!S_AXI_ARESETN) begin
      o_RX_RDEN <= 0;
    end else if (!i_RX_EMPTY && slv_reg_rden && axi_araddr[ADDR_LSB + OPT_MEM_ADDR_BITS : ADDR_LSB] == 2'h2) begin
      o_RX_RDEN <= 1;
    end else begin
      o_RX_RDEN <= 0;
    end
  end

endmodule

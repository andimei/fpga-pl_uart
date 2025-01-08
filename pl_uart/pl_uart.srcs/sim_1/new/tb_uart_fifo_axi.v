`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.01.2025 09:19:11
// Design Name: 
// Module Name: tb_uart_fifo_axi
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


module tb_uart_fifo_axi;
  // Parameter
  parameter C_S00_AXI_ADDR_WIDTH = 4;
  parameter C_S00_AXI_DATA_WIDTH = 32;
  parameter UART_DBIT = 8;

  // Inputs
  reg S_AXI_ACLK;
  reg S_AXI_ARESETN;
  reg [C_S00_AXI_ADDR_WIDTH-1:0] S_AXI_awaddr;
  reg [2:0] S_AXI_awprot;
  reg S_AXI_awvalid;
  reg [C_S00_AXI_DATA_WIDTH-1:0] S_AXI_wdata;
  reg [(C_S00_AXI_DATA_WIDTH/8)-1:0] S_AXI_wstrb;
  reg S_AXI_wvalid;
  reg S_AXI_bready;
  reg [C_S00_AXI_ADDR_WIDTH-1:0] S_AXI_araddr;
  reg [2:0] S_AXI_arprot;
  reg S_AXI_arvalid;
  reg S_AXI_rready;

  // Outputs
  wire S_AXI_awready;
  wire S_AXI_wready;
  wire [1:0] S_AXI_bresp;
  wire S_AXI_bvalid;
  wire S_AXI_arready;
  wire [C_S00_AXI_DATA_WIDTH-1:0] S_AXI_rdata;
  wire [1:0] S_AXI_rresp;
  wire S_AXI_rvalid;


  // Test Signals
  reg i_RX;
  wire o_TX;
  wire [UART_DBIT-1:0] test_DIN;
  wire [UART_DBIT-1:0] test_DOUT;
  wire [UART_DBIT-1:0] test_RX_DATA;
  wire test_RX_EMPTY;
  wire test_RX_RDEN;
  wire [UART_DBIT-1:0] test_TX_DATA;
  wire test_TX_FULL;
  wire test_TX_WREN;
  wire test_RX_DONE_TICK;
  wire test_TX_RDY_TICK;
  wire test_TX_STARTN;
  
  reg [C_S00_AXI_DATA_WIDTH-1:0]test_read_axi;



  // Instantiate DUT (Device Under Test)
  uart_fifo_axi dut (
      .S_AXI_ACLK(S_AXI_ACLK),
      .S_AXI_ARESETN(S_AXI_ARESETN),
      .S_AXI_araddr(S_AXI_araddr),
      .S_AXI_arready(S_AXI_arready),
      .S_AXI_arvalid(S_AXI_arvalid),
      .S_AXI_awaddr(S_AXI_awaddr),
      .S_AXI_awready(S_AXI_awready),
      .S_AXI_awvalid(S_AXI_awvalid),
      .S_AXI_bready(S_AXI_bready),
      .S_AXI_bresp(S_AXI_bresp),
      .S_AXI_bvalid(S_AXI_bvalid),
      .S_AXI_rdata(S_AXI_rdata),
      .S_AXI_rready(S_AXI_rready),
      .S_AXI_rresp(S_AXI_rresp),
      .S_AXI_rvalid(S_AXI_rvalid),
      .S_AXI_wdata(S_AXI_wdata),
      .S_AXI_wready(S_AXI_wready),
      .S_AXI_wstrb(S_AXI_wstrb),
      .S_AXI_wvalid(S_AXI_wvalid),
      .i_RX(i_RX),
      .o_TX(o_TX),
      .test_DIN(test_DIN),
      .test_DOUT(test_DOUT),
      .test_RX_DATA(test_RX_DATA),
      .test_RX_DONE_TICK(test_RX_DONE_TICK),
      .test_RX_EMPTY(test_RX_EMPTY),
      .test_RX_RDEN(test_RX_RDEN),
      .test_TX_DATA(test_TX_DATA),
      .test_TX_FULL(test_TX_FULL),
      .test_TX_RDY_TICK(test_TX_RDY_TICK),
      .test_TX_STARTN(test_TX_STARTN),
      .test_TX_WREN(test_TX_WREN)
  );

  // Clock Generation
  initial begin
    S_AXI_ACLK = 0;
    forever #10 S_AXI_ACLK = ~S_AXI_ACLK;
  end

  // Reset Initialization
  initial begin
    S_AXI_ARESETN = 0;
    #20 S_AXI_ARESETN = 1;
  end

  // Loopback TX ke RX
  always @(o_TX) begin
    i_RX = o_TX;
  end

  // AXI Write Task
  task axi_write(input [C_S00_AXI_ADDR_WIDTH-1:0] addr, input [C_S00_AXI_DATA_WIDTH-1:0] data);
    begin
      // Step 1: Set alamat dan data pada saat yang sama
      @(posedge S_AXI_ACLK);
      S_AXI_awaddr  = addr;  // Mengatur alamat tujuan penulisan
      S_AXI_awvalid = 1;  // Menyatakan alamat valid
      S_AXI_wdata   = data;  // Mengatur data yang akan ditulis
      S_AXI_wvalid  = 1;  // Menyatakan data valid
      S_AXI_wstrb   = {C_S00_AXI_DATA_WIDTH / 8{1'b1}};  // Mengatur byte strobe

      // Step 2: Tunggu hingga slave siap menerima alamat dan data
      @(posedge S_AXI_ACLK);
      while (!(S_AXI_awready && S_AXI_wready))
        @(posedge S_AXI_ACLK);  // Loop hingga awready dan wready aktif

      // Step 3: Tunggu respon tulis (bvalid dari slave)
      @(posedge S_AXI_ACLK);
      wait (S_AXI_bvalid);  // Menunggu slave menyatakan respon valid
      S_AXI_awvalid = 0;  // Reset sinyal awvalid setelah diterima
      S_AXI_wvalid  = 0;  // Reset sinyal wvalid setelah diterima
      S_AXI_bready  = 1;  // Menyatakan master siap menerima respon
      #10;
      S_AXI_bready = 0;  // Reset bready untuk mengakhiri transaksi
    end
  endtask

  // AXI Read Task
  task axi_read(input [C_S00_AXI_ADDR_WIDTH-1:0] addr, output [C_S00_AXI_DATA_WIDTH-1:0] data);
    begin
      // Step 1: Set alamat read
      @(posedge S_AXI_ACLK);
      S_AXI_araddr  = addr;  // Mengatur alamat tujuan pembacaan
      S_AXI_arvalid = 1;  // Menyatakan alamat valid


      // Step 2: Tunggu hingga slave siap menerima alamat
      @(posedge S_AXI_ACLK);
      while (!S_AXI_arready) @(posedge S_AXI_ACLK);  // Loop hingga arready aktif

      // Step 3: Tunggu data valid dari slave
      @(posedge S_AXI_ACLK);
      S_AXI_arvalid = 0;  // Reset sinyal arvalid setelah diterima
      wait (S_AXI_rvalid);  // Menunggu slave menyatakan data valid

      // Step 4: Ambil data dari bus
      data      = S_AXI_rdata;  // Mengambil data dari slave
      S_AXI_rready = 1;  // Menyatakan master siap menerima data
      #10;
      S_AXI_rready = 0;  // Reset rready untuk mengakhiri transaksi
    end
  endtask

  // Testbench Logic
  initial begin
    // Initialize Inputs
    S_AXI_awaddr = 0;
    S_AXI_awvalid = 0;
    S_AXI_wdata = 0;
    S_AXI_wstrb = 0;
    S_AXI_wvalid = 0;
    S_AXI_bready = 0;
    S_AXI_araddr = 0;
    S_AXI_arvalid = 0;
    S_AXI_rready = 0;
    i_RX = 0;

    #40 S_AXI_ARESETN = 1;
    #120

      // Write Test
    axi_write(4'h0, 434);  // Write to slv_reg0 -> baudrate divisor
    axi_write(4'h4, 32'h000000A5);  // Write to slv_reg1 ->TX Data
    axi_write(4'h4, 32'h00000099);  // Write to slv_reg1 ->TX Data
    

    // Membaca pertama kali dari register status uart
    axi_read(4'hC, test_read_axi); // Read from slv_reg3
    // Loop untuk menunggu test_read_axi[2] menjadi LOW
    while (test_read_axi[1]) begin
        axi_read(4'hC, test_read_axi); // Baca lagi dari slv_reg3
    end
    // Keluar dari loop, baca register RX uart
    axi_read(4'h8, test_read_axi);  // Read from slv_reg2
    
    axi_read(4'hC, test_read_axi); // Read from slv_reg3
    // Loop untuk menunggu test_read_axi[2] menjadi LOW
    while (test_read_axi[1]) begin
        axi_read(4'hC, test_read_axi); // Baca lagi dari slv_reg3
    end
    axi_read(4'h8, test_read_axi);  // Read from slv_reg2
    
    #100;
    $stop;
  end
endmodule

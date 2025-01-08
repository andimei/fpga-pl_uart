`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.11.2024 10:34:30
// Design Name: 
// Module Name: tb_axi_uart
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

`timescale 1ns / 1ps

module tb_axi_uart_slave;

    // Parameters
    parameter integer C_S00_AXI_DATA_WIDTH = 32;
    parameter integer C_S00_AXI_ADDR_WIDTH = 5;

    // Clock and Reset
    reg s00_axi_aclk;
    reg s00_axi_aresetn;

    // AXI Slave Signals
    reg [C_S00_AXI_ADDR_WIDTH-1:0] s00_axi_awaddr;
    reg [2:0] s00_axi_awprot;
    reg s00_axi_awvalid;
    wire s00_axi_awready;

    reg [C_S00_AXI_DATA_WIDTH-1:0] s00_axi_wdata;
    reg [(C_S00_AXI_DATA_WIDTH/8)-1:0] s00_axi_wstrb;
    reg s00_axi_wvalid;
    wire s00_axi_wready;

    wire [1:0] s00_axi_bresp;
    wire s00_axi_bvalid;
    reg s00_axi_bready;

    reg [C_S00_AXI_ADDR_WIDTH-1:0] s00_axi_araddr;
    reg [2:0] s00_axi_arprot;
    reg s00_axi_arvalid;
    wire s00_axi_arready;

    wire [C_S00_AXI_DATA_WIDTH-1:0] s00_axi_rdata;
    wire [1:0] s00_axi_rresp;
    wire s00_axi_rvalid;
    reg s00_axi_rready;

    // UART-specific ports
    wire [19:0] baudrate;
    reg [7:0] rx_data;
    wire rx_rden_tick;
    reg rx_empty;
    wire [7:0] tx_data;
    wire tx_wren_tick;
    reg tx_full;

    // Instantiate the DUT
    axi_uart_slave #(
        .C_S00_AXI_DATA_WIDTH(C_S00_AXI_DATA_WIDTH),
        .C_S00_AXI_ADDR_WIDTH(C_S00_AXI_ADDR_WIDTH)
    ) dut (
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_awaddr(s00_axi_awaddr),
        .s00_axi_awprot(s00_axi_awprot),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_awready(s00_axi_awready),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid),
        .s00_axi_wready(s00_axi_wready),
        .s00_axi_bresp(s00_axi_bresp),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_araddr(s00_axi_araddr),
        .s00_axi_arprot(s00_axi_arprot),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_arready(s00_axi_arready),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rresp(s00_axi_rresp),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_rready(s00_axi_rready),
        .baudrate(baudrate),
        .rx_data(rx_data),
        .rx_rden_tick(rx_rden_tick),
        .rx_empty(rx_empty),
        .tx_data(tx_data),
        .tx_wren_tick(tx_wren_tick),
        .tx_full(tx_full)
    );

    // Clock generation
    initial begin
        s00_axi_aclk = 0;
        forever #5 s00_axi_aclk = ~s00_axi_aclk;
    end

    // AXI Write Task
    task axi_write;
        input [C_S00_AXI_ADDR_WIDTH-1:0] addr;
        input [C_S00_AXI_DATA_WIDTH-1:0] data;
        begin
            // Write Address Phase (Pengiriman Alamat Tulis)
            @(posedge s00_axi_aclk);
            s00_axi_awaddr = addr;
            s00_axi_awvalid = 1;
            s00_axi_bready = 1;
            wait(s00_axi_awready); // tunggu slave mengirimkan ready
            @(posedge s00_axi_aclk);
            s00_axi_awvalid = 0;
            
            // Write Data Phase (Pengiriman Data)
            @(posedge s00_axi_aclk);
            s00_axi_wdata = data;
            s00_axi_wvalid = 1;
            wait(s00_axi_wready);
            @(posedge s00_axi_aclk);
            s00_axi_wvalid = 0;
            
//            // Write Response Phase (Respons Tulis)
//            @(posedge s00_axi_aclk);
//            wait(s00_axi_bvalid);
//            s00_axi_bready = 1;
        end
    endtask

    // AXI Read Task
    task axi_read;
        input [C_S00_AXI_ADDR_WIDTH-1:0] addr;
        output [C_S00_AXI_DATA_WIDTH-1:0] data_out;
        begin
//            @(posedge s00_axi_aclk);
            s00_axi_araddr = addr;
            s00_axi_arvalid = 1;
            s00_axi_rready = 1;

            wait(s00_axi_arready);
            @(posedge s00_axi_aclk);
            s00_axi_arvalid = 0;

            wait(s00_axi_rvalid);
            data_out = s00_axi_rdata;
            @(posedge s00_axi_aclk);
            s00_axi_rready = 0;
        end
    endtask

    // Reset and initial stimulus
    initial begin
        // Reset
        s00_axi_aresetn = 0;
        
        // Write address (aw) channel init
        s00_axi_awaddr = 32'h0000;
        s00_axi_awvalid = 0;
        s00_axi_awprot = 0;
        
        // Write data (w) channel init
        s00_axi_wdata = 32'h0000;
        s00_axi_wvalid = 0;
        s00_axi_wstrb = 0;
        
        // Write response (b) channel init   
        s00_axi_bready = 0;
        
        
        rx_data = 8'h00;
        rx_empty = 1;
        tx_full = 0;

        #17;
        s00_axi_aresetn = 1;
        
        #30;

        // Write baudrate (example: 115200 -> 20'd115200)
        axi_write(4'h0, 20'd115200);

        // Read RX FIFO empty flag
//        reg [31:0] rx_status;
//        axi_read(4'hC, rx_status);
//        $display("RX Status: %h", rx_status);

        // Write TX data (example: 8'hA5)
        axi_write(8'h10, 8'hA5);

        // Write TX Write Enable (Control) (example: 8'h01)
        axi_write(8'h14, 8'h01);

        // Finish simulation
        #100;
        $finish;
    end
endmodule


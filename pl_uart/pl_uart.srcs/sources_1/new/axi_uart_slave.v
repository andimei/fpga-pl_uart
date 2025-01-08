`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.11.2024 15:24:52
// Design Name: 
// Module Name: axi_uart_slave
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
module axi_uart_slave #
(
    // Parameters of AXI Slave Bus Interface S00_AXI
    parameter integer C_S00_AXI_DATA_WIDTH = 32,
    parameter integer C_S00_AXI_ADDR_WIDTH = 5
)
(
    // Ports of AXI Slave Bus Interface S00_AXI
    input wire s00_axi_aclk,
    input wire s00_axi_aresetn,
    input wire [C_S00_AXI_ADDR_WIDTH-1 : 0] s00_axi_awaddr,
    input wire [2 : 0] s00_axi_awprot,
    input wire s00_axi_awvalid,
    output wire s00_axi_awready,
    input wire [C_S00_AXI_DATA_WIDTH-1 : 0] s00_axi_wdata,
    input wire [(C_S00_AXI_DATA_WIDTH/8)-1 : 0] s00_axi_wstrb,
    input wire s00_axi_wvalid,
    output wire s00_axi_wready,
    output wire [1 : 0] s00_axi_bresp,
    output wire s00_axi_bvalid,
    input wire s00_axi_bready,
    input wire [C_S00_AXI_ADDR_WIDTH-1 : 0] s00_axi_araddr,
    input wire [2 : 0] s00_axi_arprot,
    input wire s00_axi_arvalid,
    output wire s00_axi_arready,
    output wire [C_S00_AXI_DATA_WIDTH-1 : 0] s00_axi_rdata,
    output wire [1 : 0] s00_axi_rresp,
    output wire s00_axi_rvalid,
    input wire s00_axi_rready,

    // UART-specific ports
    output reg [19:0] baudrate,        // Baudrate (20 bits)
    input wire [7:0] rx_data,          // RX data (8 bits)
    output reg rx_rden_tick,           // Read enable tick (1 bit)
    input wire rx_empty,               // RX FIFO empty flag (1 bit)
    output reg [7:0] tx_data,          // TX data (8 bits)
    output reg tx_wren_tick,           // TX enable tick (1 bit)
    input wire tx_full                 // TX FIFO full flag (1 bit)
);

    // Register addresses
    localparam ADDR_BAUDRATE    = 8'h0;  // Baudrate register
    localparam ADDR_RX_DATA     = 8'h4;  // RX data register
    localparam ADDR_RX_RDEN     = 8'h8;  // RX read enable tick
    localparam ADDR_RX_EMPTY    = 8'hC;  // RX FIFO empty flag
    localparam ADDR_TX_DATA     = 8'h10; // TX data register
    localparam ADDR_TX_WREN     = 8'h14; // TX write enable tick
    localparam ADDR_TX_FULL     = 8'h18; // TX FIFO full flag

    // Internal AXI signals
    reg axi_awready_reg, axi_wready_reg, axi_arready_reg, axi_rvalid_reg;
    reg [C_S00_AXI_DATA_WIDTH-1:0] reg_data;

    // Internal register for handling TX write enable tick
    reg tx_wren_reg;  // Register for storing TX write enable tick state

    // AXI Slave Interface connections
    assign s00_axi_awready = axi_awready_reg;
    assign s00_axi_wready = axi_wready_reg;
    assign s00_axi_arready = axi_arready_reg;
    assign s00_axi_rdata = reg_data;
    assign s00_axi_rvalid = axi_rvalid_reg;
    assign s00_axi_bvalid = axi_wready_reg && s00_axi_wvalid;
    assign s00_axi_bresp = 2'b00; // OKAY response
    assign s00_axi_rresp = 2'b00; // OKAY response

    // AXI Lite logic
    always @(posedge s00_axi_aclk) begin
        if (!s00_axi_aresetn) begin
            // Reset logic
            axi_awready_reg <= 1'b0;
            axi_wready_reg <= 1'b0;
            axi_arready_reg <= 1'b0;
            axi_rvalid_reg <= 1'b0;
            reg_data <= 32'b0;

            // Reset UART-specific registers
            baudrate <= 20'b0;
            rx_rden_tick <= 1'b0;
            tx_data <= 8'b0;
            tx_wren_tick <= 1'b0;
            tx_wren_reg <= 1'b0; // Reset the TX write enable register
        end else begin
            // Reset AXI ready/valid signals
            axi_awready_reg <= 1'b0;
            axi_wready_reg <= 1'b0;
            axi_arready_reg <= 1'b0;
            axi_rvalid_reg <= 1'b0;
            
            // Write Address handshake
            if (s00_axi_awvalid && !axi_awready_reg) begin
                axi_awready_reg <= 1'b1;
            end

            // Write Data handshake
            if (s00_axi_wvalid && axi_awready_reg && !axi_wready_reg) begin
                axi_wready_reg  <= 1'b1;
                case (s00_axi_awaddr)
                    ADDR_BAUDRATE:    baudrate <= s00_axi_wdata[19:0];
                    ADDR_RX_RDEN:     rx_rden_tick <= s00_axi_wdata[0];
                    ADDR_TX_DATA:     tx_data <= s00_axi_wdata[7:0];
                    ADDR_TX_WREN:     tx_wren_reg <= s00_axi_wdata[0]; // Store TX write enable state
                    default: ; // No operation
                endcase
            end

            // Read Address handshake
            if (s00_axi_arvalid && !axi_arready_reg) begin
                axi_arready_reg <= 1'b1;
                case (s00_axi_araddr)
                    ADDR_BAUDRATE:    reg_data <= {12'b0, baudrate};
                    ADDR_RX_DATA:     reg_data <= {24'b0, rx_data};
                    ADDR_RX_EMPTY:    reg_data <= {31'b0, rx_empty};
                    ADDR_TX_FULL:     reg_data <= {31'b0, tx_full};
                    default:          reg_data <= 32'b0; // Default value
                endcase
                axi_rvalid_reg <= 1'b1;
            end

            // Handle TX write enable signal
            if (tx_wren_reg) begin
                tx_wren_tick <= 1'b1;  // Activate TX write enable tick
                tx_wren_reg <= 1'b0;  // Reset after one cycle
            end else begin
                tx_wren_tick <= 1'b0;  // Deactivate TX write enable tick
            end

        end
    end
    
endmodule



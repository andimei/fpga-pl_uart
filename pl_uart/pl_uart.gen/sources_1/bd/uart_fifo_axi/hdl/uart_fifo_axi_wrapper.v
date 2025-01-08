//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
//Date        : Wed Jan  8 08:45:33 2025
//Host        : DESKTOP-5CM83PC running 64-bit major release  (build 9200)
//Command     : generate_target uart_fifo_axi_wrapper.bd
//Design      : uart_fifo_axi_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module uart_fifo_axi_wrapper
   (S_AXI_ACLK,
    S_AXI_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid,
    i_RX,
    o_TX,
    test_DIN,
    test_DOUT,
    test_RX_DATA,
    test_RX_DONE_TICK,
    test_RX_EMPTY,
    test_RX_RDEN,
    test_TX_DATA,
    test_TX_FULL,
    test_TX_RDY_TICK,
    test_TX_STARTN,
    test_TX_WREN);
  input S_AXI_ACLK;
  input S_AXI_ARESETN;
  input [3:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [3:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;
  input i_RX;
  output o_TX;
  output [7:0]test_DIN;
  output [7:0]test_DOUT;
  output [7:0]test_RX_DATA;
  output test_RX_DONE_TICK;
  output test_RX_EMPTY;
  output test_RX_RDEN;
  output [7:0]test_TX_DATA;
  output test_TX_FULL;
  output test_TX_RDY_TICK;
  output test_TX_STARTN;
  output test_TX_WREN;

  wire S_AXI_ACLK;
  wire S_AXI_ARESETN;
  wire [3:0]S_AXI_araddr;
  wire S_AXI_arready;
  wire S_AXI_arvalid;
  wire [3:0]S_AXI_awaddr;
  wire S_AXI_awready;
  wire S_AXI_awvalid;
  wire S_AXI_bready;
  wire [1:0]S_AXI_bresp;
  wire S_AXI_bvalid;
  wire [31:0]S_AXI_rdata;
  wire S_AXI_rready;
  wire [1:0]S_AXI_rresp;
  wire S_AXI_rvalid;
  wire [31:0]S_AXI_wdata;
  wire S_AXI_wready;
  wire [3:0]S_AXI_wstrb;
  wire S_AXI_wvalid;
  wire i_RX;
  wire o_TX;
  wire [7:0]test_DIN;
  wire [7:0]test_DOUT;
  wire [7:0]test_RX_DATA;
  wire test_RX_DONE_TICK;
  wire test_RX_EMPTY;
  wire test_RX_RDEN;
  wire [7:0]test_TX_DATA;
  wire test_TX_FULL;
  wire test_TX_RDY_TICK;
  wire test_TX_STARTN;
  wire test_TX_WREN;

  uart_fifo_axi uart_fifo_axi_i
       (.S_AXI_ACLK(S_AXI_ACLK),
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
        .test_TX_WREN(test_TX_WREN));
endmodule

//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
//Date        : Mon Jan  6 08:26:10 2025
//Host        : DESKTOP-5CM83PC running 64-bit major release  (build 9200)
//Command     : generate_target uart_fifo.bd
//Design      : uart_fifo
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "uart_fifo,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=uart_fifo,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=5,numReposBlks=5,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=3,numPkgbdBlks=0,bdsource=USER,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "uart_fifo.hwdef" *) 
module uart_fifo
   (FIFO_READ_empty,
    FIFO_READ_rd_data,
    FIFO_READ_rd_en,
    FIFO_WRITE_full,
    FIFO_WRITE_wr_data,
    FIFO_WRITE_wr_en,
    i_CLK,
    i_DVSR,
    i_RESET,
    i_RX,
    o_TX,
    test_DIN,
    test_DOUT,
    test_RX_DONE_TICK,
    test_TX_RDY_TICK,
    test_TX_STARTN);
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output FIFO_READ_empty;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [7:0]FIFO_READ_rd_data;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) input FIFO_READ_rd_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output FIFO_WRITE_full;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) input [7:0]FIFO_WRITE_wr_data;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input FIFO_WRITE_wr_en;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.I_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.I_CLK, ASSOCIATED_RESET i_RESET, CLK_DOMAIN uart_fifo_i_CLK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input i_CLK;
  input [10:0]i_DVSR;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.I_RESET RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.I_RESET, INSERT_VIP 0, POLARITY ACTIVE_HIGH" *) input i_RESET;
  input i_RX;
  output o_TX;
  output [7:0]test_DIN;
  output [7:0]test_DOUT;
  output test_RX_DONE_TICK;
  output test_TX_RDY_TICK;
  output test_TX_STARTN;

  wire FIFO_READ_0_1_EMPTY;
  wire [7:0]FIFO_READ_0_1_RD_DATA;
  wire FIFO_READ_0_1_RD_EN;
  wire FIFO_WRITE_0_1_FULL;
  wire [7:0]FIFO_WRITE_0_1_WR_DATA;
  wire FIFO_WRITE_0_1_WR_EN;
  wire baudrate_generator_0_o_TICK;
  wire [7:0]fifo_tx_dout;
  wire fifo_tx_empty;
  wire i_CLK_0_1;
  wire [10:0]i_DVSR_0_1;
  wire i_RESET_0_1;
  wire i_RX_0_1;
  wire [7:0]uart_rx_o_DOUT;
  wire uart_rx_o_RX_DONE_TICK;
  wire uart_tx_1_o_TX;
  wire uart_tx_o_TX_RDY_TICK;

  assign FIFO_READ_0_1_RD_EN = FIFO_READ_rd_en;
  assign FIFO_READ_empty = FIFO_READ_0_1_EMPTY;
  assign FIFO_READ_rd_data[7:0] = FIFO_READ_0_1_RD_DATA;
  assign FIFO_WRITE_0_1_WR_DATA = FIFO_WRITE_wr_data[7:0];
  assign FIFO_WRITE_0_1_WR_EN = FIFO_WRITE_wr_en;
  assign FIFO_WRITE_full = FIFO_WRITE_0_1_FULL;
  assign i_CLK_0_1 = i_CLK;
  assign i_DVSR_0_1 = i_DVSR[10:0];
  assign i_RESET_0_1 = i_RESET;
  assign i_RX_0_1 = i_RX;
  assign o_TX = uart_tx_1_o_TX;
  assign test_DIN[7:0] = fifo_tx_dout;
  assign test_DOUT[7:0] = uart_rx_o_DOUT;
  assign test_RX_DONE_TICK = uart_rx_o_RX_DONE_TICK;
  assign test_TX_RDY_TICK = uart_tx_o_TX_RDY_TICK;
  assign test_TX_STARTN = fifo_tx_empty;
  uart_fifo_baudrate_generator_0_0 baudrate_generator
       (.i_CLK(i_CLK_0_1),
        .i_DVSR(i_DVSR_0_1),
        .i_RESET(i_RESET_0_1),
        .o_TICK(baudrate_generator_0_o_TICK));
  uart_fifo_fifo_tx_0 fifo_rx
       (.clk(i_CLK_0_1),
        .din(uart_rx_o_DOUT),
        .dout(FIFO_READ_0_1_RD_DATA),
        .empty(FIFO_READ_0_1_EMPTY),
        .rd_en(FIFO_READ_0_1_RD_EN),
        .rst(i_RESET_0_1),
        .wr_en(uart_rx_o_RX_DONE_TICK));
  uart_fifo_fifo_generator_0_0 fifo_tx
       (.clk(i_CLK_0_1),
        .din(FIFO_WRITE_0_1_WR_DATA),
        .dout(fifo_tx_dout),
        .empty(fifo_tx_empty),
        .full(FIFO_WRITE_0_1_FULL),
        .rd_en(uart_tx_o_TX_RDY_TICK),
        .rst(i_RESET_0_1),
        .wr_en(FIFO_WRITE_0_1_WR_EN));
  uart_fifo_uart_rx_0_0 uart_rx
       (.i_CLK(i_CLK_0_1),
        .i_RESET(i_RESET_0_1),
        .i_RX(i_RX_0_1),
        .i_S_TICK(baudrate_generator_0_o_TICK),
        .o_DOUT(uart_rx_o_DOUT),
        .o_RX_DONE_TICK(uart_rx_o_RX_DONE_TICK));
  uart_fifo_uart_tx_1_0 uart_tx
       (.i_CLK(i_CLK_0_1),
        .i_DIN(fifo_tx_dout),
        .i_RESET(i_RESET_0_1),
        .i_S_TICK(baudrate_generator_0_o_TICK),
        .i_TX_STARTN(fifo_tx_empty),
        .o_TX(uart_tx_1_o_TX),
        .o_TX_RDY_TICK(uart_tx_o_TX_RDY_TICK));
endmodule
